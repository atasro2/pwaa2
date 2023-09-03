#include "global.h"
#include "background.h"
#include "court_record.h"
#include "case_data.h"
#include "graphics.h"
#include "main.h"
#include "sound.h"
#include "court.h"
#include "script.h"
#include "investigation.h"
#include "animation.h"
#include "psyche_lock.h"
#include "save.h"
#include "ewram.h"
#include "constants/process.h"
#include "constants/songs.h"
#include "constants/animation.h"
#include "constants/oam_allocations.h"

struct EvidenceProfileData
{
    /* +0x00 */ u8 * descriptionTiles;
    /* +0x04 */ u16 evidenceImageId;
    /* +0x06 */ u16 evidenceDetailId;
};

const struct EvidenceProfileData gEvidenceProfileData[] = {
    {
        .descriptionTiles = gGfxProfilesMaggeyByrde_description,
        .evidenceImageId = 0x8,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesWinstonPayne_description,
        .evidenceImageId = 0xA,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesDickGumshoe_description,
        .evidenceImageId = 0xB,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesDustinPrince_description,
        .evidenceImageId = 0xC,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMayaFey0_description,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhoenixBadge_description,
        .evidenceImageId = 0x3F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhoenixCellphone0_description,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAutopsyReport0_description,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto0_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x1,
    },
    {
        .descriptionTiles = gGfxEvidenceBrokenGlasses_description,
        .evidenceImageId = 0x2,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto1_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x2,
    },
    {
        .descriptionTiles = gGfxEvidenceDustinsBaseballGlove_description,
        .evidenceImageId = 0x3,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericLetter0_description,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericLetter1_description,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhoenixCellphone1_description,
        .evidenceImageId = 0x5,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhoenixBusinessCard0_description,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhoenixBusinessCard1_description,
        .evidenceImageId = 0xD,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMayasCellphone_description,
        .evidenceImageId = 0x6,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesRichardWellington_description,
        .evidenceImageId = 0x9,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesTurnerGrey0_description,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesTurnerGrey1_description,
        .evidenceImageId = 0x1E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesPearlFey0_description,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesPearlFey1_description,
        .evidenceImageId = 0x1F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMayaFey1_description,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMayaFey2_description,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMiaFey_description,
        .evidenceImageId = 0x25,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesLottaHart0_description,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMorganFey0_description,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMorganFey1_description,
        .evidenceImageId = 0x21,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMimiMiney_description,
        .evidenceImageId = 0x22,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesIniMiney0_description,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesIniMiney1_description,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesFranziskaVonKarma0_description,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesAmiFey_description,
        .evidenceImageId = 0x29,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesDrHotti_description,
        .evidenceImageId = 0x27,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto2_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x3,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto3_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x4,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAutopsyReport1_description,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAutopsyReport2_description,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceNewspaperArticle_description,
        .evidenceImageId = 0x1D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericNewspaperClipping0_description,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericNewspaperClipping1_description,
        .evidenceImageId = 0xE,
        .evidenceDetailId = 0x8,
    },
    {
        .descriptionTiles = gGfxEvidenceMagatamaDischarged_description,
        .evidenceImageId = 0x1B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMagatamaCharged_description,
        .evidenceImageId = 0x1C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMeetingRoomScreen_description,
        .evidenceImageId = 0xF,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMeetingRoomKey_description,
        .evidenceImageId = 0x10,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGreysGun_description,
        .evidenceImageId = 0x12,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMayasKnife_description,
        .evidenceImageId = 0x13,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMayasRobe0_description,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMayasRobe1_description,
        .evidenceImageId = 0x14,
        .evidenceDetailId = 0x5,
    },
    {
        .descriptionTiles = gGfxEvidence001828C80_description,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = gGfxEvidence001828C81_description,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x6,
    },
    {
        .descriptionTiles = gGfxEvidence001828C82_description,
        .evidenceImageId = 0x15,
        .evidenceDetailId = 0x7,
    },
    {
        .descriptionTiles = gGfxEvidenceKurainSacredUrn0_description,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceKurainSacredUrn1_description,
        .evidenceImageId = 0x16,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceSwatchFromMayasRobe_description,
        .evidenceImageId = 0x17,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePearlsBall_description,
        .evidenceImageId = 0x18,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceLargeBox_description,
        .evidenceImageId = 0x19,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesIniMiney2_description,
        .evidenceImageId = 0x23,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceNoteFromTheSafe0_description,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMayaFey3_description,
        .evidenceImageId = 0x7,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMaximillionGalactica_description,
        .evidenceImageId = 0x3D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesFranziskaVonKarma1_description,
        .evidenceImageId = 0x28,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesRussellBerry_description,
        .evidenceImageId = 0x43,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesReginaBerry_description,
        .evidenceImageId = 0x3E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesBen0_description,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesBen1_description,
        .evidenceImageId = 0x40,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMoe_description,
        .evidenceImageId = 0x41,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesAcro0_description,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesAcro1_description,
        .evidenceImageId = 0x42,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesBat_description,
        .evidenceImageId = 0x44,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto4_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x9,
    },
    {
        .descriptionTiles = gGfxEvidenceMaxSilkHat_description,
        .evidenceImageId = 0x2A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto5_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xA,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericLetter2_description,
        .evidenceImageId = 0x4,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMaxPoster_description,
        .evidenceImageId = 0x2B,
        .evidenceDetailId = 0xB,
    },
    {
        .descriptionTiles = gGfxEvidenceBrokenBottle_description,
        .evidenceImageId = 0x2C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceTrilo_description,
        .evidenceImageId = 0x2D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMoney_description,
        .evidenceImageId = 0x2E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAutopsyReport3_description,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceLargeChest_description,
        .evidenceImageId = 0x30,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePepper_description,
        .evidenceImageId = 0x31,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceEngagementRing_description,
        .evidenceImageId = 0x2F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto6_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xC,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto7_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0xD,
    },
    {
        .descriptionTiles = gGfxEvidenceThreateningNoteTorn_description,
        .evidenceImageId = 0x33,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceThreateningNoteFull0_description,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xE,
    },
    {
        .descriptionTiles = gGfxEvidenceThreateningNoteFull1_description,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0xF,
    },
    {
        .descriptionTiles = gGfxEvidenceThreateningNoteFull2_description,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x10,
    },
    {
        .descriptionTiles = gGfxEvidenceLeon_description,
        .evidenceImageId = 0x36,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceReginasWest_description,
        .evidenceImageId = 0x35,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBloodyScarf_description,
        .evidenceImageId = 0x37,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceRegent_description,
        .evidenceImageId = 0x3A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceThreateningNoteFull3_description,
        .evidenceImageId = 0x34,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMilk_description,
        .evidenceImageId = 0x3B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePlayingCard_description,
        .evidenceImageId = 0x39,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePlayingCards_description,
        .evidenceImageId = 0x38,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceMoesGrapes_description,
        .evidenceImageId = 0x3C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesWillPowers_description,
        .evidenceImageId = 0x45,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesWendyOldbag_description,
        .evidenceImageId = 0x46,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesLottaHart1_description,
        .evidenceImageId = 0x20,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesJuanCorrida_description,
        .evidenceImageId = 0x47,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMattEngarde0_description,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMattEngarde1_description,
        .evidenceImageId = 0x48,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesAdrianAndrews_description,
        .evidenceImageId = 0x49,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesCelesteInpax0_description,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesCelesteInpax1_description,
        .evidenceImageId = 0x4A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesDisguisedShellyDeKiller_description,
        .evidenceImageId = 0x4B,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesShellyDeKiller_description,
        .evidenceImageId = 0x4C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxProfilesMilesEdgeworth_description,
        .evidenceImageId = 0x4D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceAdmissionTicket_description,
        .evidenceImageId = 0x4E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceTransceiver0_description,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceTransceiver1_description,
        .evidenceImageId = 0x4F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceLottasCameraCase0_description,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceLottasCameraCase1_description,
        .evidenceImageId = 0x5E,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto8_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x11,
    },
    {
        .descriptionTiles = gGfxEvidenceGuitarCase0_description,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGuitarCase1_description,
        .evidenceImageId = 0x50,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceTomatoJuice0_description,
        .evidenceImageId = 0x51,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBloodyButton_description,
        .evidenceImageId = 0x67,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto9_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x12,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericEnvelope0_description,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericEnvelope1_description,
        .evidenceImageId = 0x54,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceJuansAutograph_description,
        .evidenceImageId = 0x52,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGossipColumn_description,
        .evidenceImageId = 0x53,
        .evidenceDetailId = 0x13,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAutopsyReport4_description,
        .evidenceImageId = 0x0,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBloodyKnife_description,
        .evidenceImageId = 0x69,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto10_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x14,
    },
    {
        .descriptionTiles = gGfxEvidenceShellysCallingCard_description,
        .evidenceImageId = 0x55,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceNoteFromTheSafe1_description,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceVideoCamera_description,
        .evidenceImageId = 0x56,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceVideoTransmitter_description,
        .evidenceImageId = 0x5C,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceImportedBear_description,
        .evidenceImageId = 0x57,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceReceipt_description,
        .evidenceImageId = 0x58,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBearPuzzle0_description,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBearPuzzle1_description,
        .evidenceImageId = 0x59,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidencePhotoOfCeleste_description,
        .evidenceImageId = 0x5A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceNoteFromTheSafe2_description,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceNoteFromTheSafe3_description,
        .evidenceImageId = 0x26,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAffidavit0_description,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericAffidavit1_description,
        .evidenceImageId = 0x68,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBearClock_description,
        .evidenceImageId = 0x6A,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceFrequencyDetector_description,
        .evidenceImageId = 0x5F,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceShoe_description,
        .evidenceImageId = 0x5D,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBellboyUniform0_description,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceBellboyUniform1_description,
        .evidenceImageId = 0x62,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericVideo0_description,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericVideo1_description,
        .evidenceImageId = 0x64,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceShellyPistol0_description,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceShellyPistol1_description,
        .evidenceImageId = 0x65,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceFranziskasWhip_description,
        .evidenceImageId = 0x66,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceTrackingDevice_description,
        .evidenceImageId = 0x60,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGumshoesCoat_description,
        .evidenceImageId = 0x61,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGatewaterHotelButton_description,
        .evidenceImageId = 0x63,
        .evidenceDetailId = 0x0,
    },
    {
        .descriptionTiles = gGfxEvidenceGenericPhoto11_description,
        .evidenceImageId = 0x1,
        .evidenceDetailId = 0x15,
    },
    {
        .descriptionTiles = gGfxEvidenceTomatoJuice1_description,
        .evidenceImageId = 0x51,
        .evidenceDetailId = 0x0,
    },
};

