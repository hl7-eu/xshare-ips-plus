
The [**data domain**](https://build.fhir.org/ig/hl7-eu/xshare-IPS+/content.html) describes the data model and the data exchange format.

<div>
<p> </p>
{% include bdat-d.svg %}
<p> </p>
</div>

The figure above provides a view of the data elements as recommended in the *Proposal for a harmonized core data set across health care, population health and clinical research* for the content of the IPS+. These recommendations are the results of:

* Substantial desk research and analysis across multiple data element lists from European and US projects
* Prioritization of elements most commonly included in clinical trial protocols
* Engagement with the xShare public health work package to identify high-value data elements for selected use cases

The data element concepts are aligned with the CDISC Domain and the equivalent IPS Category.

* **White elements**: Present in the ISO IPS
* **Black elements**: Supplementary, proposed to support clinical research and public health (e.g., Research Subject Identifier, Adverse Event, Healthcare Encounter)

---

### Comparing Adverse Events with Allergies and Intolerance

Adverse Events (AEs) in prospective studies refer to **new conditions after trial enrolment**, typically captured in EMR/EHR/PHR systems as *Conditions*. Their classification as AEs is due to the **timing** relative to study enrolment.

These concepts are central to IPS+ in the context of interventional clinical trials (e.g., treatment efficacy and safety). The collection of AEs and Serious Adverse Events (SAEs) ensures **participant safety**.

#### Definition of Serious Adverse Events (SAE)

An SAE may include any of the following:

* Event linked to **death** or is **life-threatening**
* Requires **hospitalization** (initial or prolonged)
* Leads to **disability or permanent damage**
* Causes **congenital anomaly/birth defect**
* Requires **intervention** to prevent permanent damage (esp. device-related)

In the context of a drug/device trial, **a formal SAE report** must assess the impact of the study on the event and guide protective actions.

The SAE report includes:

* Diagnosis
* Start date and status (ongoing/closed)
* Conclusion after the event
* Grading and classification rationale
* Causality
* Actions taken

All these components are included in the IPS+ data model.
**Automating** SAE population in an eCRF via EEHRxF would greatly improve safety workflows.

---

### Mappings between CDISC standards and HL7 FHIR

To simplify data mapping in PHRs, several CDISC resources can be used:

* **CDISC eCRF Portal** with CDASH-compliant annotated eCRFs
* **CDASHIG** providing mappings from CDASH → SDTM
* **CDISC Library** with machine-readable standards

These tools support transformation from **FHIR IPS** to the **CDISC SDTM** specification.

FHIR-CDISC mapping documents and aligned **value sets** aid in enabling secondary data use from PHRs.

#### Illustrations

<div>
<p> </p>
  <img alt="Mapping illustration for medical history" src="medical-history.jpg" style="width: 60%;" />
<p> </p>
<p> </p>
  <img alt="Diagram of terminology and model concepts" src="diagram-funnel.jpg" style="width: 60%;" />
<p> </p>

</div>
