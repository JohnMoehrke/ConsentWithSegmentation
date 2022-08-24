<div markdown="1" class="dragon">

This is an experimental IG, and does not contain constraints or guidance. This publication is expressing a set of use-cases with example services and data.

</div>
<br clear="all">

This IG focuses on a use-case where a Patient is allowed to express Consent rules based on data segmentation. Specifically some cases:

1.  that an EHR has data on the Patient
2.  that the data can be segmented into some sensitivity classifications (e.g. `ETH`, `PSY`)
3.  that the EHR has organizational rules related to PurposeOfUse, Role Based Access Control.
4.  that the Patient has expressed a Consent with segmentation provisions. 
6.  when data are Used or Disclosed the access is limited to the authorized data


<div>
{%include relationships.svg%}
</div>
<br clear="all">

Thus
- Patient resource is used to identify the Patient
- Consent resource is used to document the Patient consent and the patient specific provisions. [See discussion on Consent profiling](consent.html)
- Data are tagged with sensitive topics by some means [See discussion of Security Labeling Service](sls.html)

### Defined Actors

<div>
{%include actors.svg%}
</div>
<br clear="all">

### Download 

You can also download:

* [this entire guide](full-ig.zip)
* the definition resources in [json](definitions.json.zip), [xml](definitions.xml.zip), [ttl](definitions.ttl.zip), or [csv](csvs.zip) format, or
* the example resources in [json](examples.json.zip), [xml](examples.xml.zip) or [ttl](examples.ttl.zip) format.

The source code for this Implementation Guide can be found on John Moehrke GitHub [https://github.com/JohnMoehrke/ConsentWithSegmentation](https://github.com/JohnMoehrke/ConsentWithSegmentation).


