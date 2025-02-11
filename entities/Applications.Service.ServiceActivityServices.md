---
uid: Applications.Service.ServiceActivityServices
---
# Applications.Service.ServiceActivityServices Entity

**Namespace:** [Applications.Service](Applications.Service.md)  

Contains the services, which were actually performed during the service activity (repair). Entity: Srv_Service_Activity_Services

## Default Visualization
Default Display Text Format:  
_{LineNo}. {ServiceActivity.DocumentNo} {ServiceActivity.DocumentType.TypeName:T}_  
Default Search Members:  
_ServiceActivity.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Service.ServiceActivities](Applications.Service.ServiceActivities.md)  
Aggregate Root:  
[Applications.Service.ServiceActivities](Applications.Service.ServiceActivities.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CoveredByGuarantee](Applications.Service.ServiceActivityServices.md#coveredbyguarantee) | boolean | True when the performed service is covered by the guarantee. `Required` `Default(false)` 
| [Id](Applications.Service.ServiceActivityServices.md#id) | guid |  
| [LineNo](Applications.Service.ServiceActivityServices.md#lineno) | int32 | Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required` 
| [Notes](Applications.Service.ServiceActivityServices.md#notes) | string (254) __nullable__ | Short notes for the service. 
| [Quantity](Applications.Service.ServiceActivityServices.md#quantity) | [Quantity (9, 2)](../data-types.md#quantity) | The quantity of the service in the measurement unit of the service. `Unit: Service.MeasurementUnit` `Required` `Default(1)` 
| [ServiceName](Applications.Service.ServiceActivityServices.md#servicename) | string (254) | Description of the conducted service. The description may vary (contain additional information) from the standart name of the service. `Required` `Filter(like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Applications.Service.ServiceActivityServices.md#document) | [ServiceActivities](Applications.Service.ServiceActivities.md) | The `ServiceActivity`(Applications.Service.ServiceActivityServices.md#serviceactivity) to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` |
| [PerformedByPerson](Applications.Service.ServiceActivityServices.md#performedbyperson) | [Persons](General.Contacts.Persons.md) (nullable) | The id of the person from the enterprise company that actually performed the work. `Filter(multi eq)` |
| [Service](Applications.Service.ServiceActivityServices.md#service) | [Services](Applications.Service.Services.md) | The type of service that is conducted. `Required` `Filter(multi eq)` |
| [ServiceActivity](Applications.Service.ServiceActivityServices.md#serviceactivity) | [ServiceActivities](Applications.Service.ServiceActivities.md) | The `ServiceActivity`(Applications.Service.ServiceActivityServices.md#serviceactivity) to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` `Owner` |
| [ServiceObject](Applications.Service.ServiceActivityServices.md#serviceobject) | [ServiceObjects](Applications.Service.ServiceObjects.md) (nullable) | The service object that was serviced. null means that it is unknown or N/A. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| ServiceActivity<br />AgreedServices | [ServiceActivityAgreedServices](Applications.Service.ServiceActivityAgreedServices.md) | List of `ServiceActivity<br />AgreedService`(Applications.Service.ServiceActivity<br />AgreedServices.md) child objects, based on the `Applications.Service.ServiceActivity<br />AgreedService.ServiceActivityService`(Applications.Service.ServiceActivity<br />AgreedServices.md#serviceactivityservice) back reference 


## Attribute Details

### CoveredByGuarantee

True when the performed service is covered by the guarantee. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive line number, unique within the document. Usually is increasing in steps of 10, like in 10, 20, 30, etc. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.ServiceActivity.Services.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.ServiceActivity.Services.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Notes

Short notes for the service.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### Quantity

The quantity of the service in the measurement unit of the service. `Unit: Service.MeasurementUnit` `Required` `Default(1)`

_Type_: **[Quantity (9, 2)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### ServiceName

Description of the conducted service. The description may vary (contain additional information) from the standart name of the service. `Required` `Filter(like)`

_Type_: **string (254)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

_Front-End Recalc Expressions:_  
`obj.Service.Name`

## Reference Details

### Document

The `ServiceActivity`(Applications.Service.ServiceActivityServices.md#serviceactivity) to which this ServiceActivityService belongs. `Required` `Filter(multi eq)`

_Type_: **[ServiceActivities](Applications.Service.ServiceActivities.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### PerformedByPerson

The id of the person from the enterprise company that actually performed the work. `Filter(multi eq)`

_Type_: **[Persons](General.Contacts.Persons.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Service

The type of service that is conducted. `Required` `Filter(multi eq)`

_Type_: **[Services](Applications.Service.Services.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### ServiceActivity

The `ServiceActivity`(Applications.Service.ServiceActivityServices.md#serviceactivity) to which this ServiceActivityService belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ServiceActivities](Applications.Service.ServiceActivities.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### ServiceObject

The service object that was serviced. null means that it is unknown or N/A. `Filter(multi eq)`

_Type_: **[ServiceObjects](Applications.Service.ServiceObjects.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.ServiceActivity.DefaultServiceObject`

_Front-End Recalc Expressions:_  
`obj.ServiceActivity.DefaultServiceObject`


## Business Rules

[!list limit=1000 erp.entity=Applications.Service.ServiceActivityServices erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Service.ServiceActivityServices erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Service_ServiceActivityServices?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Service_ServiceActivityServices?$top=10>

