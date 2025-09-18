@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Quantity conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG009
  as select from zqty_alg
{
  key product                                     as Product,
      @Semantics.quantity.unitOfMeasure : 'OriginalUnit'
      quantity                                    as OriginalQty,
      unit                                        as OriginalUnit,

      
      @Semantics.quantity.unitOfMeasure : 'ConvertedUnit'
      unit_conversion( quantity => quantity,
                      source_unit => unit,
                      target_unit => abap.unit'MI',
                      error_handling => 'SET_TO_NULL',
                      client => $session.client ) as ConvertedQty,
      abap.unit'MI'                               as ConvertedUnit

}
