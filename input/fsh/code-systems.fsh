CodeSystem:  KIOLADeviceCS
Id: kiola-device-cs
Title: "KIOLA Device Codes"
Description:  "Generic device types that can transmit vital data."
* ^url = "http://fhir.ehealth-systems.at/kiola/device"
* ^content = #fragment
* #SDC "Structured Data Capture" "A device to manually enter vital data using a questionnaire."

CodeSystem:  KIOLAMDCCS
Id: kiola-mdc-cs
Title: "KIOLA Device Codes AIT 11073"
Description: "Measurement device types for automatic transmission of measurements and their configuration parameters, based on the ISO/IEEE 11073 standard with vendor-specific extensions, mainly AIT. The MDC display name is used as a code."
* ^url = "http://fhir.ehealth-systems.at/kiola/device/AIT-11073"
* ^hierarchyMeaning = #is-a
* ^property[0].code = #abstract
* ^property[=].type = #boolean
* ^property[=].description = "True, if an element is considered abstract = not for use."
// * ^content = #fragment
// ^supplements TODO: extend urn:iso:std:iso:11073:10101 (issue: code is actually display)
* #MDC_DEV_SPEC "KIOLA measurement device" "A KIOLA measurement device, using an MDC display name as code."
  * ^property.code = #abstract
  * ^property.valueBoolean = true
  * #MDC_DEV_SPEC_PROFILE_GLUCOSE "Glucose monitor" "A blood glucose monitor."
  * #MDC_DEV_SPEC_PROFILE_SCALE "Body weight scale" ""
  * #MDC_DEV_SPEC_PROFILE_BP "Blood pressure device" ""
  * #MDC_DEV_SPEC_PROFILE_TEMP "Temperature measurement device" ""
  * #MDC_DEV_SPEC_PROFILE_SPIRO "Spirometry device" ""
  * #MDC_DEV_SPEC_PROFILE_PULS_OXIM "Blood pressure device" ""
  * #MDC_DEV_SPEC_PROFILE_INR "INR measurement device" "A device to measure the International Normalized Ratio."
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT "Cardio ergo result" "A device used to specify the cardio measurements of an ergometer."
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG "Cardio ergo config" "A device used to specify the configuration of a cardio measurement using an ergometer."
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT "Cardio ebike result" "A device used to specify the cardio measurements of an ebike."
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG "Cardio ebike config" "A device used to specify the configuration of a cardio measurement using an ebike."
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT "6-Minute-Walk-Test measurement" ""
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY "Activity measurement device" ""
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER "Step counter device" ""
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE "Stepsequence measurement device" ""
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE "Sleepsequence measurement device" ""
  * #MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG "Getemed ECG" ""
