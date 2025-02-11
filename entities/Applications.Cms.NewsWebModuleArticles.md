---
uid: Applications.Cms.NewsWebModuleArticles
---
# Applications.Cms.NewsWebModuleArticles Entity

**Namespace:** [Applications.Cms](Applications.Cms.md)  

Represents an article in a news web module. Entity: Cms_News_Web_Module_Articles

## Default Visualization
Default Display Text Format:  
_{LanguageCode}_  
Default Search Members:  
_LanguageCode_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Applications.Cms.NewsWebModuleArticles](Applications.Cms.NewsWebModuleArticles.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ArticleTextHtml](Applications.Cms.NewsWebModuleArticles.md#articletexthtml) | string (max) __nullable__ | The actual article text, stored as Html. Only the <BODY> of the Html is stored. The language of the text is specified in Language Code. 
| [Id](Applications.Cms.NewsWebModuleArticles.md#id) | guid |  
| [IsPublished](Applications.Cms.NewsWebModuleArticles.md#ispublished) | boolean | Specifies whether the article is published for display on web. `Required` `Default(false)` 
| [LanguageCode](Applications.Cms.NewsWebModuleArticles.md#languagecode) | string (8) | The language code of the article text. `Required` 
| [PublishDate](Applications.Cms.NewsWebModuleArticles.md#publishdate) | datetime | The date and time when the news article should appear to be published. `Required` `Default(Now)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AuthorPublicUser](Applications.Cms.NewsWebModuleArticles.md#authorpublicuser) | [PublicUsers](Systems.External.PublicUsers.md) | The author of the news article. `Required` `Filter(multi eq)` |
| [NewsWebModule](Applications.Cms.NewsWebModuleArticles.md#newswebmodule) | [NewsWebModules](Applications.Cms.NewsWebModules.md) | The News Web Module, to which the current article is added. `Required` `Filter(multi eq)` |


## Attribute Details

### ArticleTextHtml

The actual article text, stored as Html. Only the <BODY> of the Html is stored. The language of the text is specified in Language Code.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsPublished

Specifies whether the article is published for display on web. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### LanguageCode

The language code of the article text. `Required`

_Type_: **string (8)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **8**  

### PublishDate

The date and time when the news article should appear to be published. `Required` `Default(Now)`

_Type_: **datetime**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTime**  


## Reference Details

### AuthorPublicUser

The author of the news article. `Required` `Filter(multi eq)`

_Type_: **[PublicUsers](Systems.External.PublicUsers.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### NewsWebModule

The News Web Module, to which the current article is added. `Required` `Filter(multi eq)`

_Type_: **[NewsWebModules](Applications.Cms.NewsWebModules.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Applications.Cms.NewsWebModuleArticles erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Cms.NewsWebModuleArticles erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Cms_NewsWebModuleArticles?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Cms_NewsWebModuleArticles?$top=10>

