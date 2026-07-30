% RequirementsElicitationProcess  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ interviewWellConducted,
    keyIndividualsAppointed,
    questionnaireCompleted ].
goals(soft) <--
  [ or([ reasonableTimeAllocated,
         mediumElicitationExperience,
         privacyRespected,
         truthfulAnswers,
         questionnaireWellDesigned ]) ].
