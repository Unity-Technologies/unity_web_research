#line 61 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/StdLib.hlsl"
float rcp ( float value )
{
return 1.0 / value ;
}
#line 72
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
#line 115
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
#line 138
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
#line 160
bool IsNan ( float x )
{
#line 165
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
#line 186
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
#line 206
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
#line 220
half3 SafeHDR ( half3 c )
{
return min ( c , 65504.0 ) ;
}

half4 SafeHDR ( half4 c )
{
return min ( c , 65504.0 ) ;
}
#line 231
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
#line 244
float GradientNoise ( float2 uv )
{
uv = floor ( uv * _ScreenParams . xy ) ;
float f = dot ( float2 ( 0.06711056 , 0.00583715 ) , uv ) ;
return frac ( 52.9829189 * frac ( f ) ) ;
}
#line 252
float2 TransformTriangleVertexToUV ( float2 vertex )
{
float2 uv = ( vertex + 1.0 ) * 0.5 ;
return uv ;
}
#line 27 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/xRLib.hlsl"
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
#line 263 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/StdLib.hlsl"
struct AttributesDefault
{
float3 vertex : POSITION ;
} ;

struct VaryingsDefault
{
float4 vertex : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;
float2 texcoordStereo : TEXCOORD1 ;
#line 276
} ;
#line 282
VaryingsDefault VertDefault ( AttributesDefault v )
{
VaryingsDefault o ;
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;
o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) ;
#line 289
o . texcoord = o . texcoord * float2 ( 1.0 , - 1.0 ) + float2 ( 0.0 , 1.0 ) ;
#line 292
o . texcoordStereo = TransformStereoScreenSpaceTex ( o . texcoord , 1.0 ) ;

return o ;
}

float4 _UVTransform ;
#line 303
VaryingsDefault VertUVTransform ( AttributesDefault v )
{
VaryingsDefault o ;
#line 310
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;

o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) * _UVTransform . xy + _UVTransform . zw ;
o . texcoordStereo = TransformStereoScreenSpaceTex ( o . texcoord , 1.0 ) ;
#line 317
return o ;
}
#line 27 "Packages/com.unity.postprocessing/PostProcessing/Shaders/Builtins/GaussianDownsample.compute"
Texture2D < float4 > _Source ;
RWTexture2D < float4 > _Result ;

SamplerState sampler_LinearClamp ;

cbuffer cb {
float4 _Size ;
} ;
#line 40
groupshared uint gs_cacheR [ 128 ] ;
groupshared uint gs_cacheG [ 128 ] ;
groupshared uint gs_cacheB [ 128 ] ;
groupshared uint gs_cacheA [ 128 ] ;

float4 BlurPixels ( float4 a , float4 b , float4 c , float4 d , float4 e , float4 f , float4 g , float4 h , float4 i )
{
return 0.27343750 * ( e )
+ 0.21875000 * ( d + f )
+ 0.10937500 * ( c + g )
+ 0.03125000 * ( b + h )
+ 0.00390625 * ( a + i ) ;
}

void Store2Pixels ( uint index , float4 pixel1 , float4 pixel2 )
{
gs_cacheR [ index ] = f32tof16 ( pixel1 . r ) | f32tof16 ( pixel2 . r ) << 16 ;
gs_cacheG [ index ] = f32tof16 ( pixel1 . g ) | f32tof16 ( pixel2 . g ) << 16 ;
gs_cacheB [ index ] = f32tof16 ( pixel1 . b ) | f32tof16 ( pixel2 . b ) << 16 ;
gs_cacheA [ index ] = f32tof16 ( pixel1 . a ) | f32tof16 ( pixel2 . a ) << 16 ;
}

void Load2Pixels ( uint index , out float4 pixel1 , out float4 pixel2 )
{
uint rr = gs_cacheR [ index ] ;
uint gg = gs_cacheG [ index ] ;
uint bb = gs_cacheB [ index ] ;
uint aa = gs_cacheA [ index ] ;
pixel1 = float4 ( f16tof32 ( rr ) , f16tof32 ( gg ) , f16tof32 ( bb ) , f16tof32 ( aa ) ) ;
pixel2 = float4 ( f16tof32 ( rr >> 16 ) , f16tof32 ( gg >> 16 ) , f16tof32 ( bb >> 16 ) , f16tof32 ( aa >> 16 ) ) ;
}

