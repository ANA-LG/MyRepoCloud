CLASS zcl_26_plant_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS assign_company IMPORTING ir_co_company   TYPE REF TO zif_08_co_company_alg
                           RETURNING VALUE(rv_plant) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_26_PLANT_ALG IMPLEMENTATION.


  METHOD assign_company.
    rv_plant = |'Plant was assigned to....'{ ir_co_company->define_company(  ) }|.
  ENDMETHOD.
ENDCLASS.
