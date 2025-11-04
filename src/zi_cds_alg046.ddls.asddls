@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consuming Table Function'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG046
  with parameters
    pCountryCode : land1
  as select from /dmo/travel                                         as Travel
  //  association [0..*] to zi_tf_alg01 as _BookingsByCustomer on _BookingsByCustomer.TravelID = $projection.TravelId
    inner join   zi_tf_alg01(pCountryCode: $parameters.pCountryCode) as BookingsByCustomer on BookingsByCustomer.TravelID = Travel.travel_id
{
  key Travel.travel_id                      as TravelId,
      Travel.agency_id                      as AgencyId,
      BookingsByCustomer.customer_id as CustomerId,
      Travel.begin_date                     as BeginDate,
      Travel.end_date                       as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.booking_fee                    as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.total_price                    as TotalPrice,
      //      currency_code                                                         as CurrencyCode,
      Travel.currency_code           as CurrencyCode,
      Travel.description                    as Description,
      Travel.status                         as Status,
      BookingsByCustomer.last_name as LastName
      //      ,
      //      _BookingsByCustomer(pCountryCode: 'US').last_name as LastName
      //      _BookingsByCustomer(pCountryCode: $parameters.pCountryCode).last_name as LastName
}
