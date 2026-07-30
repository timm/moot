% buyerDriveECommerce  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [lowPriceServiceProviderBeFound].
goals(soft) <--
  [ or([ loyalty,
         attractMoreCustomersService,
         acceptablePriceService,
         goodQualityService ]) ].
