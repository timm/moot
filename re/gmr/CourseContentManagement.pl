% CourseContentManagement  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ obtainInformationAboutCourses,
    gradesCanBeChecked,
    courseInformationCanBeViewed,
    completionOfCourseContent,
    feedbackCanBeProvided,
    provideUsersWithResourcesRegardingCourses,
    courseScheduleIsProvided,
    courseSyllabusIsProvided,
    courseSummaryIsProvided,
    assignmentCanBeUploaded,
    feedbackIsProvided,
    haveResourcesRegardingCourses,
    provideFeedback,
    assignmentCanBeUploaded2,
    gradesCanBeViewed2,
    courseScheduleIsProvided2,
    courseSyllabusIsProvided2 ].
goals(soft) <--
  [ or([ performance,
         availability,
         usability,
         manageability,
         accessibility,
         interoperability ]) ].
assignmentCanBeUploaded2 <-- [assignmentCanBeUploaded].
completeAssignment <-- [assignmentCanBeUploaded2].
completionOfCourseContent <-- [completeAssignment].
courseInformationCanBeDisplayed <-- [courseInformation].
courseInformationCanBeViewed <--
  [ viewCourseSyllabus,
    viewCourseSchedule,
    viewCourseSummary ].
courseRecources <-- [haveResourcesRegardingCourses].
courseScheduleIsProvided <-- [courseInformationCanBeDisplayed].
courseScheduleIsProvided2 <-- [courseScheduleIsProvided].
courseSummaryIsProvided <-- [courseInformationCanBeDisplayed].
courseSyllabusIsProvided <-- [courseInformationCanBeDisplayed].
courseSyllabusIsProvided2 <-- [courseSyllabusIsProvided].
feedbackCanBeProvided <-- [provideFeedback].
gradesCanBeChecked <-- [viewGrade].
gradesCanBeViewed <-- [grades].
gradesCanBeViewed2 <-- [gradesCanBeViewed].
obtainInformationAboutCourses <--
  [ gradesCanBeChecked,
    courseInformationCanBeViewed,
    completionOfCourseContent,
    feedbackCanBeProvided ].
provideFeedback <-- [feedbackIsProvided].
provideUsersWithResourcesRegardingCourses <--
  [ courseScheduleIsProvided,
    courseSyllabusIsProvided,
    courseSummaryIsProvided,
    assignmentCanBeUploaded,
    gradesCanBeViewed,
    feedbackIsProvided ].
viewCourseSchedule <-- [courseScheduleIsProvided2].
viewCourseSyllabus <-- [courseSyllabusIsProvided2].
viewGrade <-- [gradesCanBeViewed2].
accessibility <-- [helps(haveResourcesRegardingCourses)].
availability <-- [helps(haveResourcesRegardingCourses)].
interoperability <-- [helps(haveResourcesRegardingCourses)].
manageability <-- [helps(haveResourcesRegardingCourses)].
performance <-- [helps(provideUsersWithResourcesRegardingCourses)].
usability <-- [helps(haveResourcesRegardingCourses)].
