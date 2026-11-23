
The [**data domain**](https://build.fhir.org/ig/hl7-eu/xshare-IPS-plus/content.html) describes the data model and the data exchange format.

<div>
<p> </p>
{% include bdat-d.svg %}
<p> </p>
</div>

<p>The main purpose of the IPS+ content is connecting health and healthcare to research and public health. When one thinks of research and public health, one thinks of CDISC suite of standards which is why the mapping of the data elements goes to the CDISC standards which support rigorous clinical trials and are required for submissions to regulatory bodies. The OMOP common data model, and HL7 FHIR have content as well; however, the use cases are different. OMOP provides the signals of what is happening in the world; whereas CDISC provides the structure and rigor CDISC required to test the hypothesis of what scientists would like to verify. FHIR provides the exchange standards for communicating between stakeholders. The key connector is the data element concept.</p>

<p>The guide includes data element concepts common across health, research and public health and maps them. The maps provide the NIH NCIt C-codes that link to the CDISC biomedical concepts thus enabling end users to pull in the entire picture (all pertinent variables surrounding the concept to fully inform the question and answer). This is needed to test the hypothesis through the observational data. CDISC standards support end –to-end research and the tools within this guide are meant to connect HL7 FHIR and CDISC standards with guidance for the CDISC and SNOMED terminology. LOINC is used where appropriate. This linkage uses the core harmonized data element set.</p>

The figure below provides a view of the data elements for the content of the IPS+ as recommended in the [*Proposal for a harmonized core data set across health care, population health and clinical research*](ig-assets/Proposal_for_a_harmonized_core_data_set_across_health_care_population_health_and_clinical_research.pdf) and further refined based on insights from Open Calls for Research and Public Health. These recommendations are the results of:

<ul>
  <li>Substantial desk research and analysis across multiple data element lists from European and US projects</li>
  <li>Prioritization of elements most commonly included in clinical trial protocols</li>
  <li>Engagement with the xShare public health work package to identify high-value data elements for selected use cases</li>
  <li>Insights from Open Call realisations</li>
  <li>Takes into account the specialty agnosticity of the core set, similar as the IPS</li>
</ul>

The data element concepts are aligned with the CDISC Domain and the equivalent IPS Category.

<div>
<p> </p>
  <img alt="IPS+ Data Elements Overview" src="IPS+Overview.png" style="width: 60%;" />
<p> </p>
</div>

<ul>
  <li>**White elements**: Present in the IPS</li>
  <li>**Black elements**: Supplementary, proposed to support clinical research and public health (e.g., Research Subject Identifier, Adverse Event, Healthcare Encounter, Outbreak)</li>
</ul>

To support public health use cases, IPS+ adds three data elements in an ‘Outbreak’ category. They are derived from the EU case definitions for communicable disease surveillance (Commission Implementing Decision (EU) 2018/945), which combine clinical, laboratory and epidemiological criteria to classify a case. Clinical and laboratory criteria are covered by existing IPS content (Problems and Results). The epidemiological criteria and the resulting classification covered by the elements below, have been added.

<table border="1">
  <thead>
    <tr>
      <th>Data element</th>
      <th>Description</th>
      <th>Values</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Exposure</td>
      <td>The exposure relevant to the infection. It captures the epidemiological link as defined in the EU case definitions.</td>
      <td>Human-to-human transmission; Animal-to-human transmission; Exposure to a common source; Exposure to contaminated food or drinking water; Environmental exposure; Laboratory exposure </td>
    </tr>
    <tr>
      <td>Transmission Route</td>
      <td>The route by which the infection was acquired.</td>
      <td>Airborne; Contact (Faecal-oral, Respiratory droplets, Skin, Sexual, Indirect contact) Vertical; Vector; Food or water</td>
    </tr>
    <tr>
      <td>Case Classification</td>
      <td>The classification of a case against a case definition.</td>
      <td>Possible; Probable; Confirmed</td>
    </tr>
  </tbody>
</table>

To cover use case needs that rely on specialty specific data elements, such as oncology, paediatrics or rare diseases, the IPS+ framework foresees additional data elements as part of specialty extensions. Future initiatives focusing on a specialty, can determine these extensions.

---

### Comparing Adverse Events with Allergies and Intolerances

Adverse Events (AEs) in prospective studies are **new conditions after trial enrolment**, and would likely be collected in EMR/EHR/PHR systems as *Conditions*. Their classification as AEs is due to the **timing** relative to study enrolment.

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
**Automating** SAE population in an eCRF via European EHRxF would greatly improve safety workflows.

If new occurrences of conditions or allergies arise in the patient, even during a clinical trial, these data would also be entered in an EHR as **new conditions and allergies** using its usual data elements. Therefore, in terms of mapping, these additional data element concepts specified for Adverse Events will likely be documented only on the research side and the full Adverse Event data element set does not need to be added to the IPS. Thus, the only additional concepts not in the current IPS are Research Subject, Research Study and the Healthcare Encounter data element set.

---

### Mappings between CDISC standards and HL7 FHIR

To simplify data mapping in PHRs, several CDISC resources can be used:

<ul>
<li>[**CDISC eCRF Portal**](https://www.cdisc.org/kb/ecrf) with CDASH-compliant annotated eCRFs</li>
<li>[**CDASHIG**](https://www.cdisc.org/standards/foundational/cdash) providing mappings from CDASH → SDTM</li>
<li>**CDISC Library** with machine-readable standards, such as those comig out of the Biomedical Concepts Initiative</li>
</ul>

These tools support transformation from **FHIR IPS** to the **CDISC SDTM** specification.

FHIR-CDISC mapping documents and aligned **value sets** aid in enabling secondary data use from PHRs.

Note that CDISC uses MedDRA codes, whereas the IPS is assumed to use SNOMED CT. A [**SNOMED CT to MedDRA mapping**](https://www.snomed.org/maps) is maintained and published by SNOMED International. Leveraging the FHIR to CDISC maps, the value sets provided that are aligned with the CDISC terminology will assist in providing support for PHRs that can be leveraged for secondary data use. Also note that, although the next figure may suggest a one-to-one mapping, relationships between terminologies and standards are not always one-to-one.

#### Illustrations

<div>
<p>The illustrations show how the data element concepts connect across the supporting data element items. The key topic variable is the main data element that without it, the rest of the data element items are meaningless. The below figure shows the question and the answers on the case report form for medical history. The table on the right shows the medical history term (condition) and the surrounding related variables (supplemental qualifiers) that would be found in the biomedical concept for medical history (Medical History Reported Term), bc id C83119 which is the same as the nci code of C83118. The figure shows how SNOMED terminology represents the question of “what is the clinical finding?” and the answer of “diabetes mellitus” (with the corresponding SNOMED codes).
 </p>
  <img alt="Mapping illustration for medical history" src="medical-history.jpg" style="width: 60%;" />
<p> </p>
<p>Below figure is another view of how the data element concepts are related. The funnel as the connector by concepts and terminology and the surrounding concepts as the qualifying data element items that support the data element concepts. In CDISC terms, the Reported Term for the Medical History (MHTERM) with the synonym qualifier of the Dictionary-Derived Term (MHDECOD), the timing variables of the Start Date/Time of the Medical History Event and the End Date/Time of the Medical History Event. The Medical History Event Date Type (MHEVDTYP) is a qualifier used to represent the aspect of the medical condition or event by which MHSTDTC and/or the MHENDTC is defined. Examples: "DIAGNOSIS", "SYMPTOMS", "RELAPSE", "INFECTION". In clinical research, the question is often asked if the event is ongoing which is a CDASHIG variable, Ongoing Medical History Event (MHONGO). The terminology provides the traceability across the CDISC suite of standards as well as across standard to standard. </p>
  <img alt="Diagram of terminology and model concepts" src="diagram-funnel.jpg" style="width: 60%;" />
<p> </p>

</div>
