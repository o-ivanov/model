---
uid: General.Geography.MapPoints
---
# General.Geography.MapPoints Entity

**Namespace:** [General.Geography](General.Geography.md)  

Geographical map points are used as points of interest on the map. They are used for routing and other purposes. The points of interest for the different enterprise companies are different. Entity: Geo_Map_Points

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.EnterpriseCompanies](General.EnterpriseCompanies.md)  
Aggregate Root:  
[General.EnterpriseCompanies](General.EnterpriseCompanies.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Address](General.Geography.MapPoints.md#address) | string (128) __nullable__ | The descriptive physical address, related to this map point. 
| [Id](General.Geography.MapPoints.md#id) | guid |  
| [Latitude](General.Geography.MapPoints.md#latitude) | decimal (10, 7) | Latitude is the vertical angle from equator to the pole of the point. Positive values denote points north of the equator. The value is in the range `-90, 90`. `Required` `Default(0)` 
| [Longitude](General.Geography.MapPoints.md#longitude) | decimal (10, 7) | Longitude is angle from the prime meridian (in England) in east-west direction. Positive values denote east and negative - west. The value is in the range `-180, 180`. `Required` `Default(0)` 
| [Name](General.Geography.MapPoints.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | Map point short name (Multilanguage). `Required` `Filter(eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](General.Geography.MapPoints.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company for within the name of the map point has meaning. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### Address

The descriptive physical address, related to this map point.

_Type_: **string (128) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **128**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Latitude

Latitude is the vertical angle from equator to the pole of the point. Positive values denote points north of the equator. The value is in the range `-90, 90`. `Required` `Default(0)`

_Type_: **decimal (10, 7)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### Longitude

Longitude is angle from the prime meridian (in England) in east-west direction. Positive values denote east and negative - west. The value is in the range `-180, 180`. `Required` `Default(0)`

_Type_: **decimal (10, 7)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### Name

Map point short name (Multilanguage). `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  


## Reference Details

### EnterpriseCompany

The enterprise company for within the name of the map point has meaning. `Required` `Filter(multi eq)` `Owner`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=General.Geography.MapPoints erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Geography.MapPoints erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Geography_MapPoints?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Geography_MapPoints?$top=10>

