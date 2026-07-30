% RequirementsAnalysisTool  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ requirementsTextObtained,
    obtainRequirementsDocument,
    requirementsTextPreProcessed,
    requirementsTextPreProcessed2 ].
goals(soft) <--
  [ or([ highAvailability,
         highAvailability2,
         highAvailability3,
         lowResponseTime,
         lowCost,
         highCondentiality,
         highAvailability4,
         lowResponseTime2,
         lowCost2,
         highCondentiality2 ]) ].
analyzeRequirementsDocument <--
  [ requirementsTextObtained,
    obtainRequirementsDocument ].
convertDocumentToPDF <-- [convertDocumentToPDF5].
convertDocumentToPDF5 <-- [convertDocumentToPDF2].
obtainRequirementsDocument <--
  [ requirementsTextPreProcessed2,
    analyzeRequirementsText2 ].
requirementsTextObtained <-- [provideDocumentAsPDF].
requirementsTextObtained <-- [convertDocumentToPDF].
highAvailability <-- [helps(useRemoteComponentsOfHighAvailability)].
highAvailability2 <-- [makes(convertDocumentToPDF2)].
highAvailability3 <-- [makes(convertDocumentToPDF3)].
highAvailability4 <--
  [ makes(convertDocumentToPDF4),
    makes(mergeDocuments),
    makes(convertDocumentToTXT) ].
highCondentiality <-- [hurts(convertDocumentToPDF3)].
highCondentiality2 <--
  [ helps(convertDocumentToPDF4),
    helps(mergeDocuments),
    helps(convertDocumentToTXT) ].
lowCost <-- [makes(convertDocumentToPDF3)].
lowCost2 <--
  [ hurts(convertDocumentToPDF4),
    hurts(mergeDocuments),
    hurts(convertDocumentToTXT) ].
lowResponseTime <-- [helps(convertDocumentToPDF3)].
lowResponseTime2 <--
  [ helps(convertDocumentToPDF4),
    hurts(mergeDocuments),
    makes(convertDocumentToTXT) ].
