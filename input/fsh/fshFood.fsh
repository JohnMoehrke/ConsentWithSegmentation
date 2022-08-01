
Instance: ex-organization
InstanceOf: Organization
Title: "Example Organization holding the data"
Description: "The Organization that holds the data, and enforcing any Consents"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* name = "somewhere org"



Instance: ex-doctor
InstanceOf: Practitioner
Title: "Practitioner example doctor"
Description: "Practitioner example for the doctor."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* telecom.system = #email
* telecom.value = "JohnMoehrke@example.com"



// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
Instance:   ex-patient
InstanceOf: Patient
Title:      "Patient example"
Description: "Patient example for completeness sake."
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"



Instance: ex-documentreference
InstanceOf: DocumentReference
Title: "DocumentReference Consent Paperwork example"
Description: "DocumentReference example of the paperwork of the Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #current
* type = http://loinc.org#64292-6 "Release of information consent"
* subject = Reference(Patient/ex-patient)
* author = Reference(Organization/ex-organization)
* description = "The captured signed document"
* content.attachment.title = "Hello World"
* content.attachment.contentType = #text/plain
* content.attachment.data = "TG9yZW0gaXBzdW0gZG9sb3Igc2l0IGFtZXQsIGNvbnNlY3RldHVyIGFkaXBpc2NpbmcgZWxpdCwgc2VkIGRvIGVpdXNtb2QgdGVtcG9yIGluY2lkaWR1bnQgdXQgbGFib3JlIGV0IGRvbG9yZSBtYWduYSBhbGlxdWEuIFV0IGVuaW0gYWQgbWluaW0gdmVuaWFtLCBxdWlzIG5vc3RydWQgZXhlcmNpdGF0aW9uIHVsbGFtY28gbGFib3JpcyBuaXNpIHV0IGFsaXF1aXAgZXggZWEgY29tbW9kbyBjb25zZXF1YXQuIER1aXMgYXV0ZSBpcnVyZSBkb2xvciBpbiByZXByZWhlbmRlcml0IGluIHZvbHVwdGF0ZSB2ZWxpdCBlc3NlIGNpbGx1bSBkb2xvcmUgZXUgZnVnaWF0IG51bGxhIHBhcmlhdHVyLiBFeGNlcHRldXIgc2ludCBvY2NhZWNhdCBjdXBpZGF0YXQgbm9uIHByb2lkZW50LCBzdW50IGluIGN1bHBhIHF1aSBvZmZpY2lhIGRlc2VydW50IG1vbGxpdCBhbmltIGlkIGVzdCBsYWJvcnVtLg=="
// Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.


Instance: ex-son
InstanceOf: RelatedPerson
Title: "Son - Related Person"
Description: "Son of the Patient authorized by a Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* patient = Reference(Patient/ex-patient)
* relationship = 	http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
// after all, that is his name too
* gender = #male

Instance: ex-son2
InstanceOf: RelatedPerson
Title: "Son2 - Related Person"
Description: "Son2 of the Patient authorized by a Consent"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* active = true
* patient = Reference(Patient/ex-patient)
* relationship = 	http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
// after all, that is his name too
* gender = #male


Instance: ex-consent-treat
InstanceOf: Consent
Title: "Consent for treatment example"
Description: "Consent for purposes of use involved in treatment: Treatment/Payment/Operations"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[+] = http://loinc.org#59284-0 "Consent"
* patient = Reference(Patient/ex-patient)
* dateTime = "2022-06-13"
* performer = Reference(Patient/ex-patient)
* organization = Reference(Organization/ex-organization)
* sourceReference = Reference(DocumentReference/ex-documentreference)
* policy.uri = "http://example.org/policies/basePrivacyConsentPolicy.xacml"
* provision.type = #permit
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#TREAT
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HPAYMT
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#HOPERAT


Instance: ex-consent-son
InstanceOf: Consent
Title: "Consent for sons access example"
Description: "Consent justifying RelatedPerson and authorizing access by that RelatedPerson"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active
* scope = http://terminology.hl7.org/CodeSystem/consentscope#patient-privacy
* category[+] = http://loinc.org#64292-6 "Release of information consent"
* category[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#IDSCL
* patient = Reference(Patient/ex-patient)
* dateTime = "2022-06-13"
* performer = Reference(Patient/ex-patient)
* organization = Reference(Organization/ex-organization)
* sourceReference = Reference(DocumentReference/ex-documentreference)
* policy.uri = "http://example.org/policies/basePrivacyConsentPolicy.xacml"
* provision.type = #deny
* provision.purpose[+] = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[+].type = #permit
* provision.provision[=].actor.reference = Reference(RelatedPerson/ex-son)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* provision.provision[+].type = #permit
* provision.provision[=].actor.reference = Reference(RelatedPerson/ex-son)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* provision.provision[=].securityLabel[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#PSY
* provision.provision[+].type = #permit
* provision.provision[=].actor.reference = Reference(RelatedPerson/ex-son2)
* provision.provision[=].actor.role = http://terminology.hl7.org/CodeSystem/v3-RoleCode#DELEGATEE
* provision.provision[=].purpose = http://terminology.hl7.org/CodeSystem/v3-ActReason#FAMRQT
* provision.provision[=].securityLabel = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N






Instance: ex-ObservationAlcoholUse
InstanceOf: Observation
Title: "Observation - SH: Alcohol Use"
Description: """
This example Observation resource to represent alcohol use assessment in a patient summary.

- SLS assessed this as ETH
- SLS added Restricted due to the ETH assessment
"""
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-ActCode#ETH
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#R
* status = #final
* code = http://loinc.org#74013-4
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = "2022-06-13"
* valueQuantity = 5 '{wine glasses}/d' 

Instance:   ex-bloodSugarB-0
InstanceOf: Observation
Title: "Example of an MHV blood sugar R4 observation"
Description: """
holding typical health values

- SLS assessed this as not sensitvie
- SLS added Normal due to not sensitive
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.security[+] = http://terminology.hl7.org/CodeSystem/v3-Confidentiality#N
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code = http://loinc.org#2339-0 "Glucose [Mass/volume] in Blood"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, no indicated method, no indicated eating"





// SAMSHA big valueset - https://vsac.nlm.nih.gov/valueset/2.16.840.1.113762.1.4.1142.58/expansion/Latest
// http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1
// my personal NLM apiKey=10b69906-5814-406b-83bc-ed27260bda38
// https://apikey:10b69906-5814-406b-83bc-ed27260bda38@cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.1





ValueSet: SLS-PSY
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




ValueSet: SLS-ETH
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

ValueSet: SLS-SEX
Title: "clinical codes that indicate SEX"
Description: """
SEX - sexuality and reproductive health information

should this also include SDV (Sexual assault, abuse or domestic violence), PREGNANT (pregnancy), STD (sexually transmitted disease)
"""

// SAMSHA C2S Sexuality and reproductive health information sensitivity
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.49
* codes from valueset http://cts.nlm.nih.gov/fhir/ValueSet/2.16.840.1.113762.1.4.1142.50

ValueSet: SLS-HIV
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
