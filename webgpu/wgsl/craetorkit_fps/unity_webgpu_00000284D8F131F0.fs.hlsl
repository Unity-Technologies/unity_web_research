#line 1 "Hidden/PostProcessing/ScalableAO"
static const int APPLY_FORWARD_FOG = 0 ;
static const int FOG_LINEAR = 0 ;
static const int FOG_EXP = 0 ;
static const int UNITY_NO_DXT5nm = 0 ;
static const int UNITY_FRAMEBUFFER_FETCH_AVAILABLE = 0 ;
static const int UNITY_METAL_SHADOWS_USE_POINT_FILTERING = 0 ;
static const int UNITY_NO_SCREENSPACE_SHADOWS = 0 ;
static const int UNITY_PBS_USE_BRDF2 = 0 ;
static const int UNITY_PBS_USE_BRDF3 = 0 ;
static const int UNITY_HARDWARE_TIER1 = 0 ;
static const int UNITY_HARDWARE_TIER2 = 0 ;
static const int UNITY_HARDWARE_TIER3 = 0 ;
static const int UNITY_COLORSPACE_GAMMA = 0 ;
static const int UNITY_LIGHTMAP_DLDR_ENCODING = 0 ;
static const int UNITY_LIGHTMAP_RGBM_ENCODING = 0 ;
static const int UNITY_VIRTUAL_TEXTURING = 0 ;
static const int UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION = 0 ;
static const int UNITY_ASTC_NORMALMAP_ENCODING = 0 ;
static const int SHADER_API_GLES30 = 0 ;
static const int UNITY_UNIFIED_SHADER_PRECISION_MODEL = 0 ;
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
#line 66 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/ACES.hlsl"
static const half3x3 sRGB_2_AP0 = {
0.4397010 , 0.3829780 , 0.1773350 ,
0.0897923 , 0.8134230 , 0.0967616 ,
0.0175440 , 0.1115440 , 0.8707040
} ;

static const half3x3 sRGB_2_AP1 = {
0.61319 , 0.33951 , 0.04737 ,
0.07021 , 0.91634 , 0.01345 ,
0.02062 , 0.10957 , 0.86961
} ;

static const half3x3 AP0_2_sRGB = {
2.52169 , - 1.13413 , - 0.38756 ,
- 0.27648 , 1.37272 , - 0.09624 ,
- 0.01538 , - 0.15298 , 1.16835 ,
} ;

static const half3x3 AP1_2_sRGB = {
1.70505 , - 0.62179 , - 0.08326 ,
- 0.13026 , 1.14080 , - 0.01055 ,
- 0.02400 , - 0.12897 , 1.15297 ,
} ;

static const half3x3 AP0_2_AP1_MAT = {
1.4514393161 , - 0.2365107469 , - 0.2149285693 ,
- 0.0765537734 , 1.1762296998 , - 0.0996759264 ,
0.0083161484 , - 0.0060324498 , 0.9977163014
} ;

static const half3x3 AP1_2_AP0_MAT = {
0.6954522414 , 0.1406786965 , 0.1638690622 ,
0.0447945634 , 0.8596711185 , 0.0955343182 ,
- 0.0055258826 , 0.0040252103 , 1.0015006723
} ;

static const half3x3 AP1_2_XYZ_MAT = {
0.6624541811 , 0.1340042065 , 0.1561876870 ,
0.2722287168 , 0.6740817658 , 0.0536895174 ,
- 0.0055746495 , 0.0040607335 , 1.0103391003
} ;

static const half3x3 XYZ_2_AP1_MAT = {
1.6410233797 , - 0.3248032942 , - 0.2364246952 ,
- 0.6636628587 , 1.6153315917 , 0.0167563477 ,
0.0117218943 , - 0.0082844420 , 0.9883948585
} ;

static const half3x3 XYZ_2_REC709_MAT = {
3.2409699419 , - 1.5373831776 , - 0.4986107603 ,
- 0.9692436363 , 1.8759675015 , 0.0415550574 ,
0.0556300797 , - 0.2039769589 , 1.0569715142
} ;

static const half3x3 XYZ_2_REC2020_MAT = {
1.7166511880 , - 0.3556707838 , - 0.2533662814 ,
- 0.6666843518 , 1.6164812366 , 0.0157685458 ,
0.0176398574 , - 0.0427706133 , 0.9421031212
} ;

static const half3x3 XYZ_2_DCIP3_MAT = {
2.7253940305 , - 1.0180030062 , - 0.4401631952 ,
- 0.7951680258 , 1.6897320548 , 0.0226471906 ,
0.0412418914 , - 0.0876390192 , 1.1009293786
} ;

static const half3 AP1_RGB2Y = half3 ( 0.272229 , 0.674082 , 0.0536895 ) ;

static const half3x3 RRT_SAT_MAT = {
0.9708890 , 0.0269633 , 0.00214758 ,
0.0108892 , 0.9869630 , 0.00214758 ,
0.0108892 , 0.0269633 , 0.96214800
} ;

static const half3x3 ODT_SAT_MAT = {
0.949056 , 0.0471857 , 0.00375827 ,
0.019056 , 0.9771860 , 0.00375827 ,
0.019056 , 0.0471857 , 0.93375800
} ;

static const half3x3 D60_2_D65_CAT = {
0.98722400 , - 0.00611327 , 0.0159533 ,
- 0.00759836 , 1.00186000 , 0.0053302 ,
0.00307257 , - 0.00509595 , 1.0816800
} ;
#line 158
half3 unity_to_ACES ( half3 x )
{
x = mul ( sRGB_2_AP0 , x ) ;
return x ;
}
#line 170
half3 ACES_to_unity ( half3 x )
{
x = mul ( AP0_2_sRGB , x ) ;
return x ;
}
#line 182
half3 unity_to_ACEScg ( half3 x )
{
x = mul ( sRGB_2_AP1 , x ) ;
return x ;
}
#line 194
half3 ACEScg_to_unity ( half3 x )
{
x = mul ( AP1_2_sRGB , x ) ;
return x ;
}
#line 208
half ACES_to_ACEScc ( half x )
{
if ( x <= 0.0 )
return - 0.35828683 ;
else if ( x < pow ( 2.0 , - 15.0 ) )
return ( log2 ( pow ( 2.0 , - 16.0 ) + x * 0.5 ) + 9.72 ) / 17.52 ;
else
return ( log2 ( x ) + 9.72 ) / 17.52 ;
}

