% DecisionMaking_CyberSecurity  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ companySecured,
    contextualInformationGained,
    threatsKnown,
    newOptionsAvailable,
    vulnerabilitiesKnown,
    humanErrorsPrevented,
    phishingPrevented,
    physicalInfiltrationPrevented,
    virusMalwarePrevented,
    unusualNetworkActivityMonitored,
    unauthorisedDataAccessPrevented,
    unauthorizedAccessPrevented,
    dosAndPortScanningPrevented,
    dataExfiltrationPrevented,
    pcDisruptionPrevented,
    controllerDisruptionPrevented,
    theftPrevented,
    buggingOfEquipmentPrevented,
    serverDisruptionPrevented ].
goals(soft) <--
  [ or([ confidentiality,
         dataIntegrity,
         availability,
         responseTime ]) ].
assessTheThreats <-- [threatAssessment].
assessTheVulnerabilities <-- [assetAudit].
buggingOfEquipmentPrevented <-- [installCCTV].
companySecured <--
  [ contextualInformationGained,
    humanErrorsPrevented,
    unauthorizedAccessPrevented ].
contextualInformationGained <-- [threatsKnown].
contextualInformationGained <-- [newOptionsAvailable].
contextualInformationGained <-- [vulnerabilitiesKnown].
controllerDisruptionPrevented <-- [upgradeTheController].
controllerDisruptionPrevented <-- [installCCTV].
dataExfiltrationPrevented <-- [installFirewall].
dataExfiltrationPrevented <-- [upgradeThePCs].
dosAndPortScanningPrevented <-- [installFirewall].
educateStaff <-- [securityTraining].
encryptDatabases <-- [databaseEncryption].
encryptPCs <-- [pcEncryption].
humanErrorsPrevented <-- [phishingPrevented].
humanErrorsPrevented <-- [physicalInfiltrationPrevented].
installAntivirus <-- [antivirus].
installCCTV <-- [cctvOffice, cctvPlant].
installFirewall <-- [firewallOffice, firewallPlant].
installNetworkMonitoring <--
  [ networkMonitoringPlant,
    networkMonitoringOffice ].
newOptionsAvailable <-- [assessTheThreats].
newOptionsAvailable <-- [assessTheVulnerabilities].
pcDisruptionPrevented <-- [upgradeThePCs].
phishingPrevented <-- [educateStaff].
physicalInfiltrationPrevented <-- [educateStaff].
serverDisruptionPrevented <-- [installCCTV].
serverDisruptionPrevented <-- [upgradeTheServer].
theftPrevented <-- [installCCTV].
threatsKnown <-- [assessTheThreats].
threatsKnown <-- [assessTheVulnerabilities].
unauthorisedDataAccessPrevented <-- [encryptDatabases, encryptPCs].
unauthorizedAccessPrevented <-- [virusMalwarePrevented].
unauthorizedAccessPrevented <-- [unusualNetworkActivityMonitored].
unauthorizedAccessPrevented <-- [unauthorisedDataAccessPrevented].
unauthorizedAccessPrevented <-- [controllerDisruptionPrevented].
unauthorizedAccessPrevented <-- [theftPrevented].
unauthorizedAccessPrevented <-- [buggingOfEquipmentPrevented].
unauthorizedAccessPrevented <-- [serverDisruptionPrevented].
unauthorizedAccessPrevented <-- [pcDisruptionPrevented].
unauthorizedAccessPrevented <-- [dataExfiltrationPrevented].
unauthorizedAccessPrevented <-- [dosAndPortScanningPrevented].
unusualNetworkActivityMonitored <-- [installNetworkMonitoring].
upgradeTheController <-- [controllerUpgrade].
upgradeThePCs <-- [pcUpgrade].
upgradeTheServer <-- [serverUpgrade].
virusMalwarePrevented <-- [installAntivirus].
vulnerabilitiesKnown <-- [assessTheThreats].
vulnerabilitiesKnown <-- [assessTheVulnerabilities].
availability <--
  [ helps(unusualNetworkActivityMonitored),
    helps(dosAndPortScanningPrevented),
    helps(pcDisruptionPrevented),
    helps(controllerDisruptionPrevented),
    helps(theftPrevented),
    helps(buggingOfEquipmentPrevented) ].
confidentiality <--
  [ helps(phishingPrevented),
    helps(virusMalwarePrevented),
    helps(unusualNetworkActivityMonitored),
    helps(unauthorisedDataAccessPrevented),
    helps(dataExfiltrationPrevented),
    helps(theftPrevented),
    helps(buggingOfEquipmentPrevented) ].
dataIntegrity <--
  [ helps(virusMalwarePrevented),
    helps(unusualNetworkActivityMonitored),
    helps(buggingOfEquipmentPrevented) ].
responseTime <-- [helps(dosAndPortScanningPrevented)].
