CLASS zcl_55_business_pr_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_factorial IMPORTING iv_number    TYPE i
                          EXPORTING ev_factorial TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_55_BUSINESS_PR_ALG IMPLEMENTATION.


  METHOD get_factorial.
    CHECK iv_number GT 0. "Validar si es numérico
    DATA(lv_number) = iv_number.

    ev_factorial = 1.
    WHILE lv_number NE 0.
      ev_factorial = ev_factorial * lv_number.
*      lv_number = lv_number - 1.
      lv_number -= 1.
    ENDWHILE.

  ENDMETHOD.
ENDCLASS.
