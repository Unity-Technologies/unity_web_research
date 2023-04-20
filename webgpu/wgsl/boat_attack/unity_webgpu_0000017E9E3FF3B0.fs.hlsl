#line 121 "D:/src/unity_webgpu/Shaders/Includes/HLSLSupport.cginc"
#pragma warning ( disable : 3205 )
#pragma warning ( disable : 3568 )
#pragma warning ( disable : 3571 )
#pragma warning ( disable : 3206 )
#line 40 "D:/src/unity_webgpu/Shaders/Includes/UnityShaderVariables.cginc"
float4 _Time ;
float4 _SinTime ;
float4 _CosTime ;
float4 unity_DeltaTime ;
#line 46
float3 _WorldSpaceCameraPos ;
#line 53
float4 _ProjectionParams ;
#line 59
float4 _ScreenParams ;
#line 71
float4 _ZBufferParams ;
#line 77
float4 unity_OrthoParams ;
#line 86
float4 unity_CameraWorldClipPlanes [ 6 ] ;
#line 92
float4x4 unity_CameraProjection ;
float4x4 unity_CameraInvProjection ;
float4x4 unity_WorldToCamera ;
float4x4 unity_CameraToWorld ;
#line 108
float4 _WorldSpaceLightPos0 ;
#line 111
float4 _LightPositionRange ;
float4 _LightProjectionParams ;

float4 unity_4LightPosX0 ;
float4 unity_4LightPosY0 ;
float4 unity_4LightPosZ0 ;
float4 unity_4LightAtten0 ;

float4 unity_LightColor [ 8 ] ;
#line 122
float4 unity_LightPosition [ 8 ] ;
#line 127
float4 unity_LightAtten [ 8 ] ;
float4 unity_SpotDirection [ 8 ] ;
#line 131
float4 unity_SHAr ;
float4 unity_SHAg ;
float4 unity_SHAb ;
float4 unity_SHBr ;
float4 unity_SHBg ;
float4 unity_SHBb ;
float4 unity_SHC ;
#line 140
float4 unity_OcclusionMaskSelector ;
float4 unity_ProbesOcclusion ;
#line 145
float3 unity_LightColor0 , unity_LightColor1 , unity_LightColor2 , unity_LightColor3 ;
#line 152
float4 unity_ShadowSplitSpheres [ 4 ] ;
float4 unity_ShadowSplitSqRadii ;
float4 unity_LightShadowBias ;
float4 _LightSplitsNear ;
float4 _LightSplitsFar ;
float4x4 unity_WorldToShadow [ 4 ] ;
float4 _LightShadowData ;
float4 unity_ShadowFadeCenterAndType ;
#line 165
float4x4 unity_ObjectToWorld ;
float4x4 unity_WorldToObject ;
float4 unity_LODFade ;
float4 unity_WorldTransformParams ;
float4 unity_RenderingLayer ;
#line 201
float4x4 glstate_matrix_transpose_modelview0 ;
#line 209
float4 glstate_lightmodel_ambient ;
float4 unity_AmbientSky ;
float4 unity_AmbientEquator ;
float4 unity_AmbientGround ;
float4 unity_IndirectSpecColor ;
#line 216
float4x4 glstate_matrix_projection ;
float4x4 unity_MatrixV ;
float4x4 unity_MatrixInvV ;
float4x4 unity_MatrixVP ;
int unity_StereoEyeIndex ;
#line 223
float4 unity_ShadowColor ;
#line 230
float4 unity_FogColor ;
#line 235
float4 unity_FogParams ;
#line 243
Texture2D < float4 > unity_Lightmap ; SamplerState samplerunity_Lightmap ;

Texture2D < float4 > unity_LightmapInd ;

Texture2D unity_ShadowMask ; SamplerState samplerunity_ShadowMask ;
#line 250
Texture2D unity_DynamicLightmap ; SamplerState samplerunity_DynamicLightmap ;
Texture2D unity_DynamicDirectionality ;
Texture2D unity_DynamicNormal ;
#line 255
float4 unity_LightmapST ;
float4 unity_DynamicLightmapST ;
#line 263
TextureCube unity_SpecCube0 ; SamplerState samplerunity_SpecCube0 ;
TextureCube unity_SpecCube1 ;
#line 267
float4 unity_SpecCube0_BoxMax ;
float4 unity_SpecCube0_BoxMin ;
float4 unity_SpecCube0_ProbePosition ;
float4 unity_SpecCube0_HDR ;

float4 unity_SpecCube1_BoxMax ;
float4 unity_SpecCube1_BoxMin ;
float4 unity_SpecCube1_ProbePosition ;
float4 unity_SpecCube1_HDR ;
#line 310
static float4x4 unity_MatrixMVP = mul ( unity_MatrixVP , unity_ObjectToWorld ) ;
static float4x4 unity_MatrixMV = mul ( unity_MatrixV , unity_ObjectToWorld ) ;
static float4x4 unity_MatrixTMV = transpose ( unity_MatrixMV ) ;
static float4x4 unity_MatrixITMV = transpose ( mul ( unity_WorldToObject , unity_MatrixInvV ) ) ;
#line 8 "D:/src/unity_webgpu/Shaders/Includes/UnityShaderUtilities.cginc"
float3 ODSOffset ( float3 worldPos , float ipd )
{

const float EPSILON = 2.4414e-4 ;
float3 worldUp = float3 ( 0.0 , 1.0 , 0.0 ) ;
float3 camOffset = worldPos . xyz - _WorldSpaceCameraPos . xyz ;
float4 direction = float4 ( camOffset . xyz , dot ( camOffset . xyz , camOffset . xyz ) ) ;
direction . w = max ( EPSILON , direction . w ) ;
direction *= rsqrt ( direction . w ) ;

float3 tangent = cross ( direction . xyz , worldUp . xyz ) ;
if ( dot ( tangent , tangent ) < EPSILON )
return float3 ( 0 , 0 , 0 ) ;
tangent = normalize ( tangent ) ;

float directionMinusIPD = max ( EPSILON , direction . w * direction . w - ipd * ipd ) ;
float a = ipd * ipd / direction . w ;
float b = ipd / direction . w * sqrt ( directionMinusIPD ) ;
float3 offset = - a * direction . xyz + b * tangent ;
return offset ;
}

inline float4 UnityObjectToClipPosODS ( float3 inPos )
{
float4 clipPos ;
float3 posWorld = mul ( unity_ObjectToWorld , float4 ( inPos , 1.0 ) ) . xyz ;
#line 38
clipPos = mul ( unity_MatrixVP , float4 ( posWorld , 1.0 ) ) ;

return clipPos ;
}
#line 44
inline float4 UnityObjectToClipPos ( in float3 pos )
{
#line 50
return mul ( unity_MatrixVP , mul ( unity_ObjectToWorld , float4 ( pos , 1.0 ) ) ) ;

}
inline float4 UnityObjectToClipPos ( float4 pos )
{
return UnityObjectToClipPos ( pos . xyz ) ;
}
#line 11 ""
Texture2D_float _ShadowMapTexture ; SamplerComparisonState sampler_ShadowMapTexture ;
float4 _ShadowMapTexture_TexelSize ;

