@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child Query'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_CDS_ALG029
  as projection on ZI_CDS_ALG025
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Travel : redirected to parent ZI_CDS_ALG028
}
