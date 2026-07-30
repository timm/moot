% SmartHomeSecuritySystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ secureHomeProvided,
    intrudersDisuaded,
    intrudersDetected,
    intrudersOusted,
    helpAsked,
    intrudersDetectedAtHome,
    intrudersDetectedInExternalPerimeter,
    accessControled,
    threatsResolved,
    toHaveSentinelSystem,
    internetConnection,
    gsm,
    gprs,
    x3g,
    securityThreatsIndentified,
    secureAtHome,
    notUnauthorizedPeopleInMyProperty,
    doorAccessControlled,
    guardedInteriorOfTheHouse,
    toHaveAnEmergencyCallSystem,
    guardedExternalPerimeter,
    oustIntruders,
    toHaveAPhotodetector,
    toHaveAShocksensor,
    toHaveSecurityCameras,
    toHaveABlockVisionIntruderSystem,
    toHaveAnAlarmSystem,
    toHaveAnIntruderNotificationSystem,
    toHavePerimetalDetectors,
    connectivityProvided,
    gsm2,
    gprs2,
    x3g2,
    authoritiesNotified ].
goals(soft) <--
  [ or([ faultTolerance,
         trusted,
         quickness,
         reliability,
         quickness2,
         easyToUse,
         nonIntrusive,
         privacy,
         cheap,
         lowOpEx ]) ].
accessCode <-- [useAccessCode].
accessControled <-- [useRemoteControl].
accessControled <-- [useAccessCode].
accessControled <-- [useIntelligenKeyChain].
alarmSystem <-- [raiseAlarm].
askHelpInControlPanel <-- [controlPanel].
askHelpUsingMobilePhone <-- [mobileApp].
authoritiesNotified <-- [securityThreatsIndentified].
blockIntruderVisionSystem <-- [blockIntruderVision].
cameraRecords <-- [useSecurityCamera].
connectivityProvided <-- [gsm2].
connectivityProvided <-- [gprs2].
connectivityProvided <-- [x3g2].
controlPanel <-- [askForHelpInControlPanel].
decideActionsToTake <-- [resetSystem, notifyAuthorities, contactUser].
doorAccessControlled <-- [useRemoteControl2].
doorAccessControlled <-- [useIntelligentKeyChain].
doorAccessControlled <-- [useAccessCode2].
gprs <-- [gprsConnection].
gprsConnection <-- [gprs2].
gsm <-- [gsmConnection].
gsmConnection <-- [gsm2].
guardedExternalPerimeter <-- [toHaveSecurityCameras].
guardedExternalPerimeter <-- [toHavePerimetalDetectors].
guardedInteriorOfTheHouse <-- [toHaveAPhotodetector].
guardedInteriorOfTheHouse <-- [toHaveAShocksensor].
guardedInteriorOfTheHouse <-- [toHaveSecurityCameras].
helpAsked <-- [askForHelpInControlPanel].
helpAsked <-- [askForHelpInMobileApp].
infrarredRecords <-- [usePhotodetector].
intelligentKeyChain <-- [useIntelligenKeyChain].
internetConnection <-- [gsm].
internetConnection <-- [gprs].
internetConnection <-- [x3g].
intrudersDetected <--
  [ intrudersDetectedAtHome,
    intrudersDetectedInExternalPerimeter ].
intrudersDetectedAtHome <-- [usePhotodetector].
intrudersDetectedAtHome <-- [useShocksensor].
intrudersDetectedAtHome <-- [useSecurityCamera].
intrudersDetectedInExternalPerimeter <-- [useSecurityCamera].
intrudersDetectedInExternalPerimeter <-- [usePerimetralDetector].
intrudersDisuaded <-- [installDeterrentPoster].
intrudersOusted <-- [blockIntruderVision].
intrudersOusted <-- [notifyIntruders].
intrudersOusted <-- [raiseAlarm].
mobileApp <-- [askForHelpInMobileApp].
notUnauthorizedPeopleInMyProperty <--
  [ doorAccessControlled,
    guardedInteriorOfTheHouse,
    guardedExternalPerimeter,
    oustIntruders ].
