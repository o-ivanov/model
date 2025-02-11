---
uid: Logistics.Inventory.DemandManagement.AvailableToPromiseByLots
---
# Logistics.Inventory.DemandManagement.AvailableToPromiseByLots View

**Namespace:** [Logistics.Inventory.DemandManagement](Logistics.Inventory.DemandManagement.md)  

Quantities available to promise for the different date periods. Also contains the current and projected availability. The algorithm accounts for the quantities for each lot and separately for the quantities without lot. Entity: Inv_Demand_Management_ATP_By_Lots

## Default Visualization
Default Display Text Format:  
_{ATPBaseValue}: {CurrentAvailabilityBaseValue}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Logistics.Inventory.DemandManagement.AvailableToPromiseByLots](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ATPBase](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#atpbase) | [Quantity (38, 3)](../data-types.md#quantity) | Indicates the quantity available to promise (in a base unit). It is valid from this date on. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [CurrentAvailabilityBase](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#currentavailabilitybase) | [Quantity (38, 3)](../data-types.md#quantity) | The current availability in а base measurement unit. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [FromDate](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#fromdate) | datetime | Тhe date from which the available to promise quantity is valid. `Required` `Filter(eq;ge;le)` 
| [MovementsBase](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#movementsbase) | [Quantity (38, 3)](../data-types.md#quantity) | The sum of the quantity of all planned stock movements on this date in а base measurement unit. . `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [MovementsToDateBase](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#movementstodatebase) | [Quantity (38, 3)](../data-types.md#quantity) | The sum of the quantity of all planned stock movements until this date (inclusive) in а base measurement unit. The value is cumulative. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [ProjectedAvailabilityBase](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#projectedavailabilitybase) | [Quantity (38, 3)](../data-types.md#quantity) | Projected Availability in а base measurement unit on the particular date. The value is cumulative and includes the sum of all planned stock movements until this date (inclusive) and the current availability. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [EnterpriseCompany](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company which issued the document. `Required` `Filter(multi eq)` `Inherited from Gen_Documents_Table.Enterprise_Company_Id` |
| [Lot](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#lot) | [Lots](Logistics.Inventory.Lots.md) (nullable) | If non-null, contains the specific lot to use for the movement. `Filter(multi eq)` `Inherited from Inv_Store_Order_<br />Lines_Table.Lot_Id` |
| [Product](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#product) | [Products](General.Products.Products.md) | The product which should be received/issued. `Required` `Filter(multi eq)` `Inherited from Inv_Store_Order_<br />Lines_Table.Product_Id` |
| [Store](Logistics.Inventory.DemandManagement.AvailableToPromiseByLots.md#store) | [Stores](Logistics.Inventory.Stores.md) | The designated warehouse for the operation. `Required` `Filter(multi eq)` `Inherited from Inv_Store_Orders_Table.Store_Id` |


## Attribute Details

### ATPBase

Indicates the quantity available to promise (in a base unit). It is valid from this date on. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (38, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### CurrentAvailabilityBase

The current availability in а base measurement unit. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (38, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### FromDate

Тhe date from which the available to promise quantity is valid. `Required` `Filter(eq;ge;le)`

_Type_: **datetime**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### MovementsBase

The sum of the quantity of all planned stock movements on this date in а base measurement unit. . `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (38, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### MovementsToDateBase

The sum of the quantity of all planned stock movements until this date (inclusive) in а base measurement unit. The value is cumulative. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (38, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ProjectedAvailabilityBase

Projected Availability in а base measurement unit on the particular date. The value is cumulative and includes the sum of all planned stock movements until this date (inclusive) and the current availability. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (38, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  


## Reference Details

### EnterpriseCompany

The enterprise company which issued the document. `Required` `Filter(multi eq)` `Inherited from Gen_Documents_Table.Enterprise_Company_Id`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Inherited From_: **Gen_Documents_Table.Enterprise_Company_Id**  
_Supported Filters_: **Equals, EqualsIn**  

### Lot

If non-null, contains the specific lot to use for the movement. `Filter(multi eq)` `Inherited from Inv_Store_Order_Lines_Table.Lot_Id`

_Type_: **[Lots](Logistics.Inventory.Lots.md) (nullable)**  
_Inherited From_: **Inv_Store_Order_Lines_Table.Lot_Id**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

The product which should be received/issued. `Required` `Filter(multi eq)` `Inherited from Inv_Store_Order_Lines_Table.Product_Id`

_Type_: **[Products](General.Products.Products.md)**  
_Inherited From_: **Inv_Store_Order_Lines_Table.Product_Id**  
_Supported Filters_: **Equals, EqualsIn**  

### Store

The designated warehouse for the operation. `Required` `Filter(multi eq)` `Inherited from Inv_Store_Orders_Table.Store_Id`

_Type_: **[Stores](Logistics.Inventory.Stores.md)**  
_Inherited From_: **Inv_Store_Orders_Table.Store_Id**  
_Supported Filters_: **Equals, EqualsIn**  


## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Inventory_DemandManagement_AvailableToPromiseByLots?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Inventory_DemandManagement_AvailableToPromiseByLots?$top=10>

