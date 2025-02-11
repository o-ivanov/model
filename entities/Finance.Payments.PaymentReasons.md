---
uid: Finance.Payments.PaymentReasons
---
# Finance.Payments.PaymentReasons Entity

**Namespace:** [Finance.Payments](Finance.Payments.md)  

Represents reasons for the payments. Contains both system and user-defined reasons. Entity: Cash_Payment_Reasons

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Finance.Payments.PaymentReasons](Finance.Payments.PaymentReasons.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Finance.Payments.PaymentReasons.md#id) | guid |  
| [IsActive](Finance.Payments.PaymentReasons.md#isactive) | boolean | Specifies whether the payment reason is active and usable for choosing in new documents. `Required` `Default(true)` `Filter(eq)` 
| [IsSystem](Finance.Payments.PaymentReasons.md#issystem) | boolean | Specifies whether the payment reason is defined by the system. The system defined records are created by the system and are read-only for the user. `Required` `Default(false)` `Filter(eq)` `ReadOnly` 
| [Name](Finance.Payments.PaymentReasons.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | The name of this PaymentReason. `Required` `Filter(eq;like)` `ORD` 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsActive

Specifies whether the payment reason is active and usable for choosing in new documents. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### IsSystem

Specifies whether the payment reason is defined by the system. The system defined records are created by the system and are read-only for the user. `Required` `Default(false)` `Filter(eq)` `ReadOnly`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Name

The name of this PaymentReason. `Required` `Filter(eq;like)` `ORD`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Finance.Payments.PaymentReasons erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Payments.PaymentReasons erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Payments_PaymentReasons?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Payments_PaymentReasons?$top=10>