void Store1Pixel ( uint index , float4 pixel )
{
gs_cacheR [ index ] = asuint ( pixel . r ) ;
gs_cacheG [ index ] = asuint ( pixel . g ) ;
gs_cacheB [ index ] = asuint ( pixel . b ) ;
gs_cacheA [ index ] = asuint ( pixel . a ) ;
}

void Load1Pixel ( uint index , out float4 pixel )
{
pixel = asfloat ( uint4 ( gs_cacheR [ index ] , gs_cacheG [ index ] , gs_cacheB [ index ] , gs_cacheA [ index ] ) ) ;
}
#line 86
void BlurHorizontally ( uint outIndex , uint leftMostIndex )
{
float4 s0 , s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 , s9 ;
Load2Pixels ( leftMostIndex + 0 , s0 , s1 ) ;
Load2Pixels ( leftMostIndex + 1 , s2 , s3 ) ;
Load2Pixels ( leftMostIndex + 2 , s4 , s5 ) ;
Load2Pixels ( leftMostIndex + 3 , s6 , s7 ) ;
Load2Pixels ( leftMostIndex + 4 , s8 , s9 ) ;

Store1Pixel ( outIndex , BlurPixels ( s0 , s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 ) ) ;
Store1Pixel ( outIndex + 1 , BlurPixels ( s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 , s9 ) ) ;
}

void BlurVertically ( uint2 pixelCoord , uint topMostIndex )
{
float4 s0 , s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 ;
Load1Pixel ( topMostIndex , s0 ) ;
Load1Pixel ( topMostIndex + 8 , s1 ) ;
Load1Pixel ( topMostIndex + 16 , s2 ) ;
Load1Pixel ( topMostIndex + 24 , s3 ) ;
Load1Pixel ( topMostIndex + 32 , s4 ) ;
Load1Pixel ( topMostIndex + 40 , s5 ) ;
Load1Pixel ( topMostIndex + 48 , s6 ) ;
Load1Pixel ( topMostIndex + 56 , s7 ) ;
Load1Pixel ( topMostIndex + 64 , s8 ) ;

float4 blurred = BlurPixels ( s0 , s1 , s2 , s3 , s4 , s5 , s6 , s7 , s8 ) ;
#line 115
_Result [ pixelCoord ] = blurred ;
}
#line 126
[ numthreads ( 8 , 8 , 1 ) ]
void KMain ( uint2 groupId : SV_GroupID , uint2 groupThreadId : SV_GroupThreadID , uint2 dispatchThreadId : SV_DispatchThreadID )
{

int2 threadUL = ( groupThreadId << 1 ) + ( groupId << 3 ) - 4 ;
#line 133
float2 offset = float2 ( threadUL ) ;
float4 p00 = _Source . SampleLevel ( sampler_LinearClamp , ( offset + 0.5 ) * _Size . zw , 0.0 ) ;
float4 p10 = _Source . SampleLevel ( sampler_LinearClamp , ( offset + float2 ( 1.0 , 0.0 ) + 0.5 ) * _Size . zw , 0.0 ) ;
float4 p01 = _Source . SampleLevel ( sampler_LinearClamp , ( offset + float2 ( 0.0 , 1.0 ) + 0.5 ) * _Size . zw , 0.0 ) ;
float4 p11 = _Source . SampleLevel ( sampler_LinearClamp , ( offset + float2 ( 1.0 , 1.0 ) + 0.5 ) * _Size . zw , 0.0 ) ;
#line 140
uint destIdx = groupThreadId . x + ( groupThreadId . y << 4u ) ;
Store2Pixels ( destIdx , p00 , p10 ) ;
Store2Pixels ( destIdx + 8u , p01 , p11 ) ;

GroupMemoryBarrierWithGroupSync ( ) ;
#line 147
uint row = groupThreadId . y << 4u ;
BlurHorizontally ( row + ( groupThreadId . x << 1u ) , row + groupThreadId . x + ( groupThreadId . x & 4u ) ) ;

GroupMemoryBarrierWithGroupSync ( ) ;
#line 153
BlurVertically ( dispatchThreadId , ( groupThreadId . y << 3u ) + groupThreadId . x ) ;
}
