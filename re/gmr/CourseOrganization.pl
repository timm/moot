% CourseOrganization  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ studentsExamined,
    examSessionPlanned,
    courseEditionOrganized,
    learningOutcomesDefined,
    syllabusPrepared,
    specificILOsDefined,
    examinationsDefined,
    courseDelivered,
    contentsChosen,
    ilosBrainstormedWithColleagues,
    papersAssembled,
    studentsExamined2,
    assignedCourseDelivered,
    lecturesDelivered,
    interactiveLecturesOrganized,
    assignedCourseDelivered2,
    examinationsDefined2,
    studentsExamined3 ].
goals(soft) <--
  [ or([ effort,
         suitabilityForUniversity,
         senseOfControl,
         effort2,
         studentSatisfaction,
         effectiveEducation ]) ].
analyzeGradingScheme <-- [gradingScheme2].
askTAToGiveTheLectures <-- [giveLecturesAsPlanned].
assignedCourseDelivered <-- [retrieveMaterials, lecturesDelivered].
communicateResults <-- [learningManagementSystem, examGrades].
contentsChosen <-- [selectTextbook].
contentsChosen <-- [papersAssembled].
courseDelivered <-- [deliverCourseAsPlanned].
courseDelivered <-- [letColleagueGiveTheCourse].
courseEditionOrganized <--
  [ learningOutcomesDefined,
    syllabusPrepared,
    examinationsDefined,
    courseDelivered,
    studentsExamined2 ].
courseILOs2 <-- [examinationsDefined].
courseSyllabus2 <-- [writeSyllabus].
defineUniversitySpecificILOs <-- [courseILOs].
examinationsDefined <-- [examinationsDefined2].
giveStandardLectures <-- [lectureSlides].
gradeExams <-- [gradingScheme, examQuestions, examGrades].
interactiveLecturesOrganized <--
  [ prepareMaterials,
    giveInteractiveLecture ].
learningOutcomesDefined <-- [takeStandardILOsFromBoK].
learningOutcomesDefined <-- [specificILOsDefined].
lectureSlides <-- [selectTextbook].
lectureSlides2 <-- [askTAToGiveTheLectures].
lecturesDelivered <-- [giveStandardLectures].
lecturesDelivered <-- [askTAToGiveTheLectures].
lecturesDelivered <-- [interactiveLecturesOrganized].
letColleagueGiveTheCourse <--
  [ assignedCourseDelivered2,
    effectiveEducation ].
prepareMaterials <-- [lectureMaterials].
retrieveExamQuestions <-- [examQuestions2].
retrieveMaterials <-- [courseSyllabus2].
specificILOsDefined <--
  [ defineUniversitySpecificILOs,
    ilosBrainstormedWithColleagues ].
studentsExamined <--
  [ retrieveExamQuestions,
    communicateResults,
    gradeExams,
    analyzeGradingScheme,
    examSessionPlanned ].
studentsExamined2 <-- [studentsExamined3].
syllabusPrepared <-- [contentsChosen, writeSyllabus].
takeStandardILOsFromBoK <-- [courseILOs].
writeSyllabus <-- [courseSyllabus].
effort <--
  [ hurts(deliverCourseAsPlanned),
    helps(letColleagueGiveTheCourse),
    hurts(papersAssembled),
    helps(selectTextbook) ].
effort2 <--
  [ makes(askTAToGiveTheLectures),
    helps(giveStandardLectures),
    breaks(interactiveLecturesOrganized) ].
senseOfControl <--
  [ makes(deliverCourseAsPlanned),
    breaks(letColleagueGiveTheCourse) ].
studentSatisfaction <--
  [ hurts(giveStandardLectures),
    helps(interactiveLecturesOrganized),
    breaks(askTAToGiveTheLectures) ].
suitabilityForUniversity <--
  [ hurts(selectTextbook),
    helps(papersAssembled) ].
