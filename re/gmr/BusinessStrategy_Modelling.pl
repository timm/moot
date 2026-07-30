% BusinessStrategy_Modelling  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ offerOnLineRentServiceStep2,
    remotePropertyRentingStep1,
    lessThan1OfRentsWithLegalProblemsStep3,
    x10BookingsPerWeek,
    availablePropertiesShownStep4,
    propertyBookedStep4 ].
implementVirtualShowroomAndBookingStep2 <--
  [ developOnLineBookingAndPaymentStep2,
    developVirtualShowroomStep2 ].
offerOnLineRentServiceStep2 <--
  [ implementVirtualShowroomAndBookingStep2,
    protectFromLegalIssuesStep2 ].
