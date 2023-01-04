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
#line 9 ""
Texture2D _MainTex ; SamplerState sampler_MainTex ;
float4 _MainTex_TexelSize ;
#line 13
Texture2D _CameraDepthTexture ; SamplerState sampler_CameraDepthTexture ;
#line 16
Texture2D _CameraMotionVectorsTexture ; SamplerState sampler_CameraMotionVectorsTexture ;
float4 _CameraMotionVectorsTexture_TexelSize ;
#line 20
Texture2D _VelocityTex ; SamplerState sampler_VelocityTex ;
float2 _VelocityTex_TexelSize ;
#line 24
Texture2D _NeighborMaxTex ; SamplerState sampler_NeighborMaxTex ;
float2 _NeighborMaxTex_TexelSize ;
#line 28
float _VelocityScale ;
#line 31
int _TileMaxLoop ;
float2 _TileMaxOffs ;
#line 35
half _MaxBlurRadius ;
float _RcpMaxBlurRadius ;
#line 39
half _LoopCount ;
#line 45
half4 FragVelocitySetup ( VaryingsDefault i ) : SV_Target
{

float2 v = _CameraMotionVectorsTexture . Sample ( sampler_CameraMotionVectorsTexture , i . texcoord ) . rg ;
#line 51
v *= ( _VelocityScale * 0.5 ) * _CameraMotionVectorsTexture_TexelSize . zw ;
#line 54
v /= max ( 1.0 , length ( v ) * _RcpMaxBlurRadius ) ;
#line 57
half d = Linear01Depth ( _CameraDepthTexture . Sample ( sampler_CameraDepthTexture , i . texcoord ) . r ) ;
#line 60
return half4 ( ( v * _RcpMaxBlurRadius + 1.0 ) * 0.5 , d , 0.0 ) ;
}

half2 MaxV ( half2 v1 , half2 v2 )
{
return dot ( v1 , v1 ) < dot ( v2 , v2 ) ? v2 : v1 ;
}
#line 69
half4 FragTileMax1 ( VaryingsDefault i ) : SV_Target
{
float4 d = _MainTex_TexelSize . xyxy * float4 ( - 0.5 , - 0.5 , 0.5 , 0.5 ) ;

half2 v1 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xy ) . rg ;
half2 v2 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . zy ) . rg ;
half2 v3 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xw ) . rg ;
half2 v4 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . zw ) . rg ;

v1 = ( v1 * 2.0 - 1.0 ) * _MaxBlurRadius ;
v2 = ( v2 * 2.0 - 1.0 ) * _MaxBlurRadius ;
v3 = ( v3 * 2.0 - 1.0 ) * _MaxBlurRadius ;
v4 = ( v4 * 2.0 - 1.0 ) * _MaxBlurRadius ;

return half4 ( MaxV ( MaxV ( MaxV ( v1 , v2 ) , v3 ) , v4 ) , 0.0 , 0.0 ) ;
}
#line 87
half4 FragTileMax2 ( VaryingsDefault i ) : SV_Target
{
float4 d = _MainTex_TexelSize . xyxy * float4 ( - 0.5 , - 0.5 , 0.5 , 0.5 ) ;

half2 v1 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xy ) . rg ;
half2 v2 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . zy ) . rg ;
half2 v3 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xw ) . rg ;
half2 v4 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . zw ) . rg ;

return half4 ( MaxV ( MaxV ( MaxV ( v1 , v2 ) , v3 ) , v4 ) , 0.0 , 0.0 ) ;
}
#line 100
half4 FragTileMaxV ( VaryingsDefault i ) : SV_Target
{
float2 uv0 = i . texcoord + _MainTex_TexelSize . xy * _TileMaxOffs . xy ;

float2 du = float2 ( _MainTex_TexelSize . x , 0.0 ) ;
float2 dv = float2 ( 0.0 , _MainTex_TexelSize . y ) ;

half2 vo = 0.0 ;

[ loop ]
for ( int ix = 0 ; ix < _TileMaxLoop ; ix ++ )
{
[ loop ]
for ( int iy = 0 ; iy < _TileMaxLoop ; iy ++ )
{
float2 uv = uv0 + du * ix + dv * iy ;
vo = MaxV ( vo , _MainTex . Sample ( sampler_MainTex , uv ) . rg ) ;
}
}

return half4 ( vo , 0.0 , 0.0 ) ;
}
#line 124
half4 FragNeighborMax ( VaryingsDefault i ) : SV_Target
{
const half cw = 1.01 ;

float4 d = _MainTex_TexelSize . xyxy * float4 ( 1.0 , 1.0 , - 1.0 , 0.0 ) ;

half2 v1 = _MainTex . Sample ( sampler_MainTex , i . texcoord - d . xy ) . rg ;
half2 v2 = _MainTex . Sample ( sampler_MainTex , i . texcoord - d . wy ) . rg ;
half2 v3 = _MainTex . Sample ( sampler_MainTex , i . texcoord - d . zy ) . rg ;

half2 v4 = _MainTex . Sample ( sampler_MainTex , i . texcoord - d . xw ) . rg ;
half2 v5 = _MainTex . Sample ( sampler_MainTex , i . texcoord ) . rg * cw ;
half2 v6 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xw ) . rg ;