const u8 sCourtRecordLeftArrowTileIndexes[] = {0, 4, 8, 4};
const u8 sCourtRecordRightArrowTileIndexes[] = {12, 16, 20, 16};

void (*gCourtRecordProcessStates[8])(struct Main *, struct CourtRecord *) = {
	CourtRecordInit,
	CourtRecordMain,
	CourtRecordExit,
	CourtRecordChangeState,
	CourtRecordChangeRecord,
	CourtRecordDetailSubMenu,
	CourtRecordLoadGfxChangeState,
	CourtRecordTakeThatSpecial
};

void (*gEvidenceAddedProcessStates[3])(struct Main *, struct CourtRecord *) = {
	EvidenceAddedInit,
	EvidenceAddedMain,
	EvidenceAddedExit
};

void InitializeCourtRecordForScenario(struct Main * main, struct CourtRecord * courtRecord) // Status_init
{
    const u8 * recordIds;
    u32 i;

    for(i = 0; i < 32; i++)
        courtRecord->profileList[i] |= 0xFF;
    courtRecord->profileCount = 0;
    for(i = 0; i < 32; i++)
        courtRecord->evidenceList[i] |= 0xFF;
    courtRecord->evidenceCount = 0;
    recordIds = gCourtRecordInitialItemLists[main->scenarioIdx];
    for(i = 0; *recordIds != 0xFE; i++)
    {
        courtRecord->profileList[i] = *recordIds;
        courtRecord->profileCount++;
        recordIds++;
    }
    recordIds++;
    for(i = 0; *recordIds != 0xFF; i++)
    {
        courtRecord->evidenceList[i] = *recordIds;
        courtRecord->evidenceCount++;
        recordIds++;
    }
}

void CourtRecordProcess(struct Main * main) // Status
{
    gBG1MapBuffer[622] = 9;
    gBG1MapBuffer[623] = 9;
    gCourtRecordProcessStates[main->process[GAME_PROCESS_STATE]](main, &gCourtRecord);
}

void EvidenceAddedProcess(struct Main * main) // Note_add_disp
{
    gEvidenceAddedProcessStates[main->process[GAME_PROCESS_STATE]](main, &gCourtRecord);
}

void CourtRecordInit(struct Main * main, struct CourtRecord * courtRecord) // status_init
{
    u32 i;
    u32 temp;
    u16 * map;
    struct OamAttrs * oam;
    clearHPBarOAM();
    temp = gMain.unk2BA;
    sub_8013878(gMain.unk2BA);
    gMain.unk2BA = temp;
    map = gBG2MapBuffer; 
    for(i = 0; i < 0x400; i++, map++)
        *map = 0;
    if(main->processCopy[GAME_PROCESS] != QUESTIONING_PROCESS)
    {
        if(main->processCopy[GAME_PROCESS] == INVESTIGATION_PROCESS && main->processCopy[GAME_PROCESS_STATE] < INVESTIGATION_INSPECT)
        {
            oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTIONS];
            for(i = 0; i < OAM_COUNT_INVESTIGATION_ACTIONS; i++)
            {
                oam->attr2 = SPRITE_ATTR2(0x100+i*0x20, 1, 5);
                oam++;
            }
        }
    }
    if(main->processCopy[GAME_PROCESS] == TESTIMONY_PROCESS)
    {
        oam = &gOamObjects[OAM_IDX_ITESTIMONY_INDICATOR];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    if(main->process[GAME_PROCESS_VAR2] == 2)
    {
        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
        oam->attr2 = SPRITE_ATTR2(0x160, 1, 6);
    }
    if(main->process[GAME_PROCESS_VAR2] == 3)
    {
        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
    gIORegisters.lcd_bg2cnt = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30) | BGCNT_WRAP | BGCNT_TXT256x256;
    main->tilemapUpdateBits |= 0x4;
    courtRecord->flags = 0;
    courtRecord->selectedItem = 0;
    courtRecord->selectedItemBackup = 0;
    courtRecord->displayItemCount = courtRecord->evidenceCount;
    courtRecord->displayItemList = courtRecord->evidenceList;
    LoadEvidenceWindowGraphics();
    LoadEvidenceGraphics(courtRecord->displayItemList[courtRecord->selectedItem]);
    if(main->process[GAME_PROCESS_VAR2] == 1)
        SlideInBG2Window(2, 0xC);
    courtRecord->nextState = RECORD_MAIN;
    main->process[GAME_PROCESS_STATE] = RECORD_CHANGE_STATE;
}

