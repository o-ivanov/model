---
uid: Systems.Core.DataEntryDefaultValues
---
# Systems.Core.DataEntryDefaultValues Entity

**Namespace:** [Systems.Core](Systems.Core.md)  

Contains user-specified default values for columns in data entry forms. Entity: Sys_Default_Values

## Default Visualization
Default Display Text Format:  
_{ColumnName}_  
Default Search Members:  
_ColumnName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Systems.Core.DataEntryDefaultValues](Systems.Core.DataEntryDefaultValues.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ColumnName](Systems.Core.DataEntryDefaultValues.md#columnname) | string (64) | The column for which the default is specified. `Required` `Filter(eq)` 
| [ConditionFormName](Systems.Core.DataEntryDefaultValues.md#conditionformname) | string (64) __nullable__ | If not null specifies that the default should be applied only if Form_Name equals the specified value. `Filter(eq)` `ORD` 
| [ConditionUserLogin](Systems.Core.DataEntryDefaultValues.md#conditionuserlogin) | string (64) __nullable__ | If not null specifies that the default should be applied only if User_Login equals this value. `Filter(eq)` 
| [ConditionUserMachine](Systems.Core.DataEntryDefaultValues.md#conditionusermachine) | string (64) __nullable__ | If not null specifies that the default should be applied only if User_Machine equals this value. `Filter(eq)` 
| [DefaultValueField](Systems.Core.DataEntryDefaultValues.md#defaultvaluefield) | string (254) __nullable__ | The default value for Column_Name. Should be applied only if the other conditions are met. null specifies null default. 
| [Id](Systems.Core.DataEntryDefaultValues.md#id) | guid |  
| [PanelName](Systems.Core.DataEntryDefaultValues.md#panelname) | string (64) __nullable__ | When not null, specifies the panel for which the default value applies. `Filter(eq;like)` 
| [TableName](Systems.Core.DataEntryDefaultValues.md#tablename) | string (64) __nullable__ | The table, containing the column for which the default value is specified. `Filter(eq)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ConditionDocumentType](Systems.Core.DataEntryDefaultValues.md#conditiondocumenttype) | [DocumentTypes](General.DocumentTypes.md) (nullable) | If not null specifies that the default should be applied only if Document_Type_Id equals this value. `Filter(multi eq)` |
| [ConditionEnterpriseCompany](Systems.Core.DataEntryDefaultValues.md#conditionenterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | If not null specifies that the default should be applied only if Enterprise_Company_Id equals this value. `Filter(multi eq)` |
| [ConditionRole](Systems.Core.DataEntryDefaultValues.md#conditionrole) | [Roles](Systems.Workflow.Roles.md) (nullable) | When not null, specifies that the default value should be applied only when the user plays the specified role. `Filter(multi eq)` |


## Attribute Details

### ColumnName

The column for which the default is specified. `Required` `Filter(eq)`

_Type_: **string (64)**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### ConditionFormName

If not null specifies that the default should be applied only if Form_Name equals the specified value. `Filter(eq)` `ORD`

_Type_: **string (64) __nullable__**  
_Indexed_: **True**  
_Supported Filters_: **Equals**  
_Supports Order By_: **True**  
_Maximum Length_: **64**  

### ConditionUserLogin

If not null specifies that the default should be applied only if User_Login equals this value. `Filter(eq)`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### ConditionUserMachine

If not null specifies that the default should be applied only if User_Machine equals this value. `Filter(eq)`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### DefaultValueField

The default value for Column_Name. Should be applied only if the other conditions are met. null specifies null default.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### PanelName

When not null, specifies the panel for which the default value applies. `Filter(eq;like)`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  

### TableName

The table, containing the column for which the default value is specified. `Filter(eq)`

_Type_: **string (64) __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Maximum Length_: **64**  


## Reference Details

### ConditionDocumentType

If not null specifies that the default should be applied only if Document_Type_Id equals this value. `Filter(multi eq)`

_Type_: **[DocumentTypes](General.DocumentTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionEnterpriseCompany

If not null specifies that the default should be applied only if Enterprise_Company_Id equals this value. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionRole

When not null, specifies that the default value should be applied only when the user plays the specified role. `Filter(multi eq)`

_Type_: **[Roles](Systems.Workflow.Roles.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Systems.Core.DataEntryDefaultValues erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Core.DataEntryDefaultValues erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Core_DataEntryDefaultValues?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Core_DataEntryDefaultValues?$top=10>

