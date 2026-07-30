% SelfAdaptive_CustomerInformationSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ provideInformationToCustomer,
    establishNetworkConnection,
    getProductIdentifier,
    provideAnswer,
    queryMallDatabase,
    getAnswerThroughWebsite,
    establishWiredConnection,
    establishWirelessConnection ].
goals(soft) <--
  [ or([ reliableConnection,
         easyConnection ]) ].
establishNetworkConnection <-- [establishWiredConnection].
establishNetworkConnection <-- [establishWirelessConnection].
getAnswerThroughWebsite <-- [provideAnswer2].
getProductIdentifier <-- [customerTypesProductID].
getProductIdentifier <-- [readBarcode].
getProductIdentifier <-- [readRFIDTag].
provideAnswer <-- [queryMallDatabase].
provideAnswer <-- [getAnswerThroughWebsite].
provideInformationToCustomer <--
  [ getProductIdentifier,
    provideAnswer,
    establishNetworkConnection ].
easyConnection <--
  [ hurts(establishWiredConnection),
    helps(establishWirelessConnection) ].
reliableConnection <--
  [ helps(establishWiredConnection),
    hurts(establishWirelessConnection) ].
