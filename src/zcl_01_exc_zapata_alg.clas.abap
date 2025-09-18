CLASS zcl_01_exc_zapata_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_01_exc_zapata_alg IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA: lv_name TYPE string VALUE 'John Smith'.
    DATA: lv_role TYPE string VALUE 'Developer'.

    DATA(go_model) = NEW zcl_70_employee_model_alg( iv_name = lv_name
                                                    iv_role = lv_role ).

    DATA(go_view) = NEW zcl_71_employee_view_alg(  ).
    DATA(go_controller) = NEW zcl_72_employee_controller_alg(  ).

    go_controller->set_model( go_model ).
    go_controller->set_view( go_view ).

    go_controller->get_view(  )->display_employee( EXPORTING iv_name = go_model->get_name( )
                                                             iv_role = go_model->get_role( )
                                                             io_out = out ).


*    DATA(go_processes) = NEW zcl_66_processes_alg(  ).
*    DATA(go_sales_dep) = NEW zcl_68_sales_dep_alg(  ).
*    DATA(go_billing_dep) = NEW zcl_69_billing_deparment_alg(  ).
*
*    SET HANDLER go_sales_dep->on_modifier_state FOR go_processes.
*    SET HANDLER go_billing_dep->on_modifier_state FOR go_processes.
*
**    Set  new state
*    go_processes->set_state(  iv_state = 'NewSalesS01 - Product 12345 - Laptop HP Sold'  ).
*    out->write( go_processes->get_state(  ) ).
*    out->write( go_sales_dep->state ).
*    out->write( go_billing_dep->state ).
*
*    out->write( cl_abap_char_utilities=>newline ).
**    Set  new state
*    go_processes->set_state(  iv_state = 'NewSales02 - Product 75758 - Laptop DEll  Sold'  ).
*    out->write( go_processes->get_state(  ) ).
*    out->write( go_sales_dep->state ).
*    out->write( go_billing_dep->state ).
****
****    DATA: go_shape   TYPE REF TO zif_11_geometric_figure_alg,
****          go_factory TYPE REF TO zcl_62_factory_alg.
****
****    go_factory = NEW #(  ).
****    go_shape = go_factory->get_shape( 'Triangle' ).
****    out->write( go_shape->draw_shape(  ) ).





**
**    DATA: go_singleton_1 TYPE REF TO zcl_58_singleton_alg,
**          go_singleton_2 TYPE REF TO zcl_58_singleton_alg.
**
**    go_singleton_1 = zcl_58_singleton_alg=>get_intance( ).
**    WAIT UP TO 2 SECONDS.
**    go_singleton_2 = zcl_58_singleton_alg=>get_intance( ).
**
**    out->write( go_singleton_1->mv_time ).
**    out->write( go_singleton_2->mv_time ).
**
**    go_singleton_1->mv_time = cl_abap_context_info=>get_system_time(  ).
**
**    out->write( cl_abap_char_utilities=>newline ).
**    out->write( cl_abap_char_utilities=>newline ).
**
**    out->write( go_singleton_1->mv_time ).
**    out->write( go_singleton_2->mv_time ).

*****    DATA(lo_cut) = NEW zcl_57_test_injection_alg( ).
*****
*****    lo_cut->get_customer( IMPORTING es_customer = DATA(ls_customer) ).
*****
*****    out->write( |{ ls_customer-customer_id }-{ ls_customer-country_code } | ).



***    DATA(lo_business_pr) = NEW zcl_55_business_pr_alg( ).
***    lo_business_pr->get_factorial( EXPORTING iv_number = 4  IMPORTING ev_factorial = DATA(lv_factorial) ).
***    out->write( lv_factorial ).



**    DATA(lo_Excecution) = NEW zcx_54_excecution_alg( ).
**
**    TRY.
**        TRY.
**            TRY.
**                lo_excecution->rais_exception_1( ).
**              CATCH zcx_51_exception1_alg INTO DATA(lx_exception_1).
**                lo_excecution->rais_exception_2( io_previous = lx_exception_1 ).

