% TaRGeT_MotorolaProject  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ generationOfTestsForDifferentPurposes,
    obtainScenarioDescription,
    bugDetection,
    artifactsConsistency,
    testsSuiteGenerated ].
goals(soft) <--
  [ or([ generateAnOptimalTestsSuite,
         generateArtifactsOfGoodQuality,
         marketCompetitiveness,
         wellSpecifiedTestCases,
         optimalTestsSuite,
         artifactsQuality,
         artifactsQuality2,
         productQuality,
         marketCompetitiveness2,
         productQuality2,
         increasedProductivity ]) ].
artifactsConsistency <-- [detectScenarioChangesAndUpdateTestCases01].
artifactsQuality <-- [generateArtifactsOfGoodQuality].
artifactsQuality2 <-- [generateArtifactsOfGoodQuality].
generateTestCasesFromScenariosDescription <--
  [ detectScenarioChangesAndUpdateTestCases01,
    generationOfTestsForDifferentPurposes,
    obtainScenarioDescription,
    verifyScenariosSyntactically01 ].
generationOfTestsForDifferentPurposes <-- [selectByUC].
generationOfTestsForDifferentPurposes <--
  [ selectPermantExclusionOfATestCase ].
generationOfTestsForDifferentPurposes <-- [selectByUCWithCommonSteps].
generationOfTestsForDifferentPurposes <--
  [ selectPermantInclusionOfATestCase ].
generationOfTestsForDifferentPurposes <--
  [ selectTestCasesWithMaximumCoverage ].
marketCompetitiveness2 <-- [marketCompetitiveness].
obtainScenarioDescription <-- [writeScenariosOnEmbeddedEditor].
obtainScenarioDescription <-- [uploadFormattedDocument].
optimalTestsSuite <-- [generateAnOptimalTestsSuite].
testsSuiteGenerated <-- [generateTestCasesFromScenariosDescription].
uploadFormattedDocument <-- [scenarioDescriptionsDocument].
writeScenariosOnEmbeddedEditor <-- [writeScenarios].
generateArtifactsOfGoodQuality <--
  [ helps(verifyScenariosSyntactically01) ].
marketCompetitiveness <--
  [ helps(detectScenarioChangesAndUpdateTestCases01),
    helps(generateAnOptimalTestsSuite),
    helps(generateArtifactsOfGoodQuality) ].
