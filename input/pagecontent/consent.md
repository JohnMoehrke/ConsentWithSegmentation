
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

### using Consent to enable access control

One advantage of using a Consent resource as defined here is that there would be a natural set of provisions in a Consent that would be processable by an Access Control engine that understands Consent. This Access Control engine would not need to understand the medical meaning of the data, it just looks at the `.meta.security` for the specific security tags. 

### Workflow of capturing the Consent

The Consent resource is not intended to be used to drive the workflow of the capturing of the Consent. The Consent is following the "Event Pattern", which means that it is the output of an event (the Consent Ceremony).  The workflow that preceded this event would need to be managed by other resources in the [Request pattern](http://build.fhir.org/workflow.html#respatterns)

The Task resource is generic and can do this work. There are some specializations of Task, so we could end up at some kind of a Task derivative that is specific to the workflow leading up to a Consent. However it is first best to see if Task can be profiled to address the workflow. 

For example a use-case where the Patient may record their Privacy Preferrences. These Privacy Preferrences would be used as input to the Consent workflow. Those provisions that the organization agrees to and can enforce would be brought forward to the Consent. This workflow could be profiled into an ActivityDefinition... I like the power of this modeling concept, but have not done it formally so am not sure of all the possible issues.

Note we have tried to keep workflow states out of the Consent.status; but some states have gotten in that I don't think are proper. But at this time we allow them in until there is a more formal task flow.

### Examples

Here is an example of a geractric patient giving consent for treatment and also authorizing his sons some access. In this case one son is just authorized for non-senstive (normal) data, while the other son is authorized to also see psychotherpy data; neither sons are authorized to see other sensitive topics such as alcholoh abuse.

This is recorded using two different Consents for the distinct purpose of use. They are both pointing at the same paperwork. 

<div>
{%include example-treat.svg%}
</div>
<br clear="all">

This is the consent for the family requested access authorization purpose of use.

<div>
{%include example-son.svg%}
</div>
<br clear="all">

- [Patient](Patient-ex-patient.html)
- [Son as Related Person](RelatedPerson-ex-son.html) the more authorized son
- [Son2 as Related Person](RelatedPerson-ex-son.html) the lesser authorized son
- [Consent for Treatment](Consent-ex-consent-treat.html) no sensitvive topics are restricted
- [Consent for the Patient authorizing the Sons as a Related Person](Consent-ex-consent-son.html) normal and restricted rules
