

// SAMSHA big valueset - https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest
// http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1
// my personal NLM apiKey=10b69906-5814-406b-83bc-ed27260bda38





ValueSet: SlsSensitivePSY
Title: "clinical codes that indicate PSY"
Description: """
codes that when found in data would indicate the data is likely PSY related

PSY - psychiatry disorder information sensitivity

should this include MH (Mental Health), PSYTHPN (psychotherapy note), and SUD (subsance use)

- LOINC
- SNOMED
- RXnorm
- etc
"""
*  http://loinc.org#74013-4

// SAMSHA C2S Mental Health Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.32 // ICD10CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.33 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.34 // LOINC
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.35 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.36 // SNOMEDCD




ValueSet: SlsSensitiveETH
Title: "clinical codes that indicate ETH"
Description: """
codes that when found in data would indicate the data is likely ETH related

ETH - substance abuse information sensitivity (alcohol or drug-abuse information)

- LOINC
- SNOMED
- RXnorm
- etc
"""
// SAMSHA  C2S Alcohol Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1 // SNOMEDCD
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.2 // ICD9CM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.3 // RXNORM
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.4 // ICD10CD
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.5 // LOINC
// SAMSHA C2S Amphetamine Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.10
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.11
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.6
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.7
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.8
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.9
// SAMSHA C2S Cannabis Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.12
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.13
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.14
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.15
// SAMSHA C2S Cocaine Use Disorder
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.16
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.17
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.18
// SAMSHA C2S Hallucinogens
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.19
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.20
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.21
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.22
// SAMSHA C2S Inhalants
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.28
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.29
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.30
// SAMSHA C2S Opioids
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.38
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.39
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.40
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.41
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.42
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.59
// SAMSHA C2S Other Psychoactive Substance Use Disorder
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.43
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.44
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.45
// SAMSHA C2S Sedative Hypnotic, or anxiolytic related disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.46
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.47
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.48
// SAMSHA C2S Substance use Information Sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.55
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.56
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.57
// SAMSHA Test C2S Alcohol Use Disorders
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.65

ValueSet: SlsSensitiveSEX
Title: "clinical codes that indicate SEX"
Description: """
SEX - sexuality and reproductive health information

should this also include SDV (Sexual assault, abuse or domestic violence), PREGNANT (pregnancy), STD (sexually transmitted disease)
"""
// SAMSHA C2S Sexuality and reproductive health information sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.49
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.50


ValueSet: SlsSensitiveHIV
Title: "clinical codes that indicate HIV"
Description: """
HIV/AIDS information
"""
// SAMSHA C2S HIV/AIDS Information
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.23
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.24
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.25
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.26
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.27
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.60
// SAMSHA Test C2S HIV/AIDS Information Sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.67 // SNOMEDCD
