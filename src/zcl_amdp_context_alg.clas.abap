CLASS zcl_amdp_context_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.
    TYPES: BEGIN OF ty_bookings,
             TravelID     TYPE /dmo/travel_id,
             booking_id   TYPE /dmo/booking_id,
             customer_id  TYPE /dmo/customer_id,
             first_name   TYPE /dmo/first_name,
             last_name    TYPE /dmo/last_name,
             booking_date TYPE /dmo/booking_date,
             carrier_id   TYPE /dmo/carrier_id,
           END OF ty_bookings.

    TYPES ty_employees_t TYPE TABLE OF zempl_cli_alg.
    CLASS-METHODS get_employees_all_clients AMDP OPTIONS CLIENT INDEPENDENT EXPORTING VALUE(et_employees) TYPE ty_employees_t.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_context_alg IMPLEMENTATION.
  METHOD get_employees_all_clients BY DATABASE PROCEDURE FOR HDB LANGUAGE SQLSCRIPT OPTIONS READ-ONLY USING zempl_cli_alg.

    ET_EMPLOYEES = SELECT * FROM zempl_cli_alg;

  ENDMETHOD.

ENDCLASS.
