Extension: ParticipantDeviceDefinition
Id: participant-device-definition
Title:  "Participant Device Definition"
Description: "Extension to add a device definition to a device participant of an activity or plan definition."
* ^url = "http://fhir.ehealth-systems.at/extensions/ParticipantDeviceDefinition"
* value[x] only Reference(DeviceDefinition)
* value[x] 1..1