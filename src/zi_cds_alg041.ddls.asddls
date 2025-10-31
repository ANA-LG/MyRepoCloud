@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl: {
        authorizationCheck: #NOT_ALLOWED,
        auditing.type: #CUSTOM,
        auditing.specification: 'ALG' }
@EndUserText.label: 'Access control Auditing'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG041
  as select from zuser_alg
{
  key user_id    as UserId,
  key plant      as Plant,
  key invoice_id as InvoiceId,
      first_name as FirstName,
      last_name  as LastName
}
