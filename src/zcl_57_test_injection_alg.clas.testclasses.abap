*"* use this source file for your ABAP unit test classes
CLASS test_injection DEFINITION FINAL FOR TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PRIVATE SECTION.
    METHODS:
      get_customer_test FOR TESTING RAISING cx_static_check.

    CLASS-METHODS class_setup.
    CLASS-METHODS class_teardown.

    METHODS setup.
    METHODS teardown.

    DATA mo_cut TYPE REF TO zcl_57_test_injection_alg.
ENDCLASS.


CLASS test_injection IMPLEMENTATION.

  METHOD get_customer_test.

    me->mo_cut->get_customer( IMPORTING es_customer = DATA(ls_customer) ).

    IF  cl_abap_unit_assert=>assert_equals( EXPORTING act = |{ ls_customer-customer_id  }-{ ls_customer-country_code }|
                     exp = '000015-US' ) EQ abap_true.

      cl_abap_unit_assert=>fail( 'Get customer process failed-->zcl_57_test_injection_alg->get_customer' ).
    ENDIF.
  ENDMETHOD.

  METHOD class_setup.

  ENDMETHOD.

  METHOD class_teardown.

  ENDMETHOD.

  METHOD setup.
    me->mo_cut = NEW zcl_57_test_injection_alg(  ).

    TEST-INJECTION select_Data.
      lv_customer = '000015'.
      ls_customer-customer_id     = lv_customer.
      ls_customer-country_code    = 'US'.
      ls_customer-city            = 'New York'.
    END-TEST-INJECTION.

  ENDMETHOD.

  METHOD teardown.
    CLEAR me->mo_cut.
  ENDMETHOD.

ENDCLASS.
