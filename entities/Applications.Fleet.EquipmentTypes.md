---
uid: Applications.Fleet.EquipmentTypes
---
# Applications.Fleet.EquipmentTypes Entity

**Namespace:** [Applications.Fleet](Applications.Fleet.md)  

Contains types of equipment, which can be installed on the vehicles. Entity: Fleet_Equipment_Types

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.Fleet.EquipmentTypes](Applications.Fleet.EquipmentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Applications.Fleet.EquipmentTypes.md#id) | guid |  
| [Name](Applications.Fleet.EquipmentTypes.md#name) | string (254) | Name of the equipment type. `Required` `Filter(eq;like)` 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

Name of the equipment type. `Required` `Filter(eq;like)`

_Type_: **string (254)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  



## Business Rules

[!list limit=1000 erp.entity=Applications.Fleet.EquipmentTypes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Fleet.EquipmentTypes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Fleet_EquipmentTypes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Fleet_EquipmentTypes?$top=10>

