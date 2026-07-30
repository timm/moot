% TaRGeT_automatedTestGeneration  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ maintainConsistencyOfArtifacts,
    selectionOfFilters,
    obtainingDocumentRequiremnent,
    generationOfTestSuite12,
    documentChecking,
    bugDetection,
    consistencyBetweenArtifactsMaintained,
    generatedTestSuite,
    requirementsDocumentObtained ].
goals(soft) <--
  [ or([ optimizationTestSuite,
         qualityArtifacts,
         increasedProductivity,
         reductionCosts,
         completenessTestCase,
         correctnessTestCase,
         qualityProduct,
         qualityProduct2,
         completenessRequirements,
         optimizationTestSuite2,
         qualityArtifacts2,
         increaseProductivity,
         reductionCosts2,
         qualityProduct3 ]) ].
consistencyBetweenArtifactsMaintained <--
  [ maintainConsistencyOfArtifacts ].
documentChecking <-- [checkCaseTestSyntactically11].
documentChecking <-- [checkCaseTestSemantically01].
generateDetailedTestSuite <--
  [ selectionOfFilters,
    maintainConsistencyOfArtifacts01,
    generateSpecificTestCases11,
    obtainingDocumentRequiremnent,
    documentChecking ].
generateTestSuiteDirectly <--
  [ documentChecking,
    generateAllTestCases11,
    obtainingDocumentRequiremnent ].
generatedTestSuite <-- [generationOfTestSuite12].
generationOfTestSuite12 <-- [generateDetailedTestSuite].
generationOfTestSuite12 <-- [generateTestSuiteDirectly].
increaseProductivity <-- [increasedProductivity].
maintainConsistencyOfArtifacts <-- [maintainConsistencyOfArtifacts01].
maintainConsistencyOfArtifacts01 <--
  [ detectChangesInRequirements11,
    updateTestCases11 ].
obtainingDocumentRequiremnent <-- [uploadDocument11].
obtainingDocumentRequiremnent <-- [writeOnTheEditorTool01].
optimizationTestSuite2 <-- [optimizationTestSuite].
qualityArtifacts2 <-- [qualityArtifacts].
qualityProduct3 <-- [qualityArtifacts].
reductionCosts2 <-- [reductionCosts].
selectionOfFilters <-- [filterByUseCase11].
selectionOfFilters <-- [filterTestingPurposes11].
selectionOfFilters <-- [includeTestCasePermanently11].
selectionOfFilters <-- [filterByUseCaseSimilar11].
selectionOfFilters <-- [filterByRequirements11].
selectionOfFilters <-- [permanentlyDeleteTestCase11].
selectionOfFilters <-- [parametrizeTest01].
uploadDocument11 <-- [requirementsDocumentObtained].
increasedProductivity <--
  [ helps(optimizationTestSuite),
    helps(qualityArtifacts) ].
optimizationTestSuite <--
  [ helps(generateDetailedTestSuite),
    helps(parametrizeTest01) ].
qualityArtifacts <--
  [ helps(maintainConsistencyOfArtifacts01),
    helps(checkCaseTestSemantically01),
    helps(writeOnTheEditorTool01) ].
reductionCosts <-- [helps(increasedProductivity)].