**            ENDTRY.
**
**          CATCH zcx_52_exception2_alg INTO DATA(lx_exception_2).
**            lo_excecution->rais_exception_3( io_previous = lx_exception_2 ).
**        ENDTRY.
**      CATCH zcx_53_exception3_alg INTO DATA(lx_exception_3).
**
**        out->write( |{ lx_exception_3->get_text(  )  }{ cl_abap_char_utilities=>newline } | ).
**
**        IF lx_exception_3->previous IS BOUND.
**          out->write( |{ lx_exception_3->previous->get_text(  ) }\n | ).
**        ENDIF.
**
**        IF lx_exception_3->previous->previous IS BOUND.
**          out->write( |{ lx_exception_3->previous->previous->get_text(  ) }\n | ).
**        ENDIF.
**
**        IF  lx_exception_3->previous->previous->previous IS BOUND.
**          out->write( |{ lx_exception_3->previous->previous->previous->get_text(  ) }\n | ).
**        ENDIF.
**
**    ENDTRY.
**



*****    DATA(lo_atm) = NEW zcl_50_atm_alg(  ).
*****
****** 1. Expired Credit Card
*****    out->write( 'Use Case 1: Expired Credit Card' ).
*****    out->write(  lo_atm->withdraw_money(
*****        EXPORTING
*****          iv_card            = '1111 2222 3333 4444'
*****          iv_amount          = 30
******        iv_savings_account =
******      RECEIVING
******        rv_log             =
*****      ) ).
*****
****** 2. Insufficient balance in the current account
*****    out->write( 'Use Case 2: Insufficient balance in the current account'  ).
*****
*****    out->write(  lo_atm->withdraw_money(
*****        EXPORTING
*****          iv_card            = '1111 2222 3333 5555'
*****          iv_amount          = 100
******        iv_savings_account =
******      RECEIVING
******        rv_log             =
*****      ) ).
*****
*****
****** 3. Withdraw money from the savings account
*****    out->write( 'Use Case 3: Withdraw money from the savings account '  ).
*****
*****    out->write(  lo_atm->withdraw_money(
*****        EXPORTING
*****          iv_card            = '1111 2222 3333 5555'
*****          iv_amount          = 100
*****        iv_savings_account = abap_true
******      RECEIVING
******        rv_log             =
*****      ) ).


**    DATA(lo_manage_cntr) = NEW zcl_46_manage_cntr_alg(  ).
**
**    DATA: lv_result TYPE i,
**          lv_num1   TYPE i VALUE 10,
**          lv_num2   TYPE i.
**
**
**    TRY.
**        TRY.
**            lv_result = lv_num1 + lv_num2 .
**            lv_result = lv_num1 / lv_num2 .
**            lv_result = lv_num1 - lv_num2 .
**
**          CATCH zcx_45_auth_alg INTO DATA(lx_auth).
**            out->write( lx_auth->get_text(  ) ).
**          CATCH cx_a4c_bc_exception INTO DATA(lx_a4c).
**          CLEANUP.
**          out->write( | CLEANUP  1...Result  { lv_result } | ).
**
**        ENDTRY.
**
**
**      CATCH cx_sy_zerodivide INTO DATA(lx_ZERODIVIDE).
**        out->write( lx_ZERODIVIDE->get_text(  ) ).
**        lv_num2 = 2.
**        RETRY.
**        CLEANUP.
**           out->write( | CLEANUP  2...Result  { lv_result } | ).
**    ENDTRY.
**
**    out->write( | FINISH { lv_result } | ).



****    TRY.
****
*****        lo_manage_cntr->check_user( sy-uname  ).
****
****        lv_result = lv_num1 / lv_num2 .
****
****      CATCH zcx_45_auth_alg INTO DATA(lx_auth).
****        out->write( lx_auth->get_text(  ) ).
****
****      CATCH cx_sy_zerodivide INTO DATA(lx_ZERODIVIDE).
****        out->write( lx_ZERODIVIDE->get_text(  ) ).
****        lv_num2 = 2.
****        RETRY.
****
****      CATCH cx_static_check INTO DATA(lx_static).
****
****      CATCH cx_root INTO DATA(lx_root).
****        out->write( lx_root->get_text(  ) ).
****
****    ENDTRY.
****
****    out->write( | FINISH { lv_result } | ).

