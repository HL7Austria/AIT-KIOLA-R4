// -------------------------------------
//          Manual Entry Devices
// -------------------------------------

Instance: kiola-measurement-device-definition-sdc
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* id = "deviceDefinition-sdc"

Instance: kiola-measurement-device-definition-sdc-generic-questionnaire
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-generic-questionnaire, q_symptoms:{representation=MultiPageTopicQuestionnaire})

Instance: kiola-measurement-device-definition-sdc-glucose-suppl
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-glucose-suppl, glucose_suppl:{representation=SinglePageQuestionnaire})

Instance: kiola-measurement-device-definition-sdc-med-daily-dose
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-med-daily-dose, q_medication_intake:{representation=MultiPageTopicQuestionnaire})

Instance: kiola-measurement-device-definition-sdc-covid19
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-covid19, q_symptoms:{representation=MultiPageTopicQuestionnaire})

Instance: kiola-measurement-device-definition-sdc-phys-visit
InstanceOf: KIOLAMeasurementManualEntryDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(sdc-phys-visit, physician_visit:{representation=SinglePageQuestionnaire})

// -------------------------------------
//    Automatic Transmission Devices
// -------------------------------------

Instance: kiola-measurement-device-definition-blood-pressure
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(blood-pressure, MDC_DEV_SPEC_PROFILE_BP, Blood pressure device)

Instance: kiola-measurement-device-definition-glucose
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(glucose, MDC_DEV_SPEC_PROFILE_GLUCOSE, Glucose device)

Instance: kiola-measurement-device-definition-inr
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(inr, MDC_DEV_SPEC_PROFILE_INR, INR device)

Instance: kiola-measurement-device-definition-puls-oxim
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(puls-oxim, MDC_DEV_SPEC_PROFILE_PULS_OXIM, Blood oximeter device)

Instance: kiola-measurement-device-definition-scale
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(scale, MDC_DEV_SPEC_PROFILE_SCALE, Scale)

Instance: kiola-measurement-device-definition-spiro
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(spiro, MDC_DEV_SPEC_PROFILE_SPIRO, Spirometry device)

Instance: kiola-measurement-device-definition-temp
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(temp, MDC_DEV_SPEC_PROFILE_TEMP, Temperature measurement device)

Instance: kiola-measurement-device-definition-activity
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(activity, MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY, Activity measurement device)

Instance: kiola-measurement-device-definition-getemed-ekg
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(getemed-ekg, MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG, Getemed ECG measurement device)

Instance: kiola-measurement-device-definition-cardio-ebike-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(cardio-ebike-config, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG, Cardio Ebike configuration)
* insert KIOLAMeasurementUIReferenceRuleSet(ebike)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.healthebikes)

Instance: kiola-measurement-device-definition-cardio-ebike-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(cardio-ebike-result, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT, Cardio Ebike result)

Instance: kiola-measurement-device-definition-cardio-ergo-config
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(cardio-ebike-config, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG, Cardio Ergo configuration)
* insert KIOLAMeasurementUIReferenceRuleSet(ergo)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.emotioncardio)

Instance: kiola-measurement-device-definition-cardio-ergo-result
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(cardio-ergo-result, MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT, Cardio Ergo result)

Instance: kiola-measurement-device-definition-sleepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(sleepsequence, MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE, Sleepsequence measurement device)

Instance: kiola-measurement-device-definition-smwt
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(smwt, MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT, 6-Minute-Walk-Test measurement)
* insert KIOLAMeasurementAppPackageRuleSet(at.ac.ait.his.smwt)

Instance: kiola-measurement-device-definition-stepcounter
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(stepcounter, MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER, Step counter measurement)

Instance: kiola-measurement-device-definition-stepsequence
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #inline
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(stepsequence, MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE, Stepsequence measurement)

Instance: kiola-measurement-device-definition-alivecor-ecg
InstanceOf: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Usage: #example
* insert KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(alivecor-ecg, MDC_DEV_SPEC_PROFILE_VND_AIT_FHIR_DIAGNOSTIC_REPORT, FHIR Diagnostic report)
* manufacturerString = "AliveCor"
* deviceName[+].name = "KardiaMobile 6L"
* deviceName[=].type = #manufacturer-name
* specialization[+].systemType = "EC"
* specialization[=].extension[+].url = "http://fhir.ehealth-systems.at/extensions/DeviceDefinition/specializationSystemTypeCodeableConcept"
* specialization[=].extension[=].valueCodeableConcept.coding[+] = http://terminology.hl7.org/CodeSystem/v2-0074#EC "Electrocardiac"
* specialization[=].extension[=].valueCodeableConcept.coding[+] = http://fhir.ehealth-systems.at/kiola/diagnostic-report/#ALIVECOR_ECG "AliveCor ECG Report"