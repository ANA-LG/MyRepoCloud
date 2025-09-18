@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association filter with path expression'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG016
  as select from /dmo/travel
  association [0..*] to I_CurrencyText as _Currency on _Currency.Currency = $projection.Currency
{
  key travel_id     as TraveID,
      @Semantics.amount.currencyCode: 'Currency'
      total_price   as Price,
      currency_code as Currency,
      _Currency[1:Language = $session.system_language ].CurrencyName

}