**    DATA(go_components) = NEW zcl_43_component(  ).
**    go_components->get_first( IMPORTING ev_first = DATA(gv_first) ).

*****Tenemos 4 referencias.
***    DATA(go_north_building) = NEW zcl_41_building_alg(  ).
***    DATA(go_south_building) = NEW zcl_41_building_alg(  ).
***    DATA(go_east_building) = NEW zcl_41_building_alg(  ).
***    DATA(go_west_building) = NEW zcl_41_building_alg(  ).
******declarar CLASE MANEJADORA
***    DATA(go_access) = NEW zcl_42_access_alg(  ).
******Se establece el HANDLER 4 instancias de la clase que levanta el EVENTO
*****    SET HANDLER go_access->on_blocked_entrance FOR go_north_building.
*****    SET HANDLER go_access->on_blocked_entrance FOR go_south_building.
*****    SET HANDLER go_access->on_blocked_entrance FOR go_east_building.
***    SET HANDLER go_access->on_blocked_entrance FOR go_west_building.
*****
***    SET HANDLER go_access->on_blocked_entrance FOR ALL INSTANCES.
***
***    go_north_building->entry = 'NORT'.
***    go_north_building->close_entry( ).
***
***    go_SOUTH_building->entry = 'SOUTH'.
***    go_SOUTH_building->close_entry( ).
***
***    go_east_building->entry = 'EAST'.
***    go_east_building->close_entry( ).
***
***    go_west_building->entry = 'WEST'.
***    go_west_building->close_entry( ).
***
***    out->write( zcl_42_access_alg=>table_blocked_entries ).




***DATA(go_smtp) = NEW zcl_40_smtp_alg(  ).
***    SET HANDLER go_smtp->on_new_mail.
***
***    DO 3 TIMES.
***      WAIT UP TO 1 SECONDS.
***      zcl_39_mail_alg=>compose_mail(  ).
***    ENDDO.

*    out->write( zcl_40_smtp_alg=>table_inbox ).
**    DATA(go_americanbank) = NEW zcl_37_americanbanks_alg(  ).
**    DATA(go_bankclient) = NEW zcl_38_bankclient_alg(  ).
**
**    SET HANDLER go_bankclient->on_new_tranfer FOR go_americanbank.
**
**    DO 5 TIMES.
**      WAIT UP TO 1 SECONDS.
**      out->write( go_americanbank->create_notification( ) ).
**      out->write( go_bankclient->notification ).
**      IF sy-index EQ 3.
**        SET HANDLER go_bankclient->on_new_tranfer FOR go_americanbank ACTIVATION abap_false.
**        go_bankclient->notification = 'No handler for event new tranfer'.
**      ENDIF.
**    ENDDO.




****    DATA(go_timer) = NEW zcl_35_timer_alg(  ).
****    DATA(go_conexion) = NEW zcl_36_conexion_alg(  ).
****
****    SET HANDLER go_conexion->on_time_out FOR go_timer.
****
****    DO.
****      WAIT UP TO 1 SECONDS.
****      go_timer->increment_counter( 1 ).
****
****      IF  go_conexion->hour IS INITIAL.
****        out->write( |Event NOT YET executed: { cl_abap_context_info=>get_system_time(  ) } | ).
****      ELSE.
****        out->write( |Event was raised at: { go_conexion->hour }-usuario-{ go_conexion->sender_user } | ).
****        EXIT.
****      ENDIF.
****
****    ENDDO.


**    DATA go_object TYPE REF TO object.
**
**    go_object = NEW zcl_34_product_alg(  ).
**
**    DATA(lv_method_name) = 'RETURN_CATEGORY'.
**    DATA lv_category TYPE string.
**
**    CALL METHOD go_object->(lv_method_name) RECEIVING rv_category = lv_category.
**
**    out->write( lv_category ).

