---
uid: Logistics.Shipment.ShipmentOrderLines
---
# Logistics.Shipment.ShipmentOrderLines Entity

**Namespace:** [Logistics.Shipment](Logistics.Shipment.md)  

Represents detail lines of orders for shipment of sales orders to customers. Each line orders the shipment of one product. Entity: Log_Shipment_Order_Lines

## Default Visualization
Default Display Text Format:  
_{LineNo}. {ShipmentOrder.DocumentNo} {ShipmentOrder.DocumentType.TypeName:T}_  
Default Search Members:  
_ShipmentOrder.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.Shipment.ShipmentOrders](Logistics.Shipment.ShipmentOrders.md)  
Aggregate Root:  
[Logistics.Shipment.ShipmentOrders](Logistics.Shipment.ShipmentOrders.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [BoxCount](Logistics.Shipment.ShipmentOrderLines.md#boxcount) | int32 __nullable__ | The count of boxes in which the goods are packaged. null means unknown. 
| [Finished](Logistics.Shipment.ShipmentOrderLines.md#finished) | boolean | True if this shipment should prohibit further shipments for the sales order line. `Required` `Default(false)` `Filter(eq)` 
| [GrossWeightkg](Logistics.Shipment.ShipmentOrderLines.md#grossweightkg) | decimal (12, 3) __nullable__ | The gross weight of the whole line in kilogramms. null means unknown. 
| [GuaranteePeriodDays](Logistics.Shipment.ShipmentOrderLines.md#guaranteeperioddays) | int32 __nullable__ | Guarantee period in days for the offered product. null for non-serviced products. 
| [Heightm](Logistics.Shipment.ShipmentOrderLines.md#heightm) | decimal (12, 3) __nullable__ | The height of the package in meters. null means unknown. 
| [Id](Logistics.Shipment.ShipmentOrderLines.md#id) | guid |  
| [Lengthm](Logistics.Shipment.ShipmentOrderLines.md#lengthm) | decimal (12, 3) __nullable__ | The length of the package in meters. null means unknown. 
| [LineNo](Logistics.Shipment.ShipmentOrderLines.md#lineno) | int32 | Line number, unique for the shipment. `Required` 
| [NetWeightkg](Logistics.Shipment.ShipmentOrderLines.md#netweightkg) | decimal (12, 3) __nullable__ | The net weight of the entire batch of goods in kilograms. null means unknown. 
| [Notes](Logistics.Shipment.ShipmentOrderLines.md#notes) | string (max) __nullable__ | Specific notes for this line. 
| [PalletNo](Logistics.Shipment.ShipmentOrderLines.md#palletno) | int32 __nullable__ | The number of the pallet in which the goods are packaged. null means unknown. 
| [ParentLineNo](Logistics.Shipment.ShipmentOrderLines.md#parentlineno) | int32 __nullable__ | The number of the line within the parent document, which the current line executes. null when the current line does not execute parent line. 
| [PersistLot](Logistics.Shipment.ShipmentOrderLines.md#persistlot) | boolean | If checked specifies that the lot in the line cannot be changed in the sub-documents created by the current document. `Required` `Default(false)` `Filter(eq)` 
| [Quantity](Logistics.Shipment.ShipmentOrderLines.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity to be shipped. `Unit: QuantityUnit` `Required` `Default(1)` 
| [QuantityBase](Logistics.Shipment.ShipmentOrderLines.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The equivalence of Quantity in the base measurement category of the product. `Unit: ParentSalesOrderLine.Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [StandardQuantityBase](Logistics.Shipment.ShipmentOrderLines.md#standardquantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: ParentSalesOrderLine.Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2` 
| [Volumel](Logistics.Shipment.ShipmentOrderLines.md#volumel) | decimal (12, 3) __nullable__ | The volume in litres of the whole batch. null means unknown. 
| [Widthm](Logistics.Shipment.ShipmentOrderLines.md#widthm) | decimal (12, 3) __nullable__ | The width of the package in meters. null means unknown. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Logistics.Shipment.ShipmentOrderLines.md#document) | [ShipmentOrders](Logistics.Shipment.ShipmentOrders.md) | The `ShipmentOrder`(Logistics.Shipment.ShipmentOrderLines.md#shipmentorder) to which this ShipmentOrderLine belongs. `Required` `Filter(multi eq)` |
| [Lot](Logistics.Shipment.ShipmentOrderLines.md#lot) | [Lots](Logistics.Inventory.Lots.md) (nullable) | The store lot from which to take the goods. `Filter(multi eq)` |
| [ParentDocument](Logistics.Shipment.ShipmentOrderLines.md#parentdocument) | [Documents](General.Documents.md) (nullable) | The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)` |
| [ParentSalesOrderLine](Logistics.Shipment.ShipmentOrderLines.md#parentsalesorderline) | [SalesOrderLines](Crm.Sales.SalesOrderLines.md) | Sales order line which is shipped. `Required` `Filter(multi eq)` |
| [QuantityUnit](Logistics.Shipment.ShipmentOrderLines.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |
| [SerialNumber](Logistics.Shipment.ShipmentOrderLines.md#serialnumber) | [SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable) | The serial number of the shipped product. null means that serial number is unknown or not applicable. `Filter(multi eq)` |
| [ShipmentOrder](Logistics.Shipment.ShipmentOrderLines.md#shipmentorder) | [ShipmentOrders](Logistics.Shipment.ShipmentOrders.md) | The `ShipmentOrder`(Logistics.Shipment.ShipmentOrderLines.md#shipmentorder) to which this ShipmentOrderLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [StoreBin](Logistics.Shipment.ShipmentOrderLines.md#storebin) | [StoreBins](Logistics.Inventory.StoreBins.md) (nullable) | The store bin from which to take the goods. `Filter(multi eq)` |


## Attribute Details

### BoxCount

The count of boxes in which the goods are packaged. null means unknown.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Finished

True if this shipment should prohibit further shipments for the sales order line. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### GrossWeightkg

The gross weight of the whole line in kilogramms. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### GuaranteePeriodDays

Guarantee period in days for the offered product. null for non-serviced products.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`IIF( obj.ParentSalesOrderLine.Product.ProductType.IsServiced, obj.ParentSalesOrderLine.Product.GuaranteePeriodDays, null)`
### Heightm

The height of the package in meters. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Lengthm

The length of the package in meters. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### LineNo

Line number, unique for the shipment. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.ShipmentOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.ShipmentOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### NetWeightkg

The net weight of the entire batch of goods in kilograms. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Notes

Specific notes for this line.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### PalletNo

The number of the pallet in which the goods are packaged. null means unknown.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ParentLineNo

The number of the line within the parent document, which the current line executes. null when the current line does not execute parent line.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### PersistLot

If checked specifies that the lot in the line cannot be changed in the sub-documents created by the current document. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Quantity

The quantity to be shipped. `Unit: QuantityUnit` `Required` `Default(1)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`new Quantity( obj.ParentSalesOrderLine.Quantity.Value, obj.QuantityUnit)`
### QuantityBase

The equivalence of Quantity in the base measurement category of the product. `Unit: ParentSalesOrderLine.Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### StandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: ParentSalesOrderLine.Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, IIF( obj.Product.AllowVariableMeasurementRatios, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product), obj.QuantityBase))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### Volumel

The volume in litres of the whole batch. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Widthm

The width of the package in meters. null means unknown.

_Type_: **decimal (12, 3) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  


## Reference Details

### Document

The `ShipmentOrder`(Logistics.Shipment.ShipmentOrderLines.md#shipmentorder) to which this ShipmentOrderLine belongs. `Required` `Filter(multi eq)`

_Type_: **[ShipmentOrders](Logistics.Shipment.ShipmentOrders.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### Lot

The store lot from which to take the goods. `Filter(multi eq)`

_Type_: **[Lots](Logistics.Inventory.Lots.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.ParentSalesOrderLine.Lot`
### ParentDocument

The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)`

_Type_: **[Documents](General.Documents.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### ParentSalesOrderLine

Sales order line which is shipped. `Required` `Filter(multi eq)`

_Type_: **[SalesOrderLines](Crm.Sales.SalesOrderLines.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.ParentSalesOrderLine.QuantityUnit`
### SerialNumber

The serial number of the shipped product. null means that serial number is unknown or not applicable. `Filter(multi eq)`

_Type_: **[SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ShipmentOrder

The `ShipmentOrder`(Logistics.Shipment.ShipmentOrderLines.md#shipmentorder) to which this ShipmentOrderLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ShipmentOrders](Logistics.Shipment.ShipmentOrders.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### StoreBin

The store bin from which to take the goods. `Filter(multi eq)`

_Type_: **[StoreBins](Logistics.Inventory.StoreBins.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Logistics.Shipment.ShipmentOrderLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Shipment.ShipmentOrderLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Shipment_ShipmentOrderLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Shipment_ShipmentOrderLines?$top=10>

