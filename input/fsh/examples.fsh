Instance: kiola-standard-treatment-plan-simple-example
InstanceOf: KIOLAStandardTreatmentPlan
Usage: #example
Title: "KIOLA Standard Treatment Plan Simple Example"
* name = "SimpleExample"
* url = "https://fhir.ehealth-systems.at/artifacts/PlanDefinition/SimpleExample"
* status = #active
* title = "Simple Example"
* action[0].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement/MDC_DEV_SPEC_PROFILE_BP"
* action[=].title = "Measurement Blood Pressure"
* action[+].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement/MDC_DEV_SPEC_PROFILE_SCALE"
* action[=].title = "Measurement Weight"
* action[+].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement/MDC_DEV_SPEC_PROFILE_VND_AIT_WELLBEING"
* action[=].title = "Measurement Wellbeing"

Instance: kiola-standard-treatment-plan-timing-example
InstanceOf: KIOLAStandardTreatmentPlan
Usage: #example
Title: "KIOLA Standard Treatment Plan Timing Example"
* name = "TimingExample"
* url = "https://fhir.ehealth-systems.at/artifacts/PlanDefinition/TimingExample"
* status = #active
* title = "Timing Example"
* action[0].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement/MDC_DEV_SPEC_PROFILE_BP"
* action[=].title = "Measurement Blood Pressure"
* action[=].timingTiming.repeat.frequency = 1
* action[=].timingTiming.repeat.period = 1
* action[=].timingTiming.repeat.periodUnit = #d

Instance: kiola-standard-treatment-plan-participant-example
InstanceOf: KIOLAStandardTreatmentPlan
Usage: #example
Title: "KIOLA Standard Treatment Plan Participant Example"
* name = "ParticipantExample"
* url = "https://fhir.ehealth-systems.at/artifacts/PlanDefinition/ParticipantExample"
* status = #active
* title = "Participant Example"
* action[0].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/mdc-dev-spec-profile-bp"
* action[=].title = "Measurement Blood Pressure"
* action[=].participant.type = #device
* action[=].participant.extension[0].url = "https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* action[=].participant.extension[=].valueReference.reference = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/mdc-dev-spec-profile-bp#dev-bp"

Instance: kiola-standard-treatment-plan-participant-property-example
InstanceOf: KIOLAStandardTreatmentPlan
Usage: #example
Title: "KIOLA Standard Treatment Plan Participant Property Example"
* name = "ParticipantPropertyExample"
* url = "https://fhir.ehealth-systems.at/artifacts/PlanDefinition/ParticipantPropertyExample"
* status = #active
* title = "Participant Property Example"
* action[0].definitionCanonical = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/mdc-dev-spec-profile-scale"
* action[=].title = "Measurement Weight"
* action[=].participant.type = #device
* action[=].participant.extension[0].url = "https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* action[=].participant.extension[=].valueReference.reference = "#deviceDefinitionScale"
* action[=].participant.extension[+].url = "https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* action[=].participant.extension[=].valueReference.reference = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/mdc-dev-spec-profile-scale#dev-sdc"
* contained[0] = kiola-measurement-device-definition-property-example

Instance: kiola-measurement-device-definition-property-example
InstanceOf: KIOLAMeasurementDeviceDefinition
Usage: #inline
* id = "dev-scale"
* type.coding[0] = https://fhir.ehealth-systems.at/kiola/device/AIT-11073#MDC_DEV_SPEC_PROFILE_SCALE "Body weight scale"
* property[0].type.coding[0] = https://fhir.ehealth-systems.at/kiola/device/kmc#blocked_device_type "KMC Blocked Device"
* property[=].valueCode[0].coding[0] = https://fhir.ehealth-systems.at/kiola/device#ExampleScale "Example body weight scale"
