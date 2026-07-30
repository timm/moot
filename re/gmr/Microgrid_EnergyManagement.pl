% Microgrid_EnergyManagement  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [energyManagement, payoffManagement].
goals(soft) <--
  [ or([ profit,
         totalCost,
         income,
         initialInvestmentCost,
         operationMaintenanceCost,
         maximumLocalEnergyProduction,
         payoff,
         surplusEnergy,
         localEnergyDemand,
         qualityOfService,
         externalCustomerSatisfaction,
         customerSatisfaction,
         payoff2,
         pricingRate,
         totalSurplusEnergy,
         marginalContributionToPn,
         marginalContributionToP2,
         marginalContributionToP1,
         fairlyDistributePayoff,
         fairlyDistributePayoff2,
         fairlyDistributePayoff3,
         externalCustomerRequest,
         externalCustomerSatisfaction2 ]) ].
customerSatisfaction <-- [externalCustomerSatisfaction2].
energyManagement <-- [solarPanel, windMill].
externalCustomerRequest <-- [localEnergyDemand].
fairlyDistributePayoff <-- [payoff].
fairlyDistributePayoff2 <-- [payoff].
fairlyDistributePayoff3 <-- [payoff].
marginalContributionToP1 <-- [payoff2].
marginalContributionToP2 <-- [payoff2].
marginalContributionToPn <-- [payoff2].
payoffManagement <-- [withoutCoalition].
payoffManagement <-- [withCoalition].
externalCustomerSatisfaction <--
  [ helps(surplusEnergy),
    makes(customerSatisfaction) ].
income <--
  [ makes(payoff),
    helps(surplusEnergy),
    helps(qualityOfService) ].
initialInvestmentCost <-- [helps(solarPanel), helps(windMill)].
maximumLocalEnergyProduction <-- [makes(solarPanel)].
operationMaintenanceCost <-- [hurts(windMill), helps(solarPanel)].
payoff2 <-- [makes(totalSurplusEnergy), helps(pricingRate)].
pricingRate <-- [helps(withoutCoalition), helps(withCoalition)].
profit <-- [helps(totalCost), helps(income)].
qualityOfService <-- [makes(externalCustomerSatisfaction)].
surplusEnergy <-- [helps(localEnergyDemand)].
totalCost <--
  [ hurts(initialInvestmentCost),
    helps(operationMaintenanceCost) ].
totalSurplusEnergy <--
  [ hurts(withoutCoalition),
    helps(withCoalition) ].
