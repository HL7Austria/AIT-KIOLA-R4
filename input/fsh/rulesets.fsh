RuleSet: KIOLAMeasurementDefinitionRuleSet(id, profile, title)
* id = "{id}"
* name = "MeasurementDefinition_{profile}"
* status = #active
* url = "https://fhir.ehealth-systems.at/artifacts/ActivityDefinition/{id}"
* title = "{title}"
* code.coding[0] = https://fhir.ehealth-systems.at/kiola/measurement#{profile}
* code.text = "{title}"

RuleSet: KIOLAMeasurementDeviceDefinitionRuleSet(id)
* participant[+].type = #device
* participant[=].extension[0].url = "https://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* participant[=].extension[=].valueReference.reference = "#dev-{id}"
* contained[+] = dev-{id}

RuleSet: KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(id, profile, title)
* id = "dev-{id}"
* type.coding[0] = https://fhir.ehealth-systems.at/kiola/device/AIT-11073#{profile} "{title}"

RuleSet: KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(id, ui_reference)
* id = "dev-{id}"
* insert KIOLAMeasurementUIReferenceRuleSet({ui_reference})

RuleSet: KIOLAMeasurementUIReferenceRuleSet(ui_reference)
* property[+].type = https://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference
* property[=].valueCode = https://fhir.ehealth-systems.at/kiola/device/kmc#{ui_reference}

RuleSet: KIOLAMeasurementAppPackageRuleSet(app_package)
* property[+].type = https://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[=].valueCode = https://fhir.ehealth-systems.at/kiola/device/kmc#{app_package}