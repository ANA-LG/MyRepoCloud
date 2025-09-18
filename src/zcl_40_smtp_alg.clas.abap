CLASS zcl_40_smtp_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS on_new_mail FOR EVENT new_mail OF zcl_39_mail_alg
      IMPORTING ev_subject.

    CLASS-DATA table_inbox TYPE TABLE OF string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_40_SMTP_ALG IMPLEMENTATION.


  METHOD on_new_mail.
    APPEND ev_subject TO table_inbox.
  ENDMETHOD.
ENDCLASS.
