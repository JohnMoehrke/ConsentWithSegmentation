

// SAMSHA big valueset - https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest
// http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1
// my personal NLM apiKey=10b69906-5814-406b-83bc-ed27260bda38
//
// Note that 58 is the overall grouper
// Note there is no 31, 37, 61, 62, 63, 64
// Note that tobacco is not included as not considered a protected sensitvive topic: 51, 52, 53, 54
// Note additional beyond 58: 65, 67






ValueSet: SlsSensitivePSY
Title: "clinical codes that indicate PSY"
Description: """
codes that when found in data would indicate the data is likely PSY related

PSY - psychiatry disorder information sensitivity

??should this include MH (Mental Health), PSYTHPN (psychotherapy note), and SUD (subsance use)??

* **SAMSHA C2S Mental Health Disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.32 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.33 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.34 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.35 // RXNORM
  * ValueSet 2.16.840.1.113762.1.4.1142.36 // SNOMED-CT
"""
//*  http://loinc.org#74013-4

// SAMSHA C2S Mental Health Disorders
* ^experimental = false
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.32 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.33 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.34 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.35 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.36 // SNOMED-CT




ValueSet: SlsSensitiveETH
Title: "clinical codes that indicate ETH"
Description: """
codes that when found in data would indicate the data is likely ETH related

ETH - substance abuse information sensitivity (alcohol or drug-abuse information)

* **SAMSHA  C2S Alcohol Use Disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.1 // SNOMEDCD
  * ValueSet 2.16.840.1.113762.1.4.1142.2 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.3 // RXNORM
  * ValueSet 2.16.840.1.113762.1.4.1142.4 // ICD10CD
  * ValueSet 2.16.840.1.113762.1.4.1142.5 // LOINC
* **SAMSHA C2S Amphetamine Use Disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.10 // RXNORM
  * ValueSet 2.16.840.1.113762.1.4.1142.11 // SNOMED-CT
  * ValueSet 2.16.840.1.113762.1.4.1142.6 // HCPCS
  * ValueSet 2.16.840.1.113762.1.4.1142.7 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.8 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.9 // LOINC
* **SAMSHA C2S Cannabis Use Disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.12 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.13 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.14 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.15 // SNOMED-CT
* **SAMSHA C2S Cocaine Use Disorder**
  * ValueSet 2.16.840.1.113762.1.4.1142.16 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.17 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.18 // SNOMED-CT
* **SAMSHA C2S Hallucinogens**
  * ValueSet 2.16.840.1.113762.1.4.1142.19 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.20 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.21 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.22 // SNOMED-CT
* **SAMSHA C2S Inhalants**
  * ValueSet 2.16.840.1.113762.1.4.1142.28 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.29 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.30 // SNOMED-CT
* **SAMSHA C2S Opioids**
  * ValueSet 2.16.840.1.113762.1.4.1142.38 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.39 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.40 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.41 // RXNORM
  * ValueSet 2.16.840.1.113762.1.4.1142.42 // SNOMED-CT
  * ValueSet 2.16.840.1.113762.1.4.1142.59 // CPT
* **SAMSHA C2S Other Psychoactive Substance Use Disorder**
  * ValueSet 2.16.840.1.113762.1.4.1142.43 // SNOMED-CT
  * ValueSet 2.16.840.1.113762.1.4.1142.44 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.45 // ICD10CM
* **SAMSHA C2S Sedative Hypnotic, or anxiolytic related disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.46 // SNOMED-CT
  * ValueSet 2.16.840.1.113762.1.4.1142.47 // ICD10CM
  * ValueSet 2.16.840.1.113762.1.4.1142.48 // ICD9CM
* **SAMSHA C2S Substance use Information Sensitivity**
  * ValueSet 2.16.840.1.113762.1.4.1142.55 // HCPCS
  * ValueSet 2.16.840.1.113762.1.4.1142.56 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.57 // RXNORM
* **SAMSHA Test C2S Alcohol Use Disorders**
  * ValueSet 2.16.840.1.113762.1.4.1142.65 // SNOMED-CT
"""
* ^experimental = false
// SAMSHA  C2S Alcohol Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1 // SNOMEDCD
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.2 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.3 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.4 // ICD10CD
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.5 // LOINC
// SAMSHA C2S Amphetamine Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.10 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.11 // SNOMED-CT
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.6 // HCPCS
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.7 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.8 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.9 // LOINC
// SAMSHA C2S Cannabis Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.12 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.13 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.14 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.15 // SNOMED-CT
// SAMSHA C2S Cocaine Use Disorder
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.16 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.17 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.18 // SNOMED-CT
// SAMSHA C2S Hallucinogens
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.19 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.20 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.21 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.22 // SNOMED-CT
// SAMSHA C2S Inhalants
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.28 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.29 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.30 // SNOMED-CT
// SAMSHA C2S Opioids
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.38 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.39 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.40 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.41 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.42 // SNOMED-CT
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.59 // CPT
// SAMSHA C2S Other Psychoactive Substance Use Disorder
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.43 // SNOMED-CT
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.44 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.45 // ICD10CM
// SAMSHA C2S Sedative Hypnotic, or anxiolytic related disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.46 // SNOMED-CT
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.47 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.48 // ICD9CM
// SAMSHA C2S Substance use Information Sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.55 // HCPCS
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.56 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.57 // RXNORM
// SAMSHA Test C2S Alcohol Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.65 // SNOMED-CT

ValueSet: SlsSensitiveSEX
Title: "clinical codes that indicate SEX"
Description: """
SEX - sexuality and reproductive health information

??should this also include SDV (Sexual assault, abuse or domestic violence), PREGNANT (pregnancy), STD (sexually transmitted disease)??

* **SAMSHA C2S Sexuality and reproductive health information sensitivity**
  * ValueSet 2.16.840.1.113762.1.4.1142.49 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.50 // RXNORM
"""
* ^experimental = false
// SAMSHA C2S Sexuality and reproductive health information sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.49 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.50 // RXNORM


ValueSet: SlsSensitiveHIV
Title: "clinical codes that indicate HIV"
Description: """
HIV/AIDS information

* **SAMSHA C2S HIV/AIDS Information**
  * ValueSet 2.16.840.1.113762.1.4.1142.23 // HCPCS
  * ValueSet 2.16.840.1.113762.1.4.1142.24 // ICD9CM
  * ValueSet 2.16.840.1.113762.1.4.1142.25 // LOINC
  * ValueSet 2.16.840.1.113762.1.4.1142.26 // RXNORM
  * ValueSet 2.16.840.1.113762.1.4.1142.27 // SNOMED-CT
  * ValueSet 2.16.840.1.113762.1.4.1142.60 // CPT
* **SAMSHA Test C2S HIV/AIDS Information Sensitivity**
  * ValueSet 2.16.840.1.113762.1.4.1142.67 // SNOMEDCD
"""
* ^experimental = false
// SAMSHA C2S HIV/AIDS Information
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.23 // HCPCS
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.24 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.25 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.26 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.27 // SNOMED-CT
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.60 // CPT
// SAMSHA Test C2S HIV/AIDS Information Sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.67 // SNOMEDCD
