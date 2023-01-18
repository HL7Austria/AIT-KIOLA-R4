// MDC_DEV_SPEC_PROFILE_BP
Instance: kiola-measurement-definition-blood-pressure
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Blood Pressure Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_BP, Blood pressure measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(blood-pressure)

Instance: kiola-measurement-device-definition-blood-pressure
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_BP, Blood pressure device, blood-pressure)

// MDC_DEV_SPEC_PROFILE_GLUCOSE
Instance: kiola-measurement-definition-glucose
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Glucose Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_GLUCOSE, Glucose measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(glucose)

Instance: kiola-measurement-device-definition-glucose
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_GLUCOSE, Glucose device, glucose)

// MDC_DEV_SPEC_PROFILE_INR
Instance: kiola-measurement-definition-inr
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "INR Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_INR, INR measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(inr)

Instance: kiola-measurement-device-definition-inr
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_INR, INR device, inr)

// MDC_DEV_SPEC_PROFILE_PULS_OXIM
Instance: kiola-measurement-definition-puls-oxim
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Blood Oximeter Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_PULS_OXIM, Blood oximeter measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(puls-oxim)

Instance: kiola-measurement-device-definition-puls-oxim
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_PULS_OXIM, Blood oximeter device, puls-oxim)

// MDC_DEV_SPEC_PROFILE_SCALE
Instance: kiola-measurement-definition-body-weight
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Body Weight Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_SCALE, Body weight measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(scale)

Instance: kiola-measurement-device-definition-scale
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_SCALE, Scale, scale)

// MDC_DEV_SPEC_PROFILE_SPIRO
Instance: kiola-measurement-definition-spiro
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Spirometry Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_SCALE, Spirometry measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(spiro)

Instance: kiola-measurement-device-definition-spiro
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_SPIRO, Spirometry device, spiro)

// MDC_DEV_SPEC_PROFILE_TEMP
Instance: kiola-measurement-definition-temp
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Temperature Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_TEMP, Temperature measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(temp)

Instance: kiola-measurement-device-definition-temp
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_TEMP, Temperature measurement device, temp)

// MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY
Instance: kiola-measurement-definition-activity
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Activity Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY, Activity measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(activity)

Instance: kiola-measurement-device-definition-activity
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY, Activity measurement device, activity)

// MDC_DEV_SPEC_PROFILE_VND_AIT_COMMENT
Instance: kiola-measurement-definition-comment
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Comment Entry Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_COMMENT, Comment entry)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_0_V1
Instance: kiola-measurement-definition-generic-questionnaire-0
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 0 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_0_V1, Generic questionnaire 0 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_1_V1
Instance: kiola-measurement-definition-generic-questionnaire-1
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 1 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_1_V1, Generic questionnaire 1 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_2_V1
Instance: kiola-measurement-definition-generic-questionnaire-2
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 2 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_2_V1, Generic questionnaire 2 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_3_V1
Instance: kiola-measurement-definition-generic-questionnaire-3
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 3 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_3_V1, Generic questionnaire 3 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_4_V1
Instance: kiola-measurement-definition-generic-questionnaire-4
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 4 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_4_V1, Generic questionnaire 4 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_5_V1
Instance: kiola-measurement-definition-generic-questionnaire-5
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 5 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_5_V1, Generic questionnaire 5 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_6_V1
Instance: kiola-measurement-definition-generic-questionnaire-6
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 6 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_6_V1, Generic questionnaire 6 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_7_V1
Instance: kiola-measurement-definition-generic-questionnaire-7
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 7 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_7_V1, Generic questionnaire 7 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_8_V1
Instance: kiola-measurement-definition-generic-questionnaire-8
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 8 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_8_V1, Generic questionnaire 8 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_9_V1
Instance: kiola-measurement-definition-generic-questionnaire-9
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Generic Questionnaire 9 Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_9_V1, Generic questionnaire 9 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-generic-questionnaire)

// SDC Generic Questionnaire
Instance: kiola-measurement-device-definition-sdc-generic-questionnaire
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(q_symptoms:{representation=MultiPageTopicQuestionnaire}, sdc-generic-questionnaire)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GLUCOSE_SUPPL_V1
Instance: kiola-measurement-definition-glucose-suppl
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Glucose Supplemental Data Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GLUCOSE_SUPPL_V1, Glucose supplemental data measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-glucose-suppl)

Instance: kiola-measurement-device-definition-sdc-glucose-suppl
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(glucose_suppl:{representation=SinglePageQuestionnaire}, sdc-glucose-suppl)

// MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG
Instance: kiola-measurement-definition-gtm-ekg
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Getemed ECG Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG, Getemed ECG measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(getemed-ekg)

Instance: kiola-measurement-device-definition-getemed-ekg
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG, Getemed ECG measurement device, getemed-ekg)

// MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG
Instance: kiola-measurement-definition-cardio-ebike-config
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Cardio Ebike Config Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG, Cardio Ebike configuration)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(cardio-ebike-config)

Instance: kiola-measurement-device-definition-cardio-ebike-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG, Cardio Ebike configuration, cardio-ebike-config)
* insert KIOLAMeasurementUIReferenceRuleSet(ebike)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.healthebikes)

// MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT
Instance: kiola-measurement-definition-cardio-ebike-result
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Cardio Ebike Result Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT, Cardio Ebike result)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(cardio-ebike-result)

Instance: kiola-measurement-device-definition-cardio-ebike-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT, Cardio Ebike result, cardio-ebike-result)

// MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG
Instance: kiola-measurement-definition-cardio-ergo-config
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Cardio Ergo Config Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG, Cardio Ergo configuration)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(cardio-ergo-config)

Instance: kiola-measurement-device-definition-cardio-ergo-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG, Cardio Ergo configuration, cardio-ebike-config)
* insert KIOLAMeasurementUIReferenceRuleSet(ergo)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.emotioncardio)

// MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT
Instance: kiola-measurement-definition-cardio-ergo-result
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Cardio Ergo Result Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT, Cardio Ergo result)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(cardio-ergo-result)

Instance: kiola-measurement-device-definition-cardio-ergo-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT, Cardio Ergo result, cardio-ergo-result)

// MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_COUMADIN_V1
Instance: kiola-measurement-definition-med-daily-dose-coumadin
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Daily medication measurement of Coumadin Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_COUMADIN_V1, Daily medication measurement of Coumadin)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-med-daily-dose)

// MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_FALITHROM_V1
Instance: kiola-measurement-definition-med-daily-dose-falithrom
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Daily medication measurement of Falithrom Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_FALITHROM_V1, Daily medication measurement of Falithrom)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-med-daily-dose)

// MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_MARCUMAR_V1
Instance: kiola-measurement-definition-med-daily-dose-marcumar
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Daily medication measurement of Marcumar Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_MARCUMAR_V1, Daily medication measurement of Marcumar)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-med-daily-dose)

// SDC Medication Daily Dose
Instance: kiola-measurement-device-definition-sdc-med-daily-dose
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(q_medication_intake:{representation=MultiPageTopicQuestionnaire}, sdc-med-daily-dose)

// MDC_DEV_SPEC_PROFILE_VND_AIT_NOTE
Instance: kiola-measurement-definition-note
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Note Entry Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_NOTE, Note entry)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_CURRENT
Instance: kiola-measurement-definition-pain
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Subjective Pain Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_CURRENT, Subjective pain measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_RANGE
Instance: kiola-measurement-definition-pain-range
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Subjective Pain Range Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_RANGE, Subjective pain range measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_Q_COVID19_V1
Instance: kiola-measurement-definition-covid19
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "COVID19 Questionnaire Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_Q_COVID19_V1, COVID19 measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-covid19)

Instance: kiola-measurement-device-definition-sdc-covid19
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(q_symptoms:{representation=MultiPageTopicQuestionnaire}, sdc-covid19)

// MDC_VND_AIT_Q_MED_V1
Instance: kiola-measurement-definition-med-questionnaire
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Medication Taken Questionnaire Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_VND_AIT_Q_MED_V1, Medication taken measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_VND_AIT_Q_PHYS_VISIT_V1
Instance: kiola-measurement-definition-phys-visit
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Physician Visit Questionnaire Entry Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_VND_AIT_Q_PHYS_VISIT_V1, Physician visit questionnaire entry)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc-phys-visit)

Instance: kiola-measurement-device-definition-sdc-phys-visit
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(physician_visit:{representation=SinglePageQuestionnaire}, sdc-phys-visit)

// MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE
Instance: kiola-measurement-definition-sleepsequence
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Sleepsequence Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE, Sleepsequence measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sleepsequence)

Instance: kiola-measurement-device-definition-sleepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE, Sleepsequence measurement device, sleepsequence)

// MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT
Instance: kiola-measurement-definition-smwt
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "6-Minute-Walk-Test Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT, 6-Minute-Walk-Test measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(smwt)

Instance: kiola-measurement-device-definition-smwt
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT, 6-Minute-Walk-Test measurement, smwt)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.his.smwt)

// MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER
Instance: kiola-measurement-definition-stepcounter
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Step Counter Measurement"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER, Step counter measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(stepcounter)

Instance: kiola-measurement-device-definition-stepcounter
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER, Step counter measurement, stepcounter)

// MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE
Instance: kiola-measurement-definition-stepsequence
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Stepsequence Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE, Stepsequence measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(stepsequence)

Instance: kiola-measurement-device-definition-stepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE, Stepsequence measurement, stepsequence)

// MDC_DEV_SPEC_PROFILE_VND_AIT_WELLBEING
Instance: kiola-measurement-definition-wellbeing
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Wellbeing Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_WELLBEING, Subjective wellbeing measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND_ASSESSMENT
Instance: kiola-measurement-definition-wound-assessment
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Wound Assessment Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND_ASSESSMENT, Wound assessment measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND
Instance: kiola-measurement-definition-wound
InstanceOf: KIOLAMeasurementDefinition
Usage: #example
Title: "Wound Measurement Definition"
* insert KIOLAMeasurementDefinitionRuleSet(MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND, Wound measurement)
* insert KIOLAMeasurementDeviceDefinitionRuleSet(sdc)

// --- INSERT NEW MEASUREMENT DEFINITIONS HERE ---

// Generic SDC Device
Instance: kiola-measurement-device-definition-sdc
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* id = "deviceDefinition-sdc"