% OSSIntegration  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ ossComponentUsed,
    ossCommunityContributed,
    acceptanceAsContributor,
    supportingActivitiesHeld,
    helpObtained ].
goals(soft) <--
  [ or([ technicalQuality,
         accordingToOSSCommunityPractices,
         ossComponentEvolvesTowardsDesiredFeatures,
         qualityOfTheEvolvedOSSComponent,
         ossEvolutionInfluenced,
         ossInvolvement,
         benefitFromCoCreationTaken,
         ossComponentEvolvesTowardsDesiredFeatures2,
         qualityOfTheEvolvedOSSComponent2 ]) ].
acquireManagementSkills <-- [governanceDocumentation].
acquireTechnicalSkills <--
  [ technicalDocumentation,
    askDoubtsToTheCommunity ].
acquireUserSkills <-- [userDocumentation, askDoubtsToTheCommunity].
askDoubtsToTheCommunity <-- [helpObtained].
bugReport <-- [reportBug].
deployOSSComponent <-- [acquireUserSkills].
developPatch <--
  [ bugReport2,
    newFeatureRequest2,
    accordingToOSSCommunityPractices,
    reportPatch ].
giveSupportToActivities <-- [accordingToOSSCommunityPractices].
integrateOSSCommunity <--
  [ ossComponent,
    selectOSSComponent,
    ossComponentUsed,
    technicalQuality,
    testProduct,
    maintainProduct,
    decideOSSWishlist ].
integrateOSSComponentInOtherSoftware <-- [acquireTechnicalSkills].
maintainProduct <--
  [ ossCommunityContributed,
    ossComponentEvolvesTowardsDesiredFeatures,
    qualityOfTheEvolvedOSSComponent ].
newFeatureRequest <-- [decideOSSWishlist].
ossCommunityContributed <-- [acceptanceAsContributor, developPatch].
ossCommunityContributed <-- [acceptanceAsContributor, reportBug].
ossCommunityContributed <--
  [ acceptanceAsContributor,
    giveSupportToActivities ].
ossComponentEvolvesTowardsDesiredFeatures <--
  [ ossComponentEvolvesTowardsDesiredFeatures2 ].
ossComponentUsed <-- [deployOSSComponent].
ossComponentUsed <-- [integrateOSSComponentInOtherSoftware].
selectOSSComponent <-- [acquireUserSkills].
supportingActivitiesHeld <-- [giveSupportToActivities].
accordingToOSSCommunityPractices <-- [makes(acquireManagementSkills)].
technicalQuality <--
  [ helps(acquireTechnicalSkills),
    helps(acquireUserSkills) ].
