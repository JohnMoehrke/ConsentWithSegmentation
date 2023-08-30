
Data may be "Normal" medical data or "Restricted" medical data. The distinction is for this IG focused purely on data classificaiton for sensitve topics. 

The various clinical Resources in FHIR are very complex and highly varable. Although Observation is the most often used Resource, sensitve data may exist in ANY other FHIR resoruce including Allergies, Procedures, CarePlan, Medication, Problems, DiagnosticReport, DocumentReference, ImagingStudy, Genomics, etc... By assessing the sensitity classification and placing that assessment into a well-known location found in all FHIR Resources - `.meta.security`, the Access Control does not need to be aware of the kind of FHIR Resource, it can just process the data as a DomainResource and simply look at the `.meta.security` element.

The classification of data into sensitive topcs is the role of the Security Labeling Service (SLS). The SLS inspects the data, and may use the context of the data to identify the sensitivity classification. It is expected that most data will not be considered sensitive, aka "Normal".

### Data tagging Considerations

Some data are directl and clearly in a sensitive category. But there can be indirect relationships, such as three medications prescribed together are a clear indication of a sensitive category but are  not individually.  

Some data may also not be sensitive in the coding, but rather sensitive in the narrative, this would be poor data quality but it is a reality that should be considered. Thus an SLS may need to include some Natural Language Processing to find sensitive human words in narrative.

Some approaches use well-defined ValueSets, where others use a list of words. The list of words can be search accross the data without regard for the data structure, which has the benefit of not needing to have the SLS data schema aware. The list of words can be codes, such as snomed numeric codes.

### Architecture approaches to data tagging

When the SLS is executed is a systems design decision. General alternatives are:

#### Pre Tagging data
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

#### Use time tagging data

Alternative is that the data are temporarly tagged prior to use, thus the sensitivity is freshly determined and used only for that access enforcement


<div>
{%include sls-query.svg%}
</div>
<br clear="all">

This solution does not require that the EHR database be updated to support tagging of data, but may see a performance impact on data use.

### Example ValueSets

One way to understand a very basic SLS is that it looks for clinical codes in the data. It might do this using ValueSets, but likely would need to do this in a more performing way. 

- [Set of codes that indicate ETH (alcohol and drug)](ValueSet-SlsSensitiveETH.html)
  - [Set of codes that indicate ETHUD (alcohol)](ValueSet-SlsSensitiveETHUD.html)
  - [Set of codes that indicate OPIOIDUD (drugs)](ValueSet-SlsSensitiveOPIOIDUD.html)
- [Set of codes that indicate PSY](ValueSet-SlsSensitivePSY.html)
- [Set of codes that indicate SDV](ValueSet-SlsSensitiveSDV.html)
- [Set of codes that indicate HIV](ValueSet-SlsSensitiveHIV.html)


### Example Data with tags

- [Observation of Alcohol Use](Observation-ex-ObservationAlcoholUse.html) marked with `ETH`
- [Observation of a Blood Sugar](Observation-ex-bloodSugarB-0.html) not marked sensitive

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}

