CLASS zcl_30_laptop_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA keyboard TYPE REF TO zcl_29_keyboard_alg.
    METHODS constructor IMPORTING io_keyboard TYPE REF TO zcl_29_keyboard_alg.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.



CLASS ZCL_30_LAPTOP_ALG IMPLEMENTATION.


  METHOD constructor.
    me->keyboard = io_keyboard .
  ENDMETHOD.
ENDCLASS.
