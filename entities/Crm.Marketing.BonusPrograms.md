---
uid: Crm.Marketing.BonusPrograms
---
# Crm.Marketing.BonusPrograms Entity

**Namespace:** [Crm.Marketing](Crm.Marketing.md)  

Bonus programs allow automatic adding of new line with bonus product or automatic application of discount in a sales document. Entity: Crm_Bonus_Programs

## Default Visualization
Default Display Text Format:  
_{Name:T}_  
Default Search Members:  
_Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Tree  
* [Crm.Marketing.BonusPrograms](Crm.Marketing.BonusPrograms.md)  
  * [Crm.Marketing.BonusProgramProducts](Crm.Marketing.BonusProgramProducts.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Active](Crm.Marketing.BonusPrograms.md#active) | boolean __nullable__ | General condition if the bonus is active. The other conditions are verified only for active bonus programs. `Default(true)` `Filter(eq)` 
| [BonusAction](Crm.Marketing.BonusPrograms.md#bonusaction) | [BonusAction](Crm.Marketing.BonusPrograms.md#bonusaction) | Bonus action: P-Add product to the order, A-Add amount, D-Give discount. `Required` `Default("D")` `Filter(multi eq)` 
| [BonusDocumentAmountPercent](Crm.Marketing.BonusPrograms.md#bonusdocumentamountpercent) | decimal (7, 6) __nullable__ | The percent of the document amount that is rewarded. Should be null if and only if the bonus document amount is null. 
| [BonusLineDiscountPercent](Crm.Marketing.BonusPrograms.md#bonuslinediscountpercent) | decimal (7, 6) | The percent discount to be applied to bonus lines. Used only for bonus programs with Action = D (Discount). `Required` `Default(0)` 
| [BonusProductQuantity](Crm.Marketing.BonusPrograms.md#bonusproductquantity) | [Quantity (12, 3)](../data-types.md#quantity) __nullable__ | The quantity rewarded of the bonus product. Should be not null if and only when the bonus product is not null. `Unit: BonusProductQuantityUnit` 
| [BonusProductQuantity<br />MultiplierForEach<br />LotSize](Crm.Marketing.BonusPrograms.md#bonusproductquantitymultiplierforeachlotsize) | [Quantity (12, 3)](../data-types.md#quantity) __nullable__ | When not null, specifies that the bonus quantity should be multiplied for each of the specified lot size. Can be non-null only when condition product is specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit` 
| [ConditionCustomerFilterXML](Crm.Marketing.BonusPrograms.md#conditioncustomerfilterxml) | dataaccessfilter __nullable__ | When not null, specifies that the bonus should be applied only to customers who meet the specified criteria. The criteria could include custom properties. 
| [ConditionDistribution<br />ChannelFilterX<br />ML](Crm.Marketing.BonusPrograms.md#conditiondistributionchannelfilterxml) | dataaccessfilter __nullable__ | When not null, specifies that the bonus should be applied only when the distribution channel of the sales order has the specified characteristics. 
| [ConditionFromDate](Crm.Marketing.BonusPrograms.md#conditionfromdate) | datetime __nullable__ | Starting date of the bonus. null means that there is no starting date restriction. `Filter(eq;ge;le)` 
| [ConditionMaxAmount](Crm.Marketing.BonusPrograms.md#conditionmaxamount) | [Amount (12, 2)](../data-types.md#amount) __nullable__ | If not null specifies the maximal amount for which the bonus is valid. null means that there is no maximal amount condition for the bonus. `Currency: ConditionDocumentCurrency` `Filter(eq;ge;le)` 
| [ConditionMaxQuantity](Crm.Marketing.BonusPrograms.md#conditionmaxquantity) | [Quantity (12, 3)](../data-types.md#quantity) __nullable__ | When not null, specifies condition for the bonus - maximal quantity of the condition product. If the condition product is null, this cannot be specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit` `Filter(eq;ge;le)` 
| [ConditionMinAmount](Crm.Marketing.BonusPrograms.md#conditionminamount) | [Amount (12, 2)](../data-types.md#amount) __nullable__ | If not null specifies the minimal amount for which the bonus is valid. null means that there is no minimal amount condition for the bonus. `Currency: ConditionDocumentCurrency` `Filter(eq;ge;le)` 
| [ConditionMinQuantity](Crm.Marketing.BonusPrograms.md#conditionminquantity) | [Quantity (12, 3)](../data-types.md#quantity) __nullable__ | When not null, specifies condition for the bonus - minimal quantity of the condition product. If the condition product is null, this cannot be specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit` `Filter(eq;ge;le)` 
| [ConditionShipTo<br />CustomerFilter<br />XML](Crm.Marketing.BonusPrograms.md#conditionshiptocustomerfilterxml) | dataaccessfilter __nullable__ | When not null, specifies that the bonus should be applied only when shipping to customer with the specified characteristics. 
| [ConditionToDate](Crm.Marketing.BonusPrograms.md#conditiontodate) | datetime __nullable__ | Ending date (inclusive) of the bonus. null means that there is no ending date restriction. `Filter(eq;ge;le)` 
| [Id](Crm.Marketing.BonusPrograms.md#id) | guid |  
| [Name](Crm.Marketing.BonusPrograms.md#name) | [MultilanguageString](../data-types.md#multilanguagestring) | The name of the bonus program. `Required` `Filter(eq;like)` 
| [Priority](Crm.Marketing.BonusPrograms.md#priority) | [Priority](Crm.Marketing.BonusPrograms.md#priority) | Priority (1-5) of the bonus program comparative to the other bonus programs. 1 is the lowest priority. `Required` `Default(2)` `Filter(multi eq)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [BonusDocumentAmountType](Crm.Marketing.BonusPrograms.md#bonusdocumentamounttype) | [DocumentAmountTypes](General.DocumentAmountTypes.md) (nullable) | When not null specifies that a document amount should be added to the order when the bonus conditions are met. null means that the bonus reward is not a document amount. `Filter(multi eq)` |
| [BonusProduct](Crm.Marketing.BonusPrograms.md#bonusproduct) | [Products](General.Products.Products.md) (nullable) | The product that is rewarded if the bonus conditions are met. null means that the bonus reward is not product. `Filter(multi eq)` |
| [BonusProductQuantityUnit](Crm.Marketing.BonusPrograms.md#bonusproductquantityunit) | [MeasurementUnits](General.MeasurementUnits.md) (nullable) | The measurement unit of the quantity rewarded of the bonus product. Should be not null if and only when the bonus product is not null. `Filter(multi eq)` |
| [Campaign](Crm.Marketing.BonusPrograms.md#campaign) | [Campaigns](Crm.Marketing.Campaigns.md) (nullable) | Тhe marketing campaign to which the current definition belongs. `Filter(multi eq)` `Introduced in version 22.1.4.67` |
| [CompanyLocation](Crm.Marketing.BonusPrograms.md#companylocation) | [CompanyLocations](General.Contacts.CompanyLocations.md) (nullable) | When set, specifies that the sales document must be of the specified enterprise company location. `Filter(multi eq)` |
| [ConditionCustomer](Crm.Marketing.BonusPrograms.md#conditioncustomer) | [Customers](Crm.Customers.md) (nullable) | When not null, specifies that the bonus should be applied only to the specified customer. `Filter(multi eq)` |
| [ConditionDistribution<br />Channel](Crm.Marketing.BonusPrograms.md#conditiondistributionchannel) | [DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable) | When not null, specifies that the bonus should be applied only when the specified channel is used. `Filter(multi eq)` |
| [ConditionDocumentCurrency](Crm.Marketing.BonusPrograms.md#conditiondocumentcurrency) | [Currencies](General.Currencies.md) (nullable) | Condition for the document amount. Should be not null if any of the amount conditions are not null. `Filter(multi eq)` |
| [ConditionPriceList](Crm.Marketing.BonusPrograms.md#conditionpricelist) | [PriceLists](Crm.PriceLists.md) (nullable) | When not null, specifies that the bonus should be applied only when the sales order is based on the speicfied price list. `Filter(multi eq)` |
| [ConditionProduct](Crm.Marketing.BonusPrograms.md#conditionproduct) | [Products](General.Products.Products.md) (nullable) | When not null, specifies a conditional product, which is required to exist in the sales document in order for the bonus program to be applied. If a condition with multiple products is required, additional products can be added to Bonus Program Products. If null the other conditions should be evaluated against the whole order. `Filter(multi eq)` |
| [ConditionProductGroup](Crm.Marketing.BonusPrograms.md#conditionproductgroup) | [ProductGroups](General.Products.ProductGroups.md) (nullable) | When not null, specifies that the bonus should be applied only to products from the specified product group or its subgroups. `Filter(multi eq)` |
| [ConditionShipToCustomer](Crm.Marketing.BonusPrograms.md#conditionshiptocustomer) | [Customers](Crm.Customers.md) (nullable) | When not null, specifies that the bonus should be applied only when shipping to the specified customer. `Filter(multi eq)` |
| [ConditionTargetGroup](Crm.Marketing.BonusPrograms.md#conditiontargetgroup) | [TargetGroups](Crm.Marketing.TargetGroups.md) (nullable) | When not null, specifies that the bonus should be applied only to the specified target customer group. `Filter(multi eq)` |
| [EnterpriseCompany](Crm.Marketing.BonusPrograms.md#enterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | When set, specifies that the sales document must be of the specified enterprise company. `Filter(multi eq)` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| Products | [BonusProgramProducts](Crm.Marketing.BonusProgramProducts.md) | List of `BonusProgramProduct`(Crm.Marketing.BonusProgramProducts.md) child objects, based on the `Crm.Marketing.BonusProgramProduct.BonusProgram`(Crm.Marketing.BonusProgramProducts.md#bonusprogram) back reference 


## Attribute Details

### Active

General condition if the bonus is active. The other conditions are verified only for active bonus programs. `Default(true)` `Filter(eq)`

_Type_: **boolean __nullable__**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### BonusAction

Bonus action: P-Add product to the order, A-Add amount, D-Give discount. `Required` `Default("D")` `Filter(multi eq)`

_Type_: **[BonusAction](Crm.Marketing.BonusPrograms.md#bonusaction)**  
Allowed values for the `BonusAction`(Crm.Marketing.BonusPrograms.md#bonusaction) data attribute  
_Allowed Values (Crm.Marketing.BonusProgramsRepository.BonusAction Enum Members)_  

| Value | Description |
| ---- | --- |
| Product | Product value. Stored as 'P'. <br /> _Database Value:_ 'P' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Product' |
| Discount | Discount value. Stored as 'D'. <br /> _Database Value:_ 'D' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Discount' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **Discount**  

### BonusDocumentAmountPercent

The percent of the document amount that is rewarded. Should be null if and only if the bonus document amount is null.

_Type_: **decimal (7, 6) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### BonusLineDiscountPercent

The percent discount to be applied to bonus lines. Used only for bonus programs with Action = D (Discount). `Required` `Default(0)`

_Type_: **decimal (7, 6)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### BonusProductQuantity

The quantity rewarded of the bonus product. Should be not null if and only when the bonus product is not null. `Unit: BonusProductQuantityUnit`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### BonusProductQuantityMultiplierForEachLotSize

When not null, specifies that the bonus quantity should be multiplied for each of the specified lot size. Can be non-null only when condition product is specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionCustomerFilterXML

When not null, specifies that the bonus should be applied only to customers who meet the specified criteria. The criteria could include custom properties.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionDistributionChannelFilterXML

When not null, specifies that the bonus should be applied only when the distribution channel of the sales order has the specified characteristics.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionFromDate

Starting date of the bonus. null means that there is no starting date restriction. `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### ConditionMaxAmount

If not null specifies the maximal amount for which the bonus is valid. null means that there is no maximal amount condition for the bonus. `Currency: ConditionDocumentCurrency` `Filter(eq;ge;le)`

_Type_: **[Amount (12, 2)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### ConditionMaxQuantity

When not null, specifies condition for the bonus - maximal quantity of the condition product. If the condition product is null, this cannot be specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit` `Filter(eq;ge;le)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### ConditionMinAmount

If not null specifies the minimal amount for which the bonus is valid. null means that there is no minimal amount condition for the bonus. `Currency: ConditionDocumentCurrency` `Filter(eq;ge;le)`

_Type_: **[Amount (12, 2)](../data-types.md#amount) __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### ConditionMinQuantity

When not null, specifies condition for the bonus - minimal quantity of the condition product. If the condition product is null, this cannot be specified. `Unit: ConditionProduct.BaseMeasurementCategory.BaseUnit` `Filter(eq;ge;le)`

_Type_: **[Quantity (12, 3)](../data-types.md#quantity) __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### ConditionShipToCustomerFilterXML

When not null, specifies that the bonus should be applied only when shipping to customer with the specified characteristics.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionToDate

Ending date (inclusive) of the bonus. null means that there is no ending date restriction. `Filter(eq;ge;le)`

_Type_: **datetime __nullable__**  
_Supported Filters_: **Equals, GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### Name

The name of the bonus program. `Required` `Filter(eq;like)`

_Type_: **[MultilanguageString](../data-types.md#multilanguagestring)**  
_Supported Filters_: **Equals, Like**  
_Supports Order By_: **False**  

### Priority

Priority (1-5) of the bonus program comparative to the other bonus programs. 1 is the lowest priority. `Required` `Default(2)` `Filter(multi eq)`

_Type_: **[Priority](Crm.Marketing.BonusPrograms.md#priority)**  
Allowed values for the `Priority`(Crm.Marketing.BonusPrograms.md#priority) data attribute  
_Allowed Values (Crm.Marketing.BonusProgramsRepository.Priority Enum Members)_  

| Value | Description |
| ---- | --- |
| v_1Lowest | v_1Lowest value. Stored as 0. <br /> _Database Value:_ 0 <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'v_1Lowest' |
| Two | Two value. Stored as 1. <br /> _Database Value:_ 1 <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'Two' |
| Three | Three value. Stored as 2. <br /> _Database Value:_ 2 <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Three' |
| Four | Four value. Stored as 3. <br /> _Database Value:_ 3 <br /> _Model Value:_ 3 <br /> _Domain API Value:_ 'Four' |
| v_5Highest | v_5Highest value. Stored as 4. <br /> _Database Value:_ 4 <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'v_5Highest' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **2**  


## Reference Details

### BonusDocumentAmountType

When not null specifies that a document amount should be added to the order when the bonus conditions are met. null means that the bonus reward is not a document amount. `Filter(multi eq)`

_Type_: **[DocumentAmountTypes](General.DocumentAmountTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### BonusProduct

The product that is rewarded if the bonus conditions are met. null means that the bonus reward is not product. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### BonusProductQuantityUnit

The measurement unit of the quantity rewarded of the bonus product. Should be not null if and only when the bonus product is not null. `Filter(multi eq)`

_Type_: **[MeasurementUnits](General.MeasurementUnits.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### Campaign

Тhe marketing campaign to which the current definition belongs. `Filter(multi eq)` `Introduced in version 22.1.4.67`

_Type_: **[Campaigns](Crm.Marketing.Campaigns.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### CompanyLocation

When set, specifies that the sales document must be of the specified enterprise company location. `Filter(multi eq)`

_Type_: **[CompanyLocations](General.Contacts.CompanyLocations.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionCustomer

When not null, specifies that the bonus should be applied only to the specified customer. `Filter(multi eq)`

_Type_: **[Customers](Crm.Customers.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionDistributionChannel

When not null, specifies that the bonus should be applied only when the specified channel is used. `Filter(multi eq)`

_Type_: **[DistributionChannels](Crm.Marketing.DistributionChannels.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionDocumentCurrency

Condition for the document amount. Should be not null if any of the amount conditions are not null. `Filter(multi eq)`

_Type_: **[Currencies](General.Currencies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionPriceList

When not null, specifies that the bonus should be applied only when the sales order is based on the speicfied price list. `Filter(multi eq)`

_Type_: **[PriceLists](Crm.PriceLists.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionProduct

When not null, specifies a conditional product, which is required to exist in the sales document in order for the bonus program to be applied. If a condition with multiple products is required, additional products can be added to Bonus Program Products. If null the other conditions should be evaluated against the whole order. `Filter(multi eq)`

_Type_: **[Products](General.Products.Products.md) (nullable)**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionProductGroup

When not null, specifies that the bonus should be applied only to products from the specified product group or its subgroups. `Filter(multi eq)`

_Type_: **[ProductGroups](General.Products.ProductGroups.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionShipToCustomer

When not null, specifies that the bonus should be applied only when shipping to the specified customer. `Filter(multi eq)`

_Type_: **[Customers](Crm.Customers.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionTargetGroup

When not null, specifies that the bonus should be applied only to the specified target customer group. `Filter(multi eq)`

_Type_: **[TargetGroups](Crm.Marketing.TargetGroups.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### EnterpriseCompany

When set, specifies that the sales document must be of the specified enterprise company. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Crm.Marketing.BonusPrograms erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Crm.Marketing.BonusPrograms erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Crm_Marketing_BonusPrograms?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Crm_Marketing_BonusPrograms?$top=10>

