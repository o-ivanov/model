---
uid: Projects.ProjectTaskParticipants
---
# Projects.ProjectTaskParticipants Entity

**Namespace:** [Projects](Projects.md)  

Contains the participants in the project tasks. Entity: Prj_Project_Task_Participants

## Default Visualization
Default Display Text Format:  
_{ProjectTask.TaskName}_  
Default Search Members:  
_ProjectTask.TaskName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Projects.ProjectTasks](Projects.ProjectTasks.md)  
Aggregate Root:  
[Projects.ProjectTasks](Projects.ProjectTasks.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Projects.ProjectTaskParticipants.md#id) | guid |  
| [Notes](Projects.ProjectTaskParticipants.md#notes) | string (254) __nullable__ | Notes for this ProjectTaskParticipant. 
| [NotifyOnStatusChange](Projects.ProjectTaskParticipants.md#notifyonstatuschange) | boolean | Specifies whether the participant should be notified on task status changes. `Required` `Default(true)` 
| [WorkLoadPercent](Projects.ProjectTaskParticipants.md#workloadpercent) | decimal (3, 2) | The planned work load (in percents) of the participant for this task. `Required` `Default(1)` `Filter(eq)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ParticipantPerson](Projects.ProjectTaskParticipants.md#participantperson) | [Persons](General.Contacts.Persons.md) | The person, who is planned to participate in the project task. `Required` `Filter(multi eq)` |
| [ProjectTask](Projects.ProjectTaskParticipants.md#projecttask) | [ProjectTasks](Projects.ProjectTasks.md) | The project task for which the participant is planned. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Notes

Notes for this ProjectTaskParticipant.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### NotifyOnStatusChange

Specifies whether the participant should be notified on task status changes. `Required` `Default(true)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### WorkLoadPercent

The planned work load (in percents) of the participant for this task. `Required` `Default(1)` `Filter(eq)`

_Type_: **decimal (3, 2)**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **1**  


## Reference Details

### ParticipantPerson

The person, who is planned to participate in the project task. `Required` `Filter(multi eq)`

_Type_: **[Persons](General.Contacts.Persons.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### ProjectTask

The project task for which the participant is planned. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ProjectTasks](Projects.ProjectTasks.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Projects.ProjectTaskParticipants erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.ProjectTaskParticipants erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_ProjectTaskParticipants?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_ProjectTaskParticipants?$top=10>

