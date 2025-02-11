---
uid: Crm.Sales.DocumentTypePaymentOptions
---
# Crm.Sales.DocumentTypePaymentOptions Entity

**Namespace:** [Crm.Sales](Crm.Sales.md)  

Contains payment options for user documnet types for sales orders. Entity: Crm_Document_Type_Payment_Options

## Default Visualization
Default Display Text Format:  
_{DocumentType.EntityName}_  
Default Search Members:  
_DocumentType.EntityName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.DocumentTypes](General.DocumentTypes.md)  
Aggregate Root:  
[General.DocumentTypes](General.DocumentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DeferredPayment<br />MinimalAmmount](Crm.Sales.DocumentTypePaymentOptions.md#deferredpaymentminimalammount) | [Amount (14, 2)](../data-types.md#amount) | The minimal order total amount, which an order must have in order to use deferred payment. `Currency: DeferredPayment<br />MinimalAmmount<br />Currency` `Required` 
| [Id](Crm.Sales.DocumentTypePaymentOptions.md#id) | guid |  

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DeferredPayment<br />MinimalAmmount<br />Currency](Crm.Sales.DocumentTypePaymentOptions.md#deferredpaymentminimalammountcurrency) | [Currencies](General.Currencies.md) | The currency of Deferred Payment Minimal Amount. `Required` `Filter(multi eq)` |
| [DocumentType](Crm.Sales.DocumentTypePaymentOptions.md#documenttype) | [DocumentTypes](General.DocumentTypes.md) | The document type for which the payment option applies. `Required` `Filter(multi eq)` `Owner` |
| [EnterpriseCompany](Crm.Sales.DocumentTypePaymentOptions.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) | The enterprise company for which the payment options are specified. `Required` `Filter(multi eq)` |


## Attribute Details

### DeferredPaymentMinimalAmmount

The minimal order total amount, which an order must have in order to use deferred payment. `Currency: DeferredPaymentMinimalAmmountCurrency` `Required`

_Type_: **[Amount (14, 2)](../data-types.md#amount)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  


## Reference Details

### DeferredPaymentMinimalAmmountCurrency

The currency of Deferred Payment Minimal Amount. `Required` `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### DocumentType

The document type for which the payment option applies. `Required` `Filter(multi eq)` `Owner`

_Type_: **[DocumentTypes](General.DocumentTypes.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### EnterpriseCompany

The enterprise company for which the payment options are specified. `Required` `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Crm.Sales.DocumentTypePaymentOptions erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Sales.DocumentTypePaymentOptions erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Sales_DocumentTypePaymentOptions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Sales_DocumentTypePaymentOptions?$top=10>

