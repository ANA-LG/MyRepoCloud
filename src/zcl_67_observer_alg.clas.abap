CLASS zcl_67_observer_alg DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS on_modifier_state ABSTRACT
      FOR EVENT modified_state OF zcl_66_processes_alg
      IMPORTING ev_new_state.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_67_observer_alg IMPLEMENTATION.
ENDCLASS.
