---
uid: Applications.Cms.WebSiteLanguages
---
# Applications.Cms.WebSiteLanguages Entity

**Namespace:** [Applications.Cms](Applications.Cms.md)  

Specifies a language, supported by the web site. Entity: Cms_Web_Site_Languages

## Default Visualization
Default Display Text Format:  
_{WebSite.Name}_  
Default Search Members:  
_LanguageCode; WebSite.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Cms.WebSites](Applications.Cms.WebSites.md)  
Aggregate Root:  
[Applications.Cms.WebSites](Applications.Cms.WebSites.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Applications.Cms.WebSiteLanguages.md#id) | guid |  
| [IsActive](Applications.Cms.WebSiteLanguages.md#isactive) | boolean | Specifies whether the support for the language is activated and should be published on the web. `Required` `Default(false)` 
| [LanguageCode](Applications.Cms.WebSiteLanguages.md#languagecode) | string (2) | Two letter ISO language code. Sub-tags are currently not supported. `Required` 
| [Notes](Applications.Cms.WebSiteLanguages.md#notes) | string (max) __nullable__ | Notes for this WebSiteLanguage. 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [WebSite](Applications.Cms.WebSiteLanguages.md#website) | [WebSites](Applications.Cms.WebSites.md) | The web site, for which the language is specified. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsActive

Specifies whether the support for the language is activated and should be published on the web. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### LanguageCode

Two letter ISO language code. Sub-tags are currently not supported. `Required`

_Type_: **string (2)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2**  

### Notes

Notes for this WebSiteLanguage.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  


## Reference Details

### WebSite

The web site, for which the language is specified. `Required` `Filter(multi eq)` `Owner`

_Type_: **[WebSites](Applications.Cms.WebSites.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Applications.Cms.WebSiteLanguages erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Cms.WebSiteLanguages erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Cms_WebSiteLanguages?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Cms_WebSiteLanguages?$top=10>