half3 ACES_to_ACEScc ( half3 x )
{
x = clamp ( x , 0.0 , 65504.0 ) ;
#line 223
return ( x < 0.00003051757 ) ? ( log2 ( 0.00001525878 + x * 0.5 ) + 9.72 ) / 17.52 : ( log2 ( x ) + 9.72 ) / 17.52 ;
#line 232
}
#line 242
half ACEScc_to_ACES ( half x )
{

if ( x < - 0.3013698630 )
return ( pow ( 2.0 , x * 17.52 - 9.72 ) - pow ( 2.0 , - 16.0 ) ) * 2.0 ;
else if ( x < ( log2 ( 65504.0 ) + 9.72 ) / 17.52 )
return pow ( 2.0 , x * 17.52 - 9.72 ) ;
else
return 65504.0 ;
}

half3 ACEScc_to_ACES ( half3 x )
{
return half3 (
ACEScc_to_ACES ( x . r ) ,
ACEScc_to_ACES ( x . g ) ,
ACEScc_to_ACES ( x . b )
) ;
}
#line 268
half3 ACES_to_ACEScg ( half3 x )
{
return mul ( AP0_2_AP1_MAT , x ) ;
}
#line 279
half3 ACEScg_to_ACES ( half3 x )
{
return mul ( AP1_2_AP0_MAT , x ) ;
}
#line 290
half rgb_2_saturation ( half3 rgb )
{
const half TINY = 1e-4 ;
half mi = Min3 ( rgb . r , rgb . g , rgb . b ) ;
half ma = Max3 ( rgb . r , rgb . g , rgb . b ) ;
return ( max ( ma , TINY ) - max ( mi , TINY ) ) / max ( ma , 1e-2 ) ;
}

half rgb_2_yc ( half3 rgb )
{
const half ycRadiusWeight = 1.75 ;
#line 315
half r = rgb . x ;
half g = rgb . y ;
half b = rgb . z ;
half chroma = sqrt ( b * ( b - g ) + g * ( g - r ) + r * ( r - b ) ) ;
return ( b + g + r + ycRadiusWeight * chroma ) / 3.0 ;
}

half rgb_2_hue ( half3 rgb )
{
#line 326
half hue ;
if ( rgb . x == rgb . y && rgb . y == rgb . z )
hue = 0.0 ;
else
hue = ( 180.0 / 3.14159265359 ) * atan2 ( sqrt ( 3.0 ) * ( rgb . y - rgb . z ) , 2.0 * rgb . x - rgb . y - rgb . z ) ;

if ( hue < 0.0 ) hue = hue + 360.0 ;

return hue ;
}

half center_hue ( half hue , half centerH )
{
half hueCentered = hue - centerH ;
if ( hueCentered < - 180.0 ) hueCentered = hueCentered + 360.0 ;
else if ( hueCentered > 180.0 ) hueCentered = hueCentered - 360.0 ;
return hueCentered ;
}

half sigmoid_shaper ( half x )
{
#line 349
half t = max ( 1.0 - abs ( x / 2.0 ) , 0.0 ) ;
half y = 1.0 + FastSign ( x ) * ( 1.0 - t * t ) ;

return y / 2.0 ;
}

half glow_fwd ( half ycIn , half glowGainIn , half glowMid )
{
half glowGainOut ;

if ( ycIn <= 2.0 / 3.0 * glowMid )
glowGainOut = glowGainIn ;
else if ( ycIn >= 2.0 * glowMid )
glowGainOut = 0.0 ;
else
glowGainOut = glowGainIn * ( glowMid / ycIn - 1.0 / 2.0 ) ;

return glowGainOut ;
}
#line 431
static const half3x3 M = {
0.5 , - 1.0 , 0.5 ,
- 1.0 , 1.0 , 0.0 ,
0.5 , 0.5 , 0.0
} ;