sampler2D _ODSWorldTexture ;
#line 58 "D:/src/unity_webgpu/Shaders/Includes/UnityCG.cginc"
struct appdata_base {
float4 vertex : POSITION ;
float3 normal : NORMAL ;
float4 texcoord : TEXCOORD0 ;

} ;

struct appdata_tan {
float4 vertex : POSITION ;
float4 tangent : TANGENT ;
float3 normal : NORMAL ;
float4 texcoord : TEXCOORD0 ;

} ;

struct appdata_full {
float4 vertex : POSITION ;
float4 tangent : TANGENT ;
float3 normal : NORMAL ;
float4 texcoord : TEXCOORD0 ;
float4 texcoord1 : TEXCOORD1 ;
float4 texcoord2 : TEXCOORD2 ;
float4 texcoord3 : TEXCOORD3 ;
float4 color : COLOR ;

} ;
#line 86
inline bool IsGammaSpace ( )
{
#line 91
return false ;

}

inline float GammaToLinearSpaceExact ( float value )
{
if ( value <= 0.04045F )
return value / 12.92F ;
else if ( value < 1.0F )
return pow ( ( value + 0.055F ) / 1.055F , 2.4F ) ;
else
return pow ( value , 2.2F ) ;
}

inline float3 GammaToLinearSpace ( float3 sRGB )
{

return sRGB * ( sRGB * ( sRGB * 0.305306011h + 0.682171111h ) + 0.012522878h ) ;
#line 112
}

inline float LinearToGammaSpaceExact ( float value )
{
if ( value <= 0.0F )
return 0.0F ;
else if ( value <= 0.0031308F )
return 12.92F * value ;
else if ( value < 1.0F )
return 1.055F * pow ( value , 0.4166667F ) - 0.055F ;
else
return pow ( value , 0.45454545F ) ;
}

inline float3 LinearToGammaSpace ( float3 linRGB )
{
linRGB = max ( linRGB , float3 ( 0.h , 0.h , 0.h ) ) ;

return max ( 1.055h * pow ( linRGB , 0.416666667h ) - 0.055h , 0.h ) ;
#line 134
}
#line 137
inline float4 UnityWorldToClipPos ( in float3 pos )
{
return mul ( unity_MatrixVP , float4 ( pos , 1.0 ) ) ;
}
#line 143
inline float4 UnityViewToClipPos ( in float3 pos )
{
return mul ( glstate_matrix_projection , float4 ( pos , 1.0 ) ) ;
}
#line 149
inline float3 UnityObjectToViewPos ( in float3 pos )
{
return mul ( unity_MatrixV , mul ( unity_ObjectToWorld , float4 ( pos , 1.0 ) ) ) . xyz ;
}
inline float3 UnityObjectToViewPos ( float4 pos )
{
return UnityObjectToViewPos ( pos . xyz ) ;
}
#line 159
inline float3 UnityWorldToViewPos ( in float3 pos )
{
return mul ( unity_MatrixV , float4 ( pos , 1.0 ) ) . xyz ;
}
#line 165
inline float3 UnityObjectToWorldDir ( in float3 dir )
{
return normalize ( mul ( ( float3x3 ) unity_ObjectToWorld , dir ) ) ;
}
#line 171
inline float3 UnityWorldToObjectDir ( in float3 dir )
{
return normalize ( mul ( ( float3x3 ) unity_WorldToObject , dir ) ) ;
}
#line 177
inline float3 UnityObjectToWorldNormal ( in float3 norm )
{
#line 183
return normalize ( mul ( norm , ( float3x3 ) unity_WorldToObject ) ) ;

}
#line 188
inline float3 UnityWorldSpaceLightDir ( in float3 worldPos )
{

return _WorldSpaceLightPos0 . xyz - worldPos * _WorldSpaceLightPos0 . w ;
#line 199
}
#line 203
inline float3 WorldSpaceLightDir ( in float4 localPos )
{
float3 worldPos = mul ( unity_ObjectToWorld , localPos ) . xyz ;
return UnityWorldSpaceLightDir ( worldPos ) ;
}
#line 210
inline float3 ObjSpaceLightDir ( in float4 v )
{
float3 objSpaceLightPos = mul ( unity_WorldToObject , _WorldSpaceLightPos0 ) . xyz ;

return objSpaceLightPos . xyz - v . xyz * _WorldSpaceLightPos0 . w ;
#line 222
}
#line 225
inline float3 UnityWorldSpaceViewDir ( in float3 worldPos )
{
return _WorldSpaceCameraPos . xyz - worldPos ;
}
#line 232
inline float3 WorldSpaceViewDir ( in float4 localPos )
{
float3 worldPos = mul ( unity_ObjectToWorld , localPos ) . xyz ;
return UnityWorldSpaceViewDir ( worldPos ) ;
}
#line 239
inline float3 ObjSpaceViewDir ( in float4 v )
{
float3 objSpaceCameraPos = mul ( unity_WorldToObject , float4 ( _WorldSpaceCameraPos . xyz , 1 ) ) . xyz ;
return objSpaceCameraPos - v . xyz ;
}
#line 253
float3 Shade4PointLights (
float4 lightPosX , float4 lightPosY , float4 lightPosZ ,
float3 lightColor0 , float3 lightColor1 , float3 lightColor2 , float3 lightColor3 ,
float4 lightAttenSq ,
float3 pos , float3 normal )
{

float4 toLightX = lightPosX - pos . x ;
float4 toLightY = lightPosY - pos . y ;
float4 toLightZ = lightPosZ - pos . z ;

float4 lengthSq = 0 ;
lengthSq += toLightX * toLightX ;
lengthSq += toLightY * toLightY ;
lengthSq += toLightZ * toLightZ ;

lengthSq = max ( lengthSq , 0.000001 ) ;
#line 272
float4 ndotl = 0 ;
ndotl += toLightX * normal . x ;
ndotl += toLightY * normal . y ;
ndotl += toLightZ * normal . z ;

float4 corr = rsqrt ( lengthSq ) ;
ndotl = max ( float4 ( 0 , 0 , 0 , 0 ) , ndotl * corr ) ;

float4 atten = 1.0 / ( 1.0 + lengthSq * lightAttenSq ) ;
float4 diff = ndotl * atten ;

float3 col = 0 ;
col += lightColor0 * diff . x ;
col += lightColor1 * diff . y ;
col += lightColor2 * diff . z ;
col += lightColor3 * diff . w ;
return col ;
}
#line 293
float3 ShadeVertexLightsFull ( float4 vertex , float3 normal , int lightCount , bool spotLight )
{
float3 viewpos = UnityObjectToViewPos ( vertex . xyz ) ;
float3 viewN = normalize ( mul ( ( float3x3 ) unity_MatrixITMV , normal ) ) ;

float3 lightColor = ( glstate_lightmodel_ambient * 2 ) . xyz ;
for ( int i = 0 ; i < lightCount ; i ++ ) {
float3 toLight = unity_LightPosition [ i ] . xyz - viewpos . xyz * unity_LightPosition [ i ] . w ;
float lengthSq = dot ( toLight , toLight ) ;
#line 304
lengthSq = max ( lengthSq , 0.000001 ) ;

toLight *= rsqrt ( lengthSq ) ;

float atten = 1.0 / ( 1.0 + lengthSq * unity_LightAtten [ i ] . z ) ;
if ( spotLight )
{
float rho = max ( 0 , dot ( toLight , unity_SpotDirection [ i ] . xyz ) ) ;
float spotAtt = ( rho - unity_LightAtten [ i ] . x ) * unity_LightAtten [ i ] . y ;
atten *= saturate ( spotAtt ) ;
}

float diff = max ( 0 , dot ( viewN , toLight ) ) ;
lightColor += unity_LightColor [ i ] . rgb * ( diff * atten ) ;
}
return lightColor ;
}

