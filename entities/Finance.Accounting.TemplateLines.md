---
uid: Finance.Accounting.TemplateLines
---
# Finance.Accounting.TemplateLines Entity

**Namespace:** [Finance.Accounting](Finance.Accounting.md)  

Each template line contains the posting to a single set of debit and credit account. It also specifies the way to calculate the amount. Entity: Acc_Template_Lines

## Default Visualization
Default Display Text Format:  
_{AmountColumnName}_  
Default Search Members:  
_AmountColumnName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Finance.Accounting.Templates](Finance.Accounting.Templates.md)  
Aggregate Root:  
[General.DocumentTypes](General.DocumentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [AmountColumnName](Finance.Accounting.TemplateLines.md#amountcolumnname) | string (64) | The name of the column within the amount rowset where the amount is located. `Required` 
| [AmountCondition](Finance.Accounting.TemplateLines.md#amountcondition) | [AmountCondition](Finance.Accounting.TemplateLines.md#amountcondition) __nullable__ | Condition for the amount. The line is accounted only when the condition is matched. The condition can be one of: null - no condition, the line should be accounted unconditionally; '+' - The amount should be positive; '-' - The amount should be negative. The amount is matched as returned from the source, before applying the Multiplier. 
| [AmountRowId](Finance.Accounting.TemplateLines.md#amountrowid) | guid __nullable__ | The id of the row from the amount rowset where the amount is located. null means to account one by one for all rows within the rowset. `Filter(multi eq)` 
| [AmountRowName](Finance.Accounting.TemplateLines.md#amountrowname) | string (254) __nullable__ | The name of definition, specified in Amount_Row_Id. null means that no Amount_Row_Id is specified or there is no name. 
| [AmountSourceFilter](Finance.Accounting.TemplateLines.md#amountsourcefilter) | dataaccessfilter __nullable__ | Filter that further specifies which rows from the amount rowset determine the amount. 
| [AmountSourceName](Finance.Accounting.TemplateLines.md#amountsourcename) | string (64) | The source rowset for the amount. For example: DocLines, DocHeader, Additional Amounts, Stock Types, etc. `Required` 
| [FilterXML](Finance.Accounting.TemplateLines.md#filterxml) | dataaccessfilter __nullable__ | The line is accounted only when the filter is satisfied compared with the source document header. 
| [Id](Finance.Accounting.TemplateLines.md#id) | guid |  
| [LineNo](Finance.Accounting.TemplateLines.md#lineno) | int32 | Consecutive number of the line within the template. Determines the order of execution of the template lines. `Required` 
| [Multiplier](Finance.Accounting.TemplateLines.md#multiplier) | decimal (18, 6) | Factor by which the amount from the source will be multiplied. `Required` `Default(1)` 
| [Notes](Finance.Accounting.TemplateLines.md#notes) | string (254) __nullable__ | Notes for this TemplateLine. 
| [ValidFromDate](Finance.Accounting.TemplateLines.md#validfromdate) | datetime __nullable__ | Start date from which the accounting template line is valid. `Filter(multi eq;ge;le)` 
| [ValidToDate](Finance.Accounting.TemplateLines.md#validtodate) | datetime __nullable__ | End date to which the accounting template line is valid. `Filter(multi eq;ge;le)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [CreditAccount](Finance.Accounting.TemplateLines.md#creditaccount) | [Accounts](Finance.Accounting.Accounts.md) | The account which should be credited. `Required` `Filter(multi eq)` |
| [DebitAccount](Finance.Accounting.TemplateLines.md#debitaccount) | [Accounts](Finance.Accounting.Accounts.md) | The account which should be debited. `Required` `Filter(multi eq)` |
| [Template](Finance.Accounting.TemplateLines.md#template) | [Templates](Finance.Accounting.Templates.md) | The `Template`(Finance.Accounting.TemplateLines.md#template) to which this TemplateLine belongs. `Required` `Filter(multi eq)` `Owner` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| TemplateLineProperties | [TemplateLineProperties](Finance.Accounting.TemplateLineProperties.md) | List of `TemplateLineProperty`(Finance.Accounting.TemplateLineProperties.md) child objects, based on the `Finance.Accounting.TemplateLineProperty.TemplateLine`(Finance.Accounting.TemplateLineProperties.md#templateline) back reference 


## Attribute Details

### AmountColumnName

The name of the column within the amount rowset where the amount is located. `Required`

_Type_: **string (64)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### AmountCondition

Condition for the amount. The line is accounted only when the condition is matched. The condition can be one of: null - no condition, the line should be accounted unconditionally; '+' - The amount should be positive; '-' - The amount should be negative. The amount is matched as returned from the source, before applying the Multiplier.

_Type_: **[AmountCondition](Finance.Accounting.TemplateLines.md#amountcondition) __nullable__**  
Allowed values for the `AmountCondition`(Finance.Accounting.TemplateLines.md#amountcondition) data attribute  
_Allowed Values (Finance.Accounting.TemplateLinesRepository.AmountCondition Enum Members)_  

| Value | Description |
| ---- | --- |
| Positive | Positive value. Stored as '+'. <br /> _Database Value:_ '+' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Positive' |
| Negative | Negative value. Stored as '-'. <br /> _Database Value:_ '-' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Negative' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### AmountRowId

The id of the row from the amount rowset where the amount is located. null means to account one by one for all rows within the rowset. `Filter(multi eq)`

_Type_: **guid __nullable__**  
_Supported Filters_: **Equals, EqualsIn**  

### AmountRowName

The name of definition, specified in Amount_Row_Id. null means that no Amount_Row_Id is specified or there is no name.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### AmountSourceFilter

Filter that further specifies which rows from the amount rowset determine the amount.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### AmountSourceName

The source rowset for the amount. For example: DocLines, DocHeader, Additional Amounts, Stock Types, etc. `Required`

_Type_: **string (64)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### FilterXML

The line is accounted only when the filter is satisfied compared with the source document header.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### LineNo

Consecutive number of the line within the template. Determines the order of execution of the template lines. `Required`

_Type_: **int32**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

_Back-End Default Expression:_  
`( obj.Template.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`

_Front-End Recalc Expressions:_  
`( obj.Template.Lines.Select( c => c.LineNo).DefaultIfEmpty( 0).Max( ) + 10)`
### Multiplier

Factor by which the amount from the source will be multiplied. `Required` `Default(1)`

_Type_: **decimal (18, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **1**  

### Notes

Notes for this TemplateLine.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ValidFromDate

Start date from which the accounting template line is valid. `Filter(multi eq;ge;le)`

_Type_: **datetime __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  

### ValidToDate

End date to which the accounting template line is valid. `Filter(multi eq;ge;le)`

_Type_: **datetime __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan, EqualsIn**  
_Supports Order By_: **False**  


## Reference Details

### CreditAccount

The account which should be credited. `Required` `Filter(multi eq)`

_Type_: **[Accounts](Finance.Accounting.Accounts.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### DebitAccount

The account which should be debited. `Required` `Filter(multi eq)`

_Type_: **[Accounts](Finance.Accounting.Accounts.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### Template

The `Template`(Finance.Accounting.TemplateLines.md#template) to which this TemplateLine belongs. `Required` `Filter(multi eq)` `Owner`

_Type_: **[Templates](Finance.Accounting.Templates.md)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.TemplateLines erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Finance.Accounting.TemplateLines erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Finance_Accounting_TemplateLines?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Finance_Accounting_TemplateLines?$top=10>

