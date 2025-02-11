---
uid: Production.Technologies.RecipeOperations
---
# Production.Technologies.RecipeOperations Entity

**Namespace:** [Production.Technologies](Production.Technologies.md)  

Contains the routing (operation list) of the recipes. Entity: Prd_Recipe_Operations

## Default Visualization
Default Display Text Format:  
_{Recipe.Name}_  
Default Search Members:  
_Recipe.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Production.Technologies.Recipes](Production.Technologies.Recipes.md)  
Aggregate Root:  
[Production.Technologies.Recipes](Production.Technologies.Recipes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Production.Technologies.RecipeOperations.md#id) | guid |  
| [LineOrd](Production.Technologies.RecipeOperations.md#lineord) | int32 | Order of the operation within the recipe. `Required` 
| [MinimumConcurrent<br />StartTimeMinutes](Production.Technologies.RecipeOperations.md#minimumconcurrentstarttimeminutes) | int32 __nullable__ | How many minutes after the start of this operation can the next operation start. null means that the next operation should wait this operation to finish before starting. 
| [MoveTimeMinutes](Production.Technologies.RecipeOperations.md#movetimeminutes) | int32 | Time to move the lot to the next operation in minutes. `Required` `Default(0)` 
| [Notes](Production.Technologies.RecipeOperations.md#notes) | string (254) __nullable__ | Notes for this RecipeOperation. 
| [OperationDescription](Production.Technologies.RecipeOperations.md#operationdescription) | string (max) __nullable__ | The description of the operation. 
| [RunTimeMinutes](Production.Technologies.RecipeOperations.md#runtimeminutes) | int32 | Duration of the operation for standard lot of the product. `Required` `Default(0)` 
| [ScrapRate](Production.Technologies.RecipeOperations.md#scraprate) | decimal (7, 6) | Standard rate of scrap during the operation. `Required` `Default(0)` 
| [SetupTimeMinutes](Production.Technologies.RecipeOperations.md#setuptimeminutes) | int32 | Time needed to setup the equipment. `Required` `Default(0)` 
| [StandardCostPerHour](Production.Technologies.RecipeOperations.md#standardcostperhour) | [Amount (18, 6)](../data-types.md#amount) __nullable__ | Standard cost per hour for this operation. It participates in the calculation of standard cost for production for the whole recipe. `Currency: Recipe.Product.CostingCurrency` 
| [StandardPricePerHour](Production.Technologies.RecipeOperations.md#standardpriceperhour) | [Amount (18, 6)](../data-types.md#amount) | Standard price for 1 hour work. `Currency: Recipe.Product.CostingCurrency` `Required` `Default(0)` 
| [Tooling](Production.Technologies.RecipeOperations.md#tooling) | string (max) __nullable__ | The tools needed for the routing step. 
| [UseQuantity](Production.Technologies.RecipeOperations.md#usequantity) | [Quantity (9, 3)](../data-types.md#quantity) | Quantity of the workgroup resource that should be allocated for the operation. `Unit: UseQuantityUnit` `Required` `Default(1)` 
| [WaitTimeMinutes](Production.Technologies.RecipeOperations.md#waittimeminutes) | int32 | Wait time (drying, cooling, etc.) after the operation in minutes. `Required` `Default(0)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Operation](Production.Technologies.RecipeOperations.md#operation) | [Operations](Production.Resources.Operations.md) (nullable) | Standard operation Id. If not null used to load the details. If null the details (times, scrap rates, etc.) must be entered manually. `Filter(multi eq)` |
| [OperationInstruction](Production.Technologies.RecipeOperations.md#operationinstruction) | [OperationInstructions](Production.Resources.OperationInstructions.md) (nullable) | Link to additional data, containing instructions in external format. `Filter(multi eq)` |
| [Recipe](Production.Technologies.RecipeOperations.md#recipe) | [Recipes](Production.Technologies.Recipes.md) | The `Recipe`(Production.Technologies.RecipeOperations.md#recipe) to which this RecipeOperation belongs. `Required` `Filter(multi eq)` `Owner` |
| [UseQuantityUnit](Production.Technologies.RecipeOperations.md#usequantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Use_Quantity. `Required` `Filter(multi eq)` |
| [WorkgroupResource](Production.Technologies.RecipeOperations.md#workgroupresource) | [WorkgroupResources](Production.Resources.WorkgroupResources.md) | The exact workgroup resource that is engaged in the operation. null means that no resource is needed or it will be specfied at a later stage. `Required` `Filter(multi eq)` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineOrd

Order of the operation within the recipe. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.Recipe.Operations.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.Recipe.Operations.Select( c => c.LineOrd).DefaultIfEmpty( 0).Max( ) + 10)`
### MinimumConcurrentStartTimeMinutes

How many minutes after the start of this operation can the next operation start. null means that the next operation should wait this operation to finish before starting.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### MoveTimeMinutes

Time to move the lot to the next operation in minutes. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### Notes

Notes for this RecipeOperation.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### OperationDescription

The description of the operation.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### RunTimeMinutes

Duration of the operation for standard lot of the product. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### ScrapRate

Standard rate of scrap during the operation. `Required` `Default(0)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### SetupTimeMinutes

Time needed to setup the equipment. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### StandardCostPerHour

Standard cost per hour for this operation. It participates in the calculation of standard cost for production for the whole recipe. `Currency: Recipe.Product.CostingCurrency`

_Type_: **[Amount (18, 6)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### StandardPricePerHour

Standard price for 1 hour work. `Currency: Recipe.Product.CostingCurrency` `Required` `Default(0)`

_Type_: **[Amount (18, 6)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### Tooling

The tools needed for the routing step.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### UseQuantity

Quantity of the workgroup resource that should be allocated for the operation. `Unit: UseQuantityUnit` `Required` `Default(1)`

_Type_: **[Quantity (9, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### WaitTimeMinutes

Wait time (drying, cooling, etc.) after the operation in minutes. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  


## Reference Details

### Operation

Standard operation Id. If not null used to load the details. If null the details (times, scrap rates, etc.) must be entered manually. `Filter(multi eq)`

_Type_: **[Operations](Production.Resources.Operations.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### OperationInstruction

Link to additional data, containing instructions in external format. `Filter(multi eq)`

_Type_: **[OperationInstructions](Production.Resources.OperationInstructions.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Recipe

The `Recipe`(Production.Technologies.RecipeOperations.md#recipe) to which this RecipeOperation belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Recipes](Production.Technologies.Recipes.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### UseQuantityUnit

The measurement unit of Use_Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### WorkgroupResource

The exact workgroup resource that is engaged in the operation. null means that no resource is needed or it will be specfied at a later stage. `Required` `Filter(multi eq)`

_Type_: **[WorkgroupResources](Production.Resources.WorkgroupResources.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Production.Technologies.RecipeOperations erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Production.Technologies.RecipeOperations erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Production_Technologies_RecipeOperations?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Production_Technologies_RecipeOperations?$top=10>

