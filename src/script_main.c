#include "global.h"
#include "main.h"
#include "script.h"
#include "sound.h"
#include "ewram.h"
#include "graphics.h"
#include "save.h"
#include "constants/script.h"

static void AdvanceScriptContext(struct ScriptContext *);
static void DrawTextAndMapMarkers(struct ScriptContext *);
static void PutCharInTextbox(u32, u32, u32);

extern u8 gTextColorTileBuffer[0x80];

/*
const u8 * const gScriptTable[] = {
};

bool32 (*gScriptCmdFuncs[0x60])(struct ScriptContext *) = {
};
*/
extern const u8 * const gScriptTable[];
extern bool32 (*gScriptCmdFuncs[])(struct ScriptContext *);

void LoadCurrentScriptIntoRam(void)
{
    u32 i;
    DmaCopy16(3, gTextPal, OBJ_PLTT, 0x20);

    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }

    LZ77UnCompWram(gScriptTable[gMain.scenarioIdx], eScriptHeap);
}

void RunScriptContext(void)
{
    if (gMain.advanceScriptContext && gMain.blendMode == 0)
    {
        AdvanceScriptContext(&gScriptContext);
    }
    DrawTextAndMapMarkers(&gScriptContext);
}

void ChangeScriptSection(u32 newSection)
{
    gScriptContext.previousSection = gScriptContext.currentSection;
    sub_8007CCC(&gMain, gScriptContext.currentSection);
    gScriptContext.currentSection = newSection;
    InitScriptSection(&gScriptContext);
    gScriptContext.scriptPtr++;
}

void InitScriptSection(struct ScriptContext *scriptCtx)
{
    u32 i;
    for (i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        gTextBoxCharacters[i].state &= ~0x8000;
    }
    scriptCtx->textX = 0;
    scriptCtx->textY = 0;
    if (gMain.process[GAME_PROCESS] != 4 || gMain.process[GAME_PROCESS_STATE] != 8)
        scriptCtx->textSkip = 0;
    scriptCtx->unk15 = 0;
    scriptCtx->paragraphSkipDelayCounter = 8;
    scriptCtx->soundCueSkip = 1;
    scriptCtx->currentSoundCue = 0;
    scriptCtx->textXOffset = 9;
    scriptCtx->textYOffset = 0x74;
    scriptCtx->nextSection = scriptCtx->currentSection + 1;
    scriptCtx->holdItSection = 0;
    scriptCtx->holdItFlag = 0;
    scriptCtx->textboxNameId = 0;
    scriptCtx->textboxDownArrowIndex = 0;
    scriptCtx->textboxDownArrowDelayCounter = 0;
    scriptCtx->flags = 0;
    scriptCtx->waitTimer = 0;
    scriptCtx->textColor = 0;
    scriptCtx->textSpeed = 3;
    scriptCtx->prevTextSpeed = 3;
    scriptCtx->textDelayTimer = 0;
    scriptCtx->fullscreenTextXOffset = 0x18;
    scriptCtx->fullscreenTextYOffset = 0x46;
    {
        const void *r1;
        const u32 *r0;
        if (scriptCtx->currentSection >= 0x80)
        {
            r1 = eScriptHeap;
            r0 = (u32 *)eScriptHeap + (scriptCtx->currentSection-0x80);
            scriptCtx->scriptPtr = r1 + r0[1];
            scriptCtx->scriptSectionPtr = scriptCtx->scriptPtr;
            scriptCtx->scriptHeaderSize = *(u16*)r1;
        }
        else
        {
            r1 = std_scripts;
            r0 = &std_scripts[scriptCtx->currentSection];
            scriptCtx->scriptPtr = r1 + r0[1];
            scriptCtx->scriptSectionPtr = scriptCtx->scriptPtr;
            scriptCtx->scriptHeaderSize = *(u16*)r1;
        }
    }
    scriptCtx->mapMarkerVramPtr = (void*)(VRAM + 0x11800);
    for (i = 0; i < ARRAY_COUNT(gMapMarker); i++)
    {
        gMapMarker[i].id |= 0xFF;
        gMapMarker[i].isBlinking = 0;
        gMapMarker[i].unk5 = 0;
        gMapMarker[i].attr0 = SPRITE_ATTR0_CLEAR;
    }
}