****    DATA: go_contrato TYPE REF TO  zif_09_contract_alg.
****          go_contrato = NEW zcl_32_constr_contract_alg(  ).
****    CREATE OBJECT go_contrato TYPE zcl_32_constr_contract_alg.
****
****    DATA: go_constr_contract TYPE REF TO zcl_32_constr_contract_alg.
****          go_constr_contract = NEW zcl_33_record_alg(  ).
****    CREATE OBJECT go_constr_contract TYPE zcl_33_record_alg.
****
****    go_contrato = NEW zcl_33_record_alg(  ).
****    CREATE OBJECT go_contrato TYPE zcl_33_record_alg.




***    DATA: lo_vat_indicator_1 TYPE REF TO zcl_31_vat_indicator_alg,
***          lo_vat_indicator_2 TYPE REF TO zcl_31_vat_indicator_alg,
***          lo_vat_indicator_3 TYPE REF TO zcl_31_vat_indicator_alg.
***
***    lo_vat_indicator_1 = NEW #(  ).
***    lo_vat_indicator_2 = NEW #(  ).
***    lo_vat_indicator_3 = NEW #(  ).
***
***    lo_vat_indicator_2 = lo_vat_indicator_1.
***    lo_vat_indicator_3  = lo_vat_indicator_1.
***
***    lo_vat_indicator_1->vat_ind = 'A1'.
****    lo_vat_indicator_2->vat_ind = 'A2'.
****    lo_vat_indicator_3->vat_ind = 'A3'.
***
***    out->write( lo_vat_indicator_1->vat_ind ).
***    out->write( lo_vat_indicator_2->vat_ind ).
***    out->write( lo_vat_indicator_3->vat_ind ).

**    DATA(lo_keyboard) = NEW zcl_29_keyboard_alg(  ).
**    DATA(lo_laptop) = NEW zcl_30_laptop_alg( lo_keyboard ).
**
**    lo_keyboard->keyboard_type = 'ES'.
**    out->write( lo_laptop->keyboard->keyboard_type ).

****    DATA(lo_credit_card) = NEW zcl_27_credit_card_alg(  ).
****    DATA(lo_client) = NEW zcl_28_client_alg(  ).
****
****    lo_credit_card->set_card_num( '1111 2222 3333 4444.' ).
****    lo_client->set_credit_card( lo_credit_card ).
****
****    out->write( lo_client->get_credit_card( )->get_card_num(  ) ).


****    DATA: gt_co_companies TYPE STANDARD TABLE OF REF TO zif_08_co_company_alg,
****          go_co_company   TYPE REF TO zif_08_co_company_alg,
****          go_company_eu   TYPE REF TO zcl_24_company_eu_alg,
****          go_company_usa  TYPE REF TO zcl_25_company_usa_alg,
****          go_plant        TYPE REF TO zcl_26_plant_alg.
****
****
****    go_company_eu = NEW #(  ).
****    APPEND go_company_eu TO gt_co_companies.
****    go_company_usa  = NEW #(  ).
****    APPEND go_company_usa TO gt_co_companies.
****    go_plant  = NEW #(  ).
****
****    LOOP AT gt_co_companies INTO go_co_company.
****      out->write( go_co_company->define_company(  ) ).
****      out->write( go_plant->assign_company( go_co_company ) ).
****    ENDLOOP.


*****tabla interna de REFERENCIAS-clase padre
**    DATA gt_airplanes       TYPE STANDARD TABLE OF REF TO zcl_21_airplane_alg.
**    DATA go_airplane        TYPE REF TO zcl_21_airplane_alg.
**    DATA go_cargo_plane     TYPE REF TO zcl_22_cargo_plane_alg.
**    DATA go_passenger_plane TYPE REF TO zcl_23_passenger_plane_alg.
**
**
***    agregamos a la tabla interna a las intencias
**    go_cargo_plane = NEW #(  )."Autoreferencia.
**    APPEND go_cargo_plane TO gt_airplanes.
**    go_passenger_plane = NEW #(  ).
**    APPEND go_passenger_plane TO gt_airplanes.
**
****    iteramos sobre la tabl interna.
**    LOOP AT gt_airplanes INTO go_airplane."apuntamos con la referencia
**      out->write( go_airplane->airplane_type( ) ).
**    ENDLOOP.


*****DATA(lo_bp) = NEW zcl_17_bp_alg( ).
*****lo_bp->set_company_type( ).
*****lo_bp->zif_07_company_alg~set_company_type( ).

