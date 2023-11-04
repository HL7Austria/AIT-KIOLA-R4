# KIOLA Implementation Guide

This is the official HL7® FHIR® Implementation Guide for the [Keep-In-Touch (KIT) Telehealth Solutions Platform](https://kit.ait.ac.at/technologie/plattform/), internally named *KIOLA*, by the [Austrian Institute of Technology (AIT)](https://www.ait.ac.at/). The term KIOLA originates from a tribes name in an old [Aboriginal tale](https://ro.uow.edu.au/cgi/viewcontent.cgi?article=1117&context=asdpapers) from Southern Australia, where the idea of KIOLA was conceived.

## Development Status

The development of the KIOLA Implementation Guide is driven by the development of AIT's digital health platform KIOLA 3 and it's mobile reference client, the KIOLA Mobile Client 5 & 6 (KMC).

### Important Profiles

#### Finished (KIOLA 2.6 & 3.0+, KMC 5.0+)

These profiles are part of the implementation guide:

* KIOLA Care Plan
* Treatment Plan (Request Group)
* Standard Treatment Plan (Plan Definition)
* Measurement Request (Service Request)
* Measurement Definition (Activity Definition)
* Measurement Device (Device)
* Measurement Device Definition (Device Definition)

#### Coming Soon (KIOLA 3.0+, KMC 5.0+)

These profiles are currently specified or implemented and are still lacking an official documentation:

 * Diagnostic Report
 * Patient

#### Planned (KIOLA 3.X, KMC 6.0)

These profiles are currently planned for upcoming KIOLA releases:

 * Observation

### Known Issues

* Canonical resources cannot be resolved yet
* Some canonical URLs are broken and/or do not match
* Minor validation errors
