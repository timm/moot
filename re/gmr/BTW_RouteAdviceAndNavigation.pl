% BTW_RouteAdviceAndNavigation  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ tripAdvicesBeProvided,
    adviceBeUpdated,
    userAccessBeControlled,
    relevantAdviceBeChosen,
    mapBeHandled,
    adviceBeReceived,
    adviceBePublished ].
goals(soft) <--
  [ or([ usability,
         beEasyToUse,
         security,
         fastResponse,
         performance,
         relevance,
         preciseAdvices,
         relevance2,
         preciseInformation,
         usability2,
         relevantAdvices,
         preciseInformation2 ]) ].
accessSpecificServices <-- [profileInformation].
addAdvice <--
  [ informationBePublishedInMap,
    selectAdviceTheme,
    addAdviceContent,
    publishAdvice ].
addAdviceContent <-- [addPhoto, addText, selectPlacemark].
adviceBeReceived <-- [showAdvices].
adviceBeUpdated <-- [noUserFeedback].
adviceBeUpdated <-- [implicitFeedbackByMonitoring].
adviceBeUpdated <-- [requireExplicitFeedback].
controlAccessToServices <-- [accessSpecificServices, requirePassword].
displayRouteInMap <-- [selectPlacemarks, traceRoute, editRoute].
filterAdvicesForARoute <--
  [ accessMapsDatabase,
    calculateIntersections,
    traceRoute2 ].
fulfillInitialProfile <-- [collectInformationAtRegistration].
informationBePublishedInMap <-- [writeInformationAboutAPath].
informationBePublishedInMap <-- [writeInformationAboutAPoint].
informationBePublishedInMap <-- [writeInformationAboutAnArea].
manageUserAccess <-- [controlAccessToServices, manageUserProfile].
manageUserProfile <--
  [ fulfillInitialProfile,
    updateProfile,
    compareProfile,
    maintainAccessHistory ].
mapBeHandled <-- [provideMapsServices].
preciseInformation <-- [preciseInformation2].
provideAdvicingService <-- [addAdvice, adviceBeUpdated, showAdvices].
provideMapsServices <--
  [ selectPlacemark,
    displayRouteInMap,
    searchByAddress,
    displayMap,
    provideMapsServices2 ].
provideMapsServices2 <-- [useMapsService].
publishAdvice <-- [adviceBePublished].
relevance2 <-- [relevantAdvices].
relevantAdviceBeChosen <-- [selectAdviceByUserHistory].
relevantAdviceBeChosen <-- [selectAdviceByUserProfileSimilarity].
requireExplicitFeedback <-- [fumishFeedback].
showAdvices <-- [relevantAdviceBeChosen, filterAdvicesForARoute].
traceRoute2 <-- [traceRoute3].
tripAdvicesBeProvided <-- [provideAdvicingService].
usability2 <-- [usability].
userAccessBeControlled <-- [manageUserAccess].
beEasyToUse <-- [helps(security), hurts(requirePassword)].
fastResponse <-- [helps(performance)].
performance <-- [breaks(selectAdviceByUserProfileSimilarity)].
preciseAdvices <--
  [ helps(writeInformationAboutAPath),
    makes(writeInformationAboutAPoint),
    hurts(writeInformationAboutAnArea),
    makes(preciseInformation) ].
relevance <--
  [ hurts(noUserFeedback),
    helps(implicitFeedbackByMonitoring),
    makes(requireExplicitFeedback),
    makes(relevantAdviceBeChosen),
    helps(addPhoto),
    makes(relevance2) ].
security <-- [helps(controlAccessToServices)].
usability <-- [makes(beEasyToUse), makes(fastResponse)].
