CLASS zcl_49_bank_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS validate_account IMPORTING iv_card           TYPE string
                                       iv_amount         TYPE i
                                       iv_savins_account TYPE abap_bool OPTIONAL
                             CHANGING  cv_log            TYPE string
                             RAISING   zcx_47_expired_credit_card_alg
                                       RESUMABLE(zcx_48_insufficient_balance_al).
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_49_BANK_ALG IMPLEMENTATION.


  METHOD validate_account.
    cv_log = |{ cv_log }...Checking card validity { cl_abap_char_utilities=>newline }|.

    IF iv_card = '1111 2222 3333 4444'.
      RAISE EXCEPTION TYPE zcx_47_expired_credit_card_alg
        EXPORTING
          textid = zcx_47_expired_credit_card_alg=>card_expired.
    ENDIF.

    cv_log = |{ cv_log }...Checking account balance { cl_abap_char_utilities=>newline }|.

    IF  iv_amount GT 50.
      IF  iv_savins_account EQ abap_true.
        cv_log = |{ cv_log }...Resumable excepction Insufficient Balance { cl_abap_char_utilities=>newline }|.
        RAISE RESUMABLE EXCEPTION TYPE zcx_48_insufficient_balance_al
          EXPORTING
            textid = zcx_48_insufficient_balance_al=>insufficient_balance.
      ELSE.
        cv_log = |{ cv_log }...Excepction Insufficient Balance { cl_abap_char_utilities=>newline }|.
        RAISE EXCEPTION TYPE zcx_48_insufficient_balance_al
          EXPORTING
            textid = zcx_48_insufficient_balance_al=>insufficient_balance.
      ENDIF.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
