% SustainabilityCatalog_SoftwareRequirements  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ dataBackupSystem,
    correctResultsSystem,
    freedomFromRiskSociety,
    legislationCompany,
    accomplishmentOfProposedFunctionalitiesSystem,
    developmentProcessSystem,
    clearSpecificationsSystem,
    smartBehaviorSystem,
    minimumDowntimeSystem,
    highCohesionSystem,
    lowCouplingSystem,
    standardImplementationSystem,
    partnershipCompany,
    systemIntegrationSystem,
    openSourceSystemSystem ].
goals(soft) <--
  [ or([ sustainability,
         socialSustainability,
         securitySystem,
         socialSafetySociety,
         satisfactionStakeholder,
         confidentialitySystem,
         accountabilitySystem,
         integritySystem,
         authenticitySystem,
         anonymitySystem,
         traceabilitySystem,
         accuracySystem,
         justiceCompany,
         fairnessCompany,
         equalityCompany,
         usefulnessSystem,
         trustStakeholder,
         honestyCompany,
         transparencyCompany,
         functionalitySystem,
         functionalAppropriatenessSystem,
         functionalCorrectnessSystem,
         predictabilitySystem,
         technicalSustainability,
         reliabilitySystem,
         availabilitySystem,
         faultToleranceSystem,
         recoverabilitySystem,
         robustnessSystem,
         maintainabilitySystem,
         testabilitySystem,
         modularitySystem,
         modifiabilitySystem,
         flexibilitySystem,
         evolvabilitySystem,
         installAbilitySystem,
         compatibilitySystem,
         adaptabilitySystem,
         interoperabilitySystem ]) ].
accountabilitySystem <--
  [ helps(authenticitySystem),
    hurts(anonymitySystem),
    makes(traceabilitySystem) ].
accuracySystem <-- [makes(correctResultsSystem)].
adaptabilitySystem <--
  [ helps(systemIntegrationSystem),
    makes(openSourceSystemSystem),
    helps(installAbilitySystem) ].
availabilitySystem <--
  [ helps(robustnessSystem),
    makes(minimumDowntimeSystem) ].
compatibilitySystem <--
  [ helps(adaptabilitySystem),
    makes(interoperabilitySystem) ].
confidentialitySystem <-- [helps(anonymitySystem)].
fairnessCompany <-- [helps(justiceCompany), helps(equalityCompany)].
faultToleranceSystem <-- [makes(robustnessSystem)].
flexibilitySystem <-- [helps(evolvabilitySystem)].
functionalAppropriatenessSystem <--
  [ makes(developmentProcessSystem),
    makes(accomplishmentOfProposedFunctionalitiesSystem),
    helps(clearSpecificationsSystem) ].
functionalCorrectnessSystem <--
  [ helps(clearSpecificationsSystem),
    helps(predictabilitySystem),
    makes(accuracySystem) ].
functionalitySystem <--
  [ makes(functionalAppropriatenessSystem),
    helps(functionalCorrectnessSystem),
    helps(testabilitySystem) ].
honestyCompany <-- [makes(transparencyCompany)].
integritySystem <-- [helps(accuracySystem), helps(dataBackupSystem)].
interoperabilitySystem <--
  [ helps(standardImplementationSystem),
    helps(partnershipCompany),
    helps(systemIntegrationSystem) ].
justiceCompany <-- [helps(legislationCompany)].
maintainabilitySystem <--
  [ helps(testabilitySystem),
    helps(modularitySystem),
    makes(modifiabilitySystem) ].
modifiabilitySystem <--
  [ makes(flexibilitySystem),
    helps(adaptabilitySystem) ].
modularitySystem <--
  [ makes(highCohesionSystem),
    makes(lowCouplingSystem),
    helps(flexibilitySystem) ].
predictabilitySystem <-- [makes(smartBehaviorSystem)].
reliabilitySystem <--
  [ makes(availabilitySystem),
    helps(faultToleranceSystem),
    helps(recoverabilitySystem),
    helps(maintainabilitySystem) ].
satisfactionStakeholder <--
  [ helps(fairnessCompany),
    helps(usefulnessSystem),
    makes(trustStakeholder),
    helps(functionalitySystem) ].
securitySystem <--
  [ makes(authenticitySystem),
    helps(integritySystem),
    helps(accountabilitySystem),
    helps(confidentialitySystem) ].
socialSafetySociety <--
  [ makes(freedomFromRiskSociety),
    helps(legislationCompany) ].
socialSustainability <--
  [ makes(securitySystem),
    makes(socialSafetySociety),
    makes(satisfactionStakeholder) ].
sustainability <--
  [ makes(socialSustainability),
    makes(technicalSustainability) ].
technicalSustainability <--
  [ makes(functionalitySystem),
    makes(reliabilitySystem),
    makes(maintainabilitySystem),
    makes(compatibilitySystem) ].
trustStakeholder <-- [helps(honestyCompany), helps(securitySystem)].
usefulnessSystem <--
  [ makes(accomplishmentOfProposedFunctionalitiesSystem) ].
