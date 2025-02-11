---
uid: Applications.Service.ServiceOrderLines
---
# Applications.Service.ServiceOrderLines Entity

**Namespace:** [Applications.Service](Applications.Service.md)  

Contains the details and problem symptoms for each object, which requires servicing. Entity: Srv_Service_Order_Lines

## Default Visualization
Default Display Text Format:  
_{ServiceOrder.EntityName}_  
Default Search Members:  
_ServiceOrder.EntityName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Service.ServiceOrders](Applications.Service.ServiceOrders.md)  
Aggregate Root:  
[Applications.Service.ServiceOrders](Applications.Service.ServiceOrders.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Applications.Service.ServiceOrderLines.md#id) | guid |  
| [LineNo](Applications.Service.ServiceOrderLines.md#lineno) | int32 | Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required` `Filter(eq)` 
| [SymptomDescription](Applications.Service.ServiceOrderLines.md#symptomdescription) | string (254) __nullable__ | Description or synopsis of the symptoms of the failed object. `Filter(like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ServiceObject](Applications.Service.ServiceOrderLines.md#serviceobject) | [ServiceObjects](Applications.Service.ServiceObjects.md) | The service object, which is experiencing the symptoms and needs repair. `Required` `Filter(multi eq)` |
| [ServiceOrder](Applications.Service.ServiceOrderLines.md#serviceorder) | [ServiceOrders](Applications.Service.ServiceOrders.md) | The `ServiceOrder`(Applications.Service.ServiceOrderLines.md#serviceorder) to which this ServiceOrderLine belongs. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required` `Filter(eq)`

_Type_: **int32**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.ServiceOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.ServiceOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### SymptomDescription

Description or synopsis of the symptoms of the failed object. `Filter(like)`

_Type_: **string (254) __nullable__**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  


## Reference Details

### ServiceObject

The service object, which is experiencing the symptoms and needs repair. `Required` `Filter(multi eq)`

_Type_: **[ServiceObjects](Applications.Service.ServiceObjects.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### ServiceOrder

The `ServiceOrder`(Applications.Service.ServiceOrderLines.md#serviceorder) to which this ServiceOrderLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ServiceOrders](Applications.Service.ServiceOrders.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Applications.Service.ServiceOrderLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Service.ServiceOrderLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Service_ServiceOrderLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Service_ServiceOrderLines?$top=10>

