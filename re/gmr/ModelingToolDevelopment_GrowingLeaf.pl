% ModelingToolDevelopment_GrowingLeaf  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ haveIStarModels,
    haveSDModles,
    haveSRModels,
    haveHybridModels,
    haveMinFeatureSet,
    earlyREAnalysis,
    useLeaf,
    performEarlyRequirementsAnalysis,
    completeResearchInvestigation,
    haveTooling,
    haveQualitativeAnalysis,
    getBugFixes,
    haveALeafCommunity,
    haveLastingImpact,
    completePhD,
    buildTool,
    haveQualAnalysis,
    haveMinFeatureSet2 ].
goals(soft) <--
  [ or([ stability,
         effectiveness,
         usability,
         maintainable,
         easeOfInstallation,
         extendability,
         easeOfInstallation2,
         enjoyableExperience,
         useability,
         stability2,
         trustAnalysis,
         easilyAvailableTooling,
         easilyExtensibleTooling,
         usableLeafToolToExtend,
         usableTool,
         usability2,
         developmentSpeed,
         maintainable2,
         extendableTechnology,
         openSourceCode,
         stability3,
         usability3,
         useability2,
         extendableTechnology2,
         maintainable3,
         easeOfInstallation3 ]) ].
buildInBrowser <-- [extendAnalysisInJava, chooseWebTechnology].
buildInEclipseExtension <-- [buildUIWithGMF].
buildTool <-- [buildInEclipseExtension].
buildUIWithGMF <-- [eclipseExpertise2].
chooseWebTechnology <-- [useJointJS].
chooseWebTechnology <-- [developLibraries].
chooseWebTechnology2 <-- [chooseWebTechnology].
completePhD <-- [buildTool, getAnalysisWorking].
completeResearchInvestigation <--
  [ haveTooling,
    performStudies,
    developNewKnowledge ].
developLibraries <-- [webdevexpertise].
earlyREAnalysis <--
  [ storeModels,
    modelIntentions,
    evaluateGoals,
    propagateGoals,
    simulateModels ].
easeOfInstallation <-- [chooseWebTechnology2].
easeOfInstallation2 <-- [easeOfInstallation3].
easeOfInstallation3 <-- [easeOfInstallation].
eclipseExpertise2 <-- [eclipseExpertise3].
eclipseExpertise3 <-- [eclipseExpertise].
elicitNewFeatures <-- [suggestNewFeatures2].
extendAnalysisInJava <--
  [ javaExpertise,
    developTimeBasedTechniques,
    haveQualAnalysis,
    buildInEclipseExtension ].
extendLeaf <-- [getBugFixes, suggestNewFeatures, getLeafAccess].
extendability <-- [extendableTechnology2].
extendableTechnology2 <-- [extendableTechnology].
fixBugs2 <-- [fixBugs].
getBugFixes <-- [fixBugs2].
getLeafAccess <-- [shareTool2].
getQualAnalysis <-- [implementQualAnalysis4].
getQualAnalysis2 <-- [haveQualAnalysis].
haveALeafCommunity <-- [haveLastingImpact].
haveIStarModels <--
  [ haveSDModles,
    haveSRModels,
    haveHybridModels,
    haveMinFeatureSet ].
haveLastingImpact <--
  [ buildTool,
    shareTool,
    updateTool,
    maintainTool ].
haveMinFeatureSet <-- [storeModels, modelIntentions].
haveMinFeatureSet2 <-- [haveMinFeatureSet].
haveQualitativeAnalysis <-- [implementQualAnalysis, getQualAnalysis].
haveTooling <-- [useEclipse].
haveTooling <-- [extendLeaf].
implementQualAnalysis <-- [implementQualAnalysis3].
implementQualAnalysis2 <-- [haveQualAnalysis].
implementQualAnalysis3 <-- [getQualAnalysis2].
implementQualAnalysis4 <-- [implementQualAnalysis2].
jointjs2 <-- [jointjs].
maintainEclipseExpertise <-- [eclipseExpertise2].
maintainExpertise <-- [maintainEclipseExpertise].
maintainExpertise <-- [maintainWebDevExpertise].
maintainTool <-- [maintainExpertise, fixBugs].
maintainWebDevExpertise <-- [webdevexpertise].
maintainable2 <-- [maintainable3].
maintainable3 <-- [maintainable].
performEarlyRequirementsAnalysis <-- [useLeaf].
shareTool2 <-- [shareTool].
stability2 <-- [stability3].
stability3 <-- [stability].
suggestNewFeatures2 <-- [suggestNewFeatures].
updateTool <-- [elicitNewFeatures, maintainExpertise].
usability2 <-- [useability2].
usability3 <-- [usability].
useJointJS <-- [webdevexpertise, jointjs2].
useLeaf <-- [haveMinFeatureSet2].
useability <-- [usability3].
useability2 <-- [usability].
writePublications <-- [completePhD].
developmentSpeed <--
  [ helps(eclipseExpertise2),
    hurts(buildUIWithGMF),
    helps(developLibraries),
    makes(useJointJS),
    helps(webdevexpertise) ].
easilyAvailableTooling <-- [hurts(useEclipse), helps(extendLeaf)].
easilyExtensibleTooling <-- [hurts(useEclipse), helps(extendLeaf)].
effectiveness <--
  [ helps(usability),
    helps(haveIStarModels),
    helps(earlyREAnalysis) ].
enjoyableExperience <--
  [ helps(easeOfInstallation2),
    helps(useability),
    helps(stability2) ].
extendableTechnology <--
  [ helps(openSourceCode),
    helps(buildInBrowser),
    hurts(buildInEclipseExtension) ].
maintainable <-- [helps(extendability)].
usableLeafToolToExtend <-- [hurts(extendLeaf)].
usableTool <--
  [ makes(usableLeafToolToExtend),
    hurts(useEclipse),
    makes(usability2) ].
