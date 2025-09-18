CLASS zcl_44_comp_friends_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_helper.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_44_COMP_FRIENDS_ALG IMPLEMENTATION.


  METHOD get_helper.
    DATA(lo_components) = NEW zcl_43_component(  ).
    CLEAR lo_components->mo_helper->ms_first_cl.
    DATA(ls_firs) = lo_components->mo_helper->get_first(  ).
  ENDMETHOD.
ENDCLASS.
