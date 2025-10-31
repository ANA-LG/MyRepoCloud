CLASS zcl_invoice_gen_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_invoice_gen_alg IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( cl_abap_context_info=>get_user_technical_name(  ) ).
    DELETE FROM zuser_alg .
    MODIFY zuser_alg FROM TABLE @( VALUE #( ( user_id       = cl_abap_context_info=>get_user_technical_name( )
                                              plant         = '1010'
                                              invoice_id    = '1'
                                              first_name    = 'First name 1'
                                              last_name     = 'Last name 1' )
                                              ( user_id     = cl_abap_context_info=>get_user_technical_name( )
                                              invoice_id    = '2'
                                              first_name    = 'First name 1'
                                              last_name     = 'Last name 1' )

                                              ( user_id     = 'CB9999999993'
                                              invoice_id    = '3'
                                              first_name    = 'First name 3'
                                              last_name     = 'Last name 3' )

                                              ( user_id     = 'CB9999999994'
                                              invoice_id    = '4'
                                              first_name    = 'First name 4'
                                              last_name     = 'Last name 4' )

                                              ( user_id     = 'CB9999999995'
                                              invoice_id    = '5'
                                              first_name    = 'First name 5'
                                              last_name     = 'Last name 5' ) ) ).

    DELETE FROM zinvoices_alg .
    MODIFY zinvoices_alg FROM TABLE @( VALUE #( ( invoice_id    = '1'
                                                   plant         = '1010'
                                                   created_by   = cl_abap_context_info=>get_user_technical_name( )
                                                   customer     = 'Coca-Cola'
                                                   amount       = '2000.00'
                                                   currency_key = 'USD' )

                                                   ( invoice_id    = '2'
                                                    plant         = '1020'
                                                   created_by   = cl_abap_context_info=>get_user_technical_name( )
                                                   customer     = 'Pepsi'
                                                   amount       = '3000.00'
                                                   currency_key = 'USD' )

                                                   ( invoice_id    = '3'
                                                   plant         = '1030'
                                                   created_by   = 'CB9999999993'
                                                   customer     = 'Nestle'
                                                   amount       = '5000.00'
                                                   currency_key = 'EUR' )

                                                        ( invoice_id    = '4'
                                                        plant         = '1050'
                                                   created_by   = 'CB9999999994'
                                                   customer     = 'Pringles'
                                                   amount       = '1000.00'
                                                   currency_key = 'USD' )

                                                   ( invoice_id    = '5'
                                                   plant         = '1020'
                                                   created_by   = 'CB9999999995'
                                                   customer     = 'Milka'
                                                   amount       = '4000.00'
                                                   currency_key = 'EUR' )

                                                    ) ).
  ENDMETHOD.
ENDCLASS.
