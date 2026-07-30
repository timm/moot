% bCMS_SR_Witness  (nfr3 dialect: <-- rules, soft bodies are edges)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [receiveInstructions].
goals(soft) <--
  [ or([ provideAccurateInformation,
         toKnowWhatToDo ]) ].
crisisRelatedInformationFire <-- [provideToFireman].
crisisRelatedInformationPolice <-- [provideInfoToPolice].
followInstructionsFromFiremen <-- [receiveInstructions].
provideCrisisRelatedInfo <-- [provideToFireman, provideInfoToPolice].
receiveInstructions <-- [instructionsFire, instructionsPolice].
toKnowWhatToDo <-- [helps(receiveInstructions)].