// ! whoever is up for the challenge of matching this function correctly can be my guest
void CourtRecordMain(struct Main * main, struct CourtRecord * courtRecord) // status_main
{
    struct AnimationListEntry * anim = &gAnimation[1];
    struct Joypad * joypad = &gJoypad;
    struct OamAttrs * oam;
    u32 section;

    if(joypad->pressedKeys & L_BUTTON)
    {
        u32 evidenceId = courtRecord->displayItemList[courtRecord->selectedItem];
        if(gEvidenceProfileData[evidenceId].evidenceDetailId)
        {
            PauseBGM();
            PlaySE(SE001_MENU_CONFIRM);
            main->process[GAME_PROCESS_STATE] = RECORD_DETAIL_SUBMENU;
            main->process[GAME_PROCESS_VAR1] = 0;
            StartHardwareBlend(2, 1, 1, 0x1F);
            return;
        }
    }
    
    if(joypad->heldKeys & DPAD_RIGHT && courtRecord->displayItemCount > 1)
    {
        SlideInBG2Window(1, 0xC);
        if(++courtRecord->selectedItem >= courtRecord->displayItemCount)
            courtRecord->selectedItem = 0;
        goto shit;
    }
    else if (joypad->heldKeys & DPAD_LEFT && courtRecord->displayItemCount > 1)
    {
        SlideInBG2Window(2, 0xC);
        if(--courtRecord->selectedItem > courtRecord->displayItemCount)
            courtRecord->selectedItem = courtRecord->displayItemCount-1;
        shit:
        PlaySE(SE00C_MENU_CHANGE_PAGE);
        courtRecord->nextState = RECORD_MAIN;
        courtRecord->flags |= 2;
        DmaCopy16(3, OBJ_VRAM0+0x3C00, VRAM+0x1400, 0x1C00);
        DmaCopy16(3, OBJ_PLTT+0x20, PLTT+0x20, 0x20);
        UpdateEvidenceSprites(courtRecord);
        DmaCopy16(3, &gOamObjects[OAM_IDX_EVIDENCE_DISPLAY], OAM + OAM_IDX_EVIDENCE_DISPLAY*8, OAM_COUNT_EVIDENCE_DISPLAY*8);
        main->process[GAME_PROCESS_STATE] = RECORD_LOAD_GFX_CHANGE_STATE;
        if(main->process[GAME_PROCESS_VAR2] == 1)
        {
            goto fuck;
        }
    }
    else if(main->process[GAME_PROCESS_VAR2] == 1) // in Questioning 
    {
        if(joypad->pressedKeys & R_BUTTON) {
            PlaySE(SE00A_SWITCH_RECORD);
            SlideInBG2Window(3, 0xC);
            courtRecord->nextState = RECORD_CHANGE_RECORD;
            main->process[GAME_PROCESS_STATE] = courtRecord->nextState;
        }
        else if(joypad->pressedKeys & A_BUTTON)
        {
            //u32 section;
            UpdateRecordInfoActionSprites(0);
            UpdateRecordPresentActionSprites(0);
            oam = gOamObjects + OAM_IDX_LR_ARROW;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            if(main->gameStateFlags & 0x200)
            {
                SlideInBG2Window(4, 0x12);
                SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_TAKE_THAT_SPECIAL, 0, 0, main);
            }
            else {
                if(main->gameStateFlags & 0x100)
                {
                    PlayAnimation(ANIM_TAKETHAT_LEFT);
                    PlaySE(SE00D_VOICE_PHOENIX_TAKE_THAT_JP);
                }
                else
                {
                    PlayAnimation(ANIM_OBJECTION_LEFT);
                    PlaySE(SE027_VOICE_PHOENIX_OBJECTION_JP);
                }
                StartHardwareBlend(3, 1, 4, 0x1F);
                gTestimony.timer = 0xA;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                main->advanceScriptContext = FALSE;
                main->showTextboxCharacters = FALSE;
                main->shakeTimer = 30;
                main->shakeIntensity = 1;
                main->gameStateFlags |= 1;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
                ClearEvidenceSprites(courtRecord);
                section = GetQuestioningPresentedSection(gScriptContext.currentSection, courtRecord->displayItemList[courtRecord->selectedItem]);
                if(section != 0)
                {
                    StopBGM();
                    ChangeScriptSection(section);
                    SET_PROCESS_BACKUP_PTR(COURT_PROCESS, COURT_MAIN, 0, 0, main);
                }
                else
                {
                    u32 section = gScriptContext.currentSection;
                    if(gScriptContext.flags & 0x10)
                        ChangeScriptSection(++section);
                    else
                    {
                        u32 rand = Random() & 3;
                        switch(rand)
                        {
                            case 0:
                                // could be a macro which would be cool
                                do {
                                    ChangeScriptSection(0x1F);
                                    gScriptContext.slamDesk = TRUE;
                                } while(0); // lolwut? needed for matching
                                break;
                            case 1:
                                ChangeScriptSection(0x20);
                                gScriptContext.slamDesk = TRUE;
                                break;
                            case 2:
                                ChangeScriptSection(0x21);
                                break;
                            case 3:
                                ChangeScriptSection(0x22);
                                break;
                            default:
                                break;
                        }
                        gScriptContext.nextSection = section;
                    }
                    gScriptContext.flags &= ~0x10;
                    SET_PROCESS_BACKUP_PTR(QUESTIONING_PROCESS, QUESTIONING_MAIN, 0, 0, main);
                }
                SET_PROCESS_PTR(QUESTIONING_PROCESS, QUESTIONING_OBJECTION, 0, 0, main);
            }
            SetTextboxNametag(0, FALSE);
            main->gameStateFlags &= ~0x300;
            return;
        }
        else if(!(main->gameStateFlags & 0x100)
             && joypad->pressedKeys & B_BUTTON)
        {
            PlaySE(SE002_MENU_CANCEL);
            SlideInBG2Window(4, 0xC);
            main->process[GAME_PROCESS_STATE] = RECORD_EXIT;
        }
        fuck:
        if(main->processCopy[GAME_PROCESS] != INVESTIGATION_PROCESS)
            UpdateQuestioningMenuSprites(main, &gTestimony, 0);
        oam = &gOamObjects[OAM_IDX_BUTTON_PROMPTS+2];
        if(!(main->gameStateFlags & 0x100))
        {
            oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(186, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x190, 1, 5);
            oam++;
            oam->attr0 = SPRITE_ATTR0(0, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(218, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x198, 1, 5);
        }
        else
        {
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        }
    }
    else if(main->process[GAME_PROCESS_VAR2] == 2
         || main->process[GAME_PROCESS_VAR2] == 3) // in Talk menu
    {
        //u32 section;
        if(joypad->pressedKeys & R_BUTTON) {
            PlaySE(SE00A_SWITCH_RECORD);
            SlideInBG2Window(3, 0xC);
            courtRecord->nextState = RECORD_CHANGE_RECORD;
            main->process[GAME_PROCESS_STATE] = RECORD_CHANGE_RECORD;
        }
        else if(joypad->pressedKeys & A_BUTTON)
        {
            if(main->process[GAME_PROCESS_VAR2] == 2) {
                if(courtRecord->displayItemList[courtRecord->selectedItem] == 0x2B) {
                    if(sub_8016D8C(main->currentRoomId, anim->animationInfo.personId) >= 0) {
                        gInvestigation.unkB |= 1;
                        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                        ClearEvidenceSprites(courtRecord);
                        UpdateRecordInfoActionSprites(0);
                        UpdateRecordPresentActionSprites(0);
                        gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
                        oam = gOamObjects + OAM_IDX_LR_ARROW;
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                        oam++;
                        oam->attr0 = SPRITE_ATTR0_CLEAR;
                        FadeOutBGM(30);
                        courtRecord->flags |= 8;
                        SlideInBG2Window(4, 0x12);
                        SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_TAKE_THAT_SPECIAL, 0, 0, main);
                        return;
                    }
                }
            }
            PlaySE(SE001_MENU_CONFIRM);
            if(main->process[GAME_PROCESS_VAR2] == 2) {
                section = GetEvidenceCommentSection(main, courtRecord->displayItemList[courtRecord->selectedItem], courtRecord->flags & COURT_RECORD_VIEW_PROFILES);
                ChangeScriptSection(section);
                SlideTextbox(1);
            }
            ClearEvidenceSprites(courtRecord);
            UpdateRecordInfoActionSprites(0);
            UpdateRecordPresentActionSprites(0);
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
            oam = gOamObjects + OAM_IDX_LR_ARROW;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            if(main->process[GAME_PROCESS_VAR2] == 3) {
                gInvestigation.actionState = 4;   
                SlideInBG2Window(4, 0x12);
                SET_PROCESS_PTR(COURT_RECORD_PROCESS, RECORD_TAKE_THAT_SPECIAL, 0, 0, main);
                courtRecord->flags |= 0x10;
                if(sub_8016DCC(&gMain.unk1A4[gMain.unk244], courtRecord->displayItemList[courtRecord->selectedItem]) != -1) {
                    StopBGM();
                }
                return;
            }
            gInvestigation.actionState = 3;
            gInvestigation.inactiveActions = 8;
            gInvestigation.inactiveActionButtonY = 0xF0;
            RESTORE_PROCESS_PTR(main);
            return;
        }
        else if(joypad->pressedKeys & B_BUTTON)
        {
            PlaySE(SE002_MENU_CANCEL);
            SlideInBG2Window(3, 0xC);
            if(main->process[GAME_PROCESS_VAR2] == 2)
                SET_PROCESS_BACKUP_PTR(INVESTIGATION_PROCESS, INVESTIGATION_PRESENT, 3, 0, main);
            else
                SET_PROCESS_BACKUP_PTR(INVESTIGATION_PROCESS, INVESTIGATION_10, 6, 0, main);
            main->process[GAME_PROCESS_STATE] = RECORD_EXIT;
        }
    }
    else // Normal court record
    {
        if(joypad->pressedKeys & R_BUTTON)
        {
            PlaySE(SE00A_SWITCH_RECORD);
            SlideInBG2Window(0x3, 0xC);
            courtRecord->nextState = RECORD_CHANGE_RECORD;
            main->process[GAME_PROCESS_STATE] = RECORD_CHANGE_RECORD;
        }
        else if(joypad->pressedKeys & B_BUTTON)
        {
            PlaySE(SE002_MENU_CANCEL);
            SlideInBG2Window(0x3, 0xC);
            main->process[GAME_PROCESS_STATE] = RECORD_EXIT;
        }
    }
    UpdateBG2Window(&gCourtRecord);
    UpdateRecordSprites(&gCourtRecord);
}

