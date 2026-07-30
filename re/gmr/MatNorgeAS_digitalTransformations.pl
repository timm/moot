% MatNorgeAS_digitalTransformations  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ improvedBusinessOperation,
    sustainableDevelopment,
    b2bProblemSolutionFit,
    greeningByIT ].
goals(soft) <--
  [ or([ customerSatisfaction,
         improvedPerformance,
         sustainability,
         scalability ]) ].
adoptNewTechnology <-- [transformDigitally].
b2bProblemSolutionFit <-- [resourcesFinancePeopleProcess].
changeOrgStructureAndProcess <-- [transformDigitally].
customizeMobileApps <-- [customizeTheTechnologySet].
customizeTheTechnologySet <-- [b2bProblemSolutionFit].
greeningByIT <-- [scalability].
identifyWastingAreas <-- [b2bProblemSolutionFit].
resourcesFinancePeopleProcess <-- [transformDigitally].
scalability <-- [sustainableDevelopment].
selectDataAnalyticServices <-- [customizeTheTechnologySet].
sustainableDevelopment <-- [participation].
sustainableDevelopment <-- [changingStatusQuo].
sustainableDevelopment <-- [ecoFeedback].
sustainableDevelopment <-- [optimization].
tailorRMA <-- [customizeTheTechnologySet].
customerSatisfaction <-- [helps(sustainableDevelopment)].
improvedPerformance <-- [helps(transformDigitally)].
