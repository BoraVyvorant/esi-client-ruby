# ESI::GetCorporationsCorporationIdStarbases200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**starbase_id** | **Integer** | Unique ID for this starbase (POS) | 
**type_id** | **Integer** | Starbase (POS) type | 
**system_id** | **Integer** | The solar system this starbase (POS) is in, unanchored POSes have this information | 
**moon_id** | **Integer** | The moon this starbase (POS) is anchored on, unanchored POSes do not have this information | [optional] 
**state** | **String** | state string | [optional] 
**unanchor_at** | **DateTime** | When the POS started unanchoring, for starbases (POSes) in unanchoring state | [optional] 
**reinforced_until** | **DateTime** | When the POS will be out of reinforcement, for starbases (POSes) in reinforced state | [optional] 
**onlined_since** | **DateTime** | When the POS onlined, for starbases (POSes) in online state | [optional] 


