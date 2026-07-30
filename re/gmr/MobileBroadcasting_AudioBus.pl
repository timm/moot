% MobileBroadcasting_AudioBus  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ contentRemoteControlled,
    broadcastingSucceeded,
    adequacyContent,
    segmentedContentDistributed,
    broadcastingContentMonitored,
    broadcastingContentRegistered,
    userProfileRegistered,
    broadcastingContentRegistered2,
    userProfileRegistered2 ].
goals(soft) <--
  [ or([ interestingAndContentAppropriated,
         passengerInterestAttracted,
         costEffectiveComparedToTraditionalMedia,
         costEffectiveness,
         passengerInterest,
         passengerInterestAttracted2,
         costEffectivenss,
         interestingAndContentAppropriated2 ]) ].
adequacyContent <-- [interestingAndContentAppropriated2].
broadcastingContentMonitored <-- [controlContentRemotely].
broadcastingContentRegistered <-- [broadcastingContentRegistered2].
broadcastingSucceeded <--
  [ broadcastingContentMonitored,
    segmentedContentDistributed,
    adequacyContent ].
controlContentRemotely <-- [contentRemoteControlled].
costEffectiveness <-- [costEffectivenss].
costEffectivenss <-- [costEffectiveComparedToTraditionalMedia].
interestingAndContentAppropriated2 <--
  [ interestingAndContentAppropriated ].
passengerInterest <-- [passengerInterestAttracted2].
passengerInterestAttracted2 <-- [passengerInterestAttracted].
segmentedContentDistributed <--
  [ userProfileRegistered,
    broadcastingContentRegistered ].
userProfileRegistered <-- [userProfileRegistered2].
