% OnlineCustomerOrder_ProcessingSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ increaseSales,
    fulfillOrderProcess,
    enableCustomerRegistration,
    providePaymentCapabilities,
    ensureReliableDelivery,
    providePaymentByBankTransfer,
    enableAccountCreation,
    enableCustomerLogin,
    presentCustomerProfile,
    provideAccountLoginData,
    providePaymentByCreditCard,
    enableCardAuthorization,
    ensureWorthinessOfCreditCard,
    enableChargingOfTheCreditCard,
    orderProcessedSuccessful ].
chargeCreditCard <-- [customerCreditCard].
checkCreditWorthiness <-- [customerCreditCard].
createNewCustomerAccount <-- [loginData].
creditCard <-- [enterCreditCardNumber, creditCard2].
creditCard2 <-- [customerCreditCard].
enableAccountCreation <-- [createNewCustomerAccount].
enableChargingOfTheCreditCard <-- [chargeCreditCard].
enableCustomerLogin <--
  [ presentCustomerProfile,
    provideAccountLoginData ].
enableCustomerRegistration <-- [enableAccountCreation].
enableCustomerRegistration <-- [enableCustomerLogin].
ensureReliableDelivery <-- [traceProductDelivery].
ensureReliableDelivery <-- [deliverOrderedProducts].
ensureWorthinessOfCreditCard <-- [checkCreditWorthiness].
enterCreditCardNumber <-- [enableCardAuthorization].
fulfillOrderProcess <--
  [ enableCustomerRegistration,
    providePaymentCapabilities,
    ensureReliableDelivery ].
increaseSales <-- [orderProcessedSuccessful].
loginToExistingAccoutn <-- [loginData].
orderProcessedSuccessful <-- [fulfillOrderProcess].
presentCustomerProfile <-- [loadCustomerProfile].
provideAccountLoginData <-- [loginToExistingAccoutn].
providePaymentByBankTransfer <-- [payByBankTransfer].
providePaymentByCreditCard <--
  [ enableChargingOfTheCreditCard,
    ensureWorthinessOfCreditCard,
    enableCardAuthorization ].
providePaymentCapabilities <-- [providePaymentByBankTransfer].
providePaymentCapabilities <-- [providePaymentByCreditCard].
