% HearingAids_SaleAndDistribution_SPL  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ verifying,
    checkMethod,
    reservationMethod,
    printingMethod,
    editOrderMethod,
    clientInfoRetrievable,
    discountBeControlled,
    orderBeConfirmed ].
goals(soft) <--
  [ or([ quickness,
         customerSatisfaction,
         infoReusability,
         convenience ]) ].
applyForDiscount <-- [verifySpecialDiscount].
checkMethod <-- [pass].
checkMethod <-- [return].
clientInfoRetrievable <-- [addNewClient].
clientInfoRetrievable <-- [recallRegisteredClient].
discountBeControlled <-- [prohibitSubmittingOrder].
discountBeControlled <-- [handleSpecialCase].
editCustomizedOrder <--
  [ inputInforOfTheCustomized,
    clientInfoRetrievable ].
editOrderMethod <-- [editOrdinaryOrder].
editOrderMethod <-- [editCustomizedOrder].
goods <-- [ship].
handleGoodsArrival <-- [goods].
handleSpecialCase <-- [applyForDiscount].
inputInforOfTheCustomized <--
  [ chooseModelOfTheCustomized,
    discountBeControlled ].
manageOrder <-- [handleGoodsArrival, queryModifyOrder, placeOrder].
manageReservation <-- [reservationMethod].
online <-- [signIn, reserve].
orderBeConfirmed <-- [verifyOrder].
placeOrder <-- [editOrderMethod, saveOrder, submitOrder].
printingMethod <-- [printOrderForm].
printingMethod <-- [printBarCode].
processOrder <-- [verifying, ship].
queryModifyOrder <-- [queryOrder, modifyOrder, printingMethod].
reservationMethod <-- [online].
sellHearingAids <-- [manageReservation, manageOrder].
ship <-- [order, checkUpdateInventory].
submitOrder <-- [orderBeConfirmed].
verifyOrder <-- [order2, checkMethod].
verifying <-- [verifySpecialDiscount].
verifying <-- [verifyOrder].
convenience <-- [helps(infoReusability)].
customerSatisfaction <-- [helps(printingMethod)].
infoReusability <--
  [ makes(recallRegisteredClient),
    breaks(addNewClient) ].
quickness <-- [helps(online), hurts(byPhoneNonSystemElement)].
