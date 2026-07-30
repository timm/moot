% MeetingScheduling  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ haveMeetingScheduled,
    bookMeeting,
    constraintsGathered,
    meetingAnnounced,
    requestBased,
    requestConstraintsByEmail,
    responseReceived,
    waitForResponsesToArrive ].
goals(soft) <--
  [ or([ reduceLabor,
         quickScheduling,
         maximizeAttendance,
         avoidAnnoyingTheParticipants ]) ].
bookMeeting <-- [findSuitableSlotFs, findSuitableRoomFr].
constraintsGathered <-- [requestBased].
constraintsGathered <-- [automaticallyAu].
haveMeetingScheduled <--
  [ constraintsGathered,
    bookMeeting,
    meetingAnnounced,
    participantsAttendMeetingPam ].
meetingAnnounced <-- [sendEmailSe, sendAttendanceReminderSar].
requestBased <-- [requestConstraintsByEmail].
requestBased <-- [callEverybodyCe].
requestConstraintsByEmail <-- [sendInvitationSi, responseReceived].
responseReceived <-- [waitForResponsesToArrive, receiveResponsesRr].
waitForResponsesToArrive <-- [waitOneDayW1].
waitForResponsesToArrive <-- [waitForAWeekW7].
waitForResponsesToArrive <-- [waitThreeDaysW3].
avoidAnnoyingTheParticipants <--
  [ hurts(sendAttendanceReminderSar),
    hurts(callEverybodyCe) ].
maximizeAttendance <-- [helps(sendEmailSe), helps(callEverybodyCe)].
quickScheduling <-- [helps(callEverybodyCe)].
reduceLabor <-- [helps(automaticallyAu), hurts(callEverybodyCe)].
