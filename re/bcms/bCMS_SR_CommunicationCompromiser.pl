% bCMS_SR_CommunicationCompromiser  (nfr3 dialect, from istarml)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ accessConfidentialInformation,
    disruptCommunications,
    changeConfidentialInformation ].
goals(soft) <--
  [ or([ achievePersonalGain,
         achieveMonetaryGain,
         disruptingHandlingOfCrisisSituation ]) ].
accessConfidentialInformation <--
  [ confidentialInformation,
    confidentialInformation2,
    confidentialInformation3,
    confidentialInformation4 ].
