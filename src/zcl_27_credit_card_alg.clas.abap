CLASS zcl_27_credit_card_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: set_card_num IMPORTING iv_cred_num TYPE string,
      get_card_num RETURNING VALUE(rv_card_num) TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA card_num TYPE string.
ENDCLASS.



CLASS ZCL_27_CREDIT_CARD_ALG IMPLEMENTATION.


  METHOD get_card_num.
    rv_card_num = me->card_num.
  ENDMETHOD.


  METHOD set_card_num.
    me->card_num = iv_cred_num.
  ENDMETHOD.
ENDCLASS.
