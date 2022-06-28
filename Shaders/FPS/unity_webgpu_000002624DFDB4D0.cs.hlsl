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
#line 59 "Packages/com.unity.postprocessing/PostProcessing/Shaders/Builtins/MultiScaleVOUpsample.compute"
Texture2D < float > LoResDB ; SamplerState samplerLoResDB ;
Texture2D < float > HiResDB ; SamplerState samplerHiResDB ;
Texture2D < float > LoResAO1 ; SamplerState samplerLoResAO1 ;
#line 70
RWTexture2D < float > AoResult ;
#line 73
groupshared float DepthCache [ 256 ] ;
groupshared float AOCache1 [ 256 ] ;
groupshared float AOCache2 [ 256 ] ;
#line 79
cbuffer CB1 {
float4 InvLowResolution ;
float4 InvHighResolution ;
float4 AdditionalParams ;
} ;
#line 90
void PrefetchData ( uint index , float2 uv )
{
#line 113
float4 AO1 = LoResAO1 . Gather ( samplerLoResAO1 , uv ) ;
#line 119
AOCache1 [ index ] = AO1 . w ;
AOCache1 [ index + 1 ] = AO1 . z ;
AOCache1 [ index + 16 ] = AO1 . x ;
AOCache1 [ index + 17 ] = AO1 . y ;

float4 ID = 1.0 / LoResDB . Gather ( samplerLoResDB , uv ) ;
DepthCache [ index ] = ID . w ;
DepthCache [ index + 1 ] = ID . z ;
DepthCache [ index + 16 ] = ID . x ;
DepthCache [ index + 17 ] = ID . y ;

}

float SmartBlur ( float a , float b , float c , float d , float e , bool Left , bool Middle , bool Right )
{
b = Left | Middle ? b : c ;
a = Left ? a : b ;
d = Right | Middle ? d : c ;
e = Right ? e : d ;
return ( ( a + e ) / 2.0 + b + c + d ) / 4.0 ;
}

bool CompareDeltas ( float d1 , float d2 , float l1 , float l2 )
{
float temp = d1 * d2 + AdditionalParams . y ;
return temp * temp > l1 * l2 * AdditionalParams . z ;
}

void BlurHorizontally ( uint leftMostIndex )
{
#line 196
float a0 = AOCache1 [ leftMostIndex ] ;
float a1 = AOCache1 [ leftMostIndex + 1 ] ;
float a2 = AOCache1 [ leftMostIndex + 2 ] ;
float a3 = AOCache1 [ leftMostIndex + 3 ] ;
float a4 = AOCache1 [ leftMostIndex + 4 ] ;
float a5 = AOCache1 [ leftMostIndex + 5 ] ;
float a6 = AOCache1 [ leftMostIndex + 6 ] ;

float d0 = DepthCache [ leftMostIndex ] ;
float d1 = DepthCache [ leftMostIndex + 1 ] ;
float d2 = DepthCache [ leftMostIndex + 2 ] ;
float d3 = DepthCache [ leftMostIndex + 3 ] ;
float d4 = DepthCache [ leftMostIndex + 4 ] ;
float d5 = DepthCache [ leftMostIndex + 5 ] ;
float d6 = DepthCache [ leftMostIndex + 6 ] ;

float d01 = d1 - d0 ;
float d12 = d2 - d1 ;
float d23 = d3 - d2 ;
float d34 = d4 - d3 ;
float d45 = d5 - d4 ;
float d56 = d6 - d5 ;

float l01 = d01 * d01 + AdditionalParams . y ;
float l12 = d12 * d12 + AdditionalParams . y ;
float l23 = d23 * d23 + AdditionalParams . y ;
float l34 = d34 * d34 + AdditionalParams . y ;
float l45 = d45 * d45 + AdditionalParams . y ;
float l56 = d56 * d56 + AdditionalParams . y ;

bool c02 = CompareDeltas ( d01 , d12 , l01 , l12 ) ;
bool c13 = CompareDeltas ( d12 , d23 , l12 , l23 ) ;
bool c24 = CompareDeltas ( d23 , d34 , l23 , l34 ) ;
bool c35 = CompareDeltas ( d34 , d45 , l34 , l45 ) ;
bool c46 = CompareDeltas ( d45 , d56 , l45 , l56 ) ;

AOCache2 [ leftMostIndex ] = SmartBlur ( a0 , a1 , a2 , a3 , a4 , c02 , c13 , c24 ) ;
AOCache2 [ leftMostIndex + 1 ] = SmartBlur ( a1 , a2 , a3 , a4 , a5 , c13 , c24 , c35 ) ;
AOCache2 [ leftMostIndex + 2 ] = SmartBlur ( a2 , a3 , a4 , a5 , a6 , c24 , c35 , c46 ) ;

}

