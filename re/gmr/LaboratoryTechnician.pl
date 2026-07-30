% LaboratoryTechnician  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ describePatientLaboratoryTest,
    describePatient,
    x,
    describePatientInformation,
    describeBiologicalSampling,
    describeSamplingDateHour,
    identifyBiologicalSampleMaterial,
    identifySamplingProcedure,
    describeSampleMeasurement,
    identifyChemicalProperty,
    describeMeasure,
    defineUsedMeasure,
    identifyMeasureUnit,
    describeMeasurement,
    defineMeasurementProcedure,
    defineMeasurementAct,
    describeMeasuredValue,
    describeMeasurementAnalysis,
    defineMeasurementAnalysisAct,
    defineReferenceValues,
    defineInterpretation,
    defineAnalysisResult ].
describeBiologicalSampling <--
  [ describeSamplingDateHour,
    identifyBiologicalSampleMaterial,
    identifySamplingProcedure ].
describeMeasure <-- [defineUsedMeasure, identifyMeasureUnit].
describeMeasurement <--
  [ defineMeasurementProcedure,
    defineMeasurementAct,
    describeMeasuredValue ].
describeMeasurementAnalysis <--
  [ defineMeasurementAnalysisAct,
    defineReferenceValues,
    defineInterpretation,
    defineAnalysisResult ].
describePatient <-- [describePatientInformation, x].
describePatientLaboratoryTest <--
  [ describePatient,
    describeBiologicalSampling,
    describeSampleMeasurement ].
describeSampleMeasurement <--
  [ identifyChemicalProperty,
    describeMeasure,
    describeMeasurement,
    describeMeasurementAnalysis ].
