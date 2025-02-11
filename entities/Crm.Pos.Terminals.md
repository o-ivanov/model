---
uid: Crm.Pos.Terminals
---
# Crm.Pos.Terminals Entity

**Namespace:** [Crm.Pos](Crm.Pos.md)  

Represents a POS workplace for 1 person, with all the attached devices. (Not to be confused with Payment Terminal, which is specific POS device). Entity: Pos_Terminals (Introduced in version 19.1)

## Default Visualization
Default Display Text Format:  
_{PosTerminalName:T}_  
Default Search Members:  
_PosTerminalCode; PosTerminalName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Pos.Terminals](Crm.Pos.Terminals.md)  
  * [Crm.Pos.Devices](Crm.Pos.Devices.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Crm.Pos.Terminals.md#id) | guid |  
| [IsActive](Crm.Pos.Terminals.md#isactive) | boolean | Represents whether the POS terminal is active and can be chosen from drop-downs for new records. `Required` `Default(true)` `Filter(multi eq)` 
| [PosTerminalCode](Crm.Pos.Terminals.md#posterminalcode) | string (16) | Unique (within the location) code of the POS terminal. `Required` `Filter(eq;like)` 
| [PosTerminalName](Crm.Pos.Terminals.md#posterminalname) | [MultilanguageString](../data-types.md#multilanguagestring) | The multi-language name of the terminal, like "Cash 1", "Self-checkout 5", etc. `Required` `Filter(multi eq;like)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [DefaultFiscalPrinter<br />PosDevice](Crm.Pos.Terminals.md#defaultfiscalprinterposdevice) | [Devices](Crm.Pos.Devices.md) (nullable) | The POS Fiscal Device which is set by default in documents when the POS Terminal is selected. `Filter(multi eq)` `Introduced in version 20.1` |
| [PosLocation](Crm.Pos.Terminals.md#poslocation) | [Locations](Crm.Pos.Locations.md) | The POS location, where the terminal is located. `Required` `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Devices | [Devices](Crm.Pos.Devices.md) | List of `Device`(Crm.Pos.Devices.md) child objects, based on the `Crm.Pos.Device.PosTerminal`(Crm.Pos.Devices.md#posterminal) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsActive

Represents whether the POS terminal is active and can be chosen from drop-downs for new records. `Required` `Default(true)` `Filter(multi eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### PosTerminalCode

Unique (within the location) code of the POS terminal. `Required` `Filter(eq;like)`

_Type_: **string (16)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **16**  

### PosTerminalName

The multi-language name of the terminal, like "Cash 1", "Self-checkout 5", etc. `Required` `Filter(multi eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like, EqualsIn**  
_Supports Order By_: **False**  


## Reference Details

### DefaultFiscalPrinterPosDevice

The POS Fiscal Device which is set by default in documents when the POS Terminal is selected. `Filter(multi eq)` `Introduced in version 20.1`

_Type_: **[Devices](Crm.Pos.Devices.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### PosLocation

The POS location, where the terminal is located. `Required` `Filter(multi eq)`

_Type_: **[Locations](Crm.Pos.Locations.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Crm.Pos.Terminals erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Pos.Terminals erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Pos_Terminals?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Pos_Terminals?$top=10>

