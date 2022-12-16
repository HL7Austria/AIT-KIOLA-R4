ValueSet: KMCAppPackages
Title: "KMC App Packages"
Description: "KIOLA mobile client app packages"
* include codes from system http://fhir.ehealth-systems.at/kiola/device/kmc where concept is-a #app_package

ValueSet: KMCUIReferences
Title: "KMC UI References"
Description: "KIOLA mobile client UI references"
* include codes from system http://fhir.ehealth-systems.at/kiola/device/kmc where concept is-a #ui_reference

ValueSet: KIOLAMeasurementDeviceTypes
Title: "KIOLA Measurement Device Types"
* include http://fhir.ehealth-systems.at/kiola/device#SDC "Structured Device Capture"
* include codes from valueset KIOLAAutomaticTransmissionMeasurementDeviceTypes

ValueSet: KIOLAAutomaticTransmissionMeasurementDeviceTypes
Title: "KIOLA Measurement Device Types with Automatic Transmission"
* include codes from system http://fhir.ehealth-systems.at/kiola/device/AIT-11073 where concept is-a #Device

ValueSet: KIOLAMeasurementTypes
Title: "KIOLA Measurement Types"
* include codes from system http://fhir.ehealth-systems.at/kiola/measurement