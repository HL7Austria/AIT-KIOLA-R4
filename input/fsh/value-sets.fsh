ValueSet: KMCAppPackages
Title: "KMC App Packages"
Description: "App package IDs of first and 3rd party apps, that might be launched by a mobile client to facilitate the transmission process."
* include codes from system http://fhir.ehealth-systems.at/kiola/device/kmc where concept is-a #app_package
* exclude http://fhir.ehealth-systems.at/kiola/device/kmc#app_package

ValueSet: KMCUIReferences
Title: "KMC UI References"
Description: "References to UI elements, that might be used to initiate the transmission process on a mobile client."
* include codes from system http://fhir.ehealth-systems.at/kiola/device/kmc where concept is-a #ui_reference
* exclude http://fhir.ehealth-systems.at/kiola/device/kmc#ui_reference

ValueSet: KIOLAMeasurementDeviceTypes
Title: "KIOLA Measurement Device Types"
Description: "Types of devices that might transmit vital data measurements to a KIOLA system."
* include http://fhir.ehealth-systems.at/kiola/device#SDC
* include codes from valueset KIOLAMeasurementAutomaticTransmissionDeviceTypes

ValueSet: KIOLAMeasurementAutomaticTransmissionDeviceTypes
Title: "KIOLA Automatic Transmission Measurement Device Types"
Description: "Types of devices that might automatically transmit vital data measurements to a KIOLA system, without entering the data manually."
* include codes from system http://fhir.ehealth-systems.at/kiola/device/AIT-11073 where concept is-a #MDC_DEV_SPEC
* exclude http://fhir.ehealth-systems.at/kiola/device/AIT-11073#MDC_DEV_SPEC

ValueSet: KIOLAMeasurementTypes
Title: "KIOLA Measurement Types"
Description: "Types of vital data measurements, that can be transmitted to a KIOLA system."
* include codes from system http://fhir.ehealth-systems.at/kiola/measurement