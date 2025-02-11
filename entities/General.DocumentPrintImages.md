---
uid: General.DocumentPrintImages
---
# General.DocumentPrintImages Entity

**Namespace:** [General](General.md)  

Contains the data of a printout of a document as it was obtained from the data source in the moment of printing. Entity: Gen_Document_Print_Images

## Default Visualization
Default Display Text Format:  
_{PrintoutLayout.Name}_  
Default Search Members:  
_PrintoutLayout.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.PrintoutLayouts](General.PrintoutLayouts.md)  
Aggregate Root:  
[General.PrintoutLayouts](General.PrintoutLayouts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](General.DocumentPrintImages.md#id) | guid |  
| [PrintImage](General.DocumentPrintImages.md#printimage) | byte[] | The data of the printout, stored in the format, specified in Print Image Format. `Required` 
| [PrintImageFormat](General.DocumentPrintImages.md#printimageformat) | string (3) | The format, which is used to represent the print image. Currently, only 'CDS' = Compressed Data Set is supported. `Required` `Default("CDS")` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [PrintoutLayout](General.DocumentPrintImages.md#printoutlayout) | [PrintoutLayouts](General.PrintoutLayouts.md) | The print layout, which was used for the current printout. `Required` `Filter(multi eq)` `Owner` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### PrintImage

The data of the printout, stored in the format, specified in Print Image Format. `Required`

_Type_: **byte[]**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### PrintImageFormat

The format, which is used to represent the print image. Currently, only 'CDS' = Compressed Data Set is supported. `Required` `Default("CDS")`

_Type_: **string (3)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **3**  
_Default Value_: **CDS**  


## Reference Details

### PrintoutLayout

The print layout, which was used for the current printout. `Required` `Filter(multi eq)` `Owner`

_Type_: **[PrintoutLayouts](General.PrintoutLayouts.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=General.DocumentPrintImages erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=General.DocumentPrintImages erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/General_DocumentPrintImages?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#General_DocumentPrintImages?$top=10>

