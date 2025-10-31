@EndUserText.label: 'Table Functions'
@ClientHandling.algorithm: #NONE
//@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.type: #CLIENT_INDEPENDENT
define table function zi_tf_alg01
  with parameters 
  pCountryCode : land1 
returns
{
  key Client        : abap.clnt;
  key TravelID      : /dmo/travel_id;
  key booking_id    : /dmo/booking_id;
  key customer_id   : /dmo/customer_id;
      first_name    : /dmo/first_name;
      last_name     : /dmo/last_name;
      booking_date  : /dmo/booking_date;
      carrier_id    : /dmo/carrier_id;
      connection_id : /dmo/connection_id;
      flight_date   : /dmo/flight_date;
      @Semantics.amount.currencyCode : 'currency_code'
      flight_price  : /dmo/flight_price;
      currency_code : /dmo/currency_code;
}
implemented by method
  zcl_amdp_tf=>get_cust_bookings;