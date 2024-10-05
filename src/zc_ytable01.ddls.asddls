@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true
define root view entity ZC_YTABLE01
  provider contract transactional_query
  as projection on yi_travel_gen
{
  key TravelUuid,
      TravelId,
      @Search.defaultSearchElement: true
//      @ObjectModel.text.element: [ 'AgencyName' ]
      @Consumption.valueHelpDefinition: [{ entity: { name : '/DMO/I_Agency_StdVH',
                                                     element: 'AgencyID'
                                                      },
                                                      useForValidation: true
                                                      }]
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Semantics.currencyCode: true
      CurrencyCode,
      Description,
      OverallStatus,
      LocalCreatedBy,
      LocalCreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt

}