void CourtRecordExit(struct Main * main, struct CourtRecord * courtRecord) // status_exit
{
    struct OamAttrs * oam;
    if(main->process[GAME_PROCESS_VAR2] == 2 && courtRecord->windowTileX > 8)
    {
        u16 attr1;
        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
        attr1 = oam->attr1 & ~0x1FF;
        oam->attr1 += 12;
        oam->attr1 &= 0x1FF;
        if(oam->attr1 >= 0xB4)
            oam->attr1 = 0xB4;
        oam->attr1 |= attr1;
    }
    if(main->process[GAME_PROCESS_VAR2] == 3 && courtRecord->windowTileX > 8)
    {
        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
    UpdateBG2Window(courtRecord);
    UpdateRecordSprites(courtRecord);
    if(courtRecord->windowScrollSpeed == 0)
    {
        courtRecord->flags |= 4;
        courtRecord->flags &= ~2;
        if(main->process[GAME_PROCESS_VAR2] == 0 && !(gScriptContext.flags & SCRIPT_FULLSCREEN))
        {
            gBG1MapBuffer[622] = 0x20;
            gBG1MapBuffer[623] = 0x21;
        }
        RESTORE_PROCESS_PTR(main);
        if(gMain.unk2BA)
            PlaySE(gMain.unk2BA);
    }
}

void CourtRecordChangeState(struct Main * main, struct CourtRecord * courtRecord) // status_wait
{
    struct OamAttrs * oam;
    if(main->process[GAME_PROCESS_VAR2] == 2 && courtRecord->windowTileX > 8)
    {
        u16 attr1;
        oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTION_PRESENT];
        attr1 = oam->attr1 & ~0x1FF;
        oam->attr1 -= 12;
        oam->attr1 &= 0x1FF;
        if(oam->attr1 >= 0x100) // what the fuck
            oam->attr1 = 0;
        oam->attr1 |= attr1;
    }
    UpdateBG2Window(courtRecord);
    UpdateRecordSprites(courtRecord);
    if(courtRecord->windowScrollSpeed == 0)
    {
        courtRecord->flags |= 4;
        courtRecord->flags &= ~2;
        main->process[GAME_PROCESS_STATE] = courtRecord->nextState;
    }
}

void CourtRecordChangeRecord(struct Main * main, struct CourtRecord * courtRecord) // status_menu_change
{
    UpdateBG2Window(courtRecord);
    UpdateRecordSprites(courtRecord);
    if(courtRecord->windowScrollSpeed == 0)
    {
        u32 temp;
        courtRecord->flags &= ~2;
        SlideInBG2Window(2, 0xC);
        courtRecord->nextState = RECORD_MAIN;
        main->process[GAME_PROCESS_STATE] = RECORD_CHANGE_STATE;
        temp = courtRecord->selectedItem;
        courtRecord->selectedItem = courtRecord->selectedItemBackup;
        courtRecord->selectedItemBackup = temp;
        if(courtRecord->flags & COURT_RECORD_VIEW_PROFILES)
        {
            courtRecord->flags &= ~COURT_RECORD_VIEW_PROFILES;
            DmaCopy16(3, gGfx4bppProfileTextTiles, OBJ_VRAM0+0x3500, TILE_SIZE_4BPP*16);
            courtRecord->displayItemCount = courtRecord->evidenceCount;
            courtRecord->displayItemList = courtRecord->evidenceList;
        }
        else
        {
            courtRecord->flags |= COURT_RECORD_VIEW_PROFILES;
            DmaCopy16(3, gGfxEvidenceText, OBJ_VRAM0+0x3500, 0x200);
            courtRecord->displayItemCount = courtRecord->profileCount;
            courtRecord->displayItemList = courtRecord->profileList;
        }

        LoadEvidenceGraphics(courtRecord->displayItemList[courtRecord->selectedItem]);
    }
}

