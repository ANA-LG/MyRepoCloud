CLASS zcl_09_citizen_alg DEFINITION
  PUBLIC
*  FINAL
  CREATE PRIVATE
  GLOBAL FRIENDS zcl_10_eu_citizen_alg .

  PUBLIC SECTION.
    METHODS set_id FINAL IMPORTING iv_id TYPE i.

        METHODS get_instance RETURNING VALUE(ro) TYPE REF TO zcl_09_citizen_alg.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_09_CITIZEN_ALG IMPLEMENTATION.


  METHOD get_instance.
    ro = NEW zcl_09_citizen_alg(   ).
  ENDMETHOD.


  METHOD set_id.
    DATA(lo_citizen) = NEW zcl_09_citizen_alg(  ).
  ENDMETHOD.
ENDCLASS.
