*"* use this source file for your ABAP unit test classes
CLASS ltcl_business_proces DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      factorial_local_test FOR TESTING RAISING cx_static_check.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup."Antes de ejecutar los métodos de TEST
    METHODS teardown."Cuando se termina la ejecucion test Clear
    DATA mo_cut TYPE REF TO zcl_55_business_pr_alg.

ENDCLASS.


CLASS ltcl_business_proces IMPLEMENTATION.

  METHOD factorial_local_test.
    "Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.
    "When
    mo_cut->get_factorial( EXPORTING iv_number = lv_number_ut
                            IMPORTING ev_factorial = lv_factorial_ut ).
    "Then
    IF cl_abap_unit_assert=>assert_equals(
       EXPORTING
         act                  = lv_factorial_ut
         exp                  = 24
*    ignore_hash_sequence = abap_false
*    tol                  =
*    msg                  =
*    level                = if_abap_unit_constant=>severity-medium
*    quit                 = if_abap_unit_constant=>quit-test
*  RECEIVING
*    assertion_failed     =
     ) EQ abap_true.
      cl_abap_unit_assert=>fail( 'Implement your first test here' ).
    ENDIF.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    mo_cut = NEW zcl_55_business_pr_alg(  ).
  ENDMETHOD.

  METHOD teardown.
    CLEAR  mo_cut.
  ENDMETHOD.

ENDCLASS.
