---
uid: Logistics.Procurement.PurchaseInvoiceLines
---
# Logistics.Procurement.PurchaseInvoiceLines Entity

**Namespace:** [Logistics.Procurement](Logistics.Procurement.md)  

Contains detail lines for purchase invoice documents. Entity: Scm_Purchase_Invoice_Lines

## Default Visualization
Default Display Text Format:  
_{LineNo}. {PurchaseInvoice.DocumentNo} {PurchaseInvoice.DocumentType.TypeName:T}_  
Default Search Members:  
_PurchaseInvoice.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Logistics.Procurement.PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md)  
Aggregate Root:  
[Logistics.Procurement.PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DeliveryTermsCode](Logistics.Procurement.PurchaseInvoiceLines.md#deliverytermscode) | [DeliveryTerms](Logistics.Procurement.PurchaseInvoiceLines.md#deliverytermscode) __nullable__ | Mode of delivery, like CIF, FOB, etc. Used also in Intrastat reporting. 
| [Id](Logistics.Procurement.PurchaseInvoiceLines.md#id) | guid |  
| [IntrastatApplyDate](Logistics.Procurement.PurchaseInvoiceLines.md#intrastatapplydate) | datetime __nullable__ | Specifies in which period for Intrastat declaration must be included the current operation. Used only when the invoice is issued in different period than the one, that the operation must be included. If not set the document date is used. 
| [IntrastatTransaction<br />NatureCode](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransactionnaturecode) | [TransactionNature](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransactionnaturecode) __nullable__ | Transaction nature; used for Intrastat reporting. 
| [IntrastatTransportModeCode](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransportmodecode) | [TransportMode](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransportmodecode) __nullable__ | Transport mode; used for Intrastat reporting. 
| [LineAmount](Logistics.Procurement.PurchaseInvoiceLines.md#lineamount) | [Amount (14, 2)](../data-types.md#amount) | The total invoiced amount for this line in the document currency of the invoice. `Currency: PurchaseInvoice.DocumentCurrency` `Required` `Default(0)` 
| [LineNo](Logistics.Procurement.PurchaseInvoiceLines.md#lineno) | int32 | Consecutive line number within the invoice. `Required` 
| [Notes](Logistics.Procurement.PurchaseInvoiceLines.md#notes) | string (254) __nullable__ | Notes for this PurchaseInvoiceLine. 
| [ProductName](Logistics.Procurement.PurchaseInvoiceLines.md#productname) | [MultilanguageString](../data-types.md#multilanguagestring) | The name of the invoiced product, initially copied from the name in the product definition. The field can be edited by the user. `Required` 
| [Quantity](Logistics.Procurement.PurchaseInvoiceLines.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The invoiced quantity. `Unit: QuantityUnit` `Required` `Default(1)` 
| [QuantityBase](Logistics.Procurement.PurchaseInvoiceLines.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The equivalence of Quantity in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 
| [StandardQuantityBase](Logistics.Procurement.PurchaseInvoiceLines.md#standardquantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2` 
| [UnitPrice](Logistics.Procurement.PurchaseInvoiceLines.md#unitprice) | [Amount (14, 5)](../data-types.md#amount) | The unit price of the invoiced item in the document currency of the invoice. `Currency: PurchaseInvoice.DocumentCurrency` `Required` `Default(0)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Logistics.Procurement.PurchaseInvoiceLines.md#document) | [PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md) | The `PurchaseInvoice`(Logistics.Procurement.PurchaseInvoiceLines.md#purchaseinvoice) to which this PurchaseInvoiceLine belongs. `Required` `Filter(multi eq)` |
| [IntrastatDestinationRegion](Logistics.Procurement.PurchaseInvoiceLines.md#intrastatdestinationregion) | [AdministrativeRegions](General.Geography.AdministrativeRegions.md) (nullable) | Region, which is the final destination of the goods. Used for Intrastat reporting. `Filter(multi eq)` |
| [IntrastatTransportCountry](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransportcountry) | [Countries](General.Geography.Countries.md) (nullable) | Country of origin of the transport company; used for Intrastat reporting. `Filter(multi eq)` |
| [LineCostCenter](Logistics.Procurement.PurchaseInvoiceLines.md#linecostcenter) | [CostCenters](Finance.Accounting.CostCenters.md) (nullable) | Cost center for which the amount from this row will be accounted. `Filter(multi eq)` |
| [LineDealType](Logistics.Procurement.PurchaseInvoiceLines.md#linedealtype) | [DealTypes](Finance.Vat.DealTypes.md) (nullable) | Deal type for this line. If deal type in the line is different from deal type in the header another VAT entry is created. `Filter(multi eq)` |
| [OriginCountry](Logistics.Procurement.PurchaseInvoiceLines.md#origincountry) | [Countries](General.Geography.Countries.md) (nullable) | The country of origin of the invoiced product. Should be non-null only when this is different from the country of origin from the product definition. `Filter(multi eq)` |
| [Product](Logistics.Procurement.PurchaseInvoiceLines.md#product) | [Products](General.Products.Products.md) | The invoiced product. `Required` `Filter(multi eq)` |
| [PurchaseInvoice](Logistics.Procurement.PurchaseInvoiceLines.md#purchaseinvoice) | [PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md) | The `PurchaseInvoice`(Logistics.Procurement.PurchaseInvoiceLines.md#purchaseinvoice) to which this PurchaseInvoiceLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [QuantityUnit](Logistics.Procurement.PurchaseInvoiceLines.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |
| [ReceivingOrderLine](Logistics.Procurement.PurchaseInvoiceLines.md#receivingorderline) | [ReceivingOrderLines](Logistics.Procurement.ReceivingOrderLines.md) (nullable) | The receiving order line, which is invoiced by the current line. null means that this line is not directly related to receiving order line. `Filter(multi eq)` |
| [SaleLineDealType](Logistics.Procurement.PurchaseInvoiceLines.md#salelinedealtype) | [DealTypes](Finance.Vat.DealTypes.md) (nullable) | Sale deal type for this line. If sale deal type in the line is different from sale deal type in the header another Sales VAT entry is created. `Filter(multi eq)` |


## Attribute Details

### DeliveryTermsCode

Mode of delivery, like CIF, FOB, etc. Used also in Intrastat reporting.

_Type_: **[DeliveryTerms](Logistics.Procurement.PurchaseInvoiceLines.md#deliverytermscode) __nullable__**  
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
`obj.PurchaseInvoice.DeliveryTermsCode`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.DeliveryTermsCode`
### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IntrastatApplyDate

Specifies in which period for Intrastat declaration must be included the current operation. Used only when the invoice is issued in different period than the one, that the operation must be included. If not set the document date is used.

_Type_: **datetime __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### IntrastatTransactionNatureCode

Transaction nature; used for Intrastat reporting.

_Type_: **[TransactionNature](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransactionnaturecode) __nullable__**  
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
`obj.PurchaseInvoice.IntrastatTransactionNatureCode`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.IntrastatTransactionNatureCode`
### IntrastatTransportModeCode

Transport mode; used for Intrastat reporting.

_Type_: **[TransportMode](Logistics.Procurement.PurchaseInvoiceLines.md#intrastattransportmodecode) __nullable__**  
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
`obj.PurchaseInvoice.IntrastatTransportModeCode`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.IntrastatTransportModeCode`
### LineAmount

The total invoiced amount for this line in the document currency of the invoice. `Currency: PurchaseInvoice.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`( obj.UnitPrice * obj.Quantity.Value).Round( )`
### LineNo

Consecutive line number within the invoice. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.PurchaseInvoice.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.PurchaseInvoice.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Notes

Notes for this PurchaseInvoiceLine.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ProductName

The name of the invoiced product, initially copied from the name in the product definition. The field can be edited by the user. `Required`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.Product.Name`

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReceivingOrderLine != null), obj.ReceivingOrderLine.ProductDescription, obj.Product.Name)`
### Quantity

The invoiced quantity. `Unit: QuantityUnit` `Required` `Default(1)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReceivingOrderLine != null), obj.ReceivingOrderLine.ConfirmedQuantity.IfNullThen( obj.ReceivingOrderLine.Quantity), obj.Quantity)`
### QuantityBase

The equivalence of Quantity in the base measurement category of the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### StandardQuantityBase

The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.StandardQuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### UnitPrice

The unit price of the invoiced item in the document currency of the invoice. `Currency: PurchaseInvoice.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 5)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReceivingOrderLine != null), obj.ReceivingOrderLine.PricePerUnit, obj.GetDefaultProductPrice( obj.Product))`

## Reference Details

### Document

The `PurchaseInvoice`(Logistics.Procurement.PurchaseInvoiceLines.md#purchaseinvoice) to which this PurchaseInvoiceLine belongs. `Required` `Filter(multi eq)`

_Type_: **[PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### IntrastatDestinationRegion

Region, which is the final destination of the goods. Used for Intrastat reporting. `Filter(multi eq)`

_Type_: **[AdministrativeRegions](General.Geography.AdministrativeRegions.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.PurchaseInvoice.IntrastatDestinationRegion`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.IntrastatDestinationRegion`
### IntrastatTransportCountry

Country of origin of the transport company; used for Intrastat reporting. `Filter(multi eq)`

_Type_: **[Countries](General.Geography.Countries.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.PurchaseInvoice.IntrastatTransportCountry`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.IntrastatTransportCountry`
### LineCostCenter

Cost center for which the amount from this row will be accounted. `Filter(multi eq)`

_Type_: **[CostCenters](Finance.Accounting.CostCenters.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### LineDealType

Deal type for this line. If deal type in the line is different from deal type in the header another VAT entry is created. `Filter(multi eq)`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.PurchaseInvoice.DealType`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.DealType`
### OriginCountry

The country of origin of the invoiced product. Should be non-null only when this is different from the country of origin from the product definition. `Filter(multi eq)`

_Type_: **[Countries](General.Geography.Countries.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

The invoiced product. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReceivingOrderLine != null), obj.ReceivingOrderLine.Product, obj.Product)`
### PurchaseInvoice

The `PurchaseInvoice`(Logistics.Procurement.PurchaseInvoiceLines.md#purchaseinvoice) to which this PurchaseInvoiceLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PurchaseInvoices](Logistics.Procurement.PurchaseInvoices.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.ReceivingOrderLine != null), obj.ReceivingOrderLine.QuantityUnit, IIF( ( obj.Product != null), obj.Product.MeasurementUnit, obj.QuantityUnit))`
### ReceivingOrderLine

The receiving order line, which is invoiced by the current line. null means that this line is not directly related to receiving order line. `Filter(multi eq)`

_Type_: **[ReceivingOrderLines](Logistics.Procurement.ReceivingOrderLines.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### SaleLineDealType

Sale deal type for this line. If sale deal type in the line is different from sale deal type in the header another Sales VAT entry is created. `Filter(multi eq)`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.PurchaseInvoice.SaleDealType`

_Front-End Recalc Expressions:_  
`obj.PurchaseInvoice.SaleDealType`


## Business Rules

[!list limit=1000 erp.entity=Logistics.Procurement.PurchaseInvoiceLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Procurement.PurchaseInvoiceLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Procurement_PurchaseInvoiceLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Procurement_PurchaseInvoiceLines?$top=10>

