% App_LoginSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ automatedRegistration,
    confirmTheAccountActivationEmail,
    ensuringSecurityOfContent,
    confirmUser,
    accessSecureContent,
    customizeAccoutn,
    customizePassword,
    rememberThePassword ].
accessSecureContent <-- [provideSecureContent].
automatedRegistration <-- [assignTheUserPassword].
changeTheDefaultPassword <-- [usePassword].
chooseYourUsername <-- [username].
confirmTheAccountActivationEmail <-- [sendEmailRegistry].
confirmUser <-- [requestInformationPasswordReminder].
customizeAccoutn <-- [chooseYourUsername].
customizePassword <-- [changeTheDefaultPassword].
ensuringSecurityOfContent <-- [requestToLoginUser].
provideSecureContent <-- [havingUsername, havingPassword].
registerPasswordReminder <-- [passwordReminder].
rememberThePassword <-- [registerPasswordReminder].
