@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG010
  as select from /dmo/travel  as Travel
    inner join   /dmo/booking as Booking on Booking.travel_id = Travel.travel_id
{
  key   Travel.travel_id      as TravelId,
  key   Booking.booking_id    as BookingId,
        Travel.agency_id      as AgencyId,
        Travel.begin_date     as BeginDate,
        Travel.end_date       as EndDate,
        @Semantics.amount.currencyCode: 'Currencycode'
        Travel.total_price    as TotalPrice,
        @Semantics.amount.currencyCode: 'Currencycode'
        Booking.flight_price  as BookingPrice,
        Booking.currency_code as Currencycode
}
