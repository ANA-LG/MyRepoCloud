CLASS zcx_54_excecution_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS rais_exception_1 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING   zcx_51_exception1_alg.
    METHODS rais_exception_2 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING   zcx_52_exception2_alg.
    METHODS rais_exception_3 IMPORTING io_previous TYPE REF TO cx_root OPTIONAL
                             RAISING   zcx_53_exception3_alg.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCX_54_EXCECUTION_ALG IMPLEMENTATION.


  METHOD rais_exception_1.
    RAISE EXCEPTION TYPE zcx_51_exception1_alg
    EXPORTING
    previous = io_previous.
  ENDMETHOD.


  METHOD rais_exception_2.
    RAISE EXCEPTION TYPE zcx_52_exception2_alg
    EXPORTING
    previous = io_previous.
  ENDMETHOD.


  METHOD rais_exception_3.
    RAISE EXCEPTION TYPE zcx_53_exception3_alg
    EXPORTING
    previous = io_previous.
  ENDMETHOD.
ENDCLASS.
