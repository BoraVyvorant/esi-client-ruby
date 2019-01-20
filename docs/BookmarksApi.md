# ESI::BookmarksApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_characters_character_id_bookmarks**](BookmarksApi.md#get_characters_character_id_bookmarks) | **GET** /v2/characters/{character_id}/bookmarks/ | List bookmarks
[**get_characters_character_id_bookmarks_folders**](BookmarksApi.md#get_characters_character_id_bookmarks_folders) | **GET** /v2/characters/{character_id}/bookmarks/folders/ | List bookmark folders
[**get_corporations_corporation_id_bookmarks**](BookmarksApi.md#get_corporations_corporation_id_bookmarks) | **GET** /v1/corporations/{corporation_id}/bookmarks/ | List corporation bookmarks
[**get_corporations_corporation_id_bookmarks_folders**](BookmarksApi.md#get_corporations_corporation_id_bookmarks_folders) | **GET** /v1/corporations/{corporation_id}/bookmarks/folders/ | List corporation bookmark folders


# **get_characters_character_id_bookmarks**
> Array&lt;GetCharactersCharacterIdBookmarks200Ok&gt; get_characters_character_id_bookmarks(character_id, opts)

List bookmarks

A list of your character's personal bookmarks  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::BookmarksApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: "token_example" # String | Access token to use if unable to set a header
}

begin
  #List bookmarks
  result = api_instance.get_characters_character_id_bookmarks(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling BookmarksApi->get_characters_character_id_bookmarks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdBookmarks200Ok&gt;**](GetCharactersCharacterIdBookmarks200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_bookmarks_folders**
> Array&lt;GetCharactersCharacterIdBookmarksFolders200Ok&gt; get_characters_character_id_bookmarks_folders(character_id, opts)

List bookmark folders

A list of your character's personal bookmark folders  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::BookmarksApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: "token_example" # String | Access token to use if unable to set a header
}

begin
  #List bookmark folders
  result = api_instance.get_characters_character_id_bookmarks_folders(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling BookmarksApi->get_characters_character_id_bookmarks_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdBookmarksFolders200Ok&gt;**](GetCharactersCharacterIdBookmarksFolders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_bookmarks**
> Array&lt;GetCorporationsCorporationIdBookmarks200Ok&gt; get_corporations_corporation_id_bookmarks(corporation_id, , opts)

List corporation bookmarks

A list of your corporation's bookmarks  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::BookmarksApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: "token_example" # String | Access token to use if unable to set a header
}

begin
  #List corporation bookmarks
  result = api_instance.get_corporations_corporation_id_bookmarks(corporation_id, , opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling BookmarksApi->get_corporations_corporation_id_bookmarks: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdBookmarks200Ok&gt;**](GetCorporationsCorporationIdBookmarks200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_corporations_corporation_id_bookmarks_folders**
> Array&lt;GetCorporationsCorporationIdBookmarksFolders200Ok&gt; get_corporations_corporation_id_bookmarks_folders(corporation_id, , opts)

List corporation bookmark folders

A list of your corporation's bookmark folders  ---  This route is cached for up to 3600 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::BookmarksApi.new

corporation_id = 56 # Integer | An EVE corporation ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  page: 1, # Integer | Which page of results to return
  token: "token_example" # String | Access token to use if unable to set a header
}

begin
  #List corporation bookmark folders
  result = api_instance.get_corporations_corporation_id_bookmarks_folders(corporation_id, , opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling BookmarksApi->get_corporations_corporation_id_bookmarks_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **corporation_id** | **Integer**| An EVE corporation ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **page** | **Integer**| Which page of results to return | [optional] [default to 1]
 **token** | **String**| Access token to use if unable to set a header | [optional] 

### Return type

[**Array&lt;GetCorporationsCorporationIdBookmarksFolders200Ok&gt;**](GetCorporationsCorporationIdBookmarksFolders200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



