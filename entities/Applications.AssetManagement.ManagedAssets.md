---
uid: Applications.AssetManagement.ManagedAssets
---
# Applications.AssetManagement.ManagedAssets Entity

**Namespace:** [Applications.AssetManagement](Applications.AssetManagement.md)  

Contains the managed assets. The management of assets include maintenance planning and execution, location assignments tracking, etc. Entity: Eam_Managed_Assets (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.AssetManagement.ManagedAssets](Applications.AssetManagement.ManagedAssets.md)  
  * [Applications.AssetManagement.ManagedAssetLocations](Applications.AssetManagement.ManagedAssetLocations.md)  
  * [Applications.AssetManagement.ManagedAssetMaintenanceSchedules](Applications.AssetManagement.ManagedAssetMaintenanceSchedules.md)  
  * [Applications.AssetManagement.ManagedAssetParameterValues](Applications.AssetManagement.ManagedAssetParameterValues.md)  
  * [Applications.AssetManagement.ManagedAssetScheduledMaintenances](Applications.AssetManagement.ManagedAssetScheduledMaintenances.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Applications.AssetManagement.ManagedAssets.md#code) | string (16) | Unique code of the managed asset. The code is unique among all managed assets in the same enterprise company. `Required` `Filter(eq;like)` 
| [Id](Applications.AssetManagement.ManagedAssets.md#id) | guid |  
| [Name](Applications.AssetManagement.ManagedAssets.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | Name of the managed asset (multi-language). `Required` `Filter(eq;like)` 
| [Notes](Applications.AssetManagement.ManagedAssets.md#notes) | string (max) __nullable__ | Notes for this ManagedAsset. 
| [RegistrationNumber](Applications.AssetManagement.ManagedAssets.md#registrationnumber) | string (32) __nullable__ | Registration number of the asset with the national registration authorities. null means the registation number is unknown or N/A. `Filter(eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Applications.AssetManagement.ManagedAssets.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company to which the managed asset belongs. `Required` `Filter(multi eq)` |
| [ManagedAssetGroup](Applications.AssetManagement.ManagedAssets.md#managedassetgroup) | [ManagedAssetGroups](Applications.AssetManagement.ManagedAssetGroups.md) | The organizational group of the asset. Used for organizational purposes only. `Required` `Filter(multi eq)` |
| [ManagedAssetType](Applications.AssetManagement.ManagedAssets.md#managedassettype) | [ManagedAssetTypes](Applications.AssetManagement.ManagedAssetTypes.md) | The type of the asset. Determines the tracked parameters for the asset, the applicable maintenance types, etc. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Locations | [ManagedAssetLocations](Applications.AssetManagement.ManagedAssetLocations.md) | List of `ManagedAssetLocation`(Applications.AssetManagement.ManagedAssetLocations.md) child objects, based on the `Applications.AssetManagement.ManagedAssetLocation.ManagedAsset`(Applications.AssetManagement.ManagedAssetLocations.md#managedasset) back reference 
| MaintenanceSchedules | [ManagedAssetMaintenanceSchedules](Applications.AssetManagement.ManagedAssetMaintenanceSchedules.md) | List of `ManagedAssetMaintenance<br />Schedule`(Applications.AssetManagement.ManagedAssetMaintenance<br />Schedules.md) child objects, based on the `Applications.AssetManagement.ManagedAssetMaintenance<br />Schedule.ManagedAsset`(Applications.AssetManagement.ManagedAssetMaintenance<br />Schedules.md#managedasset) back reference 
| ParameterValues | [ManagedAssetParameterValues](Applications.AssetManagement.ManagedAssetParameterValues.md) | List of `ManagedAssetParameter<br />Value`(Applications.AssetManagement.ManagedAssetParameter<br />Values.md) child objects, based on the `Applications.AssetManagement.ManagedAssetParameterValue.ManagedAsset`(Applications.AssetManagement.ManagedAssetParameter<br />Values.md#managedasset) back reference 
| ScheduledMaintenances | [ManagedAssetScheduledMaintenances](Applications.AssetManagement.ManagedAssetScheduledMaintenances.md) | List of `ManagedAssetScheduled<br />Maintenance`(Applications.AssetManagement.ManagedAssetScheduled<br />Maintenances.md) child objects, based on the `Applications.AssetManagement.ManagedAssetScheduled<br />Maintenance.ManagedAsset`(Applications.AssetManagement.ManagedAssetScheduled<br />Maintenances.md#managedasset) back reference 


## Attribute Details

### Code

Unique code of the managed asset. The code is unique among all managed assets in the same enterprise company. `Required` `Filter(eq;like)`

_Type_: **string (16)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

Name of the managed asset (multi-language). `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  

### Notes

Notes for this ManagedAsset.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### RegistrationNumber

Registration number of the asset with the national registration authorities. null means the registation number is unknown or N/A. `Filter(eq;like)`

_Type_: **string (32) __nullable__**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **32**  


## Reference Details

### EnterpriseCompany

The enterprise company to which the managed asset belongs. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### ManagedAssetGroup

The organizational group of the asset. Used for organizational purposes only. `Required` `Filter(multi eq)`

_Type_: **[ManagedAssetGroups](Applications.AssetManagement.ManagedAssetGroups.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### ManagedAssetType

The type of the asset. Determines the tracked parameters for the asset, the applicable maintenance types, etc. `Required` `Filter(multi eq)`

_Type_: **[ManagedAssetTypes](Applications.AssetManagement.ManagedAssetTypes.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.ManagedAssets erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.ManagedAssets erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_AssetManagement_ManagedAssets?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_AssetManagement_ManagedAssets?$top=10>

