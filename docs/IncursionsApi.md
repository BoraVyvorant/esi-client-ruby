# ESI::IncursionsApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_incursions**](IncursionsApi.md#get_incursions) | **GET** /v1/incursions/ | List incursions


# **get_incursions**
> Array&lt;GetIncursions200Ok&gt; get_incursions(opts)

List incursions

Return a list of current incursions  ---  This route is cached for up to 300 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'

api_instance = ESI::IncursionsApi.new

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
}

begin
  #List incursions
  result = api_instance.get_incursions(opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling IncursionsApi->get_incursions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 

### Return type

[**Array&lt;GetIncursions200Ok&gt;**](GetIncursions200Ok.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



