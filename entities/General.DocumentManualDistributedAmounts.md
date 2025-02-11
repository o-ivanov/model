---
uid: General.DocumentManualDistributedAmounts
---
# General.DocumentManualDistributedAmounts Entity

**Namespace:** [General](General.md)  

Obsolete. Not used. Entity: Gen_Document_Manual_Distributed_Amounts

## Default Visualization
Default Display Text Format:  
_{Id}: {DocumentId}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.DocumentManualDistributedAmounts](General.DocumentManualDistributedAmounts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [DocumentAmountTypeId](General.DocumentManualDistributedAmounts.md#documentamounttypeid) | guid | Obsolete. Not used. `Required` `Filter(multi eq)` 
| [DocumentId](General.DocumentManualDistributedAmounts.md#documentid) | guid | Obsolete. Not used. `Required` `Filter(multi eq)` 
| [DocumentLineId](General.DocumentManualDistributedAmounts.md#documentlineid) | guid | Obsolete. Not used. `Required` `Filter(multi eq)` 
| [Id](General.DocumentManualDistributedAmounts.md#id) | guid |  
| [LinePercent](General.DocumentManualDistributedAmounts.md#linepercent) | decimal (7, 6) | Obsolete. Not used. `Required` 
| [ProductId](General.DocumentManualDistributedAmounts.md#productid) | guid | Obsolete. Not used. `Required` `Filter(multi eq)` 


## Attribute Details

### DocumentAmountTypeId

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **guid**  
_Supported Filters_: **Equals, EqualsIn**  

### DocumentId

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **guid**  
_Supported Filters_: **Equals, EqualsIn**  

### DocumentLineId

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **guid**  
_Supported Filters_: **Equals, EqualsIn**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### LinePercent

Obsolete. Not used. `Required`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ProductId

Obsolete. Not used. `Required` `Filter(multi eq)`

_Type_: **guid**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=General.DocumentManualDistributedAmounts erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.DocumentManualDistributedAmounts erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_DocumentManualDistributedAmounts?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_DocumentManualDistributedAmounts?$top=10>

