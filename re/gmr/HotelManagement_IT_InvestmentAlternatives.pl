% HotelManagement_IT_InvestmentAlternatives  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [acquireCRSSystem].
goals(soft) <--
  [ or([ websiteUsabilityFriendliness,
         maximizeProfit,
         facilitateControl ]) ].
acquireCRSSystem <-- [inHouse].
acquireCRSSystem <-- [rentApplication].
developHotelWebsite <-- [longTermWebTechnologies].
developHotelWebsite <-- [quickFixWebTechnologies].
rentApplication <-- [applications].
useICTs <-- [developHotelWebsite, acquireCRSSystem].
facilitateControl <-- [helps(inHouse), hurts(rentApplication)].
maximizeProfit <-- [helps(websiteUsabilityFriendliness)].
websiteUsabilityFriendliness <--
  [ helps(quickFixWebTechnologies),
    helps(longTermWebTechnologies) ].
