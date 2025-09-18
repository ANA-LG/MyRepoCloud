CLASS zcl_62_factory_alg DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS get_shape IMPORTING iv_shape_type        TYPE string
                      RETURNING VALUE(ro_shape_type) TYPE REF TO zif_11_geometric_figure_alg.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_62_factory_alg IMPLEMENTATION.
  METHOD get_shape.
    CASE iv_shape_type.
      WHEN 'Circle'.
        ro_shape_type = NEW zcl_59_circle_alg(  ).
      WHEN 'Square'.
        ro_shape_type = NEW zcl_60_square_alg(  ).
      WHEN 'Triangle'.
        ro_shape_type = NEW zcl_61_triangle_alg(  ).

    ENDCASE.

  ENDMETHOD.

ENDCLASS.
