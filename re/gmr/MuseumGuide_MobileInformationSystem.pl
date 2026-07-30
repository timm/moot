% MuseumGuide_MobileInformationSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ vGetsInfoThroughMStaffS,
    sIsAlerted,
    sGivesPInfoToV,
    sIsAlertedThroughSSPDA,
    sIsAlertedThroughPublicCall,
    sGivesPInfoToVInPerson,
    sGivesPInfoToVByCall,
    visitorIsAssisted,
    visitorVFollowsMuseumMProcessAndRules,
    vAccomplishesRegistration,
    vIsOutOfMuseumByClosingTime,
    visitorVGetsInformedAboutAPieceOfArtPInMuseumM,
    vGetsInfoViaTerminalT,
    vGetsInfoViaHisHerPDA,
    vGetsInforThroughMStaffS,
    vIsNotifiedForTheServiceThroughVSPDA,
    vArrivesToT,
    vKnowHowToUseT,
    pInfoSuitableToVIsPrepared,
    pInfoIsPresentedToV ].
goals(soft) <--
  [ or([ calmMuseum,
         visitorWellInformed,
         staffIsMoreComfortable ]) ].
directSToVPlace <-- [showVPicture, directSToVPlace2].
pInfoIsPresentedToV <-- [pInfoIsPresentedToVViaVideo].
pInfoIsPresentedToV <-- [vInfoIsPresentedToVInteractively].
pInfoSuitableToVIsPrepared <-- [preparePDetailedInformation].
pInfoSuitableToVIsPrepared <-- [preparePBriefSimpleInformation].
sGivesPInfoToV <-- [sGivesPInfoToVInPerson].
sGivesPInfoToV <-- [sGivesPInfoToVByCall].
sGivesPInfoToVByCall <-- [makeVideoCallBetweenSAndV].
sGivesPInfoToVByCall <-- [makeVoiceCallBetweenSAndV].
sGivesPInfoToVInPerson <-- [directSToVPlace].
sIsAlerted <-- [sIsAlertedThroughSSPDA].
sIsAlerted <-- [sIsAlertedThroughPublicCall].
sIsAlertedThroughPublicCall <--
  [ makeACallThroughSpeakersInSCurrentRoom ].
sIsAlertedThroughSSPDA <-- [sIsAlertedViaRingingToneAndSMS].
sIsAlertedThroughSSPDA <-- [sendSAVoiceCommand].
vArrivesToT <-- [directVToTPlace].
vGetsInfoThroughMStaffS <-- [sIsAlerted, sGivesPInfoToV].
vGetsInfoViaHisHerPDA <--
  [ pInfoSuitableToVIsPrepared,
    pInfoIsPresentedToV ].
vGetsInfoViaTerminalT <--
  [ vKnowHowToUseT,
    vArrivesToT,
    vIsNotifiedForTheServiceThroughVSPDA ].
vGetsInforThroughMStaffS <-- [information].
vIsNotifiedForTheServiceThroughVSPDA <--
  [ alertVViaPDAVibrationAndSMS ].
vIsNotifiedForTheServiceThroughVSPDA <-- [sendVAVoiceCommand].
vIsOutOfMuseumByClosingTime <--
  [ vIsNotifiedToNotEnter,
    vIsNotifiedToGetOut ].
vKnowHowToUseT <-- [showDemoToVHowToUseT].
visitorIsAssisted <--
  [ visitorVFollowsMuseumMProcessAndRules,
    visitorVGetsInformedAboutAPieceOfArtPInMuseumM ].
visitorVFollowsMuseumMProcessAndRules <--
  [ vAccomplishesRegistration,
    vIsOutOfMuseumByClosingTime ].
visitorVGetsInformedAboutAPieceOfArtPInMuseumM <--
  [ vGetsInfoViaTerminalT ].
visitorVGetsInformedAboutAPieceOfArtPInMuseumM <--
  [ vGetsInfoViaHisHerPDA ].
visitorVGetsInformedAboutAPieceOfArtPInMuseumM <--
  [ vGetsInforThroughMStaffS ].
calmMuseum <--
  [ helps(sendSAVoiceCommand),
    hurts(sIsAlertedViaRingingToneAndSMS),
    hurts(makeACallThroughSpeakersInSCurrentRoom) ].
staffIsMoreComfortable <-- [helps(sGivesPInfoToVInPerson)].
visitorWellInformed <--
  [ helps(sGivesPInfoToVInPerson),
    hurts(sGivesPInfoToVByCall) ].
