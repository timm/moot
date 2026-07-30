% OSSAcquisition  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ ossComponentUsed,
    takeBenefitFromOSSCommunity,
    doNotCareOSSEvolutionForMaintenance,
    helpObtained ].
goals(soft) <--
  [ or([ technicalQuality,
         ossInvolvementMinimised ]) ].
acquireOSSComponent <--
  [ ossComponent,
    selectOSSComponent,
    ossComponentUsed,
    technicalQuality,
    testProduct,
    maintainProduct ].
acquireTechnicalSkills <--
  [ technicalDocumentation,
    askDoubtsToTheCommunity ].
acquireUserSkills <-- [userDocumentation, askDoubtsToTheCommunity].
askDoubtsToTheCommunity <-- [helpObtained].
deployOSSComponent <-- [acquireUserSkills].
doNotCareOSSEvolutionForMaintenance <-- [acquireOSSComponent].
integrateOSSComponentInOtherSoftware <-- [acquireTechnicalSkills].
maintainProduct <-- [askDoubtsToTheCommunity].
ossComponentUsed <-- [deployOSSComponent].
ossComponentUsed <-- [integrateOSSComponentInOtherSoftware].
selectOSSComponent <-- [acquireUserSkills].
takeBenefitFromOSSCommunity <-- [ossComponentUsed].
technicalQuality <--
  [ helps(acquireTechnicalSkills),
    helps(acquireUserSkills) ].
