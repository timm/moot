% Kids and Youth  (nfr3 dialect: <-- rules, soft bodies are edges)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ helpBeAcquired,
    servicesBeFree,
    informationBeAcquiredOnWebsite,
    servicesBeFree1,
    beInformedOfServiceAnonymity ].
goals(soft) <--
  [ or([ getEffectiveHelp,
         safetyOfServiceUsage,
         highQualityService,
         ownershipOfServiceKids,
         easyAccessToPostReply,
         ventEmotions,
         privacy,
         patientCounselor,
         confidentialityServices,
         decreasePhoneWaitingTime,
         confidentialityService,
         childrenDecideWhenToHangUpAndCall,
         friendlyWebSite1,
         highQualityServices,
         availabilityService,
         connectBackToTheCommunity1,
         anonymityService,
         immediacyService,
         similarityWithOtherKidsProblems,
         supportAndBeSupportedByOtherKids,
         similarityWithOtherKidsProblems1,
         ownershipOfServicesKids,
         availabilityServices,
         decreasePhoneWaitingTime1,
         anonymityServices,
         effectiveHelpInCrisis,
         effectiveHelpInNonCrisisSituation,
         connectBackToTheCommunity,
         connectWithOtherKids1,
         friendlyWebSite,
         immediacyServices,
         patientCounselor1,
         easyAccessToPostReply1,
         comfortablenessWithService,
         connectWithOtherKids ]) ].
anonymityService <-- [anonymityServices].
availabilityService <-- [availabilityServices].
confidentialityService <-- [confidentialityServices].
connectBackToTheCommunity <-- [connectBackToTheCommunity1].
connectWithOtherKids <-- [connectWithOtherKids1].
decreasePhoneWaitingTime <-- [decreasePhoneWaitingTime1].
easyAccessToPostReply <-- [easyAccessToPostReply1].
feedback <-- [provideFeedback].
friendlyWebSite <-- [friendlyWebSite1].
helpBeAcquired <-- [useAskACounsellorSection].
helpBeAcquired <-- [useCyberCafPortalChatRoom].
helpBeAcquired <-- [usePhoneCounselling].
helpBeAcquired <-- [useVideoCounselling].
helpBeAcquired <-- [useEmailCounselling].
helpBeAcquired <-- [useVoiceCounselling].
helpBeAcquired <-- [useTextMessaging].
helpBeAcquired <-- [useOneOnOneChatRooms].
highQualityService <-- [highQualityServices].
immediacyService <-- [immediacyServices].
informKidsAboutAnonymityOfService <-- [beInformedOfServiceAnonymity].
informationBeAcquiredOnWebsite <-- [readPollsAboutKids].
informationBeAcquiredOnWebsite <-- [readGeneralQuestionsAndAnswers].
informationBeAcquiredOnWebsite <-- [readGetInformedSectionOfWebSite].
kidsReadGeneralQuestionsAndAnswers <--
  [ readGeneralQuestionsAndAnswers ].
kidsReadPollsAboutKids <-- [readPollsAboutKids].
kidsUseAskACounsellorSection <-- [useAskACounsellorSection].
kidsUseBulletinBoardWithReplies <-- [useBulletinBoardWithReplies].
kidsUseCyberCafPortalChatRoom <-- [useCyberCafPortalChatRoom].
kidsUseEmailCounselling <-- [useEmailCounselling].
kidsUseGetInformedSectionOfWebSite <--
  [ readGetInformedSectionOfWebSite ].
kidsUseOneOnOneChatRooms <-- [useOneOnOneChatRooms].
kidsUsePhoneCounselling <-- [usePhoneCounselling].
kidsUseTextMessaging <-- [useTextMessaging].
kidsUseVideoCounselling <-- [useVideoCounselling].
kidsUseVoiceCounselling <-- [useVoiceCounselling].
ownershipOfServiceKids <-- [ownershipOfServicesKids].
patientCounselor1 <-- [patientCounselor].
readGeneralQuestionsAndAnswers <--
  [ implementGeneralQuestionsAndAnswers ].
readGetInformedSectionOfWebSite <--
  [ maintainGetInformedSectionOfWebSite ].
readPollsAboutKids <-- [implementPollsAboutKids].
servicesBeFree <-- [servicesBeFree1].
similarityWithOtherKidsProblems1 <--
  [ similarityWithOtherKidsProblems ].
useAskACounsellorSection <-- [maintainAskACounsellorSection].
useBulletinBoardWithReplies <-- [implementBulletinBoardWithReplies].
useCyberCafPortalChatRoom <-- [implementCyberCafPortalChatRoom].
useEmailCounselling <-- [implementEmailCounselling].
useOneOnOneChatRooms <-- [implementOneOnOneChatRooms].
usePhoneCounselling <-- [maintainPhoneCounselling].
useTextMessaging <-- [implementTextMessaging].
useVideoCounselling <-- [implementVideoCounselling].
useVoiceCounselling <-- [implementVoiceCounselling].
childrenDecideWhenToHangUpAndCall <-- [makes(ownershipOfServiceKids)].
comfortablenessWithService <--
  [ helps(ownershipOfServiceKids),
    helps(supportAndBeSupportedByOtherKids),
    helps(servicesBeFree1),
    helps(anonymityService),
    helps(similarityWithOtherKidsProblems1),
    helps(beInformedOfServiceAnonymity),
    hurts(provideFeedback),
    helps(confidentialityService),
    helps(patientCounselor1) ].
effectiveHelpInCrisis <--
  [ helps(decreasePhoneWaitingTime),
    helps(immediacyService) ].
effectiveHelpInNonCrisisSituation <-- [helps(immediacyService)].
getEffectiveHelp <--
  [ helps(patientCounselor1),
    helps(effectiveHelpInCrisis),
    helps(highQualityService),
    helps(availabilityService),
    helps(easyAccessToPostReply),
    helps(friendlyWebSite),
    helps(ventEmotions),
    helps(effectiveHelpInNonCrisisSituation) ].
privacy <--
  [ hurts(provideFeedback),
    helps(childrenDecideWhenToHangUpAndCall),
    helps(confidentialityService),
    helps(anonymityService) ].
safetyOfServiceUsage <--
  [ helps(confidentialityService),
    helps(anonymityService),
    helps(immediacyService) ].
supportAndBeSupportedByOtherKids <-- [helps(connectWithOtherKids)].
ventEmotions <-- [helps(patientCounselor1)].
