CLASS zcl_56_test_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
    FOR TESTING
    DURATION SHORT
    RISK LEVEL HARMLESS.

  PUBLIC SECTION.
    "! @testing zcl_55_business_pr_alg
    METHODS factorial_test FOR TESTING . "UTM - unit Test Method

  PROTECTED SECTION.

  PRIVATE SECTION.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup."Antes de ejecutar los métodos de TEST
    METHODS teardown."Cuando se termina la ejecucion test Clear
    DATA mo_cut TYPE REF TO zcl_55_business_pr_alg. "CUT - Class Under Test
ENDCLASS.



CLASS ZCL_56_TEST_ALG IMPLEMENTATION.


  METHOD class_setup.

  ENDMETHOD.


  METHOD class_teardown.

  ENDMETHOD.


  METHOD factorial_test.
    "Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.
    "When
    mo_cut->get_factorial( EXPORTING iv_number = lv_number_ut
                            IMPORTING ev_factorial = lv_factorial_ut ).
    "Then
    cl_abap_unit_assert=>assert_equals(
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
    ).
  ENDMETHOD.


  METHOD setup.
    mo_cut = NEW zcl_55_business_pr_alg(  ).
  ENDMETHOD.


  METHOD teardown.
    CLEAR mo_cut.
  ENDMETHOD.
ENDCLASS.
