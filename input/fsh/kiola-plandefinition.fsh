Profile: KIOLAStandardTreatmentPlanDefinition
Parent: PlanDefinition
Id: kiola-standard-treatment-plan-definition
Title: "KIOLA Standard Treatment Plan Definition"
Description: "Standard treatment plan definition for a set of KIOLA activities. Can be applied to patients as a stand-alone plan or in combination with other plans. Might be individualized for a single patient, after applying it."

* . ^short = "Standard treatment plan for a set of KIOLA activities"
* url 1..1 MS
* url ^short = "The URI of this standard plan, used to identify which standard plans a patient is enrolled to. Currently, versioning is not supported."
* name 1..1 MS
* name ^short = "The name of the standard plan. Corresponds to the name of the KIOLA subject tag, used for e.g. filtering."
* action ^slicing.discriminator.type = #profile
* action ^slicing.discriminator.path = "definition.resolve()"
* action ^slicing.rules = #open
* action ^slicing.description = "foo"
* action ^slicing.ordered = false
* action contains kiolaMeasurement 0..* MS
* action[kiolaMeasurement] ^short = "Measurement activities, that are part of this standard plan"
* action[kiolaMeasurement].definition[x] ^short = "The definition of the activity. This is the only required element for an action."
* action[kiolaMeasurement].definition[x] 1..1 MS
* action[kiolaMeasurement].definition[x] only Canonical(KIOLAActivityDefinitionMeasurement)
* action[kiolaMeasurement].timing[x] ^slicing.discriminator.type = #type
* action[kiolaMeasurement].timing[x] ^slicing.discriminator.path = "$this"
* action[kiolaMeasurement].timing[x] ^slicing.rules = #open
* action[kiolaMeasurement].timing[x] ^slicing.description = "foo"
* action[kiolaMeasurement].timing[x] ^slicing.ordered = false
* action[kiolaMeasurement].timing[x] contains measurementInterval 0..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval] only Timing
* action[kiolaMeasurement].timing[x][measurementInterval] ^short = "Measurement interval"
* action[kiolaMeasurement].timing[x][measurementInterval] ^definition = "The measurement interval of this profile. This can be used to measure a patient's compliance to the care plan. A patient is compliant to the service request, if the measurements are taken frequency times per period."
* action[kiolaMeasurement].timing[x][measurementInterval].repeat 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.frequency 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.frequency ^short = "Measurement should be taken frequency times per period"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.period 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodMax MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodMax ^short = "Grace period, until warnings should appear"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodMax ^definition = "A patient is only compliant to the service request, if the measurements are taken frequency times per period. However, if the periodMax is reached, an additional warning should be displayed to the user and staff."
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodUnit 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodUnit = #d
* action[kiolaMeasurement].participant ^short = "If present, the given measurement devices override the allowed measurement devices from the activity definition"
* action[kiolaMeasurement].participant ^definition = "Indicates which devices are allowed to document the measurements. This may only be a subset of the devices defined in the activity definition."
* action[kiolaMeasurement].participant ^slicing.discriminator.type = #value
* action[kiolaMeasurement].participant ^slicing.discriminator.path = "extension('http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition').value.resolve().type"
* action[kiolaMeasurement].participant ^slicing.rules = #open
* action[kiolaMeasurement].participant ^slicing.description = "foo"
* action[kiolaMeasurement].participant ^slicing.ordered = false
* action[kiolaMeasurement].participant contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* action[kiolaMeasurement].participant[automaticTransmission] ^short = "Measurements might be transmitted automatically using a device like specified here"
* action[kiolaMeasurement].participant[automaticTransmission].type = #device
* action[kiolaMeasurement].participant[automaticTransmission].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition] ^short = "Either refer to the corresponding device definition of the measurement definition, or to an adapted compatible definition."
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition].valueReference 1..1 MS
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionAutomaticTransmission)
* action[kiolaMeasurement].participant[manualEntry] ^short = "Measurements might be entered manually using a device like specified here"
* action[kiolaMeasurement].participant[manualEntry].type = #device
* action[kiolaMeasurement].participant[manualEntry].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition] ^short = "Either refer to the corresponding device definition of the measurement definition, or to an adapted compatible definition."
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition].valueReference 1..1 MS
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionManualEntry)