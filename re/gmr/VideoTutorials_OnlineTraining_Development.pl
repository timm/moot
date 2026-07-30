% VideoTutorials_OnlineTraining_Development  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ trainingSessionManaged,
    sessionDesigned,
    sessionExecuted,
    sessionAssessed,
    continuousTrainingOrganized,
    trainingSessionsCreated,
    trainingMaterialCreated,
    videoProduced,
    trainingSessionsRequirementsSpecified ].
goals(soft) <--
  [ or([ maximiseReUseOfResources,
         standardsCompliance,
         maximiseTrainingEngagement,
         maximizeQuality,
         minimizeEffort ]) ].
buildingAudioVisualMaterial <-- [reusingExistingVideoClips].
buildingAudioVisualMaterial <--
  [ specifyingStoryboardForVideoProduction ].
buildingBlendedMaterial <--
  [ buildingTextualSlides,
    buildingQuizzes,
    buildingAudioVisualMaterial ].
continuousTrainingOrganized <--
  [ useBlendedDLCourses,
    performSimulationWithDummies ].
gettingStoryboardSpecifications <-- [storyboarding].
planningForVideoProduction <-- [videoRecordingFromRealScene].
planningForVideoProduction <-- [buildingVirtualReality].
sessionExecuted <-- [assessing, monitoring, opening].
storyboarding <-- [specifyingStoryboardForVideoProduction].
trainingMaterialCreated <-- [buildingBlendedMaterial].
trainingMaterialCreated <-- [buildingAudioVisualMaterial].
trainingMaterialCreated <-- [buildingQuizzes].
trainingMaterialCreated <-- [buildingTextualSlides].
trainingSessionManaged <--
  [ sessionDesigned,
    sessionExecuted,
    sessionAssessed ].
trainingSessionsCreated <--
  [ dlMaterialUploaded,
    trainingMaterialCreated ].
videoProduced <--
  [ planningForVideoProduction,
    gettingStoryboardSpecifications ].
maximiseReUseOfResources <--
  [ makes(useNewTechnology),
    helps(useCertifiedSOPTraining) ].
maximiseTrainingEngagement <--
  [ makes(useNewTechnology),
    hurts(useCertifiedSOPTraining) ].
standardsCompliance <--
  [ hurts(useNewTechnology),
    makes(useCertifiedSOPTraining) ].
