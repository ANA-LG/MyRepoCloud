INTERFACE zif_05_sales_order_alg
  PUBLIC .
  INTERFACES zif_04_document_alg.
  METHODS create_order IMPORTING iv_order_id TYPE string.
ENDINTERFACE.
