@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sesion Variables'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ClientHandling.algorithm: #SESSION_VARIABLE
define view entity ZI_CDS_ALG003
  as select from /dmo/customer
{
//  key client                   as Client,
  key customer_id              as CustomerID,
      $session.client          as ClientField,
      $session. system_date    as SystemDate,
      $session.system_language as SystemLanguage,
      $session. user           as UserField,
      $session.user_date       as UserDate,
      $session.user_timezone   as UserTz

}
