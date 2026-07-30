% ValidationAndVerification_RE_SDView  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ requirementsBeValidated,
    requirementsBeDefined,
    tasksBeAutomated,
    requirementsBeSpecified,
    requirementsBeVerified ].
goals(soft) <--
  [ or([ commitmentProject,
         standardsuseArtifacts,
         noexceedSchedules,
         highqualityRequirements ]) ].
