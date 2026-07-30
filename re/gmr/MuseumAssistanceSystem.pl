% MuseumAssistanceSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ visitorVGetsInformedAboutPieceOfArtPInMuseumM,
    vGetsInfoViaTerminalT,
    vGetsInfoViaHisHerPDA,
    vGetsInforThroughMServiceStaffS,
    vIsNotifiedForTheServiceThroughVSPDA,
    vArrivesToT,
    vKnowsHowToUseT,
    pInfoSuitableToVIsPrepared,
    pInfoIsPresentedToV,
    vGetsInfoThroughMServiceStaffS,
    sIsAlerted,
    sGivesPInfoToV,
    sIsAlertedThroughSSPDA,
    sIsAlertedThroughPublicCall,
    sGivesPInfoToVInPerson,
    sGivesPInfoToVByCall,
    provideInfoOnP ].
goals(soft) <--
  [ or([ visitorWellInformed,
         staffIsMoreComfortable ]) ].
directSToVPlace <-- [showVPicture, directSToVPlace2].
pInfoIsPresentedToV <-- [pInfoIsPresentedToVViaVideo].
pInfoIsPresentedToV <-- [vInfoIsPresentedToVInteractively].
pInfoSuitableToVIsPrepared <-- [preparePDetailedInfromation].
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
sIsAlertedThroughSSPDA <-- [alertSViaPDAVibrationAndSMS].
sIsAlertedThroughSSPDA <-- [sendSAVoiceCommand].
sIsAlertedThroughSSPDA <-- [sIsAlertedViaRingingToneAndSMS].
vArrivesToT <-- [directVToTPlace].
vGetsInfoThroughMServiceStaffS <-- [sIsAlerted, sGivesPInfoToV].
vGetsInfoViaHisHerPDA <--
  [ pInfoSuitableToVIsPrepared,
    pInfoIsPresentedToV ].
vGetsInfoViaTerminalT <--
  [ vIsNotifiedForTheServiceThroughVSPDA,
    vArrivesToT,
    vKnowsHowToUseT ].
vGetsInforThroughMServiceStaffS <-- [provideInfoOnP].
vIsNotifiedForTheServiceThroughVSPDA <-- [sendVAVoiceCommand].
vIsNotifiedForTheServiceThroughVSPDA <--
  [ alertVViaPDAVibrationAndSMS ].
vKnowsHowToUseT <-- [showDemoToVHowToUseT].
visitorVGetsInformedAboutPieceOfArtPInMuseumM <--
  [ vGetsInfoViaHisHerPDA ].
visitorVGetsInformedAboutPieceOfArtPInMuseumM <--
  [ vGetsInforThroughMServiceStaffS ].
visitorVGetsInformedAboutPieceOfArtPInMuseumM <--
  [ vGetsInfoViaTerminalT ].
staffIsMoreComfortable <--
  [ helps(sGivesPInfoToVInPerson),
    helps(sGivesPInfoToVByCall) ].
visitorWellInformed <--
  [ helps(sGivesPInfoToVInPerson),
    hurts(sGivesPInfoToVByCall) ].
