CLASS zcl_72_employee_controller_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS set_model IMPORTING io_model TYPE REF TO zcl_70_employee_model_alg.
    METHODS get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_70_employee_model_alg.

    METHODS set_view IMPORTING io_view TYPE REF TO zcl_71_employee_view_alg.
    METHODS get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_71_employee_view_alg.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA: model TYPE REF TO zcl_70_employee_model_alg,
          view  TYPE REF TO zcl_71_employee_view_alg.
ENDCLASS.



CLASS zcl_72_employee_controller_alg IMPLEMENTATION.
  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
