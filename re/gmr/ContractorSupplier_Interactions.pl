% ContractorSupplier_Interactions  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ fullfillCustomerOrder,
    orderReceived,
    orderPreparedAndShipped,
    invoiceSent,
    paymentReceived,
    haveBuildingFramingCompleted,
    neededMaterialIdentified,
    orderSubmitted,
    productsReceived,
    invoiceReceived,
    haveInvoicePaid,
    paymentSubmitted,
    orderReceived2,
    materialShipped,
    invoiceReceived2,
    paymentReceived2 ].
fullfillCustomerOrder <--
  [ orderReceived,
    orderPreparedAndShipped,
    invoiceSent,
    paymentReceived ].
haveBuildingFramingCompleted <--
  [ productsReceived,
    orderSubmitted,
    neededMaterialIdentified,
    paymentSubmitted ].
invoiceReceived <-- [invoiceReceived2].
invoiceReceived2 <-- [invoiceSent].
materialShipped <-- [orderPreparedAndShipped].
orderReceived <-- [orderReceived2].
orderReceived2 <-- [orderSubmitted].
paymentReceived <-- [paymentReceived2].
paymentReceived2 <-- [haveInvoicePaid].
paymentSubmitted <-- [invoiceReceived, haveInvoicePaid].
productsReceived <-- [materialShipped].
