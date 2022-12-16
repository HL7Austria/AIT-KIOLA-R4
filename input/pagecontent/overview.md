### Use Cases

These are some common use cases for the resources described in this implementation guide.

#### Define Plan Definitions

A plan definition describes a treatment plan, consisting of measurements that should be executed by the patient and entered into the system either manually or transmitted automatically using a supported device. The supported measurements with their supported data submission methods are defined in activity definitions. A plan definition might only refer to those activity definitions, or override some properties, e.g. to restrict the allowed data submission methods.

The definitionCanonical element is used to refer to an activity definition. The following elements might be used to override elements of the activity definition:

TODO

#### Generate a Care Plan from Plan Definitions

For each plan definition that should be applied, a separate request group is created ...

#### Customize the Care Plan

TODO

#### Synchronize the Care Plan

TODO

#### Visualize the Care Plan

TODO

#### Interpret the Care Plan

TODO