# KIOLA FHIR® Implemetation Guide

This is the official FHIR® Impletation Guide (*FHIR IG*) for KIOLA.

For a quick introduction into FHIR IGs see: https://fire.ly/blog/fhir-profiles-and-implementation-guides/ for the official documenation see: https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation and https://www.hl7.org/fhir/implementationguide.html

## Building from Source

The IG is built from the FSH (= *FHIR Shorthand*, aka *fish*) files using Sushi, see https://fshschool.org/docs/ for more information. The output is a HTML website with a human readable documentation along with FHIR resources describing the IG in a machine readable way, which might be used for automatic validation of FHIR resources (mainly StructureDefinitions as JSON files).

### OS Level Requirements

Java and Node.js need to be installed on your system. For the supported versions, check the FSH and IG publisher docs.

### Download Tools and Templates

Somewhat current versions of the software and a base template are currently located on the internal fileshare:

    \\file01.arc.local\HB\095_HIS\070_HIS-Entwicklung\KIOLA\FHIR_IG

For the most current versions, check the FSH docs or consult the search engine of your choice.

The following software is required to build the IG, simply copy them into the respective folders:
* validator_cli.jar -> ./
* (optionally) publisher.jar -> ./input-cache/ (not required to do manually, the setup script should download the most current version)

Additionally, a base template is required.

You can extract the content of the template.zip into the respective subfolder (./template) or create/download another template. In the future we might have a separate repository for this.

### Installation

Before starting the build for the first time, run the setup script:

    ./install.sh

### Starting a Build

To trigger a new build, simply execute the build script:

    ./build.sh

The first build downloads an caches the official base resources, so it might take a little longer.

In certain conditions the build process takes very long (dependency analysis). You probably want to kill the build process manually in this case, all of the important resources should have been already generated up to this point anyway.

