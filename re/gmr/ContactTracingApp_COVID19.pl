% ContactTracingApp_COVID19  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [shareDataWithIndividuals, predictStaffingNeeds].
goals(soft) <--
  [ or([ avoidStigmaOfExposure,
         avoidExposingOthers,
         minimizeExposure,
         privacy,
         transparency,
         discretionInPlaceSharing ]) ].
avoidStigmaOfExposure <-- [discretionInPlaceSharing].
collectLocationData <-- [locationData].
createPredictiveModels <--
  [ collectTestResultData,
    collectLocationData ].
discretionInPlaceSharing <-- [sharePlacesToAvoid].
informationOnRisks <-- [sharePlacesToAvoid].
locationData <-- [shareDataWithPublicHealth].
predictStaffingNeeds <-- [createPredictiveModels].
shareDataWithIndividuals <-- [shareAllData].
shareDataWithIndividuals <-- [shareExposure].
shareDataWithIndividuals <-- [sharePlacesToAvoid].
stayInformedAboutRisks <-- [informationOnRisks].
avoidExposingOthers <-- [helps(practiceSocialDistancing)].
minimizeExposure <--
  [ helps(practiceSocialDistancing),
    helps(stayInformedAboutRisks) ].
privacy <-- [helps(shareExposure)].
transparency <-- [makes(shareAllData)].
