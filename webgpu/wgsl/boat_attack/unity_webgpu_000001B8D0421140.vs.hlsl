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
#line 312
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
#line 54 "D:/src/unity_webgpu/Shaders/Includes/Internal/UnityUIE.cginc"
sampler2D _GradientSettingsTex ;
float4 _GradientSettingsTex_TexelSize ;

sampler2D _ShaderInfoTex ;
float4 _ShaderInfoTex_TexelSize ;

float4 _TextureInfo [ 4 * 2 ] ;

sampler2D _Texture0 ;
float4 _Texture0_ST ;

sampler2D _Texture1 ;
float4 _Texture1_ST ;

sampler2D _Texture2 ;
float4 _Texture2_ST ;

sampler2D _Texture3 ;
float4 _Texture3_ST ;
#line 91
float4 _Transforms [ 20 * 3 ] ;
#line 95
float4 _ClipRects [ 20 ] ;
#line 103
float3 uie_gamma_to_linear ( float3 value )
{
float3 low = 0.0849710 * value - 0.000163029 ;
float3 high = value * ( value * ( value * 0.265885 + 0.736584 ) - 0.00980184 ) + 0.00319697 ;
#line 109
const float3 split = ( float3 ) 0.0725490 ;
return ( value < split ) ? low : high ;
}
#line 115
float3 uie_linear_to_gamma ( float3 value )
{
float3 low = 12.92F * value ;
float3 high = 1.055F * pow ( value , 0.4166667F ) - 0.055F ;

const float3 split = ( float3 ) 0.0031308 ;
return ( value < split ) ? low : high ;
}

struct appdata_t
{
float4 vertex : POSITION ;
float4 color : COLOR ;
float2 uv : TEXCOORD0 ;
float4 xformClipPages : TEXCOORD1 ;
float4 ids : TEXCOORD2 ;
float4 flags : TEXCOORD3 ;
float4 opacityColorPages : TEXCOORD4 ;
float4 circle : TEXCOORD5 ;
float textureId : TEXCOORD6 ;
#line 137
} ;

struct v2f
{
float4 pos : SV_POSITION ;
float4 color : COLOR ;
float4 uvClip : TEXCOORD0 ;
float4 typeTexSettings : TEXCOORD1 ;

float4 clipRectOpacityUVs : TEXCOORD2 ;

float2 colorUVs : TEXCOORD3 ;
float4 circle : TEXCOORD4 ;

} ;

static const float kUIEMeshZ = 0.0f ;
static const float kUIEMaskZ = 1.0f ;

struct TextureInfo
{
float textureId ;
float sdfScale ;
float2 texelSize ;
float2 textureSize ;
} ;
#line 165
TextureInfo GetTextureInfo ( float index )
{
float offset = index * 2 ;
float4 data0 = _TextureInfo [ offset ] ;
float4 data1 = _TextureInfo [ offset + 1 ] ;

TextureInfo info ;
info . textureId = data0 . x ;
info . texelSize = data0 . yz ;
info . sdfScale = data0 . w ;
info . textureSize = data1 . xy ;

return info ;
}
#line 181
float FindTextureSlot ( float textureId )
{
#line 191
float slotIndex = 0 ;
slotIndex += ( 1.0 - abs ( sign ( GetTextureInfo ( 1 ) . textureId - textureId ) ) ) * 1 ;
slotIndex += ( 1.0 - abs ( sign ( GetTextureInfo ( 2 ) . textureId - textureId ) ) ) * 2 ;
slotIndex += ( 1.0 - abs ( sign ( GetTextureInfo ( 3 ) . textureId - textureId ) ) ) * 3 ;
return slotIndex ;

}
#line 200
float4 SampleTextureSlot ( float index , float2 uv )
{
float4 result ;
#line 208
[ branch ] if ( index < 2 )
{
[ branch ] if ( index < 1 )
{
result = tex2D ( _Texture0 , uv ) ;
}
else
{
result = tex2D ( _Texture1 , uv ) ;
}
}
else
{
[ branch ] if ( index < 3 )
{
result = tex2D ( _Texture2 , uv ) ;
}
else
{
result = tex2D ( _Texture3 , uv ) ;
}
}
#line 259
return result ;
}

