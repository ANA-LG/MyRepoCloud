CLASS zcl_63_play_alg DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  PROTECTED SECTION.
    DATA: player_counter TYPE i.

    METHODS initialize_game ABSTRACT.
    METHODS create_game ABSTRACT IMPORTING iv_player TYPE i.
    METHODS end_game ABSTRACT RETURNING VALUE(rv_finalized) TYPE abap_bool.
    METHODS printer_winner ABSTRACT.

    METHODS play FINAL IMPORTING i_players TYPE i.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_63_play_alg IMPLEMENTATION.
  METHOD play.

    DATA: lv_player TYPE i.
    CLEAR me->player_counter.
    me->player_counter = i_players.
    me->initialize_game(  ).

    WHILE me->end_game(  ) NE abap_false.
      me->create_game( lv_player ).
      lv_player += 1.
    ENDWHILE.

    me->printer_winner(  ).

  ENDMETHOD.

ENDCLASS.
