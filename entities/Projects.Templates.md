---
uid: Projects.Templates
---
# Projects.Templates Entity

**Namespace:** [Projects](Projects.md)  

Contains templates for creating new projects. Entity: Prj_Templates

## Default Visualization
Default Display Text Format:  
_{ProjectTemplateName}_  
Default Search Members:  
_ProjectTemplateName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Projects.Templates](Projects.Templates.md)  
  * [Projects.TemplateRisks](Projects.TemplateRisks.md)  
  * [Projects.TemplateWorkElements](Projects.TemplateWorkElements.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Projects.Templates.md#id) | guid |  
| [Notes](Projects.Templates.md#notes) | string (max) __nullable__ | Notes for this Template. 
| [ProjectTemplateName](Projects.Templates.md#projecttemplatename) | string (254) | The name of the project template. `Required` 

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Risks | [TemplateRisks](Projects.TemplateRisks.md) | List of `TemplateRisk`(Projects.TemplateRisks.md) child objects, based on the `Projects.TemplateRisk.ProjectTemplate`(Projects.TemplateRisks.md#projecttemplate) back reference 
| WorkElements | [TemplateWorkElements](Projects.TemplateWorkElements.md) | List of `TemplateWorkElement`(Projects.TemplateWorkElements.md) child objects, based on the `Projects.TemplateWorkElement.ProjectTemplate`(Projects.TemplateWorkElements.md#projecttemplate) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Notes

Notes for this Template.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### ProjectTemplateName

The name of the project template. `Required`

_Type_: **string (254)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  



## Business Rules

[!list limit=1000 erp.entity=Projects.Templates erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Projects.Templates erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Projects_Templates?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Projects_Templates?$top=10>

