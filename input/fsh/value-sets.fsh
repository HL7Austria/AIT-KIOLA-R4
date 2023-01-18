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

ValueSet: KIOLAMeasurementAutomaticTransmissionProperties
Title: "KIOLA Automatic Transmission Measurement Device Properties"
Description: "Properties of automatic transmission devices."
* include codes from system http://fhir.ehealth-systems.at/kiola/device/AIT-11073 where concept is-a #MDC_PROPERTY
* exclude http://fhir.ehealth-systems.at/kiola/device/AIT-11073#MDC_PROPERTY

ValueSet: KIOLAMeasurementUnits
* include codes from system http://fhir.ehealth-systems.at/kiola/dimension/AIT-11073

ValueSet: KIOLAMeasurementTypes
Title: "KIOLA Measurement Types"
Description: "Types of vital data measurements, that can be transmitted to a KIOLA system."
* include codes from system http://fhir.ehealth-systems.at/kiola/measurement

ValueSet: KIOLADevices
Title: "KIOLA Devices"
Description: "Devices, that might transmit data to a KIOLA system."
* include codes from valueset http://fhir.ehealth-systems.at/kiola/device

ValueSet: KIOLABoolean
Title: "KIOLA Boolean"
* include codes from valueset http://fhir.ehealth-systems.at/kiola/boolean

ValueSet: KIOLAGenericQuestionnaires
Title: "KIOLA Generic Questionnaires"
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_0_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_1_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_2_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_3_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_4_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_5_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_6_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_7_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_8_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_9_V1

ValueSet: KIOLAMedicationDailyDosage
Title: "KIOLA Medication Daily Dosage"
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_COUMADIN_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_FALITHROM_V1
* include http://fhir.ehealth-systems.at/kiola/measurement#MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_MARCUMAR_V1
