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
#line 41 "Packages/com.unity.postprocessing/PostProcessing/Shaders/Builtins/MultiScaleVOUpsample.compute"
Texture2D < float2 > LoResDB ; SamplerState samplerLoResDB ;
Texture2D < float2 > HiResDB ; SamplerState samplerHiResDB ;
Texture2D < float2 > LoResAO1 ; SamplerState samplerLoResAO1 ;

Texture2D < float2 > LoResAO2 ; SamplerState samplerLoResAO2 ;
#line 51
RWTexture2D < float2 > AoResult ;
#line 54
groupshared float2 DepthCache [ 256 ] ;
groupshared float2 AOCache1 [ 256 ] ;
groupshared float2 AOCache2 [ 256 ] ;
#line 79
cbuffer CB1 {
float4 InvLowResolution ;
float4 InvHighResolution ;
float4 AdditionalParams ;
} ;
#line 90
void PrefetchData ( uint index , float2 uv )
{

float4 AO1_0 = LoResAO1 . GatherRed ( samplerLoResAO1 , uv ) ;
float4 AO1_1 = LoResAO1 . GatherGreen ( samplerLoResAO1 , uv ) ;
#line 97
AO1_0 = min ( AO1_0 , LoResAO2 . GatherRed ( samplerLoResAO2 , uv ) ) ;
AO1_1 = min ( AO1_1 , LoResAO2 . GatherGreen ( samplerLoResAO2 , uv ) ) ;
#line 101
AOCache1 [ index ] = float2 ( AO1_0 . w , AO1_1 . w ) ;
AOCache1 [ index + 1 ] = float2 ( AO1_0 . z , AO1_1 . z ) ;
AOCache1 [ index + 16 ] = float2 ( AO1_0 . x , AO1_1 . x ) ;
AOCache1 [ index + 17 ] = float2 ( AO1_0 . y , AO1_1 . y ) ;

float4 ID_0 = 1.0 / LoResDB . GatherRed ( samplerLoResDB , uv ) ;
float4 ID_1 = 1.0 / LoResDB . GatherGreen ( samplerLoResDB , uv ) ;
DepthCache [ index ] = float2 ( ID_0 . w , ID_1 . w ) ;
DepthCache [ index + 1 ] = float2 ( ID_0 . z , ID_1 . z ) ;
DepthCache [ index + 16 ] = float2 ( ID_0 . x , ID_1 . x ) ;
DepthCache [ index + 17 ] = float2 ( ID_0 . y , ID_1 . y ) ;
#line 130
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

float2 a0 = AOCache1 [ leftMostIndex ] ;
float2 a1 = AOCache1 [ leftMostIndex + 1 ] ;
float2 a2 = AOCache1 [ leftMostIndex + 2 ] ;
float2 a3 = AOCache1 [ leftMostIndex + 3 ] ;
float2 a4 = AOCache1 [ leftMostIndex + 4 ] ;
float2 a5 = AOCache1 [ leftMostIndex + 5 ] ;
float2 a6 = AOCache1 [ leftMostIndex + 6 ] ;

float2 d0 = DepthCache [ leftMostIndex ] ;
float2 d1 = DepthCache [ leftMostIndex + 1 ] ;
float2 d2 = DepthCache [ leftMostIndex + 2 ] ;
float2 d3 = DepthCache [ leftMostIndex + 3 ] ;
float2 d4 = DepthCache [ leftMostIndex + 4 ] ;
float2 d5 = DepthCache [ leftMostIndex + 5 ] ;
float2 d6 = DepthCache [ leftMostIndex + 6 ] ;

float2 d01 = d1 - d0 ;
float2 d12 = d2 - d1 ;
float2 d23 = d3 - d2 ;
float2 d34 = d4 - d3 ;
float2 d45 = d5 - d4 ;
float2 d56 = d6 - d5 ;

float2 l01 = d01 * d01 + AdditionalParams . y ;
float2 l12 = d12 * d12 + AdditionalParams . y ;
float2 l23 = d23 * d23 + AdditionalParams . y ;
float2 l34 = d34 * d34 + AdditionalParams . y ;
float2 l45 = d45 * d45 + AdditionalParams . y ;
float2 l56 = d56 * d56 + AdditionalParams . y ;

bool c02_0 = CompareDeltas ( d01 . x , d12 . x , l01 . x , l12 . x ) ;
bool c13_0 = CompareDeltas ( d12 . x , d23 . x , l12 . x , l23 . x ) ;
bool c24_0 = CompareDeltas ( d23 . x , d34 . x , l23 . x , l34 . x ) ;
bool c35_0 = CompareDeltas ( d34 . x , d45 . x , l34 . x , l45 . x ) ;
bool c46_0 = CompareDeltas ( d45 . x , d56 . x , l45 . x , l56 . x ) ;

bool c02_1 = CompareDeltas ( d01 . y , d12 . y , l01 . y , l12 . y ) ;
bool c13_1 = CompareDeltas ( d12 . y , d23 . y , l12 . y , l23 . y ) ;
bool c24_1 = CompareDeltas ( d23 . y , d34 . y , l23 . y , l34 . y ) ;
bool c35_1 = CompareDeltas ( d34 . y , d45 . y , l34 . y , l45 . y ) ;
bool c46_1 = CompareDeltas ( d45 . y , d56 . y , l45 . y , l56 . y ) ;

AOCache2 [ leftMostIndex ] = float2 ( SmartBlur ( a0 . x . x , a1 . x , a2 . x , a3 . x , a4 . x , c02_0 , c13_0 , c24_0 ) , SmartBlur ( a0 . y , a1 . y , a2 . y , a3 . y , a4 . y , c02_1 , c13_1 , c24_1 ) ) ;
AOCache2 [ leftMostIndex + 1 ] = float2 ( SmartBlur ( a1 . x , a2 . x , a3 . x , a4 . x , a5 . x , c13_0 , c24_0 , c35_0 ) , SmartBlur ( a1 . y , a2 . y , a3 . y , a4 . y , a5 . y , c13_1 , c24_1 , c35_1 ) ) ;
AOCache2 [ leftMostIndex + 2 ] = float2 ( SmartBlur ( a2 . x , a3 . x , a4 . x , a5 . x , a6 . x , c24_0 , c35_0 , c46_0 ) , SmartBlur ( a2 . y , a3 . y , a4 . y , a5 . y , a6 . y , c24_1 , c35_1 , c46_1 ) ) ;
#line 236
}

