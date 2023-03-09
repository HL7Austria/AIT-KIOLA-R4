Instance: care-plan-subject-identifier-parameter
InstanceOf: SearchParameter
Usage: #definition
Title: "Care Plan Subject Identifier Parameter"
* version = "1"
* name = "CarePlanSubjectIdentifierParameter"
* status = #active
* description = "Returns care plans of subjects with a matching identifier"
* base = #CarePlan
* code = #subject__identifier
* type = #token
* expression = "CarePlan.subject.identifier.value"