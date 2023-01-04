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
#line 10 "Packages/com.unity.postprocessing/PostProcessing/Shaders/Builtins/AutoExposure.compute"
StructuredBuffer < uint > _HistogramBuffer ;
Texture2D < float > _Source ;
RWTexture2D < float > _Destination ;

cbuffer Params {
float4 _Params1 ;
float4 _Params2 ;
float4 _ScaleOffsetRes ;
} ;

groupshared uint gs_pyramid [ 16 * 128 / 16 ] ;

float GetExposureMultiplier ( float avgLuminance )
{
avgLuminance = max ( 1.0e-4 , avgLuminance ) ;

float keyValue = _Params2 . z ;
float exposure = keyValue / avgLuminance ;
return exposure ;
}

float InterpolateExposure ( float newExposure , float oldExposure )
{
float delta = newExposure - oldExposure ;
float speed = delta > 0.0 ? _Params2 . x : _Params2 . y ;
float exposure = oldExposure + delta * ( 1.0 - exp2 ( - _Params2 . w * speed ) ) ;
return exposure ;
}
#line 45
[ numthreads ( 16 , 128 / 16 , 1 ) ]
void KAutoExposureAvgLuminance_progressive ( uint2 groupThreadId : SV_GroupThreadID )
{
#line 52
const uint thread_id = groupThreadId . y * 16 + groupThreadId . x ;
gs_pyramid [ thread_id ] = _HistogramBuffer [ thread_id ] ;
#line 56
GroupMemoryBarrierWithGroupSync ( ) ;
#line 59
[ unroll ]
for ( uint i = 16 * 128 / 16 >> 1u ; i > 0u ; i >>= 1u )
{
if ( thread_id < i )
gs_pyramid [ thread_id ] = max ( gs_pyramid [ thread_id ] , gs_pyramid [ thread_id + i ] ) ;

GroupMemoryBarrierWithGroupSync ( ) ;
}

GroupMemoryBarrierWithGroupSync ( ) ;

if ( thread_id == 0u )
{
float maxValue = 1.0 / float ( gs_pyramid [ 0 ] ) ;
#line 75
float avgLuminance = GetAverageLuminance ( _HistogramBuffer , _Params1 , maxValue , _ScaleOffsetRes . xy ) ;
float exposure = GetExposureMultiplier ( avgLuminance ) ;
float prevExposure = _Source [ uint2 ( 0u , 0u ) ] . x ;
exposure = InterpolateExposure ( exposure , prevExposure ) ;
_Destination [ uint2 ( 0u , 0u ) ] . x = exposure . x ;
#line 85
}
}
