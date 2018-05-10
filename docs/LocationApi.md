# ESI::LocationApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_location**](LocationApi.md#get_characters_character_id_location) | **GET** /v1/characters/{character_id}/location/ | Get character location
[**get_characters_character_id_online**](LocationApi.md#get_characters_character_id_online) | **GET** /v2/characters/{character_id}/online/ | Get character online
[**get_characters_character_id_ship**](LocationApi.md#get_characters_character_id_ship) | **GET** /v1/characters/{character_id}/ship/ | Get current ship


# **get_characters_character_id_location**
> GetCharactersCharacterIdLocationOk get_characters_character_id_location(character_id, opts)

Get character location

Information about the characters current location. Returns the current solar system id, and also the current station or structure ID if applicable.  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::LocationApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character location
  result = api_instance.get_characters_character_id_location(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling LocationApi->get_characters_character_id_location: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdLocationOk**](GetCharactersCharacterIdLocationOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_online**
> GetCharactersCharacterIdOnlineOk get_characters_character_id_online(character_id, opts)

Get character online

Checks if the character is currently online  ---  This route is cached for up to 60 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::LocationApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get character online
  result = api_instance.get_characters_character_id_online(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling LocationApi->get_characters_character_id_online: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdOnlineOk**](GetCharactersCharacterIdOnlineOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_ship**
> GetCharactersCharacterIdShipOk get_characters_character_id_ship(character_id, opts)

Get current ship

Get the current ship type, name and id  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::LocationApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get current ship
  result = api_instance.get_characters_character_id_ship(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling LocationApi->get_characters_character_id_ship: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdShipOk**](GetCharactersCharacterIdShipOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



