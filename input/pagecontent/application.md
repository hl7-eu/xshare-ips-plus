


The **application domain** summarises the main business use cases for clinical research that can take advantage of the future wide European adoption of the IPS+.
The full details of these use cases are given in *Analysis of business use cases for use of EHRxF HIDs in clinical research*, which the reader is encouraged to review before adopting the specification presented here.

<div>
<p> </p>
{% include bdat-a.svg %}
<p> </p>
</div>

The business use cases summarised below focus on clinical research.
The design of IPS+ and the data specification reported here additionally support public health use cases and use in tackling cross-border health threats.

---

### Use Case 1: Study/protocol feasibility

The protocol designer composes a query taken from the eligibility (inclusion, exclusion) criteria for the trial, mapped from CDISC representation to the EEHRxF format, for execution as federated queries on IPS+ health data repositories.

These are used to discover the frequency distributions of potentially eligible participants across a network of hospitals within one or multiple countries.
A third-party ICT platform may facilitate this.
This enables identifying favorable sites for study participant recruitment.

**The Trigger:**
Multi-stakeholder endorsement of the xShare IPS+ specifications as correct, relevant, practical, and useful for the future of healthcare, treatment innovation, and health system sustainability.

<div>
<p> </p>
  <img alt="Feasibility overview" src="Study-feasibility-overview.jpg" style="width: 60%;" />
<p> </p>
</div>


---

### Use Case 2: Individuals share data for potential study participation

Individuals explore potential clinical studies by leveraging their health data through a PHR populated with up-to-date IPS+ data via the xShare Yellow Button.

The workflow involves interaction with study registries and prescreening tools that match the patient with open clinical trials.
It also involves mapping health data from HL7 FHIR/SNOMED IPS+ to CDISC-based pre-screening questionnaires.

Once a potentially compatible trial is identified, a percentage match is calculated to assess eligibility.
If needed, patients can share additional personal data with hospitals for comprehensive screening.

**The Trigger:**
A citizen wants to know if they are possibly eligible for a clinical trial.

<div>
<p> </p>
  <img alt="Study participation overview" src="study-participation.jpg" style="width: 60%;" />
<p> </p>
</div>


---

### Use Case 3: Study support – PHR/EHRs to Study Database System or EDC

This use case utilizes IPS+ health data to support data collection in health studies (clinical or epidemiological).
Eligibility and consent for data use are ensured per local policies and regulations.

Health data from EHRs, PHRs, Clinical Data Warehouses, patient registries, disease networks, and FAIR repositories can help reduce redundant data capture and improve data quality.

**The Trigger:**
The patient or clinical trial investigator wants to send Study X data.


<div>
<p> </p>
  <img alt="Study data sharing overview" src="Send-data-overview.jpg" style="width: 60%;" />
<p> </p>
</div>

