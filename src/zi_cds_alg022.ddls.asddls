@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'CDS-for Hierarchy'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG022
  as select from zemployee_alg
  association [0..1] to ZI_CDS_ALG022 as _Manager on _Manager.Employee = $projection.Manager
{
  key employee as Employee,
      manager  as Manager,
      name     as Name,
      _Manager

}
