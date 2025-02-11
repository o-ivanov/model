---
uid: Production.Resources.Capacity
---
# Production.Resources.Capacity Entity

**Namespace:** [Production.Resources](Production.Resources.md)  

Contains capacity of workgroup resources available for production. Entity: Prd_Capacity

## Default Visualization
Default Display Text Format:  
_{WorkgroupResource.Workgroup.Name}_  
Default Search Members:  
_WorkgroupResource.Workgroup.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Production.Resources.WorkgroupResources](Production.Resources.WorkgroupResources.md)  
Aggregate Root:  
[Production.Resources.Workgroups](Production.Resources.Workgroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AvailableEndTime](Production.Resources.Capacity.md#availableendtime) | datetime | End of availability period during Calendar_Date. `Required` 
| [AvailableQuantity](Production.Resources.Capacity.md#availablequantity) | [Quantity (9, 0)](../data-types.md#quantity) | Quantity of the resource, available to production. `Unit: WorkgroupResource.Resource.PrimaryUnit` `Required` 
| [AvailableStartTime](Production.Resources.Capacity.md#availablestarttime) | datetime | Start of availability period during Calendar_Date. `Required` 
| [CalendarDate](Production.Resources.Capacity.md#calendardate) | datetime | Date of the availability period. `Required` `Filter(ge;le)` 
| [Id](Production.Resources.Capacity.md#id) | guid |  

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [WorkgroupResource](Production.Resources.Capacity.md#workgroupresource) | [WorkgroupResources](Production.Resources.WorkgroupResources.md) | The capacity-constrained resource. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### AvailableEndTime

End of availability period during Calendar_Date. `Required`

_Type_: **datetime**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### AvailableQuantity

Quantity of the resource, available to production. `Unit: WorkgroupResource.Resource.PrimaryUnit` `Required`

_Type_: **[Quantity (9, 0)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### AvailableStartTime

Start of availability period during Calendar_Date. `Required`

_Type_: **datetime**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### CalendarDate

Date of the availability period. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  


## Reference Details

### WorkgroupResource

The capacity-constrained resource. `Required` `Filter(multi eq)` `Owner`

_Type_: **[WorkgroupResources](Production.Resources.WorkgroupResources.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Production.Resources.Capacity erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Production.Resources.Capacity erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Production_Resources_Capacity?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Production_Resources_Capacity?$top=10>