***    DATA(lo_sales_department) = NEW zcl_16_sales_department_alg( ).
***    lo_sales_department->zif_04_document_alg~set_sales_doc( '123D'  ).
***    lo_sales_department->zif_05_sales_order_alg~create_order( '123O'  ).

****Intanciamos la clase del screen y mandamos datos en el constructor.
***    DATA(lo_screen) = NEW zcl_15_screen_alg( 22 ).
***    out->write( lo_screen->zif_02_eu_unit_alg~dimensions_centimeters(  ) ).
***    out->write( lo_screen->zif_03_en_unit_alg~dimensions_inches(  ) ).

*lo_screen->zif_02_eu_unit_alg~dimensions_centimeters( ).


***
***    DATA(lo_travel_agency) = NEW zcl_14_travel_agency_alg( ).
***
***    lo_travel_agency->zif_01_agency_alg~set_name( 'Gate2Fly.com' ).
***    out->write( lo_travel_agency->zif_01_agency_alg~get_name( ) ).

*** Metodos estáticos.
**    zcl_14_travel_agency_alg=>zif_01_agency_alg~set_address( iv_address = 'Madrid, Spain' ).


***    DATA(lo_animal) = NEW zcl_07_animal_ALG( ).
***    DATA(lo_lion) = NEW zcl_08_lion_alg( ).
***
***    lo_animal->walk( ).
***    out->write(  lo_animal->walk( ) ).
***    out->write(  lo_lion->walk( ) ).
***
***
***    lo_animal = lo_lion.
***    out->write(  'Narrowing casting (UP Cast)' ).
***    out->write(  lo_animal->walk( ) ).
***    out->write(  lo_lion->walk( ) ).
***
***    TRY.
***        lo_lion ?= lo_animal.
***      CATCH cx_sy_move_cast_error.
***        out->write(  'Casting Error' ).
***        RETURN. "para salir del metodo main
***    ENDTRY.
***
***
***    out->write(  ' Widening casting (Down Cast) ' ).
***    out->write(  lo_animal->walk( ) ).
***    out->write(  lo_lion->walk( ) ).

******    DATA(lo_company)            = NEW zcl_04_company_alg_c367( iv_quotation = 'Q1' ).
******    DATA(lo_plant)   = NEW zcl_05_plant_alg_c367( iv_quotation = 'Q2' iv_product = 'P2' ).
******    DATA(lo_storage_location)   = NEW zcl_06_storage_alg_c367( iv_quotation = 'Q3' iv_product = 'P3' ).
******
******    lo_company->set_company_code( '1234'  ).
******    lo_company->set_currency( 'USD'  ).
******
******    lo_company->get_company_code( IMPORTING ev_company_code = DATA(lv_company_code) ).
******    lo_company->get_currency( IMPORTING ev_currency = DATA(lv_currency)  ).
******
******    out->write( |Company --{ lv_company_code }-{ lv_currency }| ).
******
******
******    lo_plant->set_company_code( '1502'  ).
******    lo_plant->set_currency( 'EUR'  ).
******
******    lo_plant->get_company_code( IMPORTING ev_company_code = lv_company_code ).
******    lo_plant->get_currency( IMPORTING ev_currency = lv_currency  ).
******
******    out->write( |Plant --{ lv_company_code }-{ lv_currency }| ).
******
******    lo_storage_location->set_company_code( '1200'  ).
******    lo_storage_location->set_currency( 'MXN'  ).
******
******    lo_storage_location->get_company_code( IMPORTING ev_company_code = lv_company_code ).
******    lo_storage_location->get_currency( IMPORTING ev_currency = lv_currency  ).
******
******    out->write( |lo_storage_location --{ lv_company_code }-{ lv_currency }| ).

***    out->write( zcl_03_employee_alg_c367=>log ).
***
***    DATA(lo_employee) = NEW zcl_03_employee_alg_c367( iv_employee_id = '01' ).
****    out->write( lo_employee->get_employee_id( ) ).
***    out->write( zcl_03_employee_alg_c367=>log ).
***
***    DATA(lo_employee2) = NEW zcl_03_employee_alg_c367( iv_employee_id = '02' ).
****    out->write( lo_employee2->get_employee_id( ) ).
***    out->write( zcl_03_employee_alg_c367=>log ).
***
***    out->write( zcl_03_employee_alg_c367=>company ).


