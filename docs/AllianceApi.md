# ESI::AllianceApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_alliances**](AllianceApi.md#get_alliances) | **GET** /v1/alliances/ | List all alliances
[**get_alliances_alliance_id**](AllianceApi.md#get_alliances_alliance_id) | **GET** /v3/alliances/{alliance_id}/ | Get alliance information
[**get_alliances_alliance_id_corporations**](AllianceApi.md#get_alliances_alliance_id_corporations) | **GET** /v1/alliances/{alliance_id}/corporations/ | List alliance&#39;s corporations
[**get_alliances_alliance_id_icons**](AllianceApi.md#get_alliances_alliance_id_icons) | **GET** /v1/alliances/{alliance_id}/icons/ | Get alliance icon


# **get_alliances**
> Array&lt;Integer&gt; get_alliances(opts)

List all alliances

List all active player alliances  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::AllianceApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List all alliances
  result = api_instance.get_alliances(opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_alliances_alliance_id**
> GetAlliancesAllianceIdOk get_alliances_alliance_id(alliance_id, opts)

Get alliance information

Public information about an alliance  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #Get alliance information
  result = api_instance.get_alliances_alliance_id(alliance_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**GetAlliancesAllianceIdOk**](GetAlliancesAllianceIdOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_alliances_alliance_id_corporations**
> Array&lt;Integer&gt; get_alliances_alliance_id_corporations(alliance_id, opts)

List alliance's corporations

List all current member corporations of an alliance  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List alliance's corporations
  result = api_instance.get_alliances_alliance_id_corporations(alliance_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id_corporations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

**Array&lt;Integer&gt;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_alliances_alliance_id_icons**
> GetAlliancesAllianceIdIconsOk get_alliances_alliance_id_icons(alliance_id, opts)

Get alliance icon

Get the icon urls for a alliance  ---  This route expires daily at 11:05

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::AllianceApi.new

alliance_id = 56 # Integer | An EVE alliance ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #Get alliance icon
  result = api_instance.get_alliances_alliance_id_icons(alliance_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling AllianceApi->get_alliances_alliance_id_icons: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **alliance_id** | **Integer**| An EVE alliance ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**GetAlliancesAllianceIdIconsOk**](GetAlliancesAllianceIdIconsOk.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



