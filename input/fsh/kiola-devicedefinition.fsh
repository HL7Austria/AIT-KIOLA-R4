Profile: KIOLADeviceDefinition
Parent: DeviceDefinition
Id: kiola-device-definition
Title: "KIOLA Device Definition"
Description: "KIOLA device definition for measurement recording devices"
* type ^short = "Type of measurement recording device"
* type from KIOLAMeasurementDeviceTypes
* type 1..1 MS
* property ^slicing.discriminator.type = #value
* property ^slicing.discriminator.path = "type"
* property ^slicing.rules = #open
* property ^slicing.description = "foo"
* property ^slicing.ordered = false
* property contains uiReference 0..1 MS
* property[uiReference] ^short = "UI reference which is used to display the device on a client"
* property[uiReference].type = http://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference
* property[uiReference].valueQuantity ..0
* property[uiReference].valueCode 1..1 MS
* property[uiReference].valueCode from KMCUIReferences (example)

Profile: KIOLADeviceDefinitionAutomaticTransmission
Parent: KIOLADeviceDefinition
Id: kiola-device-definition-automatic-transmission
Title: "KIOLA Automatic Transmission Device Definition"
Description: "KIOLA device definition for devices supporting manual transmission of measurements"
* type from KIOLAAutomaticTransmissionMeasurementDeviceTypes
* property contains appPackage 0..1 MS
* property[appPackage] ^short = "Identifier of the app required to transmit the measurements"
* property[appPackage].type = http://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[appPackage].valueQuantity ..0
* property[appPackage].valueCode 1..1 MS
* property[appPackage].valueCode from KMCAppPackages (example)

Profile: KIOLADeviceDefinitionManualEntry
Parent: KIOLADeviceDefinition
Id: kiola-device-definition-manual-entry
Title: "KIOLA Manual Entry Device Definition"
Description: "KIOLA device definition for devices supporting manual data entry of measurements"
* type = http://fhir.ehealth-systems.at/kiola/device#SDC