***  // Definimos una referencia y se crea la INSTANCIA y luego apuntamos el objeto a la referencia.
**    DATA lo_contract TYPE REF TO zcl_02_contract_zapata_alg.
**    CREATE OBJECT lo_contract.
**    lo_contract = NEW #(  )."Autoreferencia

**    DATA(lo_contract) = NEW zcl_02_contract_zapata_alg(  ).
**    DATA(lo_contract2) = NEW zcl_02_contract_zapata_alg(  ).
*Se accede a la clase PRIVADA con un metodo estático que devuelve la intancia en el parámetro
***    zcl_02_contract_zapata_alg=>set_instance( IMPORTING er_instance =   DATA(lo_contract) ).
***
***    DATA: lv_process TYPE string.
***
***    DATA: lt_address TYPE zcl_02_contract_zapata_alg=>tty_address,
***          ls_address TYPE zcl_02_contract_zapata_alg=>ty_address.
***
****   para validar si la intancia esta generada.
***    IF lo_contract IS BOUND.
***
***
***      lo_contract->set_client(
***        EXPORTING
***          iv_client   = 'ZAPATA'
***          iv_location = space
***        IMPORTING
***          ev_status   = DATA(lv_status)
***        CHANGING
***        cv_process = lv_process
***      ).
***
***
*****      CALL METHOD lo_contract->set_client   " Se puede invocar asi al metodo
*****        EXPORTING
*****          iv_client   =
*****          iv_location =
******  IMPORTING
******         ev_status   =
*****        CHANGING
*****          cv_process  =.
***
***
****      out->write( lo_contract->currency ). "No es correcto el llamado lo correcto es mediante la clase
****      out->write( lo_contract2->currency ).
***
***      lo_contract->get_client( IMPORTING  ev_client = DATA(lv_client) ).
***      lo_contract->region = 'EU'.
***
******      lo_contract->get_client_name(
******        EXPORTING
******          iv_client_id   = '01'
******        RECEIVING
******          rv_client_name = DATA(lv_client_name)
******      ).
***
***
*****la invocacion anterior se simplifica de la siguiente manera.
***
****      DATA(lv_client_name) =  lo_contract->get_client_name( iv_client_id = '01' ).
**********Se puede validar directamente DIRECTAMENTE
***      IF  NOT lo_contract->get_client_name( iv_client_id = '01' ) IS INITIAL.
***        out->write( lo_contract->get_client_name( iv_client_id = '01' ) )."se puede imprimir directamene
***      ENDIF.
***
***
***    ENDIF.
***
****llamada a un método estático. utilizamos la clase
****    zcl_02_contract_zapata_alg=>set_cntr_type( iv_cntr_type = 'Construccion' ).
***    zcl_02_contract_zapata_alg=>set_cntr_type( 'Construccion' ). "como solo hay un parametro podemos omitir la asignacion
***
***
****    zcl_02_contract_zapata_alg=>currency = 'USD'.
****    zcl_02_contract_zapata_alg=>currency  = zcl_02_contract_zapata_alg=>cv_currency_usd.
***    zcl_02_contract_zapata_alg=>currency  = zcl_02_contract_zapata_alg=>cs_currency-usd.
***
***
***    out->write( zcl_02_contract_zapata_alg=>currency ).
***
***    zcl_02_contract_zapata_alg=>get_cntr_type( IMPORTING ev_cntr_type = DATA(lv_cntr_type) ).
***    out->write( | Proceso { lv_process } Cliente  { lv_client }  Status { lv_status } Región { lo_contract->region }|  ).
***    out->write( lv_cntr_type ).
***
****    zcl_02_contract_zapata_alg=>company = 'Coca Cola S.A de C.V'.
***    out->write( zcl_02_contract_zapata_alg=>company ).
****    out->write( 'Hola mundo cruel' ).


  ENDMETHOD.
ENDCLASS.
