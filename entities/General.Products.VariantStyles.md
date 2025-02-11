---
uid: General.Products.VariantStyles
---
# General.Products.VariantStyles Entity

**Namespace:** [General.Products](General.Products.md)  

Contains the different styles, which can be assigned to product variants. Entity: Gen_Variant_Styles

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Code; Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Products.VariantStyles](General.Products.VariantStyles.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](General.Products.VariantStyles.md#code) | string (8) | Unique code of the style. Used to generate parts of bar-codes and in other coding schemes. `Required` `Filter(eq;like)` `ORD` 
| [Id](General.Products.VariantStyles.md#id) | guid |  
| [Name](General.Products.VariantStyles.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | The name of this VariantStyle. `Required` `Filter(eq;like)` `ORD` 


## Attribute Details

### Code

Unique code of the style. Used to generate parts of bar-codes and in other coding schemes. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (8)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **8**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this VariantStyle. `Required` `Filter(eq;like)` `ORD`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  



## Business Rules

[!list limit=1000 erp.entity=General.Products.VariantStyles erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Products.VariantStyles erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Products_VariantStyles?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Products_VariantStyles?$top=10>

