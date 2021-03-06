# ESI::SovereigntyApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_sovereignty_campaigns**](SovereigntyApi.md#get_sovereignty_campaigns) | **GET** /v1/sovereignty/campaigns/ | List sovereignty campaigns
[**get_sovereignty_map**](SovereigntyApi.md#get_sovereignty_map) | **GET** /v1/sovereignty/map/ | List sovereignty of systems
[**get_sovereignty_structures**](SovereigntyApi.md#get_sovereignty_structures) | **GET** /v1/sovereignty/structures/ | List sovereignty structures


# **get_sovereignty_campaigns**
> Array&lt;GetSovereigntyCampaigns200Ok&gt; get_sovereignty_campaigns(opts)

List sovereignty campaigns

Shows sovereignty data for campaigns.  ---  This route is cached for up to 5 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::SovereigntyApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List sovereignty campaigns
  result = api_instance.get_sovereignty_campaigns(opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling SovereigntyApi->get_sovereignty_campaigns: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetSovereigntyCampaigns200Ok&gt;**](GetSovereigntyCampaigns200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sovereignty_map**
> Array&lt;GetSovereigntyMap200Ok&gt; get_sovereignty_map(opts)

List sovereignty of systems

Shows sovereignty information for solar systems  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::SovereigntyApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List sovereignty of systems
  result = api_instance.get_sovereignty_map(opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling SovereigntyApi->get_sovereignty_map: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetSovereigntyMap200Ok&gt;**](GetSovereigntyMap200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_sovereignty_structures**
> Array&lt;GetSovereigntyStructures200Ok&gt; get_sovereignty_structures(opts)

List sovereignty structures

Shows sovereignty data for structures.  ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::SovereigntyApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List sovereignty structures
  result = api_instance.get_sovereignty_structures(opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling SovereigntyApi->get_sovereignty_structures: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetSovereigntyStructures200Ok&gt;**](GetSovereigntyStructures200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