void CourtRecordDetailSubMenu(struct Main * main, struct CourtRecord * courtRecord) // status_exception ?
{
    u32 evidenceId;
    if(main->gameStateFlags & 1)
    {
        gIORegisters.lcd_bg3vofs = 8;
        gIORegisters.lcd_bg3hofs = 8;
        gIORegisters.lcd_bg1vofs = 0;
        gIORegisters.lcd_bg1hofs = 0;
    }
    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
        {
            struct OamAttrs * oam;
            u32 i;
            
            if(main->blendMode != 0)
                break;
            if(gMain.processCopy[GAME_PROCESS] == INVESTIGATION_PROCESS
            && gMain.processCopy[GAME_PROCESS_STATE] == INVESTIGATION_10) {
                if(gMain.unk24B != 2 && gMain.unk30 == 0x7F) {
                    sub_80161F4();
                    sub_801622C();
                    sub_8017134();
                }
            } else {
                if(gMain.unk24B == 1){
                    sub_8016D40();
                }
            }
            courtRecord->fullScreenPage = 0;
            evidenceId = courtRecord->displayItemList[courtRecord->selectedItem];
            DmaCopy16(3, &gMain, &gSaveDataBuffer.main, sizeof(struct Main));
            switch(gEvidenceProfileData[evidenceId].evidenceDetailId)
            {
                case 0:
                    break;
                case 1:
                    main->currentBG = 0x15;
                    break;
                case 2:
                    main->currentBG = 0x16;
                    break;
                case 3:
                    main->currentBG = 0x2b;
                    break;
                case 4:
                    main->currentBG = 0x2a;
                    break;
                case 5:
                    main->currentBG = 0x30;
                    break;
                case 6:
                    main->currentBG = 0x31;
                    break;
                case 7:
                    main->currentBG = 0x32;
                    break;
                case 8:
                    main->currentBG = 0x27;
                    break;
                case 9:
                    main->currentBG = 0x4c;
                    break;
                case 10:
                    main->currentBG = 0x4b;
                    break;
                case 11:
                    main->currentBG = 0x48;
                    break;
                case 12:
                    main->currentBG = 0x49;
                    break;
                case 13:
                    main->currentBG = 0x53;
                    break;
                case 14:
                    main->currentBG = 0x47;
                    break;
                case 15:
                    main->currentBG = 0x47;
                    break;
                case 16:
                    main->currentBG = 0x47;
                    break;
                case 17:
                    main->currentBG = 0x65;
                    break;
                case 18:
                    main->currentBG = 0x64;
                    break;
                case 19:
                    main->currentBG = 0x76;
                    break;
                case 20:
                    main->currentBG = 0x66;
                    break;
                case 21:
                    main->currentBG = 0x67;
                    break;
                default: 
                    break;
            }
            DecompressBackgroundIntoBuffer(main->currentBG);
            DmaCopy16(3, gOamObjects, gSaveDataBuffer.oam, sizeof(gOamObjects));
            DmaCopy16(3, gMapMarker, gSaveDataBuffer.mapMarker, sizeof(gMapMarker));
            for(i = 0; i < 8; i++)
                gMapMarker[i].id |= 0xFF;
            if(main->processCopy[GAME_PROCESS] == INVESTIGATION_PROCESS)
            {
                oam = &gOamObjects[OAM_IDX_INVESTIGATION_ACTIONS];
                for(i = 0; i < OAM_COUNT_INVESTIGATION_ACTIONS; i++)
                {
                    oam->attr0 &= ~0x300;
                    oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
                    oam++;
                }
            }
            else if(main->processCopy[GAME_PROCESS] == TESTIMONY_PROCESS)
            {
                oam = &gOamObjects[OAM_IDX_ITESTIMONY_INDICATOR];
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
            else if(main->processCopy[GAME_PROCESS] == QUESTIONING_PROCESS)
            {
                oam = &gOamObjects[OAM_IDX_BUTTON_PROMPTS+2];
                oam->attr0 &= ~0x300;
                oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
                oam++;
                oam->attr0 &= ~0x300;
                oam->attr0 |= (ST_OAM_AFFINE_ERASE << 8);
            }
            if(gScriptContext.flags & SCRIPT_SPOTSELECT_SELECTION_MADE)
            {
                oam = &gOamObjects[OAM_IDX_38_1];
                oam->attr0 = SPRITE_ATTR0_CLEAR;
            }
            gSaveDataBuffer.main.showTextboxCharacters = main->showTextboxCharacters;
            main->showTextboxCharacters = FALSE;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
            gIORegisters.lcd_dispcnt &= ~DISPCNT_BG2_ON;
            main->animationFlags &= ~(2 | 1);
            ClearEvidenceSprites(courtRecord);
            UpdateRecordInfoActionSprites(0);
            UpdateEvidenceDetailActionSprites(1);
            oam = gOamObjects + OAM_IDX_LR_ARROW;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            main->process[GAME_PROCESS_VAR1]++;
            break;
        }
        case 1:
            CopyBGDataToVram(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESS_VAR1]++;
            break;
        case 2:
            if(main->blendMode != 0)
                break;
            if(gJoypad.pressedKeys & (L_BUTTON | B_BUTTON))
            {
                PlaySE(SE002_MENU_CANCEL);
                StartHardwareBlend(2, 1, 1, 0x1F);
                main->process[GAME_PROCESS_VAR1]++;
            }
            else if(gJoypad.pressedKeys & (DPAD_DOWN | A_BUTTON))
            {
                evidenceId = courtRecord->displayItemList[courtRecord->selectedItem];
                if(gEvidenceProfileData[evidenceId].evidenceDetailId == 8)
                {
                    PlaySE(SE001_MENU_CONFIRM);
                    courtRecord->fullScreenPage++;
                    if(courtRecord->fullScreenPage > 2)
                        courtRecord->fullScreenPage = 0;
                    StartHardwareBlend(2, 1, 2, 0x1F);
                    main->process[GAME_PROCESS_VAR1] = 6;
                }
            }
            break;
        case 3:
        {
            u32 i;
            if(main->blendMode != 0)
                break;
            main->currentBG = gSaveDataBuffer.main.currentBG;
            main->previousBG = gSaveDataBuffer.main.previousBG;
            main->currentBgStripe = gSaveDataBuffer.main.currentBgStripe;
            main->unk35 = gSaveDataBuffer.main.unk35;
            main->isBGScrolling = gSaveDataBuffer.main.isBGScrolling;
            main->Bg256_stop_line = gSaveDataBuffer.main.Bg256_stop_line;
            main->Bg256_scroll_x = gSaveDataBuffer.main.Bg256_scroll_x;
            main->Bg256_scroll_y = gSaveDataBuffer.main.Bg256_scroll_y;
            main->Bg256_pos_x = gSaveDataBuffer.main.Bg256_pos_x;
            main->Bg256_pos_y = gSaveDataBuffer.main.Bg256_pos_y;
            main->unk40 = gSaveDataBuffer.main.unk40;
            main->Bg256_dir = gSaveDataBuffer.main.Bg256_dir;
            main->horizontolBGScrollSpeed = gSaveDataBuffer.main.horizontolBGScrollSpeed;
            main->verticalBGScrollSpeed = gSaveDataBuffer.main.verticalBGScrollSpeed;
            main->Bg256_next_line = gSaveDataBuffer.main.Bg256_next_line;
            main->Bg256_buff_pos = gSaveDataBuffer.main.Bg256_buff_pos;
            main->bgStripeDestPtr = gSaveDataBuffer.main.bgStripeDestPtr;
            for(i = 0; i < 12; i++)
            {
                main->bgStripeOffsets[i] = gSaveDataBuffer.main.bgStripeOffsets[i];
            }
            DecompressBackgroundIntoBuffer(main->currentBG);
            CopyBGDataToVramAndScrollBG(main->currentBG);
            main->showTextboxCharacters = gSaveDataBuffer.main.showTextboxCharacters;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
            gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
            DmaCopy16(3, gSaveDataBuffer.oam, gOamObjects, sizeof(gOamObjects));
            DmaCopy16(3, gSaveDataBuffer.mapMarker, gMapMarker, sizeof(gMapMarker));
            MakeMapMarkerSprites();
            if(main->processCopy[GAME_PROCESS] == TESTIMONY_PROCESS)
                gTestimony.timer = 0;
            main->animationFlags |= (2 | 1);
            UpdateBG2Window(&gCourtRecord);
            UpdateRecordSprites(&gCourtRecord);
            main->process[GAME_PROCESS_VAR1]++;
            break;
        }
        case 4: {
            struct AnimationListEntry * anim;
            CopyBGDataToVramAndScrollBG(main->currentBG);
            if(main->currentBG == 0x23) {
                gIORegisters.lcd_bg3hofs = 8;
                anim = FindAnimationFromAnimId(0x6B);
                if(anim)
                    anim->animationInfo.xOrigin = DISPLAY_WIDTH/2;
            }
            if(gMain.unk2BE & 0xF) {
                switch(gMain.unk2BE >> 4) {
                    case 0:
                        loadWitnessBenchGraphics();
                        sub_800E7EC(0x18, 0x80, 1);
                        break;
                    case 1:
                        loadCounselBenchGraphics();
                        sub_800E900(0, 0x80, 1);       
                        break;
                    case 2:
                        loadCounselBenchGraphics();
                        sub_800E9D4(0x20, 0x80, 1);
                }
            }
            if(gMain.processCopy[GAME_PROCESS] == INVESTIGATION_PROCESS
            && gMain.processCopy[GAME_PROCESS_STATE] == INVESTIGATION_10) {
                if(gMain.unk24B != 2) {
                    sub_8016204();
                    sub_801622C();
                }
                sub_80170AC();
            } else {
                if(gMain.unk24B == 1) {
                    sub_8016C7C(gMain.unk244);
                }
            }
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESS_VAR1]++;
            break;
        }
        case 5:
        {
            if(main->blendMode == 0)
            {
                UnpauseBGM();
                main->process[GAME_PROCESS_STATE] = RECORD_MAIN;
                main->process[GAME_PROCESS_VAR1] = 0;
            }
            UpdateBG2Window(&gCourtRecord);
            UpdateRecordSprites(&gCourtRecord);
            break;
        }
        case 6:
        {
            if(main->blendMode != 0)
                break;
            evidenceId = courtRecord->displayItemList[courtRecord->selectedItem];
            if(gEvidenceProfileData[evidenceId].evidenceDetailId == 8)
            {
                switch(courtRecord->fullScreenPage)
                {
                    case 0:
                        main->currentBG = 0x27;
                        break;
                    case 1:
                        main->currentBG = 0x28;
                        break;
                    case 2:
                        main->currentBG = 0x29;
                        break;
                }
            }
            DecompressBackgroundIntoBuffer(main->currentBG);
            CopyBGDataToVram(main->currentBG);
            StartHardwareBlend(1, 1, 2, 0x1F);
            main->process[GAME_PROCESS_VAR1] = 1;
            break;
        }
        default:
            break;
    }
}

void CourtRecordLoadGfxChangeState(struct Main * main, struct CourtRecord * courtRecord) // status_melt ?
{
    LoadEvidenceGraphics(courtRecord->displayItemList[courtRecord->selectedItem]);
    main->process[GAME_PROCESS_STATE] = RECORD_CHANGE_STATE;
}


