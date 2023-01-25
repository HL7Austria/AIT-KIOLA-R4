### Usage

Only KIOLA care plans with status `active` and intent `order` should be considered for actual patient care. Only one such care plan might exist at one point in time for a patient on a KIOLA instance. Other care plans with this status and intent might be distinguished by using a different category.
Furthermore, only top-level activities in the status `active` and intent `order` should be considered for actual patient care. Other activities should be ignored when processing a care plan.

[Treatment plans](StructureDefinition-kiola-treatment-plan.html) are instances of [standard treatment plans](StructureDefinition-kiola-standard-treatment-plan.html), which might be adapted for a patient. They should be interpreted independent of the standard treatment plan. The `instantiatesCanonical` item on the care plan should be used to track all applied standard treatment plans. The respective item on the treatment plan should be used to look up the corresponding standard treatment plan, if required. Like request groups in general, treatment plans should only contain activities with the intent `option` and the same status as the resource itself. At the moment, no conditional processing is implemented. This means that all contained actions should be considered for patient care, if the treatment plan is in the status `active`.

[Measurement requests](StructureDefinition-kiola-measurement-request.html) are part of treatment plans, but they might also be added as individual patient-specific actions to the care plan. Usually, they are added if no request with the same profile exists in any treatment plan, when customizing a care plan for a patient. In both cases, they are based on [measurement definitions](StructureDefinition-kiola-measurement-definition.html). All active measurement requests should be considered when interpreting a care plan, as some requests might contain more information than other requests (e.g. a measurement interval might only be present on one request for the same kind of measurement). As described in the following section, conflicts are handled by the KIOLA system and do not need to be handled by the client.

Check the [Care Plan Retrieval](CapabilityStatement-kiola-care-plan-retrieval.html) capability statement for details on how to retrieve the currently active care plan for a patient.

#### Conflicts

A care plan in the status `active` is checked for consistencies by a KIOLA system. Clients can therefore assume the consistency of an active care plan, retrieved by a KIOLA system. A `draft` care plan might contain inconsistencies, that need to be resolved before activating the plan.

The following rules apply to measurement requests of the same kind of measurement:

* [Measurement intervals](StructureDefinition-kiola-measurement-request-definitions.html#ServiceRequest.occurrence[x]:measurementInterval) have to be consistent or only specified once.
* The performing device types have to be consistent ([automatic transmission](StructureDefinition-kiola-measurement-request-definitions.html#ServiceRequest.performer:automaticTransmission), [manual entry](StructureDefinition-kiola-measurement-request-definitions.html#ServiceRequest.performer:manualEntry)).
* The following properties of the performing devices have to be consistent or only specified once:
  * [Multi measurement](StructureDefinition-kiola-measurement-automatic-transmission-device-definitions.html#Device.property:multiMeasurement)
  * [Blocked device](StructureDefinition-kiola-measurement-automatic-transmission-device-definitions.html#Device.property:blockedDeviceType)
* The usage of the [doNotPerform](StructureDefinition-kiola-measurement-request-definitions.html#ServiceRequest.doNotPerform) flag has to be consistent.

A care plan might only contain measurement requests of one kind within these exclusive groups:
* [Generic Questionnaire Measurements](ValueSet-KIOLAGenericQuestionnaires.html)
* [Medication Daily Dosage](ValueSet-KIOLAMedicationDailyDosage.html)

When resolving a conflict, the user generally specifies the desired option. This might be the detail of an action (e.g. which measurement interval to use) or the action to keep (e.g. which generic questionnaire to request). Undesired actions might then be removed from the care plan, details of an action are usually overridden in all requests of the same kind.

#### Definition

KIOLA care plans are usually generated from one or multiple standard treatment plans, see [here](StructureDefinition-kiola-standard-treatment-plan.html#generation-of-care-plans) for details. Alternatively, they might also be created individually. A generated care plan might be customized for a patient. Measurement requests might be removed from treatment plans or added as individual measurement requests.


##### Medication Taking

Currently, reports on medication takings are implemented as service requests. An independent draft request is created by the KIOLA system when the medication of a patient changes. As soon as an update on the medication compliance is requested for the patient, the draft request is activated and a copy based on the independent service request is added to the care plan. Primarily the service request in the care plan should be considered for the care process, as the independent request might stay active, while the request to report the taking might be removed from the care plan. All medication taking codes start with the prefix `MDC_DEV_VND_AIT_MEDICATION__` 


#### Management

If a new care plan with status `active` is created, it is checked for [inconsistencies](#conflicts). If it is consistent, the previously active care plan will eventually be revoked. If it is inconsistent, the operation is aborted and the care plan migth be created as draft. The KIOLA system automatically checks for conflicts and saves the care plan in the respective status, when using the UI. When an active care plan needs to be changed, a new care plan should be created. Only meta data and the status of an active plan may be changed.

A single KIOLA care plan with status `draft` might exist for a patient. Currently, this is usually the case for care plans with conflicts, that need to be resolved before activating the care plan. Care plans in status draft might be changed as often as required. The KIOLA system will automatically activate a care plan in this status, if all conflicts are resolved using the UI.

Check the [Care Plan Management](CapabilityStatement-kiola-care-plan-management.html) capability statement for more details on the behavior of the API.
