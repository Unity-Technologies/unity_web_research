#line 1 "Hidden/PostProcessing/Debug/LightMeter"
static const int COLOR_GRADING_HDR = 0 ;
static const int UNITY_NO_DXT5nm = 0 ;
static const int UNITY_FRAMEBUFFER_FETCH_AVAILABLE = 0 ;
static const int UNITY_METAL_SHADOWS_USE_POINT_FILTERING = 0 ;
static const int UNITY_NO_SCREENSPACE_SHADOWS = 0 ;
static const int UNITY_PBS_USE_BRDF2 = 0 ;
static const int UNITY_PBS_USE_BRDF3 = 0 ;
static const int UNITY_NO_FULL_STANDARD_SHADER = 0 ;
static const int UNITY_HARDWARE_TIER1 = 0 ;
static const int UNITY_HARDWARE_TIER2 = 0 ;
static const int UNITY_HARDWARE_TIER3 = 0 ;
static const int UNITY_COLORSPACE_GAMMA = 0 ;
static const int UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS = 0 ;
static const int UNITY_LIGHTMAP_DLDR_ENCODING = 0 ;
static const int UNITY_LIGHTMAP_RGBM_ENCODING = 0 ;
static const int UNITY_VIRTUAL_TEXTURING = 0 ;
static const int UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION = 0 ;
static const int UNITY_ASTC_NORMALMAP_ENCODING = 0 ;
static const int SHADER_API_GLES30 = 0 ;
static const int UNITY_UNIFIED_SHADER_PRECISION_MODEL = 0 ;
#line 63 "F:/src/Graphics/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"
float rcp ( float value )
{
return 1.0 / value ;
}
#line 74
float Min3 ( float a , float b , float c )
{
return min ( min ( a , b ) , c ) ;
}

float2 Min3 ( float2 a , float2 b , float2 c )
{
return min ( min ( a , b ) , c ) ;
}

float3 Min3 ( float3 a , float3 b , float3 c )
{
return min ( min ( a , b ) , c ) ;
}

float4 Min3 ( float4 a , float4 b , float4 c )
{
return min ( min ( a , b ) , c ) ;
}

float Max3 ( float a , float b , float c )
{
return max ( max ( a , b ) , c ) ;
}

float2 Max3 ( float2 a , float2 b , float2 c )
{
return max ( max ( a , b ) , c ) ;
}

float3 Max3 ( float3 a , float3 b , float3 c )
{
return max ( max ( a , b ) , c ) ;
}

float4 Max3 ( float4 a , float4 b , float4 c )
{
return max ( max ( a , b ) , c ) ;
}
#line 117
float FastSign ( float x )
{
return saturate ( x * 3.402823466e+38 + 0.5 ) * 2.0 - 1.0 ;
}

float2 FastSign ( float2 x )
{
return saturate ( x * 3.402823466e+38 + 0.5 ) * 2.0 - 1.0 ;
}

float3 FastSign ( float3 x )
{
return saturate ( x * 3.402823466e+38 + 0.5 ) * 2.0 - 1.0 ;
}

float4 FastSign ( float4 x )
{
return saturate ( x * 3.402823466e+38 + 0.5 ) * 2.0 - 1.0 ;
}
#line 140
float PositivePow ( float base , float power )
{
return pow ( max ( abs ( base ) , float ( 1.192092896e-07 ) ) , power ) ;
}

float2 PositivePow ( float2 base , float2 power )
{
return pow ( max ( abs ( base ) , float2 ( 1.192092896e-07 , 1.192092896e-07 ) ) , power ) ;
}

float3 PositivePow ( float3 base , float3 power )
{
return pow ( max ( abs ( base ) , float3 ( 1.192092896e-07 , 1.192092896e-07 , 1.192092896e-07 ) ) , power ) ;
}

float4 PositivePow ( float4 base , float4 power )
{
return pow ( max ( abs ( base ) , float4 ( 1.192092896e-07 , 1.192092896e-07 , 1.192092896e-07 , 1.192092896e-07 ) ) , power ) ;
}
#line 162
bool IsNan ( float x )
{
#line 167
return ( x < 0.0 || x > 0.0 || x == 0.0 ) ? false : true ;
}

bool AnyIsNan ( float2 x )
{
return IsNan ( x . x ) || IsNan ( x . y ) ;
}

bool AnyIsNan ( float3 x )
{
return IsNan ( x . x ) || IsNan ( x . y ) || IsNan ( x . z ) ;
}

