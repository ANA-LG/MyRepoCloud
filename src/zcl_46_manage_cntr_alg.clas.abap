CLASS zcl_46_manage_cntr_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS check_user IMPORTING iv_user_name TYPE syuname
                       RAISING   zcx_45_auth_alg.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_46_MANAGE_CNTR_ALG IMPLEMENTATION.


  METHOD check_user.


    IF sy-uname EQ 'CB9980000729'.

      RAISE EXCEPTION TYPE zcx_45_auth_alg
        EXPORTING
        textid   = zcx_45_auth_alg=>no_auth
*        previous =
        msgv1    =  | { sy-uname  } |
        msgv2    = 'Edit contract'
*        msgv3    =
*        msgv4    =
        .
    ELSE.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