* #MDC_PROPERTY "KIOLA device property" "A property of a KIOLA measurement device. Used to describe fields of a specific measurement."
  * ^property.code = #abstract
  * ^property.valueBoolean = true
  * #MDC_ATTR_TIME_ABS "" ""
  * #MDC_CONC_GLU_ARTERIAL_WHOLEBLOOD "" ""
  * #MDC_CONC_GLU_ARTERIAL_PLASMA "" ""
  * #MDC_CONC_GLU_CONTROL "" ""
  * #MDC_CONC_GLU_ISF "" ""
  * #MDC_CONC_GLU_UNDETERMINED_WHOLEBLOOD "" ""
  * #MDC_CONC_GLU_GEN "" ""
  * #MDC_CONC_GLU_CAPILLARY_PLASMA "" ""
  * #MDC_CONC_GLU_VENOUS_WHOLEBLOOD "" ""
  * #MDC_CONC_GLU_VENOUS_PLASMA "" ""
  * #MDC_CONC_GLU_CAPILLARY_WHOLEBLOOD "" ""
  * #MDC_CONC_GLU_UNDETERMINED_PLASMA "" ""
  * #MDC_CONC_HBA1C "" ""
  * #MDC_HF_HR "" ""
  * #MDC_HF_ACTIVITY_TIME "" ""
  * #MDC_HF_DISTANCE "" ""
  * #MDC_HF_STEPCOUNT "" ""
  * #MDC_HF_HR_MAX_USER "" ""
  * #MDC_HF_ALT_GAIN "" ""
  * #MDC_HF_ALT_LOSS "" ""
  * #MDC_HF_ALT "" ""
  * #MDC_HF_ASC_TME_DIST "" ""
  * #MDC_HF_DESC_TIME_DIST "" ""
  * #MDC_HF_LATITUDE "" ""
  * #MDC_HF_LONGITUDE "" ""
  * #MDC_HF_SLOPES "" ""
  * #MDC_HF_SPEED "" ""
  * #MDC_HF_CAD "" ""
  * #MDC_HF_INCLINE "" ""
  * #MDC_HF_POWER "" ""
  * #MDC_HF_RESIST "" ""
  * #MDC_HF_STRIDE "" ""
  * #MDC_HF_ENERGY "" ""
  * #MDC_HF_CAL_INGEST "" ""
  * #MDC_HF_CAL_INGEST_CARB "" ""
  * #MDC_HF_ACTIVITY_INTENSITY "" ""
  * #MDC_HF_WEIGHTLOSS "" ""
  * #MDC_HF_MEAN_NULL_INCLUDE "" ""
  * #MDC_HF_MEAN_NULL_EXCLUDE "" ""
  * #MDC_HF_MAX "" ""
  * #MDC_HF_MIN "" ""
  * #MDC_HF_RMS "" ""
  * #MDC_HF_PIM "" ""
  * #MDC_HF_PIM_X "" ""
  * #MDC_HF_PIM_Y "" ""
  * #MDC_HF_PIM_Z "" ""
  * #MDC_HF_TAT "" ""
  * #MDC_HF_3D_ACC_X "" ""
  * #MDC_HF_3D_ACC_Y "" ""
  * #MDC_HF_3D_ACC_Z "" ""
  * #MDC_HF_3D_ACC_Z_G_OFFSET "" ""
  * #MDC_HF_3D_ANG_ACC_X "" ""
  * #MDC_HF_3D_ANG_ACC_Y "" ""
  * #MDC_HF_3D_ANG_ACC_Z "" ""
  * #MDC_HF_RESP_RATE "" ""
  * #MDC_PRESS_BLD_NONINV_SYS "" ""
  * #MDC_PRESS_BLD_NONINV_DIA "" ""
  * #MDC_PRESS_BLD_NONINV_MEAN "" ""
  * #MDC_PULS_RATE_NON_INV "" ""
  * #MDC_MASS_BODY_ACTUAL "" ""
  * #MDC_VND_AIT_ABDOMINAL_GIRTH "" ""
  * #MDC_VND_AIT_ACTIVITY_DURATION "" ""
  * #MDC_VND_AIT_STEPS_SEQUENCE "" ""
  * #MDC_VND_AIT_DISTANCE_CONFIDENCE_SCORE "" ""
  * #MDC_VND_AIT_HF_CAD_MIN_USER "" ""
  * #MDC_VND_AIT_HF_POWER_STEP_SEQ "" ""
  * #MDC_VND_AIT_HF_MOTOR_OUT "" ""
  * #MDC_VND_AIT_HF_POWER_TARGET "" ""
  * #MDC_VND_AIT_HF_DISTANCE_SEQUENCE "" ""

CodeSystem: KIOLADeviceKMCCS
Id: kiola-device-kmc-cs
Title: "KMC Device Codes"
Description: "Various codes that might be used to configure a mobile client."
* ^url = "http://fhir.ehealth-systems.at/kiola/device/kmc"
* ^hierarchyMeaning = #is-a
* #app_package "App package that handles the data transmission from the device" ""
  * #at.ac.ait.his.smwt "6-Minute-Walk-Test App" ""
  * #at.ac.ait.healthebikes "AIT Ebike App" ""
  * #at.ac.ait.emotioncardio "AIT Emotioncardio App" ""
