Profile: KIOLACarePlan
Parent: CarePlan
Id: kiola-care-plan
Title: "KIOLA Care Plan"
Description: "Patient-specific care plan, containing one or multiple instances of different KIOLA standard treatment plans,
that might have been adapted individually for the patient, and/or individually assigned KIOLA activities. 

Only care plans with status active and intent order should be considered for actual patient care, and 
only one such plan might exist at one point in time. Other care plans with this status and intent might be distinguished by using a different category.
Furthermore, only care plan activities with status active should be considered."

* . ^short = "KIOLA care plan for a single patient"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier"
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier.system = "http://fhir.ehealth-systems.at/kiola/patient/identifier/uuid"
* subject.identifier.value ^short = "KIOLA UUID of the subject"
* category 1.. MS
* category.coding = http://fhir.ehealth-systems.at/kiola/careplan/category#kiola-care-plan
* instantiatesCanonical ^slicing.discriminator.type = #value
* instantiatesCanonical ^slicing.discriminator.path = "$this"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaStandardTreatmentPlanDefinition 0..*
* instantiatesCanonical[kiolaStandardTreatmentPlanDefinition] ^short = "Standard treatment plan definitions, this care plan is based on."
* instantiatesCanonical[kiolaStandardTreatmentPlanDefinition] ^definition = "All contained treatment plans should be present here.
It is also permitted to add references to other treatment plan definitions, without a corresponding treatment plan in the actions element.

This list should be used to specify/determine which standard treatment plans the patient is treated with. "
* instantiatesCanonical[kiolaStandardTreatmentPlanDefinition] only Canonical(KIOLAStandardTreatmentPlanDefinition)
* activity MS
* activity ^slicing.discriminator.type = #profile
* activity ^slicing.discriminator.path = "reference.resolve()"
* activity ^slicing.rules = #open
* activity ^slicing.description = "All other activities, which do not fall into these sliced, should be ignored."
* activity ^slicing.ordered = false
* activity contains kiolaStandardTreatmentPlan 0..* MS and kiolaMeasurementRequest 0..* MS
* activity[kiolaStandardTreatmentPlan] ^short = "Instance of a standard treatment plan, which might have been individualized for the patient"
* activity[kiolaStandardTreatmentPlan].reference 1..1 MS
* activity[kiolaStandardTreatmentPlan].reference only Reference(KIOLAStandardTreatmentPlan)
* activity[kiolaStandardTreatmentPlan].reference ^type.aggregation = #contained
* activity[kiolaMeasurementRequest] ^short = "Patient-specific measurement actions"
* activity[kiolaMeasurementRequest].reference 1..1 MS
* activity[kiolaMeasurementRequest].reference only Reference(KIOLAMeasurementRequest)
* activity[kiolaMeasurementRequest].reference ^type.aggregation = #contained


Profile: KIOLAStandardTreatmentPlan
Parent: RequestGroup
Id: kiola-standard-treatment-plan
Title: "KIOLA Standard Treatment Plan"
Description: "Instance of a KIOLA standard treatment plan definition, that might have been adapted individually for the patient."

* . ^short = "KIOLA standard treatment plan, eventually adapted for the patient"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier. If present, shall conform to the subject of the care plan that this treatment plan is part of."
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier.system = "http://fhir.ehealth-systems.at/kiola/patient/identifier/uuid"
* subject.identifier.value ^short = "KIOLA UUID of the subject"
* instantiatesCanonical ^slicing.discriminator.type = #value
* instantiatesCanonical ^slicing.discriminator.path = "$this"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaStandardTreatmentPlanDefinition 1..1
* instantiatesCanonical[kiolaStandardTreatmentPlanDefinition] ^short = "Standard treatment plan defintion, this treatment plan is based on."
* instantiatesCanonical[kiolaStandardTreatmentPlanDefinition] only Canonical(KIOLAStandardTreatmentPlanDefinition)
* action MS
* action ^slicing.discriminator.type = #profile
* action ^slicing.discriminator.path = "resource.resolve()"
* action ^slicing.rules = #closed
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
Id: kiola-service-request-measurement
Title: "KIOLA Measurement Request"
Description: "Request to perform a KIOLA vital data measurement."

* . ^short = "A request to measure vital data and document the results"
* subject only Reference(Patient)
* subject ^short = "Reference to a KIOLA subject, either via reference or identifier. If present, shall conform to the subject of the care plan that this treatment plan is part of."
* subject.reference ^short = "Reference to a patient resource linked to a KIOLA subject"
* subject.identifier MS
* subject.identifier.system = "http://fhir.ehealth-systems.at/kiola/patient/identifier/uuid"
* subject.identifier.value ^short = "KIOLA UUID of the subject"
* instantiatesCanonical ^slicing.discriminator.type = #value
* instantiatesCanonical ^slicing.discriminator.path = "$this"
* instantiatesCanonical ^slicing.rules = #open
* instantiatesCanonical ^slicing.description = ""
* instantiatesCanonical ^slicing.ordered = false
* instantiatesCanonical contains kiolaMeasurementDefinition 1..1
* instantiatesCanonical[kiolaMeasurementDefinition] ^short = "The measurement definition this request is based on"
* instantiatesCanonical[kiolaMeasurementDefinition] only Canonical(KIOLAActivityDefinitionMeasurement)
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
* performer[automaticTransmission] ^short = "Measurements might be transmitted automatically using this device"
* performer[automaticTransmission] ^type.aggregation = #contained
* performer[automaticTransmission] only Reference(KIOLADeviceAutomaticTransmission)
* performer[manualEntry] ^short = "Measurements might be entered manually using this device"
* performer[manualEntry] ^type.aggregation = #contained
* performer[manualEntry] only Reference(KIOLADeviceManualEntry)
