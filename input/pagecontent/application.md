


The **application domain** summarises the main business use cases for clinical research that can take advantage of the future wide European adoption of the IPS+.
The full details of these use cases are given in [*Analysis of business use cases for use of EHRxF HIDs in clinical research*](https:./ig-assets/Analysis_of_business_use_cases_for_use_of_EHRxF_HIDs_in_clinical_research.pdf), which the reader is encouraged to review before adopting the specification presented here.

<div>
<p> </p>
{% include bdat-a.svg %}
<p> </p>
</div>

The business use cases summarised below focus on clinical research.
The design of IPS+ and the data specification reported here additionally support public health use cases and use in tackling cross-border health threats.

---

### Use Case 1: Study/protocol feasibility

The protocol designer composes a query taken from the eligibility (inclusion, exclusion) criteria for the trial, mapped from CDISC representation to the European EHRxF format, for execution as federated queries on IPS+ health data repositories.

The aggregated candidate protocol eligibility criteria are used to discover the frequency distributions of potentially eligible participants across a network of hospitals within one or multiple countries. It should be noted that this use case benefits from the anticipated consolidation by Member States of patient summaries and other European EHRxF data obtained via the EHDS primary use services, but the reuse within this use case is not within the terms of the EHDS secondary use services, but reuse in a conventional way if permitted by each Member State. A third-party Information and Communication Technology (ICT) platform company may facilitate this. This enables the identification of favourable sites for study participant recruitment.

**The Trigger:**
Multi-stakeholder endorsement of the xShare IPS+ specifications as correct, relevant, practical and useful for the future of healthcare, treatment innovation and health systems sustainability. Note: unlike the use case below, individual patients are not consulted about or involved in these data flows, as only aggregated population level data is used.

<div>
<p> </p>
  <img alt="Feasibility overview" src="Study-feasibility-overview.jpg" style="width: 60%;" />
<p> </p>
</div>


---

### Use Case 2: Individuals share data for potential study participation

Individuals explore potential clinical studies by leveraging their health data through a PHR populated with up-to-date IPS+ data via the xShare Yellow Button.

This use case implies interaction with study registries where there is a link between the open clinical trial, the hospital participating in the trial and a pre-screening tool. This link can be performed by the pre-screening tool (IT vendor).
It also implies the mapping of health data from the IPS (presumed to be HL7 FHIR and SNOMED) to the pre-screening tool questionnaire (presumed to be CDISC) e.g. subject demographic = age, the patient must be between 18 and 75 years old to participate. Once the detection of a potentially compatible clinical trial with the patient or healthy volunteer, a percentage match is calculated for the citizen and investigator to determine how compatible they may be with clinical trials (e.g. the pre-screening is 80% compatible with the study eligibility criteria, the remaining 20% is unknown data such as non-IPS+ data).
The on-site team would only be able to complete and evaluate the full patient pre-screening via a more detailed record exchange or by seeing the patient.  The patient/healthy volunteer can therefore share their non-medical personal data with a hospital participating in the compatible trial.

The hospital’s research team can then contact the patient/healthy volunteer for more comprehensive screening.

**The Trigger:**
A citizen wants to know if they are possibly eligible for a clinical trial.

<div>
<p> </p>
  <img alt="Study participation overview" src="study-participation.jpg" style="width: 60%;" />
<p> </p>
</div>


---

### Use Case 3: Study support – PHR/EHRs to Study Database System or Electronic Data Capture (EDC)

This use case leverages existing IPS+ health data to support data collection defined in a health study (clinical study, epidemiological study) for enrolled patients, where the selection criteria were verified and the appropriate consent for data management (including IPS+ data access) was granted to meet regulatory requirements and local policies. Data collection leverages the European EHRxF via the implementation of the xShare Yellow Button.

Citizen health data is present in EHR and PHR systems, and in Clinical Data Warehouses, Patient registries, Diseases networks, FAIR data repositories, etc.
This data may be extremely helpful in supporting clinical research by reducing redundant data capture and increasing data quality in relation with the accountability of each information assigned to their respective sources in provenance management. 

**The Trigger:**
The patient or clinical trial investigator wants to send Study X data.


<div>
<p> </p>
  <img alt="Study data sharing overview" src="Send-data-overview.jpg" style="width: 60%;" />
<p> </p>
</div>

