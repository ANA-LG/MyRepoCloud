@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_QUERY_PROVIDER_ALG'
define custom entity ZI_CDS_ALG020
{
  key travel_id : /dmo/travel_id;
  agency_id     : /dmo/agency_id;
  customer_id   : /dmo/customer_id;
}