* #ui_reference "Reference to a tile on the KMC dashboard" ""
  * #q_medication_intake:{representation=MultiPageTopicQuestionnaire} "Questionnaire medication intake" ""
  * #q_symptoms:{representation=MultiPageTopicQuestionnaire} "Symptom questionnaire" ""
  * #glucose_suppl:{representation=SinglePageQuestionnaire} "Blood glucose supplemental data questionnaire" ""
  * #physician_visit:{representation=SinglePageQuestionnaire} "Physician Visit Questionnaire" ""
  * #ergo "Ergo" ""
  * #ebike "Ebike" ""
* #blocked_device_type "KMC Blocked Device"
* #device_multi_measurement "KMC Device Multi Measurement"

CodeSystem:  KIOLAMDCDIMCS
Id: kiola-mdc-dim-cs
Title: "KIOLA Dimension Codes AIT 11073"
Description: "Measurement dimensions supported by KIOLA, based on the ISO/IEEE 11073 standard with vendor-specific extensions, mainly AIT. The MDC display name is used as a code.

All codes might be parametrized using the syntax `CODE:{min=MIN_VAL,max=MAX_VAL}` to define a plausibility range for manual data entry, e.g.: `MDC_DIM_MILLI_G_PER_DL:{min=0,max=1000}`"
* ^url = "http://fhir.ehealth-systems.at/kiola/dimension/AIT-11073"
* ^content = #fragment  // required for validation with compositional
* ^compositional = true
* #MDC_DIM_CENTI_M "" ""
* #MDC_DIM_KILO_G "" ""
* #MDC_DIM_MMHG "" ""
* #MDC_DIM_MILLI_G_PER_DL "mg/dl" ""
* #MDC_DIM_PERCENT "%" ""
* #MDC_DIM_BEAT_PER_MIN "" ""
* #MDC_DIM_RPM "" ""
* #MDC_DIM_X_ISO8601 "" ""
* #MDC_DIM_X_CAL "" ""
* #MDC_DIM_VND_AIT_RFC3339 "" ""
* #MDC_DIM_VND_AIT_CBOR_TS_FIX "cbor_fixed" ""
* #MDC_DIM_VND_AIT_CBOR_TS_FLEX "cbor_flex" ""
* #MDC_DIM_VND_AIT_CMP[MDC_DIM_S,MDC_DIM_X_WATT] "" ""

CodeSystem: KIOLAMeasurementCS
Id: kiola-measurement-cs
Title: "KIOLA Measurement Codes"
Description: "Types of vital data measurements that can be transmitted to a KIOLA system. The naming is derived from MDC display names of devices from the ISO/IEEE 11073 standard."
* ^url = "http://fhir.ehealth-systems.at/kiola/measurement"
* #MDC_DEV_SPEC_PROFILE_GLUCOSE "Blood glucose measurement" ""
* #MDC_DEV_SPEC_PROFILE_BP "Blood pressure measurement" ""
* #MDC_DEV_SPEC_PROFILE_INR "Measurement of INR" ""
* #MDC_DEV_SPEC_PROFILE_PULS_OXIM "Blood oximeter measurement" ""
* #MDC_DEV_SPEC_PROFILE_SCALE "Body weight measurement" ""
* #MDC_DEV_SPEC_PROFILE_SPIRO "Spirometry measurement" ""
* #MDC_DEV_SPEC_PROFILE_TEMP "Measurement of temperature" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_ACTIVITY "Activity measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_COMMENT "Comment entry" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GLUCOSE_SUPPL_V1 "Blood glucose supplemental data measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_CONFIG "Cardio Ebike configuration" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_EBIKE_RESULT "Cardio Ebike measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_CONFIG "Cardio Ergo configuration" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_HF_CARDIO_ERGO_RESULT "Cardio Ergo measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_COUMADIN_V1 "Daily medication measurement of Coumadin" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_FALITHROM_V1 "Daily medication measurement of Falithrom" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_MED_DAILY_DOSE_MARCUMAR_V1 "Daily medication measurement of Marcumar" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_RANGE "Subjective pain range measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_Q_COVID19_V1 "Covid symptom measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_SLEEPSEQUENCE "Sleepsequence measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_STEPSEQUENCE "Stepsequence measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_WELLBEING "Subjective wellbeing measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_0_V1 "Generic Questionnaire 0 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_1_V1 "Generic Questionnaire 1 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_2_V1 "Generic Questionnaire 2 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_3_V1 "Generic Questionnaire 3 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_4_V1 "Generic Questionnaire 4 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_5_V1 "Generic Questionnaire 5 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_6_V1 "Generic Questionnaire 6 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_7_V1 "Generic Questionnaire 7 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_8_V1 "Generic Questionnaire 8 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GENERIC_QUESTIONNAIRE_9_V1 "Generic Questionnaire 9 measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_NOTE "Note entry" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_STEPCOUNTER "Step counter measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_PAIN_CURRENT "Subjective pain measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND "Wound measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_WOUND_ASSESSMENT "Wound assessment measurement" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_SMWT "6-Minute-Walk-Test measurement" ""
* #MDC_VND_AIT_Q_PHYS_VISIT_V1 "Physician Visit Questionnaire" ""
* #MDC_VND_AIT_Q_MED_V1 "Medication taken Questionnaire" ""
* #MDC_DEV_SPEC_PROFILE_VND_AIT_GTM_EKG "Getemed ECG measurement" ""


