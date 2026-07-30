% SearchSystem_inEducation  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ findCopiedText,
    findWordDescription,
    foundInEncyclopedia,
    findInInternet,
    parsedResult,
    filteredPages,
    foundMatching,
    passExam,
    findWordDescription2,
    findCopiedText2 ].
goals(soft) <--
  [ or([ minimizeCost,
         reliableResults,
         honesty,
         reliableResults2,
         minimizeCost2 ]) ].
filterPages <-- [contentfilter].
filteredPages <-- [filterPages].
findCopiedText <-- [findWordDescription, foundMatching].
findInEBritannica <-- [ebritannica].
findInInternet <-- [filteredPages, parsedResult].
findInWikipedia <-- [wikipedia].
findMatching <-- [matchtext].
findWordDescription <-- [findInInternet].
findWordDescription <-- [foundInEncyclopedia].
foundInEncyclopedia <-- [findInWikipedia].
foundInEncyclopedia <-- [findInEBritannica].
foundMatching <-- [findMatching].
parseResults <-- [parser].
parsedResult <-- [parseResults].
minimizeCost <--
  [ helps(findInInternet),
    helps(findInWikipedia),
    hurts(findInEBritannica) ].
reliableResults <--
  [ hurts(findInInternet),
    makes(findInEBritannica),
    helps(findInWikipedia) ].
