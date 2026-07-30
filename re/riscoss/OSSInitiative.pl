% OSSInitiative  (nfr3 dialect, from istarml)
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
actMAINTComp <-- [resBUG, resPATCH].
actMAINTProd <--
  [ resOSSCompWithDocum3,
    ossEvolvesTowardsDesiredFeatures,
    qualityOfTheEvolvedOSSComponent ].
actPATCH <-- [resBUG2, resNEWFEATURE2, actRepPATCH].
actTESTProd <-- [resOSSCompWithDocum2].
communityManaged <-- [actDECIDERoadmap].
communityManaged <-- [actDECIDEACC].
evolveOSSComponent <--
  [ resOSSCompWithDocum,
    actTESTComp,
    actMAINTComp,
    actRELEASE ].
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
performOSSInitiativeLeavingControlToTheCommunity <--
  [ actDEV,
    actRELEASE2,
    actNewCOMM,
    ossComponentUsedDeployOrIntegrate,
    actDECIDEWishlist,
    actACQMan,
    technicalQuality,
    actMAINTProd,
    actTESTProd ].
qualityOfTheEvolvedOSSComponent2 <--
  [ qualityOfTheEvolvedOSSComponent2,
    actMAINTComp ].
resBUG <-- [actRepBUG].
resBUG2 <-- [actMAINTComp].
resNEWFEATURE <-- [actDECIDEWishlist].
resNEWFEATURE2 <-- [actMAINTComp].
resOSSCompWithDocum <-- [actRELEASE2].
resOSSCompWithDocum2 <-- [actRELEASE2].
resOSSCompWithDocum3 <-- [actRELEASE2].
resPATCH <-- [actRepPATCH].
resTechDOCUM <-- [actRELEASE2].
supportingActivitiesHeld <-- [giveSupport].
accordingToOSSCommunityPractices <-- [helps(actACQMan)].
ossEvolvesTowardsDesiredFeatures <--
  [ helps(accordingToOSSCommunityPractices),
    helps(ossCommunityContributed) ].
technicalQuality <-- [helps(actACQTech)].
