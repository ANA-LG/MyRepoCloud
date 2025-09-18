CLASS zcl_05_plant_alg_c367 DEFINITION INHERITING FROM zcl_04_company_alg_c367
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor IMPORTING iv_quotation TYPE string
                                  iv_product   TYPE string.
    DATA products TYPE string READ-ONLY.
    DATA: company_atr TYPE string.

    METHODS  set_company_code  REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_05_PLANT_ALG_C367 IMPLEMENTATION.


  METHOD constructor.

    super->constructor( iv_quotation = iv_quotation ).
    me->products = iv_product.
  ENDMETHOD.


  METHOD set_company_code.
    super->set_company_code( iv_company_code = iv_company_code ).
    me->company_code = 'ABCD'.
  ENDMETHOD.
ENDCLASS.
