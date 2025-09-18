@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with parameter'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_CDS_ALG014
  with parameters
    pCountryCode2 : land1

  as select from /dmo/travel as Travel
  association [1..1] to ZI_CDS_ALG013 as _Agency on _Agency.AgencyId = $projection.AgencyId
{
  key travel_id                                                               as TravelId,
      Travel.agency_id                                                        as AgencyId,
      //      _Agency(pCountryCode : 'US').Name as AgencyName
      _Agency(pCountryCode : $parameters.pCountryCode2)[City= 'Chicago'].Name as AgencyName

}
