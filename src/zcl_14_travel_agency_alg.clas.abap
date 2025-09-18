CLASS zcl_14_travel_agency_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_01_agency_alg .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA agency_type TYPE string.
    CLASS-DATA agency_Address TYPE string.
ENDCLASS.



CLASS ZCL_14_TRAVEL_AGENCY_ALG IMPLEMENTATION.


  METHOD zif_01_agency_alg~get_type.
    rv_type = me->agency_type.
  ENDMETHOD.


  METHOD zif_01_agency_alg~set_address.
    zif_01_agency_alg~agency_address = iv_address.
  ENDMETHOD.


  METHOD zif_01_agency_alg~set_name.
    me->agency_type = iv_type.
  ENDMETHOD.
ENDCLASS.
