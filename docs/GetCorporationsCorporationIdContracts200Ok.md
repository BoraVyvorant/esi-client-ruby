# ESI::GetCorporationsCorporationIdContracts200Ok

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**contract_id** | **Integer** | contract_id integer | 
**issuer_id** | **Integer** | Character ID for the issuer | 
**issuer_corporation_id** | **Integer** | Character&#39;s corporation ID for the issuer | 
**assignee_id** | **Integer** | ID to whom the contract is assigned, can be corporation or character ID | 
**acceptor_id** | **Integer** | Who will accept the contract | 
**start_location_id** | **Integer** | Start location ID (for Couriers contract) | [optional] 
**end_location_id** | **Integer** | End location ID (for Couriers contract) | [optional] 
**type** | **String** | Type of the contract | 
**status** | **String** | Status of the the contract | 
**title** | **String** | Title of the contract | [optional] 
**for_corporation** | **BOOLEAN** | true if the contract was issued on behalf of the issuer&#39;s corporation | 
**availability** | **String** | To whom the contract is available | 
**date_issued** | **DateTime** | Сreation date of the contract | 
**date_expired** | **DateTime** | Expiration date of the contract | 
**date_accepted** | **DateTime** | Date of confirmation of contract | [optional] 
**days_to_complete** | **Integer** | Number of days to perform the contract | [optional] 
**date_completed** | **DateTime** | Date of completed of contract | [optional] 
**price** | **Float** | Price of contract (for ItemsExchange and Auctions) | [optional] 
**reward** | **Float** | Remuneration for contract (for Couriers only) | [optional] 
**collateral** | **Float** | Collateral price (for Couriers only) | [optional] 
**buyout** | **Float** | Buyout price (for Auctions only) | [optional] 
**volume** | **Float** | Volume of items in the contract | [optional] 