void BlurVertically ( uint topMostIndex )
{
#line 283
float a0 = AOCache2 [ topMostIndex ] ;
float a1 = AOCache2 [ topMostIndex + 16 ] ;
float a2 = AOCache2 [ topMostIndex + 32 ] ;
float a3 = AOCache2 [ topMostIndex + 48 ] ;
float a4 = AOCache2 [ topMostIndex + 64 ] ;
float a5 = AOCache2 [ topMostIndex + 80 ] ;

float d0 = DepthCache [ topMostIndex + 2 ] ;
float d1 = DepthCache [ topMostIndex + 18 ] ;
float d2 = DepthCache [ topMostIndex + 34 ] ;
float d3 = DepthCache [ topMostIndex + 50 ] ;
float d4 = DepthCache [ topMostIndex + 66 ] ;
float d5 = DepthCache [ topMostIndex + 82 ] ;

float d01 = d1 - d0 ;
float d12 = d2 - d1 ;
float d23 = d3 - d2 ;
float d34 = d4 - d3 ;
float d45 = d5 - d4 ;

float l01 = d01 * d01 + AdditionalParams . y ;
float l12 = d12 * d12 + AdditionalParams . y ;
float l23 = d23 * d23 + AdditionalParams . y ;
float l34 = d34 * d34 + AdditionalParams . y ;
float l45 = d45 * d45 + AdditionalParams . y ;

bool c02 = CompareDeltas ( d01 , d12 , l01 , l12 ) ;
bool c13 = CompareDeltas ( d12 , d23 , l12 , l23 ) ;
bool c24 = CompareDeltas ( d23 , d34 , l23 , l34 ) ;
bool c35 = CompareDeltas ( d34 , d45 , l34 , l45 ) ;

float aoResult1 = SmartBlur ( a0 , a1 , a2 , a3 , a4 , c02 , c13 , c24 ) ;
float aoResult2 = SmartBlur ( a1 , a2 , a3 , a4 , a5 , c13 , c24 , c35 ) ;

AOCache1 [ topMostIndex ] = aoResult1 ;
AOCache1 [ topMostIndex + 16 ] = aoResult2 ;

}
#line 327
float BilateralUpsample ( float HiDepth , float HiAO , float4 LowDepths , float4 LowAO )
{
float4 weights = float4 ( 9 , 3 , 1 , 3 ) / ( abs ( HiDepth - LowDepths ) + AdditionalParams . w ) ;
float TotalWeight = dot ( weights , 1 ) + AdditionalParams . x ;
float WeightedSum = dot ( LowAO , weights ) + AdditionalParams . x ;
return HiAO * WeightedSum / TotalWeight ;
}
#line 341
[ numthreads ( 8 , 8 , 1 ) ]
void MultiScaleVOUpSample_invert ( uint3 Gid : SV_GroupID , uint GI : SV_GroupIndex , uint3 GTid : SV_GroupThreadID , uint3 DTid : SV_DispatchThreadID )
{
#line 347
PrefetchData ( GTid . x << 1 | GTid . y << 5 , int2 ( DTid . xy + GTid . xy - 2 ) * InvLowResolution . xy ) ;
GroupMemoryBarrierWithGroupSync ( ) ;
#line 355
if ( GI < 39 )
BlurHorizontally ( ( GI / 3 ) * 16 + ( GI % 3 ) * 3 ) ;
GroupMemoryBarrierWithGroupSync ( ) ;
#line 362
if ( GI < 45 )
BlurVertically ( ( GI / 9 ) * 32 + GI % 9 ) ;
GroupMemoryBarrierWithGroupSync ( ) ;
#line 369
uint Idx0 = GTid . x + GTid . y * 16 ;
#line 374
float4 LoSSAOs = float4 ( AOCache1 [ Idx0 + 16 ] , AOCache1 [ Idx0 + 17 ] , AOCache1 [ Idx0 + 1 ] , AOCache1 [ Idx0 ] ) ;
#line 378
float2 UV0 = DTid . xy * InvLowResolution . xy ;
float2 UV1 = DTid . xy * 2 * InvHighResolution . xy ;
#line 411
float4 HiSSAOs = 1.0 ;

float4 LoDepths = LoResDB . Gather ( samplerLoResDB , UV0 ) ;
float4 HiDepths = HiResDB . Gather ( samplerHiResDB , UV1 ) ;

int2 OutST = DTid . xy << 1 ;
#line 419
AoResult [ OutST + int2 ( - 1 , 0 ) ] = 1.0 - BilateralUpsample ( HiDepths . x , HiSSAOs . x , LoDepths . xyzw , LoSSAOs . xyzw ) ;
AoResult [ OutST + int2 ( 0 , 0 ) ] = 1.0 - BilateralUpsample ( HiDepths . y , HiSSAOs . y , LoDepths . yzwx , LoSSAOs . yzwx ) ;
AoResult [ OutST + int2 ( 0 , - 1 ) ] = 1.0 - BilateralUpsample ( HiDepths . z , HiSSAOs . z , LoDepths . zwxy , LoSSAOs . zwxy ) ;
AoResult [ OutST + int2 ( - 1 , - 1 ) ] = 1.0 - BilateralUpsample ( HiDepths . w , HiSSAOs . w , LoDepths . wxyz , LoSSAOs . wxyz ) ;
#line 430
}
