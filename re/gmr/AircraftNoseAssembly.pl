% AircraftNoseAssembly  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(soft) <--
  [ or([ minimiseInvestmentCosts,
         minimiseInvestmentCost,
         minimiseFootprint,
         minimiseCashFlow,
         minimiseLeadTime,
         minimiseFootprint2,
         minimiseInvestmentCost2,
         minimiseLeadTime2,
         minimiseCashFlow2,
         minimiseInvestmentCost3,
         minimiseFootprint3 ]) ].
assemblyLineGlobalStructure <--
  [ defineGlobalStructureOfTheAssemblyLine ].
assemblyLineRate <-- [defineAPolicyFactoriesImplementation].
assemblyPrinciples <-- [doNoseDesign].
chooseJigAndTools <-- [assemblyPrinciples].
defineGlobalStructureOfTheAssemblyLine <--
  [ defineStations,
    designStationsFlow ].
definePERT <-- [noseDesign].
defineStations <-- [jigAndToolsCompatibility].
defineZones <-- [noseDesign2].
designANoseByAssemblyLine <--
  [ doTheBalancing,
    designANoseByAssemblyLine2 ].
designANoseByAssemblyLine2 <--
  [ integrityConstraints,
    assemblyLineRate,
    zones,
    assemblyLineGlobalStructure ].
doTheBalancing <-- [pert].
integrityConstraints <-- [doNoseDesign].
jigAndToolsCompatibility <-- [chooseJigAndTools].
noseDesign <-- [doNoseDesign].
noseDesign2 <-- [doNoseDesign].
pert <-- [definePERT].
zones <-- [defineZones].
minimiseCashFlow <-- [helps(minimiseLeadTime)].
minimiseCashFlow2 <-- [helps(minimiseLeadTime2)].
minimiseInvestmentCost <-- [helps(minimiseFootprint)].
minimiseInvestmentCost3 <-- [helps(minimiseFootprint3)].
