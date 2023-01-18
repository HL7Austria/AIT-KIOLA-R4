Profile: KIOLACarePlan
Parent: CarePlan
Id: kiola-care-plan
Title: "KIOLA Care Plan"
Description: "A patient-specific care plan, containing one or multiple instances of different KIOLA standard treatment plans,
that might have been adapted individually for the patient, and/or individually assigned KIOLA activities."
* . ^short = "KIOLA care plan for a single patient"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier"
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier only KIOLASubjectUUIDIdentifier
* subject.identifier ^short = "KIOLA Subject UUID"
* category 1.. MS
* category.coding = http://fhir.ehealth-systems.at/kiola/careplan/category#kiola-care-plan
* status MS
* intent MS
* instantiatesCanonical ^slicing.discriminator.type = #profile
* instantiatesCanonical ^slicing.discriminator.path = "resolve()"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaStandardTreatmentPlan 0..*
* instantiatesCanonical[kiolaStandardTreatmentPlan] ^short = "Standard treatment plans, this care plan is based on."
* instantiatesCanonical[kiolaStandardTreatmentPlan] ^definition = "All contained treatment plans should be present here.
It is also permitted to add references to other treatment plan definitions, without a corresponding treatment plan in the actions element.

This list should be used to specify/determine which standard treatment plans the patient is treated with. "
* instantiatesCanonical[kiolaStandardTreatmentPlan] only Canonical(KIOLAStandardTreatmentPlan)
* activity MS
* activity ^slicing.discriminator.type = #profile
* activity ^slicing.discriminator.path = "reference.resolve()"
* activity ^slicing.rules = #open
* activity ^slicing.description = "All other activities, which do not fall into these sliced, should be ignored."
* activity ^slicing.ordered = false
* activity contains kiolaTreatmentPlan 0..* MS and kiolaMeasurementRequest 0..* MS
* activity[kiolaTreatmentPlan] ^short = "Instance of a standard treatment plan, which might have been individualized for the patient"
* activity[kiolaTreatmentPlan].reference 1..1 MS
* activity[kiolaTreatmentPlan].reference only Reference(KIOLATreatmentPlan)
* activity[kiolaTreatmentPlan].reference ^type.aggregation = #contained
* activity[kiolaMeasurementRequest] ^short = "Patient-specific measurements"
* activity[kiolaMeasurementRequest].reference 1..1 MS
* activity[kiolaMeasurementRequest].reference only Reference(KIOLAMeasurementRequest)
* activity[kiolaMeasurementRequest].reference ^type.aggregation = #contained


Profile: KIOLATreatmentPlan
Parent: RequestGroup
Id: kiola-treatment-plan
Title: "KIOLA Treatment Plan"
Description: "Instance of a KIOLA standard treatment plan, that might have been adapted individually for the patient."
* . ^short = "KIOLA treatment plan, eventually adapted for the patient"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier. If present, shall conform to the subject of the care plan that this treatment plan is part of."
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier only KIOLASubjectUUIDIdentifier
* subject.identifier ^short = "KIOLA Subject UUID"
* status MS
* intent MS
* instantiatesCanonical ^slicing.discriminator.type = #profile
* instantiatesCanonical ^slicing.discriminator.path = "resolve()"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaStandardTreatmentPlan 1..1
* instantiatesCanonical[kiolaStandardTreatmentPlan] ^short = "Standard treatment plan, this treatment plan is based on."
* instantiatesCanonical[kiolaStandardTreatmentPlan] only Canonical(KIOLAStandardTreatmentPlan)
* action MS
// FIXME:sbe slicing somehow does not seem to work with the validator (change to closed to get more detailed output), the code below seems to work
//* action ^short = "Measurement requests, corresponding to the treatment plan definition."
//* action ^definition = "Measurement requests, corresponding to the activities defined in the treatment plan definition, which might have been individualized for the patient. 
//No action shall be added that does not correspond to an action in the definition, but actions might be removed."
//* action.resource 1..1
//* action.resource only Reference(KIOLAMeasurementRequest)
//* action.resource ^type.aggregation = #contained
* action ^slicing.discriminator.type = #profile
* action ^slicing.discriminator.path = "resource.resolve()" // FIXME:sbe does not seem to work in validator
* action ^slicing.rules = #open
* action ^slicing.description = "foo"
* action ^slicing.ordered = false
* action contains kiolaMeasurementRequests 0..* MS
* action[kiolaMeasurementRequests] ^short = "Measurement requests, corresponding to the treatment plan definition."
* action[kiolaMeasurementRequests] ^definition = "Measurement requests, corresponding to the activities defined in the treatment plan definition, which might have been individualized for the patient. 
No action shall be added that does not correspond to an action in the definition, but actions might be removed."
* action[kiolaMeasurementRequests].resource 1..1 MS
* action[kiolaMeasurementRequests].resource only Reference(KIOLAMeasurementRequest)
* action[kiolaMeasurementRequests].resource ^type.aggregation = #contained


