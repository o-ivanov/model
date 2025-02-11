# Code validation

This validation is applied for data attributes containing code.

Standard validations for a code are:

- This code must contain only letters, numbers or '_', '.', '/', '-', '+', ' ' symbols.

This validation is applied, for example, for *Part Number* field in the Product definition.

For example: valid codes are:

- aaa
- 444
- a4a4a
- a4_
- a4.
- a4/
- a4-
- a4+
- a 4

Invalid codes are as follows:

- a4!
- a4#
- a4*
- a4(
- a4)
- a4$
- a4@
- a4%
- a4^
- a4{
- a4}
- a4|
- a4"
- a4:
- a4;

The current validation is referred here:
- [R27170 FinancialStatement - Check Code](R27170.md)
- [R26759 FinancialStatementNode - Financial Statement Node Code](R26759.md)
- [R32332 Accounting Voucher Lines - Item Key (Code)](R32332.md)

