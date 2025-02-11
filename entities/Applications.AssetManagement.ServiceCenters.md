---
uid: Applications.AssetManagement.ServiceCenters
---
# Applications.AssetManagement.ServiceCenters Entity

**Namespace:** [Applications.AssetManagement](Applications.AssetManagement.md)  

Contains data about the service centers, which can maintain the assets. Entity: Eam_Service_Centers (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{Id}: {EnterpriseCompanyId}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.AssetManagement.ServiceCenters](Applications.AssetManagement.ServiceCenters.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Applications.AssetManagement.ServiceCenters.md#id) | guid |  
| [Notes](Applications.AssetManagement.ServiceCenters.md#notes) | string (max) __nullable__ | Notes for this ServiceCenter. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Applications.AssetManagement.ServiceCenters.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | The enterprise company, whose assets will be maintained by the service center. When null, the service center can maintain assets for all enterprise companies. `Filter(multi eq)` |
| [Party](Applications.AssetManagement.ServiceCenters.md#party) | [Parties](General.Contacts.Parties.md) | The person or company, actually performing the maintenance. `Required` `Filter(multi eq)` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Notes

Notes for this ServiceCenter.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  


## Reference Details

### EnterpriseCompany

The enterprise company, whose assets will be maintained by the service center. When null, the service center can maintain assets for all enterprise companies. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Party

The person or company, actually performing the maintenance. `Required` `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.ServiceCenters erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.AssetManagement.ServiceCenters erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_AssetManagement_ServiceCenters?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_AssetManagement_ServiceCenters?$top=10>