float3 ShadeVertexLights ( float4 vertex , float3 normal )
{
return ShadeVertexLightsFull ( vertex , normal , 4 , false ) ;
}
#line 328
float3 SHEvalLinearL0L1 ( float4 normal )
{
float3 x ;
#line 333
x . r = dot ( unity_SHAr , normal ) ;
x . g = dot ( unity_SHAg , normal ) ;
x . b = dot ( unity_SHAb , normal ) ;

return x ;
}
#line 341
float3 SHEvalLinearL2 ( float4 normal )
{
float3 x1 , x2 ;

float4 vB = normal . xyzz * normal . yzzx ;
x1 . r = dot ( unity_SHBr , vB ) ;
x1 . g = dot ( unity_SHBg , vB ) ;
x1 . b = dot ( unity_SHBb , vB ) ;
#line 351
float vC = normal . x * normal . x - normal . y * normal . y ;
x2 = unity_SHC . rgb * vC ;

return x1 + x2 ;
}
#line 359
float3 ShadeSH9 ( float4 normal )
{

float3 res = SHEvalLinearL0L1 ( normal ) ;
#line 365
res += SHEvalLinearL2 ( normal ) ;
#line 371
return res ;
}
#line 375
float3 ShadeSH3Order ( float4 normal )
{

float3 res = SHEvalLinearL2 ( normal ) ;
#line 384
return res ;
}
#line 429
float3 ShadeSH12Order ( float4 normal )
{

float3 res = SHEvalLinearL0L1 ( normal ) ;
#line 438
return res ;
}
#line 449
struct v2f_vertex_lit {
float2 uv : TEXCOORD0 ;
float4 diff : COLOR0 ;
float4 spec : COLOR1 ;
} ;

inline float4 VertexLight ( v2f_vertex_lit i , sampler2D mainTex )
{
float4 texcol = tex2D ( mainTex , i . uv ) ;
float4 c ;
c . xyz = ( texcol . xyz * i . diff . xyz + i . spec . xyz * texcol . a ) ;
c . w = texcol . w * i . diff . w ;
return c ;
}
#line 466
inline float2 ParallaxOffset ( float h , float height , float3 viewDir )
{
h = h * height - height / 2.0 ;
float3 v = normalize ( viewDir ) ;
v . z += 0.42 ;
return h * ( v . xy / v . z ) ;
}
#line 475
inline float Luminance ( float3 rgb )
{
return dot ( rgb , float4 ( 0.0396819152 , 0.458021790 , 0.00609653955 , 1.0 ) . rgb ) ;
}
#line 482
float LinearRgbToLuminance ( float3 linearRgb )
{
return dot ( linearRgb , float3 ( 0.2126729f , 0.7151522f , 0.0721750f ) ) ;
}

float4 UnityEncodeRGBM ( float3 color , float maxRGBM )
{
float kOneOverRGBMMaxRange = 1.0 / maxRGBM ;
const float kMinMultiplier = 2.0 * 1e-2 ;

float3 rgb = color * kOneOverRGBMMaxRange ;
float alpha = max ( max ( rgb . r , rgb . g ) , max ( rgb . b , kMinMultiplier ) ) ;
alpha = ceil ( alpha * 255.0 ) / 255.0 ;
#line 497
alpha = max ( alpha , kMinMultiplier ) ;

return float4 ( rgb / alpha , alpha ) ;
}
#line 504
inline float3 DecodeHDR ( float4 data , float4 decodeInstructions , int colorspaceIsGamma )
{

float alpha = decodeInstructions . w * ( data . a - 1.0 ) + 1.0 ;
#line 510
if ( colorspaceIsGamma )
return ( decodeInstructions . x * alpha ) * data . rgb ;

return ( decodeInstructions . x * pow ( alpha , decodeInstructions . y ) ) * data . rgb ;
}
#line 518
inline float3 DecodeHDR ( float4 data , float4 decodeInstructions )
{
#line 523
return DecodeHDR ( data , decodeInstructions , 0 ) ;

}
#line 530
inline float3 DecodeLightmapRGBM ( float4 data , float4 decodeInstructions )
{
#line 540
return ( decodeInstructions . x * pow ( data . a , decodeInstructions . y ) ) * data . rgb ;

}
#line 545
inline float3 DecodeLightmapDoubleLDR ( float4 color , float4 decodeInstructions )
{

return decodeInstructions . x * color . rgb ;
}

inline float3 DecodeLightmap ( float4 color , float4 decodeInstructions )
{
#line 558
return color . rgb ;

}

float4 unity_Lightmap_HDR ;

inline float3 DecodeLightmap ( float4 color )
{
return DecodeLightmap ( color , unity_Lightmap_HDR ) ;
}

float4 unity_DynamicLightmap_HDR ;
#line 576
inline float3 DecodeRealtimeLightmap ( float4 color )
{
#line 582
return pow ( ( unity_DynamicLightmap_HDR . x * color . a ) * color . rgb , unity_DynamicLightmap_HDR . y ) ;

}