float4 SampleShaderInfo ( float2 uv )
{
return tex2Dlod ( _ShaderInfoTex , float4 ( uv , 0 , 0 ) ) ;
}
#line 293
static float4x4 uie_toWorldMat ;
#line 318
float2 ComputeRelativeClipRectCoords ( float2 a , float2 b , float2 pos )
{
return pos * a + b ;
}

float uie_fragment_clip ( v2f IN )
{
float2 dist ;
#line 329
float4 rectClippingData = _ClipRects [ IN . clipRectOpacityUVs . x ] ;
dist = abs ( ComputeRelativeClipRectCoords ( rectClippingData . xy , rectClippingData . zw , IN . uvClip . zw ) ) ;

return dist . x < 1.0001f & dist . y < 1.0001f ;
}

float2 uie_decode_shader_info_texel_pos ( float2 pageXY , float id , float yStride )
{
const float kShaderInfoPageWidth = 32 ;
const float kShaderInfoPageHeight = 8 ;
id *= 255.0f ;
pageXY *= 255.0f ;
float idX = id % kShaderInfoPageWidth ;
float idY = ( id - idX ) / kShaderInfoPageWidth ;

return float2 (
pageXY . x * kShaderInfoPageWidth + idX ,
pageXY . y * kShaderInfoPageHeight + idY * yStride ) ;
}

void uie_vert_load_payload ( appdata_t v )
{
#line 366
int xformConstantIndex = ( int ) ( v . ids . x * 255.0f * 3.0f ) ;
uie_toWorldMat = float4x4 (
_Transforms [ xformConstantIndex + 0 ] ,
_Transforms [ xformConstantIndex + 1 ] ,
_Transforms [ xformConstantIndex + 2 ] ,
float4 ( 0 , 0 , 0 , 1 ) ) ;
#line 374
}

float2 uie_unpack_float2 ( float4 c )
{
return float2 ( c . r * 255 + c . g , c . b * 255 + c . a ) ;
}

float2 uie_ray_unit_circle_first_hit ( float2 rayStart , float2 rayDir )
{
float tca = dot ( - rayStart , rayDir ) ;
float d2 = dot ( rayStart , rayStart ) - tca * tca ;
float thc = sqrt ( 1.0f - d2 ) ;
float t0 = tca - thc ;
float t1 = tca + thc ;
float t = min ( t0 , t1 ) ;
if ( t < 0.0f )
t = max ( t0 , t1 ) ;
return rayStart + rayDir * t ;
}

float uie_radial_address ( float2 uv , float2 focus )
{
uv = ( uv - float2 ( 0.5f , 0.5f ) ) * 2.0f ;
float2 pointOnPerimeter = uie_ray_unit_circle_first_hit ( focus , normalize ( uv - focus ) ) ;
float2 diff = pointOnPerimeter - focus ;
if ( abs ( diff . x ) > 0.0001f )
return ( uv . x - focus . x ) / diff . x ;
if ( abs ( diff . y ) > 0.0001f )
return ( uv . y - focus . y ) / diff . y ;
return 0.0f ;
}

struct GradientLocation
{
float2 uv ;
float4 location ;
} ;

