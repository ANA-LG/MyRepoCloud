CLASS zcl_57_test_injection_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS get_customer EXPORTING es_customer TYPE /dmo/customer.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS zcl_57_test_injection_alg IMPLEMENTATION.


  METHOD get_customer.
    DATA: ls_customer TYPE /dmo/customer,
          lv_customer TYPE /dmo/customer_id.

    lv_customer = '000001'.

    SELECT SINGLE FROM /dmo/customer
    FIELDS *
    WHERE customer_id = @lv_customer
    INTO @es_customer.

    TEST-SEAM select_Data.
      SELECT SINGLE FROM /dmo/customer
       FIELDS *
       WHERE customer_id = @lv_customer
       INTO @ls_customer.
    END-TEST-SEAM.

    IF  lv_customer EQ '000015'.
      es_customer = CORRESPONDING #( ls_customer ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
