Instance: SnomedToCdisc
InstanceOf: ConceptMap
Usage: #definition
Title: "Snomed to Cdisc"
Description: "Concept map converted from resourceTypeConceptMap_SNOMED_to_CDISC.txt."
// * url = "http://snomed.info/sct/snomed-to-cdisc"
* experimental = false
* name = "SnomedToCdisc"
* title = "Snomed to Cdisc"
* version = "2024"
* status = #active
* sourceUri = Canonical(SnomedAllVs)
* targetUri = Canonical(CdiscAllVs)
* group[0].source = "http://snomed.info/sct"
* group[0].target = "https://www.cdisc.org/standards/terminology/controlled-terminology"
* group[0].element[0].code = #175531010000100
* group[0].element[0].display = "Catalytic concentration of alkaline phosphatase in serum or plasma at point in time (observable entity)"
* group[0].element[0].target[0].code = $cdisc#C64432
* group[0].element[0].target[0].display = "Alkaline Phosphatase"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[1].code = #105311010000109
* group[0].element[1].display = "Catalytic concentration of alanine aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[1].target[0].code = $cdisc#C64433
* group[0].element[1].target[0].display = "Alanine Aminotransferase"
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[2].code = #274161010000103
* group[0].element[2].display = "Catalytic concentration of aspartate aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[2].target[0].code = $cdisc#C64467
* group[0].element[2].target[0].display = "Aspartate Aminotransferase"
* group[0].element[2].target[0].equivalence = #equivalent
