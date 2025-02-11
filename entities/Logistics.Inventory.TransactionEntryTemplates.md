---
uid: Logistics.Inventory.TransactionEntryTemplates
---
# Logistics.Inventory.TransactionEntryTemplates Entity

**Namespace:** [Logistics.Inventory](Logistics.Inventory.md)  

Obsolete. Not used. Entity: Inv_Transaction_Entry_Templates

## Default Visualization
Default Display Text Format:  
_{Id}: {RouteId}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Logistics.Inventory.TransactionEntryTemplates](Logistics.Inventory.TransactionEntryTemplates.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DocumentNotesFixedText](Logistics.Inventory.TransactionEntryTemplates.md#documentnotesfixedtext) | string (max) __nullable__ | Specifies the text for the document notes in the created entry in the VAT ledgers, in case the source is set to be fixed text. 
| [Id](Logistics.Inventory.TransactionEntryTemplates.md#id) | guid |  

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DealType](Logistics.Inventory.TransactionEntryTemplates.md#dealtype) | [DealTypes](Finance.Vat.DealTypes.md) | Obsolete. Not used. `Required` `Filter(multi eq)` |
| [Route](Logistics.Inventory.TransactionEntryTemplates.md#route) | [Routes](Systems.Workflow.Routes.md) | Obsolete. Not used. `Required` `Filter(multi eq)` |


## Attribute Details

### DocumentNotesFixedText

Specifies the text for the document notes in the created entry in the VAT ledgers, in case the source is set to be fixed text.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  


## Reference Details

### DealType

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **[DealTypes](Finance.Vat.DealTypes.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### Route

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **[Routes](Systems.Workflow.Routes.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.TransactionEntryTemplates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.TransactionEntryTemplates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Inventory_TransactionEntryTemplates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Inventory_TransactionEntryTemplates?$top=10>

