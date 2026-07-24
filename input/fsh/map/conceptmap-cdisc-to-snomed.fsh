Instance: CdiscToSnomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Cdisc to Snomed"
Description: "Concept map converted from resourceTypeConceptMap_CDISC_to_SNOMED.txt."

// * url = "https://www.cdisc.org/standards/terminology/controlled-terminology/cdisc-to-snomed"
* experimental = false
* name = "CdiscToSnomed"
* title = "Cdisc to Snomed"
* version = "2024"
* status = #active

* sourceUri = Canonical(CdiscAllVs)
* targetUri = Canonical(SnomedAllVs)

// GC: source should be the code system not the map itself
* group[0].source = $cdisc
* group[0].target = "http://snomed.info/sct"
* group[0].element[0].code = $cdisc#C64432
* group[0].element[0].display = "Alkaline Phosphatase"
* group[0].element[0].target[0].code = $sct#175531010000100
* group[0].element[0].target[0].display = "Catalytic concentration of alkaline phosphatase in serum or plasma at point in time (observable entity)"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[1].code = $cdisc#C64433
* group[0].element[1].display = "Alanine Aminotransferase"
* group[0].element[1].target[0].code = $sct#105311010000109
* group[0].element[1].target[0].display = "Catalytic concentration of alanine aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[2].code = $cdisc#C64467
* group[0].element[2].display = "Aspartate Aminotransferase"
* group[0].element[2].target[0].code = $sct#274161010000103
* group[0].element[2].target[0].display = "Catalytic concentration of aspartate aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[2].target[0].equivalence = #equivalent
