% OSSTakeover  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ supportingActivitiesHeld,
    ossComponentUsedDeployOrIntegrate,
    actINT,
    managementAcceptedByTheOSSCommunity,
    ossCommunityContributed,
    companyManagementAccepted,
    knowledgeAcquisitionAboutOSSCommunity ].
goals(soft) <--
  [ or([ technicalQuality,
         ossEvolvesTowardsDesiredFeatures,
         qualityOfTheEvolvedOSSComponent,
         accordingToOSSCommunityPractices,
         qualityOfTheEvolvedOSSComponent2 ]) ].
actACQMan <-- [knowledgeAcquisitionAboutOSSCommunity].
actACQTech <-- [resTechDOCUM].
actLearn <-- [resUserDOCUM].
actMAINTComp <-- [resBUG, resPATCH].
actMAINTProd <-- [ossEvolvesTowardsDesiredFeatures].
actPATCH <-- [resBUG2, resNEWFEATURE, actRepPATCH].
companyManagementAccepted <--
  [ companyManagementAccepted,
    actMAINTComp ].
developOSSComponent <--
  [ resROADMAP,
    actDEV,
    actTESTComp,
    actMAINTComp,
    actRELEASE ].
giveSupport <-- [actSUPP].
manageCommunity <--
  [ actDECIDERoadmap,
    actDECIDEACC,
    managementAcceptedByTheOSSCommunity,
    actACQMan ].
ossCommunityContributed <-- [actRepBUG].
ossCommunityContributed <-- [actPATCH].
ossCommunityContributed <-- [actSUPP].
ossCommunityContributed <-- [accordingToOSSCommunityPractices].
ossCommunityContributed <-- [technicalQuality].
ossComponentUsedDeployOrIntegrate <-- [actDEP].
ossComponentUsedDeployOrIntegrate <-- [actINT].
qualityOfTheEvolvedOSSComponent2 <--
  [ qualityOfTheEvolvedOSSComponent2,
    actMAINTComp ].
resBUG <-- [actRepBUG].
resBUG2 <-- [actMAINTComp].
resNEWFEATURE <-- [actMAINTComp].
resOSSCompWithDocum <-- [actRELEASE].
resPATCH <-- [actRepPATCH].
resROADMAP <-- [actDECIDERoadmap].
resTechDOCUM <-- [actRELEASE].
resUserDOCUM <-- [actRELEASE].
supportingActivitiesHeld <-- [giveSupport].
takeoverOSSCommunity <--
  [ resOSSCompWithDocum,
    actSEL,
    ossComponentUsedDeployOrIntegrate,
    technicalQuality,
    actMAINTProd,
    manageCommunity,
    actTESTProd ].
accordingToOSSCommunityPractices <-- [helps(actACQMan)].
ossEvolvesTowardsDesiredFeatures <--
  [ helps(accordingToOSSCommunityPractices),
    helps(ossCommunityContributed),
    helps(manageCommunity) ].
technicalQuality <-- [helps(actACQTech), helps(actLearn)].
