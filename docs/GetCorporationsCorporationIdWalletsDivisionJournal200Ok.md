# ESI::GetCorporationsCorporationIdWalletsDivisionJournal200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**date** | **DateTime** | Date and time of transaction | 
**ref_id** | **Integer** | Unique journal reference ID | 
**ref_type** | **String** | Transaction type, different type of transaction will populate different fields in &#x60;extra_info&#x60; Note: If you have an existing XML API application that is using ref_types, you will need to know which string ESI ref_type maps to which integer. You can use the following gist to see string-&gt;int mappings: https://gist.github.com/ccp-zoetrope/c03db66d90c2148724c06171bc52e0ec | 
**first_party_id** | **Integer** | first_party_id integer | [optional] 
**first_party_type** | **String** | first_party_type string | [optional] 
**second_party_id** | **Integer** | second_party_id integer | [optional] 
**second_party_type** | **String** | second_party_type string | [optional] 
**amount** | **Float** | Transaction amount. Positive when value transferred to the first party. Negative otherwise | [optional] 
**balance** | **Float** | Wallet balance after transaction occurred | [optional] 
**reason** | **String** | reason string | [optional] 
**tax_receiver_id** | **Integer** | the corporation ID receiving any tax paid | [optional] 
**tax** | **Float** | Tax amount received for tax related transactions | [optional] 
**extra_info** | [**GetCorporationsCorporationIdWalletsDivisionJournalExtraInfo**](GetCorporationsCorporationIdWalletsDivisionJournalExtraInfo.md) |  | [optional] 


