---
uid: Communities.SocialGroupMembers
---
# Communities.SocialGroupMembers Entity

**Namespace:** [Communities](Communities.md)  

Represents the membership of a user in a social group. Entity: Cmm_Social_Group_Members (Introduced in version 20.1)

## Default Visualization
Default Display Text Format:  
_{SocialGroup.Name}_  
Default Search Members:  
_SocialGroup.Name_  

## Aggregate
An [aggregate](https://docs.erp.net/tech/advanced/concepts/aggregates.html) is a cluster of domain objects that can be treated as a single unit.  

Aggregate Parent:  
[Communities.SocialGroups](Communities.SocialGroups.md)  
Aggregate Root:  
[Communities.SocialGroups](Communities.SocialGroups.md)  

## Attributes

| Name | Type | Description |
| ---- | ---- | --- |
| [Id](Communities.SocialGroupMembers.md#id) | guid |  
| [JoinTimeUtc](Communities.SocialGroupMembers.md#jointimeutc) | datetime | The exact server time (in UTC), when the user joined the group. `Required` `Default(NowUtc)` 

## References

| Name | Type | Description |
| ---- | ---- | --- |
| [SocialGroup](Communities.SocialGroupMembers.md#socialgroup) | [SocialGroups](Communities.SocialGroups.md) | The group in which the user participates. `Required` `Filter(multi eq)` `Owner` |
| [User](Communities.SocialGroupMembers.md#user) | [Users](Systems.Security.Users.md) | The user, who is a member of the group. `Required` `Filter(multi eq)` |


## Attribute Details

### Id

_Type_: **guid**  
_Indexed_: **True**  
_Supported Filters_: **Equals, EqualsIn**  
_Default Value_: **NewGuid**  

### JoinTimeUtc

The exact server time (in UTC), when the user joined the group. `Required` `Default(NowUtc)`

_Type_: **datetime**  
_Supported Filters_: **NotFilterable**  
_Supports Order By_: **False**  
_Default Value_: **CurrentDateTimeUtc**  


## Reference Details

### SocialGroup

The group in which the user participates. `Required` `Filter(multi eq)` `Owner`

_Type_: **[SocialGroups](Communities.SocialGroups.md)**  
_Supported Filters_: **Equals, EqualsIn**  
_[Filterable Reference](https://docs.erp.net/dev/domain-api/filterable-references.html)_: **True**  

### User

The user, who is a member of the group. `Required` `Filter(multi eq)`

_Type_: **[Users](Systems.Security.Users.md)**  
_Supported Filters_: **Equals, EqualsIn**  



## Business Rules

[!list limit=1000 erp.entity=Communities.SocialGroupMembers erp.type=business-rule default-text="None"]

## Front-End Business Rules

[!list limit=1000 erp.entity=Communities.SocialGroupMembers erp.type=front-end-business-rule default-text="None"]

## API

Domain API Query:
<https://demodb.my.erp.net/api/domain/odata/Communities_SocialGroupMembers?$top=10>

Domain API Query Builder:
<https://demodb.my.erp.net/api/domain/querybuilder#Communities_SocialGroupMembers?$top=10>

