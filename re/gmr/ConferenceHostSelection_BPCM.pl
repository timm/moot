% ConferenceHostSelection_BPCM  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <-- [conferenceHostSelected].
goals(soft) <--
  [ or([ goodCandidatesToChooseFrom,
         noHardFeelingAmongThoseNotSelected ]) ].
conferenceHostSelected <-- [distributeRulesForMakingASelection].
conferenceHostSelected <-- [selectConferenceHost].
invitationLetterWithConferenceHistoryInfo <--
  [ sendAnInvitationForHostingConference ].
notificationAboutTheDecision <-- [notifyTheProposersAboutTheDecision].
rulesForDecision <-- [distributeRulesForMakingASelection].
selectConferenceHost <-- [decision].
sendAnInvitationForHostingConference <--
  [ proposalsForHostingConference ].
goodCandidatesToChooseFrom <--
  [ helps(sendAnInvitationForHostingConference) ].
