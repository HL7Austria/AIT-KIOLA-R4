Profile: KIOLAActivityDefinitionMeasurement
Parent: ActivityDefinition
Id: kiola-activity-definition-measurement
Title: "KIOLA Measurement Definition"
Description: "Definition of a vital data measurement for KIOLA."

* . ^short = "A definition of a request to measure vital data and document the results"
* kind 1..1
* kind = #ServiceRequest
* url ^short = "The URI of this measurement definition, used to identify which standard plans a patient is enrolled to. Currently, versioning is not supported."
* url 1..1 MS
* name 1..1 MS
* code ^short = "The kind of measurement that should be taken"
* code 1..1 MS
* code from KIOLAMeasurementTypes
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "extension('http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition').value.resolve().type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "foo"
* participant ^slicing.ordered = false
* participant contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* participant[automaticTransmission].type = #device
* participant[automaticTransmission].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* participant[automaticTransmission].extension[participantDeviceDefinition].valueReference 1..1 MS
* participant[automaticTransmission].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionAutomaticTransmission)
* participant[manualEntry].type = #device
* participant[manualEntry].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* participant[manualEntry].extension[participantDeviceDefinition].valueReference 1..1 MS
* participant[manualEntry].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionManualEntry)
