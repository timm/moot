% Parents  (nfr3 dialect: <-- rules, soft bodies are edges)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ helpAndInformationBeAcquired,
    servicesBeFree,
    servicesBeFree1 ].
goals(soft) <--
  [ or([ highQualityService,
         easyAccessToPostReply,
         similarityWithOtherParentsProblems,
         privacy,
         patientCounselor,
         confidentialityServices,
         anonymityServices1,
         confidentialityService,
         decreasePhoneWaitingTime,
         supportAndBeSupportedByOtherParents,
         similarityWithOtherParentsProblems2,
         availabilityService,
         connectBackToTheCommunity1,
         goodParentingSkills,
         immediacyServices1,
         friendlyWebSite,
         availabilityServices,
         decreasePhoneWaitingTime2,
         anonymityServices,
         patientCounselor2,
         connectBackToTheCommunity,
         timelySupportAndInformation,
         friendlyWebSite2,
         immediacyServices,
         highQualityServices,
         easyAccessToPostReply2,
         getInformationAndSupportOnParentingProblems ]) ].
anonymityServices1 <-- [anonymityServices].
availabilityService <-- [availabilityServices].
confidentialityService <-- [confidentialityServices].
connectBackToTheCommunity <-- [connectBackToTheCommunity1].
decreasePhoneWaitingTime2 <-- [decreasePhoneWaitingTime].
easyAccessToPostReply2 <-- [easyAccessToPostReply].
feedback <-- [provideFeedback].
friendlyWebSite <-- [friendlyWebSite2].
helpAndInformationBeAcquired <-- [useToolToTalkToOtherParents].
helpAndInformationBeAcquired <-- [usePhoneCounselling].
helpAndInformationBeAcquired <-- [useInformationSection].
helpAndInformationBeAcquired <-- [useBulletinBoardWithReplies].
highQualityService <-- [highQualityServices].
immediacyServices1 <-- [immediacyServices].
parentsUseBulletinBoardWithReplies <-- [useBulletinBoardWithReplies].
parentsUseInformationSection <-- [useInformationSection].
parentsUsePhoneCounselling <-- [usePhoneCounselling].
parentsUseServiceToTalkToEachOther <-- [useToolToTalkToOtherParents].
patientCounselor2 <-- [patientCounselor].
phoneLibraryOfRecordedMessages1 <-- [phoneLibraryOfRecordedMessages].
servicesBeFree1 <-- [servicesBeFree].
similarityWithOtherParentsProblems2 <--
  [ similarityWithOtherParentsProblems ].
useBulletinBoardWithReplies <-- [maintainBulletinBoardWithReplies].
useInformationSection <-- [implementInformationSection].
usePhoneCounselling <-- [maintainPHLPhoneServices].
useToolToTalkToOtherParents <--
  [ implementNToolToAllowParentsToTalkToEachOther ].
getInformationAndSupportOnParentingProblems <--
  [ helps(friendlyWebSite),
    helps(servicesBeFree1),
    helps(availabilityService),
    helps(easyAccessToPostReply2),
    helps(supportAndBeSupportedByOtherParents),
    helps(patientCounselor2),
    helps(highQualityService),
    helps(helpAndInformationBeAcquired),
    helps(connectBackToTheCommunity) ].
goodParentingSkills <--
  [ helps(getInformationAndSupportOnParentingProblems) ].
privacy <--
  [ helps(confidentialityService),
    helps(anonymityServices1),
    hurts(provideFeedback) ].
supportAndBeSupportedByOtherParents <--
  [ helps(similarityWithOtherParentsProblems2),
    helps(phoneLibraryOfRecordedMessages1) ].
timelySupportAndInformation <-- [helps(decreasePhoneWaitingTime2)].