inline float3 DecodeDirectionalLightmap ( float3 color , float4 dirTex , float3 normalWorld )
{
#line 595
float halfLambert = dot ( normalWorld , dirTex . xyz - 0.5 ) + 0.5 ;

return color * halfLambert / max ( 1e-4h , dirTex . w ) ;
}
#line 601
inline float4 EncodeFloatRGBA ( float v )
{
float4 kEncodeMul = float4 ( 1.0 , 255.0 , 65025.0 , 16581375.0 ) ;
float kEncodeBit = 1.0 / 255.0 ;
float4 enc = kEncodeMul * v ;
enc = frac ( enc ) ;
enc -= enc . yzww * kEncodeBit ;
return enc ;
}
inline float DecodeFloatRGBA ( float4 enc )
{
float4 kDecodeDot = float4 ( 1.0 , 1 / 255.0 , 1 / 65025.0 , 1 / 16581375.0 ) ;
return dot ( enc , kDecodeDot ) ;
}
#line 617
inline float2 EncodeFloatRG ( float v )
{
float2 kEncodeMul = float2 ( 1.0 , 255.0 ) ;
float kEncodeBit = 1.0 / 255.0 ;
float2 enc = kEncodeMul * v ;
enc = frac ( enc ) ;
enc . x -= enc . y * kEncodeBit ;
return enc ;
}
inline float DecodeFloatRG ( float2 enc )
{
float2 kDecodeDot = float2 ( 1.0 , 1 / 255.0 ) ;
return dot ( enc , kDecodeDot ) ;
}
#line 634
inline float2 EncodeViewNormalStereo ( float3 n )
{
float kScale = 1.7777 ;
float2 enc ;
enc = n . xy / ( n . z + 1 ) ;
enc /= kScale ;
enc = enc * 0.5 + 0.5 ;
return enc ;
}
inline float3 DecodeViewNormalStereo ( float4 enc4 )
{
float kScale = 1.7777 ;
float3 nn = enc4 . xyz * float3 ( 2 * kScale , 2 * kScale , 0 ) + float3 ( - kScale , - kScale , 1 ) ;
float g = 2.0 / dot ( nn . xyz , nn . xyz ) ;
float3 n ;
n . xy = g * nn . xy ;
n . z = g - 1 ;
return n ;
}

inline float4 EncodeDepthNormal ( float depth , float3 normal )
{
float4 enc ;
enc . xy = EncodeViewNormalStereo ( normal ) ;
enc . zw = EncodeFloatRG ( depth ) ;
return enc ;
}

inline void DecodeDepthNormal ( float4 enc , out float depth , out float3 normal )
{
depth = DecodeFloatRG ( enc . zw ) ;
normal = DecodeViewNormalStereo ( enc ) ;
}

inline float3 UnpackNormalDXT5nm ( float4 packednormal )
{
float3 normal ;
normal . xy = packednormal . wy * 2 - 1 ;
normal . z = sqrt ( 1 - saturate ( dot ( normal . xy , normal . xy ) ) ) ;
return normal ;
}
#line 678
float3 UnpackNormalmapRGorAG ( float4 packednormal )
{

packednormal . x *= packednormal . w ;

float3 normal ;
normal . xy = packednormal . xy * 2 - 1 ;
normal . z = sqrt ( 1 - saturate ( dot ( normal . xy , normal . xy ) ) ) ;
return normal ;
}
inline float3 UnpackNormal ( float4 packednormal )
{
#line 695
return UnpackNormalmapRGorAG ( packednormal ) ;

}

float3 UnpackNormalWithScale ( float4 packednormal , float scale )
{
#line 707
packednormal . x *= packednormal . w ;

float3 normal ;
normal . xy = ( packednormal . xy * 2 - 1 ) * scale ;
normal . z = sqrt ( 1 - saturate ( dot ( normal . xy , normal . xy ) ) ) ;
return normal ;
}
#line 716
inline float Linear01Depth ( float z )
{
return 1.0 / ( _ZBufferParams . x * z + _ZBufferParams . y ) ;
}

inline float LinearEyeDepth ( float z )
{
return 1.0 / ( _ZBufferParams . z * z + _ZBufferParams . w ) ;
}
#line 727
inline float2 UnityStereoScreenSpaceUVAdjustInternal ( float2 uv , float4 scaleAndOffset )
{
return uv . xy * scaleAndOffset . xy + scaleAndOffset . zw ;
}

inline float4 UnityStereoScreenSpaceUVAdjustInternal ( float4 uv , float4 scaleAndOffset )
{
return float4 ( UnityStereoScreenSpaceUVAdjustInternal ( uv . xy , scaleAndOffset ) , UnityStereoScreenSpaceUVAdjustInternal ( uv . zw , scaleAndOffset ) ) ;
}
#line 774
struct appdata_img
{
float4 vertex : POSITION ;
float2 texcoord : TEXCOORD0 ;

} ;

struct v2f_img
{
float4 pos : SV_POSITION ;
float2 uv : TEXCOORD0 ;
#line 787
} ;

float2 MultiplyUV ( float4x4 mat , float2 inUV ) {
float4 temp = float4 ( inUV . x , inUV . y , 0 , 0 ) ;
temp = mul ( mat , temp ) ;
return temp . xy ;
}

v2f_img vert_img ( appdata_img v )
{
v2f_img o ;
o = ( v2f_img ) 0 ; ;
;
;

o . pos = UnityObjectToClipPos ( v . vertex ) ;
o . uv = v . texcoord ;
return o ;
}
#line 810
inline float4 ComputeNonStereoScreenPos ( float4 pos ) {
float4 o = pos * 0.5f ;
#line 821
o . xy = float2 ( o . x , o . y * _ProjectionParams . x ) + o . w ;
o . zw = pos . zw ;
return o ;
}

inline float4 ComputeScreenPos ( float4 pos ) {
float4 o = ComputeNonStereoScreenPos ( pos ) ;
#line 831
return o ;
}

inline float4 ComputeGrabScreenPos ( float4 pos ) {

float scale = - 1.0 ;
#line 840
float4 o = pos * 0.5f ;
#line 850
o . xy = float2 ( o . x , o . y * scale ) + o . w ;
#line 854
o . zw = pos . zw ;
return o ;
}
#line 859
inline float4 UnityPixelSnap ( float4 pos )
{
float2 hpc = _ScreenParams . xy * 0.5f ;
#line 867
float2 pixelPos = round ( ( pos . xy / pos . w ) * hpc ) ;

pos . xy = pixelPos / hpc * pos . w ;
return pos ;
}

inline float2 TransformViewToProjection ( float2 v ) {
return mul ( ( float2x2 ) glstate_matrix_projection , v ) ;
}

inline float3 TransformViewToProjection ( float3 v ) {
return mul ( ( float3x3 ) glstate_matrix_projection , v ) ;
}
#line 883
float4 UnityEncodeCubeShadowDepth ( float z )
{
#line 888
return z ;

}

