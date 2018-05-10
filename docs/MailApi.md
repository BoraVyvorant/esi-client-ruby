# ESI::MailApi

All URIs are relative to *https://esi.evetech.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_characters_character_id_mail_labels_label_id**](MailApi.md#delete_characters_character_id_mail_labels_label_id) | **DELETE** /v1/characters/{character_id}/mail/labels/{label_id}/ | Delete a mail label
[**delete_characters_character_id_mail_mail_id**](MailApi.md#delete_characters_character_id_mail_mail_id) | **DELETE** /v1/characters/{character_id}/mail/{mail_id}/ | Delete a mail
[**get_characters_character_id_mail**](MailApi.md#get_characters_character_id_mail) | **GET** /v1/characters/{character_id}/mail/ | Return mail headers
[**get_characters_character_id_mail_labels**](MailApi.md#get_characters_character_id_mail_labels) | **GET** /v3/characters/{character_id}/mail/labels/ | Get mail labels and unread counts
[**get_characters_character_id_mail_lists**](MailApi.md#get_characters_character_id_mail_lists) | **GET** /v1/characters/{character_id}/mail/lists/ | Return mailing list subscriptions
[**get_characters_character_id_mail_mail_id**](MailApi.md#get_characters_character_id_mail_mail_id) | **GET** /v1/characters/{character_id}/mail/{mail_id}/ | Return a mail
[**post_characters_character_id_mail**](MailApi.md#post_characters_character_id_mail) | **POST** /v1/characters/{character_id}/mail/ | Send a new mail
[**post_characters_character_id_mail_labels**](MailApi.md#post_characters_character_id_mail_labels) | **POST** /v2/characters/{character_id}/mail/labels/ | Create a mail label
[**put_characters_character_id_mail_mail_id**](MailApi.md#put_characters_character_id_mail_mail_id) | **PUT** /v1/characters/{character_id}/mail/{mail_id}/ | Update metadata about a mail


# **delete_characters_character_id_mail_labels_label_id**
> delete_characters_character_id_mail_labels_label_id(character_idlabel_id, opts)

Delete a mail label

Delete a mail label  --- 

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

label_id = 56 # Integer | An EVE label id

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete a mail label
  api_instance.delete_characters_character_id_mail_labels_label_id(character_idlabel_id, opts)
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->delete_characters_character_id_mail_labels_label_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **label_id** | **Integer**| An EVE label id | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_characters_character_id_mail_mail_id**
> delete_characters_character_id_mail_mail_id(character_idmail_id, opts)

Delete a mail

Delete a mail  --- 

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Delete a mail
  api_instance.delete_characters_character_id_mail_mail_id(character_idmail_id, opts)
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->delete_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_mail**
> Array&lt;GetCharactersCharacterIdMail200Ok&gt; get_characters_character_id_mail(character_id, opts)

Return mail headers

Return the 50 most recent mail headers belonging to the character that match the query criteria. Queries can be filtered by label, and last_mail_id can be used to paginate backwards.  ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  labels: [56], # Array<Integer> | Fetch only mails that match one or more of the given labels
  last_mail_id: 56, # Integer | List only mail with an ID lower than the given ID, if present
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return mail headers
  result = api_instance.get_characters_character_id_mail(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->get_characters_character_id_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **labels** | [**Array&lt;Integer&gt;**](Integer.md)| Fetch only mails that match one or more of the given labels | [optional] 
 **last_mail_id** | **Integer**| List only mail with an ID lower than the given ID, if present | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**Array&lt;GetCharactersCharacterIdMail200Ok&gt;**](GetCharactersCharacterIdMail200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_mail_labels**
> GetCharactersCharacterIdMailLabelsOk get_characters_character_id_mail_labels(character_id, opts)

Get mail labels and unread counts

Return a list of the users mail labels, unread counts for each label and a total unread count.  ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Get mail labels and unread counts
  result = api_instance.get_characters_character_id_mail_labels(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->get_characters_character_id_mail_labels: #{e}"
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

[**GetCharactersCharacterIdMailLabelsOk**](GetCharactersCharacterIdMailLabelsOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_mail_lists**
> Array&lt;GetCharactersCharacterIdMailLists200Ok&gt; get_characters_character_id_mail_lists(character_id, opts)

Return mailing list subscriptions

Return all mailing lists that the character is subscribed to  ---  This route is cached for up to 120 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return mailing list subscriptions
  result = api_instance.get_characters_character_id_mail_lists(character_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->get_characters_character_id_mail_lists: #{e}"
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

[**Array&lt;GetCharactersCharacterIdMailLists200Ok&gt;**](GetCharactersCharacterIdMailLists200Ok.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_characters_character_id_mail_mail_id**
> GetCharactersCharacterIdMailMailIdOk get_characters_character_id_mail_mail_id(character_idmail_id, opts)

Return a mail

Return the contents of an EVE mail  ---  This route is cached for up to 30 seconds

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  if_none_match: "if_none_match_example", # String | ETag from a previous request. A 304 will be returned if this matches the current ETag
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Return a mail
  result = api_instance.get_characters_character_id_mail_mail_id(character_idmail_id, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->get_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **if_none_match** | **String**| ETag from a previous request. A 304 will be returned if this matches the current ETag | [optional] 
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

[**GetCharactersCharacterIdMailMailIdOk**](GetCharactersCharacterIdMailMailIdOk.md)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_characters_character_id_mail**
> Integer post_characters_character_id_mail(character_idmail, opts)

Send a new mail

Create and send a new mail  --- 

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

mail = ESI::PostCharactersCharacterIdMailMail.new # PostCharactersCharacterIdMailMail | The mail to send

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Send a new mail
  result = api_instance.post_characters_character_id_mail(character_idmail, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->post_characters_character_id_mail: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **mail** | [**PostCharactersCharacterIdMailMail**](PostCharactersCharacterIdMailMail.md)| The mail to send | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **post_characters_character_id_mail_labels**
> Integer post_characters_character_id_mail_labels(character_idlabel, opts)

Create a mail label

Create a mail label  --- 

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

label = ESI::PostCharactersCharacterIdMailLabelsLabel.new # PostCharactersCharacterIdMailLabelsLabel | Label to create

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Create a mail label
  result = api_instance.post_characters_character_id_mail_labels(character_idlabel, opts)
  p result
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->post_characters_character_id_mail_labels: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **label** | [**PostCharactersCharacterIdMailLabelsLabel**](PostCharactersCharacterIdMailLabelsLabel.md)| Label to create | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

**Integer**

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **put_characters_character_id_mail_mail_id**
> put_characters_character_id_mail_mail_id(character_idcontents, mail_id, opts)

Update metadata about a mail

Update metadata about a mail  --- 

### Example
```ruby
# load the gem
require 'esi-client-bvv'
# setup authorization
ESI.configure do |config|
  # Configure OAuth2 access token for authorization: evesso
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = ESI::MailApi.new

character_id = 56 # Integer | An EVE character ID

contents = ESI::PutCharactersCharacterIdMailMailIdContents.new # PutCharactersCharacterIdMailMailIdContents | Data used to update the mail

mail_id = 56 # Integer | An EVE mail ID

opts = { 
  datasource: "tranquility", # String | The server name you would like data from
  token: "token_example", # String | Access token to use if unable to set a header
  user_agent: "user_agent_example", # String | Client identifier, takes precedence over headers
  x_user_agent: "x_user_agent_example" # String | Client identifier, takes precedence over User-Agent
}

begin
  #Update metadata about a mail
  api_instance.put_characters_character_id_mail_mail_id(character_idcontents, mail_id, opts)
rescue ESI::ApiError => e
  puts "Exception when calling MailApi->put_characters_character_id_mail_mail_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **character_id** | **Integer**| An EVE character ID | 
 **contents** | [**PutCharactersCharacterIdMailMailIdContents**](PutCharactersCharacterIdMailMailIdContents.md)| Data used to update the mail | 
 **mail_id** | **Integer**| An EVE mail ID | 
 **datasource** | **String**| The server name you would like data from | [optional] [default to tranquility]
 **token** | **String**| Access token to use if unable to set a header | [optional] 
 **user_agent** | **String**| Client identifier, takes precedence over headers | [optional] 
 **x_user_agent** | **String**| Client identifier, takes precedence over User-Agent | [optional] 

### Return type

nil (empty response body)

### Authorization

[evesso](../README.md#evesso)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



