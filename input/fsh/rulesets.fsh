RuleSet: KIOLAMeasurementDefinitionRuleSet(profile, title)
* name = "MeasurementDefinition_{profile}"
* status = #active
* url = "http://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement/{profile}"
* title = "{title}"
* identifier[0].use = #official
* identifier[=].system = "http://fhir.ehealth-systems.at/artifacts/ActivityDefinition/measurement"
* identifier[=].value = "{profile}"
* code.coding[0] = http://fhir.ehealth-systems.at/kiola/measurement#{profile}
* code.text = "{title}"

RuleSet: KIOLAMeasurementDeviceDefinitionRuleSet(reference)
* participant[+].type = #device
* participant[=].extension[0].url = "http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* participant[=].extension[=].valueReference.reference = "#deviceDefinition-{reference}"
* contained[+] = kiola-measurement-device-definition-{reference}

RuleSet: KIOLAMeasurementAutomaticTransmissionDeviceDefinitionRuleSet(profile, title, reference)
* id = "deviceDefinition-{reference}"
* type.coding[0] = http://fhir.ehealth-systems.at/kiola/device/AIT-11073#{profile} "{title}"

RuleSet: KIOLAMeasurementManualEntryDeviceDefinitionRuleSet(ui_reference, reference)
* id = "deviceDefinition-{reference}"
* insert KIOLAMeasurementUIReferenceRuleSet({ui_reference})

RuleSet: KIOLAMeasurementUIReferenceRuleSet(ui_reference)
* property[+].type = http://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference
* property[=].valueCode = http://fhir.ehealth-systems.at/kiola/device/kmc#{ui_reference}

RuleSet: KIOLAMeasurementAppPackageRuleSet(app_package)
* property[+].type = http://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[=].valueCode = http://fhir.ehealth-systems.at/kiola/device/kmc#{app_package}