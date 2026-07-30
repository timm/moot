% OSSLicense  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [lawCompliance].
goals(soft) <--
  [ or([ brandImproved,
         goodReputation,
         futureLicenseStability,
         easyLicenseManagement ]) ].
acquireOSSLegalSkills <-- [askDoubtsToTheCommunity].
chooseCompatibleTargetLicense <-- [x, acquireOSSLegalSkills].
integrateOSSComponentInOtherSoftware <--
  [ chooseCompatibleTargetLicense ].
lawCompliance <-- [chooseCompatibleTargetLicense].
brandImproved <-- [helps(goodReputation)].
goodReputation <-- [helps(lawCompliance)].
