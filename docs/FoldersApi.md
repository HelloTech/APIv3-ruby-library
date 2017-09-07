# SendinblueApiv3::FoldersApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_folder**](FoldersApi.md#create_folder) | **POST** /contacts/folders | Create a folder
[**delete_folder**](FoldersApi.md#delete_folder) | **DELETE** /contacts/folders/{folderId} | Delete a folder (and all its lists)
[**get_folder**](FoldersApi.md#get_folder) | **GET** /contacts/folders/{folderId} | Returns folder details
[**get_folder_lists**](FoldersApi.md#get_folder_lists) | **GET** /contacts/folders/{folderId}/lists | Get the lists in a folder
[**get_folders**](FoldersApi.md#get_folders) | **GET** /contacts/folders | Get all the folders
[**update_folder**](FoldersApi.md#update_folder) | **PUT** /contacts/folders/{folderId} | Update a contact folder


# **create_folder**
> CreateModel create_folder(name)

Create a folder

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

name = SendinblueApiv3::CreaUpdateFolder.new # CreaUpdateFolder | Name of the folder


begin
  #Create a folder
  result = api_instance.create_folder(name)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->create_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**CreaUpdateFolder**](CreaUpdateFolder.md)| Name of the folder | 

### Return type

[**CreateModel**](CreateModel.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **delete_folder**
> delete_folder(folder_id)

Delete a folder (and all its lists)

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

folder_id = "folder_id_example" # String | Id of the folder


begin
  #Delete a folder (and all its lists)
  api_instance.delete_folder(folder_id)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->delete_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **String**| Id of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder**
> GetFolder get_folder(folder_id)

Returns folder details

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

folder_id = "folder_id_example" # String | id of the folder


begin
  #Returns folder details
  result = api_instance.get_folder(folder_id)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->get_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **String**| id of the folder | 

### Return type

[**GetFolder**](GetFolder.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folder_lists**
> GetFolderLists get_folder_lists(folder_id, opts)

Get the lists in a folder

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

folder_id = "folder_id_example" # String | Id of the folder

opts = { 
  limit: 10, # Integer | Number of documents per page
  offset: 0 # Integer | Index of the first document of the page
}

begin
  #Get the lists in a folder
  result = api_instance.get_folder_lists(folder_id, opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->get_folder_lists: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **String**| Id of the folder | 
 **limit** | **Integer**| Number of documents per page | [optional] [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [optional] [default to 0]

### Return type

[**GetFolderLists**](GetFolderLists.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_folders**
> GetFolders get_folders(limit, offset)

Get all the folders

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

limit = 10 # Integer | Number of documents per page

offset = 0 # Integer | Index of the first document of the page


begin
  #Get all the folders
  result = api_instance.get_folders(limit, offset)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->get_folders: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number of documents per page | [default to 10]
 **offset** | **Integer**| Index of the first document of the page | [default to 0]

### Return type

[**GetFolders**](GetFolders.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **update_folder**
> update_folder(folder_id, name)

Update a contact folder

### Example
```ruby
# load the gem
require 'sendinblue-apiv3'
# setup authorization
SendinblueApiv3.configure do |config|
  # Configure API key authorization: api-key
  config.api_key['api-key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['api-key'] = 'Bearer'
end

api_instance = SendinblueApiv3::FoldersApi.new

folder_id = "folder_id_example" # String | Id of the folder

name = SendinblueApiv3::CreaUpdateFolder.new # CreaUpdateFolder | Name of the folder


begin
  #Update a contact folder
  api_instance.update_folder(folder_id, name)
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling FoldersApi->update_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **folder_id** | **String**| Id of the folder | 
 **name** | [**CreaUpdateFolder**](CreaUpdateFolder.md)| Name of the folder | 

### Return type

nil (empty response body)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


