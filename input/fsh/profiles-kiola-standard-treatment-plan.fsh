Profile: KIOLAStandardTreatmentPlan
Parent: PlanDefinition
Id: kiola-standard-treatment-plan
Title: "KIOLA Standard Treatment Plan"
Description: "A standard treatment plan for a set of KIOLA activities. It can be applied to patients as a stand-alone plan or in combination with other plans and might be individualized for a single patient, after applying it."
* . ^short = "Standard treatment plan for a set of KIOLA activities"
* url 1..1 MS
* url ^short = "The URI of this standard plan, used to identify which standard plans a patient is enrolled to. Currently, versioning is not supported."
* name 1..1 MS
* name ^short = "The name of the standard plan. Corresponds to the name of the KIOLA subject tag, used for e.g. filtering."
* status MS
* action ^slicing.discriminator.type = #profile
* action ^slicing.discriminator.path = "definition.resolve()"
* action ^slicing.rules = #open
* action ^slicing.description = "foo"
* action ^slicing.ordered = false
* action contains kiolaMeasurement 0..* MS
* action[kiolaMeasurement] ^short = "Measurement activities, that are part of this standard plan"
* action[kiolaMeasurement].definition[x] ^short = "The definition of the activity. This is the only required element for an action."
* action[kiolaMeasurement].definition[x] 1..1 MS
* action[kiolaMeasurement].definition[x] only Canonical(KIOLAMeasurementDefinition)
* action[kiolaMeasurement].extension contains PlanDefinitionPatientInstruction named patientInstruction 0..1 MS
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
* action[kiolaMeasurement].timing[x][measurementInterval].repeat ^short = "How many times should a measurement be taken per period"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat ^definition = "A patient is only compliant to the service request, if the measurements are taken frequency times per period. A success message may appear, if the requested frequency of measurements is reached in the current period. A warning may be displayed, if the frequency has not been reached in the previous period. If periodMax is set this warning should only be displayed in case the frequency is still not reached after the specified grace period."
* action[kiolaMeasurement].timing[x][measurementInterval].repeat obeys kiola-measurement-interval
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.frequency 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.frequency ^short = "Measurement should be taken frequency times per period"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.period 1..1 MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.period ^short = "Measurement should be taken frequency times per period"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodMax MS
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodMax ^short = "Grace period"
* action[kiolaMeasurement].timing[x][measurementInterval].repeat.periodUnit 1..1 MS
* action[kiolaMeasurement].participant ^short = "If present, the given measurement devices override the allowed measurement devices from the activity definition"
* action[kiolaMeasurement].participant ^definition = "Indicates which devices are allowed to document the measurements. This may only be a subset of the devices defined in the activity definition."
* action[kiolaMeasurement].participant ^slicing.discriminator.type = #value
* action[kiolaMeasurement].participant ^slicing.discriminator.path = "extension('https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition').value.resolve().type"
* action[kiolaMeasurement].participant ^slicing.rules = #open
* action[kiolaMeasurement].participant ^slicing.description = "foo"
* action[kiolaMeasurement].participant ^slicing.ordered = false
* action[kiolaMeasurement].participant contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* action[kiolaMeasurement].participant[automaticTransmission] ^short = "Measurements might be transmitted automatically using a device like specified here"
* action[kiolaMeasurement].participant[automaticTransmission].type = #device
* action[kiolaMeasurement].participant[automaticTransmission].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition] ^short = "Either refer to the corresponding device definition of the measurement definition, or to an adapted compatible definition."
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition].valueReference 1..1 MS
* action[kiolaMeasurement].participant[automaticTransmission].extension[participantDeviceDefinition].valueReference only Reference(KIOLAMeasurementAutomaticTransmissionDeviceDefinition)
* action[kiolaMeasurement].participant[manualEntry] ^short = "Measurements might be entered manually using a device like specified here"
* action[kiolaMeasurement].participant[manualEntry].type = #device
* action[kiolaMeasurement].participant[manualEntry].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition] ^short = "Either refer to the corresponding device definition of the measurement definition, or to an adapted compatible definition."
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition].valueReference 1..1 MS
* action[kiolaMeasurement].participant[manualEntry].extension[participantDeviceDefinition].valueReference only Reference(KIOLAMeasurementManualEntryDeviceDefinition)

