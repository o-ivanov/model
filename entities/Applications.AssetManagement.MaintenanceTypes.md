---
uid: Applications.AssetManagement.MaintenanceTypes
---
# Applications.AssetManagement.MaintenanceTypes Entity

**Namespace:** [Applications.AssetManagement](Applications.AssetManagement.md)  

Types of maintenances which can be scheduled and performed on the managed assets. Maintenances can be scheduled based on date and tracked parameter change. Entity: Eam_Maintenance_Types (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.AssetManagement.MaintenanceTypes](Applications.AssetManagement.MaintenanceTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Applications.AssetManagement.MaintenanceTypes.md#code) | string (16) | Unique code of the maintenance type. `Required` `Filter(eq;like)` `ORD` 
| [DefaultParameterChange](Applications.AssetManagement.MaintenanceTypes.md#defaultparameterchange) | int32 __nullable__ | Default positive change of the tracked parameter between two maintenances. null means, that maintenances are not scheduled based on parameter change. 
| [DefaultScheduleDays](Applications.AssetManagement.MaintenanceTypes.md#defaultscheduledays) | int32 __nullable__ | Specifies the maximum number of days between two maintenances (in addition to the number of months specified in Default Schedule Months). null means that there is no default schedule in days. 
| [DefaultScheduleMonths](Applications.AssetManagement.MaintenanceTypes.md#defaultschedulemonths) | int32 __nullable__ | Specifies the maximum number of months between two maintenances. null means that there is no default schedule in months. 
| [Description](Applications.AssetManagement.MaintenanceTypes.md#description) | [MultilanguageString](../data-types.md#multilanguagestring) __nullable__ | Detailed description of the maintenance (multilanguage). 
| [Id](Applications.AssetManagement.MaintenanceTypes.md#id) | guid |  
| [Name](Applications.AssetManagement.MaintenanceTypes.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | Multilanguage name of the maintenance type. `Required` `Filter(eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [MaintenanceTypeGroup](Applications.AssetManagement.MaintenanceTypes.md#maintenancetypegroup) | [MaintenanceTypeGroups](Applications.AssetManagement.MaintenanceTypeGroups.md) | The group, to which this maintenance type belongs. `Required` `Filter(multi eq)` |
| [TrackedParameter](Applications.AssetManagement.MaintenanceTypes.md#trackedparameter) | [TrackedParameters](Applications.AssetManagement.TrackedParameters.md) (nullable) | Specifies the parameter, on which the next scheduled maintenance will be based. null means that there is no default schedule, based on parameter. `Filter(multi eq)` |


## Attribute Details

### Code

Unique code of the maintenance type. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (16)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **16**  

### DefaultParameterChange

Default positive change of the tracked parameter between two maintenances. null means, that maintenances are not scheduled based on parameter change.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### DefaultScheduleDays

Specifies the maximum number of days between two maintenances (in addition to the number of months specified in Default Schedule Months). null means that there is no default schedule in days.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### DefaultScheduleMonths

Specifies the maximum number of months between two maintenances. null means that there is no default schedule in months.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Description

Detailed description of the maintenance (multilanguage).

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

Multilanguage name of the maintenance type. `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  


## Reference Details

### MaintenanceTypeGroup

The group, to which this maintenance type belongs. `Required` `Filter(multi eq)`

_Type_: **[MaintenanceTypeGroups](Applications.AssetManagement.MaintenanceTypeGroups.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### TrackedParameter

Specifies the parameter, on which the next scheduled maintenance will be based. null means that there is no default schedule, based on parameter. `Filter(multi eq)`

_Type_: **[TrackedParameters](Applications.AssetManagement.TrackedParameters.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.MaintenanceTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.MaintenanceTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_AssetManagement_MaintenanceTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_AssetManagement_MaintenanceTypes?$top=10>