Profile: KIOLAMeasurementRequest
Parent: ServiceRequest
Id: kiola-measurement-request
Title: "KIOLA Measurement Request"
Description: "Request to perform a KIOLA vital data measurement."
* . ^short = "A request to measure vital data and document the results"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier. If present, shall conform to the subject of the care plan that this treatment plan is part of."
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier only KIOLASubjectUUIDIdentifier
* subject.identifier ^short = "KIOLA Subject UUID"
* status MS
* intent MS
* instantiatesCanonical ^slicing.discriminator.type = #profile
* instantiatesCanonical ^slicing.discriminator.path = "resolve()"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaMeasurementDefinition 1..1
* instantiatesCanonical[kiolaMeasurementDefinition] ^short = "The measurement definition this request is based on"
* instantiatesCanonical[kiolaMeasurementDefinition] only Canonical(KIOLAMeasurementDefinition)
* code 1..1 MS
* code from KIOLAMeasurementTypes
// FUTURE: (extensible) -> fallback in client
//   * category 1.. MS <- needed when code becomes extensible
//   * category = http://fhir.ehealth-systems.at/kiola/servicerequest/category#kiola-vital-data-measurement
* code ^short = "The kind of measurement that should be taken"
* occurrence[x] ^slicing.discriminator.type = #type
* occurrence[x] ^slicing.discriminator.path = "$this"
* occurrence[x] ^slicing.rules = #open
* occurrence[x] ^slicing.description = "foo"
* occurrence[x] ^slicing.ordered = false
* occurrence[x] contains measurementInterval 0..1 MS
* occurrence[x][measurementInterval] only Timing
* occurrence[x][measurementInterval] ^short = "Measurement interval"
* occurrence[x][measurementInterval].repeat ^short = "How many times should a measurement be taken per period"
* occurrence[x][measurementInterval].repeat ^definition = "A patient is only compliant to the service request, if the measurements are taken frequency times per period. A success message may appear, if the requested frequency of measurements is reached in the current period. A warning may be displayed, if the frequency has not been reached in the previous period. If periodMax is set this warning should only be displayed in case the frequency is still not reached after the specified grace period."
* occurrence[x][measurementInterval].repeat 1..1 MS
* occurrence[x][measurementInterval].repeat obeys kiola-measurement-interval
* occurrence[x][measurementInterval].repeat.frequency 1..1 MS
* occurrence[x][measurementInterval].repeat.frequency ^short = "Measurement should be taken frequency times per period"
* occurrence[x][measurementInterval].repeat.period 1..1 MS
* occurrence[x][measurementInterval].repeat.period ^short = "Measurement should be taken frequency times per period"
* occurrence[x][measurementInterval].repeat.periodMax MS
* occurrence[x][measurementInterval].repeat.periodMax ^short = "Grace period"
* occurrence[x][measurementInterval].repeat.periodMax ^definition = "A patient is only compliant to the service request, if the measurements are taken frequency times per period. However, if the periodMax is reached, an additional warning should be displayed to the user and staff."
* occurrence[x][measurementInterval].repeat.periodUnit 1..1 MS
// FIXME:sbe slicing somehow does not seem to work with the validator (change to closed to get more detailed output), the code below seems to work
//* performer 1..2
//* performer only Reference(KIOLAMeasurementManualEntryDevice or KIOLAMeasurementAutomaticTransmissionDevice)
* performer 1..*
* performer only Reference(Device)
* performer obeys kiola-measurement-supported-devices
* performer ^definition = "If a performer defines properties that are also applicable for other devices (e.g. allowed measurement units), the properties of the automatic transmission device should have precedence in case there are any conflicts."
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "resolve().type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "foo"
* performer ^slicing.ordered = false
* performer contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* performer[automaticTransmission] ^short = "Measurements might be transmitted automatically by a device like this"
* performer[automaticTransmission] ^type.aggregation = #contained
* performer[automaticTransmission] only Reference(KIOLAMeasurementAutomaticTransmissionDevice)
* performer[manualEntry] ^short = "Measurements might be entered manually using a device like this"
* performer[manualEntry] ^type.aggregation = #contained
* performer[manualEntry] only Reference(KIOLAMeasurementManualEntryDevice)

