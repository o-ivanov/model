---
uid: Systems.Workflow.Routes
---
# Systems.Workflow.Routes Entity

**Namespace:** [Systems.Workflow](Systems.Workflow.md)  

Contains document routes, which specify which document generation procedures will be run upon document events. Entity: Wf_Routes

## Default Visualization
Default Display Text Format:  
_{ProcedureName}_  
Default Search Members:  
_ProcedureName_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[General.DocumentTypes](General.DocumentTypes.md)  
Aggregate Root:  
[General.DocumentTypes](General.DocumentTypes.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [ActivationDate](Systems.Workflow.Routes.md#activationdate) | date | The date from which (including) the route is active. The date is matched against the document date of the generating document. `Required` `Default(Today)` `Filter(ge;le)` 
| [Active](Systems.Workflow.Routes.md#active) | boolean | True if the route is active, otherwise false. `Required` `Default(true)` `Filter(eq)` 
| [AllowedGenerationTypes](Systems.Workflow.Routes.md#allowedgenerationtypes) | [AllowedGenerationTypes](Systems.Workflow.Routes.md#allowedgenerationtypes) | Determines the possible types of the generation of the destination document: A=Auto, M=Manual, B=Both (Auto and Manual). `Required` `Default("B")` `Filter(multi eq)` 
| [AllowObsoleteGeneration](Systems.Workflow.Routes.md#allowobsoletegeneration) | boolean | Allows the usage of unsupported generation procedures (marked as obsolete). This is a user override of the system prohibition of the usage of obsolete procedures. `Required` `Default(false)` 
| [ConditionFilterXML](Systems.Workflow.Routes.md#conditionfilterxml) | dataaccessfilter __nullable__ | Contains filter condition, which the document must match in order to execute the route. 
| [ConditionStatesBitMask](Systems.Workflow.Routes.md#conditionstatesbitmask) | [DocumentStateFlags](Systems.Workflow.Routes.md#conditionstatesbitmask) | The system states for which to execute the specified route. `Required` `Default(0)` 
| [ConnectedPartyCondition](Systems.Workflow.Routes.md#connectedpartycondition) | [ConnectedPartyCondition](Systems.Workflow.Routes.md#connectedpartycondition) | A - any party; C - connected party: to_party is enterprise company; U - unconnected party - not enterprise company;. `Required` `Default("A")` 
| [DeactivationDate](Systems.Workflow.Routes.md#deactivationdate) | date __nullable__ | The date until (including) the route is active. The date is matched against the document date of the generating document. Null means the route does not have a deactivation date. `Filter(ge;le)` 
| [DestinationState](Systems.Workflow.Routes.md#destinationstate) | [DocumentState](Systems.Workflow.Routes.md#destinationstate) | 0=New;10=Computer Planned;20=Human Planned;30=Released;40=Completed;50=Closed. `Required` 
| [Id](Systems.Workflow.Routes.md#id) | guid |  
| [NegativeConditionFilterXml](Systems.Workflow.Routes.md#negativeconditionfilterxml) | dataaccessfilter __nullable__ | The negative condition should NOT be matched by the document in order to execute the route. 
| [Notes](Systems.Workflow.Routes.md#notes) | string (254) __nullable__ | Notes for this Route. 
| [ParentDocument<br />RelationshipType](Systems.Workflow.Routes.md#parentdocumentrelationshiptype) | [ParentDocument<br />RelationshipType](Systems.Workflow.Routes.md#parentdocumentrelationshiptype) | Determines the default relationship type between the generated document and the parent document. `Required` `Default("S")` 
| [ProcedureName](Systems.Workflow.Routes.md#procedurename) | string (254) | The system name of the generation procedure, which must be executed by the route. `Required` 
| [ProcessEvent](Systems.Workflow.Routes.md#processevent) | string (254) | Event which triggers the route. Usually the event is change of state. Every document entity may define own custom events. `Required` 
| [ReadOnly](Systems.Workflow.Routes.md#readonly) | boolean | Indicates wheather the destination document shoul be read only. true - the destination document is read only. `Required` `Default(false)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [ConditionEnterpriseCompany](Systems.Workflow.Routes.md#conditionenterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | The enterprise company for which this route is activated. `Filter(multi eq)` |
| [ConditionUserStatus](Systems.Workflow.Routes.md#conditionuserstatus) | [DocumentTypeUserStatuses](General.DocumentTypeUserStatuses.md) (nullable) | The user-defined status, for which the document route is activated. `Filter(multi eq)` |
| [DestinationDocumentType](Systems.Workflow.Routes.md#destinationdocumenttype) | [DocumentTypes](General.DocumentTypes.md) (nullable) | The type of the document, that will be generated by executing the route. `Filter(multi eq)` |
| [DestinationEnterprise<br />Company](Systems.Workflow.Routes.md#destinationenterprisecompany) | [EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable) | The enterprise company in which to generate the target document. `Filter(multi eq)` |
| [DestinationEnterprise<br />CompanyLocation](Systems.Workflow.Routes.md#destinationenterprisecompanylocation) | [CompanyLocations](General.Contacts.CompanyLocations.md) (nullable) | The enterprise company location in which to generate the target document. `Filter(multi eq)` |
| [DestinationUserStatus](Systems.Workflow.Routes.md#destinationuserstatus) | [DocumentTypeUserStatuses](General.DocumentTypeUserStatuses.md) (nullable) | The user defined status to set to the generated document. `Filter(multi eq)` |
| [DocumentType](Systems.Workflow.Routes.md#documenttype) | [DocumentTypes](General.DocumentTypes.md) | The document type from which this route originates. Documents from this type generate sub-documents using this route. `Required` `Filter(multi eq)` `Owner` |

## Child Collections

| Name | Type | Description |
| ---- | ---- | --- |
| SalesOrderPayment<br />OrdersTemplates | [SalesOrderPaymentOrdersTemplates](Crm.Sales.SalesOrderPaymentOrdersTemplates.md) | List of `SalesOrderPayment<br />OrdersTemplate`(Crm.Sales.SalesOrderPayment<br />OrdersTemplates.md) child objects, based on the `Crm.Sales.SalesOrderPayment<br />OrdersTemplate.Route`(Crm.Sales.SalesOrderPayment<br />OrdersTemplates.md#route) back reference 
| TemplateRouteLinks | [TemplateRouteLinks](Finance.Accounting.TemplateRouteLinks.md) | List of `TemplateRouteLink`(Finance.Accounting.TemplateRouteLinks.md) child objects, based on the `Finance.Accounting.TemplateRouteLink.Route`(Finance.Accounting.TemplateRouteLinks.md#route) back reference 
| Templates | [Templates](Finance.Accounting.Templates.md) | List of `Template`(Finance.Accounting.Templates.md) child objects, based on the `Finance.Accounting.Template.Route`(Finance.Accounting.Templates.md#route) back reference 


## Attribute Details

### ActivationDate

The date from which (including) the route is active. The date is matched against the document date of the generating document. `Required` `Default(Today)` `Filter(ge;le)`

_Type_: **date**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDate**  

### Active

True if the route is active, otherwise false. `Required` `Default(true)` `Filter(eq)`

_Type_: **boolean**  
_Supported Filters_: **Equals**  
_Supports Order By_: **False**  
_Default Value_: **True**  

### AllowedGenerationTypes

Determines the possible types of the generation of the destination document: A=Auto, M=Manual, B=Both (Auto and Manual). `Required` `Default("B")` `Filter(multi eq)`

_Type_: **[AllowedGenerationTypes](Systems.Workflow.Routes.md#allowedgenerationtypes)**  
Allowed values for the `AllowedGenerationTypes`(Systems.Workflow.Routes.md#allowedgenerationtypes) data attribute  
_Allowed Values (Systems.Workflow.RoutesRepository.AllowedGenerationTypes Enum Members)_  

| Value | Description |
| ---- | --- |
| Auto | Auto value. Stored as 'A'. <br /> _Database Value:_ 'A' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Auto' |
| BothAutoAndManually | BothAutoAndManually value. Stored as 'B'. <br /> _Database Value:_ 'B' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'BothAutoAndManually' |
| Manually | Manually value. Stored as 'M'. <br /> _Database Value:_ 'M' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Manually' |

_Supported Filters_: **Equals, EqualsIn**  
_Supports Order By_: **False**  
_Default Value_: **BothAutoAndManually**  

### AllowObsoleteGeneration

Allows the usage of unsupported generation procedures (marked as obsolete). This is a user override of the system prohibition of the usage of obsolete procedures. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  

### ConditionFilterXML

Contains filter condition, which the document must match in order to execute the route.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### ConditionStatesBitMask

The system states for which to execute the specified route. `Required` `Default(0)`

_Type_: **[DocumentStateFlags](Systems.Workflow.Routes.md#conditionstatesbitmask)**  
Enumeration of document system states that can be combined in bit mask  
_Allowed Values (General.DocumentStateFlags Enum Members)_  

| Value | Description |
| ---- | --- |
| New | New document, just created. Can be edited. (Stored as 1). <br /> _Database Value:_ 1 <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'New' |
| Planned | Planned by the system for future releasing. (Stored as 2). <br /> _Database Value:_ 2 <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'Planned' |
| FirmPlanned | Planned by operator for future releasing. (Stored as 4). <br /> _Database Value:_ 4 <br /> _Model Value:_ 4 <br /> _Domain API Value:_ 'FirmPlanned' |
| Released | Released document. Changes can be applied only through adjustment documents. (Stored as 8). <br /> _Database Value:_ 8 <br /> _Model Value:_ 8 <br /> _Domain API Value:_ 'Released' |
| Completed | Work has completed. (Stored as 16). <br /> _Database Value:_ 16 <br /> _Model Value:_ 16 <br /> _Domain API Value:_ 'Completed' |
| Adjustment | Document which adjusts other released documents. (Stored as 32). <br /> _Database Value:_ 32 <br /> _Model Value:_ 32 <br /> _Domain API Value:_ 'Adjustment' |
| Closed | The document is audited and closed. Adjustments are not allowed, but reopening is allowed. (Stored as 64). <br /> _Database Value:_ 64 <br /> _Model Value:_ 64 <br /> _Domain API Value:_ 'Closed' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **0**  

### ConnectedPartyCondition

A - any party; C - connected party: to_party is enterprise company; U - unconnected party - not enterprise company;. `Required` `Default("A")`

_Type_: **[ConnectedPartyCondition](Systems.Workflow.Routes.md#connectedpartycondition)**  
Allowed values for the `ConnectedPartyCondition`(Systems.Workflow.Routes.md#connectedpartycondition) data attribute  
_Allowed Values (Systems.Workflow.RoutesRepository.ConnectedPartyCondition Enum Members)_  

| Value | Description |
| ---- | --- |
| AnyParty | AnyParty value. Stored as 'A'. <br /> _Database Value:_ 'A' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'AnyParty' |
| ConnectedParty | ConnectedParty value. Stored as 'C'. <br /> _Database Value:_ 'C' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'ConnectedParty' |
| UnconnectedParty | UnconnectedParty value. Stored as 'U'. <br /> _Database Value:_ 'U' <br /> _Model Value:_ 2 <br /> _Domain API Value:_ 'UnconnectedParty' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **AnyParty**  

### DeactivationDate

The date until (including) the route is active. The date is matched against the document date of the generating document. Null means the route does not have a deactivation date. `Filter(ge;le)`

_Type_: **date __nullable__**  
_Supported Filters_: **GreaterThanOrLessThan**  
_Supports Order By_: **False**  

### DestinationState

0=New;10=Computer Planned;20=Human Planned;30=Released;40=Completed;50=Closed. `Required`

_Type_: **[DocumentState](Systems.Workflow.Routes.md#destinationstate)**  
Enumeration of document system states  
_Allowed Values (General.DocumentState Enum Members)_  

| Value | Description |
| ---- | --- |
| New | New document, just created. Can be edited. (Stored as 0). <br /> _Database Value:_ 0 <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'New' |
| Adjustment | Document which adjusts other released documents. (Stored as 5). <br /> _Database Value:_ 5 <br /> _Model Value:_ 5 <br /> _Domain API Value:_ 'Adjustment' |
| Planned | Planned by the system for future releasing. (Stored as 10). <br /> _Database Value:_ 10 <br /> _Model Value:_ 10 <br /> _Domain API Value:_ 'Planned' |
| FirmPlanned | Planned by operator for future releasing. (Stored as 20). <br /> _Database Value:_ 20 <br /> _Model Value:_ 20 <br /> _Domain API Value:_ 'FirmPlanned' |
| Released | Released document. Changes can be applied only through adjustment documents. (Stored as 30). <br /> _Database Value:_ 30 <br /> _Model Value:_ 30 <br /> _Domain API Value:_ 'Released' |
| Completed | Work has completed. (Stored as 40). <br /> _Database Value:_ 40 <br /> _Model Value:_ 40 <br /> _Domain API Value:_ 'Completed' |
| Closed | The document is audited and closed. Adjustments are not allowed, but reopening is allowed. (Stored as 50). <br /> _Database Value:_ 50 <br /> _Model Value:_ 50 <br /> _Domain API Value:_ 'Closed' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### NegativeConditionFilterXml

The negative condition should NOT be matched by the document in order to execute the route.

_Type_: **dataaccessfilter __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  

### Notes

Notes for this Route.

_Type_: **string (254) __nullable__**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ParentDocumentRelationshipType

Determines the default relationship type between the generated document and the parent document. `Required` `Default("S")`

_Type_: **[ParentDocument<br />RelationshipType](Systems.Workflow.Routes.md#parentdocumentrelationshiptype)**  
Relationship between parent and child documents  
_Allowed Values (General.ParentDocumentRelationshipType Enum Members)_  

| Value | Description |
| ---- | --- |
| Subtask | The child document is a sub-task of the parent document. (Complete child to complete parent) <br /> _Database Value:_ 'S' <br /> _Model Value:_ 0 <br /> _Domain API Value:_ 'Subtask' |
| NextTask | The child document is next task of the parent document. (Complete parent to complete child) <br /> _Database Value:_ 'N' <br /> _Model Value:_ 1 <br /> _Domain API Value:_ 'NextTask' |

_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **Subtask**  

### ProcedureName

The system name of the generation procedure, which must be executed by the route. `Required`

_Type_: **string (254)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ProcessEvent

Event which triggers the route. Usually the event is change of state. Every document entity may define own custom events. `Required`

_Type_: **string (254)**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Maximum Length_: **254**  

### ReadOnly

Indicates wheather the destination document shoul be read only. true - the destination document is read only. `Required` `Default(false)`

_Type_: **boolean**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **False**  


## Reference Details

### ConditionEnterpriseCompany

The enterprise company for which this route is activated. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### ConditionUserStatus

The user-defined status, for which the document route is activated. `Filter(multi eq)`

_Type_: **[DocumentTypeUserStatuses](General.DocumentTypeUserStatuses.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DestinationDocumentType

The type of the document, that will be generated by executing the route. `Filter(multi eq)`

_Type_: **[DocumentTypes](General.DocumentTypes.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DestinationEnterpriseCompany

The enterprise company in which to generate the target document. `Filter(multi eq)`

_Type_: **[EnterpriseCompanies](General.EnterpriseCompanies.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DestinationEnterpriseCompanyLocation

The enterprise company location in which to generate the target document. `Filter(multi eq)`

_Type_: **[CompanyLocations](General.Contacts.CompanyLocations.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DestinationUserStatus

The user defined status to set to the generated document. `Filter(multi eq)`

_Type_: **[DocumentTypeUserStatuses](General.DocumentTypeUserStatuses.md) (nullable)**  
_Supported Filters_: **Equals, EqualsIn**  

### DocumentType

The document type from which this route originates. Documents from this type generate sub-documents using this route. `Required` `Filter(multi eq)` `Owner`

_Type_: **[DocumentTypes](General.DocumentTypes.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  



## Business Rules

[!list limit=1000 erp.entity=Systems.Workflow.Routes erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Systems.Workflow.Routes erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Systems_Workflow_Routes?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Systems_Workflow_Routes?$top=10>

