% RCCL_BusinessStrategy  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ toReduceCosts,
    toIncreaseRevenue,
    toEnhanceCustomerExperience,
    toReduceCostsOnSupplyChain,
    toReduceCostsOnIT,
    toRedesignShips,
    toKeepUpToDateWithTechnology,
    toGetMoreCustomers,
    toEnhanceCustomerTradeExperience,
    toEnhanceCustomerTravelExperience,
    toProvideBetterCruisingExperience,
    toKnowCustomersPreferences,
    toOfferNewImprovedServices,
    toMaintainCurrentSystem,
    toMaintainSameBudget,
    toIntegrateWebReservationSystem,
    toCreateFlexibleInfrastructure,
    maintainITOperations,
    toMakeSharpBudgetIncrease,
    toInvest8M,
    toDevelopASingleReservationSystem,
    toHaveAnAutomatedHRSystem,
    toHaveFlexibleInfrastructureComponents,
    provideCustomerPreferenceData,
    enableITCostReduction,
    supportNewServiceDevelopment ].
goals(soft) <--
  [ or([ toBeCompetitiveInTheLeisureCruiseBusiness,
         efficiencyOfITOperations,
         toHaveAnEfficientHRSystem,
         budgetEfficiency ]) ].
enableITCostReduction <-- [toMakeSharpBudgetIncrease].
maintainITOperations <-- [toMaintainCurrentSystem].
maintainITOperations <-- [toIntegrateWebReservationSystem].
maintainITOperations <-- [toCreateFlexibleInfrastructure].
maintainSystemIntegrated <-- [systemIsSufficientlyIntegrated].
provideCustomerPreferenceData <-- [toDevelopASingleReservationSystem].
supportNewServiceDevelopment <--
  [ toHaveFlexibleInfrastructureComponents ].
toCreateFlexibleInfrastructure <--
  [ toMakeSharpBudgetIncrease,
    toHaveAnAutomatedHRSystem,
    toHaveFlexibleInfrastructureComponents ].
toEnhanceCustomerExperience <--
  [ toEnhanceCustomerTradeExperience,
    toEnhanceCustomerTravelExperience ].
toEnhanceCustomerTradeExperience <--
  [ toProvideBetterCruisingExperience,
    toKnowCustomersPreferences ].
toIncreaseRevenue <--
  [ toRedesignShips,
    toKeepUpToDateWithTechnology,
    toGetMoreCustomers,
    toOfferNewImprovedServices ].
toIntegrateWebReservationSystem <--
  [ toInvest8M,
    toDevelopASingleReservationSystem ].
toKnowCustomersPreferences <-- [provideCustomerPreferenceData].
toMaintainCurrentSystem <--
  [ toMaintainSameBudget,
    maintainSystemIntegrated ].
toOfferNewImprovedServices <-- [supportNewServiceDevelopment].
toReduceCosts <-- [toReduceCostsOnIT, toReduceCostsOnSupplyChain].
toReduceCostsOnIT <-- [enableITCostReduction].
budgetEfficiency <--
  [ helps(toMaintainSameBudget),
    hurts(toInvest8M),
    hurts(maintainSystemIntegrated),
    hurts(toMakeSharpBudgetIncrease) ].
efficiencyOfITOperations <-- [makes(maintainITOperations)].
toBeCompetitiveInTheLeisureCruiseBusiness <--
  [ helps(toReduceCosts),
    helps(toIncreaseRevenue),
    helps(toEnhanceCustomerExperience) ].
toHaveAnEfficientHRSystem <-- [helps(toHaveAnAutomatedHRSystem)].
