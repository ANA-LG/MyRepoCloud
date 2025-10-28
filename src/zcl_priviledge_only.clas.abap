CLASS zcl_priviledge_only DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_priviledge_only IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    SELECT FROM zi_cds_alg038 WITH PRIVILEGED ACCESS
          FIELDS *
          INTO TABLE @DATA(lt_results)
          UP TO  50 ROWS.
    IF sy-subrc EQ 0.
      out->write( lt_results ).
    ELSE.
      out->write( 'No data' ).
    ENDIF.

  ENDMETHOD.

ENDCLASS.
