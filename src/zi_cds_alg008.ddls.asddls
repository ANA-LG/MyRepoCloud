@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG008
  with parameters
    pFromCurrency : abap.cuky,
    pToCurrency   : abap.cuky
  as select from /dmo/travel
{
  key travel_id                                      as TravelID,
      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                    as OriginalPrice,
      currency_code                                  as OriginalCurrency,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount => total_price,
      source_currency             => $parameters.pFromCurrency,
      //      target_currency             => cast( 'USD' as abap.cuky ),
      target_currency             => $parameters.pToCurrency,
      exchange_rate_date          => begin_date,
      client                      => $session.client,
      error_handling              =>  'SET_TO_NULL') as ConvertedPrice,

      //      cast( 'USD' as abap.cuky )                     as ConvertedCurrency
      $parameters.pToCurrency                        as ConvertedCurrency
}
where
  currency_code = $parameters.pFromCurrency;
