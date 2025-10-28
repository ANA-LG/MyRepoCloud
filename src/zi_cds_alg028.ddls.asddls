@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - contract Type Query'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CDS_ALG028
  provider contract transactional_query
  as projection on ZI_CDS_ALG024
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      //    BookingFee,
      //    TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZI_CDS_ALG029,
      _Customer
}
