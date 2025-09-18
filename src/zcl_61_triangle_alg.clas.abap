CLASS zcl_61_triangle_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
      INTERFACES zif_11_geometric_figure_alg.
    ALIASES draw_shape FOR zif_11_geometric_figure_alg~draw_shape.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_61_triangle_alg IMPLEMENTATION.
  METHOD draw_shape.
    rv_shape = 'Triangle'.
  ENDMETHOD.
ENDCLASS.