half2 v7 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . zy ) . rg ;
half2 v8 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . wy ) . rg ;
half2 v9 = _MainTex . Sample ( sampler_MainTex , i . texcoord + d . xy ) . rg ;

half2 va = MaxV ( v1 , MaxV ( v2 , v3 ) ) ;
half2 vb = MaxV ( v4 , MaxV ( v5 , v6 ) ) ;
half2 vc = MaxV ( v7 , MaxV ( v8 , v9 ) ) ;

return half4 ( MaxV ( va , MaxV ( vb , vc ) ) * ( 1.0 / cw ) , 0.0 , 0.0 ) ;
}
#line 153
bool Interval ( half phase , half interval )
{
return frac ( phase / interval ) > 0.499 ;
}
#line 159
float2 JitterTile ( float2 uv )
{
float rx , ry ;
sincos ( GradientNoise ( uv + float2 ( 2.0 , 0.0 ) ) * 6.28318530718 , ry , rx ) ;
return float2 ( rx , ry ) * _NeighborMaxTex_TexelSize . xy * 0.25 ;
}
#line 167
half3 SampleVelocity ( float2 uv )
{
half3 v = _VelocityTex . SampleLevel ( sampler_VelocityTex , uv , 0.0 ) . xyz ;
return half3 ( ( v . xy * 2.0 - 1.0 ) * _MaxBlurRadius , v . z ) ;
}
#line 174
half4 FragReconstruction ( VaryingsDefault i ) : SV_Target
{

const half4 c_p = _MainTex . Sample ( sampler_MainTex , i . texcoord ) ;
#line 180
const half3 vd_p = SampleVelocity ( i . texcoord ) ;
const half l_v_p = max ( length ( vd_p . xy ) , 0.5 ) ;
const half rcp_d_p = 1.0 / vd_p . z ;
#line 185
const half2 v_max = _NeighborMaxTex . Sample ( sampler_NeighborMaxTex , i . texcoord + JitterTile ( i . texcoord ) ) . xy ;
const half l_v_max = length ( v_max ) ;
const half rcp_l_v_max = 1.0 / l_v_max ;
#line 190
if ( l_v_max < 2.0 ) return c_p ;
#line 194
const half2 v_alt = ( l_v_p * 2.0 > l_v_max ) ? vd_p . xy * ( l_v_max / l_v_p ) : v_max ;
#line 197
const half sc = floor ( min ( _LoopCount , l_v_max * 0.5 ) ) ;
#line 200
const half dt = 1.0 / sc ;
const half t_offs = ( GradientNoise ( i . texcoord ) - 0.5 ) * dt ;
half t = 1.0 - dt * 0.5 ;
half count = 0.0 ;
#line 207
half l_v_bg = max ( l_v_p , 1.0 ) ;
#line 210
half4 acc = 0.0 ;

[ loop ]
while ( t > dt * 0.25 )
{

const half2 v_s = Interval ( count , 4.0 ) ? v_alt : v_max ;
#line 219
const half t_s = ( Interval ( count , 2.0 ) ? - t : t ) + t_offs ;
#line 222
const half l_t = l_v_max * abs ( t_s ) ;
#line 225
const float2 uv0 = i . texcoord + v_s * t_s * _MainTex_TexelSize . xy ;
const float2 uv1 = i . texcoord + v_s * t_s * _VelocityTex_TexelSize . xy ;
#line 229
const half3 c = _MainTex . SampleLevel ( sampler_MainTex , uv0 , 0.0 ) . rgb ;
#line 232
const half3 vd = SampleVelocity ( uv1 ) ;
#line 235
const half fg = saturate ( ( vd_p . z - vd . z ) * 20.0 * rcp_d_p ) ;
#line 238
const half l_v = lerp ( l_v_bg , length ( vd . xy ) , fg ) ;
#line 242
const half w = saturate ( l_v - l_t ) / l_v * ( 1.2 - t ) ;
#line 245
acc += half4 ( c , 1.0 ) * w ;
#line 248
l_v_bg = max ( l_v_bg , l_v ) ;
#line 251
t = Interval ( count , 2.0 ) ? t - dt : t ;
count += 1.0 ;
}
#line 256
acc += half4 ( c_p . rgb , 1.0 ) * ( 1.2 / ( l_v_bg * sc * 2.0 ) ) ;

return half4 ( acc . rgb / acc . a , c_p . a ) ;
}
