# WebService::Fastly::Object::WafFirewallVersionDataAttributes

## Load the model package
```perl
use WebService::Fastly::Object::WafFirewallVersionDataAttributes;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allowed_http_versions** | **string** | Allowed HTTP versions. | [optional] [default to &#39;HTTP/1.0 HTTP/1.1 HTTP/2&#39;]
**allowed_methods** | **string** | A space-separated list of HTTP method names. | [optional] [default to &#39;GET HEAD POST OPTIONS PUT PATCH DELETE&#39;]
**allowed_request_content_type** | **string** | Allowed request content types. | [optional] [default to &#39;application/x-www-form-urlencoded|multipart/form-data|text/xml|application/xml|application/x-amf|application/json|text/plain&#39;]
**allowed_request_content_type_charset** | **string** | Allowed request content type charset. | [optional] [default to &#39;utf-8|iso-8859-1|iso-8859-15|windows-1252&#39;]
**arg_name_length** | **int** | The maximum allowed argument name length. | [optional] [default to 100]
**arg_length** | **int** | The maximum allowed length of an argument. | [optional] [default to 400]
**combined_file_sizes** | **int** | The maximum allowed size of all files (in bytes). | [optional] [default to 10000000]
**comment** | **string** | A freeform descriptive note. | [optional] 
**critical_anomaly_score** | **int** | Score value to add for critical anomalies. | [optional] [default to 6]
**crs_validate_utf8_encoding** | **boolean** | CRS validate UTF8 encoding. | [optional] 
**error_anomaly_score** | **int** | Score value to add for error anomalies. | [optional] [default to 5]
**high_risk_country_codes** | **string** | A space-separated list of country codes in ISO 3166-1 (two-letter) format. | [optional] 
**http_violation_score_threshold** | **int** | HTTP violation threshold. | [optional] 
**inbound_anomaly_score_threshold** | **int** | Inbound anomaly threshold. | [optional] 
**lfi_score_threshold** | **int** | Local file inclusion attack threshold. | [optional] 
**locked** | **boolean** | Whether a specific firewall version is locked from being modified. | [optional] [default to false]
**max_file_size** | **int** | The maximum allowed file size, in bytes. | [optional] [default to 10000000]
**max_num_args** | **int** | The maximum number of arguments allowed. | [optional] [default to 255]
**notice_anomaly_score** | **int** | Score value to add for notice anomalies. | [optional] [default to 4]
**number** | **int** |  | [optional] [readonly] 
**paranoia_level** | **int** | The configured paranoia level. | [optional] [default to 1]
**php_injection_score_threshold** | **int** | PHP injection threshold. | [optional] 
**rce_score_threshold** | **int** | Remote code execution threshold. | [optional] 
**restricted_extensions** | **string** | A space-separated list of allowed file extensions. | [optional] [default to &#39;.asa/ .asax/ .ascx/ .axd/ .backup/ .bak/ .bat/ .cdx/ .cer/ .cfg/ .cmd/ .com/ .config/ .conf/ .cs/ .csproj/ .csr/ .dat/ .db/ .dbf/ .dll/ .dos/ .htr/ .htw/ .ida/ .idc/ .idq/ .inc/ .ini/ .key/ .licx/ .lnk/ .log/ .mdb/ .old/ .pass/ .pdb/ .pol/ .printer/ .pwd/ .resources/ .resx/ .sql/ .sys/ .vb/ .vbs/ .vbproj/ .vsdisco/ .webinfo/ .xsd/ .xsx&#39;]
**restricted_headers** | **string** | A space-separated list of allowed header names. | [optional] [default to &#39;/proxy/ /lock-token/ /content-range/ /translate/ /if/&#39;]
**rfi_score_threshold** | **int** | Remote file inclusion attack threshold. | [optional] 
**session_fixation_score_threshold** | **int** | Session fixation attack threshold. | [optional] 
**sql_injection_score_threshold** | **int** | SQL injection attack threshold. | [optional] 
**total_arg_length** | **int** | The maximum size of argument names and values. | [optional] [default to 6400]
**warning_anomaly_score** | **int** | Score value to add for warning anomalies. | [optional] 
**xss_score_threshold** | **int** | XSS attack threshold. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


