#!/usr/bin/env python3

import yaml
import os
import sys

from typing import Optional, Dict, Callable

try:
    from yaml import CLoader as yamlLoader
except ImportError:
    from yaml import Loader as yamlLoader

def handle_palette(name: str, file: str, parameters: dict) -> tuple:
    target: str = "%s.gbapal" % file
    dependency: str = "%s.pal" % file
    label: str = "GFX_PALETTE_%s" % name
    return {
        "target": target,
        "dependency": dependency,
        "label": label,
    }

def handle_image(name: str, file: str, parameters: dict) -> tuple:
    buildparams = ""
    bpp: int = parameters["bpp"]
    for bp in ["mwidth", "mheight"]:
        if parameters.get(bp):
            buildparams += "-%s %d " % (bp, parameters.get(bp))
    target: str = "%s.%dbpp" % (file, bpp)
    dependency: str = "%s.png" % file
    label: str = "GFX_IMG_%s" % name
    ret = {
        "target": target,
        "dependency": dependency,
        "label": label,
    }
    if len(buildparams):
        ret["buildparams"] = buildparams
    return ret

def handle_striped(name: str, file: str, parameters: dict) -> tuple:
    bpp: int = parameters["bpp"]
    target: str = "%s.%dbpp.striped" % (file, bpp)
    dependency: str = "%s.png" % file
    label: str = "GFX_STRIPED_%s" % name
    return {
        "target": target,
        "dependency": dependency,
        "label": label,
    }

def handle_tilemap(name: str, file: str, parameters: dict) -> tuple:
    target: str = "%s.bin" % file
    # dependency: str = "%s.bin" % file
    label: str = "GFX_TILEMAP_%s" % name
    return {
        "target": target,
        # "dependency": dependency,
        "label": label,
    }

def handle_animation_tiles(name: str, file: str, parameters: dict) -> tuple:
    target: str = "%s.pix" % file
    # dependency: str = "%s.bin" % file
    label: str = "GFX_ANIMATION_TILES_%s" % name
    return {
        "target": target,
        # "dependency": dependency,
        "label": label,
    }

def handle_animation_sequence(name: str, file: str, parameters: dict) -> tuple:
    target: str = "%s.seq" % file
    # dependency: str = "%s.bin" % file
    label: str = "GFX_ANIMATION_SEQUENCE_%s" % name
    return {
        "target": target,
        # "dependency": dependency,
        "label": label,
    }

def handle_raw(name: str, file: str, parameters: dict) -> tuple:
    target: str = file
    # dependency: str = "%s.bin" % file
    label: str = "GFX_RAW_%s" % name
    return {
        "target": target,
        # "dependency": dependency,
        "label": label,
    }

etype_map: Dict[str, Callable[[str, str], tuple]] = {
    "palette": handle_palette,
    "image": handle_image,
    "striped": handle_striped,
    "tilemap": handle_tilemap,
    "animation_tiles": handle_animation_tiles,
    "animation_sequence": handle_animation_sequence,
    "raw": handle_raw,
}

def find_etype_keyword(keys: list) -> Optional[str]:
    for e in keys:
        if e in etype_map.keys():
            return e
    return None

def handle_entry(data: dict, curpath: str) -> tuple:
    etype: str = find_etype_keyword(data.keys())
    name: str = data["name"]
    # common params
    source: str = data.get("source", data.get("src", "./"))
    lz_settings: dict = data.get("lz", {})
    lz_enabled: bool = lz_settings.get("compressed", False)
    lz_search: int = lz_settings.get("search")
    aliases: list = data.get("aliases", list())
    if source.endswith("/"):
        file: str = os.path.normpath(os.path.join(curpath, source, name))
    else:
        file: str = os.path.normpath(os.path.join(curpath, source))
    # explicit params
    parameters = data[etype]
    r = etype_map[etype](name, file, parameters)
    # outputs
    rules = dict()
    target = None
    if r.get("buildparams"):
        rules[r["target"]] = "$(GBAGFX) $< $@ %s" % r["buildparams"]
    if lz_enabled:
        lztarget = r["target"] + ".lz"
        if lz_search:
            rules[lztarget] = "$(GBAGFX) $< $@ -search %d" % lz_search
        target = lztarget
    else:
        target = r["target"]
    ret = {
        "target": target,
        "dependency": r.get("dependency"),
        "labels": [r["label"]] + aliases,
        "rules": rules,
    }
    return ret

def load_asset_yaml_file(path: str) -> list:
    # print("loading", path)
    prefix = os.path.dirname(path)
    # print(prefix)
    with open(path) as f:
        data = yaml.load(f, Loader=yamlLoader)
    ret = []
    my_yamls = [path]
    for x in data:
        if x.get("include"):
            realpath = os.path.join(prefix, x.get("include"))
            x, all_yamls = load_asset_yaml_file(realpath)
            ret += x
            my_yamls += all_yamls
        else:
            ret.append(handle_entry(x, curpath=prefix))
    return ret, my_yamls

def build_make_stuff(x: Dict[str, str]) -> str:
    ret = ""
    for target, recipe in x["rules"].items():
        if target.endswith(".lz"):
           ret += "%s: %s\n\t%s\n" % (target, x["target"], recipe)
        else:
           ret += "%s: %s\n\t%s\n" % (target, x["dependency"], recipe)
    return ret if len(ret) else None

def build_header_stuff(offset: int, labels: list[str]) -> str:
    ret = ""
    offs = hex(offset).upper()
    for l in labels:
        ret += "#define %s ((u8*)(GFX_BASE_ADDR + %s))\n" % (l, offs)
    ret += "\n"
    return ret

if __name__ == "__main__":
    x, all_yamls = load_asset_yaml_file(sys.argv[2])
    # print("############################################")
    # print("############################################")
    # print("############################################")
    # print("############################################")
    # print(x)
    # print()
    # print("############################################")
    # print("############################################")
    # print("############################################")
    # print("############################################")
    if sys.argv[1] == "dependencies":
        with open(sys.argv[4], "w") as o:
            for e in x:
                o.write(f"{sys.argv[3]} {sys.argv[4]}: " + e["target"] + "\n")
            for e in all_yamls:
                o.write(f"{sys.argv[3]} {sys.argv[4]}: " + e + "\n")
    elif sys.argv[1] == "rules":
        for e in x:
            r = build_make_stuff(e)
            if r: print(r)
    elif sys.argv[1] == "blob":
        base_offset = int(sys.argv[4], 0)
        with open(sys.argv[3], "wb") as o:
            with open(sys.argv[5], "w") as output_header:
                output_header.write("#ifndef GUARD_GRAPHICS_H\n#define GUARD_GRAPHICS_H\n\n")
                output_header.write("#define GFX_BASE_ADDR %s\n\n" % hex(base_offset).upper())
                for e in x:
                    while o.tell() % 4:
                        o.write(bytes(0))
                    current_offset = o.tell()
                    output_header.write(build_header_stuff(current_offset, e["labels"]))
                    with open(e["target"], "rb") as f:
                        o.write(f.read())
                output_header.write("#endif\n")
