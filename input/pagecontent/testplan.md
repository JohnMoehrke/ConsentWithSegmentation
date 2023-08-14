
## Background

### Actors

- ResourceServer
- UserApp
  - User1
  - User2
- ConsentRecorder
- ConsentRepository

### Setup

- access denied results in 403 Authorization Denied
- No Consent explicitly given for the user results in access denied (Explicit Consent environment)

## Scenarios

### no Consent

```Gherkin
Given
- Consent Recorder has not yet recorded a Consent
- Default rule is that without a Consent enabling User, no access is allowed
When User uses UserApp to request data
- AccessControl actor consults the ConsentRepository
- no Consent is found, 
Then
- Authorization Denied
```

### Consent does not authorize

```Gherkin
Given
- ConsentRecorder records Consent
- The Consent given is not for the User
When User uses UserApp to request data
- AccessControl actor consults the ConsentRepository
- Consent is found, but does not authorize this user 
Then
- Authorization Denied
```

### Consent allows all

```Gherkin
Given
- ConsentRecorder records Consent
- The Consent given is for the User
- The Consent given does not have restrictions for that User
When User uses UserApp to request data
- AccessControl actor consults the ConsentRepository
- Consent is found, 
- Consent found does authorize this user 
Then
- Full data given
```

### Consent allows only non-sensitive

```Gherkin
Given
- ConsentRecorder records Consent
- The Consent given is for the User
- The Consent given restricts data for this user to non-sensitive data
When User uses UserApp to request data
- AccessControl actor consults the ConsentRepository
- Consent is found, 
- Consent found does authorize this user only for non-sensitive data
Then
- Only non-sensitive data can be given
  - SLS inspects the Search Response bundle and tags sensitive data (R-ConfidentialityCode)
  - AccessEnforcement removes from the Search Response Bundle the data tagged as sensitive (R-ConfidentalityCode)
- Only non-sensitive data is given
```
