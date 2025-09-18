CLASS zcl_60_square_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES zif_11_geometric_figure_alg.
    ALIASES draw_shape FOR zif_11_geometric_figure_alg~draw_shape.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_60_square_alg IMPLEMENTATION.
  METHOD draw_shape.
    rv_shape = 'Square'.
  ENDMETHOD.
ENDCLASS.
