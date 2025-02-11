---
uid: Crm.Sales.SalesOrderLines
---
# Crm.Sales.SalesOrderLines Entity

**Namespace:** [Crm.Sales](Crm.Sales.md)  

Sales Orders detail records. Entity: Crm_Sales_Order_Lines

## Default Visualization
Default Display Text Format:  
_{LineNo}. {SalesOrder.DocumentNo} {SalesOrder.DocumentType.TypeName:T}_  
Default Search Members:  
_SalesOrder.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Crm.Sales.SalesOrders](Crm.Sales.SalesOrders.md)  
Aggregate Root:  
[Crm.Sales.SalesOrders](Crm.Sales.SalesOrders.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DeliveryTermsCode](Crm.Sales.SalesOrderLines.md#deliverytermscode) | [DeliveryTerms](Crm.Sales.SalesOrderLines.md#deliverytermscode) __nullable__ | Mode of delivery, like CIF, FOB, etc. Used also in Intrastat reporting. 
| [GuaranteePeriodDays](Crm.Sales.SalesOrderLines.md#guaranteeperioddays) | int32 __nullable__ | Guarantee period in days for the offered product. null for non-serviced products. 
| [HistoricalDataJson](Crm.Sales.SalesOrderLines.md#historicaldatajson) | string (max) __nullable__ | Used only for lines, which are returns. It is a JSON-formatted string, containing data from the original sale. `Introduced in version 19.1` 
| [HistoricalUnitCost](Crm.Sales.SalesOrderLines.md#historicalunitcost) | [Amount (14, 5)](../data-types.md#amount) __nullable__ | Used for returning of goods that are sold before the exploitation of the system. `Currency: SalesOrder.DocumentCurrency` `Filter(eq;ge;le)` 
| [Id](Crm.Sales.SalesOrderLines.md#id) | guid |  
| [IntrastatApplyDate](Crm.Sales.SalesOrderLines.md#intrastatapplydate) | datetime __nullable__ | Specifies in which period for Intrastat declaration must be included the current operation. Used only when the invoice is issued in different period than the one, that the operation must be included. If not set the document date is used. `Introduced in version 21.1.3.83` 
| [IntrastatTransaction<br />NatureCode](Crm.Sales.SalesOrderLines.md#intrastattransactionnaturecode) | [TransactionNature](Crm.Sales.SalesOrderLines.md#intrastattransactionnaturecode) __nullable__ | Transaction nature; used for Intrastat reporting. 
| [IntrastatTransportModeCode](Crm.Sales.SalesOrderLines.md#intrastattransportmodecode) | [TransportMode](Crm.Sales.SalesOrderLines.md#intrastattransportmodecode) __nullable__ | Transport mode; used for Intrastat reporting. 
| [LineAmount](Crm.Sales.SalesOrderLines.md#lineamount) | [Amount (14, 2)](../data-types.md#amount) | The total amount for the line. Equals to Quantity * Unit_Price, less the discounts. `Currency: SalesOrder.DocumentCurrency` `Required` `Default(0)` 
| [LineCustomDiscountPercent](Crm.Sales.SalesOrderLines.md#linecustomdiscountpercent) | decimal (7, 6) | User-defined discount for the line. `Required` `Default(0)` `Filter(ge;le)` 
| [LineFromDate](Crm.Sales.SalesOrderLines.md#linefromdate) | date __nullable__ | When selling a service valid only for a period, denotes the beginning of the period. null means that it is unknown or N/A. `Introduced in version 20.1` 
| [LineNo](Crm.Sales.SalesOrderLines.md#lineno) | int32 | Consecutive number of the line within the sales order. `Required` `Filter(eq)` `ORD` 
| [LineStandardDiscount<br />Percent](Crm.Sales.SalesOrderLines.md#linestandarddiscountpercent) | decimal (7, 6) | Standard discount for the line. This is automatically computed according to discount conditions. `Required` `Default(0)` `ReadOnly` 
| [LineToDate](Crm.Sales.SalesOrderLines.md#linetodate) | date __nullable__ | When selling a service valid only for a period, denotes the end of the period. null means that it is unknown or N/A. `Introduced in version 20.1` 
| [Notes](Crm.Sales.SalesOrderLines.md#notes) | string (max) __nullable__ | Notes for this SalesOrderLine. 
| [ParentLineNo](Crm.Sales.SalesOrderLines.md#parentlineno) | int32 __nullable__ | The number of the line within the parent document, which the current line executes. null when the current line does not execute parent line. `Filter(eq)` 
| [PersistLot](Crm.Sales.SalesOrderLines.md#persistlot) | boolean | If checked specifies that the lot in the line cannot be changed in the sub-documents created by the current document. `Required` `Default(false)` `Filter(eq)` 
| [ProductDescription](Crm.Sales.SalesOrderLines.md#productdescription) | [MultilanguageString](../data-types.md#multilanguagestring) | The name of the sold product at the time the sale was made. `Required` `Filter(like)` 
| [Quantity](Crm.Sales.SalesOrderLines.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity sold. `Unit: QuantityUnit` `Required` `Default(1)` `Filter(ge;le)` 
| [QuantityBase](Crm.Sales.SalesOrderLines.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The equivalent of Quantity in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [RequestedQuantity](Crm.Sales.SalesOrderLines.md#requestedquantity) | [Quantity (12, 3)](../data-types.md#quantity) __nullable__ | Quantity requested by customer. `Unit: QuantityUnit` 
| [RequiredDeliveryDate](Crm.Sales.SalesOrderLines.md#requireddeliverydate) | date __nullable__ | The required (contracted) delivery date for the line. `Filter(ge;le)` 
| [StandardQuantityBase](Crm.Sales.SalesOrderLines.md#standardquantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2` 
| [StandardUnitPrice](Crm.Sales.SalesOrderLines.md#standardunitprice) | [Amount (14, 5)](../data-types.md#amount) __nullable__ | Standard unit price of the product during the creation of the sales order line. `Currency: SalesOrder.DocumentCurrency` `ReadOnly` 
| [UnitPrice](Crm.Sales.SalesOrderLines.md#unitprice) | [Amount (14, 5)](../data-types.md#amount) | Unit price of the product in the currency of the sales order and in the unit of measure, as specified by QuantityUnitId. `Currency: SalesOrder.DocumentCurrency` `Required` `Default(0)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [BonusProgram](Crm.Sales.SalesOrderLines.md#bonusprogram) | [BonusPrograms](Crm.Marketing.BonusPrograms.md) (nullable) | The bonus program, based on which the line was automatically added. null when the line was not added for bonus program. `Filter(multi eq)` |
| [Document](Crm.Sales.SalesOrderLines.md#document) | [SalesOrders](Crm.Sales.SalesOrders.md) | The `SalesOrder`(Crm.Sales.SalesOrderLines.md#salesorder) to which this SalesOrderLine belongs. `Required` `Filter(multi eq)` |
| [IntrastatTransportCountry](Crm.Sales.SalesOrderLines.md#intrastattransportcountry) | [Countries](General.Geography.Countries.md) (nullable) | Country of origin of the transport company; used for Intrastat reporting. `Filter(multi eq)` |
| [LineDealType](Crm.Sales.SalesOrderLines.md#linedealtype) | [DealTypes](Finance.Vat.DealTypes.md) (nullable) | Deal type to be passed to the invoice line. If deal type in entered then the invoice creates VAT entry for this deal type. `Filter(multi eq)` |
| [LineDiscount](Crm.Sales.SalesOrderLines.md#linediscount) | [LineDiscounts](Crm.LineDiscounts.md) (nullable) | The line discount type used to form the Line_Standard_<br />Discount_Percent. `Filter(multi eq)` |
| [LineEndCustomerParty](Crm.Sales.SalesOrderLines.md#lineendcustomerparty) | [Parties](General.Contacts.Parties.md) (nullable) | The end customer is the customer of the dealer. It is stored for information purposes only. The end customer may not have customer definition, just party. `Filter(multi eq)` `Introduced in version 20.1` |
| [LineStore](Crm.Sales.SalesOrderLines.md#linestore) | [Stores](Logistics.Inventory.Stores.md) (nullable) | The store which should be used to issue the goods for the line. null means to use the store from the header. `Filter(multi eq;like)` |
| [Lot](Crm.Sales.SalesOrderLines.md#lot) | [Lots](Logistics.Inventory.Lots.md) (nullable) | Specifies the lot from which the goods should be issued. null means that the lot will be specified at a later stage (store order, etc.). `Filter(multi eq)` |
| [ParentDocument](Crm.Sales.SalesOrderLines.md#parentdocument) | [Documents](General.Documents.md) (nullable) | The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)` |
| [Product](Crm.Sales.SalesOrderLines.md#product) | [Products](General.Products.Products.md) | The product sold. `Required` `Filter(multi eq)` |
| [ProductCode](Crm.Sales.SalesOrderLines.md#productcode) | [ProductCodes](General.Products.ProductCodes.md) (nullable) | Used to set the Product_Id thru the coding systems. `Filter(multi eq)` |
| [ProductPrice](Crm.Sales.SalesOrderLines.md#productprice) | [ProductPrices](Crm.ProductPrices.md) (nullable) | Not null when the price has been selected from the list of valid standard prices. `Filter(multi eq)` |
| [ProductVariant](Crm.Sales.SalesOrderLines.md#productvariant) | [ProductVariants](General.ProductVariants.md) (nullable) | If specified determines which product variant of the current product in this line is used. `Filter(multi eq)` |
| [PromotionalPackage](Crm.Sales.SalesOrderLines.md#promotionalpackage) | [PromotionalPackages](Crm.PromotionalPackages.md) (nullable) | The promotional package, based on which the line was added. null when the line was not added as part of a promotional package. `Filter(multi eq)` `ReadOnly` |
| [QuantityUnit](Crm.Sales.SalesOrderLines.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |
| [ReturnForInvoiceLine](Crm.Sales.SalesOrderLines.md#returnforinvoiceline) | [InvoiceLines](Crm.Invoicing.InvoiceLines.md) (nullable) | When specified, indicates that the current line is a return for products, invoiced with the specified invoice line. `Filter(multi eq)` |
| [ReturnForSalesOrderLine](Crm.Sales.SalesOrderLines.md#returnforsalesorderline) | [SalesOrderLines](Crm.Sales.SalesOrderLines.md) (nullable) | When specified indicates that the goods sold in Return_For_Sales_<br />Order_Line_Id are returned with the current line. `Filter(multi eq)` |
| [SalesOrder](Crm.Sales.SalesOrderLines.md#salesorder) | [SalesOrders](Crm.Sales.SalesOrders.md) | The `SalesOrder`(Crm.Sales.SalesOrderLines.md#salesorder) to which this SalesOrderLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [SerialNumber](Crm.Sales.SalesOrderLines.md#serialnumber) | [SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable) | Which serial number to receive/issue. null means that serial number is unknown or not applicable. `Filter(multi eq)` |
| [StoreBin](Crm.Sales.SalesOrderLines.md#storebin) | [StoreBins](Logistics.Inventory.StoreBins.md) (nullable) | The bin from which the goods should be withdrawn. null means that the bin will be specified at a later stage (store order, etc.). `Filter(multi eq)` |


## Attribute Details

### DeliveryTermsCode

Mode of delivery, like CIF, FOB, etc. Used also in Intrastat reporting.

_Type_: **[DeliveryTerms](Crm.Sales.SalesOrderLines.md#deliverytermscode) __nullable__**  
Generic enum type for DeliveryTerms properties  
_Allowed Values (Finance.Intrastat.DeliveryTerms Enum Members)_  

| Value | Description |
| ---- | --- |
| ExWorks | ExWorks value. Stored as 'EXW'. <br /> _Database Value:_ 'EXW' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'ExWorks' |
| FrancoCarrier | FrancoCarrier value. Stored as 'FCA'. <br /> _Database Value:_ 'FCA' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'FrancoCarrier' |
| FreeAlongsideShip | FreeAlongsideShip value. Stored as 'FAS'. <br /> _Database Value:_ 'FAS' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'FreeAlongsideShip' |
| FreeOnBoard | FreeOnBoard value. Stored as 'FOB'. <br /> _Database Value:_ 'FOB' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'FreeOnBoard' |
| CostAndFreightCF | CostAndFreightCF value. Stored as 'CFR'. <br /> _Database Value:_ 'CFR' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'CostAndFreightCF' |
| CostInsuranceAndFreight | CostInsuranceAndFreight value. Stored as 'CIF'. <br /> _Database Value:_ 'CIF' <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'CostInsuranceAndFreight' |
| CarriagePaidTo | CarriagePaidTo value. Stored as 'CPT'. <br /> _Database Value:_ 'CPT' <br /> _Model Value:_ 6 <br /> _Domain API Value:_ 'CarriagePaidTo' |
| CarriageAndInsurancePaidTo | CarriageAndInsurancePaidTo value. Stored as 'CIP'. <br /> _Database Value:_ 'CIP' <br /> _Model Value:_ 7 <br /> _Domain API Value:_ 'CarriageAndInsurancePaidTo' |
| DeliveredAtPlace | DeliveredAtPlace value. Stored as 'DAP'. <br /> _Database Value:_ 'DAP' <br /> _Model Value:_ 8 <br /> _Domain API Value:_ 'DeliveredAtPlace' |
| DeliveredAtTerminal | DeliveredAtTerminal value. Stored as 'DAT'. <br /> _Database Value:_ 'DAT' <br /> _Model Value:_ 9 <br /> _Domain API Value:_ 'DeliveredAtTerminal' |
| DeliveredDutyPaid | DeliveredDutyPaid value. Stored as 'DDP'. <br /> _Database Value:_ 'DDP' <br /> _Model Value:_ 10 <br /> _Domain API Value:_ 'DeliveredDutyPaid' |
| DeliveredAtPlaceUnloaded | DeliveredAtPlaceUnloaded value. Stored as 'DPU'. <br /> _Database Value:_ 'DPU' <br /> _Model Value:_ 11 <br /> _Domain API Value:_ 'DeliveredAtPlaceUnloaded' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.DeliveryTermsCode`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.DeliveryTermsCode`
### GuaranteePeriodDays

Guarantee period in days for the offered product. null for non-serviced products.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.Product != null), obj.Product.GuaranteePeriodDays, obj.GuaranteePeriodDays)`
### HistoricalDataJson

Used only for lines, which are returns. It is a JSON-formatted string, containing data from the original sale. `Introduced in version 19.1`

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### HistoricalUnitCost

Used for returning of goods that are sold before the exploitation of the system. `Currency: SalesOrder.DocumentCurrency` `Filter(eq;ge;le)`

_Type_: **[Amount (14, 5)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IntrastatApplyDate

Specifies in which period for Intrastat declaration must be included the current operation. Used only when the invoice is issued in different period than the one, that the operation must be included. If not set the document date is used. `Introduced in version 21.1.3.83`

_Type_: **datetime __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### IntrastatTransactionNatureCode

Transaction nature; used for Intrastat reporting.

_Type_: **[TransactionNature](Crm.Sales.SalesOrderLines.md#intrastattransactionnaturecode) __nullable__**  
Generic enum type for TransactionNature properties  
_Allowed Values (Finance.Intrastat.TransactionNature Enum Members)_  

| Value | Description |
| ---- | --- |
| OutrightPurchaseOrSale | OutrightPurchaseOrSale value. Stored as '11'. <br /> _Database Value:_ '11' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'OutrightPurchaseOrSale' |
| SupplyForSale | SupplyForSale value. Stored as '12'. <br /> _Database Value:_ '12' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'SupplyForSale' |
| BarterTrade | BarterTrade value. Stored as '13'. <br /> _Database Value:_ '13' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'BarterTrade' |
| FinancialLeasing | FinancialLeasing value. Stored as '14'. <br /> _Database Value:_ '14' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'FinancialLeasing' |
| OtherTransactions | OtherTransactions value. Stored as '19'. <br /> _Database Value:_ '19' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'OtherTransactions' |
| ReturnStokilizing | ReturnStokilizing value. Stored as '21'. <br /> _Database Value:_ '21' <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'ReturnStokilizing' |
| ReplacementFor<br />ReturnedGoods | ReplacementFor<br />ReturnedGoods value. Stored as '22'. <br /> _Database Value:_ '22' <br /> _Model Value:_ 6 <br /> _Domain API Value:_ 'ReplacementFor<br />ReturnedGoods' |
| ReplacementOfGoods<br />NotBeingReturned | ReplacementOfGoods<br />NotBeingReturned value. Stored as '23'. <br /> _Database Value:_ '23' <br /> _Model Value:_ 7 <br /> _Domain API Value:_ 'ReplacementOfGoods<br />NotBeingReturned' |
| ReturnOrExchange<br />OfOtherGoods | ReturnOrExchange<br />OfOtherGoods value. Stored as '29'. <br /> _Database Value:_ '29' <br /> _Model Value:_ 8 <br /> _Domain API Value:_ 'ReturnOrExchange<br />OfOtherGoods' |
| SpecificTransactions | SpecificTransactions value. Stored as '60'. <br /> _Database Value:_ '60' <br /> _Model Value:_ 9 <br /> _Domain API Value:_ 'SpecificTransactions' |
| OperationsOnJointProjects | OperationsOnJointProjects value. Stored as '70'. <br /> _Database Value:_ '70' <br /> _Model Value:_ 10 <br /> _Domain API Value:_ 'OperationsOnJointProjects' |
| TransactionsOf<br />ConstructionMaterials<br />AndEquipment | TransactionsOf<br />ConstructionMaterials<br />AndEquipment value. Stored as '80'. <br /> _Database Value:_ '80' <br /> _Model Value:_ 11 <br /> _Domain API Value:_ 'TransactionsOf<br />ConstructionMaterials<br />AndEquipment' |
| OtherTransactionsLeasing | OtherTransactionsLeasing value. Stored as '91'. <br /> _Database Value:_ '91' <br /> _Model Value:_ 12 <br /> _Domain API Value:_ 'OtherTransactionsLeasing' |
| OtherTransactionsOther | OtherTransactionsOther value. Stored as '99'. <br /> _Database Value:_ '99' <br /> _Model Value:_ 13 <br /> _Domain API Value:_ 'OtherTransactionsOther' |
| DealsThatInclude<br />PropertyTransfers<br />WithoutFinancial<br />CompensationOr<br />CompensationIn<br />Kind | DealsThatInclude<br />PropertyTransfers<br />WithoutFinancial<br />CompensationOr<br />CompensationIn<br />Kind value. Stored as '30'. <br /> _Database Value:_ '30' <br /> _Model Value:_ 14 <br /> _Domain API Value:_ 'DealsThatInclude<br />PropertyTransfers<br />WithoutFinancial<br />CompensationOr<br />CompensationIn<br />Kind' |
| GoodsThatAreExpected<br />ToBeReturnedTo<br />Sender | GoodsThatAreExpected<br />ToBeReturnedTo<br />Sender value. Stored as '41'. <br /> _Database Value:_ '41' <br /> _Model Value:_ 15 <br /> _Domain API Value:_ 'GoodsThatAreExpected<br />ToBeReturnedTo<br />Sender' |
| GoodsThatAreNot<br />ExpectedToBeReturned<br />ToSender | GoodsThatAreNot<br />ExpectedToBeReturned<br />ToSender value. Stored as '42'. <br /> _Database Value:_ '42' <br /> _Model Value:_ 16 <br /> _Domain API Value:_ 'GoodsThatAreNot<br />ExpectedToBeReturned<br />ToSender' |
| GoodsThatAreReturned<br />ToSender | GoodsThatAreReturned<br />ToSender value. Stored as '51'. <br /> _Database Value:_ '51' <br /> _Model Value:_ 17 <br /> _Domain API Value:_ 'GoodsThatAreReturned<br />ToSender' |
| GoodsThatAreNot<br />ReturnedToSender | GoodsThatAreNot<br />ReturnedToSender value. Stored as '52'. <br /> _Database Value:_ '52' <br /> _Model Value:_ 18 <br /> _Domain API Value:_ 'GoodsThatAreNot<br />ReturnedToSender' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.IntrastatTransactionNatureCode`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.IntrastatTransactionNatureCode`
### IntrastatTransportModeCode

Transport mode; used for Intrastat reporting.

_Type_: **[TransportMode](Crm.Sales.SalesOrderLines.md#intrastattransportmodecode) __nullable__**  
Generic enum type for TransportMode properties  
_Allowed Values (Finance.Intrastat.TransportMode Enum Members)_  

| Value | Description |
| ---- | --- |
| Shipping | Shipping value. Stored as '1'. <br /> _Database Value:_ '1' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Shipping' |
| RailwayTransport | RailwayTransport value. Stored as '2'. <br /> _Database Value:_ '2' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'RailwayTransport' |
| RoadTransport | RoadTransport value. Stored as '3'. <br /> _Database Value:_ '3' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'RoadTransport' |
| AirTransport | AirTransport value. Stored as '4'. <br /> _Database Value:_ '4' <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'AirTransport' |
| Mail | Mail value. Stored as '5'. <br /> _Database Value:_ '5' <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'Mail' |
| FixedTransport<br />Installations | FixedTransport<br />Installations value. Stored as '6'. <br /> _Database Value:_ '6' <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'FixedTransport<br />Installations' |
| RiverTransport | RiverTransport value. Stored as '7'. <br /> _Database Value:_ '7' <br /> _Model Value:_ 6 <br /> _Domain API Value:_ 'RiverTransport' |
| SelfPropelled | SelfPropelled value. Stored as '8'. <br /> _Database Value:_ '8' <br /> _Model Value:_ 7 <br /> _Domain API Value:_ 'SelfPropelled' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.IntrastatTransportModeCode`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.IntrastatTransportModeCode`
### LineAmount

The total amount for the line. Equals to Quantity * Unit_Price, less the discounts. `Currency: SalesOrder.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.UnitPrice == null)) OrElse ( ( obj.Quantity.Value == 0) AndAlso ( obj.UnitPrice.Value == 0))), obj.LineAmount, ( ( ( obj.Quantity.Value * obj.UnitPrice) * ( 1 - obj.LineStandardDiscountPercent)) * ( 1 - obj.LineCustomDiscountPercent)).Round( ))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.UnitPrice == null)) OrElse ( ( obj.Quantity.Value == 0) AndAlso ( obj.UnitPrice.Value == 0))), obj.LineAmount, ( ( ( obj.Quantity.Value * obj.UnitPrice) * ( 1 - obj.LineStandardDiscountPercent)) * ( 1 - obj.LineCustomDiscountPercent)).Round( ))`
### LineCustomDiscountPercent

User-defined discount for the line. `Required` `Default(0)` `Filter(ge;le)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### LineFromDate

When selling a service valid only for a period, denotes the beginning of the period. null means that it is unknown or N/A. `Introduced in version 20.1`

_Type_: **date __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.FromDate`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.FromDate`
### LineNo

Consecutive number of the line within the sales order. `Required` `Filter(eq)` `ORD`

_Type_: **int32**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  

_Back-End Default Expression:_  
`( obj.SalesOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.SalesOrder.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### LineStandardDiscountPercent

Standard discount for the line. This is automatically computed according to discount conditions. `Required` `Default(0)` `ReadOnly`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

_Back-End Default Expression:_  
`obj.DetermineLineStandardDiscountPercent( obj.Product, obj.LineDiscount, obj.BonusProgram, obj.PromotionalPackage, obj.ReturnForSalesOrderLine)`

_Front-End Recalc Expressions:_  
`obj.DetermineLineStandardDiscountPercent( obj.Product, obj.LineDiscount, obj.BonusProgram, obj.PromotionalPackage, obj.ReturnForSalesOrderLine)`
### LineToDate

When selling a service valid only for a period, denotes the end of the period. null means that it is unknown or N/A. `Introduced in version 20.1`

_Type_: **date __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.ToDate`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.ToDate`
### Notes

Notes for this SalesOrderLine.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ParentLineNo

The number of the line within the parent document, which the current line executes. null when the current line does not execute parent line. `Filter(eq)`

_Type_: **int32 __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  

### PersistLot

If checked specifies that the lot in the line cannot be changed in the sub-documents created by the current document. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

_Back-End Default Expression:_  
`( ( obj.Lot != null) AndAlso obj.SalesOrder.Customer.PersistSalesOrdersLots)`

_Front-End Recalc Expressions:_  
`( ( obj.Lot != null) AndAlso obj.SalesOrder.Customer.PersistSalesOrdersLots)`
### ProductDescription

The name of the sold product at the time the sale was made. `Required` `Filter(like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.Product.Name`

_Front-End Recalc Expressions:_  
`obj.Product.Name`
### Quantity

The quantity sold. `Unit: QuantityUnit` `Required` `Default(1)` `Filter(ge;le)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### QuantityBase

The equivalent of Quantity in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### RequestedQuantity

Quantity requested by customer. `Unit: QuantityUnit`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### RequiredDeliveryDate

The required (contracted) delivery date for the line. `Filter(ge;le)`

_Type_: **date __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.SalesOrder.RequiredDeliveryDate`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.RequiredDeliveryDate`
### StandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### StandardUnitPrice

Standard unit price of the product during the creation of the sales order line. `Currency: SalesOrder.DocumentCurrency` `ReadOnly`

_Type_: **[Amount (14, 5)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.Product.GetStandardUnitPrice( obj.QuantityUnit, obj.SalesOrder.DocumentCurrency, obj.SalesOrder.CurrencyDirectory)`

_Front-End Recalc Expressions:_  
`obj.Product.GetStandardUnitPrice( obj.QuantityUnit, obj.SalesOrder.DocumentCurrency, obj.SalesOrder.CurrencyDirectory)`
### UnitPrice

Unit price of the product in the currency of the sales order and in the unit of measure, as specified by QuantityUnitId. `Currency: SalesOrder.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 5)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Back-End Default Expression:_  
`( CalculateUnitPriceFromLineAmount( obj.LineAmount, obj.Quantity, obj.LineStandardDiscountPercent, obj.LineCustomDiscountPercent) ?? obj.UnitPrice)`

_Front-End Recalc Expressions:_  
`obj.CalculateUnitPrice( obj.SalesOrder, obj.QuantityUnit, obj.Product, obj.ProductPrice)`

## Reference Details

### BonusProgram

The bonus program, based on which the line was automatically added. null when the line was not added for bonus program. `Filter(multi eq)`

_Type_: **[BonusPrograms](Crm.Marketing.BonusPrograms.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReturnForSalesOrderLine != null), null, obj.BonusProgram)`
### Document

The `SalesOrder`(Crm.Sales.SalesOrderLines.md#salesorder) to which this SalesOrderLine belongs. `Required` `Filter(multi eq)`

_Type_: **[SalesOrders](Crm.Sales.SalesOrders.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### IntrastatTransportCountry

Country of origin of the transport company; used for Intrastat reporting. `Filter(multi eq)`

_Type_: **[Countries](General.Geography.Countries.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.SalesOrder.IntrastatTransportCountry`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.IntrastatTransportCountry`
### LineDealType

Deal type to be passed to the invoice line. If deal type in entered then the invoice creates VAT entry for this deal type. `Filter(multi eq)`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.SalesOrder.DealType`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.DealType`
### LineDiscount

The line discount type used to form the Line_Standard_Discount_Percent. `Filter(multi eq)`

_Type_: **[LineDiscounts](Crm.LineDiscounts.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.DetermineLineDiscount( obj.SalesOrder.EnterpriseCompany, obj.SalesOrder.EnterpriseCompanyLocation, obj.RequiredDeliveryDate, obj.SalesOrder.Customer, obj.SalesOrder.ShipToCustomer, obj.SalesOrder.DistributionChannel, obj.SalesOrder.PriceList, obj.Product, obj.Quantity, obj.QuantityUnit, obj.ReturnForSalesOrderLine, obj.BonusProgram, obj.PromotionalPackage, obj.LineDiscount)`
### LineEndCustomerParty

The end customer is the customer of the dealer. It is stored for information purposes only. The end customer may not have customer definition, just party. `Filter(multi eq)` `Introduced in version 20.1`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.SalesOrder.EndCustomerParty`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.EndCustomerParty`
### LineStore

The store which should be used to issue the goods for the line. null means to use the store from the header. `Filter(multi eq;like)`

_Type_: **[Stores](Logistics.Inventory.Stores.md) (nullable)**  
_Supported Filters_: **Equals, Like, EqualsIn**  

_Back-End Default Expression:_  
`obj.SalesOrder.Store`

_Front-End Recalc Expressions:_  
`obj.SalesOrder.Store`
### Lot

Specifies the lot from which the goods should be issued. null means that the lot will be specified at a later stage (store order, etc.). `Filter(multi eq)`

_Type_: **[Lots](Logistics.Inventory.Lots.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ParentDocument

The document, which the current line executes. null when the current line does not execute another line. `Filter(multi eq)`

_Type_: **[Documents](General.Documents.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

The product sold. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`IIF( ( ( obj.BonusProgram != null) AndAlso ( Convert( obj.BonusProgram.BonusAction, Int32) == 0)), obj.BonusProgram.BonusProduct, obj.ProductCode.Product.IfNullThen( obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( obj.BonusProgram != null) AndAlso ( Convert( obj.BonusProgram.BonusAction, Int32) == 0)), obj.BonusProgram.BonusProduct, obj.ProductCode.Product.IfNullThen( obj.Product))`
### ProductCode

Used to set the Product_Id thru the coding systems. `Filter(multi eq)`

_Type_: **[ProductCodes](General.Products.ProductCodes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ProductPrice

Not null when the price has been selected from the list of valid standard prices. `Filter(multi eq)`

_Type_: **[ProductPrices](Crm.ProductPrices.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.BonusProgram != null) AndAlso ( Convert( obj.BonusProgram.BonusAction, Int32) == 0)) OrElse ( obj.ReturnForSalesOrderLine != null)), null, DetermineProductPrice( obj.Product, obj.Quantity, obj.QuantityUnit, obj.RequiredDeliveryDate, obj.SalesOrder.Customer, obj.SalesOrder.ShipToCustomer, obj.SalesOrder.EnterpriseCompany, obj.SalesOrder.EnterpriseCompanyLocation, obj.SalesOrder.DistributionChannel, obj.SalesOrder.PriceList, obj.ProductPrice))`
### ProductVariant

If specified determines which product variant of the current product in this line is used. `Filter(multi eq)`

_Type_: **[ProductVariants](General.ProductVariants.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PromotionalPackage

The promotional package, based on which the line was added. null when the line was not added as part of a promotional package. `Filter(multi eq)` `ReadOnly`

_Type_: **[PromotionalPackages](Crm.PromotionalPackages.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReturnForSalesOrderLine != null), null, obj.PromotionalPackage)`
### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.ProductCode.CodingSystem.DefaultMeasurementUnit.IfNullThen( obj.Product.MeasurementUnit.IfNullThen( obj.QuantityUnit))`

_Front-End Recalc Expressions:_  
`obj.ProductCode.CodingSystem.DefaultMeasurementUnit.IfNullThen( obj.Product.MeasurementUnit.IfNullThen( obj.QuantityUnit))`
### ReturnForInvoiceLine

When specified, indicates that the current line is a return for products, invoiced with the specified invoice line. `Filter(multi eq)`

_Type_: **[InvoiceLines](Crm.Invoicing.InvoiceLines.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### ReturnForSalesOrderLine

When specified indicates that the goods sold in Return_For_Sales_Order_Line_Id are returned with the current line. `Filter(multi eq)`

_Type_: **[SalesOrderLines](Crm.Sales.SalesOrderLines.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### SalesOrder

The `SalesOrder`(Crm.Sales.SalesOrderLines.md#salesorder) to which this SalesOrderLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[SalesOrders](Crm.Sales.SalesOrders.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### SerialNumber

Which serial number to receive/issue. null means that serial number is unknown or not applicable. `Filter(multi eq)`

_Type_: **[SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### StoreBin

The bin from which the goods should be withdrawn. null means that the bin will be specified at a later stage (store order, etc.). `Filter(multi eq)`

_Type_: **[StoreBins](Logistics.Inventory.StoreBins.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Crm.Sales.SalesOrderLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Sales.SalesOrderLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Sales_SalesOrderLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Sales_SalesOrderLines?$top=10>