void CourtRecordTakeThatSpecial(struct Main * main, struct CourtRecord * courtRecord) // status_effect ?
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_TAKE_THAT_EVIDENCE_THROW];
    struct AnimationListEntry * anim = &gAnimation[1];
    u32 section;
    u32 temp2;
    u32 temp;

    switch(main->process[GAME_PROCESS_VAR1])
    {
        case 0:
            main->affineScale = 0;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            if(courtRecord->windowScrollSpeed == 0)
            {
                u32 offset;
                PlayAnimation(ANIM_TAKETHAT_LEFT);
                PlaySE(SE00D_VOICE_PHOENIX_TAKE_THAT_JP);
                gTestimony.timer = 6;
                temp2 = courtRecord->displayItemList[courtRecord->selectedItem];
                if(courtRecord->flags & 0x20) {
                    temp2 = 6;
                }
                offset = gEvidenceProfileData[temp2].evidenceImageId * (TILE_SIZE_4BPP * 64 + 0x20);
                temp = (uintptr_t)gGfxEvidenceProfilePictures + offset; //! Evil, uses a u32 for this pointer keep in mind and also global define
                DmaCopy16(3, temp, OBJ_PLTT+0x20, 0x20);
                temp = (uintptr_t)gGfxEvidenceProfilePictures + offset + 0x20;
                DmaCopy16(3, temp, OBJ_VRAM0+0x1000, TILE_SIZE_4BPP * 64);
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(88, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
                main->itemPlateRotation = 0;
                main->affineScale = 0x100;
                gIORegisters.lcd_dispcnt &= ~DISPCNT_BG1_ON;
                main->advanceScriptContext = FALSE;
                main->showTextboxCharacters = FALSE;
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            break;
        case 1:
        case 2:
            if(main->process[GAME_PROCESS_VAR2] >= 8)
            {
                StartHardwareBlend(3, 1, 6, 0x1F);
                main->process[GAME_PROCESS_VAR1]++;
                main->process[GAME_PROCESS_VAR2] = 0;
            }
            else
                main->process[GAME_PROCESS_VAR2]++;
            break;
        case 3:
            if(main->process[GAME_PROCESS_VAR2] >= 56)
            {
                if(courtRecord->flags & 8) {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    courtRecord->flags &= ~8;
                    main->unk244 = sub_8016D8C(main->currentRoomId, anim->animationInfo.personId);
                    SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_10, 0, 0, main);
                    return;
                } else if(courtRecord->flags & 0x10) {
                    s32 answer;
                    courtRecord->flags &= ~0x10;
                    gMain.unk24A = 0;
                    answer = sub_8016DCC(&main->unk1A4[main->unk244], courtRecord->displayItemList[courtRecord->selectedItem]);
                    if(answer >= 0) {
                        main->unk1A4[main->unk244].unkE = main->unk1A4[main->unk244].unk20[answer];
                        ChangeScriptSection(main->unk1A4[main->unk244].unkE);
                    } else {
                        ChangeScriptSection(main->unk1A4[main->unk244].unk10);
                    }
                    SlideTextbox(1);
                    SET_PROCESS_PTR(INVESTIGATION_PROCESS, INVESTIGATION_10, 3, 0, main);
                    return;
                } else if(courtRecord->flags & 0x20) {
                    gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
                    main->advanceScriptContext = TRUE;
                    main->showTextboxCharacters = TRUE;
                    courtRecord->flags &= ~0x20;
                    temp = gScriptContext.currentSection;
                    ChangeScriptSection(temp);
                } else {
                    oam->attr0 = SPRITE_ATTR0_CLEAR;
                    gInvestigation.selectedActionYOffset = 0;
                    gInvestigation.lastActionYOffset = 8;
                    gIORegisters.lcd_dispcnt |= DISPCNT_BG1_ON;
                    main->advanceScriptContext = TRUE;
                    main->showTextboxCharacters = TRUE;
                    temp2 = GetQuestioningPresentedSection(gScriptContext.currentSection, courtRecord->displayItemList[courtRecord->selectedItem]);
                    if(temp2)
                    {
                        ChangeScriptSection(temp2);
                        RESTORE_PROCESS_PTR(main);
                        return;
                    }
                    temp = gScriptContext.currentSection;
                    if(gScriptContext.flags & 0x10)
                    {
                        temp++;
                        ChangeScriptSection(temp);
                    }
                    else
                    {
                        temp2 = Random() & 3; 
                        switch(temp2)
                        {
                            case 0:
                                ChangeScriptSection(0x1F);
                                break;
                            case 1:
                                ChangeScriptSection(0x20);
                                break;
                            case 2:
                                ChangeScriptSection(0x21);
                                break;
                            case 3:
                                ChangeScriptSection(0x22);
                                break;
                            default:
                                break;
                        }
                        gScriptContext.nextSection = temp;
                    }
                    gScriptContext.flags &= ~0x10;
                }
                RESTORE_PROCESS_PTR(main);
                return;
            }
            main->process[GAME_PROCESS_VAR2]++;
            main->itemPlateRotation += 12;
            main->affineScale -= 8;
            break;
        default:
            break;
    }
    if(main->affineScale <= 4)
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    else
    {
        s32 scale;
        scale = fix_inverse(main->affineScale);
        gOamObjects[0].attr3 = fix_mul(_Cos(main->itemPlateRotation), scale);
        gOamObjects[1].attr3 = fix_mul(_Sin(main->itemPlateRotation), scale);
        gOamObjects[2].attr3 = fix_mul(-_Sin(main->itemPlateRotation), scale);
        gOamObjects[3].attr3 = fix_mul(_Cos(main->itemPlateRotation), scale);
        oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_NORMAL, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_AFFINE(88, 0, 3);
        oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
    }
    UpdateBG2Window(&gCourtRecord);
    UpdateRecordSprites(&gCourtRecord);
}

void EvidenceAddedInit(struct Main * main, struct CourtRecord * courtRecord) // note_add_init
{
    u32 i;
    u16 * map = gBG2MapBuffer;
    for(i = 0; i < 0x400; i++, map++)
        *map = 0;
    gIORegisters.lcd_dispcnt |= DISPCNT_BG2_ON;
    LoadEvidenceWindowGraphics();
    LoadEvidenceGraphics(main->gottenEvidenceId);
    SetBGMVolume(main->bgmVolume >> 1, 4);
    PlaySE(BGM015_JINGLE_EVIDENCE);
    main->process[GAME_PROCESS_STATE]++;
    main->process[GAME_PROCESS_VAR1] = 0;
}

void EvidenceAddedMain(struct Main * main, struct CourtRecord * courtRecord) // note_add_main
{
    UpdateBG2Window(courtRecord);
    UpdateEvidenceSprites(courtRecord);
    if(courtRecord->windowScrollSpeed == 0 && gScriptContext.flags & 1)
    {
        if(main->process[GAME_PROCESS_VAR1] == 0)
        {
            SetBGMVolume(0x100, 0x1E);
            main->process[GAME_PROCESS_VAR1] = 1;
        }
        if(gJoypad.pressedKeys & (A_BUTTON|B_BUTTON))
        {
            PlaySE(SE001_MENU_CONFIRM);
            SlideInBG2Window(3, 0xE);
            main->process[GAME_PROCESS_STATE] = EVIDENCE_ADD_EXIT;
        }
    }
}

void EvidenceAddedExit(struct Main * main, struct CourtRecord * courtRecord) // note_add_exit
{
    UpdateBG2Window(courtRecord);
    UpdateEvidenceSprites(courtRecord);
    if(courtRecord->windowScrollSpeed == 0)
    {
        RESTORE_PROCESS_PTR(main);
        if(gMain.process[GAME_PROCESS] == INVESTIGATION_PROCESS)
        {
            if(gMain.process[GAME_PROCESS_STATE] == INVESTIGATION_INSPECT)
                SetInactiveActionButtons(&gInvestigation, 1);
            else if(main->process[GAME_PROCESS_STATE] == INVESTIGATION_TALK) //! why?? why???? why are you using that pointer when the other ones are noooot
                SetInactiveActionButtons(&gInvestigation, 4);
            else if(gMain.process[GAME_PROCESS_STATE] == INVESTIGATION_PRESENT)
                SetInactiveActionButtons(&gInvestigation, 8);
        }
        gScriptContext.flags |= 2;
    }
}

void UpdateCourtRecordArrows(struct CourtRecord * courtRecord)
{
    courtRecord->recordArrowCounter++;
    if(courtRecord->recordArrowCounter > 4)
    {
        courtRecord->recordArrowCounter = 0;
        courtRecord->recordArrowFrame++;
        courtRecord->recordArrowFrame &= 3;
        DmaCopy16(3, gGfx4bppTestimonyArrows + sCourtRecordLeftArrowTileIndexes[courtRecord->recordArrowFrame] * 32, OBJ_VRAM0+0x3400, TILE_SIZE_4BPP*4);
        DmaCopy16(3, gGfx4bppTestimonyArrows + sCourtRecordRightArrowTileIndexes[courtRecord->recordArrowFrame] * 32, OBJ_VRAM0+0x3480, TILE_SIZE_4BPP*4);
    }
}

void LoadEvidenceWindowGraphics(void)
{
    SlideInBG2Window(1, 0xC);
    DmaCopy16(3, gGfx4bppTestimonyArrows, OBJ_VRAM0+0x3400, TILE_SIZE_4BPP*4);
    DmaCopy16(3, gGfx4bppTestimonyArrows + TILE_SIZE_4BPP*4 * 3, OBJ_VRAM0+0x3480, TILE_SIZE_4BPP*4);
    DmaCopy16(3, gGfx4bppControllerButtons, OBJ_VRAM0+0x3800, TILE_SIZE_4BPP*16);
    DmaCopy16(3, gGfx4bppPresentBackTextTiles, OBJ_VRAM0+0x3A00, TILE_SIZE_4BPP*16);
    DmaCopy16(3, gGfx4bppProfileTextTiles, OBJ_VRAM0+0x3500, TILE_SIZE_4BPP*16);
    DmaCopy16(3, gPalCrossExamUI, OBJ_PLTT+0x60, 0x20);
    DmaCopy16(3, gPalCourtRecordActionText, OBJ_PLTT+0x80, 0x20);
    DmaCopy16(3, gPalEvidenceProfileDesc, OBJ_PLTT+0x40, 0x20);
}