bool AnyIsNan ( float4 x )
{
return IsNan ( x . x ) || IsNan ( x . y ) || IsNan ( x . z ) || IsNan ( x . w ) ;
}
#line 188
float4x4 unity_CameraProjection ;
float4x4 unity_MatrixVP ;
float4x4 unity_ObjectToWorld ;
float4x4 unity_WorldToCamera ;
float3 _WorldSpaceCameraPos ;
float4 _ProjectionParams ;
float4 unity_ColorSpaceLuminance ;
float4 unity_DeltaTime ;
float4 unity_OrthoParams ;
float4 _ZBufferParams ;
float4 _ScreenParams ;
float4 _Time ;
float4 _SinTime ;
float4 _CosTime ;
#line 208
float Linear01Depth ( float z )
{
float isOrtho = unity_OrthoParams . w ;
float isPers = 1.0 - unity_OrthoParams . w ;
z *= _ZBufferParams . x ;
return ( 1.0 - isOrtho * z ) / ( isPers * z + _ZBufferParams . y ) ;
}

float LinearEyeDepth ( float z )
{
return rcp ( _ZBufferParams . z * z + _ZBufferParams . w ) ;
}
#line 222
half3 SafeHDR ( half3 c )
{
return min ( c , 65504.0 ) ;
}

half4 SafeHDR ( half4 c )
{
return min ( c , 65504.0 ) ;
}
#line 233
float3 DecodeViewNormalStereo ( float4 enc4 )
{
float kScale = 1.7777 ;
float3 nn = enc4 . xyz * float3 ( 2.0 * kScale , 2.0 * kScale , 0 ) + float3 ( - kScale , - kScale , 1 ) ;
float g = 2.0 / dot ( nn . xyz , nn . xyz ) ;
float3 n ;
n . xy = g * nn . xy ;
n . z = g - 1.0 ;
return n ;
}
#line 246
float GradientNoise ( float2 uv )
{
uv = floor ( uv * _ScreenParams . xy ) ;
float f = dot ( float2 ( 0.06711056 , 0.00583715 ) , uv ) ;
return frac ( 52.9829189 * frac ( f ) ) ;
}
#line 254
float2 TransformTriangleVertexToUV ( float2 vertex )
{
float2 uv = ( vertex + 1.0 ) * 0.5 ;
return uv ;
}
#line 27 "F:/src/Graphics/com.unity.postprocessing/PostProcessing/Shaders/xRLib.hlsl"
float _RenderViewportScaleFactor ;

float2 UnityStereoScreenSpaceUVAdjust ( float2 uv , float4 scaleAndOffset )
{
return uv . xy * scaleAndOffset . xy + scaleAndOffset . zw ;
}

float4 UnityStereoScreenSpaceUVAdjust ( float4 uv , float4 scaleAndOffset )
{
return float4 ( UnityStereoScreenSpaceUVAdjust ( uv . xy , scaleAndOffset ) , UnityStereoScreenSpaceUVAdjust ( uv . zw , scaleAndOffset ) ) ;
}

float2 UnityStereoClampScaleOffset ( float2 uv , float4 scaleAndOffset )
{
return clamp ( uv , scaleAndOffset . zw , scaleAndOffset . zw + scaleAndOffset . xy ) ;
}
#line 76
float2 TransformStereoScreenSpaceTex ( float2 uv , float w )
{
return uv * _RenderViewportScaleFactor ;
}

float2 UnityStereoTransformScreenSpaceTex ( float2 uv )
{
return TransformStereoScreenSpaceTex ( saturate ( uv ) , 1.0 ) ;
}

float2 UnityStereoClamp ( float2 uv )
{
float4 scaleOffset = float4 ( _RenderViewportScaleFactor , _RenderViewportScaleFactor , 0.f , 0.f ) ;
return UnityStereoClampScaleOffset ( uv , scaleOffset ) ;
}

float4 UnityStereoAdjustedTexelSize ( float4 texelSize )
{
return texelSize ;
}
#line 265 "F:/src/Graphics/com.unity.postprocessing/PostProcessing/Shaders/StdLib.hlsl"
struct AttributesDefault
{
float3 vertex : POSITION ;
} ;

struct VaryingsDefault
{
float4 vertex : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;
float2 texcoordStereo : TEXCOORD1 ;
#line 278
} ;
#line 284
VaryingsDefault VertDefault ( AttributesDefault v )
{
VaryingsDefault o ;
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;
o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) ;
#line 291
o . texcoord = o . texcoord * float2 ( 1.0 , - 1.0 ) + float2 ( 0.0 , 1.0 ) ;
#line 294
o . texcoordStereo = TransformStereoScreenSpaceTex ( o . texcoord , 1.0 ) ;

return o ;
}

float4 _UVTransform ;
#line 305
VaryingsDefault VertUVTransform ( AttributesDefault v )
{
VaryingsDefault o ;
#line 312
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;

o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) * _UVTransform . xy + _UVTransform . zw ;
o . texcoordStereo = TransformStereoScreenSpaceTex ( o . texcoord , 1.0 ) ;
#line 319
return o ;
}
#line 24 "F:/src/Graphics/com.unity.postprocessing/PostProcessing/Shaders/Builtins/ExposureHistogram.hlsl"
float GetHistogramBinFromLuminance ( float value , float2 scaleOffset )
{
return saturate ( log2 ( value ) * scaleOffset . x + scaleOffset . y ) ;
}