GradientLocation uie_sample_gradient_location ( float settingIndex , float2 uv , sampler2D settingsTex , float2 texelSize )
{
#line 427
float2 settingUV = float2 ( 0.5f , settingIndex + 0.5f ) * texelSize ;
float4 gradSettings = tex2Dlod ( settingsTex , float4 ( settingUV , 0 , 0 ) ) ;
if ( gradSettings . x > 0.0f )
{

float2 focus = ( gradSettings . zw - float2 ( 0.5f , 0.5f ) ) * 2.0f ;
uv = float2 ( uie_radial_address ( uv , focus ) , 0.0 ) ;
}

int addressing = round ( gradSettings . y * 255 ) ;
uv . x = ( addressing == 0 ) ? fmod ( uv . x , 1.0f ) : uv . x ;
uv . x = ( addressing == 1 ) ? max ( min ( uv . x , 1.0f ) , 0.0f ) : uv . x ;
float w = fmod ( uv . x , 2.0f ) ;
uv . x = ( addressing == 2 ) ? ( w > 1.0f ? 1.0f - fmod ( w , 1.0f ) : w ) : uv . x ;

GradientLocation grad ;
grad . uv = uv ;
#line 446
float2 nextUV = float2 ( texelSize . x , 0 ) ;
grad . location . xy = ( uie_unpack_float2 ( tex2Dlod ( settingsTex , float4 ( settingUV + nextUV , 0 , 0 ) ) * 255 ) + float2 ( 0.5f , 0.5f ) ) ;
grad . location . zw = uie_unpack_float2 ( tex2Dlod ( settingsTex , float4 ( settingUV + nextUV * 2 , 0 , 0 ) ) * 255 ) ;

return grad ;
}

bool fpEqual ( float a , float b )
{
#line 458
return a == b ;

}
#line 467
float sd_to_coverage ( float sd , float2 uv , float sdfSizeRCP , float sdfScale , float isoPerimeter )
{
float ta = ddx ( uv . x ) * ddy ( uv . y ) - ddy ( uv . x ) * ddx ( uv . y ) ;
float ssr = rsqrt ( abs ( ta ) ) * sdfSizeRCP ;
sd = ( sd - 0.5 ) * sdfScale + isoPerimeter ;
return saturate ( 0.5 + 2.0 * sd * ssr ) ;
}
#line 481
float3 sd_to_coverage ( float3 sd , float2 uv , float sdfSize , float sdfScale , float3 isoPerimeter , float3 softness )
{
#line 486
float ps = abs ( ddx ( uv . y ) ) + abs ( ddy ( uv . y ) ) ;
float stsr = sdfSize * ps ;
sd = ( sd - 0.5 ) * sdfScale + isoPerimeter ;
return saturate ( 0.5 + 2.0 * sd / ( stsr + softness ) ) ;
}

