---
uid: Logistics.Inventory.TransferOrdersOptions
---
# Logistics.Inventory.TransferOrdersOptions Entity

**Namespace:** [Logistics.Inventory](Logistics.Inventory.md)  

Options per document type for the transfer orders. Entity: Inv_Transfer_Orders_Options

## Default Visualization
Default Display Text Format:  
_{Id}: {DocumentTypeId}_  
Default Search Members:  
__  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Logistics.Inventory.TransferOrdersOptions](Logistics.Inventory.TransferOrdersOptions.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AvailableQuantityOnly](Logistics.Inventory.TransferOrdersOptions.md#availablequantityonly) | boolean | Specifies, that transfer orders of this document type will be allowed to be released only when the requested quantity is less than the available (ATP) quantity. `Required` `Default(false)` `Filter(eq)` 
| [Id](Logistics.Inventory.TransferOrdersOptions.md#id) | guid |  

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DocumentType](Logistics.Inventory.TransferOrdersOptions.md#documenttype) | [DocumentTypes](General.DocumentTypes.md) | The document type, for which these options apply. `Required` `Filter(multi eq)` |


## Attribute Details

### AvailableQuantityOnly

Specifies, that transfer orders of this document type will be allowed to be released only when the requested quantity is less than the available (ATP) quantity. `Required` `Default(false)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  


## Reference Details

### DocumentType

The document type, for which these options apply. `Required` `Filter(multi eq)`

_Type_: **[DocumentTypes](General.DocumentTypes.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.TransferOrdersOptions erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Logistics.Inventory.TransferOrdersOptions erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Logistics_Inventory_TransferOrdersOptions?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Logistics_Inventory_TransferOrdersOptions?$top=10>