static void AdvanceScriptContext(struct ScriptContext * scriptCtx)
{
    struct Main * main = &gMain;
    if(!(main->gameStateFlags & 0x10))
    {
        if(gJoypad.pressedKeys & A_BUTTON || gJoypad.heldKeys & B_BUTTON)
        {
            if(main->unk84 != 1
            && main->unk84 != 2
            && main->unk84 != 0xFFFF
            && main->unk84 != 0xFFFE
            && main->unk84 != 5
            && main->unk84 != 6)
            {
                if(sub_8007CFC(main, scriptCtx->currentSection))
                {
                    if(scriptCtx->textSkip > 0 || main->process[GAME_PROCESS] == 4)
                    {
                        scriptCtx->textSkip = 2;
                    }
                }
            }
        }
    }
    continueScript:
    scriptCtx->currentToken = *scriptCtx->scriptPtr;
    if(scriptCtx->currentToken < 0x80)
    {
        u32 retval = gScriptCmdFuncs[scriptCtx->currentToken](scriptCtx);
        if(retval == 1)
            return;
        else if(retval == 2)
        {
            gScriptContext.textSkip = 0;
            goto continueScript;
        }
        else
            goto continueScript;
    }
    if(scriptCtx->textSkip > 1)
        scriptCtx->textSpeed = 0;
    scriptCtx->textDelayTimer++;
    if(scriptCtx->textDelayTimer >= scriptCtx->textSpeed)
    {
        scriptCtx->textDelayTimer = 0;
        scriptCtx->currentToken -= 0x80;
        if (scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            PutCharInTextbox(scriptCtx->currentToken, scriptCtx->fullscreenTextY, scriptCtx->fullscreenCharCount);
            scriptCtx->fullscreenCharCount++;
            scriptCtx->fullscreenTextX++;
        }
        else
        {
            PutCharInTextbox(scriptCtx->currentToken, scriptCtx->textY, scriptCtx->textX);
            scriptCtx->textX++;
        }

        scriptCtx->scriptPtr++;
        
        if (scriptCtx->currentToken != 0xFF)
        {
            if ( scriptCtx->textSpeed > 0)
            {
                if ( scriptCtx->soundCueSkip == 0 || scriptCtx->textSpeed > 4 )
                {
                    if ( scriptCtx->currentSoundCue != 2 )
                        scriptCtx->soundCueSkip = 1;

                    if (!(gMain.soundFlags & SOUND_FLAG_DISABLE_CUE))
                    {
                        if (scriptCtx->currentSoundCue == 2)
                        {
                            PlaySE(68);
                        }
                        else if (scriptCtx->currentSoundCue == 1)
                        {
                            PlaySE(46);
                        }
                        else
                        {
                            PlaySE(45);
                        }
                    }
                }
                else
                {
                    scriptCtx->soundCueSkip--;
                }
            }
        }
        if(scriptCtx->textSpeed != 0)
            return;    
        if(!(gMain.gameStateFlags & 1))
        {
            if(gMain.unk84 == 0)
                goto continueScript;
        }
    }
}
static void PutCharInTextbox(u32 characterCode, u32 y, u32 x)
{
    uintptr_t i;
    uintptr_t temp = characterCode*0x80;
    temp += (uintptr_t)gCharSet;
    if(gScriptContext.textColor)
    {
        u8 * vram;
        u8 * pixel;
        DmaCopy16(3, temp, gTextColorTileBuffer, 0x80);
        pixel = gTextColorTileBuffer;
        temp = gScriptContext.textColor * 3;
        for(i = 0; i < 0x80; i++)
        {
            u32 pixelLeft, pixelRight;
            pixelLeft = pixelRight = *pixel;
            pixelLeft &= 0xF;
            pixelRight &= 0xF0;
            if(pixelLeft)
                pixelLeft += temp;
            if(pixelRight)
                pixelRight += temp << 4;
            *pixel++ = pixelLeft | pixelRight;
        }
        i = (uintptr_t)OBJ_VRAM0;
        i += x * 0x80;
        if(gScriptContext.flags & 4)
            i += 0x80 * (2 * 16);
        else
            i += 0x80 * (y * 16);
        DmaCopy16(3, gTextColorTileBuffer, i, 0x80);
    }
    else
    {
        i = (uintptr_t)OBJ_VRAM0;
        i += x * 0x80;
        if(gScriptContext.flags & 4)
            i += 0x80 * (2 * 16);
        else
            i += 0x80 * (y * 16);
        DmaCopy16(3, temp, i, 0x80);
    }
    if(gScriptContext.flags & 4)
    {
        temp = x + 2 * 0x10;
        gTextBoxCharacters[temp].x = gScriptContext.fullscreenTextX * (16-2); 
        gTextBoxCharacters[temp].y = (y - 2) * (16+4);
        gTextBoxCharacters[temp].objAttr2 = 2 * 0x40 + x * 4;
    }
    else
    {
        temp = x + y * 0x10;
        gTextBoxCharacters[temp].x = x * (16-2); 
        gTextBoxCharacters[temp].y = y * (16+2);
        gTextBoxCharacters[temp].objAttr2 = y * 0x40 + x * 4;
    }
    gTextBoxCharacters[temp].objAttr2 += 0x400;
    gTextBoxCharacters[temp].state = characterCode | 0x8000;
    gTextBoxCharacters[temp].color = gScriptContext.textColor;
}


