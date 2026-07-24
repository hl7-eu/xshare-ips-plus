Instance: LoincToSnomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Loinc to Snomed"
Description: "Concept map converted from resourceTypeConceptMap_LOINC_to_SNOMED.txt."
// * url = "http://loinc.org/loinc-to-snomed"

* experimental = false
* name = "LoincToSnomed"
* title = "Loinc to Snomed"
* version = "2024"
* status = #active
* sourceUri = "http://loinc.org/vs"
* targetUri = Canonical(SnomedAllVs)
* group[0].source = "http://loinc.org"
* group[0].target = "http://snomed.info/sct"
* group[0].element[0].code = #6768-6
* group[0].element[0].display = "ALP SerPl-cCnc"
* group[0].element[0].target[0].code = #175531010000100
* group[0].element[0].target[0].display = "Catalytic concentration of alkaline phosphatase in serum or plasma at point in time (observable entity)"
* group[0].element[0].target[0].equivalence = #equivalent
* group[0].element[1].code = #1742-6
* group[0].element[1].display = "ALT SerPl-cCnc"
* group[0].element[1].target[0].code = #105311010000109
* group[0].element[1].target[0].display = "Catalytic concentration of alanine aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[1].target[0].equivalence = #equivalent
* group[0].element[2].code = #1920-8
* group[0].element[2].display = "AST SerPl-cCnc"
* group[0].element[2].target[0].code = #274161010000103
* group[0].element[2].target[0].display = "Catalytic concentration of aspartate aminotransferase in serum or plasma at point in time (observable entity)"
* group[0].element[2].target[0].equivalence = #equivalent
