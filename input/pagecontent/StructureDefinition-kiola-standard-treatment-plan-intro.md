### Usage

KIOLA Standard Treatment Plans might be used to define general treatment plans for specific conditions. They should be as generic as possible and might be combined with each other. On a single KIOLA instance, it is recommended but not required, that all standard treatment plans might be combined without running into any conflict situations. For more details, see the [KIOLA Care Plan](StructureDefinition-kiola-care-plan.html) page.

#### Definition

Official [KIOLA Measurement Definitions](StructureDefinition-kiola-measurement-definition.html) should be used when defining a plan instance. They should be referred to by their canonical URLs, for a simple example see [here](PlanDefinition-kiola-standard-treatment-plan-simple-example.html). To specify measurement intervals, the timing item might be used, see [here](PlanDefinition-kiola-standard-treatment-plan-timing-example.html) for example. To restrict the allowed measurement devices, the participant item might be used to declare the allowed subset, see [here](PlanDefinition-kiola-standard-treatment-plan-participant-example.html) for example. The participants might also be overridden to declare specific properties on a device, see [here](PlanDefinition-kiola-standard-treatment-plan-participant-property-example.html) for example.

#### Management

Plans might be defined for single KIOLA instances, or managed in a central repository for the usage on multiple KIOLA instances. For each variation of a plan, a unique URL and name should be assigned. All plans that should be available on a KIOLA instance, need to be uploaded to the specifc instance, see [here](CapabilityStatement-kiola-standard-treatment-plan-management.html). Only plans in status `active` can be applied to patients, all other plans should have the status `draft` or `revoked`.

#### Generation of Care Plans

One or more standard treatment plans might be used to generate a KIOLA Care Plan. When using the [API](CapabilityStatement-kiola-standard-treatment-plan-apply.html), only the requested plan will be applied. Using the UI, multiple plans might be applied at once. For each standard treatment plan that should be applied for a patient, a separate treatment plan will be added as action to the KIOLA care plan. 

TODO: Add figure similar to plan definition (more concrete naming, also including device definitions)

In case any conflicts occur, the resulting care plan will have the status `draft`, otherwise it will have the status `active` and will immediately be applied for the patient. For more details on conflicts and how to resolve them, see [here](StructureDefinition-kiola-care-plan.html#conflicts).

#### Default Plans

Plans might be marked as default using a meta data tag. All active default plans will be preselected, when registering a new patient on a KIOLA instance. For more details on how to mark plans as default plans, see [here](CapabilityStatement-kiola-standard-treatment-plan-set-default.html).

#### Versioning

Different versions of the same plan should share the same URL and name, but they might use a different business version. This allows the KIOLA system to keep track of all patients that are treated with an instance of a standard plan. It also allows to upgrade patients to a newer version of the plan. Upgrades have to be triggered manually for each patient.
