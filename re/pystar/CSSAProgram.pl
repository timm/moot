% CSSAProgram  (nfr3 dialect: <-- rules, soft bodies are edges)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ communityServiceHoursCompleted,
    communityServiceHoursCompleted2,
    permissionForPresentationsBeGiven,
    kidsBeUsedToCommunicateWithOtherKids,
    presenationBeInitiated,
    communityServiceHoursCompleted1 ].
goals(soft) <--
  [ or([ acquireVolunteerOutreachSkills1,
         experienceForResume,
         improveImageToKids1,
         acquirePublicSpeakingSkills1,
         increasedSAResources,
         acquireFundraisingSkills,
         increaseInvolvementOfSAS,
         makeNewFriends1,
         increaseSkills,
         trustOfKids,
         acquireFundraisingSkills2,
         createLifeLongVolunteerSpirit,
         saSAreOrganized1,
         expansionOfSAServices,
         createLifeLongVolunteerSpirit1,
         beConfident,
         increasedSAResources1,
         saSAreOutgoing1,
         saSAreOrganized,
         happinessStudentAmbassadors,
         keepInTouchWithVolunteers,
         beEnthusiastic,
         haveTimeForSchool2,
         improveImageToKids,
         positiveReputationCS,
         haveTimeForSchool1,
         spreadAwareness1,
         trustOfKids1,
         acquireVolunteerOutreachSkills,
         saSAreOutgoing,
         happinessStudentAmbassadors2,
         beOutgoing,
         acquirePublicSpeakingSkills,
         saSAreConfident1,
         morePromotionResourcesAvailable,
         saSAreConfident,
         haveTimeForSchool,
         giveBackToCommunity2,
         increaseWritingSkills,
         increaseWritingSkills1,
         giveBackToCommunity1,
         increaseWritingSkills2,
         spreadAwareness,
         reduceMisconceptions,
         beOrganized,
         makeNewFriends,
         qualitySAServices1,
         engagementStudentAmbassadorsInPromotingAwareness,
         acquireFundraisingSkills1,
         saSAreEnthusiastic1,
         qualitySAServices,
         happinessStudentAmbassadors1,
         engageVolunteers,
         giveBackToCommunity,
         acquireVolunteerOutreachSkills2,
         highPresentationAttendance,
         acquirePublicSpeakingSkills2,
         positiveReputationCS1,
         makeNewFriends2,
         reduceMisconceptions1,
         saSAreEnthusiastic ]) ].
acquireFundraisingSkills <-- [acquireFundraisingSkills1].
acquireFundraisingSkills1 <-- [acquireFundraisingSkills2].
acquirePublicSpeakingSkills <-- [acquirePublicSpeakingSkills1].
acquirePublicSpeakingSkills1 <-- [acquirePublicSpeakingSkills2].
acquireVolunteerOutreachSkills <-- [acquireVolunteerOutreachSkills1].
acquireVolunteerOutreachSkills1 <-- [acquireVolunteerOutreachSkills2].
askForHelpWithPresentations <-- [findHelpWithPresentations].
communityServiceHoursCompleted <-- [communityServiceHoursCompleted1].
communityServiceHoursCompleted1 <-- [writeArticlesForNewspaper].
communityServiceHoursCompleted1 <-- [attendCSMeetings].
communityServiceHoursCompleted1 <-- [attendSAMeetings].
communityServiceHoursCompleted1 <-- [giveCSPresentations1].
communityServiceHoursCompleted1 <-- [helpPutOnSATrainingConferences].
communityServiceHoursCompleted1 <-- [runFundraiserInSchools1].
communityServiceHoursCompleted1 <--
  [ helpPlanAndPutOnReconnectionConferences ].
communityServiceHoursCompleted1 <-- [speakAtFundraisers].
communityServiceHoursCompleted2 <-- [communityServiceHoursCompleted].
createLifeLongVolunteerSpirit <-- [createLifeLongVolunteerSpirit1].
engagementStudentAmbassadorsInPromotingAwareness <--
  [ spreadAwareness ].
findHelpWithPresentations <-- [findHelpWithPresentations1].
findHelpWithPresentations1 <--
  [ helpWithPresentations1,
    sendOutEmails ].