void BlurVertically ( uint topMostIndex )
{

float2 a0 = AOCache2 [ topMostIndex ] ;
float2 a1 = AOCache2 [ topMostIndex + 16 ] ;
float2 a2 = AOCache2 [ topMostIndex + 32 ] ;
float2 a3 = AOCache2 [ topMostIndex + 48 ] ;
float2 a4 = AOCache2 [ topMostIndex + 64 ] ;
float2 a5 = AOCache2 [ topMostIndex + 80 ] ;

float2 d0 = DepthCache [ topMostIndex + 2 ] ;
float2 d1 = DepthCache [ topMostIndex + 18 ] ;
float2 d2 = DepthCache [ topMostIndex + 34 ] ;
float2 d3 = DepthCache [ topMostIndex + 50 ] ;
float2 d4 = DepthCache [ topMostIndex + 66 ] ;
float2 d5 = DepthCache [ topMostIndex + 82 ] ;

float2 d01 = d1 - d0 ;
float2 d12 = d2 - d1 ;
float2 d23 = d3 - d2 ;
float2 d34 = d4 - d3 ;
float2 d45 = d5 - d4 ;

float2 l01 = d01 * d01 + AdditionalParams . y ;
float2 l12 = d12 * d12 + AdditionalParams . y ;
float2 l23 = d23 * d23 + AdditionalParams . y ;
float2 l34 = d34 * d34 + AdditionalParams . y ;
float2 l45 = d45 * d45 + AdditionalParams . y ;

bool c02_0 = CompareDeltas ( d01 . x , d12 . x , l01 . x , l12 . x ) ;
bool c13_0 = CompareDeltas ( d12 . x , d23 . x , l12 . x , l23 . x ) ;
bool c24_0 = CompareDeltas ( d23 . x , d34 . x , l23 . x , l34 . x ) ;
bool c35_0 = CompareDeltas ( d34 . x , d45 . x , l34 . x , l45 . x ) ;

bool c02_1 = CompareDeltas ( d01 . y , d12 . y , l01 . y , l12 . y ) ;
bool c13_1 = CompareDeltas ( d12 . y , d23 . y , l12 . y , l23 . y ) ;
bool c24_1 = CompareDeltas ( d23 . y , d34 . y , l23 . y , l34 . y ) ;
bool c35_1 = CompareDeltas ( d34 . y , d45 . y , l34 . y , l45 . y ) ;

float2 aoResult1 = float2 ( SmartBlur ( a0 . x , a1 . x , a2 . x , a3 . x , a4 . x , c02_0 , c13_0 , c24_0 ) , SmartBlur ( a0 . y , a1 . y , a2 . y , a3 . y , a4 . y , c02_1 , c13_1 , c24_1 ) ) ;
float2 aoResult2 = float2 ( SmartBlur ( a1 . x , a2 . x , a3 . x , a4 . x , a5 . x , c13_0 , c24_0 , c35_0 ) , SmartBlur ( a1 . y , a2 . y , a3 . y , a4 . y , a5 . y , c13_1 , c24_1 , c35_1 ) ) ;

AOCache1 [ topMostIndex ] = aoResult1 ;
AOCache1 [ topMostIndex + 16 ] = aoResult2 ;
#line 320
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
void MultiScaleVOUpSample_MSAA_premin ( uint3 Gid : SV_GroupID , uint GI : SV_GroupIndex , uint3 GTid : SV_GroupThreadID , uint3 DTid : SV_DispatchThreadID )
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

float4 LoSSAOs0 = float4 ( AOCache1 [ Idx0 + 16 ] . x , AOCache1 [ Idx0 + 17 ] . x , AOCache1 [ Idx0 + 1 ] . x , AOCache1 [ Idx0 ] . x ) ;
float4 LoSSAOs1 = float4 ( AOCache1 [ Idx0 + 16 ] . y , AOCache1 [ Idx0 + 17 ] . y , AOCache1 [ Idx0 + 1 ] . y , AOCache1 [ Idx0 ] . y ) ;
#line 378
float2 UV0 = DTid . xy * InvLowResolution . xy ;
float2 UV1 = DTid . xy * 2 * InvHighResolution . xy ;
#line 386
float4 HiSSAOs0 = 1.0 ;
float4 HiSSAOs1 = 1.0 ;

float4 LoDepths0 = LoResDB . GatherRed ( samplerLoResDB , UV0 ) ;
float4 LoDepths1 = LoResDB . GatherGreen ( samplerLoResDB , UV0 ) ;
float4 HiDepths0 = HiResDB . GatherRed ( samplerHiResDB , UV1 ) ;
float4 HiDepths1 = HiResDB . GatherGreen ( samplerHiResDB , UV1 ) ;

int2 OutST = DTid . xy << 1 ;
#line 402
AoResult [ OutST + int2 ( - 1 , 0 ) ] = float2 ( BilateralUpsample ( HiDepths0 . x , HiSSAOs0 . x , LoDepths0 . xyzw , LoSSAOs0 . xyzw ) , BilateralUpsample ( HiDepths1 . x , HiSSAOs1 . x , LoDepths1 . xyzw , LoSSAOs1 . xyzw ) ) ;
AoResult [ OutST + int2 ( 0 , 0 ) ] = float2 ( BilateralUpsample ( HiDepths0 . y , HiSSAOs0 . y , LoDepths0 . yzwx , LoSSAOs0 . yzwx ) , BilateralUpsample ( HiDepths1 . y , HiSSAOs1 . y , LoDepths1 . yzwx , LoSSAOs1 . yzwx ) ) ;
AoResult [ OutST + int2 ( 0 , - 1 ) ] = float2 ( BilateralUpsample ( HiDepths0 . z , HiSSAOs0 . z , LoDepths0 . zwxy , LoSSAOs0 . zwxy ) , BilateralUpsample ( HiDepths1 . z , HiSSAOs1 . z , LoDepths1 . zwxy , LoSSAOs1 . zwxy ) ) ;
AoResult [ OutST + int2 ( - 1 , - 1 ) ] = float2 ( BilateralUpsample ( HiDepths0 . w , HiSSAOs0 . w , LoDepths0 . wxyz , LoSSAOs0 . wxyz ) , BilateralUpsample ( HiDepths1 . w , HiSSAOs1 . w , LoDepths1 . wxyz , LoSSAOs1 . wxyz ) ) ;
#line 430
}
