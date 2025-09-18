@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS-Travel'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
//@ObjectModel.semanticKey: [ 'AirlineID', 'ConnectionID', 'FlighteDate' ]
define view entity ZI_CDS_ALG001
  as select from /dmo/flight
{
  key carrier_id                                                  as AirlineID,
  key connection_id                                               as ConnectionID,
  key flight_date                                                 as FlighteDate,
      @Semantics.amount.currencyCode: 'Currency'
      @EndUserText.label: 'Price'
      price                                                       as Price,
      currency_code                                               as Currency,

      'USD'                                                       as CurrencyDocument,

      '20300101'                                                  as DateString,

      cast( '20300101' as abap.dats )                             as DateDate,

      1.2                                                         as FloatingPointElement,

      fltp_to_dec(1.2 as abap.dec(4,2))                           as DecimalElement,

      cast( cast( 'E' as abap.lang ) as sylangu preserving type ) as LanguageElement
}
