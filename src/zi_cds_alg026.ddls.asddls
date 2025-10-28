@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - contract Type Interface'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_CDS_ALG026
  provider contract transactional_interface
  as projection on ZI_CDS_ALG024
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
//      BookingFee,
//      TotalPrice,
      CurrencyCode,
      Description,
      Status,
      Createdby,
      Createdat,
      Lastchangedby,
      Lastchangedat,
      /* Associations */
      _Agency,
      _Booking: redirected to composition child ZI_CDS_ALG027,
      _Customer
}
