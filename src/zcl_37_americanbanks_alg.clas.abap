CLASS zcl_37_americanbanks_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_10_bank_alg.
    METHODS create_notification RETURNING VALUE(rv_text) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_37_AMERICANBANKS_ALG IMPLEMENTATION.


  METHOD create_notification.
    rv_text = |Event raise.....new tranfer { cl_abap_context_info=>get_system_time(  ) } |.
    RAISE EVENT zif_10_bank_alg~new_transfer.
  ENDMETHOD.
ENDCLASS.