void UpdateRecordSprites(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam;
    UpdateEvidenceSprites(courtRecord);
    if(courtRecord->flags & 4)
    {
        UpdateCourtRecordArrows(courtRecord);
        oam = gOamObjects + OAM_IDX_LR_ARROW;
        if(courtRecord->displayItemCount > 1)
            oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A0, 0, 2);
        oam++;
        if(courtRecord->displayItemCount > 1)
            oam->attr0 = SPRITE_ATTR0(48, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        else
            oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(DISPLAY_WIDTH-16, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1A4, 0, 2);
        if(gMain.process[GAME_PROCESS_VAR2] == 0
        || gMain.process[GAME_PROCESS_VAR2] == 4
        || gMain.process[GAME_PROCESS_VAR2] == 5)
            UpdateRecordInfoActionSprites(1);
        else
            UpdateRecordPresentActionSprites(1);
        return;
    }
    else
    {
        oam = gOamObjects + OAM_IDX_LR_ARROW;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        if(gMain.process[GAME_PROCESS_VAR2] == 0
        || gMain.process[GAME_PROCESS_VAR2] == 4
        || gMain.process[GAME_PROCESS_VAR2] == 5)
            UpdateRecordInfoActionSprites(0);
        else
            UpdateRecordPresentActionSprites(0);
    }
}

void LoadEvidenceGraphics(u32 evidenceId)
{
    u32 offset;
    u8 * src;

    offset = gEvidenceProfileData[evidenceId].evidenceImageId * (TILE_SIZE_4BPP * 64 + 0x20);
    src = gGfxEvidenceProfilePictures + offset;
    DmaCopy16(3, src, OBJ_PLTT+0x20, 0x20);
    src = gGfxEvidenceProfilePictures + offset + 0x20;
    DmaCopy16(3, src, OBJ_VRAM0+0x5000, TILE_SIZE_4BPP * 64);
    src = gEvidenceProfileData[evidenceId].descriptionTiles;
    LZ77UnCompWram(src, eUnknown_0200AFC0);
    DmaCopy16(3, eUnknown_0200AFC0, (void *)OBJ_VRAM0+0x3C00, TILE_SIZE_4BPP * 160);
}

void UpdateEvidenceSprites(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_EVIDENCE_DISPLAY];
    u32 i;

    oam->attr0 = SPRITE_ATTR0(24, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(0, FALSE, FALSE, 3);
    oam->attr1 += courtRecord->windowX;
    oam->attr2 = SPRITE_ATTR2(0x280, 0, 1);
    oam++;
    for(i = 0; i < 5; i++)
    {
        oam->attr0 = SPRITE_ATTR0(24, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(72 + i*32, FALSE, FALSE, 2);
        oam->attr1 += courtRecord->windowX;
        oam->attr2 = SPRITE_ATTR2(0x1E0 + i*0x10, 0, 2);
        oam++;
    }
    for(i = 0; i < 5; i++)
    {
        oam->attr0 = SPRITE_ATTR0(56, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(72 + i*32, FALSE, FALSE, 2);
        oam->attr1 += courtRecord->windowX;
        oam->attr2 = SPRITE_ATTR2(0x230 + i*0x10, 0, 2);
        oam++;
    }
}

void ClearEvidenceSprites(struct CourtRecord * courtRecord)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_EVIDENCE_DISPLAY];
    u32 i;
    oam->attr0 = SPRITE_ATTR0_CLEAR;
    oam++;
    for(i = 0; i < 10; i++)
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
    }
}

void UpdateRecordInfoActionSprites(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_EVIDENCE_RECORD_ACTIONS];
    if(showSprites)
    {
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 1);
        oam->attr2 = SPRITE_ATTR2(0x1C8, 0, 4);
        oam++;
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(176, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x1A8, 0, 4);
        oam++;
        oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
        oam->attr1 = SPRITE_ATTR1_NONAFFINE(208, FALSE, FALSE, 2);
        oam->attr2 = SPRITE_ATTR2(0x1B0, 0, 4);
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
    }
}

