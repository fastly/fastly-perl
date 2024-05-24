# WebService::Fastly::Object::DefaultSettings

## Load the model package
```perl
use WebService::Fastly::Object::DefaultSettings;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**resize_filter** | **string** | The type of filter to use while resizing an image. | [optional] [default to &#39;lanczos3&#39;]
**webp** | **boolean** | Controls whether or not to default to WebP output when the client supports it. This is equivalent to adding \&quot;auto&#x3D;webp\&quot; to all image optimizer requests.  | [optional] [default to false]
**webp_quality** | **int** | The default quality to use with WebP output. This can be overridden with the second option in the \&quot;quality\&quot; URL parameter on specific image optimizer requests.  | [optional] [default to 85]
**jpeg_type** | **string** | The default type of JPEG output to use. This can be overridden with \&quot;format&#x3D;bjpeg\&quot; and \&quot;format&#x3D;pjpeg\&quot; on specific image optimizer requests.  | [optional] [default to &#39;auto&#39;]
**jpeg_quality** | **int** | The default quality to use with JPEG output. This can be overridden with the \&quot;quality\&quot; parameter on specific image optimizer requests.  | [optional] [default to 85]
**upscale** | **boolean** | Whether or not we should allow output images to render at sizes larger than input.  | [optional] [default to false]
**allow_video** | **boolean** | Enables GIF to MP4 transformations on this service. | [optional] [default to false]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


