CLASS zcl_15_screen_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: zif_02_eu_unit_alg,
      zif_03_en_unit_alg.
    METHODS constructor IMPORTING iv_en_unit TYPE zfloat.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA en_unit TYPE zfloat.

ENDCLASS.



CLASS ZCL_15_SCREEN_ALG IMPLEMENTATION.


  METHOD constructor.
    me->en_unit = iv_en_unit.
  ENDMETHOD.


  METHOD zif_02_eu_unit_alg~dimensions_centimeters.
    rv_unit = me->en_unit * '2.54'.
  ENDMETHOD.


  METHOD zif_03_en_unit_alg~dimensions_inches.
    rv_unit = me->en_unit.
  ENDMETHOD.
ENDCLASS.