float UnityDecodeCubeShadowDepth ( float4 vals )
{
#line 897
return vals . r ;

}
#line 902
float4 UnityClipSpaceShadowCasterPos ( float4 vertex , float3 normal )
{
float4 wPos = mul ( unity_ObjectToWorld , vertex ) ;

if ( unity_LightShadowBias . z != 0.0 )
{
float3 wNormal = UnityObjectToWorldNormal ( normal ) ;
float3 wLight = normalize ( UnityWorldSpaceLightDir ( wPos . xyz ) ) ;
#line 918
float shadowCos = dot ( wNormal , wLight ) ;
float shadowSine = sqrt ( 1 - shadowCos * shadowCos ) ;
float normalBias = unity_LightShadowBias . z * shadowSine ;

wPos . xyz -= wNormal * normalBias ;
}

return mul ( unity_MatrixVP , wPos ) ;
}

float4 UnityClipSpaceShadowCasterPos ( float3 vertex , float3 normal )
{
return UnityClipSpaceShadowCasterPos ( float4 ( vertex , 1 ) , normal ) ;
}
#line 934
float4 UnityApplyLinearShadowBias ( float4 clipPos )

{
#line 944
clipPos . z += max ( - 1 , min ( unity_LightShadowBias . x / clipPos . w , 0 ) ) ;
#line 951
float clamped = min ( clipPos . z , clipPos . w * ( 1.0 ) ) ;
#line 955
clipPos . z = lerp ( clipPos . z , clamped , unity_LightShadowBias . y ) ;
return clipPos ;
}
#line 1223
float4 PackHeightmap ( float height )
{
#line 1228
uint a = ( uint ) ( 65535.0f * height ) ;
return float4 ( ( a >> 0 ) & 0xFF , ( a >> 8 ) & 0xFF , 0 , 0 ) / 255.0f ;

}

