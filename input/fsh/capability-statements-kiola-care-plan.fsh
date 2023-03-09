Instance: kiola-care-plan-retrieval
InstanceOf: CapabilityStatement
Usage: #definition
Title: "KIOLA Care Plan Retrieval"
* version = "2" // should be the same as in legacy API?
* status = #draft
* date = "2023-01-10"
* name = "KIOLACarePlanRetrieval"
* kind = #capability
* fhirVersion[0] = #4.0.1
* format[0] = #application/fhir+json
* description = "The currently active KIOLA Care Plan for a patient might be retrieved by a client, using a search with a fixed set of parameters. The retrieval might be confirmed, by adding a meta tag to the instance. ETags might be used to avoid fetching the same resource twice."
* software.name = "KIOLA"
* software.version = "Bundle 2.5"
* software.releaseDate = "2023-02-01"
* purpose = "This capability might be used by other systems (e.g. mobile clients) to retrieve the currently relevant care plan for immediate patient care for a specific patient. To ensure that the most current version of the care plan is used across all systems, clients might confirm the successful retrieval."
// * title = "foo" not rendered
* rest[0].mode = #server
* rest[=].documentation = "
The retrieval is done in 4 steps:
1. A search with the following parameters is sent to the server, eventually including a filter for the patient, if the user has access to more than one patient: 
   * `status`: `active`
   * `category`: `https://fhir.ehealth-systems.at/kiola/careplan/category#kiola-care-plan`
   * e.g. `subject__identifier`: `[KIOLA_SUBJECT_UUID]`, if required
2. Either a single care plan is returned in the result list, or an empty list, if the patient currently does not have an active care plan.
3. The retrieval is confirmed, by adding the meta tag `https://fhir.ehealth-systems.at/kiola/careplan/transient-tag#CONFIRMED` to the care plan using the `$meta-add` operation on the returned care plan instance. The timestamp and userAgent parameters might be appended to the code, to indicate the client and time of retrieval, e.g. `{userAgent=Pixel 4a/13 at.ac.ait.dm2/4.12.0(664):36fde7dd,timestamp=2022-11-25T09:28:29.950008}`.
4. The server returns the result of the operation.

Optionally, the returned ETag might be saved in step 2 and sent along in a successive retrieval in step 1 in the `If-Modified` HTTP header. If the current care plan has not been changed, a `302` HTTP code (not modified) should be returned.

Sequence Diagram:

![](kiola-care-plan-retrieval.drawio.svg)
"
* rest[=].resource[0].type = #CarePlan
* rest[=].resource[=].profile = Canonical(KIOLACarePlan)
//* rest[=].resource[=].documentation = "res 0 doc" // not rendered
* rest[=].resource[=].interaction[0].code = #read
* rest[=].resource[=].interaction[+].code = #search-type
* rest[=].resource[=].operation[0].name = "$meta-add"
* rest[=].resource[=].operation[=].definition = "http://hl7.org/fhir/OperationDefinition/Resource-meta-add"
// TODO:sbe add searchParam

Instance: kiola-care-plan-management
InstanceOf: CapabilityStatement
Usage: #definition
Title: "KIOLA Care Plan Management"
* version = "1"
* status = #draft
* date = "2023-01-11"
* name = "KIOLACarePlanManagement"
* kind = #capability
* fhirVersion[0] = #4.0.1
* format[0] = #application/fhir+json
* description = "KIOLA care plans might be managed by another system. New and modified plans might be uploaded to the server and the status of existing plans might be changed."
* software.name = "KIOLA"
* software.version = "Bundle 2.5"
* software.releaseDate = "2023-02-01"
* purpose = "This capability might be used by other systems (e.g. patient management systems) to modify the care plans of specific patients."
// * title = "foo" not rendered
* rest[0].mode = #server
* rest[=].documentation = "Only a single KIOLA care plan with the status `active` might exist. If an active plan is uploaded and there exists another active plan, the status of the other plan will automatically be set to `revoked`. Similarily, only a single KIOLA care plan in status `draft` should exist. In this case however, an error will be raised if another care plan in status draft is uploaded. For a detailed description on how care plans should be interpreted, see TODO"
* rest[=].resource[0].type = #CarePlan
* rest[=].resource[=].profile = Canonical(KIOLACarePlan)
* rest[=].resource[=].interaction[0].code = #read
* rest[=].resource[=].interaction[+].code = #create
* rest[=].resource[=].interaction[+].code = #update
