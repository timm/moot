% PizzaCompany_andDelivery  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ pizzasAreDeliveredAtDomicile,
    pizzasDeliveredOnTime95ByJanuary12007 ].
goals(soft) <--
  [ or([ deliveriesInLimitedTerritory,
         speed,
         deliveryWithinOneTimeLimit,
         mututalBenefitsCustomerCompany,
         increaseMarketShare,
         safetyKitchenStreets,
         increaseMarketShare2 ]) ].
hireDriver <-- [hireDriver2].
instructionsAndCurrentTradeRegulations <--
  [ instructionsAndCurrentTradeRegulations2 ].
makePizzas <--
  [ instructionsAndCurrentTradeRegulations,
    deliverPizzas,
    hireDriver ].
pizzasAreDeliveredAtDomicile <-- [deliverPizzas].
pizzasDeliveredOnTime95ByJanuary12007 <-- [deliverPizzas].
deliveriesInLimitedTerritory <-- [makes(deliverPizzas)].
deliveryWithinOneTimeLimit <-- [helps(deliverPizzas), helps(speed)].
increaseMarketShare <-- [helps(makePizzas)].
mututalBenefitsCustomerCompany <-- [helps(makePizzas)].
safetyKitchenStreets <--
  [ helps(instructionsAndCurrentTradeRegulations) ].
speed <-- [helps(deliveriesInLimitedTerritory)].
