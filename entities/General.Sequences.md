---
uid: General.Sequences
---
# General.Sequences Entity

**Namespace:** [General](General.md)  

Provides numbering sequences, applicable for use in a multi-threaded environment. Entity: Gen_Sequences

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [General.Sequences](General.Sequences.md)  
  * [General.SequenceGenerators](General.SequenceGenerators.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](General.Sequences.md#id) | guid |  
| [Name](General.Sequences.md#name) | string (50) | The name of this Sequence. `Required` `Filter(like)` 
| [SimultaneousTransactions](General.Sequences.md#simultaneoustransactions) | boolean | When false, specifies that the users will wait in a queue for a single numbering sequence generator. When true, the system will allow parallel numbering, by using any of the available sequence generators. However, parallel numbering has the drawback that, if no sequence generator is free, it will immediately throw exception, instead of waiting. So before setting to true, make sure that enough sequence generators are available. `Required` `Default(false)` 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Generators | [SequenceGenerators](General.SequenceGenerators.md) | List of `SequenceGenerator`(General.SequenceGenerators.md) child objects, based on the `General.SequenceGenerator.Sequence`(General.SequenceGenerators.md#sequence) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this Sequence. `Required` `Filter(like)`

_Type_: **string (50)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **50**  

### SimultaneousTransactions

When false, specifies that the users will wait in a queue for a single numbering sequence generator. When true, the system will allow parallel numbering, by using any of the available sequence generators. However, parallel numbering has the drawback that, if no sequence generator is free, it will immediately throw exception, instead of waiting. So before setting to true, make sure that enough sequence generators are available. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  



## Business Rules

[!list limit=1000 erp.entity=General.Sequences erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.Sequences erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_Sequences?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_Sequences?$top=10>

