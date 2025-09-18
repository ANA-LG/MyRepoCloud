CLASS zcl_13_ny_plan_alg DEFINITION INHERITING FROM zcl_11_plant_alg
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_product_sl.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_13_NY_PLAN_ALG IMPLEMENTATION.


  METHOD get_product_sl.
    DATA(lo_storage_location) = NEW zcl_12_storage_location_alg(  ).
    lo_storage_location->product = 'PC'.
  ENDMETHOD.
ENDCLASS.
