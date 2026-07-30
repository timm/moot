% SocialNetworkSites_Privacy  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ dataBeAccessed,
    accessibilityCustomerData,
    userInterestProfileBeCreated,
    accuracyUserInterestProfile,
    availabilityUserSide,
    profitsBeEarned,
    userProfileBeCreated,
    personalDataBeDisclosed,
    consentBeGranted ].
goals(soft) <--
  [ or([ profitability,
         customerInsights,
         compliancePrivacy,
         profitability2,
         revenueIncreaseAdvertising,
         revenueIncreaseDataSharing,
         platformExpansionTime,
         innovationGrowth,
         personalizationService,
         extendedServices,
         dataPartnershipIncrease,
         availabilityPartnerSide,
         accuracyUserInterestProfile2,
         limitedCollection,
         limitedUseDisclosureRentention,
         adequateMonitoringOfDataUses,
         consentUser,
         compliancePrivacy2,
         accountability,
         availabilityUserSide2,
         socialization,
         recognition,
         fullfilment,
         engagement,
         functionality,
         personalizationService2,
         extendedServices2,
         privacyPersonalData,
         complianceSNS,
         identifyingPurposes,
         limitedUseDisclosureRetention,
         limitedCollection2,
         consentForSpecificPurposes,
         identifyingPurposes2,
         availabilityPartnerSide2,
         accessibilityCustomerData2,
         extendedServices3,
         personalizationService3,
         complianceSNS2,
         availabilityUserData ]) ].
accessibilityCustomerData <-- [accessibilityCustomerData2].
accessibilityCustomerData2 <-- [grantDataAccessToPartner].
accuracyUserInterestProfile <-- [trackUserBehavioralData].
availabilityPartnerSide <-- [availabilityPartnerSide2].
availabilityPartnerSide2 <-- [provideDataOrServicesToSNSProvider].
availabilityUserData <-- [performSelfDisclosure].
availabilityUserSide <-- [availabilityUserData].
complianceSNS <-- [complianceSNS2].
complianceSNS2 <-- [compliancePrivacy2].
consentBeGranted <-- [signDataPolicyAgreement].
consentBeGranted <-- [x6].
dataBeAccessed <-- [x].
dataBeAccessed <-- [reachDataPartnership].
extendedServices2 <-- [extendedServices3].
extendedServices3 <-- [extendedServices].
performSelfDisclosure <--
  [ userProfileBeCreated,
    personalDataBeDisclosed,
    consentBeGranted ].
personalDataBeDisclosed <-- [x5].
personalDataBeDisclosed <-- [usePublicPublication].
personalizationService2 <-- [personalizationService3].
personalizationService3 <-- [personalizationService].
profitsBeEarned <-- [reachDataPartnership2].
profitsBeEarned <-- [x3].
reachDataPartnership <--
  [ provideDataOrServicesToSNSProvider,
    accessibilityCustomerData ].
reachDataPartnership2 <--
  [ availabilityUserSide,
    grantDataAccessToPartner ].
userInterestProfileBeCreated <-- [x2].
userInterestProfileBeCreated <-- [trackUserBehavioralData].
userProfileBeCreated <-- [useRealInformation].
userProfileBeCreated <-- [x4].
accountability <-- [helps(adequateMonitoringOfDataUses)].
accuracyUserInterestProfile2 <--
  [ makes(accuracyUserInterestProfile),
    helps(availabilityPartnerSide),
    helps(availabilityUserSide2),
    helps(availabilityUserSide) ].
adequateMonitoringOfDataUses <-- [hurts(reachDataPartnership2)].
availabilityUserSide2 <-- [makes(availabilityUserSide)].
compliancePrivacy <-- [hurts(provideDataOrServicesToSNSProvider)].
compliancePrivacy2 <-- [helps(consentUser), helps(accountability)].
consentForSpecificPurposes <--
  [ helps(limitedCollection2),
    helps(limitedUseDisclosureRetention),
    hurts(signDataPolicyAgreement) ].
consentUser <--
  [ helps(limitedCollection),
    helps(limitedUseDisclosureRentention) ].
customerInsights <-- [helps(accessibilityCustomerData)].
dataPartnershipIncrease <-- [helps(reachDataPartnership2)].
engagement <-- [helps(personalizationService2)].
extendedServices <-- [helps(dataPartnershipIncrease)].
fullfilment <-- [helps(functionality)].
functionality <-- [helps(extendedServices2)].
identifyingPurposes <-- [helps(identifyingPurposes2)].
identifyingPurposes2 <-- [makes(consentForSpecificPurposes)].
innovationGrowth <-- [helps(platformExpansionTime)].
limitedCollection <-- [hurts(availabilityUserSide)].
limitedCollection2 <-- [hurts(useRealInformation)].
limitedUseDisclosureRentention <--
  [ hurts(trackUserBehavioralData),
    hurts(reachDataPartnership2) ].
limitedUseDisclosureRetention <-- [hurts(usePublicPublication)].
personalizationService <-- [helps(accuracyUserInterestProfile2)].
platformExpansionTime <--
  [ helps(personalizationService),
    helps(extendedServices) ].
privacyPersonalData <--
  [ helps(identifyingPurposes),
    helps(complianceSNS) ].
profitability <-- [helps(customerInsights)].
profitability2 <--
  [ helps(revenueIncreaseAdvertising),
    helps(revenueIncreaseDataSharing) ].
recognition <-- [helps(useRealInformation)].
revenueIncreaseAdvertising <-- [helps(platformExpansionTime)].
revenueIncreaseDataSharing <-- [helps(dataPartnershipIncrease)].
socialization <--
  [ helps(recognition),
    helps(fullfilment),
    helps(engagement) ].
