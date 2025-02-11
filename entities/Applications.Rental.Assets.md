---
uid: Applications.Rental.Assets
---
# Applications.Rental.Assets Entity

**Namespace:** [Applications.Rental](Applications.Rental.md)  

Contains the rentable assets. Entity: Rent_Assets

## Default Visualization
Default Display Text Format:  
_{RentalAssetName}_  
Default Search Members:  
_RentalAssetCode; RentalAssetName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Applications.Rental.AssetGroups](Applications.Rental.AssetGroups.md)  
Aggregate Root:  
[Applications.Rental.AssetGroups](Applications.Rental.AssetGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Applications.Rental.Assets.md#id) | guid |  
| [IsActive](Applications.Rental.Assets.md#isactive) | boolean | True if the asset is currently active and may be used in new documents. Deactivated assets are used only in reports. `Required` `Default(true)` `Filter(eq)` 
| [Notes](Applications.Rental.Assets.md#notes) | string (max) __nullable__ | Notes for this Asset. 
| [RentalAssetCode](Applications.Rental.Assets.md#rentalassetcode) | string (20) | Unique rental asset code. `Required` `Filter(eq;like)` `ORD` 
| [RentalAssetName](Applications.Rental.Assets.md#rentalassetname) | string (254) | The name of the rental asset. `Required` `Filter(like)` 
| [StandardGuaranteeAmount](Applications.Rental.Assets.md#standardguaranteeamount) | [Amount (14, 2)](../data-types.md#amount) __nullable__ | Standard default amount of the guarantee that is set for this asset when leased. `Currency: StandardGuarantee<br />AmountCurrency` `Filter(multi eq)` 
| [TimePeriodType](Applications.Rental.Assets.md#timeperiodtype) | [TimePeriodType](Applications.Rental.Assets.md#timeperiodtype) __nullable__ | Specifies the unit by which the periods of renting of this asset are measured. Possible values are: 'by days' or 'by months'. `Filter(multi eq)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [AccountingAsset](Applications.Rental.Assets.md#accountingasset) | [Assets](Finance.Assets.Assets.md) (nullable) | When not null identifies the corresponding accounting asset. `Filter(multi eq)` |
| [EnterpriseCompany](Applications.Rental.Assets.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | When not null, specifies that the asset is specific to a given enterprise company and may be used only in documents from this enterprise company. If null, the asset can be used in all enterprise companies. `Filter(multi eq)` |
| [Product](Applications.Rental.Assets.md#product) | [Products](General.Products.Products.md) (nullable) | Product which is used in the store transactions for this asset. `Filter(multi eq)` |
| [RentalAssetGroup](Applications.Rental.Assets.md#rentalassetgroup) | [AssetGroups](Applications.Rental.AssetGroups.md) | The logical group of the rental asset. `Required` `Filter(multi eq)` `Owner` |
| [RentalAssetType](Applications.Rental.Assets.md#rentalassettype) | [AssetTypes](Applications.Rental.AssetTypes.md) | The type of the asset. `Required` `Filter(multi eq)` |
| [SalesProduct](Applications.Rental.Assets.md#salesproduct) | [Products](General.Products.Products.md) (nullable) | Product which is used in the creation of Sales Orders to form the price of the service of renting this asset. `Filter(multi eq)` |
| [SerialNumber](Applications.Rental.Assets.md#serialnumber) | [SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable) | Serial number which in conjunction with the product for store operations allows for more accurate identification of the asset. `Filter(multi eq)` |
| [StandardGuarantee<br />AmountCurrency](Applications.Rental.Assets.md#standardguaranteeamountcurrency) | [Currencies](General.Currencies.md) (nullable) | Currency of the standard guarantee amount. `Filter(multi eq)` |
| [WorkSchedule](Applications.Rental.Assets.md#workschedule) | [WorkSchedules](General.Resources.WorkSchedules.md) (nullable) | Work schedule, which is used to calculate how many days this assets has been rented for (used only when the asset's lease by mode is by days). `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Consumables | [AssetConsumables](Applications.Rental.AssetConsumables.md) | List of `AssetConsumable`(Applications.Rental.AssetConsumables.md) child objects, based on the `Applications.Rental.AssetConsumable.RentalAsset`(Applications.Rental.AssetConsumables.md#rentalasset) back reference 


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### IsActive

True if the asset is currently active and may be used in new documents. Deactivated assets are used only in reports. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### Notes

Notes for this Asset.

_Type_: **string (max) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **2147483647**  

### RentalAssetCode

Unique rental asset code. `Required` `Filter(eq;like)` `ORD`

_Type_: **string (20)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **True**  
_Maximum Length_: **20**  

### RentalAssetName

The name of the rental asset. `Required` `Filter(like)`

_Type_: **string (254)**  
_Supported Filters_: **Like**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### StandardGuaranteeAmount

Standard default amount of the guarantee that is set for this asset when leased. `Currency: StandardGuaranteeAmountCurrency` `Filter(multi eq)`

_Type_: **[Amount (14, 2)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  

### TimePeriodType

Specifies the unit by which the periods of renting of this asset are measured. Possible values are: 'by days' or 'by months'. `Filter(multi eq)`

_Type_: **[TimePeriodType](Applications.Rental.Assets.md#timeperiodtype) __nullable__**  
Allowed values for the `TimePeriodType`(Applications.Rental.Assets.md#timeperiodtype) data attribute  
_Allowed Values (Applications.Rental.AssetsRepository.TimePeriodType Enum Members)_  

| Value | Description |
| ---- | --- |
| Days | Days value. Stored as 'D'. <br /> _Database Value:_ 'D' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Days' |
| Months | Months value. Stored as 'M'. <br /> _Database Value:_ 'M' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Months' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  


## Reference Details

### AccountingAsset

When not null identifies the corresponding accounting asset. `Filter(multi eq)`

_Type_: **[Assets](Finance.Assets.Assets.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### EnterpriseCompany

When not null, specifies that the asset is specific to a given enterprise company and may be used only in documents from this enterprise company. If null, the asset can be used in all enterprise companies. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Product

Product which is used in the store transactions for this asset. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( ( obj.SerialNumber != null) AndAlso ( obj.SerialNumber.Product != obj.Product)), obj.SerialNumber.Product, obj.Product)`
### RentalAssetGroup

The logical group of the rental asset. `Required` `Filter(multi eq)` `Owner`

_Type_: **[AssetGroups](Applications.Rental.AssetGroups.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### RentalAssetType

The type of the asset. `Required` `Filter(multi eq)`

_Type_: **[AssetTypes](Applications.Rental.AssetTypes.md)**  
_Supported Filters_: **Equals, EqualsIn**  

### SalesProduct

Product which is used in the creation of Sales Orders to form the price of the service of renting this asset. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### SerialNumber

Serial number which in conjunction with the product for store operations allows for more accurate identification of the asset. `Filter(multi eq)`

_Type_: **[SerialNumbers](Logistics.Inventory.SerialNumbers.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

_Front-End Recalc Expressions:_  
`IIF( ( ( obj.SerialNumber != null) AndAlso ( obj.Product != obj.SerialNumber.Product)), null, obj.SerialNumber)`
### StandardGuaranteeAmountCurrency

Currency of the standard guarantee amount. `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### WorkSchedule

Work schedule, which is used to calculate how many days this assets has been rented for (used only when the asset's lease by mode is by days). `Filter(multi eq)`

_Type_: **[WorkSchedules](General.Resources.WorkSchedules.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Applications.Rental.Assets erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Applications.Rental.Assets erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Applications_Rental_Assets?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Applications_Rental_Assets?$top=10>

