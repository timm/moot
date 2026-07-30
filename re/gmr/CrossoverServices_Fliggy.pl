% CrossoverServices_Fliggy  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ provideHotelBookingService,
    hotelInformationRetrival,
    onlineHotelBooking,
    orderHandling,
    bookingHotel,
    bookingOnline,
    bookingByPhone,
    payForHotelOrder,
    searchHotel ].
alipayService <-- [makeCollectionsPayByAlipay].
bookingHotel <-- [bookingByPhone].
bookingHotel <-- [bookingOffline].
bookingHotel <-- [bookingOnline].
bookingOnline <--
  [ submitAHotelOrder,
    searchHotel,
    payForHotelOrder,
    consumeHotelService ].
hotelInformationRetrival <-- [retrivalByKeyword].
hotelInformationRetrival <-- [retrivalByPrice].
hotelInformationRetrival <-- [retrivalByLocation].
onlineHotelBooking <-- [scanHotelInformation, addToShoppingCart].
orderHandling <-- [makeCollectionsPayByAlipay, confirmAnOrder].
payByAlipay <-- [alipayService].
payForHotelOrder <-- [payByAlipay].
payForHotelOrder <-- [payByCreditCard].
provideHotelBookingService <--
  [ hotelInformationRetrival,
    onlineHotelBooking,
    orderHandling ].
