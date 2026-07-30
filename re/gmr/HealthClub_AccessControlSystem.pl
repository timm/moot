% HealthClub_AccessControlSystem  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ accessControl,
    allowPassage,
    ensureThatTheCardIsUsedByItsOwner,
    cardVerified,
    cardPassed,
    cardValid,
    cardDetected,
    validateCard,
    userPermittedEntryTimeIsSatisfied,
    registerEntry2,
    registerExit2,
    userPermittedExitTimeIsSatisfied,
    memberPermittedExitTimeIsntSatisfied,
    staffPermittedExitTimeIsNotSatisfied ].
accessControl <-- [ensureThatTheCardIsUsedByItsOwner, allowPassage].
allowPassage <-- [registerEntry, cardVerified, registerExit].
applyFine <-- [memberPermittedExitTimeIsntSatisfied].
cardDetected <-- [detectCard2].
cardPassed <-- [passCard].
cardValid <-- [validateCard2].
cardVerified <-- [cardValid, cardDetected, cardPassed].
compareUserPhotoOnScreen <-- [compareUserPhotoOnTheScreenOfReception].
detectCard2 <-- [detectCard].
ensureThatTheCardIsUsedByItsOwner <-- [compareUserPhotoOnScreen].
notifyManager <-- [staffPermittedExitTimeIsNotSatisfied].
passCard <-- [card2].
registerEntry <-- [registerEntry3].
registerEntry2 <-- [registerExit3].
registerEntry3 <-- [registerEntry2].
registerExit <-- [registerExit5].
registerExit2 <-- [registerExit4].
registerExit3 <-- [entries].
registerExit4 <-- [exits, userPermittedExitTimeIsSatisfied].
registerExit4 <-- [exits, memberPermittedExitTimeIsntSatisfied].
registerExit4 <-- [exits, staffPermittedExitTimeIsNotSatisfied].
registerExit5 <-- [registerExit2].
validateCard <-- [validateCardUponEntry, validateCardUponExit].
validateCard2 <-- [validateCard].
validateCardUponEntry <-- [card, userPermittedEntryTimeIsSatisfied].
validateCardUponExit <-- [card, checkLastEntry].
