% Generative_Chatbot  (nfr3 dialect, from piStar json)
:- discontiguous (<--)/2.
:- dynamic (<--)/2.
goals(hard) <--
  [ fulfillUserRequest,
    selectAppropriateResponse,
    getUserRequest ].
goals(soft) <--
  [ or([ intelligentProcessing,
         sensibleResponse,
         consistentResponse,
         minimumGrammaticalErrors,
         naturalConversation ]) ].
classifyMessageIntent <-- [intentClassifier].
constructResponse <--
  [ selectAppropriateResponse,
    analyzePreviousMessages,
    performDomainCalculations ].
deconstructMessage <-- [messageParser].
fulfillUserRequest <-- [retrieveBasedProcess].
generateResponsePlan <-- [responsePlan].
getUserRequest <-- [request].
minimumGrammaticalErrors <-- [constructResponse].
naturalConversation <-- [fulfillUserRequest].
recogniseMessageEntities <-- [context].
response <-- [constructResponse].
retrieveBasedProcess <-- [understandRequest, constructResponse].
understandRequest <--
  [ classifyMessageIntent,
    deconstructMessage,
    recogniseMessageEntities,
    generateResponsePlan,
    getUserRequest ].
consistentResponse <-- [helps(constructResponse)].
intelligentProcessing <-- [helps(understandRequest)].
sensibleResponse <-- [helps(constructResponse)].
