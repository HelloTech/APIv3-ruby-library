# SendinblueApiv3::ProcessApi

All URIs are relative to *https://api.sendinblue.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_process**](ProcessApi.md#get_process) | **GET** /processes/{processId} | Return the informations for a process
[**get_processes**](ProcessApi.md#get_processes) | **GET** /processes | Return all the processes for your account


# **get_process**
> GetProcess get_process(process_id)

Return the informations for a process

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

api_instance = SendinblueApiv3::ProcessApi.new

process_id = "process_id_example" # String | Id of the process


begin
  #Return the informations for a process
  result = api_instance.get_process(process_id)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ProcessApi->get_process: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **process_id** | **String**| Id of the process | 

### Return type

[**GetProcess**](GetProcess.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_processes**
> GetProcesses get_processes(opts)

Return all the processes for your account

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

api_instance = SendinblueApiv3::ProcessApi.new

opts = { 
  limit: 10, # Integer | Number limitation for the result returned
  offset: 0 # Integer | Beginning point in the list to retrieve from.
}

begin
  #Return all the processes for your account
  result = api_instance.get_processes(opts)
  p result
rescue SendinblueApiv3::ApiError => e
  puts "Exception when calling ProcessApi->get_processes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| Number limitation for the result returned | [optional] [default to 10]
 **offset** | **Integer**| Beginning point in the list to retrieve from. | [optional] [default to 0]

### Return type

[**GetProcesses**](GetProcesses.md)

### Authorization

[api-key](../README.md#api-key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


