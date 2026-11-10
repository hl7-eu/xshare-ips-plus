// Value sets for public health (see https://github.com/hl7-eu/xshare-ips-plus/issues/20)

ValueSet: CaseClassificationVs
Id: case-classification
Title: "Case classification"
Description: "The classification of a case against a case definition."
* insert SNOMEDCopyrightForVS
* ^status = #active
* $sct#60022001 "Possible diagnosis (contextual qualifier) (qualifier value)"
* $sct#2931005 "Probable diagnosis (contextual qualifier) (qualifier value)"
* $sct#255545003 "Definite (qualifier value)"


ValueSet: ExposureVs
Id: exposure
Title: "Exposure"
Description: "The exposure relevant to an infection. It captures the epidemiological link as defined in the EU case definitions."
* insert SNOMEDCopyrightForVS
* ^status = #active
* $sct#409699001 "Human to human transmission (qualifier value)"
* $sct#409700000 "Animal to human transmission (qualifier value)"
* $sct#418715001 "Exposure to potentially harmful entity (event)"
* $sct#781249001 "Consumption of contaminated food (event)"
* $sct#419809003 "Environmental exposure transmission (qualifier value)"
* $sct#444071008 "Exposure to organism (event)"


ValueSet: TransmissionRouteVs
Id: transmission-route
Title: "Transmission route"
Description: "The route by which the infection was acquired."
* insert SNOMEDCopyrightForVS
* ^status = #active
* $sct#416380006 "Airborne transmission (qualifier value)"
* $sct#417403003 "Fecal-oral transmission (qualifier value)"
* $sct#417564009 "Sexual transmission (qualifier value)"
* $sct#419114001 "Body fluid contact transmission (qualifier value)"
* $sct#1290740005 "Vertical transmission (qualifier value)"
* $sct#418427004 "Vector-borne transmission (qualifier value)"
* $sct#416086007 "Food-borne transmission (qualifier value)"
* $sct#418117003 "Water-borne transmission (qualifier value)"
* $sct#419033008 "Fomite transmission (qualifier value)"
