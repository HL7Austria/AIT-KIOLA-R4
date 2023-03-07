// -------------------------------------
//          Manual Entry Devices
// -------------------------------------

Instance: dev-sdc
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* id = "dev-sdc"

Instance: dev-sdc-generic-questionnaire-v1
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-generic-questionnaire-v1, q_questionnaire:{representation=MultiPageTopicQuestionnaire})

Instance: dev-sdc-glucose-suppl-v1
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-glucose-suppl-v1, glucose_suppl:{representation=SinglePageQuestionnaire})

Instance: dev-sdc-med-daily-dose-v1
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-med-daily-dose-v1, q_medication_intake:{representation=MultiPageTopicQuestionnaire})

Instance: dev-sdc-covid19-v1
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-covid19-v1, q_symptoms:{representation=MultiPageTopicQuestionnaire})

Instance: dev-sdc-phys-visit-v1
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-phys-visit-v1, physician_visit:{representation=SinglePageQuestionnaire})

// -------------------------------------
//    Automatic Transmission Devices
// -------------------------------------

Instance: dev-bp
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(bp, MDC_DEV_SPEC_PROFILE_BP, Blood pressure device)

Instance: dev-glucose
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(glucose, MDC_DEV_SPEC_PROFILE_GLUCOSE, Glucose device)

Instance: dev-inr
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(inr, MDC_DEV_SPEC_PROFILE_INR, INR device)

Instance: dev-puls-oxim
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(puls-oxim, MDC_DEV_SPEC_PROFILE_PULS_OXIM, Blood oximeter device)

Instance: dev-scale
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(scale, MDC_DEV_SPEC_PROFILE_SCALE, Scale)

Instance: dev-spiro
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(spiro, MDC_DEV_SPEC_PROFILE_SPIRO, Spirometry device)

Instance: dev-temp
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(temp, MDC_DEV_SPEC_PROFILE_TEMP, Temperature measurement device)

Instance: dev-ait-activity
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-activity, MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY, Activity measurement device)

Instance: dev-ait-getemed-ekg
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-getemed-ekg, MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG, Getemed ECG measurement device)

Instance: dev-ait-hf-cardio-ebike-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-hf-cardio-ebike-config, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG, Cardio Ebike configuration)
* insert KIOLAMeasurementUIReferenceRuleSet(ebike)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.healthebikes)

Instance: dev-ait-hf-cardio-ebike-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-hf-cardio-ebike-result, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT, Cardio Ebike result)

Instance: dev-ait-hf-cardio-ergo-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-hf-cardio-ergo-config, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG, Cardio Ergo configuration)
* insert KIOLAMeasurementUIReferenceRuleSet(ergo)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.emotioncardio)

Instance: dev-ait-hf-cardio-ergo-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-hf-cardio-ergo-result, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT, Cardio Ergo result)

Instance: dev-ait-sleepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-sleepsequence, MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE, Sleepsequence measurement device)

Instance: dev-ait-smwt
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-smwt, MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT, 6-Minute-Walk-Test measurement)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.his.smwt)

Instance: dev-ait-stepcounter
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-stepcounter, MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER, Step counter measurement)

Instance: dev-ait-stepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-stepsequence, MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE, Stepsequence measurement)

Instance: dev-ait-fhir-diagnostic-report
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-fhir-diagnostic-report, MDC_DEV_SPEC_PROFILE_VND_AIT_FHIR_DIAGNOSTIC_REPORT, FHIR Diagnostic report)

Instance: dev-ait-alivecor-ecg
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #example
Title: "AliveCor Device Definition Example"
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(ait-alivecor-ecg, MDC_DEV_SPEC_PROFILE_VND_AIT_FHIR_DIAGNOSTIC_REPORT, FHIR Diagnostic report)
* manufacturerString = "AliveCor"
* deviceName[+].name = "KardiaMobile 6L"
* deviceName[=].type = #manufacturer-name
* specialization[+].systemType = "EC"
* specialization[=].extension[+].url = "https://fhir.ehealth-systems.at/extensions/DeviceDefinition/specializationSystemTypeCodeableConcept"
* specialization[=].extension[=].valueCodeableConcept.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0074#EC "Electrocardiac"
* specialization[=].extension[=].valueCodeableConcept.coding[+] = https://fhir.ehealth-systems.at/kiola/diagnostic-report/#ALIVECOR_ECG "AliveCor ECG Report"