# re : goal model corpus

Requirements-engineering goal models (i*/iStar/Tropos family) for
softgoals experiments (timm/src/softgoals). Collected 2026-07-29.
110 models downloaded; node counts min 3 / median 27 / max 351.

Dirs: gmr/ = esm2345/GoalModelRepository piStar JSON (65, with
metadata_catalogue.csv provenance); pystar/ = ai-se/softgoals JSON,
the SHORT paper's Kids Help Phone models plus stage1/stage2 extras
(15); riscoss/, bcms/, horkoff-thesis/, jgoose/ = istarml XML.
Every model also converted to the nfr3 Prolog dialect (same name,
.pl, beside its source; pl column below) by softgoals/p2pl.py
(piStar json), j2pl.py (pystar json), i2pl.py (istarml); all 110
load and preprocess under softgoals/nfr3.pl.

| model | dir | format | nodes | links | domain (origin) | url | got | pl |
|---|---|---|---|---|---|---|---|---|
| CSServices | pystar | pystar json | 351 | 510 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSCounselling | pystar | pystar json | 350 | 470 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSFDandMarketing | pystar | pystar json | 326 | 422 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSSimplified | pystar | pystar json | 317 | 7 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| DelayModeratedBulletinBoard | pystar | pystar json | 310 | 447 | online counselling features | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| OOOChatRooms | pystar | pystar json | 259 | 413 | online counselling features | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSCounsellingManagement | pystar | pystar json | 206 | 239 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSITDepartment | pystar | pystar json | 126 | 162 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSSAProgram | pystar | pystar json | 114 | 168 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| CSCounsellingSD | pystar | pystar json | 105 | 12 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| KidsandYouth | pystar | pystar json | 81 | 81 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| ModelingToolDevelopment_GrowingLeaf | gmr | piStar json | 75 | 110 | Software Tool Development (iStar 1.0 with dynamic functions and evaluation annotations 2016) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/ModelingToolDevelopment_GrowingLeaf) | x | x |
| SmartHomeSecuritySystem | gmr | piStar json | 69 | 134 | Smart Home (iStar2.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SmartHomeSecuritySystem) | x | x |
| CSFDandMarketingSD | pystar | pystar json | 66 | 7 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| SmartHomeSystem_assistedLiving | gmr | piStar json | 62 | 84 | Smart Home; IoT (iStar 1.0 with context annotations 2012) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SmartHomeSystem_assistedLiving) | x | x |
| CSCounsellingManagementSD | pystar | pystar json | 60 | 25 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| bCMS_SR_bCMS_VehicleCommunicationVariant | bcms | istarml | 59 | 49 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| SocialNetworkSites_Privacy | gmr | piStar json | 58 | 75 | Social Network Sites (SNS) (iStar 2.0 2019) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SocialNetworkSites_Privacy) | x | x |
| bCMS_SR_bCMS_AuthenticationVariation | bcms | istarml | 58 | 48 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| PatientHealthCheckRoutine | gmr | piStar json | 56 | 54 | Healthcare (iStar 1.0 with context and task annotations 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/PatientHealthCheckRoutine) | x | x |
| Moodbile | riscoss | istarml | 55 | 32 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| BTW_RouteAdviceAndNavigation | gmr | piStar json | 54 | 83 | Route Planning System (iStar 1.0 2012) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/BTW_RouteAdviceAndNavigation) | x | x |
| SustainabilityCatalog_SoftwareRequirements | gmr | piStar json | 54 | 67 | Software Sustainability (iStar 2.0 with color annotation 2021) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SustainabilityCatalog_SoftwareRequirements) | x | x |
| OSSFork | riscoss | istarml | 52 | 25 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| DecisionMaking_CyberSecurity | gmr | piStar json | 50 | 72 | Cyber Security (iStar 2.0 with color annotation 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/DecisionMaking_CyberSecurity) | x | x |
| bCMS_SR_bCMS | bcms | istarml | 50 | 40 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| SwimmingPool_AdministrationSystem | gmr | piStar json | 48 | 60 | Public Administration (Secure Tropos 2018) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SwimmingPool_AdministrationSystem) | x | x |
| TeamCollaboration_MLOps | gmr | piStar json | 47 | 56 | Machine Learning Operations (MLOps) (iStar1.0 with evaluation annotations 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/TeamCollaboration_MLOps) | x | x |
| Parents | pystar | pystar json | 46 | 42 | Kids Help Phone counselling org (real client, Horkoff field study) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| OSSTakeover | riscoss | istarml | 46 | 22 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| OSSInitiative | riscoss | istarml | 45 | 22 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| HearingAids_SaleAndDistribution_SPL | gmr | piStar json | 44 | 50 | Sales and Distribution Management; Software Product Lines (SPL) (iStar 1.0 2016) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/HearingAids_SaleAndDistribution_SPL) | x | x |
| OSSIntegration | riscoss | istarml | 44 | 34 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| CourseOrganization | gmr | piStar json | 42 | 76 | Academic Management (iStar2.0 2024) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/CourseOrganization) | x | x |
| bCMS_SR_bCMS_exceptional | bcms | istarml | 42 | 37 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| MuseumGuide_MobileInformationSystem | gmr | piStar json | 41 | 44 | Assistance Systems (Tropos 1.0 with context annotations 2010) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MuseumGuide_MobileInformationSystem) | x | x |
| bCMS_SR_Fireman | bcms | istarml | 41 | 37 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| TechnologyTrust_and_BusinessStrategy | gmr | piStar json | 37 | 70 | Trusted Computing; Cyber Security (iStar 1.0 with evaluation labels 2006) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/TechnologyTrust_and_BusinessStrategy) | x | x |
| GreenManger_MultiAgentSmartHome | gmr | piStar json | 35 | 41 | ? (? ?) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/GreenManger_MultiAgentSmartHome) | x | x |
| MuseumAssistanceSystem | gmr | piStar json | 35 | 37 | Assistance Systems (Tropos 1.0 2012) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MuseumAssistanceSystem) | x | x |
| PatientCareGivingSystem_SmartHome | gmr | piStar json | 34 | 38 | Smart Home System; Healthcare (Tropos 1.0 with context annotations 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/PatientCareGivingSystem_SmartHome) | x | x |
| bCMS_SR_Victim | bcms | istarml | 33 | 28 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| CleaningRobotSystem | gmr | piStar json | 31 | 32 | Autonomous Systems (KAOS 1.0 with control loop annotations 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/CleaningRobotSystem) | x | x |
| VideoTutorials_OnlineTraining_Development | gmr | piStar json | 31 | 42 | Video Based Learning (iStar 2.0 2020) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/VideoTutorials_OnlineTraining_Development) | x | x |
| bCMS_StrategicDependency_MultiplicityVariant | bcms | istarml | 31 | 31 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| bCMS_StrategicDependency_withbCMS | bcms | istarml | 31 | 31 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| bCMS_StrategicDependency_VehiclesVariant | bcms | istarml | 30 | 30 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| HealthClub_AccessControlSystem | gmr | piStar json | 29 | 35 | Access Control (KAOS 1.0 2011) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/HealthClub_AccessControlSystem) | x | x |
| RCCL_BusinessStrategy | gmr | piStar json | 29 | 36 | Travel & Hospitality (iStar 1.0 with satisfaction annotations 2016) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RCCL_BusinessStrategy) | x | x |
| CourseContentManagement | gmr | piStar json | 27 | 38 | Academic Management, Learning Management System (iStar 1.0 2017) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/CourseContentManagement) | x | x |
| PatientAndProvider_remoteHealthcare | gmr | piStar json | 27 | 57 | Telemedicine (iStar 1.0 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/PatientAndProvider_remoteHealthcare) | x | x |
| TaRGeT_automatedTestGeneration | gmr | piStar json | 27 | 62 | Test case generation, testing Software Product Lines (SPLs) (iStar 1.0 2016) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/TaRGeT_automatedTestGeneration) | x | x |
| bCMS_SR_Witness | bcms | istarml | 27 | 20 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| ERE_AGM_Reqs | horkoff-thesis | istarml | 27 | 28 | Horkoff PhD thesis interactive-analysis models | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/JenniferThesisModels) | x | x |
| ERE_AGM_Reqs_Conflicts | horkoff-thesis | istarml | 27 | 47 | Horkoff PhD thesis interactive-analysis models | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/JenniferThesisModels) | x | x |
| bCMS_SR_FSC | bcms | istarml | 26 | 25 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| bCMS_SR_PSC | bcms | istarml | 26 | 25 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| bCMS_SR_Policeman | bcms | istarml | 26 | 22 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| YouthCounsellingService | gmr | piStar json | 25 | 37 | Telemedicine, Remote Mental Health Counselling (iStar 2.0 2019) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/YouthCounsellingService) | x | x |
| OSSAcquisition | riscoss | istarml | 25 | 16 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| bCMS_StrategicDependency_withoutbCMS | bcms | istarml | 25 | 25 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| MeetingScheduling | gmr | piStar json | 24 | 26 | Meeting Management (iStar 1.0 with precedence link extension 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MeetingScheduling) | x | x |
| AircraftNoseAssembly | gmr | piStar json | 22 | 35 | Aeronautics (iStar 2.0 2025) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/AircraftNoseAssembly) | x | x |
| LaboratoryTechnician | gmr | piStar json | 22 | 21 | Healthcare (iStar 2.0 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/LaboratoryTechnician) | x | x |
| OnlineCustomerOrder_ProcessingSystem | gmr | piStar json | 22 | 31 | E-commerce (KAOS 1.0 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/OnlineCustomerOrder_ProcessingSystem) | x | x |
| SafeFlight_ATC | gmr | piStar json | 22 | 21 | Air Traffic Control (ATC); Aeronautics (KAOS 1.0 2014) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SafeFlight_ATC) | x | x |
| CrossoverServices_Fliggy | gmr | piStar json | 21 | 21 | Online Travel Agency (iStar2.0 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/CrossoverServices_Fliggy) | x | x |
| Microgrid_EnergyManagement | gmr | piStar json | 21 | 45 | Energy Management (iStar 1.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/Microgrid_EnergyManagement) | x | x |
| RemoteDataMirroring_Application | gmr | piStar json | 21 | 25 | Remote Data Mirroring (RDM) (KAOS 1.0 2014) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RemoteDataMirroring_Application) | x | x |
| RequirementsAnalysisTool | gmr | piStar json | 21 | 40 | Requirements Engineering (iStar 1.0 2012) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RequirementsAnalysisTool) | x | x |
| BuildingConstruction_Ecosystem | gmr | piStar json | 20 | 36 | Construction industry (iStar 2.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/BuildingConstruction_Ecosystem) | x | x |
| EyeCareTreatment | gmr | piStar json | 19 | 25 | Healthcare (KAOS 1.0 2009) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/EyeCareTreatment) | x | x |
| MatNorgeAS_digitalTransformations | gmr | piStar json | 19 | 20 | Sustainability, Digital Transformations (iStar 2.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MatNorgeAS_digitalTransformations) | x | x |
| MedicalConsultationAndDiagnosis | gmr | piStar json | 19 | 18 | Healthcare (Tropos 1.0 2009) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MedicalConsultationAndDiagnosis) | x | x |
| SaleAndSupply_LiquorStore | gmr | piStar json | 19 | 23 | Sale and Supply Chain (iStar 2.0 2024) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SaleAndSupply_LiquorStore) | x | x |
| SearchSystem_inEducation | gmr | piStar json | 19 | 42 | Education (Tropos 1.0 2007) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SearchSystem_inEducation) | x | x |
| RetailerSystem_SubModel | gmr | piStar json | 18 | 21 | E-commerce (Tropos 1.0 2009) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RetailerSystem_SubModel) | x | x |
| ContactTracingApp_COVID19 | gmr | piStar json | 17 | 17 | Healthcare (Tropos 1.0 with evaluation annotations 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/ContactTracingApp_COVID19) | x | x |
| DecisionMaking_for_SelfAdaptiveSystem | gmr | piStar json | 17 | 31 | ? (? ?) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/DecisionMaking_for_SelfAdaptiveSystem) | x | x |
| Generative_Chatbot | gmr | piStar json | 17 | 28 | Artificial Intelligence (iStar 1.0 2017) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/Generative_Chatbot) | x | x |
| GridStix_FloodMonitoring | gmr | piStar json | 17 | 26 | Environmental Monitoring (iStar 1.0 with claims annotations 2010) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/GridStix_FloodMonitoring) | x | x |
| OSSAdoption_Telecommunications | gmr | piStar json | 16 | 34 | Open-Source Software (OSS); Telecommunications (iStar 1.0 2015) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/OSSAdoption_Telecommunications) | x | x |
| TravelReimbursement_ResearchTrip | gmr | piStar json | 16 | 17 | Travel Reimbursement (iStar2.0 with precedence extension 2022) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/TravelReimbursement_ResearchTrip) | x | x |
| VideoBasedOnlineTraining_ELEVATE | gmr | piStar json | 16 | 47 | Video Based Learning (iStar 2.0 2020) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/VideoBasedOnlineTraining_ELEVATE) | x | x |
| bCMS_SR_GovernmentAgency | bcms | istarml | 16 | 13 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| MobileGame_DSPL | gmr | piStar json | 15 | 33 | Software Product Lines (SPL) (iStar 2.0 2017) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MobileGame_DSPL) | x | x |
| RetrievalBased_Chatbot | gmr | piStar json | 15 | 22 | Artificial Intelligence (iStar 1.0 2017) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RetrievalBased_Chatbot) | x | x |
| TaRGeT_MotorolaProject | gmr | piStar json | 15 | 45 | Test case generation, testing Software Product Lines (SPLs) (iStar 1.0 with context and cardinality annotations 2011) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/TaRGeT_MotorolaProject) | x | x |
| SmartCity_monolithicCaseStudy | gmr | piStar json | 14 | 53 | Smart City (iStar 2.0 2024) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SmartCity_monolithicCaseStudy) | x | x |
| bCMS_SR_CommunicationCompromiser | bcms | istarml | 14 | 18 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |
| SelfAdaptive_CustomerInformationSystem | gmr | piStar json | 13 | 16 | IT Sytems (Tropos 1.0 2009) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/SelfAdaptive_CustomerInformationSystem) | x | x |
| OSSRelease | riscoss | istarml | 13 | 6 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| ContractorSupplier_Interactions | gmr | piStar json | 12 | 18 | Supply Chain Logistics, Security Requirements (iStar 2.0/Hybrid SR/SD view with workflow annotations 2025) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/ContractorSupplier_Interactions) | x | x |
| MobileBroadcasting_AudioBus | gmr | piStar json | 12 | 19 | Mobile Broadcasting (KAOS 1.0 combined with UML elements 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/MobileBroadcasting_AudioBus) | x | x |
| PizzaCompany_andDelivery | gmr | piStar json | 12 | 20 | Food Delivery Business (iStar 1.0 2017) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/PizzaCompany_andDelivery) | x | x |
| OSSLicense | riscoss | istarml | 12 | 10 | RISCOSS EU project: industrial OSS-adoption risk models | [src](https://github.com/RISCOSS/riscoss-risk-modeling/tree/master/goal-models) | x | x |
| ERE_AGM_Challenges | horkoff-thesis | istarml | 12 | 11 | Horkoff PhD thesis interactive-analysis models | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/JenniferThesisModels) | x | x |
| WastewaterUtilitySystem_CyberAttack | gmr | piStar json | 11 | 18 | Cyber Security (iStar 2.0 2021) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/WastewaterUtilitySystem_CyberAttack) | x | x |
| bCMS_SR_Witness | pystar | pystar json | 11 | 8 | bCMS crisis mgmt (CMA'12 case) | [src](https://github.com/ai-se/softgoals/tree/master/src/pystar/json) | x | x |
| App_LoginSystem | gmr | piStar json | 10 | 24 | Requirements Engineering (iStar 1.0 2013) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/App_LoginSystem) | x | x |
| HotelManagement_IT_InvestmentAlternatives | gmr | piStar json | 10 | 13 | e-Tourism (iStar 1.0 2014) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/HotelManagement_IT_InvestmentAlternatives) | x | x |
| buyerDriveECommerce | jgoose | istarml | 8 | 8 | JGOOSE i*-to-use-case tool example | [src](https://github.com/diegodallabt/jgoose) | x | x |
| ConferenceHostSelection_BPCM | gmr | piStar json | 6 | 15 | Business Process Characterizing Modeling (BPCM) (iStar 1.0 2012) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/ConferenceHostSelection_BPCM) | x | x |
| Application_(2) | horkoff-thesis | istarml | 6 | 7 | Horkoff PhD thesis interactive-analysis models | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/JenniferThesisModels) | x | x |
| BusinessStrategy_InsuranceCompany | gmr | piStar json | 3 | 29 | Business Strategy, Insurance (iStar 2.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/BusinessStrategy_InsuranceCompany) | x | x |
| BusinessStrategy_Modelling | gmr | piStar json | 3 | 18 | Business Strategy (iStar 2.0 2021) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/BusinessStrategy_Modelling) | x | x |
| BusinessStrategy_TelecommunicationsCompany | gmr | piStar json | 3 | 33 | Business Strategy; Telecommunication (iStar 2.0 2023) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/BusinessStrategy_TelecommunicationsCompany) | x | x |
| RequirementsElicitationProcess | gmr | piStar json | 0 | 36 | Requirements Engineering (iStar2.0 with context annotations 2018) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/RequirementsElicitationProcess) | x | x |
| ValidationAndVerification_RE_SDView | gmr | piStar json | 0 | 29 | Requirements Engineering (iStar 1.0 2008) | [src](https://github.com/esm2345/GoalModelRepository/tree/main/models/ValidationAndVerification_RE_SDView) | x | x |
| bCMS_ActorAssociation_withoutbCMS | bcms | istarml | 0 | 0 | bCMS car-crash crisis management (CMA'12 comparison case) | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo/CMA12) | x | x |

## not downloaded (could have got)

| source | format | size | why skipped / what it is | url | got |
|---|---|---|---|---|---|
| webinos-design-data (39 .jucm) | URN/UCM | scenario maps, thin GRL | webinos EU platform project; real industrial, but Use-Case-Maps not goal graphs | [src](https://github.com/webinos/webinos-design-data) |  |
| JUCMNAV/projetseg samples (21 .jucm) | URN/GRL+UCM | ? | jUCMNav tool sample/regression models | [src](https://github.com/JUCMNAV/projetseg) |  |
| JGOOSE test fixtures (~35 .istarml) | istarml | tiny | unit-test fragments, no domain content | [src](https://github.com/EduPim/JGOOSE) |  |
| Horkoff/Yu 'iStar 2 - Larger Models' (large.zip 16MB) | Visio .vsd + python DSL | 'larger', ~10? | thesis-era big models; needs vsd parsing | [src](https://zenodo.org/records/581653) |  |
| Counseling Service .vsd set (~35) | Visio .vsd | ? | Kids Help Phone AsIs/ToBe evaluated variants | [src](https://github.com/ai-se/softgoals/tree/master/GMRepo) |  |
| istar2024 book figures (~8) | paper figs | 10-42 | course org, falls monitor, chronic care, insulin pump | [src](istar2024.pdf in softgoals/) |  |
