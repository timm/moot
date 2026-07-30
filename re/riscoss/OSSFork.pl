% OSSFork  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ communityManaged,
    supportingActivitiesHeld,
    ossComponentUsedDeployOrIntegrate,
    actINT,
    ossCommunityContributed ].
goals(soft) <--
  [ or([ technicalQuality,
         ossEvolvesTowardsDesiredFeatures,
         qualityOfTheEvolvedOSSComponent,
         accordingToOSSCommunityPractices,
         ossComponentEvolvesTowardsDesiredFeatures,
         qualityOfTheEvolvedOSSComponent2 ]) ].
actACQTech <-- [resTechDOCUM].
actDECIDERoadmap <-- [resNEWFEATURE].
actLearn <-- [resUserDOCUM].
actMAINTComp2 <-- [resBUG, resPATCH].
actMAINTProd <--
  [ resOSSCompWithDocum4,
    ossEvolvesTowardsDesiredFeatures,
    qualityOfTheEvolvedOSSComponent ].
actPATCH <-- [resBUG2, resNEWFEATURE2, actRepPATCH].
actRELEASE2 <-- [resOSSCompWithDocum].
actTESTProd <-- [resOSSCompWithDocum3].
communityManaged <-- [actDECIDERoadmap].
communityManaged <-- [actDECIDEACC].
developOSSComponent <--
  [ actDEV,
    actTESTComp,
    actMAINTComp,
    actRELEASE ].
evolveOSSComponent <--
  [ resOSSCompWithDocum2,
    actTESTComp2,
    actMAINTComp2,
    actRELEASE2 ].
giveSupport <-- [actSUPP].
ossCommunityContributed <-- [actRepBUG].
ossCommunityContributed <-- [actPATCH].
ossCommunityContributed <-- [actSUPP].
ossCommunityContributed <-- [accordingToOSSCommunityPractices].
ossCommunityContributed <-- [technicalQuality].
ossComponentEvolvesTowardsDesiredFeatures <--
  [ ossComponentEvolvesTowardsDesiredFeatures,
    actDECIDERoadmap ].
ossComponentUsedDeployOrIntegrate <-- [actDEP].
ossComponentUsedDeployOrIntegrate <-- [actINT].
performOSSFork <--
  [ actSEL,
    actNewCOMM,
    ossComponentUsedDeployOrIntegrate,
    actDECIDEWishlist,
    actACQMan,
    technicalQuality,
    actMAINTProd,
    actTESTProd ].
qualityOfTheEvolvedOSSComponent2 <--
  [ qualityOfTheEvolvedOSSComponent2,
    actMAINTComp2 ].
resBUG <-- [actRepBUG].
resBUG2 <-- [actMAINTComp2].
resNEWFEATURE <-- [actDECIDEWishlist].
resNEWFEATURE2 <-- [actMAINTComp2].
resOSSCompWithDocum <-- [developOSSComponent].
resOSSCompWithDocum2 <-- [actNewCOMM].
resOSSCompWithDocum3 <-- [actRELEASE2].
resOSSCompWithDocum4 <-- [actRELEASE2].
resPATCH <-- [actRepPATCH].
resTechDOCUM <-- [actRELEASE2].
resUserDOCUM <-- [actRELEASE2].
supportingActivitiesHeld <-- [giveSupport].
accordingToOSSCommunityPractices <-- [helps(actACQMan)].
ossEvolvesTowardsDesiredFeatures <--
  [ helps(accordingToOSSCommunityPractices),
    helps(ossCommunityContributed) ].
technicalQuality <-- [helps(actACQTech), helps(actLearn)].
