INTERFACE zif_07_company_alg
  PUBLIC .
  INTERFACES zif_06_group_alg.
  METHODS set_company_type.

  ALIASES group FOR zif_06_group_alg~set_group.

ENDINTERFACE.
