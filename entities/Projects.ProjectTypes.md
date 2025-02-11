---
uid: Projects.ProjectTypes
---
# Projects.ProjectTypes Entity

**Namespace:** [Projects](Projects.md)  

Contains the types of projects, which can be executed by the enterprise company. Entity: Prj_Types

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.ProjectTypes](Projects.ProjectTypes.md)  
  * [Projects.TypeRoles](Projects.TypeRoles.md)  
  * [Projects.TypeWorkElements](Projects.TypeWorkElements.md)  
  * [Projects.TypeWorkTypes](Projects.TypeWorkTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Projects.ProjectTypes.md#id) | guid |  
| [Name](Projects.ProjectTypes.md#name) | string (254) | The name of the project type. `Required` `Filter(eq;like)` 
| [Notes](Projects.ProjectTypes.md#notes) | string (max) __nullable__ | Notes. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Projects.ProjectTypes.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | When not null means that the project type is specific to the enterprise company. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Roles | [TypeRoles](Projects.TypeRoles.md) | List of `TypeRole`(Projects.TypeRoles.md) child objects, based on the `Projects.TypeRole.ProjectType`(Projects.TypeRoles.md#projecttype) back reference 
| WorkElements | [TypeWorkElements](Projects.TypeWorkElements.md) | List of `TypeWorkElement`(Projects.TypeWorkElements.md) child objects, based on the `Projects.TypeWorkElement.ProjectType`(Projects.TypeWorkElements.md#projecttype) back reference 
| WorkTypes | [TypeWorkTypes](Projects.TypeWorkTypes.md) | List of `TypeWorkType`(Projects.TypeWorkTypes.md) child objects, based on the `Projects.TypeWorkType.ProjectType`(Projects.TypeWorkTypes.md#projecttype) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of the project type. `Required` `Filter(eq;like)`

_Type_: **string (254)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### Notes

Notes.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  


## Reference Details

### EnterpriseCompany

When not null means that the project type is specific to the enterprise company. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Projects.ProjectTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.ProjectTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_ProjectTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_ProjectTypes?$top=10>

