% OSSRelease  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [ossComponentUsed].
goals(soft) <--
  [ or([ technicalQuality ]) ].
ossComponentUsed <-- [deployOSSComponent].
ossComponentUsed <-- [includeOSSComponentInOtherSoftware].
performOSSRelease <--
  [ developProject,
    technicalQuality,
    ossComponentUsed,
    testProduct,
    maintainProduct,
    releaseOSSComponent ].
