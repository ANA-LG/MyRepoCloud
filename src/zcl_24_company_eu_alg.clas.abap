CLASS zcl_24_company_eu_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_08_co_company_alg .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_24_COMPANY_EU_ALG IMPLEMENTATION.


  METHOD zif_08_co_company_alg~define_company.
    rv_company = 'Company Europe.....'.
  ENDMETHOD.
ENDCLASS.