float UnpackHeightmap ( float4 height )
{
#line 1238
return ( height . r + height . g * 256.0f ) / 257.0f ;

}
#line 15 "D:/src/unity_webgpu/Shaders/Includes/UnityShadowLibrary.cginc"
float UnitySampleShadowmap_PCF7x7 ( float4 coord , float3 receiverPlaneDepthBias ) ;
float UnitySampleShadowmap_PCF5x5 ( float4 coord , float3 receiverPlaneDepthBias ) ;
float UnitySampleShadowmap_PCF3x3 ( float4 coord , float3 receiverPlaneDepthBias ) ;
float3 UnityGetReceiverPlaneDepthBias ( float3 shadowCoord , float biasbiasMultiply ) ;
#line 190
float UnitySampleBakedOcclusion ( float2 lightmapUV , float3 worldPos )
{
#line 211
float atten = 1.0f ;
#line 224
return atten ;

}
#line 230
float4 UnityGetRawBakedOcclusions ( float2 lightmapUV , float3 worldPos )
{
#line 246
return float4 ( 1.0 , 1.0 , 1.0 , 1.0 ) ;

}
#line 252
float UnityMixRealtimeAndBakedShadows ( float realtimeShadowAttenuation , float bakedShadowAttenuation , float fade )
{
#line 288
return bakedShadowAttenuation ;
#line 308
return lerp ( realtimeShadowAttenuation , bakedShadowAttenuation , fade ) ;
}
#line 315
float UnityComputeShadowFadeDistance ( float3 wpos , float z )
{
float sphereDist = distance ( wpos , unity_ShadowFadeCenterAndType . xyz ) ;
return lerp ( z , sphereDist , unity_ShadowFadeCenterAndType . w ) ;
}
#line 322
float UnityComputeShadowFade ( float fadeDist )
{
return saturate ( fadeDist * _LightShadowData . z + _LightShadowData . w ) ;
}
#line 338
float3 UnityGetReceiverPlaneDepthBias ( float3 shadowCoord , float biasMultiply )
{
#line 344
float3 biasUVZ = 0 ;
#line 363
return biasUVZ ;
}
#line 370
float3 UnityCombineShadowcoordComponents ( float2 baseUV , float2 deltaUV , float depth , float3 receiverPlaneDepthBias )
{
float3 uv = float3 ( baseUV + deltaUV , depth + receiverPlaneDepthBias . z ) ;
uv . z += dot ( deltaUV , receiverPlaneDepthBias . xy ) ;
return uv ;
}
#line 390
float _UnityInternalGetAreaAboveFirstTexelUnderAIsocelesRectangleTriangle ( float triangleHeight )
{
return triangleHeight - 0.5 ;
}
#line 404
void _UnityInternalGetAreaPerTexel_3TexelsWideTriangleFilter ( float offset , out float4 computedArea , out float4 computedAreaUncut )
{

float offset01SquaredHalved = ( offset + 0.5 ) * ( offset + 0.5 ) * 0.5 ;
computedAreaUncut . x = computedArea . x = offset01SquaredHalved - offset ;
computedAreaUncut . w = computedArea . w = offset01SquaredHalved ;
#line 414
computedAreaUncut . y = _UnityInternalGetAreaAboveFirstTexelUnderAIsocelesRectangleTriangle ( 1.5 - offset ) ;
#line 417
float clampedOffsetLeft = min ( offset , 0 ) ;
float areaOfSmallLeftTriangle = clampedOffsetLeft * clampedOffsetLeft ;
computedArea . y = computedAreaUncut . y - areaOfSmallLeftTriangle ;
#line 422
computedAreaUncut . z = _UnityInternalGetAreaAboveFirstTexelUnderAIsocelesRectangleTriangle ( 1.5 + offset ) ;
float clampedOffsetRight = max ( offset , 0 ) ;
float areaOfSmallRightTriangle = clampedOffsetRight * clampedOffsetRight ;
computedArea . z = computedAreaUncut . z - areaOfSmallRightTriangle ;
}
#line 432
void _UnityInternalGetWeightPerTexel_3TexelsWideTriangleFilter ( float offset , out float4 computedWeight )
{
float4 dummy ;
_UnityInternalGetAreaPerTexel_3TexelsWideTriangleFilter ( offset , computedWeight , dummy ) ;
computedWeight *= 0.44444 ;
}
#line 446
void _UnityInternalGetWeightPerTexel_5TexelsWideTriangleFilter ( float offset , out float3 texelsWeightsA , out float3 texelsWeightsB )
{

float4 computedArea_From3texelTriangle ;
float4 computedAreaUncut_From3texelTriangle ;
_UnityInternalGetAreaPerTexel_3TexelsWideTriangleFilter ( offset , computedArea_From3texelTriangle , computedAreaUncut_From3texelTriangle ) ;
#line 456
texelsWeightsA . x = 0.16 * ( computedArea_From3texelTriangle . x ) ;
texelsWeightsA . y = 0.16 * ( computedAreaUncut_From3texelTriangle . y ) ;
texelsWeightsA . z = 0.16 * ( computedArea_From3texelTriangle . y + 1 ) ;
texelsWeightsB . x = 0.16 * ( computedArea_From3texelTriangle . z + 1 ) ;
texelsWeightsB . y = 0.16 * ( computedAreaUncut_From3texelTriangle . z ) ;
texelsWeightsB . z = 0.16 * ( computedArea_From3texelTriangle . w ) ;
}
#line 471
void _UnityInternalGetWeightPerTexel_7TexelsWideTriangleFilter ( float offset , out float4 texelsWeightsA , out float4 texelsWeightsB )
{

float4 computedArea_From3texelTriangle ;
float4 computedAreaUncut_From3texelTriangle ;
_UnityInternalGetAreaPerTexel_3TexelsWideTriangleFilter ( offset , computedArea_From3texelTriangle , computedAreaUncut_From3texelTriangle ) ;
#line 481
texelsWeightsA . x = 0.081632 * ( computedArea_From3texelTriangle . x ) ;
texelsWeightsA . y = 0.081632 * ( computedAreaUncut_From3texelTriangle . y ) ;
texelsWeightsA . z = 0.081632 * ( computedAreaUncut_From3texelTriangle . y + 1 ) ;
texelsWeightsA . w = 0.081632 * ( computedArea_From3texelTriangle . y + 2 ) ;
texelsWeightsB . x = 0.081632 * ( computedArea_From3texelTriangle . z + 2 ) ;
texelsWeightsB . y = 0.081632 * ( computedAreaUncut_From3texelTriangle . z + 1 ) ;
texelsWeightsB . z = 0.081632 * ( computedAreaUncut_From3texelTriangle . z ) ;
texelsWeightsB . w = 0.081632 * ( computedArea_From3texelTriangle . w ) ;
}
#line 498
float UnitySampleShadowmap_PCF3x3NoHardwareSupport ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 505
float2 base_uv = coord . xy ;
float2 ts = _ShadowMapTexture_TexelSize . xy ;
shadow = 0 ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , - ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , 0 ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , 0 ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , 0 ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , 0 ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , 0 ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , 0 ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( - ts . x , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( 0 , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( ts . x , ts . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow /= 9.0 ;
#line 520
return shadow ;
}
#line 526
float UnitySampleShadowmap_PCF3x3Tent ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 538
float2 tentCenterInTexelSpace = coord . xy * _ShadowMapTexture_TexelSize . zw ;
float2 centerOfFetchesInTexelSpace = floor ( tentCenterInTexelSpace + 0.5 ) ;
float2 offsetFromTentCenterToCenterOfFetches = tentCenterInTexelSpace - centerOfFetchesInTexelSpace ;
#line 543
float4 texelsWeightsU , texelsWeightsV ;
_UnityInternalGetWeightPerTexel_3TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . x , texelsWeightsU ) ;
_UnityInternalGetWeightPerTexel_3TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . y , texelsWeightsV ) ;
#line 548
float2 fetchesWeightsU = texelsWeightsU . xz + texelsWeightsU . yw ;
float2 fetchesWeightsV = texelsWeightsV . xz + texelsWeightsV . yw ;
#line 552
float2 fetchesOffsetsU = texelsWeightsU . yw / fetchesWeightsU . xy + float2 ( - 1.5 , 0.5 ) ;
float2 fetchesOffsetsV = texelsWeightsV . yw / fetchesWeightsV . xy + float2 ( - 1.5 , 0.5 ) ;
fetchesOffsetsU *= _ShadowMapTexture_TexelSize . xx ;
fetchesOffsetsV *= _ShadowMapTexture_TexelSize . yy ;
#line 558
float2 bilinearFetchOrigin = centerOfFetchesInTexelSpace * _ShadowMapTexture_TexelSize . xy ;
shadow = fetchesWeightsU . x * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
#line 565
return shadow ;
}
#line 571
float UnitySampleShadowmap_PCF5x5Tent ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 583
float2 tentCenterInTexelSpace = coord . xy * _ShadowMapTexture_TexelSize . zw ;
float2 centerOfFetchesInTexelSpace = floor ( tentCenterInTexelSpace + 0.5 ) ;
float2 offsetFromTentCenterToCenterOfFetches = tentCenterInTexelSpace - centerOfFetchesInTexelSpace ;
#line 588
float3 texelsWeightsU_A , texelsWeightsU_B ;
float3 texelsWeightsV_A , texelsWeightsV_B ;
_UnityInternalGetWeightPerTexel_5TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . x , texelsWeightsU_A , texelsWeightsU_B ) ;
_UnityInternalGetWeightPerTexel_5TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . y , texelsWeightsV_A , texelsWeightsV_B ) ;
#line 594
float3 fetchesWeightsU = float3 ( texelsWeightsU_A . xz , texelsWeightsU_B . y ) + float3 ( texelsWeightsU_A . y , texelsWeightsU_B . xz ) ;
float3 fetchesWeightsV = float3 ( texelsWeightsV_A . xz , texelsWeightsV_B . y ) + float3 ( texelsWeightsV_A . y , texelsWeightsV_B . xz ) ;
#line 598
float3 fetchesOffsetsU = float3 ( texelsWeightsU_A . y , texelsWeightsU_B . xz ) / fetchesWeightsU . xyz + float3 ( - 2.5 , - 0.5 , 1.5 ) ;
float3 fetchesOffsetsV = float3 ( texelsWeightsV_A . y , texelsWeightsV_B . xz ) / fetchesWeightsV . xyz + float3 ( - 2.5 , - 0.5 , 1.5 ) ;
fetchesOffsetsU *= _ShadowMapTexture_TexelSize . xxx ;
fetchesOffsetsV *= _ShadowMapTexture_TexelSize . yyy ;
#line 604
float2 bilinearFetchOrigin = centerOfFetchesInTexelSpace * _ShadowMapTexture_TexelSize . xy ;
shadow = fetchesWeightsU . x * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
#line 616
return shadow ;
}
#line 622
float UnitySampleShadowmap_PCF7x7Tent ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 634
float2 tentCenterInTexelSpace = coord . xy * _ShadowMapTexture_TexelSize . zw ;
float2 centerOfFetchesInTexelSpace = floor ( tentCenterInTexelSpace + 0.5 ) ;
float2 offsetFromTentCenterToCenterOfFetches = tentCenterInTexelSpace - centerOfFetchesInTexelSpace ;
#line 639
float4 texelsWeightsU_A , texelsWeightsU_B ;
float4 texelsWeightsV_A , texelsWeightsV_B ;
_UnityInternalGetWeightPerTexel_7TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . x , texelsWeightsU_A , texelsWeightsU_B ) ;
_UnityInternalGetWeightPerTexel_7TexelsWideTriangleFilter ( offsetFromTentCenterToCenterOfFetches . y , texelsWeightsV_A , texelsWeightsV_B ) ;
#line 645
float4 fetchesWeightsU = float4 ( texelsWeightsU_A . xz , texelsWeightsU_B . xz ) + float4 ( texelsWeightsU_A . yw , texelsWeightsU_B . yw ) ;
float4 fetchesWeightsV = float4 ( texelsWeightsV_A . xz , texelsWeightsV_B . xz ) + float4 ( texelsWeightsV_A . yw , texelsWeightsV_B . yw ) ;
#line 649
float4 fetchesOffsetsU = float4 ( texelsWeightsU_A . yw , texelsWeightsU_B . yw ) / fetchesWeightsU . xyzw + float4 ( - 3.5 , - 1.5 , 0.5 , 2.5 ) ;
float4 fetchesOffsetsV = float4 ( texelsWeightsV_A . yw , texelsWeightsV_B . yw ) / fetchesWeightsV . xyzw + float4 ( - 3.5 , - 1.5 , 0.5 , 2.5 ) ;
fetchesOffsetsU *= _ShadowMapTexture_TexelSize . xxxx ;
fetchesOffsetsV *= _ShadowMapTexture_TexelSize . yyyy ;
#line 655
float2 bilinearFetchOrigin = centerOfFetchesInTexelSpace * _ShadowMapTexture_TexelSize . xy ;
shadow = fetchesWeightsU . x * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . w * fetchesWeightsV . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . w * fetchesWeightsV . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . w * fetchesWeightsV . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . x * fetchesWeightsV . w * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . x , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . y * fetchesWeightsV . w * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . y , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . z * fetchesWeightsV . w * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . z , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow += fetchesWeightsU . w * fetchesWeightsV . w * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( bilinearFetchOrigin , float2 ( fetchesOffsetsU . w , fetchesOffsetsV . w ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
#line 674
return shadow ;
}
#line 683
float UnitySampleShadowmap_PCF3x3Gaussian ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 694
const float2 offset = float2 ( 0.5 , 0.5 ) ;
float2 uv = ( coord . xy * _ShadowMapTexture_TexelSize . zw ) + offset ;
float2 base_uv = ( floor ( uv ) - offset ) * _ShadowMapTexture_TexelSize . xy ;
float2 st = frac ( uv ) ;

float2 uw = float2 ( 3 - 2 * st . x , 1 + 2 * st . x ) ;
float2 u = float2 ( ( 2 - st . x ) / uw . x - 1 , ( st . x ) / uw . y + 1 ) ;
u *= _ShadowMapTexture_TexelSize . x ;

float2 vw = float2 ( 3 - 2 * st . y , 1 + 2 * st . y ) ;
float2 v = float2 ( ( 2 - st . y ) / vw . x - 1 , ( st . y ) / vw . y + 1 ) ;
v *= _ShadowMapTexture_TexelSize . y ;

float sum = 0 ;

sum += uw [ 0 ] * vw [ 0 ] * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 0 ] , v [ 0 ] ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 0 ] , v [ 0 ] ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += uw [ 1 ] * vw [ 0 ] * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 1 ] , v [ 0 ] ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 1 ] , v [ 0 ] ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += uw [ 0 ] * vw [ 1 ] * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 0 ] , v [ 1 ] ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 0 ] , v [ 1 ] ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += uw [ 1 ] * vw [ 1 ] * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 1 ] , v [ 1 ] ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u [ 1 ] , v [ 1 ] ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;

