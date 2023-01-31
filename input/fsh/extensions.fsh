Extension: ParticipantDeviceDefinition
Id: participant-device-definition
Title:  "Participant Device Definition"
Description: "Extension to add a device definition to a participant of an activity or plan definition."
* ^url = "http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* value[x] only Reference(DeviceDefinition)
* value[x] 1..1

Extension: PlanDefinitionPatientInstruction
Id: plan-definition-patient-instruction
Title:  "Plan Definition Patient Instruction"
Description: "Extension to add a patient instruction to the activity of a plan definition."
* ^url = "http://fhir.ehealth-systems.at/extensions/PlanDefinition/patientInstruction"
* value[x] only string
* value[x] 1..1

Extension: DeviceDefinitionSpecializationSystemTypeCodeableConcept
Id: device-definition-specialization-system-type-codeable-concept
Title:  "Device Definition Specialization System Type Codeable Concept"
Description: "Extension ..."
* ^url = "http://fhir.ehealth-systems.at/extensions/DeviceDefinition/specializationSystemTypeCodeableConcept"
* value[x] only CodeableConcept
* value[x] 1..1
