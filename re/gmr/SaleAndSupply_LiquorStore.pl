% SaleAndSupply_LiquorStore  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ manageOrders,
    supplyLiquor,
    oderLiquor,
    automateOrderProcessing ].
goals(soft) <--
  [ or([ efficientOrderProcessing,
         reliableSupply,
         customerSatisfaction,
         systemReliability ]) ].
automateOrderProcessing <-- [processOrders].
checkStockAvailability <-- [liquorInventory, reservationList].
deliverLiquor <-- [liquorShipment].
manageOrders <-- [shipLiquor, checkStockAvailability].
oderLiquor <-- [cancelOrder, placeOrder].
placeOrder <-- [orderConfirmation].
processOrders <-- [orderData].
supplyLiquor <-- [deliverLiquor].
customerSatisfaction <-- [helps(oderLiquor)].
efficientOrderProcessing <-- [helps(manageOrders)].
reliableSupply <-- [helps(supplyLiquor)].
systemReliability <-- [helps(automateOrderProcessing)].
