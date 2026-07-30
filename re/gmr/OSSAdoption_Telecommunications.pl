% OSSAdoption_Telecommunications  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ costsReduced,
    maintainChangingComponent,
    licensingCostReduced,
    maintenanceCostReduced,
    developmentTimeReduced,
    ossCommunityMaintenanceObtained,
    x3ppMaintenanceObtained,
    timeToMarketReduced,
    ossComponentMaintained,
    supportObtained,
    developmentTimeReduced2 ].
goals(soft) <--
  [ or([ productsRequirementsAchieved,
         maintainableCode,
         secureCode,
         qualityOfCode,
         reputationKept,
         reputationKept2,
         reliableProducts,
         responsiveness ]) ].
adoptOSSComponent <-- [ossComponentCode, ossComponentDocumentation].
costsReduced <-- [licensingCostReduced].
costsReduced <-- [maintenanceCostReduced].
developmentTimeReduced <-- [adoptOSSComponent].
developmentTimeReduced2 <-- [developmentTimeReduced].
licensingCostReduced <-- [adoptOSSComponent].
maintainChangingComponent <-- [provideInHouseMaintenance].
maintainChangingComponent <-- [ossCommunityMaintenanceObtained].
maintainChangingComponent <-- [x3ppMaintenanceObtained].
maintenanceCostReduced <-- [developmentTimeReduced].
ossCommunityMaintenanceObtained <-- [bugReport].
provideInHouseMaintenance <-- [supportObtained].
reliableProducts <-- [productsRequirementsAchieved].
reputationKept2 <-- [reliableProducts, responsiveness].
responsiveness <-- [developmentTimeReduced].
timeToMarketReduced <-- [developmentTimeReduced2].
x3ppMaintenanceObtained <-- [ossComponentMaintained].
maintainableCode <-- [helps(qualityOfCode)].
productsRequirementsAchieved <--
  [ helps(qualityOfCode),
    helps(maintainChangingComponent) ].
qualityOfCode <--
  [ helps(secureCode),
    helps(provideInHouseMaintenance) ].
reputationKept <--
  [ helps(timeToMarketReduced),
    makes(reputationKept2) ].
