Profile: KIOLASubjectUUIDIdentifier
Parent: Identifier
Id: kiola-subject-uuid-identifier
Title: "KIOLA Subject UUID"
Description: "Primary identifier for a subject in KIOLA"
* use = #official
* system 1..
* system = "https://fhir.ehealth-systems.at/kiola/identifier/subject" (exactly)
* value 1..
* value ^short = "KIOLA UUID of the subject"

Invariant: kiola-measurement-interval
Description: "Period must be at least 1d, interpreted as calendar days. Other units are not supported, except h with a value that is a multiple of 24, interpreted as 24h intervals."
Severity: #error
Expression: "periodUnit = 'd' or (periodUnit = 'h' and period mod 24 = 0)"
