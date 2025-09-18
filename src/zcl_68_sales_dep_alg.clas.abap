CLASS zcl_68_sales_dep_alg DEFINITION INHERITING FROM zcl_67_observer_alg
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA state TYPE string.
    METHODS: on_modifier_state REDEFINITION.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_68_sales_dep_alg IMPLEMENTATION.
  METHOD on_modifier_state.
    me->state = ev_new_state.
  ENDMETHOD.

ENDCLASS.
