---
uid: Projects.ProjectParticipants
---
# Projects.ProjectParticipants Entity

**Namespace:** [Projects](Projects.md)  

Represents participant in a project, with a specific role. The same participant can participate multiple times in different roles. Entity: Prj_Project_Participants

## Default Visualization
Default Display Text Format:  
_{Project.Name}_  
Default Search Members:  
_Project.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Projects.Projects](Projects.Projects.md)  
Aggregate Root:  
[Projects.Projects](Projects.Projects.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Projects.ProjectParticipants.md#id) | guid |  
| [Notes](Projects.ProjectParticipants.md#notes) | string (254) __nullable__ | Notes for this ProjectParticipant. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ParticipantParty](Projects.ProjectParticipants.md#participantparty) | [Parties](General.Contacts.Parties.md) | The party Id of the participant. `Required` `Filter(multi eq)` |
| [Project](Projects.ProjectParticipants.md#project) | [Projects](Projects.Projects.md) | The project in which the participant will participate. `Required` `Filter(multi eq)` `Owner` |
| [ProjectTypeRole](Projects.ProjectParticipants.md#projecttyperole) | [TypeRoles](Projects.TypeRoles.md) (nullable) | The role which the participant will play in the project. null means that the role is undefined. `Filter(multi eq)` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Notes

Notes for this ProjectParticipant.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  


## Reference Details

### ParticipantParty

The party Id of the participant. `Required` `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### Project

The project in which the participant will participate. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Projects](Projects.Projects.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### ProjectTypeRole

The role which the participant will play in the project. null means that the role is undefined. `Filter(multi eq)`

_Type_: **[TypeRoles](Projects.TypeRoles.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Projects.ProjectParticipants erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.ProjectParticipants erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_ProjectParticipants?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_ProjectParticipants?$top=10>