Profile: KIOLAMeasurementDefinition
Parent: ActivityDefinition
Id: kiola-measurement-definition
Title: "KIOLA Measurement Definition"
Description: "The definition of a vital data measurement for KIOLA."
* . ^short = "A definition of a request to measure vital data and document the results"
* kind 1..1
* kind = #ServiceRequest
* url ^short = "The URI of this measurement definition, used to identify which standard plans a patient is enrolled to. Currently, versioning is not supported."
* url 1..1 MS
* name 1..1 MS
* status MS
* code ^short = "The kind of measurement that should be taken"
* code 1..1 MS
* code from KIOLAMeasurementTypes
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "extension('https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition').value.resolve().type"
* participant ^slicing.rules = #open
* participant ^slicing.description = "foo"
* participant ^slicing.ordered = false
* participant contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* participant[automaticTransmission].type = #device
* participant[automaticTransmission].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* participant[automaticTransmission].extension[participantDeviceDefinition].valueReference 1..1 MS
* participant[automaticTransmission].extension[participantDeviceDefinition].valueReference only Reference(KIOLAMeasurementAutomaticTransmissionDeviceDefinition)
* participant[manualEntry].type = #device
* participant[manualEntry].extension contains ParticipantDeviceDefinition named participantDeviceDefinition 1..1 MS
* participant[manualEntry].extension[participantDeviceDefinition].valueReference 1..1 MS
* participant[manualEntry].extension[participantDeviceDefinition].valueReference only Reference(KIOLAMeasurementManualEntryDeviceDefinition)

Profile: KIOLAMeasurementDeviceDefinition
Parent: DeviceDefinition
Id: kiola-measurement-device-definition
Title: "KIOLA Measurement Device Definition"
Description: "Definition of an abstract device for recording a KIOLA vital data measurement."
* ^abstract = true
* type ^short = "Type of measurement recording device"
* type from KIOLAMeasurementDeviceTypes
* type 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "foo"
* property ^slicing.ordered = false
* property contains uiReference 0..1 MS
* property[uiReference] ^short = "UI reference which is used to display the device on a client"
* property[uiReference].type = https://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference
* property[uiReference].valueQuantity ..0
* property[uiReference].valueCode 1..1 MS
* property[uiReference].valueCode from KMCUIReferences (example)

Profile: KIOLAMeasurementAutomaticTransmissionDeviceDefinition
Parent: KIOLAMeasurementDeviceDefinition
Id: kiola-measurement-automatic-transmission-device-definition
Title: "KIOLA Measurement Automatic Transmission Device Definition"
Description: "Definition of a device supporting automatic transmission of KIOLA vital data measurements, without entering the data manually."
* type from KIOLAMeasurementAutomaticTransmissionDeviceTypes
* property contains appPackage 0..1 MS and blockedDeviceType 0..1 MS and multiMeasurement 0..1 MS
* property[appPackage] ^short = "Identifier of the app required to transmit the measurements"
* property[appPackage].type = https://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[appPackage].valueQuantity ..0
* property[appPackage].valueCode 1..1 MS
* property[appPackage].valueCode from KMCAppPackages (example)
* property[blockedDeviceType] ^short = "Blocked device types that should not be used for recording a measurement"
* property[blockedDeviceType].type = https://fhir.ehealth-systems.at/kiola/device/kmc#blocked_device_type
* property[blockedDeviceType].valueQuantity ..0
* property[blockedDeviceType].valueCode 1..1 MS
* property[blockedDeviceType].valueCode from KIOLADevices (example)
* property[multiMeasurement] ^short = "Record all measurements from the device. Otherwise only the latest measurement might be recorded."
* property[multiMeasurement].type = https://fhir.ehealth-systems.at/kiola/device/kmc#device_multi_measurement
* property[multiMeasurement].valueQuantity ..0
* property[multiMeasurement].valueCode 1..1 MS
* property[multiMeasurement].valueCode from KIOLABoolean (required)

Profile: KIOLAMeasurementManualEntryDeviceDefinition
Parent: KIOLAMeasurementDeviceDefinition
Id: kiola-measurement-manual-entry-device-definition
Title: "KIOLA Measurement Manual Entry Device Definition"
Description: "Definition of a device supporting manual data entry of KIOLA vital data measurements."
* type = https://fhir.ehealth-systems.at/kiola/device#SDC