shadow = sum / 16.0f ;
#line 717
return shadow ;
}
#line 726
float UnitySampleShadowmap_PCF5x5Gaussian ( float4 coord , float3 receiverPlaneDepthBias )
{
float shadow = 1 ;
#line 737
const float2 offset = float2 ( 0.5 , 0.5 ) ;
float2 uv = ( coord . xy * _ShadowMapTexture_TexelSize . zw ) + offset ;
float2 base_uv = ( floor ( uv ) - offset ) * _ShadowMapTexture_TexelSize . xy ;
float2 st = frac ( uv ) ;

float3 uw = float3 ( 4 - 3 * st . x , 7 , 1 + 3 * st . x ) ;
float3 u = float3 ( ( 3 - 2 * st . x ) / uw . x - 2 , ( 3 + st . x ) / uw . y , st . x / uw . z + 2 ) ;
u *= _ShadowMapTexture_TexelSize . x ;

float3 vw = float3 ( 4 - 3 * st . y , 7 , 1 + 3 * st . y ) ;
float3 v = float3 ( ( 3 - 2 * st . y ) / vw . x - 2 , ( 3 + st . y ) / vw . y , st . y / vw . z + 2 ) ;
v *= _ShadowMapTexture_TexelSize . y ;

float sum = 0.0f ;

float3 accum = uw * vw . x ;
sum += accum . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . x ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . x ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;

accum = uw * vw . y ;
sum += accum . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . y ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . y ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;

accum = uw * vw . z ;
sum += accum . x * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . x , v . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . y * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . y , v . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
sum += accum . z * _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . z ) , coord . z , receiverPlaneDepthBias ) ) . xy , ( UnityCombineShadowcoordComponents ( base_uv , float2 ( u . z , v . z ) , coord . z , receiverPlaneDepthBias ) ) . z ) ;
shadow = sum / 144.0f ;
#line 770
return shadow ;
}

float UnitySampleShadowmap_PCF3x3 ( float4 coord , float3 receiverPlaneDepthBias )
{
return UnitySampleShadowmap_PCF3x3Tent ( coord , receiverPlaneDepthBias ) ;
}

float UnitySampleShadowmap_PCF5x5 ( float4 coord , float3 receiverPlaneDepthBias )
{
return UnitySampleShadowmap_PCF5x5Tent ( coord , receiverPlaneDepthBias ) ;
}

float UnitySampleShadowmap_PCF7x7 ( float4 coord , float3 receiverPlaneDepthBias )
{
return UnitySampleShadowmap_PCF7x7Tent ( coord , receiverPlaneDepthBias ) ;
}
#line 35 ""
struct appdata {
float4 vertex : POSITION ;
float2 texcoord : TEXCOORD0 ;
#line 42
float3 ray : TEXCOORD1 ;
#line 45
} ;

struct v2f {

float4 pos : SV_POSITION ;
#line 52
float4 uv : TEXCOORD0 ;

float3 ray : TEXCOORD1 ;

float3 orthoPosNear : TEXCOORD2 ;
float3 orthoPosFar : TEXCOORD3 ;
#line 60
} ;

