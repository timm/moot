% CleaningRobotSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ fieldCleaned,
    batteryMaintained,
    objectReachable,
    batteryLevelObserved,
    stationReachable,
    batteryCharged,
    dustReachable,
    suitableCleaningMethodPerformed,
    dustDisposedOf,
    currentPositionDetected,
    objectFound,
    gotCloseToObject ].
batteryCharged <-- [chargeBattery].
batteryLevelObserved <-- [observeBatteryLevel].
batteryMaintained <--
  [ batteryLevelObserved,
    stationReachable,
    batteryCharged,
    maintainBattery ].
chargeBattery <-- [batteryStation, batteryLevel].
currentPositionDetected <-- [detectCurrentPosititon].
detectCurrentPosititon <-- [currentPosition].
disposeOfDust <--
  [ dust,
    dustReachable,
    suitableCleaningMethodPerformed ].
dustDisposedOf <-- [disposeOfDust].
dustPickedUp <-- [robotArm].
dustVacuumed <-- [vacuumDevice].
fieldCleaned <-- [dustDisposedOf, batteryMaintained, objectReachable].
findObject <-- [objectPosition].
getCloseToObject <-- [distance].
gotCloseToObject <-- [getCloseToObject].
maintainBattery <-- [battery].
objectFound <-- [findObject].
objectReachable <--
  [ currentPositionDetected,
    objectFound,
    gotCloseToObject ].
observeBatteryLevel <-- [batteryLevel].
reachStation <-- [batteryStation].
stationReachable <-- [reachStation].
suitableCleaningMethodPerformed <-- [dustPickedUp].
suitableCleaningMethodPerformed <-- [dustVacuumed].
