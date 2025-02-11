---
uid: Crm.Distribution.SalesPersonGroups
---
# Crm.Distribution.SalesPersonGroups Entity

**Namespace:** [Crm.Distribution](Crm.Distribution.md)  

Hierarchical sales person grouping. Entity: Crm_Sales_Person_Groups

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Code; Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Distribution.SalesPersonGroups](Crm.Distribution.SalesPersonGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Crm.Distribution.SalesPersonGroups.md#code) | string (64) | The unique code of the SalesPersonGroup. `Required` `Filter(eq;like)` `ORD` 
| [FullPath](Crm.Distribution.SalesPersonGroups.md#fullpath) | string (4000) __nullable__ | Full path to this item in the form /root/child1/../leaf/. `Filter(eq;like)` `ReadOnly` 
| [Id](Crm.Distribution.SalesPersonGroups.md#id) | guid |  
| [Name](Crm.Distribution.SalesPersonGroups.md#name) | string (128) | The name of this SalesPersonGroup. `Required` `Filter(eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ManagerPerson](Crm.Distribution.SalesPersonGroups.md#managerperson) | [Persons](General.Contacts.Persons.md) (nullable) | The manager of the group. null when there is no manager. `Filter(multi eq)` |
| [Parent](Crm.Distribution.SalesPersonGroups.md#parent) | [SalesPersonGroups](Crm.Distribution.SalesPersonGroups.md) (nullable) | The parent sales person group in the hierarchy. `Filter(multi eq)` |


## Attribute Details

### Code

The unique code of the SalesPersonGroup. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (64)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  

### FullPath

Full path to this item in the form /root/child1/../leaf/. `Filter(eq;like)` `ReadOnly`

_Type_: **string (4000) __nullable__**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **4000**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this SalesPersonGroup. `Required` `Filter(eq;like)`

_Type_: **string (128)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  


## Reference Details

### ManagerPerson

The manager of the group. null when there is no manager. `Filter(multi eq)`

_Type_: **[Persons](General.Contacts.Persons.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Parent

The parent sales person group in the hierarchy. `Filter(multi eq)`

_Type_: **[SalesPersonGroups](Crm.Distribution.SalesPersonGroups.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Crm.Distribution.SalesPersonGroups erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Distribution.SalesPersonGroups erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Distribution_SalesPersonGroups?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Distribution_SalesPersonGroups?$top=10>

