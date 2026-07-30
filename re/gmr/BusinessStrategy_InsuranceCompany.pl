% BusinessStrategy_InsuranceCompany  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ homeTheftInsuranceDelivered,
    marketResearchedIn10Days,
    campaignDelivered10DaysBeforeReleaseDate,
    x20OfTargetCustomersReached,
    x70OfCurrentCustomersReached ].
advertiseNewProduct <--
  [ designMarketingCampaign,
    performTelemarketing ].
createNewProduct <-- [researchMarketInformation].
homeTheftInsuranceDelivered <--
  [ createNewProduct,
    advertiseNewProduct ].