getPromotionResources <-- [promotionResources].
getSpeaches <-- [speaches].
giveBackToCommunity <-- [giveBackToCommunity1].
giveBackToCommunity1 <-- [giveBackToCommunity2].
giveCSPresentations <-- [giveCSPresentations1].
giveCSPresentations1 <-- [presenationBeInitiated].
giveCSPresentations1 <-- [askForHelpWithPresentations].
giveCSPresentations1 <-- [getPromotionResources].
giveCSPresentations2 <-- [giveCSPresentations].
giveCSPresentations3 <-- [giveCSPresentations2].
happinessStudentAmbassadors <-- [happinessStudentAmbassadors1].
happinessStudentAmbassadors1 <-- [happinessStudentAmbassadors2].
haveTimeForSchool <-- [haveTimeForSchool1].
haveTimeForSchool1 <-- [haveTimeForSchool2].
helpPlanAndPutOnReconnectionConferences <-- [retrainSAS].
helpPlanAndPutOnReconnectionConferences1 <--
  [ helpPlanAndPutOnReconnectionConferences ].
helpPutOnSATrainingConferences <-- [trainSAS].
helpPutOnSATrainingConferences1 <-- [helpPutOnSATrainingConferences].
helpWithPresentations1 <-- [helpWithPresentations].
improveImageToKids <-- [improveImageToKids1].
increaseWritingSkills <-- [increaseWritingSkills1].
increaseWritingSkills1 <-- [increaseWritingSkills2].
increasedSAResources <-- [increasedSAResources1].
initiatePresentationWithSchools <--
  [ permissionForPresentationsBeGiven ].
makeNewFriends <-- [makeNewFriends1].
makeNewFriends1 <-- [makeNewFriends2].
planAndPutOnReconnectionConferences <--
  [ planAndPutOnReconnectionConferences1 ].
planAndPutOnReconnectionConferences1 <--
  [ planAndPutOnReconnectionConferences2 ].
planAndPutOnReconnectionConferences2 <--
  [ helpPlanAndPutOnReconnectionConferences1 ].
positiveReputationCS <-- [positiveReputationCS1].
presenationBeInitiated <-- [initiatePresentationWithSchools].
presenationBeInitiated <-- [schoolInitiatesPresenation].
promotionResources <-- [providePromotionResources].
providePromotionResources <-- [promotionResources1].
putOnSATrainingConferences <-- [putOnSATrainingConferences1].
putOnSATrainingConferences1 <-- [putOnSATrainingConferences2].
putOnSATrainingConferences2 <-- [helpPutOnSATrainingConferences1].
qualitySAServices <-- [qualitySAServices1].
reduceMisconceptions <-- [reduceMisconceptions1].
runFundraiserInSchools <-- [runFundraiserInSchools1].
runFundraiserInSchools2 <-- [runFundraiserInSchools].
saSAreConfident <-- [saSAreConfident1].
saSAreConfident1 <-- [beConfident].
saSAreEnthusiastic <-- [saSAreEnthusiastic1].
saSAreEnthusiastic1 <-- [beEnthusiastic].
saSAreOrganized <-- [saSAreOrganized1].
saSAreOrganized1 <-- [beOrganized].
saSAreOutgoing <-- [saSAreOutgoing1].
saSAreOutgoing1 <-- [beOutgoing].
schoolInitiatesPresenation <-- [schoolInitiatesPresenation1].
sendOutEmails1 <-- [sendOutEmails].
sendOutEmails2 <-- [sendOutEmails1].
speaches <-- [provideSpeaches].
speakAtFundraisers <-- [askForHelpWithPresentations].
speakAtFundraisers1 <-- [speakAtFundraisers2].
speakAtFundraisers2 <-- [speakAtFundraisers].
speakAtFundraisers3 <-- [speakAtFundraisers1].
spreadAwareness1 <-- [spreadAwareness].
trustOfKids <-- [trustOfKids1].
writeArticlesForNewspaper1 <-- [writeArticlesForNewspaper2].
writeArticlesForNewspaper2 <-- [writeArticlesForNewspaper].
acquireFundraisingSkills2 <--
  [ helps(runFundraiserInSchools1),
    helps(attendCSMeetings),
    helps(retrainSAS),
    helps(trainSAS),
    helps(speakAtFundraisers) ].
