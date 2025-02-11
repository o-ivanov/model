---
uid: Finance.Assets.AssetCategories
---
# Finance.Assets.AssetCategories Entity

**Namespace:** [Finance.Assets](Finance.Assets.md)  

Categorization of the assets, which specifies their depreciation plans. Entity: Ast_Asset_Categories

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Code; Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Assets.AssetCategories](Finance.Assets.AssetCategories.md)  
  * [Finance.Assets.DepreciationPlanTemplates](Finance.Assets.DepreciationPlanTemplates.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Code](Finance.Assets.AssetCategories.md#code) | string (20) | The unique code of the AssetCategory. `Required` `Filter(eq)` `ORD` 
| [Id](Finance.Assets.AssetCategories.md#id) | guid |  
| [Name](Finance.Assets.AssetCategories.md#name) | string (254) | The name of this AssetCategory. `Required` `Filter(like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ProductType](Finance.Assets.AssetCategories.md#producttype) | [ProductTypes](General.Products.ProductTypes.md) | Product type that correspondes to this category. Depreciation plan templates specified for this category will be used for the products of this type. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| DepreciationPlanTemplates | [DepreciationPlanTemplates](Finance.Assets.DepreciationPlanTemplates.md) | List of `DepreciationPlanTemplate`(Finance.Assets.DepreciationPlanTemplates.md) child objects, based on the `Finance.Assets.DepreciationPlanTemplate.AssetCategory`(Finance.Assets.DepreciationPlanTemplates.md#assetcategory) back reference 


## Attribute Details

### Code

The unique code of the AssetCategory. `Required` `Filter(eq)` `ORD`

_Type_: **string (20)**  
_Indexed_: **True**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  
_Maximum Length_: **20**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this AssetCategory. `Required` `Filter(like)`

_Type_: **string (254)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  


## Reference Details

### ProductType

Product type that correspondes to this category. Depreciation plan templates specified for this category will be used for the products of this type. `Required` `Filter(multi eq)`

_Type_: **[ProductTypes](General.Products.ProductTypes.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Finance.Assets.AssetCategories erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Assets.AssetCategories erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Assets_AssetCategories?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Assets_AssetCategories?$top=10>

