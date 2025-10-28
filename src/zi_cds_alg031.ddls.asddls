@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cube'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Analytics.dataCategory: #CUBE
define view entity ZI_CDS_ALG031
  as select from zso_alg as SalesOrder
  association [0..1] to ZI_CDS_ALG030 as _Currency on _Currency.Currency = $projection.CurrencySum
{
  key SalesOrder.so_key           as SoKey,
      SalesOrder.lifecycle_status as LifecycleStatus,
      company_code                as CompanyCode,

      @DefaultAggregation: #SUM
      @Semantics.amount.currencyCode: 'CurrencySum'
      SalesOrder.amount_sum       as AmountSum,

      @ObjectModel.foreignKey.association: '_Currency'
      currency_sum                as CurrencySum,

      @DefaultAggregation: #SUM
      @Semantics.quantity.unitOfMeasure: 'UomSum'
      quantity_sum                as QuantitySum,
      uom_sum                     as UomSum,

      @DefaultAggregation: #NONE
      created_by                  as CreatedBy,

      @DefaultAggregation: #NONE
      created_on                  as CreatedOn,
      _Currency
}
