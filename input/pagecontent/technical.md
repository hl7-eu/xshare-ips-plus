The **technical** domain describes the technical stack and the infrastructure required to support the use cases for research of the IPS+ described in this IG.

<div>
<p> </p>
{% include bdat-t.svg %}
<p> </p>
</div>

This includes:

- IPS+ data elements and mapping specifications
- Data and application flows for multiple research use cases

### IPS+ Data

The overarching scope of the xShare IPS+ FHIR Implementation Guide is to provide implementers with additional support for leveraging the HL7 IPS and the supporting documents available within this IG for clinical research and population health. It further builds on the [HL7 International Patient Summary Implementation Guide](https://hl7.org/fhir/uv/ips/index.html).

The role of the core harmonized terminology, valuesets and codelist alignment, and the model to model mapping included in this scope –FHIR to CDISC mapping of IPS profiles, data element item to item map.

The content available for download includes the [xShare Core Harmonised Data Elements](https:./ig-assets/xSHARE_Data_Elements_w_C-Codes_and_SNOMED_Codes.xlsx), the IPS FHIR to CDISC SDTM Mapping Specifications for the HL7 IPS v1.1.0 to CDISC SDTMIG v3.4 for the following profiles: [Patient](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/01_StructureDefinition-Patient-uv-ips_to_SDTM.xlsx), [Condition](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/02_StructureDefinition-Condition-uv-ips_Problem_HxProblem_to_SDTM_MH.xlsx), [Medication](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/03_StructureDefinition-Medication-uv-ips_to_SDTM_CM.xlsx), [Medication Request](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/04_StructureDefinition-MedicationRequest-uv-ips_to_SDTM.xlsx), [Medication Statement](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/05_StructureDefinition-MedicationStatement-uv-ips_to_SDTM_CM.xlsx), [Observation Results Laboratory](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/06.0_StructureDefinition-Observation-results-laboratory-uv-ips_to_SDTM_LB_generic_domain.xlsx) (includes [Observation Results](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/06.1_StructureDefinition-Observation-results-uv-ips_to_SDTM_Findings_generic_domain.xlsx)), [Procedures](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/07_StructuredDefinition-Procedure-uv-ips_to_SDTM_PR.xlsx), [Diagnostic Report](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/09_StructureDefinition-DiagnosticReport-uv-ips_to_SDTM.xlsx), [Allergy and Intollerance](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/10_StructureDefinition-AllergyIntolerance-uv-ips_to_SDTM_MH.xlsx) ,and the base R4 FHIR [resource Encounter](https:./ig-assets/IPS_FHIR_to_CDISC_SDTM/08_FHIR-Encounter_to_SDTM_HO.xlsx); and xShare [routine laboratory data items](https:./ig-assets/Valuesets_and_Conceptmaps/xShare_Routine_labs.xlsx), [microbiology data items](https:./ig-assets/Valuesets_and_Conceptmaps/xSHARE_Microbiology_Data_Elements.xlsx) (with SNOMED codes and CDISC C-codes), a subset of the CDISC LOINC-to-LB mapping, and an analysis of the IPS FHIR valuesets to CDISC terminology codelists.

These tools are envisioned to aid in providing semantic interoperability across the FHIR data model with supporting terminologies and the CDISC SDTM data model including the CDISC terminology curated by the NIH NCI EVS Terminology services.

The harmonized terminology, valuesets and codelists can be downloaded and used by implementers or end users to create a standardized database for IPS+ data. Such database can either be integrated in the implementers’ compatible system or used for data mapping through APIs/Queries as detailed in [Mobile access to Health Documents (MHD), v4.2.2 - Trial-Implementation](https://profiles.ihe.net/ITI/MHD/) and [Using CQL with FHIR, v1.0.0 - STU1](https://hl7.org/fhir/uv/cql/STU1/).

The list of specific IPS+ data elements that are specific for the business use cases are represented in the annex II of [*Analysis of business use cases for use of EHRxF HIDs in clinical research.*](https:./ig-assets/Analysis_of_business_use_cases_for_use_of_EHRxF_HIDs_in_clinical_research.pdf)

### IPS+ adoption within use cases

The use cases described in the following paragraphs rely on the base setup as described in this simplified figure.

<div>
<p> </p>
  <img alt="Diagram with base setup" src="base-setup.jpg" style="width: 60%;" />
<p> </p>
</div>


#### Study feasibility

The capability to utilise the IPS+ for study feasibility relies upon a sequence of adoption and implementation decisions within a country, summarised as workflow steps below.

1. The IPS+ is endorsed by Member States and the EC, and included within the published EEHRxF.
2. EHR system vendors implement and upgrade their deployment sites with IPS+ import/export interfaces (APIs) to relevant regional or national platforms, and include user interface and data entry workflow support to optimize the completeness and quality of IPS+ data elements (e.g., a prompt to add a new diagnosis to the summary).
3. Regional and national health systems establish population repositories of EEHRxF data, along with processes to maintain its currency from different healthcare provider systems. These will be health system repositories established mainly for patient care delivery purposes, populated through identifiable data exports from healthcare provider EHR systems, as many countries already do. The data controller of these repositories is normally the regional or national health system (e.g., the health ministry).
4. Regional and national health systems design and implement data reconciliation methods to align the correctness of the IPS+ data held centrally, when there are inconsistencies in the data values for the same patient across different healthcare provider exports.
5. Regional and national healthcare systems and data protection officers set policies, agreements and contracts to enable the reuse of these repositories for clinical research, including patient awareness and education.
6. Companies making clinical research platforms implement federated query channels to these new repositories and update query tools for protocol designers and study feasibility analysts.
7. Pharma and MedTech companies train relevant staff and adapt their workflows to leverage EHR data for clinical trial design and recruitment scenarios.

A simplified flow noting the environments used is described in the following figure:

<div>
<p> </p>
  <img alt="Diagram with study feasibility process" src="study-feasibility.jpg" style="width: 60%;" />
<p> </p>
</div>


#### Individuals share data for potential study participation

Data sharing for individuals requires the existence of a PHR app connected to the national/regional infrastructure. Health data needed for the pre-screening tool must be available in the IPS+ and able to be exchanged through an interoperability system — the xShare Yellow Button. IPS+ data and national/regional infrastructure's data are standardized and “mapped” using the standardized value sets and code lists available in the downloads section. It pre-exists in a database either integrated to the pre-screening tool or accessible to recognized third parties through API calls.

Patients and healthy volunteers have access to a PHR app to access their health data, and in this app they can assess their eligibility for a clinical trial. They are interested and want to know if they can be included in a clinical trial, in one of the hospitals near to their home.

**PHR and participant workflow steps**

1. The user accesses the PHR app (The data format is EEHRxF/xShare core data element set).
2. The user triggers (and gives consent for) the sharing of their data after clicking the xShare Button (toggle button).
3. The health data is shared with the pre-screening application and mapped with pre-screening questions — “pre-screening questions available to the participant”.
4. The pre-screening application interprets the data through a questionnaire filtering the potentially compatible clinical trial.
5. The results of compatible studies and participating centres are accessible to the patient, including a percentage of compatibility.
6. The user can choose a study, several studies if applicable, and the hospital of their choice and gives consent for their data sharing to the chosen centre.
7. The user gives consent for their data sharing (access to the IPS+) by the chosen centre.
8. The centre receives a notification with the results and can access data to contact the patient/healthy volunteer to plan an on-site visit and assess the patient/healthy volunteer’s full eligibility.
9. The centre accesses the user’s pre-screening data.
10. The centre contacts the user to schedule the on-site visit and prevents the user from coming in when there is a limitation in their ability to participate in the study. This reduces the number of unnecessary visits and invasive examinations.
11. The user's full eligibility is assessed by the site during the onsite visit.

A simplified flow noting the environments used is described in the following figure:

<div>
<p> </p>
  <img alt="Diagram with patient participation flow" src="patient-study.jpg" style="width: 60%;" />
<p> </p>
</div>


#### Study support PHR/EHRs to Study Database Systems or EDC

The consenting patient enrolled in the study is included by the investigative team of the centre. The study allows eCRF automatic filling from existing health data. The patient has access to their PHR app containing a section allowing IPS+ data sharing for clinical research. The patient agrees to the automatic health data filling of the eCRF in the context of this study.

1. Approval of the study and the site by the respective/reference regulatory bodies in each country where the clinical trial is ongoing.
2. Clinical study protocol data elements are mapped with source IPS+ items, by the investigator systems (EHR) or centrally for the (multi-site) trial by data manager, EHR vendor, data source manager, etc.
3. The patient is identified as a candidate by the centre and is enrolled in a retrospective or prospective study. The patient signs the study ICF and data sharing permission only for the concerned study. Consent is obtained in a GDPR-compliant manner.
4. The study allows eCRF automatic filling from existing health data, and the patient has access to their PHR app, containing a section allowing data sharing for clinical research.
5. The patient agrees with the automatic health data filling of the eCRF in the context of this study.
6. The patient has access to a PHR App with the xShare Yellow Button. This enables the patient to download their EEHRxF data and to forward this to the study centre (or to provide an authorisation to the IPS+ data source to send it to the nominated trial centre directly). The study team assists the patient to link their inclusion number to the study in the PHR App when forwarding the data or authorising access.
7. Health data from their IPS+ is mapped to the corresponding data in the eCRF.
8. The investigation team completes the collection of additional data not in the IPS+, according to the study eCRF, and performs a manual or automatic quality control on the data collected.
9. Data is managed in a controlled and protected environment.

A simplified flow noting the environments used in view of a RWE study is described in the following figure:

<div>
<p> </p>
  <img alt="Diagram with patient data flow" src="rwe-flow.jpg" style="width: 60%;" />
<p> </p>
</div>


A simplified flow noting the environments used in view of a prospective study is described in the following figure.  
Note that step 4 might require a mapping solution between the IPS+ data pushed from the site and the study database with the sponsor.


<div>
<p> </p>
  <img alt="Diagram with study patient flow in prospective trial" src="rwd-flow.jpg" style="width: 60%;" />
<p> </p>
</div>


It should be noted that the clinical study protocol is likely to contain data elements beyond those defined in the IPS+.  
The data from the IPS+ will therefore not result in the entire filling of the eCRF.  
This workflow therefore provides only part of the study dataset, but is considered valuable because these are frequently copied across from the patient's health record.

If, for example, an examination or visit unrelated to the study occurs while a patient is participating and results in an update to the patient’s medication list, or in an adverse event, the updated IPS+ can be sent to the study centre and data updated in the eCRF.

If a patient changes their mind and no longer wishes their IPS+ data to be used in the study, they can cease forwarding downloads or cancel their authorisation.  
(Because clinical trial data needs to be retained long-term as evidence of the trial centre and sponsor duty of care, historically transferred data will not normally be deleted.)

### GDPR compliance and information security

The xShare Yellow Button utilises an enhanced data subject right under the GDPR, by enabling a patient to access a complete copy of their EEHRxF data in a computable, standardised form, utilising the same standards that are used to exchange this information between healthcare systems. The IPS+ is proposed as the representation of this content.

The EHDS Regulation permits an individual to forward their exchange format information to any other parties, for example to obtain a second clinical opinion or to participate in research.  
The trial centre should publish its data protection policy and notices, so that the patient is well aware of the GDPR-compliant terms and safeguards that will be applied to any data they provide to the trial centre they have chosen.  
The act of forwarding the information effectively provides their informed consent for the recipient to legally hold their personal EEHRxF data according to those published terms and safeguards.

If the patient passes prescreening, screening, and then becomes enrolled in the clinical study, the trial centre and sponsor will then need to retain their copies of the patient’s health information on a long-term basis, as their record of having performed a duty of care to the patient.  
This is usually the GDPR legal basis of *legitimate interest* in industry clinical studies.  
This is why, if a patient withdraws from a clinical study, their historic data will not be deleted.  
It will be a matter for the trial centre, in its published notices, to make clear what right of deletion a patient may exercise at the pre-screening stage when no duty of care has yet been provided.

The xShare Yellow Button workflows additionally need to be secure, normally to the information security standards that the national health system would utilise for its own communications between healthcare providers or between a healthcare provider and a patient.  
Since this representation will utilise HL7 FHIR, it is possible that its information security and access control standards will be used:

- [http://hl7.org/fhir/security.html](http://hl7.org/fhir/security.html)
- [https://build.fhir.org/secpriv-module.html](https://build.fhir.org/secpriv-module.html)

The information security measures needed for the data flows that utilise the IPS+ specification are beyond the scope of this implementation guide.

### Data quality

The EHDS Regulation places an obligation on EHR systems to document the consistency, accuracy and completeness of data within the scope of the EEHRxF.  
It is not clear from the Regulation how this quality information is to be handled, provided, or communicated whenever an extract is generated and communicated.  
This differs from the data quality and utility label to be applied to datasets for secondary use, when the (optional) label is to be included within the data set catalogue.

The EHDS Regulation sets no minimum data quality standard and makes no provision for any efforts that should be undertaken by Member States, health systems or EHR vendors to assure good data quality or to improve poor data quality.  
This means that the IPS+ data will be obtained “as is”.  
If the clinical research use cases have minimum data quality standards — for example, before data is transferred into a study database — then these data quality assessments need to be undertaken by the party orchestrating the data transfer.
