Instance: kiola-standard-treatment-plan-management
InstanceOf: CapabilityStatement
Usage: #definition
Title: "KIOLA Standard Treatment Plan Management"
* version = "1"
* status = #draft
* date = "2023-01-11"
* name = "KIOLAStandardTreatmentPlanManagement"
* kind = #capability
* fhirVersion[0] = #4.0.1
* format[0] = #application/fhir+json
* description = "KIOLA standard treatment plans might be managed by another system. Existing plans might be queried. new KIOLA standard treatment plans or updated versions of existing plans might be uploaded to the server. Also the status of existing plans might be changed."
* software.name = "KIOLA"
* software.version = "Bundle 2.5"
* software.releaseDate = "2023-02-01"
* purpose = "This capability might be used by other systems (e.g. editors for standard treatment plans) to upload new or updated KIOLA standard treatment plans."
// * title = "foo" not rendered
* rest[0].mode = #server
* rest[=].documentation = "
A KIOLA standard treatment plan can be uploaded to the server, by simply using the create operation. Similarily, plans might be updated by using the read operation and a successive update operation with the modified plan. In the case of an update, existing instances of standard treatment plans (treatment plans in KIOLA care plans) are not upgraded. This might be done manually, e.g. by reapplying the treatment plan to the respective patients.
"
* rest[=].resource[0].type = #PlanDefinition
* rest[=].resource[=].profile = Canonical(KIOLAStandardTreatmentPlan)
* rest[=].resource[=].interaction[0].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update

Instance: kiola-standard-treatment-plan-set-default
InstanceOf: CapabilityStatement
Usage: #definition
Title: "KIOLA Standard Treatment Plan Set Default"
* version = "1"
* status = #draft
* date = "2023-01-11"
* name = "KIOLAStandardTreatmentPlanSetDefault"
* kind = #capability
* fhirVersion[0] = #4.0.1
* format[0] = #application/fhir+json
* description = "One or more KIOLA standard treatment plans might be set as default plans, to be preselected when registering a new patient."
* software.name = "KIOLA"
* software.version = "Bundle 2.5"
* software.releaseDate = "2023-02-01"
* purpose = "This capability might be used by other systems (e.g. editors for standard treatment plans) to set some KIOLA standard treatment plans as default plans. Those default plans will then be preselected and eventually applied when registering a new patient."
// * title = "foo" not rendered
* rest[0].mode = #server
* rest[=].documentation = "The `$meta-add` and `$meta-remove` operations might be used with the tag `http://fhir.ehealth-systems.at/artifacts/PlanDefinition/tag#default` to add or remove a standard treatment plan from the set of default plans. The read and search operations might be used to query all standard treatment plans and lookup default plans in the result. The `$meta` operation might be used to check if a specific plan currently is a default plan. When creating a new treatment plan, the meta tag might also be included to declare it as a default plan."
* rest[=].resource[0].type = #PlanDefinition
* rest[=].resource[=].profile = Canonical(KIOLAStandardTreatmentPlan)
* rest[=].resource[=].interaction[0].code = #read
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].operation[0].name = "$meta-add"
* rest[=].resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Resource-meta-add"
* rest[=].resource[=].operation[+].name = "$meta-remove"
* rest[=].resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Resource-meta-remove"
* rest[=].resource[=].operation[+].name = "$meta"
* rest[=].resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Resource-meta"

Instance: kiola-standard-treatment-plan-apply
InstanceOf: CapabilityStatement
Usage: #definition
Title: "KIOLA Standard Treatment Plan Apply"
* version = "1"
* status = #draft
* date = "2023-01-11"
* name = "KIOLAStandardTreatmentPlanApply"
* kind = #capability
* fhirVersion[0] = #4.0.1
* format[0] = #application/fhir+json
* description = "Apply a KIOLA standard treatment plan to a patient to generate a treatment plan instance. The current KIOLA care plan of the patient is not taken into account. The standard treatment plan is simply applied to the patient and a new KIOLA care plan containing this treatment plan is returned."
* software.name = "KIOLA"
* software.version = "Bundle 2.5"
* software.releaseDate = "2023-02-01"
* purpose = "This capability might be used by other systems (e.g. patient management systems) to apply treatment plans to specific patients."
// * title = "foo" not rendered
* rest[0].mode = #server
* rest[=].documentation = "The call should be made with the following parameters, on the standard treatment plan instance: `PlanDefinition/[STANDARD_TREATMENT_PLAN_ID]/$apply?subject=[KIOLA_SUBJECT_UUID]`, e.g. `PlanDefinition/1822/$apply?subject=hCZQJm6BrSimF232A39oL2`"
* rest[=].resource[0].type = #PlanDefinition
* rest[=].resource[=].profile = Canonical(KIOLAStandardTreatmentPlan)
* rest[=].resource[=].interaction[0].code = #read
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].operation[0].name = "$apply"
* rest[=].resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/PlanDefinition-apply"
