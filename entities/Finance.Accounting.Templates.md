---
uid: Finance.Accounting.Templates
---
# Finance.Accounting.Templates Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Accounting templates are used to automate the postings for repetitive business transactions. Templates can be bound to almost all documents and automate their postings. Entity: Acc_Templates

## Default Visualization
Default Display Text Format:  
_{Name}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Systems.Workflow.Routes](Systems.Workflow.Routes.md)  
Aggregate Root:  
[General.DocumentTypes](General.DocumentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Finance.Accounting.Templates.md#id) | guid |  
| [Name](Finance.Accounting.Templates.md#name) | string (254) | The name of this Template. `Required` `Filter(like)` 
| [VoucherDateSource](Finance.Accounting.Templates.md#voucherdatesource) | string (2000) __nullable__ | Determines the source for the document date of the generated voucher. If not specified the voucher date is set as usual. 
| [VoucherDescriptionMask](Finance.Accounting.Templates.md#voucherdescriptionmask) | string (max) __nullable__ | Template voucher description. Can use field substitutes, surrounded with square brackets. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [Route](Finance.Accounting.Templates.md#route) | [Routes](Systems.Workflow.Routes.md) | The route which activates the template. `Required` `Filter(multi eq)` `Owner` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Lines | [TemplateLines](Finance.Accounting.TemplateLines.md) | List of `TemplateLine`(Finance.Accounting.TemplateLines.md) child objects, based on the `Finance.Accounting.TemplateLine.Template`(Finance.Accounting.TemplateLines.md#template) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of this Template. `Required` `Filter(like)`

_Type_: **string (254)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### VoucherDateSource

Determines the source for the document date of the generated voucher. If not specified the voucher date is set as usual.

_Type_: **string (2000) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2000**  

### VoucherDescriptionMask

Template voucher description. Can use field substitutes, surrounded with square brackets.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  


## Reference Details

### Route

The route which activates the template. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Routes](Systems.Workflow.Routes.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.Templates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.Templates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_Templates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_Templates?$top=10>

