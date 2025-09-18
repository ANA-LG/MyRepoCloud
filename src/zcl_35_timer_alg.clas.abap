CLASS zcl_35_timer_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS: constructor.
    EVENTS time_out EXPORTING VALUE(ev_hour)    TYPE zsyst_uzeit.
    METHODS: increment_counter IMPORTING iv_counter TYPE i.
    METHODS: check_limit.

    DATA user TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA counter TYPE i.
ENDCLASS.



CLASS ZCL_35_TIMER_ALG IMPLEMENTATION.


  METHOD check_limit.
    IF  me->counter GE 5.
      RAISE EVENT time_out EXPORTING ev_hour = cl_abap_context_info=>get_system_time(  ).
    ENDIF.
  ENDMETHOD.


  METHOD constructor.
    me->user = sy-uname.
  ENDMETHOD.


  METHOD increment_counter.
    me->counter += iv_counter.
    me->check_limit( ).
  ENDMETHOD.
ENDCLASS.