void UpdateRecordPresentActionSprites(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_EVIDENCE_RECORD_ACTIONS];
    if(showSprites)
    {
        if(gMain.gameStateFlags & 0x100)
        {
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(60, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C8, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(76, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1A8, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(108, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1B0, 0, 4);
            oam++;
            oam = &gOamObjects[OAM_IDX_EVIDENCE_PRESENT_ACTIONS];
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam++;
        }
        else
        {
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(60, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C8, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(76, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1A8, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(108, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1B0, 0, 4);
            oam++;
            oam = &gOamObjects[OAM_IDX_EVIDENCE_PRESENT_ACTIONS];
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(140, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(156, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D0, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
            oam->attr2 = SPRITE_ATTR2(0x1C4, 0, 4);
            oam++;
            oam->attr0 = SPRITE_ATTR0(96, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
            oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
            oam->attr2 = SPRITE_ATTR2(0x1D8, 0, 4);
            oam++;
        }
    }
    else
    {
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam = &gOamObjects[OAM_IDX_EVIDENCE_PRESENT_ACTIONS];
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
        oam->attr0 = SPRITE_ATTR0_CLEAR;
        oam++;
    }
}

void UpdateEvidenceDetailActionSprites(bool32 showSprites)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_EVIDENCE_RECORD_ACTIONS];
    
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(184, FALSE, FALSE, 1);
    oam->attr2 = SPRITE_ATTR2(0x1C4, 0, 4);
    oam++;
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(200, FALSE, FALSE, 1);
    oam->attr2 = SPRITE_ATTR2(0x1CC, 0, 4);
    oam++;
    oam->attr0 = SPRITE_ATTR0(144, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_H_RECTANGLE);
    oam->attr1 = SPRITE_ATTR1_NONAFFINE(216, FALSE, FALSE, 2);
    oam->attr2 = SPRITE_ATTR2(0x1D8, 0, 4);
}

s32 FindEvidenceInCourtRecord(u32 isProfile, u32 evidenceId)
{
    u8 * list;
    u32 evidenceCount;
    u32 i;

    if(isProfile)
    {
        list = gCourtRecord.profileList;
        evidenceCount = gCourtRecord.profileCount;
    }
    else
    {
        list = gCourtRecord.evidenceList;
        evidenceCount = gCourtRecord.evidenceCount;
    }
    for(i = 0; i < evidenceCount; i++, list++)
    {
        if(*list == evidenceId)
            return i;
    }
    return -1;
}

s32 FindFirstEmptySlotInCourtRecord(u32 isProfile)
{
    u32 i;
    u8 * list = gCourtRecord.evidenceList;
    if(isProfile)
        list = gCourtRecord.profileList;
    for(i = 0; i < 0x20; i++, list++)
    {
        if(*list == 0xFF)
            return i;
    }
    return -1;
}

void SortCourtRecordAndSyncListCount(struct CourtRecord * courtRecord)
{
    u8 * ewram = eUnknown_0200AFC0;
    u32 i;

    DmaCopy16(3, courtRecord->profileList, ewram, 0x20);
    DmaFill16(3, 0xFFFF, courtRecord->profileList, 0x20);
    courtRecord->profileCount = 0;
    for(i = 0; i < 0x20; i++)
    {
        if(ewram[i] != 0xFF)
        {
            courtRecord->profileList[courtRecord->profileCount] = ewram[i];
            courtRecord->profileCount++;
        }
    }
    DmaCopy16(3, courtRecord->evidenceList, ewram, 0x20);
    DmaFill16(3, 0xFFFF, courtRecord->evidenceList, 0x20);
    courtRecord->evidenceCount = 0;
    for(i = 0; i < 0x20; i++)
    {
        if(ewram[i] != 0xFF)
        {
            courtRecord->evidenceList[courtRecord->evidenceCount] = ewram[i];
            courtRecord->evidenceCount++;
        }
    }
}

u32 GetQuestioningPresentedSection(u32 section, u32 evidenceId)
{
    const struct CourtPresentData * presentData;
    presentData = gCourtPresentData[gMain.scenarioIdx];
    for(; presentData->presentingSection != 0xFFFF; presentData++)
    {
        if(presentData->flagId != 0xFF)
        {
            if(!GetFlag(0, presentData->flagId))
                continue;
        }
        if(presentData->presentingSection == section && presentData->evidenceId == evidenceId)
        {
            if(presentData->action != 0)
                gScriptContext.slamDesk = FALSE;
            else
                gScriptContext.slamDesk = TRUE;
            return presentData->presentedSection;
        }
    }
    gScriptContext.slamDesk = FALSE;
    return 0;
}

u32 GetEvidenceCommentSection(struct Main * main, u32 evidenceId, bool8 isProfile) // unity tantei_show_check
{
    const struct InvestigationPresentData * presetData;
    u32 retVal;

    presetData = gInvestigationPresentData[main->scenarioIdx];
    retVal = presetData->uninterestedSection;
    
    for(; presetData->isProfile != 0xFF && presetData->roomId != main->currentRoomId; presetData++)
        ; // this loop has to be a for loop otherwise bad regalloc! :))))
    
    for(; presetData->roomId == main->currentRoomId; presetData++)
    {
        if(gAnimation[1].animationInfo.personId == presetData->personId
        && isProfile == presetData->isProfile
        && (main->unk25C[main->currentRoomId] == presetData->roomseq || presetData->roomseq == 0xFF))
        {
            if(evidenceId == presetData->evidenceId
            || presetData->evidenceId == 0xFF)
                return presetData->interestedSection;
            retVal = presetData->uninterestedSection;
        }
    }

    return retVal;
}

void UpdateItemPlate(struct Main * main)
{
    struct OamAttrs * oam = &gOamObjects[OAM_IDX_ITEMPLATE_ITEM];
    switch(main->itemPlateState)
    {
        case 0:
        default:
            break;
        case 1:
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            DmaCopy16(3, &gOamObjects[OAM_IDX_ITEMPLATE_ITEM], OAM+OAM_IDX_ITEMPLATE_ITEM*8, 0x8);
            if(main->itemPlateSide == 0)
                main->itemPlateAction = 4;
            else
                main->itemPlateAction = 6;
            main->itemPlateState++;
        case 2: // fallthrough
            DrawItemPlate(main);
            if(main->itemPlateAction == 2)
            {
                gBG1MapBuffer[GET_MAP_TILE_INDEX(1, 1, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(1, 2, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(2, 1, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(2, 2, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(1, 28, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(1, 27, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(2, 28, 0, 0)] = 0;
                gBG1MapBuffer[GET_MAP_TILE_INDEX(2, 27, 0, 0)] = 0;
                main->itemPlateState = 0;
            }
            break;
        case 3:
            LoadItemPlateGfx(main);
            if(main->itemPlateSide == 0)
            {
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(16, FALSE, FALSE, 3);
                main->itemPlateAction = 3;
            }
            else
            {
                oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 3);
                main->itemPlateAction = 5;
            }
            oam->attr0 = SPRITE_ATTR0_CLEAR;
            oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
            main->itemPlateState++;
        case 4: // fallthrough
            if(main->process[GAME_PROCESS] == SAVE_GAME_PROCESS)
            {
                main->itemPlateState = 6;
                return;
            }    
            DrawItemPlate(main);
            if(main->itemPlateAction == 1)
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
            
            if(main->process[GAME_PROCESS] >= COURT_RECORD_PROCESS)
            {
                int i;
                u16 * map;
                oam->attr0 = SPRITE_ATTR0_CLEAR;
                DmaCopy16(3, &gOamObjects[OAM_IDX_ITEMPLATE_ITEM], OAM+OAM_IDX_ITEMPLATE_ITEM*8, 0x8);
                map = gBG1MapBuffer;
                for(i = 0; i < 352; i++, map++)
                    *map = 0;
                main->itemPlateState++;
            }
            break;
        case 5:
            if(main->process[GAME_PROCESS] < COURT_RECORD_PROCESS)
            {
                LoadItemPlateGfx(main);
                oam->attr0 = SPRITE_ATTR0(16, ST_OAM_AFFINE_OFF, ST_OAM_OBJ_NORMAL, FALSE, ST_OAM_4BPP, ST_OAM_SQUARE);
                if(main->itemPlateSide == 0)
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(16, FALSE, FALSE, 3);
                else
                    oam->attr1 = SPRITE_ATTR1_NONAFFINE(160, FALSE, FALSE, 3);
                oam->attr2 = SPRITE_ATTR2(0x80, 0, 1);
                gIORegisters.lcd_dispcnt |= DISPCNT_BG0_ON;
                DrawItemPlate(main);
                main->itemPlateState = 4;
            }
            break;
        case 6:
            if(main->process[GAME_PROCESS] != SAVE_GAME_PROCESS)
                main->itemPlateState = 5;
            break;
    }
}

void LoadItemPlateGfx(struct Main * main)
{
    u32 offset;
    u8 * src;

    offset = gEvidenceProfileData[main->itemPlateEvidenceId].evidenceImageId * (TILE_SIZE_4BPP * 64 + 0x20);
    src = gGfxEvidenceProfilePictures + offset;
    DmaCopy16(3, src, OBJ_PLTT+0x20, 0x20);
    src = gGfxEvidenceProfilePictures + offset + 0x20;
    DmaCopy16(3, src, OBJ_VRAM0+0x1000, TILE_SIZE_4BPP * 64);
}

void sub_801355C(struct Main * main) {
    u16 * map = gBG1MapBuffer+32+1;
    u32 i;
    map++;
    for(i = 0; i < main->itemPlateSize+1; i++)
    {
        u32 j;
        for(j = 0; j < main->itemPlateSize; j++)
            *map++ = 0x38;
        map += (0x20 - main->itemPlateSize);
    }
    map = gBG1MapBuffer+32+1;
    *map++ = 0x30;
    for(i = 0; i < main->itemPlateSize; i++)
        *map++ = 0x31;
    *map++ = 0x32;
    map = gBG1MapBuffer+32+1; 
    map += main->itemPlateSize*32 + 32;
    *map++ = 0x35;
    for(i = 0; i < main->itemPlateSize; i++)
        *map++ = 0x36;
    *map++ = 0x37;
    map = gBG1MapBuffer+32+1;
    map += 32;
    for(i = 0; i < main->itemPlateSize; i++)
    {
        *map = 0x33;
        map[main->itemPlateSize+1] = 0x34;
        map += 32;
    }
}

void sub_801364C(struct Main * main) {
    u16 * map = gBG1MapBuffer+32+28;
    u32 i;
    map--;
    for(i = 0; i < main->itemPlateSize+1; i++)
    {
        u32 j;
        for(j = 0; j < main->itemPlateSize; j++)
            *map-- = 0x38;
        map += (0x20 + main->itemPlateSize);
    }
    map = gBG1MapBuffer+32+28;
    *map-- = 0x32;
    for(i = 0; i < main->itemPlateSize; i++)
        *map-- = 0x31;
    *map-- = 0x30;
    map = gBG1MapBuffer+32+28;
    map += main->itemPlateSize*32 + 32;
    *map-- = 0x37;
    for(i = 0; i < main->itemPlateSize; i++)
        *map-- = 0x36;
    *map-- = 0x35;
    map = gBG1MapBuffer+32+28;
    map += 32;
    for(i = 0; i < main->itemPlateSize; i++)
    {
        *map = 0x34;
        map[-main->itemPlateSize-1] = 0x33;
        map += 32;
    }
}

void DrawItemPlate(struct Main * main) // how did i match this
{
    u16 * map;
    u32 i;

    if(main->itemPlateAction > 2)
    {
        map = gBG1MapBuffer+32; // start at y 1
        for(i = 0; i < 0x140; i++, map++)
            *map = 0;
    }
    switch(main->itemPlateAction)
    {
        case 0:
            break;
        case 1:
            if(main->itemPlateSide != 0)
                sub_801364C(main);
            else
                sub_801355C(main);
            break;
        case 2:
        default:
            break;
        case 3:
        case 4:
            sub_801355C(main);
            break;
        case 5:
        case 6:
            sub_801364C(main);
            break;
    }
    main->itemPlateCounter++;
    if(main->itemPlateCounter > 0)
    {
        main->itemPlateCounter = 0;
        if(main->itemPlateAction == 4 || main->itemPlateAction == 6)
        {
            if(main->itemPlateSize > 0)
            {
                main->itemPlateSize--;
                return;
            }
            main->itemPlateAction = 2;
        }
        else
        {
            if(main->itemPlateSize < 8)
            {
                main->itemPlateSize++;
                return;
            }
            main->itemPlateAction = 1;
        }
    }
}