v2f vert ( appdata v )
{
v2f o ;
;
;
;
float4 clipPos ;
#line 72
clipPos = UnityObjectToClipPos ( v . vertex ) ;

o . pos = clipPos ;
o . uv . xy = v . texcoord ;
#line 78
o . uv . zw = ComputeNonStereoScreenPos ( clipPos ) ;
#line 84
o . ray = v . ray ;
#line 93
clipPos . y *= _ProjectionParams . x ;
float3 orthoPosNear = mul ( unity_CameraInvProjection , float4 ( clipPos . x , clipPos . y , - 1 , 1 ) ) . xyz ;
float3 orthoPosFar = mul ( unity_CameraInvProjection , float4 ( clipPos . x , clipPos . y , 1 , 1 ) ) . xyz ;
orthoPosNear . z *= - 1 ;
orthoPosFar . z *= - 1 ;
o . orthoPosNear = orthoPosNear ;
o . orthoPosFar = orthoPosFar ;

return o ;
}
#line 107
sampler2D_float _CameraDepthTexture ;

float4 unity_ShadowCascadeScales ;
#line 130
inline float4 getCascadeWeights ( float3 wpos , float z )
{
float4 zNear = float4 ( z >= _LightSplitsNear ) ;
float4 zFar = float4 ( z < _LightSplitsFar ) ;
float4 weights = zNear * zFar ;
return weights ;
}
#line 142
inline float4 getCascadeWeights_splitSpheres ( float3 wpos )
{
float3 fromCenter0 = wpos . xyz - unity_ShadowSplitSpheres [ 0 ] . xyz ;
float3 fromCenter1 = wpos . xyz - unity_ShadowSplitSpheres [ 1 ] . xyz ;
float3 fromCenter2 = wpos . xyz - unity_ShadowSplitSpheres [ 2 ] . xyz ;
float3 fromCenter3 = wpos . xyz - unity_ShadowSplitSpheres [ 3 ] . xyz ;
float4 distances2 = float4 ( dot ( fromCenter0 , fromCenter0 ) , dot ( fromCenter1 , fromCenter1 ) , dot ( fromCenter2 , fromCenter2 ) , dot ( fromCenter3 , fromCenter3 ) ) ;
float4 weights = float4 ( distances2 < unity_ShadowSplitSqRadii ) ;
weights . yzw = saturate ( weights . yzw - weights . xyz ) ;
return weights ;
}
#line 158
inline float4 getShadowCoord ( float4 wpos , float4 cascadeWeights )
{
float3 sc0 = mul ( unity_WorldToShadow [ 0 ] , wpos ) . xyz ;
float3 sc1 = mul ( unity_WorldToShadow [ 1 ] , wpos ) . xyz ;
float3 sc2 = mul ( unity_WorldToShadow [ 2 ] , wpos ) . xyz ;
float3 sc3 = mul ( unity_WorldToShadow [ 3 ] , wpos ) . xyz ;
float4 shadowMapCoordinate = float4 ( sc0 * cascadeWeights [ 0 ] + sc1 * cascadeWeights [ 1 ] + sc2 * cascadeWeights [ 2 ] + sc3 * cascadeWeights [ 3 ] , 1 ) ;

float noCascadeWeights = 1 - dot ( cascadeWeights , float4 ( 1 , 1 , 1 , 1 ) ) ;
shadowMapCoordinate . z += noCascadeWeights ;

return shadowMapCoordinate ;
}
#line 175
inline float4 getShadowCoord_SingleCascade ( float4 wpos )
{
return float4 ( mul ( unity_WorldToShadow [ 0 ] , wpos ) . xyz , 0 ) ;
}
#line 183
inline float3 computeCameraSpacePosFromDepthAndInvProjMat ( v2f i )
{
float zdepth = ( tex2D ( _CameraDepthTexture , i . uv . xy ) . r ) ;
#line 188
zdepth = 1 - zdepth ;
#line 195
float4 clipPos = float4 ( i . uv . zw , zdepth , 1.0 ) ;
clipPos . xyz = 2.0f * clipPos . xyz - 1.0f ;
float4 camPos = mul ( unity_CameraInvProjection , clipPos ) ;
camPos . xyz /= camPos . w ;
camPos . z *= - 1 ;
return camPos . xyz ;
}
#line 206
inline float3 computeCameraSpacePosFromDepthAndVSInfo ( v2f i )
{
float zdepth = ( tex2D ( _CameraDepthTexture , i . uv . xy ) . r ) ;
#line 211
float depth = lerp ( Linear01Depth ( zdepth ) , zdepth , unity_OrthoParams . w ) ;

zdepth = 1 - zdepth ;
#line 217
float3 vposPersp = i . ray * depth ;
float3 vposOrtho = lerp ( i . orthoPosNear , i . orthoPosFar , zdepth ) ;

float3 camPos = lerp ( vposPersp , vposOrtho , unity_OrthoParams . w ) ;
return camPos . xyz ;
}

inline float3 computeCameraSpacePosFromDepth ( v2f i ) ;
#line 229
float4 frag_hard ( v2f i ) : COLOR
{
;
float4 wpos ;
float3 vpos ;
#line 240
vpos = computeCameraSpacePosFromDepth ( i ) ;
wpos = mul ( unity_CameraToWorld , float4 ( vpos , 1 ) ) ;

float4 cascadeWeights = getCascadeWeights_splitSpheres ( wpos ) ;
float4 shadowCoord = getShadowCoord_SingleCascade ( wpos ) ;
#line 247
float shadow = _ShadowMapTexture . SampleCmpLevelZero ( sampler_ShadowMapTexture , ( shadowCoord ) . xy , ( shadowCoord ) . z ) ;
shadow = lerp ( _LightShadowData . r , 1.0 , shadow ) ;

float4 res = shadow ;
return res ;
}
#line 257
float4 frag_pcfSoft ( v2f i ) : COLOR
{
;
float4 wpos ;
float3 vpos ;
#line 268
vpos = computeCameraSpacePosFromDepth ( i ) ;
#line 271
wpos = mul ( unity_CameraToWorld , float4 ( vpos , 1 ) ) ;

float4 cascadeWeights = getCascadeWeights_splitSpheres ( wpos ) ;
float4 coord = getShadowCoord_SingleCascade ( wpos ) ;

float3 receiverPlaneDepthBias = 0.0 ;
#line 290
float shadow = UnitySampleShadowmap_PCF7x7 ( coord , receiverPlaneDepthBias ) ;

shadow = lerp ( _LightShadowData . r , 1.0f , shadow ) ;
#line 322
return shadow ;
}
#line 363 ""
inline float3 computeCameraSpacePosFromDepth ( v2f i )
{
return computeCameraSpacePosFromDepthAndInvProjMat ( i ) ;
}
