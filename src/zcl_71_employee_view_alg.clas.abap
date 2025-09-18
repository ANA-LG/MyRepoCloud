CLASS zcl_71_employee_view_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS display_employee IMPORTING iv_name TYPE string
                                       iv_role TYPE string
                                       io_out  TYPE REF TO if_oo_adt_classrun_out.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_71_employee_view_alg IMPLEMENTATION.
  METHOD display_employee.
    io_out->write( |{ iv_name }---{ iv_role }| ).
  ENDMETHOD.

ENDCLASS.
