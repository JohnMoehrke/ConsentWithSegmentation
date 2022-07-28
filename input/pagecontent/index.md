<div markdown="1" class="dragon">

This is an experimental IG.

</div>

This IG focuses on a use-case where a Patient is allowed to express Consent rules based on data segmentation. Specifically some cases:

1.  that an EHR has data on the Patient
2.  that the data can be segmented into some sensitivity classifications (e.g. `ETH`, `PSY`)
3.  that the EHR has organizational rules related to PurposeOfUse, Role Based Access Control.
4.  that the Patient has expressed a Consent with segmentation provisions
5.  when data are Used or Disclosed the access is limited to the authorized data


<div>
{%include relationships.svg%}
</div>
<br clear="all">

Thus
- Patient resource is used to identify the Patient
- Consent resource is used to document the Patient consent and the patient specific provisions.


### Data Segmentation

Data may be "Normal" medical data or "Restricted" medical data. The distinction is for this IG focused purely on data classificaiton for sensitve topics. 

The various clinical Resources in FHIR are very complex and highly varable. Although Observation is the most often used Resource, sensitve data may exist in ANY other FHIR resoruce including Allergies, Procedures, CarePlan, Medication, Problems, DiagnosticReport, DocumentReference, ImagingStudy, Genomics, etc... By assessing the sensitity classification and placing that assessment into a well-known location found in all FHIR Resources - `.meta.security`, the Access Control does not need to be aware of the kind of FHIR Resource, it can just process the data as a DomainResource and simply look at the `.meta.security` element.

The classification of data into sensitive topcs is the role of the Security Labeling Service (SLS). The SLS inspects the data, and may use the context of the data to identify the sensitivity classification. It is expected that most data will not be considered sensitive, aka "Normal".

When the SLS is executed is a systems design decision. General alternatives are:

##### Pre Tagging data
Tagging the data as it is created, updated, or imported. 


<div>
{%include sls-batch.svg%}
</div>
<br clear="all">

Which has the advantage that the access to the data does not need to assess the data, it just uses the existing sensitvity tag. 


<div>
{%include sls-pre.svg%}
</div>
<br clear="all">

This solution is likely to be more performant on use of data, but may not have as accurate sensitivity tags due to the dynamic nature of policies around sensitivty, and dynamic nature of data relationships. This solution also requires that the EHR database support data tags.

##### Use time tagging data

Alternative is that the data are temporarly tagged prior to use, thus the sensitivity is freshly determined and used only for that access enforcement


<div>
{%include sls-query.svg%}
</div>
<br clear="all">

This solution does not require that the EHR database be updated to support tagging of data, but may incure a peformance impact on data use.

##### Examples

- [Observation of Alcohol Use](Observation-ex-ObservationAlcoholUse.html) marked with `ETH`
- [Observation of a Blood Sugar](Observation-ex-bloodSugarB-0.html) not marked sensitive

### Consent profiling

As with any Consent, often there is paperwork that ultimately holds the legal details. This legal paperwork is critical to overall legal precedent, and represents the ceremony of the act of consent from the patient. These details should be captured by a DocumentReference and Binary. The Consent.sourceReference would then point at that DocumentReference. (Could use Consent.sourceAttachment, but I am not a fan of bloating the Consent with that detail).

The Consent then would need to be profiled. The main difference from the FHIR core [Consent](http://hl7.org/fhir/consent.html) for Privacy, is that we are adding specific provisions for the sensitive classified data

- status - would indicate active
- category - would indicate patient privacy consent
- patient - would indicate the Patient resource reference for the given patient
- dateTime - would indicate when the privacy policy was presented
- performer - would indicate the Patient resource if the patient was presented, a RelatedPerson for parent or guardian
- organization - would indicate the Organization that presented the privacy policy, and that is going to enforce that privacy policy
- source - would point at the specific signed consent by the patient
- policy.uri - would indicate the privacy policy that was presented. Usually, the url to the version-specific policy
- provision.type - permit - given there is no way to deny, this would be fixed at permit.
- provision.agent.reference - would indicate the RelatedPerson resource
- provision.agent.role - would indicate this agent is delegated authority
- provision.purpose - would indicate some set of Purpose Of Use
- provision.securityLabel - would indicate the sensitive topic that is being permitted or denied

In the case where the court or some actor that is not the Patient is compelling the RelatedPerson relationship, then the Consent.performer would indicate that the Patient is not the one granting the relationship, but rather the guardian or the courts.

#### using Consent to enable access control

One advantage of using a Consent resource as defined here is that there would be a natural set of provisions in a Consent that would be processable by an Access Control engine that understands Consent. This Access Control engine would not need to understand the medical meaning of the data, it just looks at the `.meta.security` for the specific security tags. 

### Workflow of capturing the Consent

The Consent resource is not intended to be used to drive the workflow of the capturing of the Consent. The Consent is following the "Event Pattern", which means that it is the output of an event (the Consent Ceremony).  The workflow that preceded this event would need to be managed by other resources in the [Request pattern](http://build.fhir.org/workflow.html#respatterns)

The Task resource is generic and can do this work. There are some specializations of Task, so we could end up at some kind of a Task derivative that is specific to the workflow leading up to a Consent. However it is first best to see if Task can be profiled to address the workflow. 

For example a use-case where the Patient may record their Privacy Preferrences. These Privacy Preferrences would be used as input to the Consent workflow. Those provisions that the organization agrees to and can enforce would be brought forward to the Consent. This workflow could be profiled into an ActivityDefinition... I like the power of this modeling concept, but have not done it formally so am not sure of all the possible issues.

Note we have tried to keep workflow states out of the Consent.status; but some states have gotten in that I don't think are proper. But at this time we allow them in until there is a more formal task flow.

### Examples

There is a basic example of a Patient delegating their son as their RelatedPerson. The resource objects are clickable to their examples.

<div>
{%include example.svg%}
</div>
<br clear="all">

- [Patient](Patient-ex-patient.html)
- [Son as Related Person](RelatedPerson-ex-son.html)
- [Consent from the Patient authorizing the Son as a Related Person](Consent-ex-consent.html) Access to `PSY` data, but not `ETH`