float4 uie_textcore ( float textAlpha , float2 uv , float textureSlot , float2 textCoreUV , float4 vertexColor , float opacity , float sdfScale , bool isDynamicColor , float extraDilate )
{
float2 row3UV = ( textCoreUV + float2 ( 0 , 3 ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
float4 settings = SampleShaderInfo ( row3UV ) ;

settings *= sdfScale ;
float2 underlayOffset = settings . xy ;
float underlaySoftness = settings . z ;
float outlineDilate = settings . w * 0.25f ;
float3 dilate = float3 ( - outlineDilate , outlineDilate , 0 ) ;
float3 softness = float3 ( 0 , 0 , underlaySoftness ) ;
#line 505
float alpha1 = textAlpha ;
float texelWidth = GetTextureInfo ( textureSlot ) . texelSize . x ;
float textureHeight = GetTextureInfo ( textureSlot ) . textureSize . y ;
float alpha2 = SampleTextureSlot ( textureSlot , uv + underlayOffset * texelWidth ) . a ;
float3 alpha = sd_to_coverage ( float3 ( alpha1 , alpha1 , alpha2 ) , uv , textureHeight , sdfScale , dilate + extraDilate , softness ) ;
#line 512
float4 faceColor = vertexColor ;
[ branch ] if ( isDynamicColor )
{
float2 row0UV = ( textCoreUV + float2 ( 0 , 0 ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
faceColor = SampleShaderInfo ( row0UV ) ;
faceColor . a *= opacity ;
}
faceColor . rgb *= faceColor . a ;
float4 color = faceColor * alpha . x ;

float2 row1UV = ( textCoreUV + float2 ( 0 , 1 ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
float4 outlineColor = SampleShaderInfo ( row1UV ) ;
outlineColor . a *= opacity ;
outlineColor . rgb *= outlineColor . a ;
color += outlineColor * ( 1 - alpha . x ) * alpha . y ;

float2 row2UV = ( textCoreUV + float2 ( 0 , 2 ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
float4 underlayColor = SampleShaderInfo ( row2UV ) ;
underlayColor . a *= opacity ;
underlayColor . a *= alpha . z ;
underlayColor . rgb *= underlayColor . a ;
color += underlayColor * ( 1 - alpha . x ) * ( 1 - alpha . y ) ;

color . rgb /= ( color . a > 0.0f ? color . a : 1.0f ) ;

return color ;
}

void uie_std_vert_shader_info ( appdata_t v , out float4 color , out float2 clipRectUV , out float2 opacityUV , out float opacity , out float2 colorUV )
{
#line 546
color = float4 ( uie_gamma_to_linear ( v . color . rgb ) , v . color . a ) ;
#line 549
opacityUV = ( uie_decode_shader_info_texel_pos ( v . opacityColorPages . xy , v . ids . z , 1.0f ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
colorUV = ( uie_decode_shader_info_texel_pos ( v . opacityColorPages . zw , v . ids . w , 1.0f ) + 0.5f ) * _ShaderInfoTex_TexelSize . xy ;
#line 559
clipRectUV = float2 ( v . ids . y * 255.0f , 0.0f ) ;
opacity = 1 ;

}

float pixelDist ( float2 uv )
{
float dist = length ( uv ) - 1.0f ;
float2 ddist = float2 ( ddx ( dist ) , ddy ( dist ) ) ;
return dist / length ( ddist ) ;
}

float ComputeCoverage ( float2 outer , float2 inner )
{
float coverage = 1 ;

[ branch ] if ( outer . x > - 9999.0f )
{
float outerDist = pixelDist ( outer ) ;
coverage *= saturate ( 0.5f - outerDist ) ;
}
[ branch ] if ( inner . x > - 9999.0f )
{
float innerDist = pixelDist ( inner ) ;
coverage *= 1.0f - saturate ( 0.5f - innerDist ) ;
}

return coverage ;
}

v2f uie_std_vert ( appdata_t v )
{
v2f OUT ;
;
;

uie_vert_load_payload ( v ) ;
float flags = round ( v . flags . x * 255.0f ) ;

const float isSvgGradients = fpEqual ( 4.0 , flags ) ? 1.0 : 0.0 ;
const float isDynamic = fpEqual ( 3.0 , flags ) ? 1.0 : 0.0 ;
const float isTextured = fpEqual ( 2.0 , flags ) ? 1.0 : 0.0 ;
const float isText = fpEqual ( 1.0 , flags ) ? 1.0 : 0.0 ;
const float isSolid = 1 - saturate ( isText + isTextured + isDynamic + isSvgGradients ) ;

v . vertex . xyz = mul ( uie_toWorldMat , v . vertex ) ;
OUT . pos = UnityObjectToClipPos ( v . vertex ) ;

float textureSlot = FindTextureSlot ( v . textureId ) ;
#line 610
float renderType = isSolid * 1 + isText * 2 + ( isDynamic + isTextured ) * 3 + isSvgGradients * 4 ;
float svgSettingIndex = v . opacityColorPages . z * ( 255.0f * 255.0f ) + v . opacityColorPages . w * 255.0f ;
float isArc = v . flags . z > 0.0f ? 1.0f : 0.0f ;
float wFlags = isArc ;
if ( v . flags . w > 0.0f )
wFlags += 2.0f ;
OUT . typeTexSettings = float4 ( renderType , textureSlot , svgSettingIndex , wFlags ) ;

OUT . uvClip . xy = v . uv ;
if ( isDynamic == 1.0f )
OUT . uvClip . xy *= GetTextureInfo ( textureSlot ) . texelSize ;

float opacity ;
float2 clipRectUVs , opacityUVs ;
uie_std_vert_shader_info ( v , OUT . color , clipRectUVs , opacityUVs , opacity , OUT . colorUVs . xy ) ;
if ( isText == 1 )
OUT . typeTexSettings . z = opacity ;
OUT . colorUVs . xy = isText ? uie_decode_shader_info_texel_pos ( v . opacityColorPages . zw , v . ids . w , 4.0f ) : OUT . colorUVs . xy ;
#line 633
OUT . clipRectOpacityUVs . xy = clipRectUVs ;
OUT . clipRectOpacityUVs . zw = opacityUVs ;
OUT . uvClip . zw = v . vertex . xy ;
#line 638
OUT . circle = v . circle ;
if ( isText == 1 )
OUT . circle . x = v . flags . y ;

return OUT ;
}

float4 uie_std_frag ( v2f IN )
{
float renderType = IN . typeTexSettings . x ;
bool isDynamicColor = IN . typeTexSettings . w >= 2.0 ;
if ( isDynamicColor )
IN . typeTexSettings . w -= 2.0f ;
float isArc = IN . typeTexSettings . w ;

float2 uv = IN . uvClip . xy ;

float textOpacity ;
float textureSlot = IN . typeTexSettings . y ;
float sdfScale = GetTextureInfo ( textureSlot ) . sdfScale ;
#line 661
{

float opacity = SampleShaderInfo ( IN . clipRectOpacityUVs . zw ) . a ;
IN . color . a *= opacity ;
textOpacity = opacity ;
}

if ( isDynamicColor && ( renderType != 2 || sdfScale == 0 ) )
IN . color = SampleShaderInfo ( IN . colorUVs . xy ) ;
#line 672
float4 color ;
float coverage ;
[ branch ] if ( renderType == 1 )
{
color = IN . color ;
coverage = 1 ;
[ branch ] if ( isArc )
coverage = ComputeCoverage ( IN . circle . xy , IN . circle . zw ) ;
}
else [ branch ] if ( renderType == 3 )
{
color = SampleTextureSlot ( textureSlot , uv ) * IN . color ;
coverage = 1 ;
[ branch ] if ( isArc )
coverage = ComputeCoverage ( IN . circle . xy , IN . circle . zw ) ;
}
else [ branch ] if ( renderType == 2 )
{
float textAlpha = SampleTextureSlot ( textureSlot , uv ) . a ;
if ( sdfScale > 0.0f )
{
color = uie_textcore ( textAlpha , uv , textureSlot , IN . colorUVs . xy , IN . color , textOpacity , sdfScale , isDynamicColor , IN . circle . x ) ;
}
else
{
color = IN . color ;
color . a *= textAlpha ;
}
coverage = 1 ;
}
else
{
float settingIndex = IN . typeTexSettings . z ;
float2 texelSize = GetTextureInfo ( textureSlot ) . texelSize ;
GradientLocation grad = uie_sample_gradient_location ( settingIndex , uv , _GradientSettingsTex , _GradientSettingsTex_TexelSize . xy ) ;
grad . location *= texelSize . xyxy ;
grad . uv *= grad . location . zw ;
grad . uv += grad . location . xy ;
color = SampleTextureSlot ( textureSlot , grad . uv ) * IN . color ;
coverage = 1 ;
}

coverage *= uie_fragment_clip ( IN ) ;
#line 718
clip ( coverage - 0.003f ) ;

color . a *= coverage ;
return color ;
}
#line 726
v2f vert ( appdata_t v ) { return uie_std_vert ( v ) ; }
float4 frag ( v2f IN ) : COLOR { return uie_std_frag ( IN ) ; }
