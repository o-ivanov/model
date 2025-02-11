---
uid: Crm.Presales.OfferLines
---
# Crm.Presales.OfferLines Entity

**Namespace:** [Crm.Presales](Crm.Presales.md)  

Detail records (lines) of Offers. Entity: Crm_Offer_Lines

## Default Visualization
Default Display Text Format:  
_{LineNo}. {Offer.DocumentNo} {Offer.DocumentType.TypeName:T}_  
Default Search Members:  
_Offer.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Crm.Presales.Offers](Crm.Presales.Offers.md)  
Aggregate Root:  
[Crm.Presales.Offers](Crm.Presales.Offers.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ChoiceGroupName](Crm.Presales.OfferLines.md#choicegroupname) | string (60) __nullable__ | Name of a group of alternative lines, only one of which can be selected for ordering. Lines are grouped based on the exact name of the Choice Group. 
| [DeliveryTermDays](Crm.Presales.OfferLines.md#deliverytermdays) | int32 | Delivery term in days. When Required Delivery Date is specified (not null), it takes precedence and this is ignored. `Required` `Default(0)` 
| [GuaranteePeriodDays](Crm.Presales.OfferLines.md#guaranteeperioddays) | int32 __nullable__ | Guarantee period in days for the offered product. null for non-serviced products. 
| [Id](Crm.Presales.OfferLines.md#id) | guid |  
| [IsSelected](Crm.Presales.OfferLines.md#isselected) | boolean | True when the line is selected for further processing (ordering), false otherwise. `Required` `Default(true)` 
| [LineAmount](Crm.Presales.OfferLines.md#lineamount) | [Amount (14, 2)](../data-types.md#amount) | Amount for the line in the currency of the parent document. Usually equals Quantity * Unit_Price. When Quantity = 0, Unit Price is undefined and this contains the total line amount. `Currency: Offer.DocumentCurrency` `Required` `Default(0)` 
| [LineCustomDiscountPercent](Crm.Presales.OfferLines.md#linecustomdiscountpercent) | decimal (7, 6) | Operator defined discount percentage, specified for this line. `Required` `Default(0)` 
| [LineNo](Crm.Presales.OfferLines.md#lineno) | int32 | Line number, unique within the Offer. Usually is increasing number like 10, 20, 30, ... when initially entering the Offer (in order to allow insertions with adjustment documents). `Required` 
| [LineStandardDiscount<br />Percent](Crm.Presales.OfferLines.md#linestandarddiscountpercent) | decimal (7, 6) | The discount percentage, applied through the standard discount policy. `Required` `Default(0)` 
| [Notes](Crm.Presales.OfferLines.md#notes) | string (max) __nullable__ | Notes for this OfferLine. 
| [ProductDescription](Crm.Presales.OfferLines.md#productdescription) | [MultilanguageString](../data-types.md#multilanguagestring) | The description of the offered product. Initially copied from the name of the offered product. `Required` `Filter(like)` 
| [Quantity](Crm.Presales.OfferLines.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | Quantity offered. `Unit: QuantityUnit` `Required` `Default(1)` 
| [QuantityBase](Crm.Presales.OfferLines.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The equivalent of Quantity in the base measurement unit of the Product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` 
| [RequiredDeliveryDate](Crm.Presales.OfferLines.md#requireddeliverydate) | date __nullable__ | Date, when the delivery is required. Alternative to Delivery Term Days. When null, Delivery Term Days is used. 
| [StandardQuantityBase](Crm.Presales.OfferLines.md#standardquantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The theoretical quantity in base measurement unit according to the current measurement dimensions for the product. Used to measure the execution. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly` `Introduced in version 18.2` 
| [UnitPrice](Crm.Presales.OfferLines.md#unitprice) | [Amount (14, 5)](../data-types.md#amount) | The unit price of the offered product. It is specified in the measurement unit of Quantity. `Currency: Offer.DocumentCurrency` `Required` `Default(0)` 
| [Variant](Crm.Presales.OfferLines.md#variant) | string (60) __nullable__ | Name or number of variant of the whole offer. When multiple lines have the same variant, they are selected for ordering together. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Crm.Presales.OfferLines.md#document) | [Offers](Crm.Presales.Offers.md) | The `Offer`(Crm.Presales.OfferLines.md#offer) to which this OfferLine belongs. `Required` `Filter(multi eq)` |
| [LineDiscount](Crm.Presales.OfferLines.md#linediscount) | [LineDiscounts](Crm.LineDiscounts.md) (nullable) | When not null, contains the discount policy selected for this line. `Filter(multi eq)` |
| [LineEndCustomerParty](Crm.Presales.OfferLines.md#lineendcustomerparty) | [Parties](General.Contacts.Parties.md) (nullable) | The end customer is the customer of the dealer. It is stored for information purposes only. The end customer may not have customer definition, just party. `Filter(multi eq)` `Introduced in version 21.1.2.96` |
| [Offer](Crm.Presales.OfferLines.md#offer) | [Offers](Crm.Presales.Offers.md) | The `Offer`(Crm.Presales.OfferLines.md#offer) to which this OfferLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [Product](Crm.Presales.OfferLines.md#product) | [Products](General.Products.Products.md) | The offered product. `Required` `Filter(multi eq)` |
| [ProductCode](Crm.Presales.OfferLines.md#productcode) | [ProductCodes](General.Products.ProductCodes.md) (nullable) | Not null, when the product is selected using a coding system code. `Filter(multi eq)` |
| [ProductPrice](Crm.Presales.OfferLines.md#productprice) | [ProductPrices](Crm.ProductPrices.md) (nullable) | Not null when the price has been selected from the list of valid standard prices. `Filter(multi eq)` |
| [QuantityUnit](Crm.Presales.OfferLines.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |


## Attribute Details

### ChoiceGroupName

Name of a group of alternative lines, only one of which can be selected for ordering. Lines are grouped based on the exact name of the Choice Group.

_Type_: **string (60) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **60**  

### DeliveryTermDays

Delivery term in days. When Required Delivery Date is specified (not null), it takes precedence and this is ignored. `Required` `Default(0)`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### GuaranteePeriodDays

Guarantee period in days for the offered product. null for non-serviced products.

_Type_: **int32 __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`obj.Product.GuaranteePeriodDays`
### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsSelected

True when the line is selected for further processing (ordering), false otherwise. `Required` `Default(true)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### LineAmount

Amount for the line in the currency of the parent document. Usually equals Quantity * Unit_Price. When Quantity = 0, Unit Price is undefined and this contains the total line amount. `Currency: Offer.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.UnitPrice == null)) OrElse ( ( obj.Quantity.Value == 0) AndAlso ( obj.UnitPrice.Value == 0))), obj.LineAmount, ( ( ( obj.Quantity.Value * obj.UnitPrice) * ( 1 - obj.LineStandardDiscountPercent)) * ( 1 - obj.LineCustomDiscountPercent)).Round( ))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.UnitPrice == null)) OrElse ( ( obj.Quantity.Value == 0) AndAlso ( obj.UnitPrice.Value == 0))), obj.LineAmount, ( ( ( obj.Quantity.Value * obj.UnitPrice) * ( 1 - obj.LineStandardDiscountPercent)) * ( 1 - obj.LineCustomDiscountPercent)).Round( ))`
### LineCustomDiscountPercent

Operator defined discount percentage, specified for this line. `Required` `Default(0)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### LineNo

Line number, unique within the Offer. Usually is increasing number like 10, 20, 30, ... when initially entering the Offer (in order to allow insertions with adjustment documents). `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.Offer.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.Offer.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### LineStandardDiscountPercent

The discount percentage, applied through the standard discount policy. `Required` `Default(0)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

_Back-End Default Expression:_  
`obj.LineDiscount.DiscountPercent`

_Front-End Recalc Expressions:_  
`IIF( ( obj.LineDiscount == null), 0, obj.LineDiscount.DiscountPercent)`
### Notes

Notes for this OfferLine.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ProductDescription

The description of the offered product. Initially copied from the name of the offered product. `Required` `Filter(like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.Product.Name`

_Front-End Recalc Expressions:_  
`obj.Product.Name`
### Quantity

Quantity offered. `Unit: QuantityUnit` `Required` `Default(1)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### QuantityBase

The equivalent of Quantity in the base measurement unit of the Product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` `ReadOnly`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`
### RequiredDeliveryDate

Date, when the delivery is required. Alternative to Delivery Term Days. When null, Delivery Term Days is used.

_Type_: **date __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`obj.Offer.RequiredDeliveryDate`

_Front-End Recalc Expressions:_  
`IIF( ( obj.DeliveryTermDays == 0), obj.RequiredDeliveryDate, null)`
`obj.Offer.RequiredDeliveryDate`
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

The unit price of the offered product. It is specified in the measurement unit of Quantity. `Currency: Offer.DocumentCurrency` `Required` `Default(0)`

_Type_: **[Amount (14, 5)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Back-End Default Expression:_  
`( CalculateUnitPriceFromLineAmount( obj.LineAmount, obj.Quantity, obj.LineStandardDiscountPercent, obj.LineCustomDiscountPercent) ?? obj.UnitPrice)`

_Front-End Recalc Expressions:_  
`obj.CalculateUnitPrice( obj.Product, obj.ProductPrice, obj.QuantityUnit, obj.Offer)`
### Variant

Name or number of variant of the whole offer. When multiple lines have the same variant, they are selected for ordering together.

_Type_: **string (60) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **60**  


## Reference Details

### Document

The `Offer`(Crm.Presales.OfferLines.md#offer) to which this OfferLine belongs. `Required` `Filter(multi eq)`

_Type_: **[Offers](Crm.Presales.Offers.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### LineDiscount

When not null, contains the discount policy selected for this line. `Filter(multi eq)`

_Type_: **[LineDiscounts](Crm.LineDiscounts.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.DetermineLineDiscount( obj.RequiredDeliveryDate, obj.Offer.Customer, obj.Offer.ShipToCustomer, obj.Product, obj.Quantity, obj.QuantityUnit, obj.Offer.EnterpriseCompany, obj.Offer.EnterpriseCompanyLocation, obj.Offer.PriceList, obj.LineDiscount)`
### LineEndCustomerParty

The end customer is the customer of the dealer. It is stored for information purposes only. The end customer may not have customer definition, just party. `Filter(multi eq)` `Introduced in version 21.1.2.96`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.Offer.EndCustomerParty`

_Front-End Recalc Expressions:_  
`obj.Offer.EndCustomerParty`
### Offer

The `Offer`(Crm.Presales.OfferLines.md#offer) to which this OfferLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Offers](Crm.Presales.Offers.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### Product

The offered product. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`IIF( ( obj.ProductCode.Product == null), obj.Product, obj.ProductCode.Product)`

_Front-End Recalc Expressions:_  
`IIF( ( obj.ProductCode.Product == null), obj.Product, obj.ProductCode.Product)`
### ProductCode

Not null, when the product is selected using a coding system code. `Filter(multi eq)`

_Type_: **[ProductCodes](General.Products.ProductCodes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ProductPrice

Not null when the price has been selected from the list of valid standard prices. `Filter(multi eq)`

_Type_: **[ProductPrices](Crm.ProductPrices.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`DetermineProductPrice( obj.Product, obj.Quantity, obj.QuantityUnit, obj.RequiredDeliveryDate, obj.Offer.Customer, obj.Offer.ShipToCustomer, obj.Offer.EnterpriseCompany, obj.Offer.EnterpriseCompanyLocation, null, obj.Offer.PriceList, obj.ProductPrice)`
### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Back-End Default Expression:_  
`obj.Product.MeasurementUnit.IfNullThen( obj.QuantityUnit)`

_Front-End Recalc Expressions:_  
`obj.Product.MeasurementUnit.IfNullThen( obj.QuantityUnit)`


## Business Rules

[!list limit=1000 erp.entity=Crm.Presales.OfferLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Presales.OfferLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Presales_OfferLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Presales_OfferLines?$top=10>

