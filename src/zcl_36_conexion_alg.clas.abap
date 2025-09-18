CLASS zcl_36_conexion_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    DATA hour TYPE zsyst_uzeit.
    DATA sender_user TYPE string.

    METHODS ON_time_out FOR EVENT time_out OF zcl_35_timer_alg
      IMPORTING ev_hour
                sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_36_CONEXION_ALG IMPLEMENTATION.


  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
**CALL logout method

  ENDMETHOD.
ENDCLASS.
