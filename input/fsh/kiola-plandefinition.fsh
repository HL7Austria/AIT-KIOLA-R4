Profile: KIOLAPlanDefinition
Parent: PlanDefinition
Id: kiola-plan-definition
Title: "KIOLA Plan Definition"
Description: "KIOLA profile for plan definitions."

* url 1..1 MS
* name 1..1 MS
* action ^slicing.discriminator.type = #profile
* action ^slicing.discriminator.path = "definition[x].resolve()"
* action ^slicing.rules = #open
* action ^slicing.description = "foo"
* action ^slicing.ordered = false
* action contains kiolaMeasurement 0..* MS
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
* action[kiolaMeasurement].participant ^slicing.discriminator.type = #exists
* action[kiolaMeasurement].participant ^slicing.discriminator.path = "extension(http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition)"
* action[kiolaMeasurement].participant ^slicing.rules = #open
* action[kiolaMeasurement].participant ^slicing.description = "foo"
* action[kiolaMeasurement].participant ^slicing.ordered = false
* action[kiolaMeasurement].participant contains measurementDevice 0..* MS
* action[kiolaMeasurement].participant[measurementDevice] ^short = "Override the allowed measurement devices from activity definition"
* action[kiolaMeasurement].participant[measurementDevice] ^definition = "Indicates which devices are allowed to document the measurements. This may only be a subset of the devices defined in the activity definition."
* action[kiolaMeasurement].participant[measurementDevice] ^slicing.discriminator.type = #value
* action[kiolaMeasurement].participant[measurementDevice] ^slicing.discriminator.path = "extension(http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition).valueReference.resolve().type"
* action[kiolaMeasurement].participant[measurementDevice] ^slicing.rules = #open
* action[kiolaMeasurement].participant[measurementDevice] ^slicing.description = "foo"
* action[kiolaMeasurement].participant[measurementDevice] ^slicing.ordered = false
* action[kiolaMeasurement].participant[measurementDevice].type = #device
* action[kiolaMeasurement].participant[measurementDevice].extension contains KIOLAParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[measurementDevice].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinition)
* action[kiolaMeasurement].participant[measurementDevice].extension[participantDeviceDefinition].valueReference 1..1 MS
* action[kiolaMeasurement].participant[measurementDevice] contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* action[kiolaMeasurement].participant[measurementDevice][automaticTransmission].extension contains KIOLAParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[measurementDevice][automaticTransmission].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionAutomaticTransmission)
* action[kiolaMeasurement].participant[measurementDevice][manualEntry].extension contains KIOLAParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[measurementDevice][manualEntry].extension[participantDeviceDefinition].valueReference only Reference(KIOLADeviceDefinitionManualEntry)