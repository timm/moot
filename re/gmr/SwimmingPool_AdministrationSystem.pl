% SwimmingPool_AdministrationSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ useSwimmingPoolFacility,
    registerToSwimmingPoolSystem,
    obtainRequiredCertificates,
    obtainBirthCertificate,
    accessMACS,
    obtainMedicalCertificate,
    obtainMedicalCertificate2,
    processCitizenRequests,
    allowAccessToCitizens,
    manageCitizenDocuments,
    obtainBirthCertificate2,
    checkCitizenApplication,
    facilitateSwimmingPoolAdministration,
    registerToSwimmingPoolSystem2,
    monitorAccessToFacility,
    checkCitizenApplication2,
    checkCitizenApplication3,
    obtainBirthCertificate3,
    obtainMedicalCertificate3,
    registerToSwimmingPoolSystem3 ].
accessSwimmingPoolFacility <-- [badge].
allowAccessToCitizens <-- [createNewCitizenAccount].
allowAccessToCitizens <-- [signInCitizensWithExistingAccount].
checkBadgeValidity <-- [badge2].
checkCitizenApplication <--
  [ checkCertificateValidity,
    approveCitizenRegistration ].
checkCitizenApplication2 <-- [checkCitizenCertificate].
checkCitizenCertificate <-- [citizenCertificatesCertifiedCopies].
createCitizenCertificatesCert <--
  [ citizenCertificateCertifiedCopy,
    forwardCopiesToThirdParties ].
createLog <-- [log].
createMedicalCertificate <--
  [ medicalCertificate,
    obtainMedicalCertificate2 ].
createNewCitizenAccount <-- [amka2].
createNewCitizenAccount2 <-- [registrationApprovalForm2].
createRegistrationApprovalForm <-- [approveCitizenRegistration].
facilitateSwimmingPoolAdministration <--
  [ registerToSwimmingPoolSystem2,
    monitorAccessToFacility ].
forwardCopiesToThirdParties <-- [medicalCertificate2].
issueBadge <-- [badge2].
issueBirthCertificate <-- [birthCertificate].
logEntranceToFacility <-- [createLog].
manageCitizenDocuments <--
  [ storeCertificates,
    forwardCopiesToThirdParties ].
monitorAccessToFacility <--
  [ checkBadgeValidity,
    logEntranceToFacility ].
obtainBirthCertificate2 <--
  [ receiveRequestForBirthCertificate,
    retrieveCitizenData,
    issueBirthCertificate ].
obtainRequiredCertificates <--
  [ obtainMedicalCertificate,
    accessMACS,
    obtainBirthCertificate ].
processCitizenRequests <--
  [ allowAccessToCitizens,
    manageCitizenDocuments,
    obtainBirthCertificate2 ].
registerToSwimmingPoolSystem2 <--
  [ checkCitizenApplication2,
    createNewCitizenAccount2,
    issueBadge ].
retrieveCitizenData <-- [macsDatabase].
storeCertificates <-- [medicalCertificate2, macsDatabase].
useSwimmingPoolFacility <--
  [ obtainRequiredCertificates,
    registerToSwimmingPoolSystem,
    accessSwimmingPoolFacility ].
