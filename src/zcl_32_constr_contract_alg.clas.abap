CLASS zcl_32_constr_contract_alg DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_09_contract_alg .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_32_CONSTR_CONTRACT_ALG IMPLEMENTATION.


  METHOD zif_09_contract_alg~create_contract.
    me->zif_09_contract_alg~contract_type = iv_cntr_type.
  ENDMETHOD.
ENDCLASS.