half segmented_spline_c5_fwd ( half x )
{
const half coefsLow [ 6 ] = { - 4.0000000000 , - 4.0000000000 , - 3.1573765773 , - 0.4852499958 , 1.8477324706 , 1.8477324706 } ;
const half coefsHigh [ 6 ] = { - 0.7185482425 , 2.0810307172 , 3.6681241237 , 4.0000000000 , 4.0000000000 , 4.0000000000 } ;
const half2 minPoint = half2 ( 0.18 * exp2 ( - 15.0 ) , 0.0001 ) ;
const half2 midPoint = half2 ( 0.18 , 0.48 ) ;
const half2 maxPoint = half2 ( 0.18 * exp2 ( 18.0 ) , 10000.0 ) ;
const half slopeLow = 0.0 ;
const half slopeHigh = 0.0 ;

const int N_KNOTS_LOW = 4 ;
const int N_KNOTS_HIGH = 4 ;
#line 452
float xCheck = x ;
if ( xCheck <= 0.0 ) xCheck = 0.00006103515 ;

half logx = log10 ( xCheck ) ;
half logy ;

if ( logx <= log10 ( minPoint . x ) )
{
logy = logx * slopeLow + ( log10 ( minPoint . y ) - slopeLow * log10 ( minPoint . x ) ) ;
}
else if ( ( logx > log10 ( minPoint . x ) ) && ( logx < log10 ( midPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_LOW - 1 ) * ( logx - log10 ( minPoint . x ) ) / ( log10 ( midPoint . x ) - log10 ( minPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( coefsLow [ j ] , coefsLow [ j + 1 ] , coefsLow [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else if ( ( logx >= log10 ( midPoint . x ) ) && ( logx < log10 ( maxPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_HIGH - 1 ) * ( logx - log10 ( midPoint . x ) ) / ( log10 ( maxPoint . x ) - log10 ( midPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( coefsHigh [ j ] , coefsHigh [ j + 1 ] , coefsHigh [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else
{
logy = logx * slopeHigh + ( log10 ( maxPoint . y ) - slopeHigh * log10 ( maxPoint . x ) ) ;
}

return pow ( 10.0 , logy ) ;
}

half segmented_spline_c9_fwd ( half x )
{
const half coefsLow [ 10 ] = { - 1.6989700043 , - 1.6989700043 , - 1.4779000000 , - 1.2291000000 , - 0.8648000000 , - 0.4480000000 , 0.0051800000 , 0.4511080334 , 0.9113744414 , 0.9113744414 } ;
const half coefsHigh [ 10 ] = { 0.5154386965 , 0.8470437783 , 1.1358000000 , 1.3802000000 , 1.5197000000 , 1.5985000000 , 1.6467000000 , 1.6746091357 , 1.6878733390 , 1.6878733390 } ;
const half2 minPoint = half2 ( segmented_spline_c5_fwd ( 0.18 * exp2 ( - 6.5 ) ) , 0.02 ) ;
const half2 midPoint = half2 ( segmented_spline_c5_fwd ( 0.18 ) , 4.8 ) ;
const half2 maxPoint = half2 ( segmented_spline_c5_fwd ( 0.18 * exp2 ( 6.5 ) ) , 48.0 ) ;
const half slopeLow = 0.0 ;
const half slopeHigh = 0.04 ;

const int N_KNOTS_LOW = 8 ;
const int N_KNOTS_HIGH = 8 ;
#line 505
half xCheck = x ;
if ( xCheck <= 0.0 ) xCheck = 1e-4 ;

half logx = log10 ( xCheck ) ;
half logy ;

if ( logx <= log10 ( minPoint . x ) )
{
logy = logx * slopeLow + ( log10 ( minPoint . y ) - slopeLow * log10 ( minPoint . x ) ) ;
}
else if ( ( logx > log10 ( minPoint . x ) ) && ( logx < log10 ( midPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_LOW - 1 ) * ( logx - log10 ( minPoint . x ) ) / ( log10 ( midPoint . x ) - log10 ( minPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( coefsLow [ j ] , coefsLow [ j + 1 ] , coefsLow [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else if ( ( logx >= log10 ( midPoint . x ) ) && ( logx < log10 ( maxPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_HIGH - 1 ) * ( logx - log10 ( midPoint . x ) ) / ( log10 ( maxPoint . x ) - log10 ( midPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( coefsHigh [ j ] , coefsHigh [ j + 1 ] , coefsHigh [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else
{
logy = logx * slopeHigh + ( log10 ( maxPoint . y ) - slopeHigh * log10 ( maxPoint . x ) ) ;
}

return pow ( 10.0 , logy ) ;
}

static const half RRT_GLOW_GAIN = 0.05 ;
static const half RRT_GLOW_MID = 0.08 ;

static const half RRT_RED_SCALE = 0.82 ;
static const half RRT_RED_PIVOT = 0.03 ;
static const half RRT_RED_HUE = 0.0 ;
static const half RRT_RED_WIDTH = 135.0 ;

static const half RRT_SAT_FACTOR = 0.96 ;

half3 RRT ( half3 aces )
{

half saturation = rgb_2_saturation ( aces ) ;
half ycIn = rgb_2_yc ( aces ) ;
half s = sigmoid_shaper ( ( saturation - 0.4 ) / 0.2 ) ;
half addedGlow = 1.0 + glow_fwd ( ycIn , RRT_GLOW_GAIN * s , RRT_GLOW_MID ) ;
aces *= addedGlow ;
#line 563
half hue = rgb_2_hue ( aces ) ;
half centeredHue = center_hue ( hue , RRT_RED_HUE ) ;
half hueWeight ;
{

hueWeight = smoothstep ( 0.0 , 1.0 , 1.0 - abs ( 2.0 * centeredHue / RRT_RED_WIDTH ) ) ;
hueWeight *= hueWeight ;
}

aces . r += hueWeight * saturation * ( RRT_RED_PIVOT - aces . r ) * ( 1.0 - RRT_RED_SCALE ) ;
#line 575
aces = clamp ( aces , 0.0 , 65504.0 ) ;
half3 rgbPre = mul ( AP0_2_AP1_MAT , aces ) ;
rgbPre = clamp ( rgbPre , 0 , 65504.0 ) ;
#line 581
rgbPre = lerp ( dot ( rgbPre , AP1_RGB2Y ) . xxx , rgbPre , RRT_SAT_FACTOR . xxx ) ;
#line 584
half3 rgbPost ;
rgbPost . x = segmented_spline_c5_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c5_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c5_fwd ( rgbPre . z ) ;
#line 590
half3 rgbOces = mul ( AP1_2_AP0_MAT , rgbPost ) ;

return rgbOces ;
}
#line 598
half3 Y_2_linCV ( half3 Y , half Ymax , half Ymin )
{
return ( Y - Ymin ) / ( Ymax - Ymin ) ;
}

half3 XYZ_2_xyY ( half3 XYZ )
{
half divisor = max ( dot ( XYZ , ( 1.0 ) . xxx ) , 1e-4 ) ;
return half3 ( XYZ . xy / divisor , XYZ . y ) ;
}

half3 xyY_2_XYZ ( half3 xyY )
{
half m = xyY . z / max ( xyY . y , 1e-4 ) ;
half3 XYZ = half3 ( xyY . xz , ( 1.0 - xyY . x - xyY . y ) ) ;
XYZ . xz *= m ;
return XYZ ;
}

static const half DIM_SURROUND_GAMMA = 0.9811 ;

half3 darkSurround_to_dimSurround ( half3 linearCV )
{
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;

half3 xyY = XYZ_2_xyY ( XYZ ) ;
xyY . z = clamp ( xyY . z , 0.0 , 65504.0 ) ;
xyY . z = pow ( xyY . z , DIM_SURROUND_GAMMA ) ;
XYZ = xyY_2_XYZ ( xyY ) ;

return mul ( XYZ_2_AP1_MAT , XYZ ) ;
}

half moncurve_r ( half y , half gamma , half offs )
{

half x ;
const half yb = pow ( offs * gamma / ( ( gamma - 1.0 ) * ( 1.0 + offs ) ) , gamma ) ;
const half rs = pow ( ( gamma - 1.0 ) / offs , gamma - 1.0 ) * pow ( ( 1.0 + offs ) / gamma , gamma ) ;
if ( y >= yb )
x = ( 1.0 + offs ) * pow ( y , 1.0 / gamma ) - offs ;
else
x = y * rs ;
return x ;
}

half bt1886_r ( half L , half gamma , half Lw , half Lb )
{
#line 648
half a = pow ( pow ( Lw , 1.0 / gamma ) - pow ( Lb , 1.0 / gamma ) , gamma ) ;
half b = pow ( Lb , 1.0 / gamma ) / ( pow ( Lw , 1.0 / gamma ) - pow ( Lb , 1.0 / gamma ) ) ;
half V = pow ( max ( L / a , 0.0 ) , 1.0 / gamma ) - b ;
return V ;
}

half roll_white_fwd (
half x ,
half new_wht ,
half width
)
{
const half x0 = - 1.0 ;
const half x1 = x0 + width ;
const half y0 = - new_wht ;
const half y1 = x1 ;
const half m1 = ( x1 - x0 ) ;
const half a = y0 - y1 + m1 ;
const half b = 2.0 * ( y1 - y0 ) - m1 ;
const half c = y0 ;
const half t = ( - x - x0 ) / ( x1 - x0 ) ;
half o = 0.0 ;
if ( t < 0.0 )
o = - ( t * b + c ) ;
else if ( t > 1.0 )
o = x ;
else
o = - ( ( t * a + b ) * t + c ) ;
return o ;
}

half3 linear_to_sRGB ( half3 x )
{
return ( x <= 0.0031308 ? ( x * 12.9232102 ) : 1.055 * pow ( x , 1.0 / 2.4 ) - 0.055 ) ;
}

half3 linear_to_bt1886 ( half3 x , half gamma , half Lw , half Lb )
{
#line 688
return pow ( max ( x , 0.0 ) , 1.0 / 2.4 ) ;
#line 692
half invgamma = 1.0 / gamma ;
half p_Lw = pow ( Lw , invgamma ) ;
half p_Lb = pow ( Lb , invgamma ) ;
half3 a = pow ( p_Lw - p_Lb , gamma ) . xxx ;
half3 b = ( p_Lb / p_Lw - p_Lb ) . xxx ;
half3 V = pow ( max ( x / a , 0.0 ) , invgamma . xxx ) - b ;
return V ;
}

static const half CINEMA_WHITE = 48.0 ;
static const half CINEMA_BLACK = CINEMA_WHITE / 2400.0 ;
static const half ODT_SAT_FACTOR = 0.93 ;
#line 749
half3 ODT_RGBmonitor_100nits_dim ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 755
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 761
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 764
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 768
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 772
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 775
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 778
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 782
linearCV = saturate ( linearCV ) ;
#line 800
return linearCV ;
}
#line 847
half3 ODT_RGBmonitor_D60sim_100nits_dim ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 853
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 859
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 876
const half SCALE = 0.955 ;
linearCV = min ( linearCV , 1.0 ) * SCALE ;
#line 880
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 884
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 888
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 891
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 895
linearCV = saturate ( linearCV ) ;
#line 913
return linearCV ;
}
#line 957
half3 ODT_Rec709_100nits_dim ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 963
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 969
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 972
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 976
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 980
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 983
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 986
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 990
linearCV = saturate ( linearCV ) ;
#line 993
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1005
return outputCV ;
}
#line 1049
half3 ODT_Rec709_D60sim_100nits_dim ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1055
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 1061
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1079
const half SCALE = 0.955 ;
linearCV = min ( linearCV , 1.0 ) * SCALE ;
#line 1083
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 1087
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1091
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1094
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 1098
linearCV = saturate ( linearCV ) ;
#line 1101
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1113
return outputCV ;
}
#line 1159
half3 ODT_Rec2020_100nits_dim ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1165
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 1171
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1174
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 1178
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1182
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1185
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 1188
linearCV = mul ( XYZ_2_REC2020_MAT , XYZ ) ;
#line 1192
linearCV = saturate ( linearCV ) ;
#line 1195
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1207
return outputCV ;
}
#line 1241
half3 ODT_P3DCI_48nits ( half3 oces )
{

half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1247
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z ) ;
#line 1253
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1276
const half NEW_WHT = 0.918 ;
const half ROLL_WIDTH = 0.5 ;
linearCV . x = roll_white_fwd ( linearCV . x , NEW_WHT , ROLL_WIDTH ) ;
linearCV . y = roll_white_fwd ( linearCV . y , NEW_WHT , ROLL_WIDTH ) ;
linearCV . z = roll_white_fwd ( linearCV . z , NEW_WHT , ROLL_WIDTH ) ;
#line 1283
const half SCALE = 0.96 ;
linearCV = min ( linearCV , NEW_WHT ) * SCALE ;
#line 1288
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1291
linearCV = mul ( XYZ_2_DCIP3_MAT , XYZ ) ;
#line 1295
linearCV = saturate ( linearCV ) ;
#line 1298
const half DISPGAMMA = 2.6 ;
half3 outputCV = pow ( linearCV , 1.0 / DISPGAMMA ) ;
#line 1306
return outputCV ;
}
#line 49 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/Colors.hlsl"
struct ParamsLogC
{
float cut ;
float a , b , c , d , e , f ;
} ;

static const ParamsLogC LogC =
{
0.011361 ,
5.555556 ,
0.047996 ,
0.244161 ,
0.386036 ,
5.301883 ,
0.092819
} ;

float LinearToLogC_Precise ( half x )
{
float o ;
if ( x > LogC . cut )
o = LogC . c * log10 ( LogC . a * x + LogC . b ) + LogC . d ;
else
o = LogC . e * x + LogC . f ;
return o ;
}

float3 LinearToLogC ( float3 x )
{
#line 85
return LogC . c * log10 ( LogC . a * x + LogC . b ) + LogC . d ;

}

float LogCToLinear_Precise ( float x )
{
float o ;
if ( x > LogC . e * LogC . cut + LogC . f )
o = ( pow ( 10.0 , ( x - LogC . d ) / LogC . c ) - LogC . b ) / LogC . a ;
else
o = ( x - LogC . f ) / LogC . e ;
return o ;
}

float3 LogCToLinear ( float3 x )
{
#line 108
return ( pow ( 10.0 , ( x - LogC . d ) / LogC . c ) - LogC . b ) / LogC . a ;

}
#line 116
struct ParamsPQ
{
float N , M ;
float C1 , C2 , C3 ;
} ;

static const ParamsPQ PQ =
{
2610.0 / 4096.0 / 4.0 ,
2523.0 / 4096.0 * 128.0 ,
3424.0 / 4096.0 ,
2413.0 / 4096.0 * 32.0 ,
2392.0 / 4096.0 * 32.0 ,
} ;

float3 LinearToPQ ( float3 x , float maxPQValue )
{
x = PositivePow ( x / maxPQValue , PQ . N ) ;
float3 nd = ( PQ . C1 + PQ . C2 * x ) / ( 1.0 + PQ . C3 * x ) ;
return PositivePow ( nd , PQ . M ) ;
}

float3 LinearToPQ ( float3 x )
{
return LinearToPQ ( x , 100.0 ) ;
}

float3 PQToLinear ( float3 x , float maxPQValue )
{
x = PositivePow ( x , rcp ( PQ . M ) ) ;
float3 nd = max ( x - PQ . C1 , 0.0 ) / ( PQ . C2 - ( PQ . C3 * x ) ) ;
return PositivePow ( nd , rcp ( PQ . N ) ) * maxPQValue ;
}

float3 PQToLinear ( float3 x )
{
return PQToLinear ( x , 100.0 ) ;
}
#line 159
half SRGBToLinear ( half c )
{
#line 166
half linearRGBLo = c / 12.92 ;
half linearRGBHi = PositivePow ( ( c + 0.055 ) / 1.055 , 2.4 ) ;
half linearRGB = ( c <= 0.04045 ) ? linearRGBLo : linearRGBHi ;
return linearRGB ;

}

half3 SRGBToLinear ( half3 c )
{
#line 180
half3 linearRGBLo = c / 12.92 ;
half3 linearRGBHi = PositivePow ( ( c + 0.055 ) / 1.055 , half3 ( 2.4 , 2.4 , 2.4 ) ) ;
half3 linearRGB = ( c <= 0.04045 ) ? linearRGBLo : linearRGBHi ;
return linearRGB ;

}

half4 SRGBToLinear ( half4 c )
{
return half4 ( SRGBToLinear ( c . rgb ) , c . a ) ;
}

half LinearToSRGB ( half c )
{
#line 199
half sRGBLo = c * 12.92 ;
half sRGBHi = ( PositivePow ( c , 1.0 / 2.4 ) * 1.055 ) - 0.055 ;
half sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;

}

half3 LinearToSRGB ( half3 c )
{
#line 213
half3 sRGBLo = c * 12.92 ;
half3 sRGBHi = ( PositivePow ( c , half3 ( 1.0 / 2.4 , 1.0 / 2.4 , 1.0 / 2.4 ) ) * 1.055 ) - 0.055 ;
half3 sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;

}

half4 LinearToSRGB ( half4 c )
{
return half4 ( LinearToSRGB ( c . rgb ) , c . a ) ;
}
#line 228
half Luminance ( half3 linearRgb )
{
return dot ( linearRgb , float3 ( 0.2126729 , 0.7151522 , 0.0721750 ) ) ;
}

half Luminance ( half4 linearRgba )
{
return Luminance ( linearRgba . rgb ) ;
}
#line 242
half4 QuadraticThreshold ( half4 color , half threshold , half3 curve )
{

half br = Max3 ( color . r , color . g , color . b ) ;
#line 248
half rq = clamp ( br - curve . x , 0.0 , curve . y ) ;
rq = curve . z * rq * rq ;
#line 252
color *= max ( rq , br - threshold ) / max ( br , 1.0e-4 ) ;

return color ;
}
#line 261
float3 FastTonemap ( float3 c )
{
return c * rcp ( Max3 ( c . r , c . g , c . b ) + 1.0 ) ;
}

float4 FastTonemap ( float4 c )
{
return float4 ( FastTonemap ( c . rgb ) , c . a ) ;
}

float3 FastTonemap ( float3 c , float w )
{
return c * ( w * rcp ( Max3 ( c . r , c . g , c . b ) + 1.0 ) ) ;
}

float4 FastTonemap ( float4 c , float w )
{
return float4 ( FastTonemap ( c . rgb , w ) , c . a ) ;
}

float3 FastTonemapInvert ( float3 c )
{
return c * rcp ( 1.0 - Max3 ( c . r , c . g , c . b ) ) ;
}

float4 FastTonemapInvert ( float4 c )
{
return float4 ( FastTonemapInvert ( c . rgb ) , c . a ) ;
}
#line 295
float3 NeutralCurve ( float3 x , float a , float b , float c , float d , float e , float f )
{
return ( ( x * ( a * x + c * b ) + d * e ) / ( x * ( a * x + b ) + d * f ) ) - e / f ;
}

float3 NeutralTonemap ( float3 x )
{

float a = 0.2 ;
float b = 0.29 ;
float c = 0.24 ;
float d = 0.272 ;
float e = 0.02 ;
float f = 0.3 ;
float whiteLevel = 5.3 ;
float whiteClip = 1.0 ;

float3 whiteScale = ( 1.0 ) . xxx / NeutralCurve ( whiteLevel , a , b , c , d , e , f ) ;
x = NeutralCurve ( x * whiteScale , a , b , c , d , e , f ) ;
x *= whiteScale ;
#line 317
x /= whiteClip . xxx ;

return x ;
}
#line 326
float EvalCustomSegment ( float x , float4 segmentA , float2 segmentB )
{
const float kOffsetX = segmentA . x ;
const float kOffsetY = segmentA . y ;
const float kScaleX = segmentA . z ;
const float kScaleY = segmentA . w ;
const float kLnA = segmentB . x ;
const float kB = segmentB . y ;

float x0 = ( x - kOffsetX ) * kScaleX ;
float y0 = ( x0 > 0.0 ) ? exp ( kLnA + kB * log ( x0 ) ) : 0.0 ;
return y0 * kScaleY + kOffsetY ;
}

float EvalCustomCurve ( float x , float3 curve , float4 toeSegmentA , float2 toeSegmentB , float4 midSegmentA , float2 midSegmentB , float4 shoSegmentA , float2 shoSegmentB )
{
float4 segmentA ;
float2 segmentB ;

if ( x < curve . y )
{
segmentA = toeSegmentA ;
segmentB = toeSegmentB ;
}
else if ( x < curve . z )
{
segmentA = midSegmentA ;
segmentB = midSegmentB ;
}
else
{
segmentA = shoSegmentA ;
segmentB = shoSegmentB ;
}

return EvalCustomSegment ( x , segmentA , segmentB ) ;
}
#line 365
float3 CustomTonemap ( float3 x , float3 curve , float4 toeSegmentA , float2 toeSegmentB , float4 midSegmentA , float2 midSegmentB , float4 shoSegmentA , float2 shoSegmentB )
{
float3 normX = x * curve . x ;
float3 ret ;
ret . x = EvalCustomCurve ( normX . x , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
ret . y = EvalCustomCurve ( normX . y , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
ret . z = EvalCustomCurve ( normX . z , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
return ret ;
}
#line 379
float3 AcesTonemap ( float3 aces )
{
#line 390
float saturation = rgb_2_saturation ( aces ) ;
float ycIn = rgb_2_yc ( aces ) ;
float s = sigmoid_shaper ( ( saturation - 0.4 ) / 0.2 ) ;
float addedGlow = 1.0 + glow_fwd ( ycIn , RRT_GLOW_GAIN * s , RRT_GLOW_MID ) ;
aces *= addedGlow ;
#line 397
float hue = rgb_2_hue ( aces ) ;
float centeredHue = center_hue ( hue , RRT_RED_HUE ) ;
float hueWeight ;
{

hueWeight = smoothstep ( 0.0 , 1.0 , 1.0 - abs ( 2.0 * centeredHue / RRT_RED_WIDTH ) ) ;
hueWeight *= hueWeight ;
}

aces . r += hueWeight * saturation * ( RRT_RED_PIVOT - aces . r ) * ( 1.0 - RRT_RED_SCALE ) ;
#line 409
float3 acescg = max ( 0.0 , ACES_to_ACEScg ( aces ) ) ;
#line 413
acescg = lerp ( dot ( acescg , AP1_RGB2Y ) . xxx , acescg , RRT_SAT_FACTOR . xxx ) ;
#line 418
const float a = 278.5085 ;
const float b = 10.7772 ;
const float c = 293.6045 ;
const float d = 88.7122 ;
const float e = 80.6889 ;
float3 x = acescg ;
float3 rgbPost = ( x * ( a * x + b ) ) / ( x * ( c * x + d ) + e ) ;
#line 430
float3 linearCV = darkSurround_to_dimSurround ( rgbPost ) ;
#line 434
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 438
float3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 441
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 444
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;

return linearCV ;
#line 449
}
#line 455
half3 ApplyLut3D ( Texture3D tex , SamplerState samplerTex , float3 uvw , float2 scaleOffset )
{
uvw . xyz = uvw . xyz * scaleOffset . yyy * scaleOffset . xxx + scaleOffset . xxx * 0.5 ;
return tex . Sample ( samplerTex , uvw ) . rgb ;
}
#line 465
half3 ApplyLut2D ( Texture2D tex , SamplerState samplerTex , float3 uvw , float3 scaleOffset )
{

uvw . z *= scaleOffset . z ;
float shift = floor ( uvw . z ) ;
uvw . xy = uvw . xy * scaleOffset . z * scaleOffset . xy + scaleOffset . xy * 0.5 ;
uvw . x += shift * scaleOffset . y ;
uvw . xyz = lerp (
tex . Sample ( samplerTex , uvw . xy ) . rgb ,
tex . Sample ( samplerTex , uvw . xy + float2 ( scaleOffset . y , 0.0 ) ) . rgb ,
uvw . z - shift
) ;
return uvw ;
}
#line 484
float3 GetLutStripValue ( float2 uv , float4 params )
{
uv -= params . yz ;
float3 color ;
color . r = frac ( uv . x * params . x ) ;
color . b = uv . x - color . r / params . x ;
color . g = uv . y ;
return color * params . w ;
}
#line 498
static const float3x3 LIN_2_LMS_MAT = {
3.90405e-1 , 5.49941e-1 , 8.92632e-3 ,
7.08416e-2 , 9.63172e-1 , 1.35775e-3 ,
2.31082e-2 , 1.28021e-1 , 9.36245e-1
} ;

static const float3x3 LMS_2_LIN_MAT = {
2.85847e+0 , - 1.62879e+0 , - 2.48910e-2 ,
- 2.10182e-1 , 1.15820e+0 , 3.24281e-4 ,
- 4.18120e-2 , - 1.18169e-1 , 1.06867e+0
} ;

float3 WhiteBalance ( float3 c , float3 balance )
{
float3 lms = mul ( LIN_2_LMS_MAT , c ) ;
lms *= balance ;
return mul ( LMS_2_LIN_MAT , lms ) ;
}
#line 520
float3 RgbToYCbCr ( float3 c )
{
float Y = 0.299 * c . r + 0.587 * c . g + 0.114 * c . b ;
float Cb = - 0.169 * c . r - 0.331 * c . g + 0.500 * c . b ;
float Cr = 0.500 * c . r - 0.419 * c . g - 0.081 * c . b ;
return float3 ( Y , Cb , Cr ) ;
}

float3 YCbCrToRgb ( float3 c )
{
float R = c . x + 0.000 * c . y + 1.403 * c . z ;
float G = c . x - 0.344 * c . y - 0.714 * c . z ;
float B = c . x - 1.773 * c . y + 0.000 * c . z ;
return float3 ( R , G , B ) ;
}
#line 543
float3 RgbToHsv ( float3 c )
{
float4 K = float4 ( 0.0 , - 1.0 / 3.0 , 2.0 / 3.0 , - 1.0 ) ;
float4 p = lerp ( float4 ( c . bg , K . wz ) , float4 ( c . gb , K . xy ) , step ( c . b , c . g ) ) ;
float4 q = lerp ( float4 ( p . xyw , c . r ) , float4 ( c . r , p . yzx ) , step ( p . x , c . r ) ) ;
float d = q . x - min ( q . w , q . y ) ;
float e = 1.0e-4 ;
return float3 ( abs ( q . z + ( q . w - q . y ) / ( 6.0 * d + e ) ) , d / ( q . x + e ) , q . x ) ;
}

float3 HsvToRgb ( float3 c )
{
float4 K = float4 ( 1.0 , 2.0 / 3.0 , 1.0 / 3.0 , 3.0 ) ;
float3 p = abs ( frac ( c . xxx + K . xyz ) * 6.0 - K . www ) ;
return c . z * lerp ( K . xxx , saturate ( p - K . xxx ) , c . y ) ;
}

float RotateHue ( float value , float low , float hi )
{
return ( value < low )
? value + hi
: ( value > hi )
? value - hi
: value ;
}
#line 574
float3 Saturation ( float3 c , float sat )
{
float luma = Luminance ( c ) ;
return luma . xxx + sat . xxx * ( c - luma . xxx ) ;
}
#line 584
float3 Contrast ( float3 c , float midpoint , float contrast )
{
return ( c - midpoint ) * contrast + midpoint ;
}
#line 594
float3 LiftGammaGainHDR ( float3 c , float3 lift , float3 invgamma , float3 gain )
{
c = c * gain + lift ;
#line 600
return FastSign ( c ) * pow ( abs ( c ) , invgamma ) ;
}
#line 607
float3 LiftGammaGainLDR ( float3 c , float3 lift , float3 invgamma , float3 gain )
{
c = saturate ( PositivePow ( saturate ( c ) , invgamma ) ) ;
return gain * c + lift * ( 1.0 - c ) ;
}
#line 617
float3 YrgbCurve ( float3 c , Texture2D curveTex , SamplerState sampler_curveTex )
{
const float kHalfPixel = ( 1.0 / 128.0 ) / 2.0 ;
#line 622
c += kHalfPixel . xxx ;
float mr = curveTex . Sample ( sampler_curveTex , float2 ( c . r , 0.75 ) ) . a ;
float mg = curveTex . Sample ( sampler_curveTex , float2 ( c . g , 0.75 ) ) . a ;
float mb = curveTex . Sample ( sampler_curveTex , float2 ( c . b , 0.75 ) ) . a ;
c = saturate ( float3 ( mr , mg , mb ) ) ;
#line 629
c += kHalfPixel . xxx ;
float r = curveTex . Sample ( sampler_curveTex , float2 ( c . r , 0.75 ) ) . r ;
float g = curveTex . Sample ( sampler_curveTex , float2 ( c . g , 0.75 ) ) . g ;
float b = curveTex . Sample ( sampler_curveTex , float2 ( c . b , 0.75 ) ) . b ;
return saturate ( float3 ( r , g , b ) ) ;
}
#line 641
float3 ChannelMixer ( float3 c , float3 red , float3 green , float3 blue )
{
return float3 (
dot ( c , red ) ,
dot ( c , green ) ,
dot ( c , blue )
) ;
}
#line 4 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/Builtins/Fog.hlsl"
half4 _FogColor ;
float3 _FogParams ;
#line 11
half ComputeFog ( float z )
{
half fog = 0.0 ;
#line 19
fog = _FogParams . x * z ;
fog = exp2 ( - fog * fog ) ;

return saturate ( fog ) ;
}

float ComputeFogDistance ( float depth )
{
float dist = depth * _ProjectionParams . z ;
dist -= _ProjectionParams . y ;
return dist ;
}
#line 33 "D:/unity/fps_webgpu/Library/PackageCache/com.unity.postprocessing@3.2.2/PostProcessing/Shaders/Builtins/ScalableAO.hlsl"
static const float kContrast = 0.6 ;
#line 37
static const float kGeometryCoeff = 0.8 ;
#line 43
static const float kBeta = 0.002 ;
#line 48
Texture2D _MainTex ; SamplerState sampler_MainTex ;
Texture2D _CameraGBufferTexture2 ; SamplerState sampler_CameraGBufferTexture2 ;
Texture2D _CameraDepthTexture ; SamplerState sampler_CameraDepthTexture ;
Texture2D _CameraDepthNormalsTexture ; SamplerState sampler_CameraDepthNormalsTexture ;

float4 _MainTex_TexelSize ;

float4 _AOParams ;
float3 _AOColor ;
#line 67
Texture2D _SAOcclusionTexture ; SamplerState sampler_SAOcclusionTexture ;
float4 _SAOcclusionTexture_TexelSize ;
#line 76
half4 PackAONormal ( half ao , half3 n )
{
return half4 ( ao , n * 0.5 + 0.5 ) ;
}

half GetPackedAO ( half4 p )
{
return p . r ;
}

half3 GetPackedNormal ( half4 p )
{
return p . gba * 2.0 - 1.0 ;
}
#line 93
float CheckBounds ( float2 uv , float d )
{
float ob = any ( uv < 0 ) + any ( uv > 1 ) ;

ob += ( d <= 0.00001 ) ;
#line 101
return ob * 1e8 ;
}
#line 105
float SampleDepth ( float2 uv )
{
float d = Linear01Depth ( _CameraDepthTexture . SampleLevel ( sampler_CameraDepthTexture , UnityStereoTransformScreenSpaceTex ( uv ) , 0 ) . r ) ;
return d * _ProjectionParams . z + CheckBounds ( uv , d ) ;
}

float3 SampleNormal ( float2 uv )
{

float3 norm = _CameraGBufferTexture2 . Sample ( sampler_CameraGBufferTexture2 , uv ) . xyz ;
norm = norm * 2 - any ( norm ) ;
norm = mul ( ( float3x3 ) unity_WorldToCamera , norm ) ;
#line 120
return norm ;
#line 125
}

float SampleDepthNormal ( float2 uv , out float3 normal )
{
normal = SampleNormal ( UnityStereoTransformScreenSpaceTex ( uv ) ) ;
return SampleDepth ( uv ) ;
}
#line 134
half CompareNormal ( half3 d1 , half3 d2 )
{
return smoothstep ( kGeometryCoeff , 1.0 , dot ( d1 , d2 ) ) ;
}
#line 140
float2 CosSin ( float theta )
{
float sn , cs ;
sincos ( theta , sn , cs ) ;
return float2 ( cs , sn ) ;
}
#line 148
float UVRandom ( float u , float v )
{
float f = dot ( float2 ( 12.9898 , 78.233 ) , float2 ( u , v ) ) ;
return frac ( 43758.5453 * sin ( f ) ) ;
}
#line 156
float CheckPerspective ( float x )
{
return lerp ( x , 1.0 , unity_OrthoParams . w ) ;
}
#line 164
float3 ReconstructViewPos ( float2 uv , float depth , float2 p11_22 , float2 p13_31 )
{
return float3 ( ( uv * 2.0 - 1.0 - p13_31 ) / p11_22 * CheckPerspective ( depth ) , depth ) ;
}
#line 170
float3 PickSamplePoint ( float2 uv , float index )
{
#line 175
float gn = GradientNoise ( uv * _AOParams . z ) ;
#line 178
float u = frac ( UVRandom ( 0.0 , index + uv . x * 1e-10 ) + gn ) * 2.0 - 1.0 ;
float theta = ( UVRandom ( 1.0 , index + uv . x * 1e-10 ) + gn ) * 6.28318530718 ;
#line 184
float3 v = float3 ( CosSin ( theta ) * sqrt ( 1.0 - u * u ) , u ) ;

float l = sqrt ( ( index + 1.0 ) / _AOParams . w ) * _AOParams . y ;
return v * l ;
}
#line 195
float4 FragAO ( VaryingsDefault i ) : SV_Target
{
float2 uv = i . texcoord ;
#line 200
float3x3 proj = ( float3x3 ) unity_CameraProjection ;
float2 p11_22 = float2 ( unity_CameraProjection . _11 , unity_CameraProjection . _22 ) ;
float2 p13_31 = float2 ( unity_CameraProjection . _13 , unity_CameraProjection . _23 ) ;
#line 205
float3 norm_o ;
float depth_o = SampleDepthNormal ( uv , norm_o ) ;
#line 209
float3 vpos_o = ReconstructViewPos ( uv , depth_o , p11_22 , p13_31 ) ;

float ao = 0.0 ;

for ( int s = 0 ; s < int ( _AOParams . w ) ; s ++ )
{
#line 221
float3 v_s1 = PickSamplePoint ( uv , s ) ;
#line 224
v_s1 = faceforward ( v_s1 , - norm_o , v_s1 ) ;
float3 vpos_s1 = vpos_o + v_s1 ;
#line 228
float3 spos_s1 = mul ( proj , vpos_s1 ) ;
float2 uv_s1_01 = ( spos_s1 . xy / CheckPerspective ( vpos_s1 . z ) + 1.0 ) * 0.5 ;
#line 232
float depth_s1 = SampleDepth ( uv_s1_01 ) ;
#line 235
float3 vpos_s2 = ReconstructViewPos ( uv_s1_01 , depth_s1 , p11_22 , p13_31 ) ;
float3 v_s2 = vpos_s2 - vpos_o ;
#line 239
float a1 = max ( dot ( v_s2 , norm_o ) - kBeta * depth_o , 0.0 ) ;
float a2 = dot ( v_s2 , v_s2 ) + 1.0e-4 ;
ao += a1 / a2 ;
}

ao *= _AOParams . y ;
#line 247
ao = PositivePow ( ao * _AOParams . x / _AOParams . w , kContrast ) ;
#line 256
return PackAONormal ( ao , norm_o ) ;
}
#line 260
float4 FragBlur ( VaryingsDefault i ) : SV_Target
{
#line 269
float2 delta = float2 ( 0.0 , _MainTex_TexelSize . y / _AOParams . z * 2.0 ) ;
#line 312
half4 p0 = _MainTex . Sample ( sampler_MainTex , i . texcoordStereo ) ;
half4 p1a = _MainTex . Sample ( sampler_MainTex , UnityStereoTransformScreenSpaceTex ( i . texcoord - delta * 1.3846153846 ) ) ;
half4 p1b = _MainTex . Sample ( sampler_MainTex , UnityStereoTransformScreenSpaceTex ( i . texcoord + delta * 1.3846153846 ) ) ;
half4 p2a = _MainTex . Sample ( sampler_MainTex , UnityStereoTransformScreenSpaceTex ( i . texcoord - delta * 3.2307692308 ) ) ;
half4 p2b = _MainTex . Sample ( sampler_MainTex , UnityStereoTransformScreenSpaceTex ( i . texcoord + delta * 3.2307692308 ) ) ;
#line 321
half3 n0 = GetPackedNormal ( p0 ) ;
#line 324
half w0 = 0.2270270270 ;
half w1a = CompareNormal ( n0 , GetPackedNormal ( p1a ) ) * 0.3162162162 ;
half w1b = CompareNormal ( n0 , GetPackedNormal ( p1b ) ) * 0.3162162162 ;
half w2a = CompareNormal ( n0 , GetPackedNormal ( p2a ) ) * 0.0702702703 ;
half w2b = CompareNormal ( n0 , GetPackedNormal ( p2b ) ) * 0.0702702703 ;

half s ;
s = GetPackedAO ( p0 ) * w0 ;
s += GetPackedAO ( p1a ) * w1a ;
s += GetPackedAO ( p1b ) * w1b ;
s += GetPackedAO ( p2a ) * w2a ;
s += GetPackedAO ( p2b ) * w2b ;

s /= w0 + w1a + w1b + w2a + w2b ;
#line 341
return PackAONormal ( s , n0 ) ;
}
#line 345
half EncodeAO ( half x )
{
#line 350
return x ;

}
#line 355
half BlurSmall ( Texture2D tex , SamplerState samp , float2 uv , float2 delta )
{
half4 p0 = tex . Sample ( samp , UnityStereoTransformScreenSpaceTex ( uv ) ) ;
half4 p1 = tex . Sample ( samp , UnityStereoTransformScreenSpaceTex ( uv + float2 ( - delta . x , - delta . y ) ) ) ;
half4 p2 = tex . Sample ( samp , UnityStereoTransformScreenSpaceTex ( uv + float2 ( delta . x , - delta . y ) ) ) ;
half4 p3 = tex . Sample ( samp , UnityStereoTransformScreenSpaceTex ( uv + float2 ( - delta . x , delta . y ) ) ) ;
half4 p4 = tex . Sample ( samp , UnityStereoTransformScreenSpaceTex ( uv + float2 ( delta . x , delta . y ) ) ) ;

half3 n0 = GetPackedNormal ( p0 ) ;

half w0 = 1.0 ;
half w1 = CompareNormal ( n0 , GetPackedNormal ( p1 ) ) ;
half w2 = CompareNormal ( n0 , GetPackedNormal ( p2 ) ) ;
half w3 = CompareNormal ( n0 , GetPackedNormal ( p3 ) ) ;
half w4 = CompareNormal ( n0 , GetPackedNormal ( p4 ) ) ;

half s ;
s = GetPackedAO ( p0 ) * w0 ;
s += GetPackedAO ( p1 ) * w1 ;
s += GetPackedAO ( p2 ) * w2 ;
s += GetPackedAO ( p3 ) * w3 ;
s += GetPackedAO ( p4 ) * w4 ;

return s / ( w0 + w1 + w2 + w3 + w4 ) ;
}
#line 382
float4 FragComposition ( VaryingsDefault i ) : SV_Target
{
float2 delta = _SAOcclusionTexture_TexelSize . xy / _AOParams . z ;
half ao = BlurSmall ( _SAOcclusionTexture , sampler_SAOcclusionTexture , i . texcoord , delta ) ;
ao = EncodeAO ( ao ) ;
return float4 ( ao * _AOColor , ao ) ;
}
#line 392
struct CompositionOutput
{
half4 gbuffer0 : SV_Target0 ;
half4 gbuffer3 : SV_Target1 ;
} ;

CompositionOutput FragCompositionGBuffer ( VaryingsDefault i )
{
#line 402
float2 delta = ( _ScreenParams . zw - 1.0 ) / _AOParams . z ;
half ao = BlurSmall ( _SAOcclusionTexture , sampler_SAOcclusionTexture , i . texcoord , delta ) ;

CompositionOutput o ;
o . gbuffer0 = half4 ( 0.0 , 0.0 , 0.0 , ao ) ;
o . gbuffer3 = half4 ( ( half3 ) EncodeAO ( ao ) * _AOColor , 0.0 ) ;
return o ;
}
#line 420
float4 FragDebugOverlay ( VaryingsDefault i ) : SV_Target
{
float2 delta = _SAOcclusionTexture_TexelSize . xy / _AOParams . z ;
half ao = BlurSmall ( _SAOcclusionTexture , sampler_SAOcclusionTexture , i . texcoord , delta ) ;
ao = EncodeAO ( ao ) ;
return float4 ( 1.0 - ao . xxx , 1.0 ) ;
}