CodeSystem:  KIOLACarePlanCategoryCS
Id: kiola-care-plan-category-cs
Title: "KIOLA Care Plan Category Code System"
Description:  "Categories of care plans supported by KIOLA."
* ^url = "http://fhir.ehealth-systems.at/kiola/careplan/category"
* #kiola-care-plan "KIOLA Care Plan" "Main care plan, that is used to describe the overall plan of a patient. All other care plans to be considered for a patients care, must be part of this care plan."


// FUTURE: when code in service request becomes extensible, we need a category
//CodeSystem:  KIOLAServiceRequestCategoryCS
//Id: kiola-service-request-cs
//Title: "KIOLA Service Request Category Code System"
//Description:  ""
//* ^url = "http://fhir.ehealth-systems.at/kiola/servicerequest/category"
//* #kiola-vital-data-measurement "Vital Data Measurement" ""


CodeSystem:  KIOLACarePlanTransientTagCS
Id: kiola-care-plan-transient-tag-cs
Title: "KIOLA Care Plan Transient Tag Code System"
Description:  "Meta data tags of care plans that should be removed when creating an updated plan for a patient, in case an activity changes."
* ^url = "http://fhir.ehealth-systems.at/kiola/careplan/transient-tag"
* ^content = #fragment  // required for validation with compositional
* ^compositional = true
* #SENSOR_CONFIGURATION "Sensor configuration" "KIOLA ID of the associated (legacy) sensor configuration."
* #CONFIRMED "Confirmed" "The care plan has been successfully retrieved by a client. Might be parametrized using the userAgent and timestamp parameters, e.g.: `{userAgent=Pixel 4a/13 at.ac.ait.dm2/4.12.0(664):36fde7dd,timestamp=2022-11-25T09:28:29.950008}`"


CodeSystem:  KIOLAStandardTreatmentPlanTagCS
Id: kiola-standard-treatment-plan-tag-cs
Title: "KIOLA Standard Treatment Plan Code System"
Description: "Meta data tags of standard treatment plans."
* ^url = "http://fhir.ehealth-systems.at/artifacts/PlanDefinition/tag"
* ^content = #fragment  // required for validation with compositional
* ^compositional = true
* #default "Default treatment plan" "A default treatment plan, that should be preselected and eventually applied when registering new patients."


CodeSystem: KIOLABooleanCS
Id: kiola-boolean-cs
Title: "KIOLA Boolean"
* ^url = "http://fhir.ehealth-systems.at/kiola/boolean"
* #true "True" ""
* #false "False" ""
