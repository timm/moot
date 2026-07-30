% YouthCounsellingService  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ provideOnlineCounselling,
    helpBeAcquired,
    provideCounselling ].
goals(soft) <--
  [ or([ happiness,
         socialAnxiety,
         highQualityCounselling,
         listenForCues,
         issuesOfGuiltShame,
         getEffectiveHelp,
         dataVisibility,
         immediacyService,
         anonymityService,
         comfortablenessWithService,
         helpKids,
         scandal,
         highQualityCounselling2,
         immediacy,
         anonymity,
         highQualityCounselling3,
         highQualityCounselling4 ]) ].
cybercafePortalChatroom <-- [kidsUseCybercafePortalChatroom2].
helpBeAcquired <-- [kidsUseCybercafePortalChatroom2].
helpBeAcquired <-- [textMessaging2].
highQualityCounselling3 <-- [highQualityCounselling4].
highQualityCounselling4 <-- [highQualityCounselling].
kidsUseCybercafePortal <-- [cybercafePortalChatroom].
provideCounselling <-- [textMessaging3].
provideCounselling <-- [kidsUseCybercafePortal].
provideCounsellingViaTextMessaging <-- [textMessaging].
provideOnlineCounselling <-- [kidsUseCybercafePortalChatroom].
textMessaging3 <-- [provideCounsellingViaTextMessaging].
anonymity <-- [hurts(kidsUseCybercafePortal)].
anonymityService <-- [helps(textMessaging2)].
comfortablenessWithService <-- [helps(textMessaging2)].
dataVisibility <-- [helps(anonymityService)].
getEffectiveHelp <--
  [ helps(comfortablenessWithService),
    helps(immediacyService),
    helps(anonymityService) ].
happiness <-- [helps(listenForCues), helps(highQualityCounselling)].
helpKids <-- [helps(highQualityCounselling2), helps(immediacy)].
highQualityCounselling <-- [helps(listenForCues)].
highQualityCounselling2 <--
  [ breaks(textMessaging3),
    hurts(kidsUseCybercafePortal),
    makes(highQualityCounselling3) ].
immediacy <-- [helps(kidsUseCybercafePortal), hurts(textMessaging3)].
immediacyService <--
  [ hurts(textMessaging2),
    makes(kidsUseCybercafePortalChatroom2) ].
issuesOfGuiltShame <--
  [ hurts(textMessaging),
    makes(kidsUseCybercafePortalChatroom) ].
listenForCues <--
  [ breaks(textMessaging),
    hurts(kidsUseCybercafePortalChatroom) ].
scandal <-- [helps(anonymity)].
socialAnxiety <-- [helps(issuesOfGuiltShame), hurts(listenForCues)].
