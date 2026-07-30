% TravelReimbursement_ResearchTrip  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ travelOrganized,
    ticketsBooked,
    authorizationObtained,
    authorizationOfferredAfterApplication,
    applicationPreparedAfterBookedTickets ].
goals(soft) <--
  [ or([ maintainPrivacy,
         avoidMoneyLoss,
         reduceCost,
         increaseEfficiency,
         successChance ]) ].
applicationPreparedAfterBookedTickets <-- [fillInPaperFormPpr].
applicationPreparedAfterBookedTickets <-- [fillInOnLineFormOnl].
authorizationObtained <--
  [ authorizationOfferredAfterApplication,
    applicationPreparedAfterBookedTickets ].
authorizationOfferredAfterApplication <-- [committeeAuthorizesCmt].
authorizationOfferredAfterApplication <-- [headOfDeptAuthorizesHead].
ticketsBooked <-- [bookRefundableTicketsRef].
ticketsBooked <-- [bookNonRefundableTicketsNRef].
travelOrganized <-- [ticketsBooked, authorizationObtained].
avoidMoneyLoss <-- [helps(bookNonRefundableTicketsNRef)].
increaseEfficiency <--
  [ hurts(fillInOnLineFormOnl),
    helps(committeeAuthorizesCmt) ].
maintainPrivacy <-- [hurts(committeeAuthorizesCmt)].
reduceCost <-- [helps(bookNonRefundableTicketsNRef)].
successChance <--
  [ helps(committeeAuthorizesCmt),
    hurts(headOfDeptAuthorizesHead) ].
