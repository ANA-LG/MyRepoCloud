@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Text Category'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZI_CDS_ALG011
  as select from /dmo/oall_stat_t
{
      @ObjectModel.text.element: [ 'Text' ]
  key overall_status as OverallStatus,
      @Semantics.language: true
  key language       as Language,
      @Semantics.text: true
      text           as Text
}