static void DrawTextAndMapMarkers(struct ScriptContext * scriptCtx)
{
    struct OamAttrs * oam;
    u32 i;
    u32 y, x;
    u32 size;
    if(!(scriptCtx->flags & SCRIPT_FULLSCREEN))
    {
        oam = &gOamObjects[57];
        for(i = 0; i < ARRAY_COUNT(gMapMarker); i++) 
        {
            if(gMapMarker[i].id != 0xFF)
            {    
                oam->attr0 = gMapMarker[i].attr0;
                oam->attr1 = gMapMarker[i].attr1;
                if(gMapMarker[i].isBlinking)
                {
                    gMapMarker[i].blinkTimer++;
                    gMapMarker[i].blinkTimer &= 0x1F;
                    if (gMapMarker[i].blinkTimer < 16)
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                }
                if(gMapMarker[i].unk5 & 0x2)
                {
                    gMapMarker[i].distanceMoved += gMapMarker[i].speed;
                    if (gMapMarker[i].distanceMoved >= gMapMarker[i].distanceToMove)
                    {
                        gMapMarker[i].speed -= gMapMarker[i].distanceMoved - gMapMarker[i].distanceToMove;
                        gMapMarker[i].unk5 &= ~2;
                    }
                    switch(gMapMarker[i].direction)
                    {
                        case 0:
                            y = gMapMarker[i].attr0 & 0xFF;
                            gMapMarker[i].attr0 &= ~0xFF;
                            y -= gMapMarker[i].speed;
                            y &= 0xFF;
                            gMapMarker[i].attr0 += y;
                            oam->attr0 = gMapMarker[i].attr0;
                            break;
                        case 1:
                            y = gMapMarker[i].attr0 & 0xFF;
                            gMapMarker[i].attr0 &= ~0xFF;
                            y += gMapMarker[i].speed;
                            y &= 0xFF;
                            gMapMarker[i].attr0 += y;
                            oam->attr0 = gMapMarker[i].attr0;
                            break;
                        case 2:
                            x = gMapMarker[i].attr1 & 0x1FF;
                            gMapMarker[i].attr1 &= ~0x1FF;
                            x -= gMapMarker[i].speed;
                            x &= 0x1FF;
                            gMapMarker[i].attr1 += x;
                            oam->attr1 = gMapMarker[i].attr1;
                            break;
                        case 3:
                            x = gMapMarker[i].attr1 & 0x1FF;
                            gMapMarker[i].attr1 &= ~0x1FF;
                            x += gMapMarker[i].speed;
                            x &= 0x1FF;
                            gMapMarker[i].attr1 += x;
                            oam->attr1 = gMapMarker[i].attr1;
                            break;
                        default:
                            break;
                    }
                }
                if(gMapMarker[i].unk5 & 0x4)
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
            else
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
        
    }

    if(gMain.showTextboxCharacters)
    {
        size = scriptCtx->flags & 0x800 ? 48 : 32;
        oam = &gOamObjects[0x2];
        for(i = 0; i < size; i++)
        {
            
            if(gTextBoxCharacters[i].state & 0x8000)
            {
                oam->attr0 = SPRITE_ATTR0(gTextBoxCharacters[i].y + scriptCtx->textYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(gTextBoxCharacters[i].x + scriptCtx->textXOffset, FALSE, FALSE, 1);
                oam->attr2 = gTextBoxCharacters[i].objAttr2;
            }
            else
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }   
        if(scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            oam = &gOamObjects[58];
            for(i = 32; i < ARRAY_COUNT(gTextBoxCharacters); i++)
            {
                if(gTextBoxCharacters[i].state & 0x8000)
                {
                    oam->attr0 = SPRITE_ATTR0(gTextBoxCharacters[i].y + scriptCtx->fullscreenTextYOffset, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(gTextBoxCharacters[i].x + scriptCtx->fullscreenTextXOffset, FALSE, FALSE, 1);
                    oam->attr2 = gTextBoxCharacters[i].objAttr2;
                }
                else
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
    }
    else
    {
        size = scriptCtx->flags & 0x800 ? 48 : 32;
        oam = &gOamObjects[0x2];
        for(i = 0; i < size; i++)
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }
        if(scriptCtx->flags & SCRIPT_FULLSCREEN)
        {
            oam = &gOamObjects[58];
            for(i = 32; i < ARRAY_COUNT(gTextBoxCharacters); i++)
            {
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                oam++;
            }
        }
    }
}
void RedrawTextboxCharacters(void)
{
    u32 i;
    u8 * src;
    u8 * dst;
    for(i = 0; i < ARRAY_COUNT(gTextBoxCharacters); i++)
    {
        struct TextBoxCharacter *theCharacter = &gTextBoxCharacters[i];
        if(theCharacter->state & 0x8000)
        {
            u32 temp = theCharacter->state & 0x7FFF;
            temp *= 0x80;
            temp += (u32)gCharSet; //! why tho
            if(theCharacter->color)
            {
                u32 j;
                u8 * tileBuf;
                u32 colorIdx;
                DmaCopy16(3, temp, gTextColorTileBuffer, 0x80);
                tileBuf = gTextColorTileBuffer;
                temp = theCharacter->color * 3;
                for(j = 0; j < 0x80; j++)
                {
                    u32 half1, half2;
                    half2 = *tileBuf; // honestly wtf capcom
                    half1 = half2 & 0xF;
                    half2 = half2 & 0xF0;
                    if(half1)
                        half1 += temp;
                    if(half2)
                        half2 += temp << 4;
                    *tileBuf++ = half1 | half2;
                }
                src = gTextColorTileBuffer;
                dst = (u8*)(OBJ_VRAM0 + i * 0x80);
                DmaCopy16(3, src, dst, 0x80);
            }
            else
            {
                dst = (u8*)(OBJ_VRAM0 + i * 0x80);
                DmaCopy16(3, temp, dst, 0x80);
            }
        }
    }
}

void sub_8007CCC(struct Main * main, s32 section)
{
    u32 word;
    u32 bit;
    
    if(section == 0xFFFF)
        return;

    section -= 0x80;
    if(section < 0)
        return;
    
    word = section / 32;
    bit = section % 32;
    main->unk100[word] |= 1 << bit;
}

bool32 sub_8007CFC(struct Main * main, s32 section)
{
    u32 word;
    u32 bit;
    
    if(section == 0xFFFF)
        return FALSE;

    section -= 0x80;
    if(section < 0)
        return FALSE;

    word = section / 32;
    bit = section % 32;
    return main->unk100[word] & (1 << bit); // please return a bool :(
}

void sub_8007D30(struct Main * main)
{
    u16 i;
    for(i = 0; i < 8; i++)
    {
        main->unk100[i] = 0;
        main->talkEndFlags[i] = 0;
    }
}

void sub_8007D5C(struct Main * main)
{
    u16 i;
    for(i = 0; i < 8; i++)
    {
        main->unk100[i] = gSaveDataBuffer.main.unk100[i];
    }
}
