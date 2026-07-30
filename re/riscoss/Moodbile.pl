% Moodbile  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ moodleMobileSolutionsProvided,
    projectAdvertised,
    brandDesigned,
    forumKeptAlive,
    developersTeamManaged,
    releasesDecided,
    mobilePlatformMaintainedAndEvolvedOverTheNextYears,
    voutdatedMobileTechnology,
    investmentInDistanceLearningReused,
    vinvestmentNotReused,
    distanceLearningPlatformAlwaysAvailable,
    vdlBuggy,
    ossComponentUsed,
    licenseCompatibilityPreserved,
    studentRegistrationsMaintainedOverTheNextYears,
    vstudentsDissatisfied,
    vreputationDeclines,
    vfacultyObjects,
    moodbileBeenMultiPlatform,
    compatibilityKept,
    helpObtained ].
goals(soft) <--
  [ or([ technicalQuality,
         preservingSellingCapability,
         organisationReputationMaintained,
         consensusOnInvestmentMaintained ]) ].
acquireOSSComponent <--
  [ moodbileComponent,
    selectOSSComponent,
    technicalQuality,
    ossComponentUsed,
    testProduct,
    maintainAndEvolveProduct,
    licenseCompatibilityPreserved ].
acquireTechnicalSkills <--
  [ technicalDocumentation,
    askDoubtsToTheCommunity ].
acquireUserSkills <-- [userDocumentation, askDoubtsToTheCommunity].
askDoubtsToTheCommunity <-- [helpObtained].
deployOSSComponent <-- [acquireUserSkills].
distanceLearningPlatformAlwaysAvailable <-- [acquireOSSComponent].
helpObtained <-- [forumKeptAlive].
implementAndDeployGit <-- [compatibilityKept, moodleCode].
includeOSSComponentInOtherSoftware <--
  [ acquireTechnicalSkills,
    preservingSellingCapability ].
investmentInDistanceLearningReused <-- [maintainAndEvolveProduct].
maintainAndEvolveProduct <-- [askDoubtsToTheCommunity].
manageDevelopment <--
  [ provideRequirements,
    implementAndDeployGit,
    runUnitTests,
    documentProject ].
maximiseInvestmentInMobilePlatform <--
  [ moodbileBeenMultiPlatform,
    mobilePlatformMaintainedAndEvolvedOverTheNextYears,
    investmentInDistanceLearningReused,
    distanceLearningPlatformAlwaysAvailable,
    studentRegistrationsMaintainedOverTheNextYears ].
mobilePlatformMaintainedAndEvolvedOverTheNextYears <--
  [ maintainAndEvolveProduct ].
moodbileBeenMultiPlatform <-- [moodleMobileSolutionsProvided].
moodbileComponent <-- [implementAndDeployGit].
moodleMobileSolutionsProvided <-- [projectManaged].
ossComponentUsed <-- [deployOSSComponent].
ossComponentUsed <-- [includeOSSComponentInOtherSoftware].
projectAdvertised <-- [brandDesigned].
projectAdvertised <-- [forumKeptAlive].
projectAdvertised <-- [informAboutNewsAndReleasesBlogTwitter].
projectManaged <--
  [ projectAdvertised,
    developersTeamManaged,
    releasesDecided,
    manageDevelopment ].
selectOSSComponent <-- [acquireUserSkills].
userDocumentation <-- [documentProject].
consensusOnInvestmentMaintained <--
  [ hurts(vfacultyObjects),
    helps(maximiseInvestmentInMobilePlatform) ].
investmentInDistanceLearningReused <-- [hurts(vinvestmentNotReused)].
maintainAndEvolveProduct <-- [hurts(voutdatedMobileTechnology)].
organisationReputationMaintained <--
  [ hurts(vreputationDeclines),
    helps(maximiseInvestmentInMobilePlatform) ].
studentRegistrationsMaintainedOverTheNextYears <--
  [ hurts(vstudentsDissatisfied) ].
technicalQuality <--
  [ hurts(vdlBuggy),
    helps(acquireTechnicalSkills),
    helps(acquireUserSkills) ].
