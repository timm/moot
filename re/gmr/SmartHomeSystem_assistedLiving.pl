% SmartHomeSystem_assistedLiving  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ temperatureBeManaged,
    lightingBeManaged,
    provideMeals,
    tenantIsWellNourished,
    manageFoodStockSupply,
    inviteAFriend ].
goals(soft) <--
  [ or([ energySpentWisely,
         reliability,
         adaptability,
         safety,
         saveMoney,
         entertainment,
         fastResponse,
         customization,
         customization2,
         fastResponse2 ]) ].
assistTheTenantCookingTheMeal <-- [provideRecipe].
buyFoodWhenRequired <-- [orderFoodWhenRequired].
controlAirVentilator <-- [turnNoAirVentilator, turnOffAirVentilator].
controlAlarm <-- [activateAlarm, deactivateAlarm].
controlDoorsLock <-- [unlockDoors, lockDoors].
controlGasValves <-- [closeGasValves, openGasValves].
controlHeatingDevice <-- [turnOffHeatingDevice, turnOnHeatingDevice].
controlLights <-- [turnOffLights, turnOnLights].
controlPowerOutlets <--
  [ deactivatePowerOutlets,
    activatePowerOutlets ].
controlWindows <-- [openWindows, closeWindows].
customization <-- [customization2].
customizePlaylistAccordingToPreferences <--
  [ selectSongsAccordingToPreferences ].
fastResponse <-- [fastResponse2].
keepTrackOfConsumedFood <-- [monitorFoodConsumption].
keepTrackOfConsumedMedicines <-- [monitorMedicineConsumption].
lightingBeManaged <-- [manageLighting].
manageFireIncident <--
  [ openWindows,
    closeGasValves,
    unlockDoors,
    deactivatePowerOutlets,
    activateAlarm,
    manageFireIncident2 ].
manageFireIncident2 <-- [notifyFireDepartment, notifyTenants].
manageFoodStockSupply <-- [buyFoodWhenRequired].
manageLighting <-- [selectLightingPolicy, controlLights].
manageSoundSystem <--
  [ playMusic,
    customizePlaylistAccordingToPreferences,
    directSoundOnlyToOccupiedRooms ].
manageTenantNutrition <--
  [ provideMeals,
    suggestDailyMenu,
    keepTrackOfConsumedFood,
    keepTrackOfConsumedMedicines ].
monitorFoodConsumption <-- [storeFoodConsumptionData].
orderFoodWhenRequired <-- [getFoodStockStatus].
provideMeals <-- [assistTheTenantCookingTheMeal].
provideMeals <-- [requestRestaurantMeals].
provideRecipe <-- [getFoodStockStatus2].
scheduleSocialEventWithAFriend <-- [inviteAFriend].
selectLightingPolicy <-- [lightingByOccupancy, occupancySimulation].
selectSongsAccordingToPreferences <-- [getMusicalPreferences].
temperatureBeManaged <-- [controlHeatingDevice].
temperatureBeManaged <-- [controlAirVentilator].
temperatureBeManaged <-- [controlWindows].
tenantIsWellNourished <-- [manageTenantNutrition].
adaptability <--
  [ helps(preventFailures),
    helps(selectBestBehaviourAccordingToTheEnvironment) ].
energySpentWisely <--
  [ helps(closeWindows),
    hurts(turnNoAirVentilator),
    helps(turnOffAirVentilator),
    hurts(turnOnHeatingDevice),
    helps(turnOffHeatingDevice),
    helps(manageLighting),
    helps(controlPowerOutlets) ].
entertainment <--
  [ helps(scheduleSocialEventWithAFriend),
    helps(manageSoundSystem) ].
reliability <-- [helps(adaptability)].
safety <-- [helps(occupancySimulation), helps(manageFireIncident)].
saveMoney <--
  [ helps(energySpentWisely),
    helps(assistTheTenantCookingTheMeal),
    hurts(requestRestaurantMeals) ].
