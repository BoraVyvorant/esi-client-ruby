# ESI::GetWarsWarIdOk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the specified war | 
**declared** | **DateTime** | Time that the war was declared | 
**started** | **DateTime** | Time when the war started and both sides could shoot each other | [optional] 
**retracted** | **DateTime** | Time the war was retracted but both sides could still shoot each other | [optional] 
**finished** | **DateTime** | Time the war ended and shooting was no longer allowed | [optional] 
**mutual** | **BOOLEAN** | Was the war declared mutual by both parties | 
**open_for_allies** | **BOOLEAN** | Is the war currently open for allies or not | 
**aggressor** | [**GetWarsWarIdAggressor**](GetWarsWarIdAggressor.md) |  | 
**defender** | [**GetWarsWarIdDefender**](GetWarsWarIdDefender.md) |  | 
**allies** | [**Array&lt;GetWarsWarIdAlly&gt;**](GetWarsWarIdAlly.md) | allied corporations or alliances, each object contains either corporation_id or alliance_id | [optional] 


