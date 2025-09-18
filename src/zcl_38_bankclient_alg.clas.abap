CLASS zcl_38_bankclient_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_new_tranfer FOR EVENT new_transfer OF zif_10_bank_alg
      IMPORTING sender.
    DATA: notification TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_38_BANKCLIENT_ALG IMPLEMENTATION.


  METHOD on_new_tranfer.
    me->notification = | { sender->office } - { cl_abap_context_info=>get_system_time(  ) } |.
  ENDMETHOD.
ENDCLASS.
