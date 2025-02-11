---
uid: Systems.Core.ResolvedConflicts
---
# Systems.Core.ResolvedConflicts Entity

**Namespace:** [Systems.Core](Systems.Core.md)  

Contains records of conflicts, which were automatically resolved by update procedures. Entity: Sys_Resolved_Conflicts

## Default Visualization
Default Display Text Format:  
_{TableName:T}_  
Default Search Members:  
_TableName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Core.ResolvedConflicts](Systems.Core.ResolvedConflicts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ConflictDescription](Systems.Core.ResolvedConflicts.md#conflictdescription) | [MultilanguageString](../data-types.md#multilanguagestring) | Description of the conflict. `Required` `ReadOnly` 
| [Id](Systems.Core.ResolvedConflicts.md#id) | guid |  
| [ResolveConfirmedByUser](Systems.Core.ResolvedConflicts.md#resolveconfirmedbyuser) | boolean | True, when the conflict resolution was manually confirmed by user. `Required` `Default(false)` `Filter(eq)` 
| [ResolveConfirmedTime](Systems.Core.ResolvedConflicts.md#resolveconfirmedtime) | datetime __nullable__ | Time when the conflict resolution was confirmed by the user. `ReadOnly` 
| [ResolveDescription](Systems.Core.ResolvedConflicts.md#resolvedescription) | [MultilanguageString](../data-types.md#multilanguagestring) | Description of the resolution of the conflict. `Required` `ReadOnly` 
| [ResolvedTime](Systems.Core.ResolvedConflicts.md#resolvedtime) | datetime | Time when the resolution of the conflict was made. `Required` `Default(Now)` `ReadOnly` 
| [RevisedByUser](Systems.Core.ResolvedConflicts.md#revisedbyuser) | boolean | True, when the conflict resolution was revised (reviewed) manually by user. `Required` `Default(false)` `Filter(eq)` `ReadOnly` 
| [TableName](Systems.Core.ResolvedConflicts.md#tablename) | [MultilanguageString](../data-types.md#multilanguagestring) | Name of the table in which the conflict has occurred. `Required` `Filter(like)` `ReadOnly` 
| [URL](Systems.Core.ResolvedConflicts.md#url) | string (254) | URL of the item (the row) for which the conflict occurred. `Required` `ReadOnly` 


## Attribute Details

### ConflictDescription

Description of the conflict. `Required` `ReadOnly`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### ResolveConfirmedByUser

True, when the conflict resolution was manually confirmed by user. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### ResolveConfirmedTime

Time when the conflict resolution was confirmed by the user. `ReadOnly`

_Type_: **datetime __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ResolveDescription

Description of the resolution of the conflict. `Required` `ReadOnly`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ResolvedTime

Time when the resolution of the conflict was made. `Required` `Default(Now)` `ReadOnly`

_Type_: **datetime**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  

### RevisedByUser

True, when the conflict resolution was revised (reviewed) manually by user. `Required` `Default(false)` `Filter(eq)` `ReadOnly`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### TableName

Name of the table in which the conflict has occurred. `Required` `Filter(like)` `ReadOnly`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  

### URL

URL of the item (the row) for which the conflict occurred. `Required` `ReadOnly`

_Type_: **string (254)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  



## Business Rules

[!list limit=1000 erp.entity=Systems.Core.ResolvedConflicts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Core.ResolvedConflicts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Core_ResolvedConflicts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Core_ResolvedConflicts?$top=10>

