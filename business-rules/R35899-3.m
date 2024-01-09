﻿---
erp.type: business-rule
erp.entity: Projects.Agile.CaseDevelopments
---

# R35899-3 CaseDevelopment - Creation User
| Name | Value |
| ---- | ----- |
| Code | R35899-3 |
| Entity | @Projects.Agile.CaseDevelopments |
| Name | CreationUser |
| Attribute | - |
| Layer | Back-End |
| Events | Commit |
| Record State | On-Insert |
| Priority | Normal |
| Modify | Yes |
| Action | If ObjectState = "Added" , then CreationUser = CurrentUser|
| Description| When a new Case Development is created, the Current User is set in the CreationUser field. |
| Message | - |
| Version | Introduced: 2024 |
| Revocable | NO |

*\* For more information about the Business Rules Documentation Template and a short explanation of each column, see
topic [System Business Rules](../templates/template-description-system-business-rules.md).*
