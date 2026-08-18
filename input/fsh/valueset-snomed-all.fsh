ValueSet: SnomedAllVs
Id: snomed-all
Title: "All SNOMED CT Codes"
Description: "Value set including all codes from SNOMED CT."
* insert SNOMEDCopyrightForVS
* ^status = #active
* ^experimental = false
* include codes from system http://snomed.info/sct|http://snomed.info/sct/11010000107
// * include codes from system http://snomed.info/sct


ValueSet: CdiscAllVs
Id: cdisc-all
Title: "All Cdisc Codes"
Description: "Value set including all codes from Cdisc."
* insert CdiscCopyrightForVS
* ^status = #active
* ^experimental = false
* include codes from system $cdisc
