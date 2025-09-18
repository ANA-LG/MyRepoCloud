CLASS zcl_50_atm_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS withdraw_money IMPORTING iv_card            TYPE string
                                     iv_amount          TYPE i
                                     iv_savings_account TYPE abap_bool OPTIONAL
                           RETURNING VALUE(rv_log)      TYPE string.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_50_ATM_ALG IMPLEMENTATION.


  METHOD withdraw_money.

    DATA(lo_bank) = NEW zcl_49_bank_alg(  ).

    TRY.
        lo_bank->validate_account(
          EXPORTING
            iv_card           = iv_card
            iv_amount         = iv_amount
            iv_savins_account = iv_savings_account
          CHANGING
            cv_log            = rv_log ).

        rv_log = |{ rv_log }...Withdraw money from the ATM { cl_abap_char_utilities=>newline }|.
        rv_log = |{ rv_log }...Operation completed successfully  { cl_abap_char_utilities=>newline }|.

      CATCH               zcx_47_expired_credit_card_alg INTO DATA(lx_expired_card).
        rv_log = |{ rv_log }... { lx_expired_card->get_text(  ) } { cl_abap_char_utilities=>newline }|.

      CATCH BEFORE UNWIND zcx_48_insufficient_balance_al INTO DATA(lx_insufficient_balance).
        rv_log = |{ rv_log }... { lx_insufficient_balance->get_text(  ) } { cl_abap_char_utilities=>newline }|.

        IF lx_insufficient_balance->is_resumable EQ ABAP_TRUE.
        "Withdraw money from the saving account
         rv_log = |{ rv_log }..Resume exception { cl_abap_char_utilities=>newline }|.
         RESUME .
         ELSE.

        ENDIF.

    ENDTRY.

  ENDMETHOD.
ENDCLASS.