Invariant: kiola-measurement-supported-devices
Description: "At least one supported device should be present. Otherwise a warning should be displayed when visualizing the care plan and the measurement request should be ignored when interpreting the care plan."
Severity: #warning

Profile: KIOLAMeasurementDevice
Parent: Device
Id: kiola-measurement-device
Title: "KIOLA Measurement Device"
Description: "An abstract device for recording a KIOLA vital data measurement."
* ^abstract = true
* definition only Reference(KIOLAMeasurementDeviceDefinition)
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
* property[uiReference].type = http://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference
* property[uiReference].valueQuantity ..0
* property[uiReference].valueCode 1..1 MS
* property[uiReference].valueCode from KMCUIReferences (example)

Profile: KIOLAMeasurementAutomaticTransmissionDevice
Parent: KIOLAMeasurementDevice
Id: kiola-measurement-automatic-transmission-device
Title: "KIOLA Measurement Automatic Transmission Device"
Description: "Device supporting automatic transmission of KIOLA vital data measurements, without entering the data manually."
* definition only Reference(KIOLAMeasurementAutomaticTransmissionDeviceDefinition)
* type from KIOLAMeasurementAutomaticTransmissionDeviceTypes
* property contains appPackage 0..1 MS and blockedDeviceType 0..1 MS and multiMeasurement 0..1 MS and measurementProperties 0..1 MS
* property[appPackage] ^short = "Identifier of the app required to transmit the measurements"
* property[appPackage].type = http://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[appPackage].valueQuantity ..0
* property[appPackage].valueCode 1..1 MS
* property[appPackage].valueCode from KMCAppPackages (example)
* property[blockedDeviceType] ^short = "Blocked device types that should not be used for recording a measurement"
* property[blockedDeviceType].type = http://fhir.ehealth-systems.at/kiola/device/kmc#blocked_device_type
* property[blockedDeviceType].valueQuantity ..0
* property[blockedDeviceType].valueCode 1..1 MS
* property[blockedDeviceType].valueCode from KIOLADevices (example)
* property[multiMeasurement] ^short = "Record all measurements from the device. Otherwise only the latest measurement might be recorded."
* property[multiMeasurement].type = http://fhir.ehealth-systems.at/kiola/device/kmc#device_multi_measurement
* property[multiMeasurement].valueQuantity ..0
* property[multiMeasurement].valueCode 1..1 MS
* property[multiMeasurement].valueCode from KIOLABoolean (required)
* property[measurementProperties] ^short = "Desired properties of the measurement, which are usually system and/or user dependent"
* property[measurementProperties].type from KIOLAMeasurementAutomaticTransmissionProperties (extensible)
* property[measurementProperties].valueCode from KIOLAMeasurementUnits (example)

Profile: KIOLAMeasurementManualEntryDevice
Parent: KIOLAMeasurementDevice
Id: kiola-measurement-manual-entry-device
Title: "KIOLA Measurement Manual Entry Device"
Description: "Device supporting manual data entry of KIOLA vital data measurements."
* definition only Reference(KIOLAMeasurementManualEntryDeviceDefinition)
* type = http://fhir.ehealth-systems.at/kiola/device#SDC
