---
uid: Finance.Excise.ExciseAdministrativeDocumentLines
---
# Finance.Excise.ExciseAdministrativeDocumentLines Entity

**Namespace:** [Finance.Excise](Finance.Excise.md)  

The details of the movement of each excise product for each excise document. Entity: Exc_Excise_Administrative_Document_Lines (Introduced in version 21.1.3.54)

## Default Visualization
Default Display Text Format:  
_{LineNo}. {ExciseAdministrativeDocument.DocumentNo} {ExciseAdministrativeDocument.DocumentType.TypeName:T}_  
Default Search Members:  
_ExciseAdministrativeDocument.DocumentNo_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Excise.ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md)  
Aggregate Root:  
[Finance.Excise.ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ExciseAlcoholicStrength](Finance.Excise.ExciseAdministrativeDocumentLines.md#excisealcoholicstrength) | decimal (5, 2) __nullable__ | The alcoholic strength, which will be used for Excise reporting purposes. null  if the product is not subject to alcoholic Excise reporting. `Introduced in version 21.1.3.97` 
| [ExciseAmount](Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseamount) | [Amount (14, 2)](../data-types.md#amount) |  
| [ExciseAmountBase](Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseamountbase) | decimal (14, 2) |  
| [ExciseDutyRateValue](Finance.Excise.ExciseAdministrativeDocumentLines.md#excisedutyratevalue) | decimal (10, 6) __nullable__ | The rate which should be applied for the specified product and purpose. null means not assigned yet. `Introduced in version 21.1.3.97` 
| [Id](Finance.Excise.ExciseAdministrativeDocumentLines.md#id) | guid |  
| [LineNo](Finance.Excise.ExciseAdministrativeDocumentLines.md#lineno) | int32 | Consecutive line number within the document. `Required` `Filter(multi eq)` 
| [Notes](Finance.Excise.ExciseAdministrativeDocumentLines.md#notes) | string (max) __nullable__ | Notes for this ExciseAdministrative<br />DocumentLine. 
| [ParentLineNo](Finance.Excise.ExciseAdministrativeDocumentLines.md#parentlineno) | int32 __nullable__ | The number of the line within the parent document, which the current line executes. Null when the current line does not execute line. `Filter(multi eq)` `Introduced in version 22.1.4.9` 
| [Quantity](Finance.Excise.ExciseAdministrativeDocumentLines.md#quantity) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity being sold, in the measurement unit, specified in Quantity Unit. `Unit: QuantityUnit` `Required` `Default(1)` 
| [QuantityBase](Finance.Excise.ExciseAdministrativeDocumentLines.md#quantitybase) | [Quantity (12, 3)](../data-types.md#quantity) | The quantity in base measurement category for the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Document](Finance.Excise.ExciseAdministrativeDocumentLines.md#document) | [ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md) | The `ExciseAdministrative<br />Document`(Finance.Excise.ExciseAdministrative<br />DocumentLines.md#exciseadministrativedocument) to which this ExciseAdministrative<br />DocumentLine belongs. `Required` `Filter(multi eq)` |
| [ExciseAdministrative<br />Document](Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseadministrativedocument) | [ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md) | The `ExciseAdministrative<br />Document`(Finance.Excise.ExciseAdministrative<br />DocumentLines.md#exciseadministrativedocument) to which this ExciseAdministrative<br />DocumentLine belongs. `Required` `Filter(multi eq)` `Owner` |
| [ExciseDutyRate](Finance.Excise.ExciseAdministrativeDocumentLines.md#excisedutyrate) | [ExciseDutyRates](Finance.Excise.ExciseDutyRates.md) (nullable) | The Duty rate specified by the taxation and customs authorities. `Filter(multi eq)` `Introduced in version 21.1.3.97` |
| [ExciseProduct](Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseproduct) | [ExciseProducts](Finance.Excise.ExciseProducts.md) (nullable) | The Excise product code defined by the taxation and customs authorities. `Filter(multi eq)` `Introduced in version 21.1.3.97` |
| [ExcisePurposeCode](Finance.Excise.ExciseAdministrativeDocumentLines.md#excisepurposecode) | [ExcisePurposeCodes](Finance.Excise.ExcisePurposeCodes.md) (nullable) | The Purpose codes specify the different purposes recognized by the authorities for determining the excise rate. `Filter(multi eq)` `Introduced in version 21.1.3.97` |
| [MeasuringTransaction](Finance.Excise.ExciseAdministrativeDocumentLines.md#measuringtransaction) | [MeasuringTransactions](Finance.Excise.MeasuringTransactions.md) (nullable) | Transaction of product input or output, measured with specialized measuring device for excise purposes. `Filter(multi eq)` `Introduced in version 21.1.3.87` |
| [ParentDocument](Finance.Excise.ExciseAdministrativeDocumentLines.md#parentdocument) | [Documents](General.Documents.md) (nullable) | The document, which the current line executes. Null when the current line does not execute another line. `Filter(multi eq)` `Introduced in version 22.1.4.9` |
| [Product](Finance.Excise.ExciseAdministrativeDocumentLines.md#product) | [Products](General.Products.Products.md) | The product being sold. `Required` `Filter(multi eq)` |
| [QuantityUnit](Finance.Excise.ExciseAdministrativeDocumentLines.md#quantityunit) | [MeasurementUnits](General.MeasurementUnits.md) | The measurement unit of Quantity. `Required` `Filter(multi eq)` |


## Attribute Details

### ExciseAlcoholicStrength

The alcoholic strength, which will be used for Excise reporting purposes. null  if the product is not subject to alcoholic Excise reporting. `Introduced in version 21.1.3.97`

_Type_: **decimal (5, 2) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`obj.Product.ExciseAlcoholicStrength`
### ExciseAmount

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

_Front-End Recalc Expressions:_  
`new Amount( ( ( Convert( obj.ExciseAmountBase, Nullable`1) * obj.ExciseDutyRateValue) ?? 0), Convert( obj.GetAggregateParent( ), ExciseAdministrativeDocument).DocumentCurrency)`
### ExciseAmountBase

_Type_: **decimal (14, 2)**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **0**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.CalculateExciseAmountBase( obj.ExciseProduct, obj.QuantityBase, obj.ExciseAlcoholicStrength) == null), Convert( obj.ExciseAmountBase, Nullable`1), obj.CalculateExciseAmountBase( obj.ExciseProduct, obj.QuantityBase, obj.ExciseAlcoholicStrength))`
### ExciseDutyRateValue

The rate which should be applied for the specified product and purpose. null means not assigned yet. `Introduced in version 21.1.3.97`

_Type_: **decimal (10, 6) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`obj.ExciseDutyRate.ExciseDutyRateField`
### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive line number within the document. `Required` `Filter(multi eq)`

_Type_: **int32**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.ExciseAdministrativeDocument.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.ExciseAdministrativeDocument.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Notes

Notes for this ExciseAdministrativeDocumentLine.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ParentLineNo

The number of the line within the parent document, which the current line executes. Null when the current line does not execute line. `Filter(multi eq)` `Introduced in version 22.1.4.9`

_Type_: **int32 __nullable__**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  

### Quantity

The quantity being sold, in the measurement unit, specified in Quantity Unit. `Unit: QuantityUnit` `Required` `Default(1)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Constant**  

### QuantityBase

The quantity in base measurement category for the product. `Unit: Product.BaseMeasurementCategory.BaseUnit` `Required`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`IIF( ( ( ( obj.Quantity == null) OrElse ( obj.QuantityUnit == null)) OrElse ( obj.Product == null)), obj.QuantityBase, obj.Quantity.ConvertTo( obj.Product.BaseUnit, obj.Product))`

## Reference Details

### Document

The `ExciseAdministrativeDocument`(Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseadministrativedocument) to which this ExciseAdministrativeDocumentLine belongs. `Required` `Filter(multi eq)`

_Type_: **[ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### ExciseAdministrativeDocument

The `ExciseAdministrativeDocument`(Finance.Excise.ExciseAdministrativeDocumentLines.md#exciseadministrativedocument) to which this ExciseAdministrativeDocumentLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[ExciseAdministrativeDocuments](Finance.Excise.ExciseAdministrativeDocuments.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### ExciseDutyRate

The Duty rate specified by the taxation and customs authorities. `Filter(multi eq)` `Introduced in version 21.1.3.97`

_Type_: **[ExciseDutyRates](Finance.Excise.ExciseDutyRates.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.DetermineExciseDutyRate( obj.ExciseProduct, obj.ExcisePurposeCode)`
### ExciseProduct

The Excise product code defined by the taxation and customs authorities. `Filter(multi eq)` `Introduced in version 21.1.3.97`

_Type_: **[ExciseProducts](Finance.Excise.ExciseProducts.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.Product.ExciseProduct`
### ExcisePurposeCode

The Purpose codes specify the different purposes recognized by the authorities for determining the excise rate. `Filter(multi eq)` `Introduced in version 21.1.3.97`

_Type_: **[ExcisePurposeCodes](Finance.Excise.ExcisePurposeCodes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( obj.LineNo == obj.LineNo), obj.DefaultExcisePurposeCode( ), null)`
### MeasuringTransaction

Transaction of product input or output, measured with specialized measuring device for excise purposes. `Filter(multi eq)` `Introduced in version 21.1.3.87`

_Type_: **[MeasuringTransactions](Finance.Excise.MeasuringTransactions.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ParentDocument

The document, which the current line executes. Null when the current line does not execute another line. `Filter(multi eq)` `Introduced in version 22.1.4.9`

_Type_: **[Documents](General.Documents.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

The product being sold. `Required` `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### QuantityUnit

The measurement unit of Quantity. `Required` `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`obj.Product.MeasurementUnit`


## Business Rules

[!list limit=1000 erp.entity=Finance.Excise.ExciseAdministrativeDocumentLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Excise.ExciseAdministrativeDocumentLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Excise_ExciseAdministrativeDocumentLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Excise_ExciseAdministrativeDocumentLines?$top=10>