notifyIntruders2 <-- [notifyIntruders].
oustIntruders <-- [toHaveABlockVisionIntruderSystem].
oustIntruders <-- [toHaveAnAlarmSystem].
oustIntruders <-- [toHaveAnIntruderNotificationSystem].
perimetalDetector <-- [usePerimetralDetector].
photodetector <-- [usePhotodetector].
receiveCameraRecords <-- [cameraRecords].
receiveInformationFromAlarmSystem <-- [receiveCameraRecords].
receiveInformationFromAlarmSystem <-- [receiveInfrarredRecords].
receiveInfrarredRecords <-- [infrarredRecords].
remoteControl <-- [useRemoteControl].
secureAtHome <--
  [ notUnauthorizedPeopleInMyProperty,
    toHaveAnEmergencyCallSystem ].
secureHomeProvided <--
  [ intrudersDisuaded,
    intrudersDetected,
    intrudersOusted,
    helpAsked,
    accessControled ].
securityCamera <-- [useSecurityCamera].
securityThreatsIndentified <--
  [ receiveInformationFromAlarmSystem,
    analyzeInformationFromAlarmSystem,
    decideActionsToTake ].
shocksensor <-- [useShocksensor].
threatsResolved <-- [authoritiesNotified].
toHaveABlockVisionIntruderSystem <-- [blockIntruderVisionSystem].
toHaveAPhotodetector <-- [photodetector].
toHaveAShocksensor <-- [shocksensor].
toHaveAnAlarmSystem <-- [alarmSystem].
toHaveAnEmergencyCallSystem <-- [askHelpUsingMobilePhone].
toHaveAnEmergencyCallSystem <-- [askHelpInControlPanel].
toHaveAnIntruderNotificationSystem <-- [notifyIntruders2].
toHavePerimetalDetectors <-- [perimetalDetector].
toHaveSecurityCameras <-- [securityCamera].
useAccessCode2 <-- [accessCode].
useIntelligentKeyChain <-- [intelligentKeyChain].
useRemoteControl2 <-- [remoteControl].
x3g <-- [x3gConnection].
x3gConnection <-- [x3g2].
cheap <--
  [ hurts(useIntelligentKeyChain),
    helps(useAccessCode2),
    hurts(useRemoteControl2),
    breaks(toHaveAShocksensor),
    hurts(toHaveSecurityCameras),
    breaks(toHaveABlockVisionIntruderSystem),
    hurts(toHaveAnAlarmSystem),
    helps(toHaveAnIntruderNotificationSystem),
    breaks(toHavePerimetalDetectors) ].
easyToUse <--
  [ makes(useIntelligentKeyChain),
    helps(useRemoteControl2),
    hurts(useAccessCode2) ].
faultTolerance <-- [helps(toHaveSentinelSystem)].
lowOpEx <-- [makes(gsm2), helps(gprs2), hurts(x3g2)].
nonIntrusive <--
  [ hurts(useAccessCode2),
    helps(useRemoteControl2),
    makes(toHaveAShocksensor),
    breaks(toHaveSecurityCameras),
    hurts(toHaveAnIntruderNotificationSystem),
    hurts(toHavePerimetalDetectors) ].
privacy <--
  [ hurts(useIntelligentKeyChain),
    helps(useAccessCode2),
    hurts(useRemoteControl2),
    breaks(toHaveSecurityCameras) ].
quickness <--
  [ makes(x3g),
    helps(gprs),
    hurts(gsm),
    makes(useShocksensor),
    makes(askForHelpInControlPanel),
    helps(askForHelpInMobileApp) ].
quickness2 <--
  [ makes(receiveInfrarredRecords),
    helps(receiveCameraRecords) ].
reliability <--
  [ makes(receiveCameraRecords),
    helps(receiveInfrarredRecords) ].
trusted <--
  [ makes(blockIntruderVision),
    makes(useSecurityCamera),
    helps(usePhotodetector) ].
