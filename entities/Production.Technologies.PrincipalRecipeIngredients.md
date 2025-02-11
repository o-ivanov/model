---
uid: Production.Technologies.PrincipalRecipeIngredients
---
# Production.Technologies.PrincipalRecipeIngredients Entity

**Namespace:** [Production.Technologies](Production.Technologies.md)  

Template for material usage of a principal recipe. Entity: Prd_Principal_Recipe_Ingredients

## Default Visualization
Default Display Text Format:  
_{IngredientName}_  
Default Search Members:  
_IngredientName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Production.Technologies.PrincipalRecipes](Production.Technologies.PrincipalRecipes.md)  
Aggregate Root:  
[General.Products.ProductGroups](General.Products.ProductGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ConditionalProperty<br />Description](Production.Technologies.PrincipalRecipeIngredients.md#conditionalpropertydescription) | [MultilanguageString](../data-types.md#multilanguagestring) __nullable__ | The desired description of Conditional Property in order for the template line to match. 
| [ConditionalPropertyValue](Production.Technologies.PrincipalRecipeIngredients.md#conditionalpropertyvalue) | string (254) __nullable__ | The desired value of Conditional Property in order for the template line to match. 
| [FixedScrapQuantity](Production.Technologies.PrincipalRecipeIngredients.md#fixedscrapquantity) | [Quantity (18, 3)](../data-types.md#quantity) | Fixed scrap quantity for setup. `Unit: UsageUnit` `Required` `Default(0)` 
| [Id](Production.Technologies.PrincipalRecipeIngredients.md#id) | guid |  
| [IngredientName](Production.Technologies.PrincipalRecipeIngredients.md#ingredientname) | string (254) | The principal name of the ingredient. `Required` `Filter(like)` 
| [LineOrd](Production.Technologies.PrincipalRecipeIngredients.md#lineord) | int32 | The position of the line in the recipe model. `Required` 
| [ScrapRate](Production.Technologies.PrincipalRecipeIngredients.md#scraprate) | decimal (7, 6) | The usual percentage (0..1) of scrap of the raw material; inflates the requirements of this material for this recipe. `Required` `Default(0)` `Filter(ge;le)` 
| [UsageQuantity](Production.Technologies.PrincipalRecipeIngredients.md#usagequantity) | [Quantity (18, 6)](../data-types.md#quantity) __nullable__ | Quantity to be consumed from the material. null means that the quantity is specified with formula. `Unit: UsageUnit` `Default(1)` `Filter(ge;le)` 
| [UsageQuantityFormula](Production.Technologies.PrincipalRecipeIngredients.md#usagequantityformula) | string (max) __nullable__ | Specifies formula for the usage quantity. The formula can reference properties in `<Prop_Name>` style, just like products name and description mask. The formula can contain *, /, + and - operators. The formula can also be simple number, directly specifying quantity. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ConditionalProperty](Production.Technologies.PrincipalRecipeIngredients.md#conditionalproperty) | [CustomProperties](General.CustomProperties.md) (nullable) | When not null, specifies that, when creating recipe, the ingredient will be added only if this property is set for the main product. `Filter(multi eq)` |
| [ConditionalProperty<br />AllowedValue](Production.Technologies.PrincipalRecipeIngredients.md#conditionalpropertyallowedvalue) | [CustomPropertyAllowedValues](General.CustomPropertyAllowedValues.md) (nullable) | When not null, specifies that, when creating recipe, the ingredient will be added only if the main product property, specified in Conditional_Property_Id equals the specified value. `Filter(multi eq)` |
| [DefaultMaterial](Production.Technologies.PrincipalRecipeIngredients.md#defaultmaterial) | [Products](General.Products.Products.md) (nullable) | If not null, points to default product for this ingredient. `Filter(multi eq)` |
| [DefaultStore](Production.Technologies.PrincipalRecipeIngredients.md#defaultstore) | [Stores](Logistics.Inventory.Stores.md) (nullable) | The default store from which to retrieve the material. `Filter(multi eq)` |
| [MaterialFromProperty](Production.Technologies.PrincipalRecipeIngredients.md#materialfromproperty) | [CustomProperties](General.CustomProperties.md) (nullable) | When not null, specifies that the material will be obtained from the value of the specified property. The property must have allowed values in the Products domain. `Filter(multi eq)` |
| [MaterialGroup](Production.Technologies.PrincipalRecipeIngredients.md#materialgroup) | [ProductGroups](General.Products.ProductGroups.md) | Filter for choosing specific material in the recipe (Gen_Product_Groups_Table). `Required` `Filter(multi eq)` |
| [Operation](Production.Technologies.PrincipalRecipeIngredients.md#operation) | [Operations](Production.Resources.Operations.md) (nullable) | Specifies for which operation this ingredient will be used. `Filter(multi eq)` |
| [PrincipalRecipe](Production.Technologies.PrincipalRecipeIngredients.md#principalrecipe) | [PrincipalRecipes](Production.Technologies.PrincipalRecipes.md) | The `PrincipalRecipe`(Production.Technologies.PrincipalRecipeIngredients.md#principalrecipe) to which this PrincipalRecipeIngredient belongs. `Required` `Filter(multi eq)` `Owner` |
| [UsageUnit](Production.Technologies.PrincipalRecipeIngredients.md#usageunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Usage_Quantity. The selected item must support the specified unit. `Required` `Filter(multi eq)` |


## Attribute Details

### ConditionalPropertyDescription

The desired description of Conditional Property in order for the template line to match.

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionalPropertyValue

The desired value of Conditional Property in order for the template line to match.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### FixedScrapQuantity

Fixed scrap quantity for setup. `Unit: UsageUnit` `Required` `Default(0)`

_Type_: **[Quantity (18, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IngredientName

The principal name of the ingredient. `Required` `Filter(like)`

_Type_: **string (254)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

_Front-End Recalc Expressions:_  
`obj.DefaultMaterial.Name`
### LineOrd

The position of the line in the recipe model. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.PrincipalRecipe.Ingredients.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.PrincipalRecipe.Ingredients.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 10)`
### ScrapRate

The usual percentage (0..1) of scrap of the raw material; inflates the requirements of this material for this recipe. `Required` `Default(0)` `Filter(ge;le)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### UsageQuantity

Quantity to be consumed from the material. null means that the quantity is specified with formula. `Unit: UsageUnit` `Default(1)` `Filter(ge;le)`

_Type_: **[Quantity (18, 6)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.UsageQuantityFormula != null), null, obj.UsageQuantity)`
### UsageQuantityFormula

Specifies formula for the usage quantity. The formula can reference properties in `<Prop_Name>` style, just like products name and description mask. The formula can contain *, /, + and - operators. The formula can also be simple number, directly specifying quantity.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.UsageQuantity != null), null, obj.UsageQuantityFormula)`

## Reference Details

### ConditionalProperty

When not null, specifies that, when creating recipe, the ingredient will be added only if this property is set for the main product. `Filter(multi eq)`

_Type_: **[CustomProperties](General.CustomProperties.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionalPropertyAllowedValue

When not null, specifies that, when creating recipe, the ingredient will be added only if the main product property, specified in Conditional_Property_Id equals the specified value. `Filter(multi eq)`

_Type_: **[CustomPropertyAllowedValues](General.CustomPropertyAllowedValues.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DefaultMaterial

If not null, points to default product for this ingredient. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DefaultStore

The default store from which to retrieve the material. `Filter(multi eq)`

_Type_: **[Stores](Logistics.Inventory.Stores.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### MaterialFromProperty

When not null, specifies that the material will be obtained from the value of the specified property. The property must have allowed values in the Products domain. `Filter(multi eq)`

_Type_: **[CustomProperties](General.CustomProperties.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### MaterialGroup

Filter for choosing specific material in the recipe (Gen_Product_Groups_Table). `Required` `Filter(multi eq)`

_Type_: **[ProductGroups](General.Products.ProductGroups.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### Operation

Specifies for which operation this ingredient will be used. `Filter(multi eq)`

_Type_: **[Operations](Production.Resources.Operations.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PrincipalRecipe

The `PrincipalRecipe`(Production.Technologies.PrincipalRecipeIngredients.md#principalrecipe) to which this PrincipalRecipeIngredient belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PrincipalRecipes](Production.Technologies.PrincipalRecipes.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### UsageUnit

The measurement unit of Usage_Quantity. The selected item must support the specified unit. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.DefaultMaterial.BaseUnit`


## Business Rules

[!list limit=1000 erp.entity=Production.Technologies.PrincipalRecipeIngredients erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Production.Technologies.PrincipalRecipeIngredients erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Production_Technologies_PrincipalRecipeIngredients?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Production_Technologies_PrincipalRecipeIngredients?$top=10>

