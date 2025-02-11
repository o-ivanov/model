---
uid: General.Resources.ResourceAvailability
---
# General.Resources.ResourceAvailability Entity

**Namespace:** [General.Resources](General.Resources.md)  

Contains the resources availability for the different periods. Each period is a separate record. The availability of a resource for any given date is determined by the sum of all availability periods that include it. Entity: Gen_Resource_Availability

## Default Visualization
Default Display Text Format:  
_{Resource.Name:T}_  
Default Search Members:  
_Resource.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.Resources.Resources](General.Resources.Resources.md)  
Aggregate Root:  
[General.Resources.ResourceGroups](General.Resources.ResourceGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AvailableResources](General.Resources.ResourceAvailability.md#availableresources) | decimal (12, 2) | The quantity of the resource, available for the specified period. For non-discrete resources, this number can contain fractions. When several availability periods for a resource overlap, the total availability is the sum of all. `Required` `Default(1)` 
| [FromDate](General.Resources.ResourceAvailability.md#fromdate) | date | The date from which availability starts. `Required` 
| [Id](General.Resources.ResourceAvailability.md#id) | guid |  
| [ToDate](General.Resources.ResourceAvailability.md#todate) | date __nullable__ | The date to which the availability continues. When null, the availability continues infinitely. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Resource](General.Resources.ResourceAvailability.md#resource) | [Resources](General.Resources.Resources.md) | The resource, for which we provide availability. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### AvailableResources

The quantity of the resource, available for the specified period. For non-discrete resources, this number can contain fractions. When several availability periods for a resource overlap, the total availability is the sum of all. `Required` `Default(1)`

_Type_: **decimal (12, 2)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **1**  

### FromDate

The date from which availability starts. `Required`

_Type_: **date**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### ToDate

The date to which the availability continues. When null, the availability continues infinitely.

_Type_: **date __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  


## Reference Details

### Resource

The resource, for which we provide availability. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Resources](General.Resources.Resources.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=General.Resources.ResourceAvailability erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Resources.ResourceAvailability erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Resources_ResourceAvailability?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Resources_ResourceAvailability?$top=10>

