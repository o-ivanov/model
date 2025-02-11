---
uid: Systems.Core.ObjectChangesets
---
# Systems.Core.ObjectChangesets Entity

**Namespace:** [Systems.Core](Systems.Core.md)  

A set of changes, performed in one request. Entity: Sys_Object_Changesets (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{ApplicationName}_  
Default Search Members:  
_ApplicationName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Core.ObjectChangesets](Systems.Core.ObjectChangesets.md)  
  * [Systems.Core.ObjectChanges](Systems.Core.ObjectChanges.md)  
    * [Systems.Core.AttributeChanges](Systems.Core.AttributeChanges.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ApplicationName](Systems.Core.ObjectChangesets.md#applicationname) | string (max) __nullable__ | The application which requested the change. null when it is unknown. `Filter(eq)` 
| [Id](Systems.Core.ObjectChangesets.md#id) | guid |  
| [ServerVersion](Systems.Core.ObjectChangesets.md#serverversion) | string (16) | The version of the application server at the time of the change. `Required` 
| [TimeUtc](Systems.Core.ObjectChangesets.md#timeutc) | datetime | Date and time (in Utc) when the changeset was processed by the server. `Required` `Default(NowUtc)` `Filter(eq;ge;le)` `ORD` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [User](Systems.Core.ObjectChangesets.md#user) | [Users](Systems.Security.Users.md) (nullable) | The user which initiated the change. null when it is unknown. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| ObjectChanges | [ObjectChanges](Systems.Core.ObjectChanges.md) | List of `ObjectChange`(Systems.Core.ObjectChanges.md) child objects, based on the `Systems.Core.ObjectChange.ObjectChangeset`(Systems.Core.ObjectChanges.md#objectchangeset) back reference 


## Attribute Details

### ApplicationName

The application which requested the change. null when it is unknown. `Filter(eq)`

_Type_: **string (max) __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### ServerVersion

The version of the application server at the time of the change. `Required`

_Type_: **string (16)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  

### TimeUtc

Date and time (in Utc) when the changeset was processed by the server. `Required` `Default(NowUtc)` `Filter(eq;ge;le)` `ORD`

_Type_: **datetime**  
_Indexed_: **True**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **True**  
_Default Value_: **CurrentDateTimeUtc**  


## Reference Details

### User

The user which initiated the change. null when it is unknown. `Filter(multi eq)`

_Type_: **[Users](Systems.Security.Users.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Systems.Core.ObjectChangesets erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Core.ObjectChangesets erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Core_ObjectChangesets?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Core_ObjectChangesets?$top=10>

