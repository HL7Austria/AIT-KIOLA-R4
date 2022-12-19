Profile: KIOLACarePlan
Parent: CarePlan
Id: kiola-care-plan
Title: "KIOLA Care Plan"
Description: "Care plan containing KIOLA activities."

// TODO: status = active -> active care plan for patient
// TODO: intent = order -> is expected, everything else unsupported for now (should be ignored by the client)
// only one active order care plan for this category may exist for a subject
* subject only Reference(Patient)
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier.system = "http://fhir.ehealth-systems.at/kiola/patient/identifier/uuid"
* subject.identifier.value ^short = "KIOLA UUID of the subject"
* category 1.. MS
* category.coding = http://fhir.ehealth-systems.at/kiola/careplan/category#kiola-care-plan
* instantiatesCanonical MS
* instantiatesCanonical only Canonical(KIOLAPlanDefinition)
//* activity.reference 1..1 MS
//* activity.reference only Reference(KIOLARequestGroup or KIOLAMeasurementServiceRequest)
* activity MS
// TODO: status = active
* activity ^slicing.discriminator.type = #profile
* activity ^slicing.discriminator.path = "reference.resolve()"
* activity ^slicing.rules = #open  // ignore everything else
* activity ^slicing.description = "foo"
* activity ^slicing.ordered = false
* activity contains kiolaRequestGroup 0..* MS and kiolaServiceRequestMeasurement 0..* MS
* activity[kiolaRequestGroup] ^short = "Actions, following a treatment program"
* activity[kiolaRequestGroup].reference 1..1 MS
* activity[kiolaRequestGroup].reference only Reference(KIOLARequestGroup)
* activity[kiolaRequestGroup].reference ^type.aggregation = #contained
* activity[kiolaServiceRequestMeasurement] ^short = "Patient-specific measurement actions"
* activity[kiolaServiceRequestMeasurement].reference 1..1 MS
* activity[kiolaServiceRequestMeasurement].reference only Reference(KIOLAMeasurementServiceRequest)
* activity[kiolaServiceRequestMeasurement].reference ^type.aggregation = #contained


Profile: KIOLARequestGroup
Parent: RequestGroup
Id: kiola-request-group
Title: "KIOLA Request Group"
Description: "KIOLA profile for request groups."

* instantiatesCanonical 1..1 MS // TODO:sbe this strict? => would need slicing otherwise
* instantiatesCanonical only Canonical(KIOLAPlanDefinition)
* action.resource 1..1 MS
* action.resource only Reference(KIOLAMeasurementServiceRequest)
//* action MS
//* action ^slicing.discriminator.type = #type
//* action ^slicing.discriminator.path = "resource.resolve()"
//* action ^slicing.rules = #closed
//* action ^slicing.description = "foo"
//* action ^slicing.ordered = false
//* action contains kiolaServiceRequestMeasurement 0..* MS
//* action[kiolaServiceRequestMeasurement] ^short = "Patient-specific measurement actions"
//* action[kiolaServiceRequestMeasurement].resource 1..1 MS
//* action[kiolaServiceRequestMeasurement].resource only Reference(KIOLAMeasurementServiceRequest)
//* action[kiolaServiceRequestMeasurement].resource ^type.aggregation = #contained


Profile: KIOLAMeasurementServiceRequest
Parent: ServiceRequest
Id: kiola-service-request-measurement
Title: "KIOLA Measurement Request"
Description: "Request for a KIOLA vital data measurement."

* . ^short = "A request to measure vital data and document the results"
* instantiatesCanonical 1..1  // TODO:sbe this strict? => would need slicing otherwise
* instantiatesCanonical only Canonical(KIOLAActivityDefinitionMeasurement)
* instantiatesCanonical ^short = "The measurement definition this request is based on"
// TODO: slicing, one code must be of measurement types
* code 1..1 MS
* code from KIOLAMeasurementTypes // FUTURE: (extensible) -> fallback in client
//* category 1.. MS <- needed when code becomes extensible
//* category = http://fhir.ehealth-systems.at/kiola/servicerequest/category#kiola-vital-data-measurement
* code ^short = "The kind of measurement that should be taken"
* occurrence[x] ^slicing.discriminator.type = #type
* occurrence[x] ^slicing.discriminator.path = "$this"
* occurrence[x] ^slicing.rules = #open
* occurrence[x] ^slicing.description = "foo"
* occurrence[x] ^slicing.ordered = false
* occurrence[x] contains measurementInterval 0..1 MS
* occurrence[x][measurementInterval] only Timing
* occurrence[x][measurementInterval] ^short = "Measurement interval"
* occurrence[x][measurementInterval] ^definition = "The measurement interval of this profile. This can be used to measure a patient's compliance to the care plan. A patient is compliant to the service request, if the measurements are taken frequency times per period."
* occurrence[x][measurementInterval].repeat 1..1 MS
* occurrence[x][measurementInterval].repeat.frequency 1..1 MS
* occurrence[x][measurementInterval].repeat.frequency ^short = "Measurement should be taken frequency times per period"
* occurrence[x][measurementInterval].repeat.period 1..1 MS
* occurrence[x][measurementInterval].repeat.period ^short = "Measurement should be taken frequency times per period"
* occurrence[x][measurementInterval].repeat.periodMax MS
* occurrence[x][measurementInterval].repeat.periodMax ^short = "Grace period, until warnings should appear"
* occurrence[x][measurementInterval].repeat.periodMax ^definition = "A patient is only compliant to the service request, if the measurements are taken frequency times per period. However, if the periodMax is reached, an additional warning should be displayed to the user and staff."
* occurrence[x][measurementInterval].repeat.periodUnit 1..1 MS
* occurrence[x][measurementInterval].repeat.periodUnit = #d
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "resolve().type"
* performer ^slicing.rules = #open
* performer ^slicing.description = "foo"
* performer ^slicing.ordered = false
* performer contains automaticTransmission 0..1 MS and manualEntry 0..1 MS
* performer[automaticTransmission] ^short = "Measurements can be transmitted automatically"
* performer[automaticTransmission] ^type.aggregation = #contained
* performer[automaticTransmission] only Reference(KIOLADeviceAutomaticTransmission)
* performer[manualEntry] ^short = "Measurements can be entered manually"
* performer[manualEntry] ^type.aggregation = #contained
* performer[manualEntry] only Reference(KIOLADeviceManualEntry)
