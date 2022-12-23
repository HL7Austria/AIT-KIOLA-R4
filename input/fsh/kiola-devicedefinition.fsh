Profile: KIOLADeviceDefinition
Parent: DeviceDefinition
Id: kiola-devicedefinition-measurement
Title: "KIOLA Measurement Device Definition"
Description: "Definition of an abstract device for recording a KIOLA vital data measurement."
* ^abstract = true
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
Id: kiola-devicedefinition-measurement-automatic-transmission
Title: "KIOLA Measurement Automatic Transmission Device Definition"
Description: "Definition of a device supporting automatic transmission of KIOLA vital data measurements, without entering the data manually."
* type from KIOLAAutomaticTransmissionMeasurementDeviceTypes
* property contains appPackage 0..1 MS
* property[appPackage] ^short = "Identifier of the app required to transmit the measurements"
* property[appPackage].type = http://fhir.ehealth-systems.at/kiola/device/kmc#app_package
* property[appPackage].valueQuantity ..0
* property[appPackage].valueCode 1..1 MS
* property[appPackage].valueCode from KMCAppPackages (example)

Profile: KIOLADeviceDefinitionManualEntry
Parent: KIOLADeviceDefinition
Id: kiola-devicedefinition-measurement-manual-entry
Title: "KIOLA Measurement Manual Entry Device Definition"
Description: "Definition of a device supporting manual data entry of KIOLA vital data measurements."
* type = http://fhir.ehealth-systems.at/kiola/device#SDC
