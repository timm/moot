% TechnologyTrust_and_BusinessStrategy  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ obtainLicensedCopyrightedContent,
    licensedCopyrightedContentBeProduced,
    makeProfit,
    makeProfit2,
    technologyBeObtained ].
goals(soft) <--
  [ or([ legality,
         affordableLicensedCopyrightedContent,
         profit,
         legality2,
         profit2,
         notoriety,
         profit3,
         desirableToTechnologyUsersTechnology,
         technologyUsersAbideByLicensingRegulations,
         gainTrustOfTechnologyUser,
         compatibilityWithExistingTechnology,
         privacyUserInformation,
         securityTechnology,
         freedomUseOfTechnologyByTechnologyUser,
         abideByLicensingRegulations,
         affordableTechnology,
         desirableTechnology,
         trustTechnologyProvider,
         freedomUseOfTechnology,
         securityTechnology2,
         privacyUserInformation2,
         compatibilityWithExistingTechnology2,
         legality3,
         freedomUseOfTechnology2,
         securityTechnology3,
         privacyUserInformation3,
         compatibilityWithExistingTechnology3,
         trustTechnologyProvider2,
         technologyUsersAbideByLicensingRegulations2,
         allowUseOfTechnologyToExchangeAndUseOwnedContent ]) ].
allowUseOfTechnologyToExchangeAndUseOwnedContent <--
  [ freedomUseOfTechnologyByTechnologyUser ].
compatibilityWithExistingTechnology2 <--
  [ compatibilityWithExistingTechnology3 ].
compatibilityWithExistingTechnology3 <--
  [ compatibilityWithExistingTechnology ].
dependum <-- [freeExchangeAndUseOfLicensedCopyrightedContent].
freeExchangeAndUseOfLicensedCopyrightedContent <--
  [ allowUseOfTechnologyToExchangeAndUseOwnedContent ].
freedomUseOfTechnology <-- [freedomUseOfTechnology2].
freedomUseOfTechnology2 <-- [freedomUseOfTechnologyByTechnologyUser].
gainTrustOfTechnologyUser <-- [trustTechnologyProvider2].
legality2 <-- [legality3].
legality3 <-- [legality].
licensedCopyrightedContent <-- [licensedCopyrightedContentBeProduced].
makeProfit <-- [payment].
makeProfit2 <-- [payment2].
obtainContentFormDataPirate <-- [piratedLicensedCopyrightedContent].
obtainLicensedCopyrightedContent <--
  [ purchaseContentFromLicenseCopyrightHolder ].
obtainLicensedCopyrightedContent <-- [obtainContentFormDataPirate].
obtainTechnologyFromDataPirate <-- [dependum, piratedTechnology].
payment <-- [purchaseContentFromLicenseCopyrightHolder].
payment2 <-- [purchaseTechnology].
piratedLicensedCopyrightedContent <--
  [ freeExchangeAndUseOfLicensedCopyrightedContent ].
piratedTechnology <--
  [ freeExchangeAndUseOfLicensedCopyrightedContent ].
privacyUserInformation2 <-- [privacyUserInformation3].
privacyUserInformation3 <-- [privacyUserInformation].
profitFromLicensedCopyrightedContent <--
  [ licensedCopyrightedContentBeProduced ].
purchaseContentFromLicenseCopyrightHolder <--
  [ licensedCopyrightedContent ].
purchaseTechnology <-- [technology].
securityTechnology2 <-- [securityTechnology3].
securityTechnology3 <-- [securityTechnology].
sellTechnologyForProfit <-- [produceTechnology].
technology <-- [produceTechnology].
technologyBeObtained <-- [purchaseTechnology].
technologyUsersAbideByLicensingRegulations <--
  [ technologyUsersAbideByLicensingRegulations2 ].
technologyUsersAbideByLicensingRegulations2 <--
  [ abideByLicensingRegulations ].
trustTechnologyProvider2 <-- [trustTechnologyProvider].
abideByLicensingRegulations <--
  [ makes(purchaseTechnology),
    hurts(obtainTechnologyFromDataPirate) ].
affordableLicensedCopyrightedContent <--
  [ makes(obtainContentFormDataPirate),
    hurts(purchaseContentFromLicenseCopyrightHolder) ].
affordableTechnology <--
  [ hurts(purchaseTechnology),
    makes(obtainTechnologyFromDataPirate) ].
desirableTechnology <--
  [ helps(compatibilityWithExistingTechnology2),
    helps(privacyUserInformation2),
    helps(securityTechnology2),
    helps(freedomUseOfTechnology) ].
desirableToTechnologyUsersTechnology <--
  [ helps(freedomUseOfTechnologyByTechnologyUser),
    helps(securityTechnology),
    helps(privacyUserInformation),
    helps(compatibilityWithExistingTechnology) ].
legality <-- [makes(purchaseContentFromLicenseCopyrightHolder)].
notoriety <-- [helps(spreadViruses), helps(accessStoredData)].
profit <-- [makes(legality2), makes(makeProfit)].
profit2 <-- [helps(accessStoredData)].
profit3 <--
  [ helps(desirableToTechnologyUsersTechnology),
    helps(technologyUsersAbideByLicensingRegulations),
    helps(gainTrustOfTechnologyUser),
    makes(makeProfit2) ].
trustTechnologyProvider <--
  [ helps(freedomUseOfTechnology),
    helps(securityTechnology2),
    helps(privacyUserInformation2),
    helps(compatibilityWithExistingTechnology2) ].