float GetLuminanceFromHistogramBin ( float bin , float2 scaleOffset )
{
return exp2 ( ( bin - scaleOffset . y ) / scaleOffset . x ) ;
}

float GetBinValue ( StructuredBuffer < uint > buffer , uint index , float maxHistogramValue )
{
return float ( buffer [ index ] ) * maxHistogramValue ;
}

float FindMaxHistogramValue ( StructuredBuffer < uint > buffer )
{
uint maxValue = 0u ;

for ( uint i = 0 ; i < 128 ; i ++ )
{
uint h = buffer [ i ] ;
maxValue = max ( maxValue , h ) ;
}

return float ( maxValue ) ;
}

void FilterLuminance ( StructuredBuffer < uint > buffer , uint i , float maxHistogramValue , float2 scaleOffset , inout float4 filter )
{
float binValue = GetBinValue ( buffer , i , maxHistogramValue ) ;
#line 57
float offset = min ( filter . z , binValue ) ;
binValue -= offset ;
filter . zw -= offset . xx ;
#line 62
binValue = min ( filter . w , binValue ) ;
filter . w -= binValue ;
#line 66
float luminance = GetLuminanceFromHistogramBin ( float ( i ) / float ( 128 ) , scaleOffset ) ;

filter . xy += float2 ( luminance * binValue , binValue ) ;
}

float GetAverageLuminance ( StructuredBuffer < uint > buffer , float4 params , float maxHistogramValue , float2 scaleOffset )
{

uint i ;
float totalSum = 0.0 ;

[ unroll ]
for ( i = 0 ; i < 128 ; i ++ )
totalSum += GetBinValue ( buffer , i , maxHistogramValue ) ;
#line 85
float4 filter = float4 ( 0.0 , 0.0 , totalSum * params . xy ) ;

[ unroll ]
for ( i = 0 ; i < 128 ; i ++ )
FilterLuminance ( buffer , i , maxHistogramValue , scaleOffset , filter ) ;
#line 92
return clamp ( filter . x / max ( filter . y , 1.0e-4 ) , params . z , params . w ) ;
}
#line 13 ""
float4 _Params ;
float4 _ScaleOffsetRes ;

Texture3D _Lut3D ; SamplerState sampler_Lut3D ;

StructuredBuffer < uint > _HistogramBuffer ;

struct VaryingsLightMeter
{
float4 vertex : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;
float maxValue : TEXCOORD1 ;
float avgLuminance : TEXCOORD2 ;
} ;

VaryingsLightMeter Vert ( AttributesDefault v )
{
VaryingsLightMeter o ;
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;
o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) ;
#line 35
o . texcoord = o . texcoord * float2 ( 1.0 , - 1.0 ) + float2 ( 0.0 , 1.0 ) ;
#line 38
o . maxValue = 1.0 / FindMaxHistogramValue ( _HistogramBuffer ) ;
o . avgLuminance = GetAverageLuminance ( _HistogramBuffer , _Params , o . maxValue , _ScaleOffsetRes . xy ) ;

return o ;
}

float4 Frag ( VaryingsLightMeter i ) : SV_Target
{
uint ix = ( uint ) ( round ( i . texcoord . x * 128 ) ) ;
float bin = saturate ( float ( _HistogramBuffer [ ix ] ) * i . maxValue ) ;
float fill = step ( i . texcoord . y , bin ) ;

float4 color = float4 ( lerp ( 0.0 , 0.75 , fill ) . xxx , 1.0 ) ;
#line 53
const float3 kRangeColor = float3 ( 0.05 , 0.3 , 0.4 ) ;
const float3 kAvgColor = float3 ( 0.75 , 0.1 , 1.0 ) ;
#line 57
float luminanceMin = GetHistogramBinFromLuminance ( _Params . z , _ScaleOffsetRes . xy ) ;
float luminanceMax = GetHistogramBinFromLuminance ( _Params . w , _ScaleOffsetRes . xy ) ;

if ( i . texcoord . x > luminanceMin && i . texcoord . x < luminanceMax )
{
color . rgb = fill . rrr * kRangeColor ;
color . rgb += kRangeColor ;
}
#line 86
float luminanceAvg = GetHistogramBinFromLuminance ( i . avgLuminance , _ScaleOffsetRes . xy ) ;
float avgPx = luminanceAvg * _ScaleOffsetRes . z ;

if ( abs ( i . texcoord . x - luminanceAvg ) < _ScaleOffsetRes . z * 2.0 )
color . rgb = kAvgColor ;
#line 93
return color ;
}