acquirePublicSpeakingSkills2 <--
  [ helps(giveCSPresentations1),
    helps(retrainSAS),
    helps(speakAtFundraisers),
    helps(trainSAS),
    helps(runFundraiserInSchools1),
    helps(helpPlanAndPutOnReconnectionConferences) ].
acquireVolunteerOutreachSkills2 <--
  [ helps(runFundraiserInSchools1),
    helps(trainSAS),
    helps(retrainSAS),
    helps(attendCSMeetings),
    helps(helpPlanAndPutOnReconnectionConferences),
    helps(giveCSPresentations1) ].
beConfident <--
  [ helps(acquireVolunteerOutreachSkills),
    helps(acquirePublicSpeakingSkills) ].
beEnthusiastic <--
  [ helps(acquireVolunteerOutreachSkills),
    helps(acquirePublicSpeakingSkills),
    helps(acquireFundraisingSkills) ].
beOrganized <-- [helps(acquireFundraisingSkills)].
beOutgoing <--
  [ helps(acquireVolunteerOutreachSkills),
    helps(acquireFundraisingSkills),
    helps(acquirePublicSpeakingSkills) ].
createLifeLongVolunteerSpirit1 <-- [helps(engageVolunteers)].
engageVolunteers <--
  [ helps(putOnSATrainingConferences),
    helps(saSAreEnthusiastic),
    helps(morePromotionResourcesAvailable),
    helps(happinessStudentAmbassadors),
    helps(qualitySAServices1),
    helps(positiveReputationCS) ].
expansionOfSAServices <--
  [ helps(highPresentationAttendance),
    helps(increaseInvolvementOfSAS),
    helps(spreadAwareness),
    helps(engageVolunteers) ].
experienceForResume <-- [helps(increaseSkills)].
giveBackToCommunity2 <--
  [ helps(helpWithPresentations),
    helps(runFundraiserInSchools1),
    helps(speakAtFundraisers),
    helps(giveCSPresentations1) ].
happinessStudentAmbassadors2 <--
  [ helps(increaseSkills),
    helps(makeNewFriends),
    helps(experienceForResume),
    helps(haveTimeForSchool),
    helps(giveBackToCommunity),
    helps(communityServiceHoursCompleted2) ].
haveTimeForSchool2 <-- [hurts(communityServiceHoursCompleted1)].
highPresentationAttendance <-- [helps(positiveReputationCS)].
improveImageToKids1 <-- [helps(kidsBeUsedToCommunicateWithOtherKids)].
increaseInvolvementOfSAS <--
  [ helps(keepInTouchWithVolunteers),
    helps(planAndPutOnReconnectionConferences),
    helps(happinessStudentAmbassadors) ].
increaseSkills <-- [helps(beOrganized), helps(beConfident)].
increaseWritingSkills2 <-- [helps(writeArticlesForNewspaper)].
keepInTouchWithVolunteers <--
  [ helps(writeArticlesForNewspaper1),
    helps(planAndPutOnReconnectionConferences),
    helps(sendOutEmails2) ].
makeNewFriends <-- [helps(beOutgoing)].
makeNewFriends2 <--
  [ helps(planSocialEvents),
    helps(attendSAMeetings),
    helps(helpPutOnSATrainingConferences),
    helps(writeArticlesForNewspaper),
    helps(helpWithPresentations) ].
morePromotionResourcesAvailable <--
  [ helps(increasedSAResources1),
    hurts(providePromotionResources) ].
qualitySAServices1 <--
  [ helps(happinessStudentAmbassadors),
    helps(provideSpeaches),
    helps(morePromotionResourcesAvailable),
    helps(saSAreConfident),
    helps(providePromotionResources),
    helps(saSAreOrganized),
    helps(kidsBeUsedToCommunicateWithOtherKids) ].
reduceMisconceptions1 <--
  [ helps(speakAtFundraisers1),
    helps(giveCSPresentations2) ].
saSAreEnthusiastic <-- [helps(happinessStudentAmbassadors)].
saSAreOutgoing <-- [helps(happinessStudentAmbassadors)].
spreadAwareness <--
  [ helps(runFundraiserInSchools2),
    helps(writeArticlesForNewspaper1),
    helps(morePromotionResourcesAvailable),
    helps(speakAtFundraisers1),
    helps(giveCSPresentations2) ].
trustOfKids1 <-- [helps(kidsBeUsedToCommunicateWithOtherKids)].
