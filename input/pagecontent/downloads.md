### Full IG

Download the entire implementation guide [here](full-ig.zip).


### IG Assets

- [Analysis_of_business_use_cases_for_use_of_EHRxF_HIDs_in_clinical_research.pdf](ig-assets/Analysis_of_business_use_cases_for_use_of_EHRxF_HIDs_in_clinical_research.pdf)
- [IPS_FHIR_to_CDISC_SDTM](ig-assets/IPS_FHIR_to_CDISC_SDTM)
- [Proposal_for_a_harmonized_core_data_set_across_health_care_population_health_and_clinical_research.pdf](ig-assets/Proposal_for_a_harmonized_core_data_set_across_health_care_population_health_and_clinical_research.pdf)
- [Valuesets_and_Conceptmaps](ig-assets/Valuesets_and_Conceptmaps)
- [xSHARE_Data_Elements_w_C-Codes_and_SNOMED_Codes.xlsx](ig-assets/xSHARE_Data_Elements_w_C-Codes_and_SNOMED_Codes.xlsx)
- [01_StructureDefinition-Patient-uv-ips_to_SDTM.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/01_StructureDefinition-Patient-uv-ips_to_SDTM.xlsx)
- [02_StructureDefinition-Condition-uv-ips_Problem_HxProblem_to_SDTM_MH.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/02_StructureDefinition-Condition-uv-ips_Problem_HxProblem_to_SDTM_MH.xlsx)
- [03_StructureDefinition-Medication-uv-ips_to_SDTM_CM.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/03_StructureDefinition-Medication-uv-ips_to_SDTM_CM.xlsx)
- [04_StructureDefinition-MedicationRequest-uv-ips_to_SDTM.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/04_StructureDefinition-MedicationRequest-uv-ips_to_SDTM.xlsx)
- [05_StructureDefinition-MedicationStatement-uv-ips_to_SDTM_CM.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/05_StructureDefinition-MedicationStatement-uv-ips_to_SDTM_CM.xlsx)
- [06.0_StructureDefinition-Observation-results-laboratory-uv-ips_to_SDTM_LB_generic_domain.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/06.0_StructureDefinition-Observation-results-laboratory-uv-ips_to_SDTM_LB_generic_domain.xlsx)
- [06.1_StructureDefinition-Observation-results-uv-ips_to_SDTM_Findings_generic_domain.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/06.1_StructureDefinition-Observation-results-uv-ips_to_SDTM_Findings_generic_domain.xlsx)
- [07_StructuredDefinition-Procedure-uv-ips_to_SDTM_PR.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/07_StructuredDefinition-Procedure-uv-ips_to_SDTM_PR.xlsx)
- [08_FHIR-Encounter_to_SDTM_HO.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/08_FHIR-Encounter_to_SDTM_HO.xlsx)
- [09_StructureDefinition-DiagnosticReport-uv-ips_to_SDTM.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/09_StructureDefinition-DiagnosticReport-uv-ips_to_SDTM.xlsx)
- [10_StructureDefinition-AllergyIntolerance-uv-ips_to_SDTM_MH.xlsx](ig-assets/IPS_FHIR_to_CDISC_SDTM/10_StructureDefinition-AllergyIntolerance-uv-ips_to_SDTM_MH.xlsx)
- [resourceTypeConceptMap_CDISC_to_SNOMED.txt](ig-assets/Valuesets_and_Conceptmaps/resourceTypeConceptMap_CDISC_to_SNOMED.txt)
- [resourceTypeConceptMap_LOINC_to_SNOMED.txt](ig-assets/Valuesets_and_Conceptmaps/resourceTypeConceptMap_LOINC_to_SNOMED.txt)
- [resourceTypeConceptMap_SNOMED_to_CDISC.txt](ig-assets/Valuesets_and_Conceptmaps/resourceTypeConceptMap_SNOMED_to_CDISC.txt)
- [resourceTypeConceptMap_SNOMED_to_LOINC.txt](ig-assets/Valuesets_and_Conceptmaps/resourceTypeConceptMap_SNOMED_to_LOINC.txt)
- [xSHARE_Microbiology_Data_Elements.xlsx](ig-assets/Valuesets_and_Conceptmaps/xSHARE_Microbiology_Data_Elements.xlsx)
- [xShare_Routine_labs.xlsx](ig-assets/Valuesets_and_Conceptmaps/xShare_Routine_labs.xlsx)


### NPM Package and Definitions

The following file contains all the value sets, profiles, extensions, list of pages and urls in the IG, etc. defined as part of this Implementation Guide:

- [NPM Package](package.tgz)

In addition there are format specific definition files:

- [XML](definitions.xml.zip)
- [JSON](definitions.json.zip)
- [TTL](definitions.ttl.zip)

These files should be the first choice whenever generating any implementation artifacts since they contain all of the rules about what makes these profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation.  See the overview on [validating FHIR profiles and resources]({{ site.data.fhir.path }}validation.html).

There are also specific packages for the R4 and R4B FHIR specifications:

#### R4-specific NPM Package and Definitions

- [R4 NPM Package](package.r4.tgz)

#### R4B-specific NPM Package and Definitions

- [R4B NPM Package](package.r4b.tgz)

### Examples

All of the examples that are used in this Implementation Guide are available for download:

- [XML](examples.xml.zip)
- [JSON](examples.json.zip)
- [TTL](examples.ttl.zip)

### Dependencies

{% include dependency-table.xhtml %}

