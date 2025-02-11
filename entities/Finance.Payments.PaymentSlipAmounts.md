---
uid: Finance.Payments.PaymentSlipAmounts
---
# Finance.Payments.PaymentSlipAmounts Entity

**Namespace:** [Finance.Payments](Finance.Payments.md)  

Mass payment amount. Each record generates one payment transaction. Entity: Cash_Payment_Slip_Amounts

## Default Visualization
Default Display Text Format:  
_{PartyName:T}_  
Default Search Members:  
_PartyName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Payments.PaymentSlips](Finance.Payments.PaymentSlips.md)  
Aggregate Root:  
[Finance.Payments.PaymentSlips](Finance.Payments.PaymentSlips.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Description](Finance.Payments.PaymentSlipAmounts.md#description) | string (254) __nullable__ | Description of the payed amount. The numbers of the documents which are payed for example. 
| [Direction](Finance.Payments.PaymentSlipAmounts.md#direction) | [Direction](Finance.Payments.PaymentSlipAmounts.md#direction) | 'I' for Payment issue, 'R' for payment receipt. `Required` `Filter(eq)` 
| [Id](Finance.Payments.PaymentSlipAmounts.md#id) | guid |  
| [IsPartyPayment](Finance.Payments.PaymentSlipAmounts.md#ispartypayment) | boolean | Indicates whether the amount is payed or received by party or not (i.e. the amount is for fee, tax, etc.). `Required` `Default(true)` 
| [LineNo](Finance.Payments.PaymentSlipAmounts.md#lineno) | int32 | The number of the line within the payment. `Required` 
| [PartyName](Finance.Payments.PaymentSlipAmounts.md#partyname) | [MultilanguageString](../data-types.md#multilanguagestring) __nullable__ | The name of the party that is paying or receiving the money. The column can be left blank if there is no party involved (e.g. the amount is fee). 
| [PaymentDate](Finance.Payments.PaymentSlipAmounts.md#paymentdate) | datetime | The date on which the payment is done. `Required` `Filter(ge;le)` 
| [TotalAmount](Finance.Payments.PaymentSlipAmounts.md#totalamount) | [Amount (18, 2)](../data-types.md#amount) __nullable__ | The total amount payed. The distribution of the amount amongst the payment orders for this party is specified with payment slip lines. If null the total amount is calculated as sum of the amounts in the payment slip lines. `Currency: PaymentSlip.DocumentCurrency` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Party](Finance.Payments.PaymentSlipAmounts.md#party) | [Parties](General.Contacts.Parties.md) (nullable) | The party that is paying or receiving the money. The column can be left blank if there is no party involved (e.g. the amount is fee) or the party isn't present in the database yet. `Filter(multi eq)` |
| [PaymentReason](Finance.Payments.PaymentSlipAmounts.md#paymentreason) | [PaymentReasons](Finance.Payments.PaymentReasons.md) (nullable) | The reason for the payment, as defined in Payment Reasons. `Filter(multi eq)` |
| [PaymentSlip](Finance.Payments.PaymentSlipAmounts.md#paymentslip) | [PaymentSlips](Finance.Payments.PaymentSlips.md) | The `PaymentSlip`(Finance.Payments.PaymentSlipAmounts.md#paymentslip) to which this PaymentSlipAmount belongs. `Required` `Filter(multi eq)` `Owner` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| PaymentSlipLines | [PaymentSlipLines](Finance.Payments.PaymentSlipLines.md) | List of `PaymentSlipLine`(Finance.Payments.PaymentSlipLines.md) child objects, based on the `Finance.Payments.PaymentSlipLine.PaymentSlipAmount`(Finance.Payments.PaymentSlipLines.md#paymentslipamount) back reference 


## Attribute Details

### Description

Description of the payed amount. The numbers of the documents which are payed for example.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### Direction

'I' for Payment issue, 'R' for payment receipt. `Required` `Filter(eq)`

_Type_: **[Direction](Finance.Payments.PaymentSlipAmounts.md#direction)**  
Allowed values for the `Direction`(Finance.Payments.PaymentOrders.md#direction) data attribute  
_Allowed Values (Finance.Payments.PaymentOrdersRepository.Direction Enum Members)_  

| Value | Description |
| ---- | --- |
| Expense | Expense value. Stored as 'I'. <br /> _Database Value:_ 'I' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Expense' |
| Income | Income value. Stored as 'R'. <br /> _Database Value:_ 'R' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Income' |

_Supported Filters_: **Equals**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsPartyPayment

Indicates whether the amount is payed or received by party or not (i.e. the amount is for fee, tax, etc.). `Required` `Default(true)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### LineNo

The number of the line within the payment. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.PaymentSlip.Amounts.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.PaymentSlip.Amounts.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### PartyName

The name of the party that is paying or receiving the money. The column can be left blank if there is no party involved (e.g. the amount is fee).

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`obj.Party.ObtainPartyName( )`
### PaymentDate

The date on which the payment is done. `Required` `Filter(ge;le)`

_Type_: **datetime**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

_Front-End Recalc Expressions:_  
`obj.PaymentSlip.DocumentDate`
### TotalAmount

The total amount payed. The distribution of the amount amongst the payment orders for this party is specified with payment slip lines. If null the total amount is calculated as sum of the amounts in the payment slip lines. `Currency: PaymentSlip.DocumentCurrency`

_Type_: **[Amount (18, 2)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  


## Reference Details

### Party

The party that is paying or receiving the money. The column can be left blank if there is no party involved (e.g. the amount is fee) or the party isn't present in the database yet. `Filter(multi eq)`

_Type_: **[Parties](General.Contacts.Parties.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PaymentReason

The reason for the payment, as defined in Payment Reasons. `Filter(multi eq)`

_Type_: **[PaymentReasons](Finance.Payments.PaymentReasons.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PaymentSlip

The `PaymentSlip`(Finance.Payments.PaymentSlipAmounts.md#paymentslip) to which this PaymentSlipAmount belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PaymentSlips](Finance.Payments.PaymentSlips.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Finance.Payments.PaymentSlipAmounts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Payments.PaymentSlipAmounts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Payments_PaymentSlipAmounts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Payments_PaymentSlipAmounts?$top=10>

