---
uid: Production.Technologies.Recipes
---
# Production.Technologies.Recipes Entity

**Namespace:** [Production.Technologies](Production.Technologies.md)  

Contains the characteristics of operations used to create products. Entity: Prd_Recipes

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Production.Technologies.Recipes](Production.Technologies.Recipes.md)  
  * [Production.Technologies.RecipeIngredients](Production.Technologies.RecipeIngredients.md)  
  * [Production.Technologies.RecipeOperations](Production.Technologies.RecipeOperations.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [CreationTime](Production.Technologies.Recipes.md#creationtime) | datetime __nullable__ | Date and time when the Recipe was created. `Filter(ge;le)` `ReadOnly` 
| [CreationUser](Production.Technologies.Recipes.md#creationuser) | string (64) __nullable__ | Login name of the user, who created the Recipe. `Filter(like)` `ReadOnly` 
| [ExpiryDate](Production.Technologies.Recipes.md#expirydate) | datetime __nullable__ | The last date, when the recipe should be used. null means that the recipe might still be in use. `Filter(ge;le)` 
| [Id](Production.Technologies.Recipes.md#id) | guid |  
| [IsDefault](Production.Technologies.Recipes.md#isdefault) | boolean | Default for period: Release_Date - Expiry_Date. `Required` `Default(false)` `Filter(eq)` 
| [Name](Production.Technologies.Recipes.md#name) | string (64) | The name of the recipe. When there is only 1 recipe, it is often equal to the product name. However, when there are multiple recipes for one product, the name is used for diferentiation. `Required` `Filter(like)` 
| [Notes](Production.Technologies.Recipes.md#notes) | string (254) __nullable__ | User comments for the recipe. 
| [Price](Production.Technologies.Recipes.md#price) | [Amount (18, 4)](../data-types.md#amount) | The price for the specified Produce_Quantity. `Currency: Product.CostingCurrency` `Required` `Default(0)` 
| [PricePerLot](Production.Technologies.Recipes.md#priceperlot) | [Amount (18, 4)](../data-types.md#amount) | Price for one lot of the product (according to Lot_Size_Quantity_Base). `Currency: Product.CostingCurrency` `Required` `Default(0)` 
| [ProduceQuantity](Production.Technologies.Recipes.md#producequantity) | [Quantity (18, 3)](../data-types.md#quantity) | Lot size. This is the produced quantity in one production run. The quantity is measured in the primary unit of Product_Id. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Default(1)` 
| [ReleaseDate](Production.Technologies.Recipes.md#releasedate) | datetime | The date, when the recipe was released to production. `Required` `Default(Today)` `Filter(ge;le)` 
| [ScrapRate](Production.Technologies.Recipes.md#scraprate) | decimal (7, 6) | The percentage (0..1) of scrap usually occurring during the operation. Specifying this leads to inflated requirements of all raw materials for this recipe. `Required` `Default(0)` 
| [UpdateTime](Production.Technologies.Recipes.md#updatetime) | datetime __nullable__ | Date and time when the Recipe was last updated. `Filter(ge;le)` `ReadOnly` 
| [UpdateUser](Production.Technologies.Recipes.md#updateuser) | string (64) __nullable__ | Login name of the user, who last updated the Recipe. `Filter(like)` `ReadOnly` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [CurrencyDirectory](Production.Technologies.Recipes.md#currencydirectory) | [CurrencyDirectories](General.CurrencyDirectories.md) (nullable) | Currency directory, which is used to convert the costs and prices of materials, operations and resources into the currency of the product. `Filter(multi eq)` |
| [PrincipalRecipe](Production.Technologies.Recipes.md#principalrecipe) | [PrincipalRecipes](Production.Technologies.PrincipalRecipes.md) (nullable) | The prinicipal recipe, used to create this recipe. null means that this recipe was created without the help of principal recipe. `Filter(multi eq)` |
| [Product](Production.Technologies.Recipes.md#product) | [Products](General.Products.Products.md) (nullable) | The Id of the produced product. `Filter(multi eq)` |
| [Store](Production.Technologies.Recipes.md#store) | [Stores](Logistics.Inventory.Stores.md) (nullable) | The store for which this technology is valid. The store is matched with the output store specified in the production order. When null, the technology is valid for all stores. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Ingredients | [RecipeIngredients](Production.Technologies.RecipeIngredients.md) | List of `RecipeIngredient`(Production.Technologies.RecipeIngredients.md) child objects, based on the `Production.Technologies.RecipeIngredient.Recipe`(Production.Technologies.RecipeIngredients.md#recipe) back reference 
| Operations | [RecipeOperations](Production.Technologies.RecipeOperations.md) | List of `RecipeOperation`(Production.Technologies.RecipeOperations.md) child objects, based on the `Production.Technologies.RecipeOperation.Recipe`(Production.Technologies.RecipeOperations.md#recipe) back reference 


## Attribute Details

### CreationTime

Date and time when the Recipe was created. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### CreationUser

Login name of the user, who created the Recipe. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### ExpiryDate

The last date, when the recipe should be used. null means that the recipe might still be in use. `Filter(ge;le)`

_Type_: **datetime __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsDefault

Default for period: Release_Date - Expiry_Date. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Name

The name of the recipe. When there is only 1 recipe, it is often equal to the product name. However, when there are multiple recipes for one product, the name is used for diferentiation. `Required` `Filter(like)`

_Type_: **string (64)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### Notes

User comments for the recipe.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### Price

The price for the specified Produce_Quantity. `Currency: Product.CostingCurrency` `Required` `Default(0)`

_Type_: **[Amount (18, 4)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### PricePerLot

Price for one lot of the product (according to Lot_Size_Quantity_Base). `Currency: Product.CostingCurrency` `Required` `Default(0)`

_Type_: **[Amount (18, 4)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### ProduceQuantity

Lot size. This is the produced quantity in one production run. The quantity is measured in the primary unit of Product_Id. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `Default(1)`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### ReleaseDate

The date, when the recipe was released to production. `Required` `Default(Today)` `Filter(ge;le)`

_Type_: **datetime**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDate**  

### ScrapRate

The percentage (0..1) of scrap usually occurring during the operation. Specifying this leads to inflated requirements of all raw materials for this recipe. `Required` `Default(0)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### UpdateTime

Date and time when the Recipe was last updated. `Filter(ge;le)` `ReadOnly`

_Type_: **datetime __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### UpdateUser

Login name of the user, who last updated the Recipe. `Filter(like)` `ReadOnly`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  


## Reference Details

### CurrencyDirectory

Currency directory, which is used to convert the costs and prices of materials, operations and resources into the currency of the product. `Filter(multi eq)`

_Type_: **[CurrencyDirectories](General.CurrencyDirectories.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PrincipalRecipe

The prinicipal recipe, used to create this recipe. null means that this recipe was created without the help of principal recipe. `Filter(multi eq)`

_Type_: **[PrincipalRecipes](Production.Technologies.PrincipalRecipes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

The Id of the produced product. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### Store

The store for which this technology is valid. The store is matched with the output store specified in the production order. When null, the technology is valid for all stores. `Filter(multi eq)`

_Type_: **[Stores](Logistics.Inventory.Stores.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Production.Technologies.Recipes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Production.Technologies.Recipes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Production_Technologies_Recipes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Production_Technologies_Recipes?$top=10>

