---
uid: General.Currencies
---
# General.Currencies Entity

**Namespace:** [General](General.md)  

List of user-defined currencies. Entity: Gen_Currencies

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Currencies](General.Currencies.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CurrencySign](General.Currencies.md#currencysign) | string (4) | The international currency designator, as defined in ISO 4217. For example euro is represented as 'EUR'. `Required` `Filter(eq;like)` `ORD` 
| [Id](General.Currencies.md#id) | guid |  
| [Name](General.Currencies.md#name) | string (50) | The name of this Currency. `Required` `Filter(like)` 
| [ShowOrder](General.Currencies.md#showorder) | int32 | The order in which to show the currency in combo boxes, etc. `Required` `Default(0)` 


## Attribute Details

### CurrencySign

The international currency designator, as defined in ISO 4217. For example euro is represented as 'EUR'. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (4)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **4**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this Currency. `Required` `Filter(like)`

_Type_: **string (50)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **50**  

### ShowOrder

The order in which to show the currency in combo boxes, etc. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  



## Business Rules

[!list limit=1000 erp.entity=General.Currencies erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Currencies erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Currencies?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Currencies?$top=10>

