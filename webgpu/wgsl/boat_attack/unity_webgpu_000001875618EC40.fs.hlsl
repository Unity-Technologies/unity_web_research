#line 1 "Hidden/Universal Render Pipeline/FallbackLoading"
static const int UNITY_SINGLE_PASS_STEREO = 0 ;
static const int STEREO_INSTANCING_ON = 0 ;
static const int STEREO_MULTIVIEW_ON = 0 ;
static const int DOTS_INSTANCING_ON = 0 ;
static const int UNITY_NO_DXT5nm = 0 ;
static const int UNITY_FRAMEBUFFER_FETCH_AVAILABLE = 0 ;
static const int UNITY_METAL_SHADOWS_USE_POINT_FILTERING = 0 ;
static const int UNITY_USE_DITHER_MASK_FOR_ALPHABLENDED_SHADOWS = 0 ;
static const int UNITY_PBS_USE_BRDF1 = 0 ;
static const int UNITY_PBS_USE_BRDF2 = 0 ;
static const int UNITY_NO_FULL_STANDARD_SHADER = 0 ;
static const int UNITY_SPECCUBE_BOX_PROJECTION = 0 ;
static const int UNITY_SPECCUBE_BLENDING = 0 ;
static const int UNITY_ENABLE_DETAIL_NORMALMAP = 0 ;
static const int UNITY_HARDWARE_TIER1 = 0 ;
static const int UNITY_HARDWARE_TIER2 = 0 ;
static const int UNITY_HARDWARE_TIER3 = 0 ;
static const int UNITY_COLORSPACE_GAMMA = 0 ;
static const int UNITY_LIGHT_PROBE_PROXY_VOLUME = 0 ;
static const int UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS = 0 ;
static const int UNITY_LIGHTMAP_DLDR_ENCODING = 0 ;
static const int UNITY_LIGHTMAP_RGBM_ENCODING = 0 ;
static const int UNITY_VIRTUAL_TEXTURING = 0 ;
static const int UNITY_PRETRANSFORM_TO_DISPLAY_ORIENTATION = 0 ;
static const int UNITY_ASTC_NORMALMAP_ENCODING = 0 ;
static const int SHADER_API_GLES30 = 0 ;
static const int UNITY_UNIFIED_SHADER_PRECISION_MODEL = 0 ;
#line 5 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/Random.hlsl"
float Hash ( uint s )
{
s = s ^ 2747636419u ;
s = s * 2654435769u ;
s = s ^ ( s >> 16 ) ;
s = s * 2654435769u ;
s = s ^ ( s >> 16 ) ;
s = s * 2654435769u ;
return float ( s ) * rcp ( 4294967296.0 ) ;
}
#line 19
uint JenkinsHash ( uint x )
{
x += ( x << 10u ) ;
x ^= ( x >> 6u ) ;
x += ( x << 3u ) ;
x ^= ( x >> 11u ) ;
x += ( x << 15u ) ;
return x ;
}
#line 30
uint JenkinsHash ( uint2 v )
{
return JenkinsHash ( v . x ^ JenkinsHash ( v . y ) ) ;
}

uint JenkinsHash ( uint3 v )
{
return JenkinsHash ( v . x ^ JenkinsHash ( v . yz ) ) ;
}

uint JenkinsHash ( uint4 v )
{
return JenkinsHash ( v . x ^ JenkinsHash ( v . yzw ) ) ;
}
#line 47
float ConstructFloat ( int m ) {
const int ieeeMantissa = 0x007FFFFF ;
const int ieeeOne = 0x3F800000 ;

m &= ieeeMantissa ;
m |= ieeeOne ;

float f = asfloat ( m ) ;
return f - 1 ;
}

float ConstructFloat ( uint m )
{
return ConstructFloat ( asint ( m ) ) ;
}
#line 65
float GenerateHashedRandomFloat ( uint x )
{
return ConstructFloat ( JenkinsHash ( x ) ) ;
}

float GenerateHashedRandomFloat ( uint2 v )
{
return ConstructFloat ( JenkinsHash ( v ) ) ;
}

float GenerateHashedRandomFloat ( uint3 v )
{
return ConstructFloat ( JenkinsHash ( v ) ) ;
}

float GenerateHashedRandomFloat ( uint4 v )
{
return ConstructFloat ( JenkinsHash ( v ) ) ;
}

float2 InitRandom ( float2 input )
{
float2 r ;
r . x = Hash ( uint ( input . x * 0xFFFFFFFFu ) ) ;
r . y = Hash ( uint ( input . y * 0xFFFFFFFFu ) ) ;

return r ;
}
#line 97
float InterleavedGradientNoise ( float2 pixCoord , int frameCount )
{
const float3 magic = float3 ( 0.06711056f , 0.00583715f , 52.9829189f ) ;
float2 frameMagicScale = float2 ( 2.083f , 4.867f ) ;
pixCoord += frameCount * frameMagicScale ;
return frac ( magic . z * frac ( dot ( pixCoord , magic . xy ) ) ) ;
}
#line 106
uint XorShift ( inout uint rngState )
{
rngState ^= rngState << 13 ;
rngState ^= rngState >> 17 ;
rngState ^= rngState << 5 ;
return rngState ;
}
#line 8 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/CommonDeprecated.hlsl"
void LODDitheringTransition ( uint3 fadeMaskSeed , float ditherFactor )
{
ditherFactor = ditherFactor < 0.0 ? 1 + ditherFactor : ditherFactor ;

float p = GenerateHashedRandomFloat ( fadeMaskSeed ) ;
p = ( ditherFactor >= 0.5 ) ? p : 1 - p ;
clip ( ditherFactor - p ) ;
}
#line 376 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/Common.hlsl"
uint BitFieldExtract ( uint data , uint offset , uint numBits )
{
uint mask = ( 1u << numBits ) - 1u ;
return ( data >> offset ) & mask ;
}
#line 387
int BitFieldExtractSignExtend ( int data , uint offset , uint numBits )
{
int shifted = data >> offset ;
int signBit = shifted & ( 1u << ( numBits - 1u ) ) ;
uint mask = ( 1u << numBits ) - 1u ;

return - signBit | ( shifted & mask ) ;
}
#line 399
uint BitFieldInsert ( uint mask , uint src , uint dst )
{
return ( src & mask ) | ( dst & ~ mask ) ;
}
#line 405
bool IsBitSet ( uint data , uint offset )
{
return BitFieldExtract ( data , offset , 1u ) != 0 ;
}

void SetBit ( inout uint data , uint offset )
{
data |= 1u << offset ;
}

void ClearBit ( inout uint data , uint offset )
{
data &= ~ ( 1u << offset ) ;
}

void ToggleBit ( inout uint data , uint offset )
{
data ^= 1u << offset ;
}
#line 428
float WaveReadLaneFirst ( float scalarValue ) { return scalarValue ; } float2 WaveReadLaneFirst ( float2 scalarValue ) { return scalarValue ; } float3 WaveReadLaneFirst ( float3 scalarValue ) { return scalarValue ; } float4 WaveReadLaneFirst ( float4 scalarValue ) { return scalarValue ; }
int WaveReadLaneFirst ( int scalarValue ) { return scalarValue ; } int2 WaveReadLaneFirst ( int2 scalarValue ) { return scalarValue ; } int3 WaveReadLaneFirst ( int3 scalarValue ) { return scalarValue ; } int4 WaveReadLaneFirst ( int4 scalarValue ) { return scalarValue ; } uint WaveReadLaneFirst ( uint scalarValue ) { return scalarValue ; } uint2 WaveReadLaneFirst ( uint2 scalarValue ) { return scalarValue ; } uint3 WaveReadLaneFirst ( uint3 scalarValue ) { return scalarValue ; } uint4 WaveReadLaneFirst ( uint4 scalarValue ) { return scalarValue ; }
#line 433
int Mul24 ( int a , int b ) { return a * b ; } int2 Mul24 ( int2 a , int2 b ) { return a * b ; } int3 Mul24 ( int3 a , int3 b ) { return a * b ; } int4 Mul24 ( int4 a , int4 b ) { return a * b ; } uint Mul24 ( uint a , uint b ) { return a * b ; } uint2 Mul24 ( uint2 a , uint2 b ) { return a * b ; } uint3 Mul24 ( uint3 a , uint3 b ) { return a * b ; } uint4 Mul24 ( uint4 a , uint4 b ) { return a * b ; }
#line 437
int Mad24 ( int a , int b , int c ) { return a * b + c ; } int2 Mad24 ( int2 a , int2 b , int2 c ) { return a * b + c ; } int3 Mad24 ( int3 a , int3 b , int3 c ) { return a * b + c ; } int4 Mad24 ( int4 a , int4 b , int4 c ) { return a * b + c ; } uint Mad24 ( uint a , uint b , uint c ) { return a * b + c ; } uint2 Mad24 ( uint2 a , uint2 b , uint2 c ) { return a * b + c ; } uint3 Mad24 ( uint3 a , uint3 b , uint3 c ) { return a * b + c ; } uint4 Mad24 ( uint4 a , uint4 b , uint4 c ) { return a * b + c ; }
#line 441
float Min3 ( float a , float b , float c ) { return min ( min ( a , b ) , c ) ; } float2 Min3 ( float2 a , float2 b , float2 c ) { return min ( min ( a , b ) , c ) ; } float3 Min3 ( float3 a , float3 b , float3 c ) { return min ( min ( a , b ) , c ) ; } float4 Min3 ( float4 a , float4 b , float4 c ) { return min ( min ( a , b ) , c ) ; }
int Min3 ( int a , int b , int c ) { return min ( min ( a , b ) , c ) ; } int2 Min3 ( int2 a , int2 b , int2 c ) { return min ( min ( a , b ) , c ) ; } int3 Min3 ( int3 a , int3 b , int3 c ) { return min ( min ( a , b ) , c ) ; } int4 Min3 ( int4 a , int4 b , int4 c ) { return min ( min ( a , b ) , c ) ; } uint Min3 ( uint a , uint b , uint c ) { return min ( min ( a , b ) , c ) ; } uint2 Min3 ( uint2 a , uint2 b , uint2 c ) { return min ( min ( a , b ) , c ) ; } uint3 Min3 ( uint3 a , uint3 b , uint3 c ) { return min ( min ( a , b ) , c ) ; } uint4 Min3 ( uint4 a , uint4 b , uint4 c ) { return min ( min ( a , b ) , c ) ; }
float Max3 ( float a , float b , float c ) { return max ( max ( a , b ) , c ) ; } float2 Max3 ( float2 a , float2 b , float2 c ) { return max ( max ( a , b ) , c ) ; } float3 Max3 ( float3 a , float3 b , float3 c ) { return max ( max ( a , b ) , c ) ; } float4 Max3 ( float4 a , float4 b , float4 c ) { return max ( max ( a , b ) , c ) ; }
int Max3 ( int a , int b , int c ) { return max ( max ( a , b ) , c ) ; } int2 Max3 ( int2 a , int2 b , int2 c ) { return max ( max ( a , b ) , c ) ; } int3 Max3 ( int3 a , int3 b , int3 c ) { return max ( max ( a , b ) , c ) ; } int4 Max3 ( int4 a , int4 b , int4 c ) { return max ( max ( a , b ) , c ) ; } uint Max3 ( uint a , uint b , uint c ) { return max ( max ( a , b ) , c ) ; } uint2 Max3 ( uint2 a , uint2 b , uint2 c ) { return max ( max ( a , b ) , c ) ; } uint3 Max3 ( uint3 a , uint3 b , uint3 c ) { return max ( max ( a , b ) , c ) ; } uint4 Max3 ( uint4 a , uint4 b , uint4 c ) { return max ( max ( a , b ) , c ) ; }
#line 447
float Avg3 ( float a , float b , float c ) { return ( a + b + c ) * 0.33333333 ; } float2 Avg3 ( float2 a , float2 b , float2 c ) { return ( a + b + c ) * 0.33333333 ; } float3 Avg3 ( float3 a , float3 b , float3 c ) { return ( a + b + c ) * 0.33333333 ; } float4 Avg3 ( float4 a , float4 b , float4 c ) { return ( a + b + c ) * 0.33333333 ; }
#line 450
float2 GetQuadOffset ( int2 screenPos )
{
return float2 ( float ( screenPos . x & 1 ) * 2.0 - 1.0 , float ( screenPos . y & 1 ) * 2.0 - 1.0 ) ;
}
#line 456
float QuadReadAcrossX ( float value , int2 screenPos )
{
return value - ( ddx_fine ( value ) * ( float ( screenPos . x & 1 ) * 2.0 - 1.0 ) ) ;
}

float QuadReadAcrossY ( float value , int2 screenPos )
{
return value - ( ddy_fine ( value ) * ( float ( screenPos . y & 1 ) * 2.0 - 1.0 ) ) ;
}

float QuadReadAcrossDiagonal ( float value , int2 screenPos )
{
float2 quadDir = GetQuadOffset ( screenPos ) ;
float dX = ddx_fine ( value ) ;
float X = value - ( dX * quadDir . x ) ;
return X - ( ddy_fine ( X ) * quadDir . y ) ;
}
#line 475
float3 QuadReadFloat3AcrossX ( float3 val , int2 positionSS )
{
return float3 ( QuadReadAcrossX ( val . x , positionSS ) , QuadReadAcrossX ( val . y , positionSS ) , QuadReadAcrossX ( val . z , positionSS ) ) ;
}

float4 QuadReadFloat4AcrossX ( float4 val , int2 positionSS )
{
return float4 ( QuadReadAcrossX ( val . x , positionSS ) , QuadReadAcrossX ( val . y , positionSS ) , QuadReadAcrossX ( val . z , positionSS ) , QuadReadAcrossX ( val . w , positionSS ) ) ;
}

float3 QuadReadFloat3AcrossY ( float3 val , int2 positionSS )
{
return float3 ( QuadReadAcrossY ( val . x , positionSS ) , QuadReadAcrossY ( val . y , positionSS ) , QuadReadAcrossY ( val . z , positionSS ) ) ;
}

float4 QuadReadFloat4AcrossY ( float4 val , int2 positionSS )
{
return float4 ( QuadReadAcrossY ( val . x , positionSS ) , QuadReadAcrossY ( val . y , positionSS ) , QuadReadAcrossY ( val . z , positionSS ) , QuadReadAcrossY ( val . w , positionSS ) ) ;
}

float3 QuadReadFloat3AcrossDiagonal ( float3 val , int2 positionSS )
{
return float3 ( QuadReadAcrossDiagonal ( val . x , positionSS ) , QuadReadAcrossDiagonal ( val . y , positionSS ) , QuadReadAcrossDiagonal ( val . z , positionSS ) ) ;
}

float4 QuadReadFloat4AcrossDiagonal ( float4 val , int2 positionSS )
{
return float4 ( QuadReadAcrossDiagonal ( val . x , positionSS ) , QuadReadAcrossDiagonal ( val . y , positionSS ) , QuadReadAcrossDiagonal ( val . z , positionSS ) , QuadReadAcrossDiagonal ( val . w , positionSS ) ) ;
}

void Swap ( inout float a , inout float b ) { float t = a ; a = b ; b = t ; } void Swap ( inout float2 a , inout float2 b ) { float2 t = a ; a = b ; b = t ; } void Swap ( inout float3 a , inout float3 b ) { float3 t = a ; a = b ; b = t ; } void Swap ( inout float4 a , inout float4 b ) { float4 t = a ; a = b ; b = t ; } void Swap ( inout int a , inout int b ) { int t = a ; a = b ; b = t ; } void Swap ( inout int2 a , inout int2 b ) { int2 t = a ; a = b ; b = t ; } void Swap ( inout int3 a , inout int3 b ) { int3 t = a ; a = b ; b = t ; } void Swap ( inout int4 a , inout int4 b ) { int4 t = a ; a = b ; b = t ; } void Swap ( inout uint a , inout uint b ) { uint t = a ; a = b ; b = t ; } void Swap ( inout uint2 a , inout uint2 b ) { uint2 t = a ; a = b ; b = t ; } void Swap ( inout uint3 a , inout uint3 b ) { uint3 t = a ; a = b ; b = t ; } void Swap ( inout uint4 a , inout uint4 b ) { uint4 t = a ; a = b ; b = t ; } void Swap ( inout bool a , inout bool b ) { bool t = a ; a = b ; b = t ; } void Swap ( inout bool2 a , inout bool2 b ) { bool2 t = a ; a = b ; b = t ; } void Swap ( inout bool3 a , inout bool3 b ) { bool3 t = a ; a = b ; b = t ; } void Swap ( inout bool4 a , inout bool4 b ) { bool4 t = a ; a = b ; b = t ; }
#line 515
float CubeMapFaceID ( float3 dir )
{
float faceID ;

if ( abs ( dir . z ) >= abs ( dir . x ) && abs ( dir . z ) >= abs ( dir . y ) )
{
faceID = ( dir . z < 0.0 ) ? 5 : 4 ;
}
else if ( abs ( dir . y ) >= abs ( dir . x ) )
{
faceID = ( dir . y < 0.0 ) ? 3 : 2 ;
}
else
{
faceID = ( dir . x < 0.0 ) ? 1 : 0 ;
}

return faceID ;
}
#line 538
bool IsNaN ( float x )
{
return ( asuint ( x ) & 0x7FFFFFFF ) > 0x7F800000 ;
}

bool AnyIsNaN ( float2 v )
{
return ( IsNaN ( v . x ) || IsNaN ( v . y ) ) ;
}

bool AnyIsNaN ( float3 v )
{
return ( IsNaN ( v . x ) || IsNaN ( v . y ) || IsNaN ( v . z ) ) ;
}

bool AnyIsNaN ( float4 v )
{
return ( IsNaN ( v . x ) || IsNaN ( v . y ) || IsNaN ( v . z ) || IsNaN ( v . w ) ) ;
}

bool IsInf ( float x )
{
return ( asuint ( x ) & 0x7FFFFFFF ) == 0x7F800000 ;
}

bool AnyIsInf ( float2 v )
{
return ( IsInf ( v . x ) || IsInf ( v . y ) ) ;
}

bool AnyIsInf ( float3 v )
{
return ( IsInf ( v . x ) || IsInf ( v . y ) || IsInf ( v . z ) ) ;
}

bool AnyIsInf ( float4 v )
{
return ( IsInf ( v . x ) || IsInf ( v . y ) || IsInf ( v . z ) || IsInf ( v . w ) ) ;
}

bool IsFinite ( float x )
{
return ( asuint ( x ) & 0x7F800000 ) != 0x7F800000 ;
}

float SanitizeFinite ( float x )
{
return IsFinite ( x ) ? x : 0 ;
}

bool IsPositiveFinite ( float x )
{
return asuint ( x ) < 0x7F800000 ;
}

float SanitizePositiveFinite ( float x )
{
return IsPositiveFinite ( x ) ? x : 0 ;
}
#line 604
float DegToRad ( float deg )
{
return deg * ( 3.14159265358979323846 / 180.0 ) ;
}

float RadToDeg ( float rad )
{
return rad * ( 180.0 / 3.14159265358979323846 ) ;
}
#line 615
float Sq ( float x ) { return ( x ) * ( x ) ; } float2 Sq ( float2 x ) { return ( x ) * ( x ) ; } float3 Sq ( float3 x ) { return ( x ) * ( x ) ; } float4 Sq ( float4 x ) { return ( x ) * ( x ) ; }
int Sq ( int x ) { return ( x ) * ( x ) ; } int2 Sq ( int2 x ) { return ( x ) * ( x ) ; } int3 Sq ( int3 x ) { return ( x ) * ( x ) ; } int4 Sq ( int4 x ) { return ( x ) * ( x ) ; } uint Sq ( uint x ) { return ( x ) * ( x ) ; } uint2 Sq ( uint2 x ) { return ( x ) * ( x ) ; } uint3 Sq ( uint3 x ) { return ( x ) * ( x ) ; } uint4 Sq ( uint4 x ) { return ( x ) * ( x ) ; }

bool IsPower2 ( uint x )
{
return ( x & ( x - 1 ) ) == 0 ;
}
#line 625
float FastACosPos ( float inX )
{
float x = abs ( inX ) ;
float res = ( 0.0468878 * x + - 0.203471 ) * x + 1.570796 ;
res *= sqrt ( 1.0 - x ) ;

return res ;
}
#line 637
float FastACos ( float inX )
{
float res = FastACosPos ( inX ) ;

return ( inX >= 0 ) ? res : 3.14159265358979323846 - res ;
}
#line 647
float FastASin ( float x )
{
return 1.57079632679489661923 - FastACos ( x ) ;
}
#line 656
float FastATanPos ( float x )
{
float t0 = ( x < 1.0 ) ? x : 1.0 / x ;
float t1 = t0 * t0 ;
float poly = 0.0872929 ;
poly = - 0.301895 + poly * t1 ;
poly = 1.0 + poly * t1 ;
poly = poly * t0 ;
return ( x < 1.0 ) ? poly : 1.57079632679489661923 - poly ;
}
#line 669
float FastATan ( float x )
{
float t0 = FastATanPos ( abs ( x ) ) ;
return ( x < 0.0 ) ? - t0 : t0 ;
}

float FastAtan2 ( float y , float x )
{
return FastATan ( y / x ) + ( y >= 0.0 ? 3.14159265358979323846 : - 3.14159265358979323846 ) * ( x < 0.0 ) ;
}
#line 691
float PositivePow ( float base , float power ) { return pow ( abs ( base ) , power ) ; } float2 PositivePow ( float2 base , float2 power ) { return pow ( abs ( base ) , power ) ; } float3 PositivePow ( float3 base , float3 power ) { return pow ( abs ( base ) , power ) ; } float4 PositivePow ( float4 base , float4 power ) { return pow ( abs ( base ) , power ) ; }
#line 724
float SafePositivePow ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
#line 727
float SafePositivePow_float ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow_float ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow_float ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow_float ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
half SafePositivePow_half ( half base , half power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half2 SafePositivePow_half ( half2 base , half2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half3 SafePositivePow_half ( half3 base , half3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half4 SafePositivePow_half ( half4 base , half4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float SafePositivePow_half ( float base , float power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float2 SafePositivePow_half ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float3 SafePositivePow_half ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float4 SafePositivePow_half ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; }

float Eps_float ( ) { return 5.960464478e-8 ; }
float Min_float ( ) { return 1.175494351e-38 ; }
float Max_float ( ) { return 3.402823466e+38 ; }
half Eps_half ( ) { return 4.8828125e-4 ; }
half Min_half ( ) { return 6.103515625e-5 ; }
half Max_half ( ) { return 65504.0 ; }
#line 740
float CopySign ( float x , float s , bool ignoreNegZero = true )
{

if ( ignoreNegZero )
{
return ( s >= 0 ) ? abs ( x ) : - abs ( x ) ;
}
else
{
uint negZero = 0x80000000u ;
uint signBit = negZero & asuint ( s ) ;
return asfloat ( BitFieldInsert ( negZero , signBit , asuint ( x ) ) ) ;
}
#line 756
}
#line 765
float FastSign ( float s , bool ignoreNegZero = true )
{
return CopySign ( 1.0 , s , ignoreNegZero ) ;
}
#line 774
float3 Orthonormalize ( float3 tangent , float3 normal )
{

return normalize ( tangent - dot ( tangent , normal ) * normal ) ;
}
#line 781
float Remap01 ( float x , float rcpLength , float startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float2 Remap01 ( float2 x , float2 rcpLength , float2 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float3 Remap01 ( float3 x , float3 rcpLength , float3 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float4 Remap01 ( float4 x , float4 rcpLength , float4 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; }
#line 784
float Remap10 ( float x , float rcpLength , float endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float2 Remap10 ( float2 x , float2 rcpLength , float2 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float3 Remap10 ( float3 x , float3 rcpLength , float3 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float4 Remap10 ( float4 x , float4 rcpLength , float4 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; }
#line 787
float2 RemapHalfTexelCoordTo01 ( float2 coord , float2 size )
{
const float2 rcpLen = size * rcp ( size - 1 ) ;
const float2 startTimesRcpLength = 0.5 * rcp ( size - 1 ) ;

return Remap01 ( coord , rcpLen , startTimesRcpLength ) ;
}
#line 796
float2 Remap01ToHalfTexelCoord ( float2 coord , float2 size )
{
const float2 start = 0.5 * rcp ( size ) ;
const float2 len = 1 - rcp ( size ) ;

return coord * len + start ;
}
#line 805
float Smoothstep01 ( float x )
{
return x * x * ( 3 - ( 2 * x ) ) ;
}

float Smootherstep01 ( float x )
{
return x * x * x * ( x * ( x * 6 - 15 ) + 10 ) ;
}

float Smootherstep ( float a , float b , float t )
{
float r = rcp ( b - a ) ;
float x = Remap01 ( t , r , a * r ) ;
return Smootherstep01 ( x ) ;
}

float3 NLerp ( float3 A , float3 B , float t )
{
return normalize ( lerp ( A , B , t ) ) ;
}

float Length2 ( float3 v )
{
return dot ( v , v ) ;
}
#line 833
float Pow4 ( float x )
{
return ( x * x ) * ( x * x ) ;
}
#line 839
float RangeRemap ( float min , float max , float t ) { return saturate ( ( t - min ) / ( max - min ) ) ; } float2 RangeRemap ( float2 min , float2 max , float2 t ) { return saturate ( ( t - min ) / ( max - min ) ) ; } float3 RangeRemap ( float3 min , float3 max , float3 t ) { return saturate ( ( t - min ) / ( max - min ) ) ; } float4 RangeRemap ( float4 min , float4 max , float4 t ) { return saturate ( ( t - min ) / ( max - min ) ) ; }

float4x4 Inverse ( float4x4 m )
{
float n11 = m [ 0 ] [ 0 ] , n12 = m [ 1 ] [ 0 ] , n13 = m [ 2 ] [ 0 ] , n14 = m [ 3 ] [ 0 ] ;
float n21 = m [ 0 ] [ 1 ] , n22 = m [ 1 ] [ 1 ] , n23 = m [ 2 ] [ 1 ] , n24 = m [ 3 ] [ 1 ] ;
float n31 = m [ 0 ] [ 2 ] , n32 = m [ 1 ] [ 2 ] , n33 = m [ 2 ] [ 2 ] , n34 = m [ 3 ] [ 2 ] ;
float n41 = m [ 0 ] [ 3 ] , n42 = m [ 1 ] [ 3 ] , n43 = m [ 2 ] [ 3 ] , n44 = m [ 3 ] [ 3 ] ;

float t11 = n23 * n34 * n42 - n24 * n33 * n42 + n24 * n32 * n43 - n22 * n34 * n43 - n23 * n32 * n44 + n22 * n33 * n44 ;
float t12 = n14 * n33 * n42 - n13 * n34 * n42 - n14 * n32 * n43 + n12 * n34 * n43 + n13 * n32 * n44 - n12 * n33 * n44 ;
float t13 = n13 * n24 * n42 - n14 * n23 * n42 + n14 * n22 * n43 - n12 * n24 * n43 - n13 * n22 * n44 + n12 * n23 * n44 ;
float t14 = n14 * n23 * n32 - n13 * n24 * n32 - n14 * n22 * n33 + n12 * n24 * n33 + n13 * n22 * n34 - n12 * n23 * n34 ;

float det = n11 * t11 + n21 * t12 + n31 * t13 + n41 * t14 ;
float idet = 1.0f / det ;

float4x4 ret ;

ret [ 0 ] [ 0 ] = t11 * idet ;
ret [ 0 ] [ 1 ] = ( n24 * n33 * n41 - n23 * n34 * n41 - n24 * n31 * n43 + n21 * n34 * n43 + n23 * n31 * n44 - n21 * n33 * n44 ) * idet ;
ret [ 0 ] [ 2 ] = ( n22 * n34 * n41 - n24 * n32 * n41 + n24 * n31 * n42 - n21 * n34 * n42 - n22 * n31 * n44 + n21 * n32 * n44 ) * idet ;
ret [ 0 ] [ 3 ] = ( n23 * n32 * n41 - n22 * n33 * n41 - n23 * n31 * n42 + n21 * n33 * n42 + n22 * n31 * n43 - n21 * n32 * n43 ) * idet ;

ret [ 1 ] [ 0 ] = t12 * idet ;
ret [ 1 ] [ 1 ] = ( n13 * n34 * n41 - n14 * n33 * n41 + n14 * n31 * n43 - n11 * n34 * n43 - n13 * n31 * n44 + n11 * n33 * n44 ) * idet ;
ret [ 1 ] [ 2 ] = ( n14 * n32 * n41 - n12 * n34 * n41 - n14 * n31 * n42 + n11 * n34 * n42 + n12 * n31 * n44 - n11 * n32 * n44 ) * idet ;
ret [ 1 ] [ 3 ] = ( n12 * n33 * n41 - n13 * n32 * n41 + n13 * n31 * n42 - n11 * n33 * n42 - n12 * n31 * n43 + n11 * n32 * n43 ) * idet ;

ret [ 2 ] [ 0 ] = t13 * idet ;
ret [ 2 ] [ 1 ] = ( n14 * n23 * n41 - n13 * n24 * n41 - n14 * n21 * n43 + n11 * n24 * n43 + n13 * n21 * n44 - n11 * n23 * n44 ) * idet ;
ret [ 2 ] [ 2 ] = ( n12 * n24 * n41 - n14 * n22 * n41 + n14 * n21 * n42 - n11 * n24 * n42 - n12 * n21 * n44 + n11 * n22 * n44 ) * idet ;
ret [ 2 ] [ 3 ] = ( n13 * n22 * n41 - n12 * n23 * n41 - n13 * n21 * n42 + n11 * n23 * n42 + n12 * n21 * n43 - n11 * n22 * n43 ) * idet ;

ret [ 3 ] [ 0 ] = t14 * idet ;
ret [ 3 ] [ 1 ] = ( n13 * n24 * n31 - n14 * n23 * n31 + n14 * n21 * n33 - n11 * n24 * n33 - n13 * n21 * n34 + n11 * n23 * n34 ) * idet ;
ret [ 3 ] [ 2 ] = ( n14 * n22 * n31 - n12 * n24 * n31 - n14 * n21 * n32 + n11 * n24 * n32 + n12 * n21 * n34 - n11 * n22 * n34 ) * idet ;
ret [ 3 ] [ 3 ] = ( n12 * n23 * n31 - n13 * n22 * n31 + n13 * n21 * n32 - n11 * n23 * n32 - n12 * n21 * n33 + n11 * n22 * n33 ) * idet ;

return ret ;
}
#line 885
float ComputeTextureLOD ( float2 uvdx , float2 uvdy , float2 scale , float bias = 0.0 )
{
float2 ddx_ = scale * uvdx ;
float2 ddy_ = scale * uvdy ;
float d = max ( dot ( ddx_ , ddx_ ) , dot ( ddy_ , ddy_ ) ) ;

return max ( 0.5 * log2 ( d ) - bias , 0.0 ) ;
}

float ComputeTextureLOD ( float2 uv , float bias = 0.0 )
{
float2 ddx_ = ddx ( uv ) ;
float2 ddy_ = ddy ( uv ) ;

return ComputeTextureLOD ( ddx_ , ddy_ , 1.0 , bias ) ;
}
#line 903
float ComputeTextureLOD ( float2 uv , float2 texelSize , float bias = 0.0 )
{
uv *= texelSize ;

return ComputeTextureLOD ( uv , bias ) ;
}
#line 911
float ComputeTextureLOD ( float3 duvw_dx , float3 duvw_dy , float3 duvw_dz , float scale , float bias = 0.0 )
{
float d = Max3 ( dot ( duvw_dx , duvw_dx ) , dot ( duvw_dy , duvw_dy ) , dot ( duvw_dz , duvw_dz ) ) ;

return max ( 0.5f * log2 ( d * ( scale * scale ) ) - bias , 0.0 ) ;
}
#line 930
uint GetMipCount ( Texture2D tex , SamplerState smp )
{

uint mipLevel , width , height , mipCount ;
mipLevel = width = height = mipCount = 0 ;
tex . GetDimensions ( mipLevel , width , height , mipCount ) ;
return mipCount ;
#line 940
}
#line 1035
float2 DirectionToLatLongCoordinate ( float3 unDir )
{
float3 dir = normalize ( unDir ) ;

return float2 ( 1.0 - 0.5 * 0.31830988618379067154 * atan2 ( dir . x , - dir . z ) , asin ( dir . y ) * 0.31830988618379067154 + 0.5 ) ;
}

float3 LatlongToDirectionCoordinate ( float2 coord )
{
float theta = coord . y * 3.14159265358979323846 ;
float phi = ( coord . x * 2.f * 3.14159265358979323846 - 3.14159265358979323846 * 0.5f ) ;

float cosTheta = cos ( theta ) ;
float sinTheta = sqrt ( 1.0 - min ( 1.0 , cosTheta * cosTheta ) ) ;
float cosPhi = cos ( phi ) ;
float sinPhi = sin ( phi ) ;

float3 direction = float3 ( sinTheta * cosPhi , cosTheta , sinTheta * sinPhi ) ;
direction . xy *= - 1.0 ;
return direction ;
}
#line 1065
float Linear01DepthFromNear ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . x + zBufferParam . y / depth ) ;
}
#line 1074
float Linear01Depth ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . x * depth + zBufferParam . y ) ;
}
#line 1083
float LinearEyeDepth ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . z * depth + zBufferParam . w ) ;
}
#line 1092
float LinearEyeDepth ( float2 positionNDC , float deviceDepth , float4 invProjParam )
{
float4 positionCS = float4 ( positionNDC * 2.0 - 1.0 , deviceDepth , 1.0 ) ;
float viewSpaceZ = rcp ( dot ( positionCS , invProjParam ) ) ;
#line 1098
return abs ( viewSpaceZ ) ;
}
#line 1105
float LinearEyeDepth ( float3 positionWS , float4x4 viewMatrix )
{
float viewSpaceZ = mul ( viewMatrix , float4 ( positionWS , 1.0 ) ) . z ;
#line 1110
return abs ( viewSpaceZ ) ;
}
#line 1120
float EncodeLogarithmicDepthGeneralized ( float z , float4 encodingParams )
{

return encodingParams . x + encodingParams . y * log2 ( max ( 0 , z - encodingParams . z ) ) ;
}
#line 1134
float DecodeLogarithmicDepthGeneralized ( float d , float4 decodingParams )
{
return decodingParams . x * exp2 ( d * decodingParams . y ) + decodingParams . z ;
}
#line 1143
float EncodeLogarithmicDepth ( float z , float4 encodingParams )
{
#line 1147
return log2 ( max ( 0 , z * encodingParams . z ) ) * encodingParams . w ;
}
#line 1155
float DecodeLogarithmicDepth ( float d , float4 encodingParams )
{

return encodingParams . x * exp2 ( d * encodingParams . y ) ;
}

float4 CompositeOver ( float4 front , float4 back )
{
return front + ( 1 - front . a ) * back ;
}

void CompositeOver ( float3 colorFront , float3 alphaFront ,
float3 colorBack , float3 alphaBack ,
out float3 color , out float3 alpha )
{
color = colorFront + ( 1 - alphaFront ) * colorBack ;
alpha = alphaFront + ( 1 - alphaFront ) * alphaBack ;
}
#line 1178
static const float3x3 k_identity3x3 = { 1 , 0 , 0 ,
0 , 1 , 0 ,
0 , 0 , 1 } ;

static const float4x4 k_identity4x4 = { 1 , 0 , 0 , 0 ,
0 , 1 , 0 , 0 ,
0 , 0 , 1 , 0 ,
0 , 0 , 0 , 1 } ;

float4 ComputeClipSpacePosition ( float2 positionNDC , float deviceDepth )
{
float4 positionCS = float4 ( positionNDC * 2.0 - 1.0 , deviceDepth , 1.0 ) ;
#line 1196
positionCS . y = - positionCS . y ;
#line 1199
return positionCS ;
}
#line 1206
float4 ComputeClipSpacePosition ( float3 position , float4x4 clipSpaceTransform = k_identity4x4 )
{
return mul ( clipSpaceTransform , float4 ( position , 1.0 ) ) ;
}
#line 1216
float3 ComputeNormalizedDeviceCoordinatesWithZ ( float3 position , float4x4 clipSpaceTransform = k_identity4x4 )
{
float4 positionCS = ComputeClipSpacePosition ( position , clipSpaceTransform ) ;
#line 1225
positionCS . y = - positionCS . y ;
#line 1228
positionCS *= rcp ( positionCS . w ) ;
positionCS . xy = positionCS . xy * 0.5 + 0.5 ;

return positionCS . xyz ;
}
#line 1238
float2 ComputeNormalizedDeviceCoordinates ( float3 position , float4x4 clipSpaceTransform = k_identity4x4 )
{
return ComputeNormalizedDeviceCoordinatesWithZ ( position , clipSpaceTransform ) . xy ;
}

float3 ComputeViewSpacePosition ( float2 positionNDC , float deviceDepth , float4x4 invProjMatrix )
{
float4 positionCS = ComputeClipSpacePosition ( positionNDC , deviceDepth ) ;
float4 positionVS = mul ( invProjMatrix , positionCS ) ;

positionVS . z = - positionVS . z ;
return positionVS . xyz / positionVS . w ;
}

float3 ComputeWorldSpacePosition ( float2 positionNDC , float deviceDepth , float4x4 invViewProjMatrix )
{
float4 positionCS = ComputeClipSpacePosition ( positionNDC , deviceDepth ) ;
float4 hpositionWS = mul ( invViewProjMatrix , positionCS ) ;
return hpositionWS . xyz / hpositionWS . w ;
}

float3 ComputeWorldSpacePosition ( float4 positionCS , float4x4 invViewProjMatrix )
{
float4 hpositionWS = mul ( invViewProjMatrix , positionCS ) ;
return hpositionWS . xyz / hpositionWS . w ;
}
#line 1270
struct PositionInputs
{
float3 positionWS ;
float2 positionNDC ;
uint2 positionSS ;
uint2 tileCoord ;
float deviceDepth ;
float linearDepth ;
} ;
#line 1284
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , uint2 tileCoord )
{
PositionInputs posInput ;
posInput = ( PositionInputs ) 0 ; ;

posInput . positionNDC = positionSS ;
#line 1294
posInput . positionNDC *= invScreenSize ;
posInput . positionSS = uint2 ( positionSS ) ;
posInput . tileCoord = tileCoord ;

return posInput ;
}

PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize )
{
return GetPositionInput ( positionSS , invScreenSize , uint2 ( 0 , 0 ) ) ;
}
#line 1308
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float3 positionWS )
{
PositionInputs posInput = GetPositionInput ( positionSS , invScreenSize , uint2 ( 0 , 0 ) ) ;
posInput . positionWS = positionWS ;

return posInput ;
}
#line 1318
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float deviceDepth , float linearDepth , float3 positionWS , uint2 tileCoord )
{
PositionInputs posInput = GetPositionInput ( positionSS , invScreenSize , tileCoord ) ;
posInput . positionWS = positionWS ;
posInput . deviceDepth = deviceDepth ;
posInput . linearDepth = linearDepth ;

return posInput ;
}

PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float deviceDepth , float linearDepth , float3 positionWS )
{
return GetPositionInput ( positionSS , invScreenSize , deviceDepth , linearDepth , positionWS , uint2 ( 0 , 0 ) ) ;
}
#line 1336
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float deviceDepth ,
float4x4 invViewProjMatrix , float4x4 viewMatrix ,
uint2 tileCoord )
{
PositionInputs posInput = GetPositionInput ( positionSS , invScreenSize , tileCoord ) ;
posInput . positionWS = ComputeWorldSpacePosition ( posInput . positionNDC , deviceDepth , invViewProjMatrix ) ;
posInput . deviceDepth = deviceDepth ;
posInput . linearDepth = LinearEyeDepth ( posInput . positionWS , viewMatrix ) ;

return posInput ;
}

PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float deviceDepth ,
float4x4 invViewProjMatrix , float4x4 viewMatrix )
{
return GetPositionInput ( positionSS , invScreenSize , deviceDepth , invViewProjMatrix , viewMatrix , uint2 ( 0 , 0 ) ) ;
}
#line 1356
void ApplyDepthOffsetPositionInput ( float3 V , float depthOffsetVS , float3 viewForwardDir , float4x4 viewProjMatrix , inout PositionInputs posInput )
{
posInput . positionWS += depthOffsetVS * ( - V ) ;
posInput . deviceDepth = ComputeNormalizedDeviceCoordinatesWithZ ( posInput . positionWS , viewProjMatrix ) . z ;
#line 1364
posInput . linearDepth += depthOffsetVS * abs ( dot ( V , viewForwardDir ) ) ;
}
#line 1375
float4 PackHeightmap ( float height )
{
uint a = ( uint ) ( 65535.0 * height ) ;
return float4 ( ( a >> 0 ) & 0xFF , ( a >> 8 ) & 0xFF , 0 , 0 ) / 255.0 ;
}

float UnpackHeightmap ( float4 height )
{
return ( height . r + height . g * 256.0 ) / 257.0 ;
}
#line 1409
bool HasFlag ( uint bitfield , uint flag )
{
return ( bitfield & flag ) != 0 ;
}
#line 1415
float3 SafeNormalize ( float3 inVec )
{
float dp3 = max ( 1.175494351e-38 , dot ( inVec , inVec ) ) ;
return inVec * rsqrt ( dp3 ) ;
}
#line 1422
bool IsNormalized ( float3 inVec )
{
float l = length ( inVec ) ;
return length ( l ) < 1.0001 && length ( l ) > 0.9999 ;
}
#line 1430
float SafeDiv ( float numer , float denom )
{
return ( numer != denom ) ? numer / denom : 1 ;
}
#line 1436
float SafeSqrt ( float x )
{
return sqrt ( max ( 0 , x ) ) ;
}
#line 1442
float SinFromCos ( float cosX )
{
return sqrt ( saturate ( 1 - cosX * cosX ) ) ;
}
#line 1448
float SphericalDot ( float cosTheta1 , float phi1 , float cosTheta2 , float phi2 )
{
return SinFromCos ( cosTheta1 ) * SinFromCos ( cosTheta2 ) * cos ( phi1 - phi2 ) + cosTheta1 * cosTheta2 ;
}
#line 1455
float2 GetFullScreenTriangleTexCoord ( uint vertexID )
{

return float2 ( ( vertexID << 1 ) & 2 , 1.0 - ( vertexID & 2 ) ) ;
#line 1462
}

float4 GetFullScreenTriangleVertexPosition ( uint vertexID , float z = ( 1.0 ) )
{

float2 uv = float2 ( ( vertexID << 1 ) & 2 , vertexID & 2 ) ;
float4 pos = float4 ( uv * 2.0 - 1.0 , z , 1.0 ) ;
#line 1472
return pos ;
}
#line 1483
float2 GetQuadTexCoord ( uint vertexID )
{
uint topBit = vertexID >> 1 ;
uint botBit = ( vertexID & 1 ) ;
float u = topBit ;
float v = ( topBit + botBit ) & 1 ;

v = 1.0 - v ;

return float2 ( u , v ) ;
}
#line 1499
float4 GetQuadVertexPosition ( uint vertexID , float z = ( 1.0 ) )
{
uint topBit = vertexID >> 1 ;
uint botBit = ( vertexID & 1 ) ;
float x = topBit ;
float y = 1 - ( topBit + botBit ) & 1 ;
float4 pos = float4 ( x , y , z , 1.0 ) ;
#line 1509
return pos ;
}
#line 1518
void LODDitheringTransition ( uint2 fadeMaskSeed , float ditherFactor )
{
#line 1522
float p = GenerateHashedRandomFloat ( fadeMaskSeed ) ;
#line 1525
float f = ditherFactor - CopySign ( p , ditherFactor ) ;
clip ( f ) ;
}
#line 1533
uint GetStencilValue ( uint2 stencilBufferVal )
{
#line 1538
return stencilBufferVal . x ;

}
#line 1545
float SharpenAlpha ( float alpha , float alphaClipTreshold )
{
return saturate ( ( alpha - alphaClipTreshold ) / max ( fwidth ( alpha ) , 0.0001 ) + 0.5 ) ;
}
#line 1551
float ClampToFloat16Max ( float value ) { return min ( value , 65504.0 ) ; } float2 ClampToFloat16Max ( float2 value ) { return min ( value , 65504.0 ) ; } float3 ClampToFloat16Max ( float3 value ) { return min ( value , 65504.0 ) ; } float4 ClampToFloat16Max ( float4 value ) { return min ( value , 65504.0 ) ; }
#line 1557
float2 RepeatOctahedralUV ( float u , float v )
{
float2 uv ;

if ( u < 0.0f )
{
if ( v < 0.0f )
uv = float2 ( 1.0f + u , 1.0f + v ) ;
else if ( v < 1.0f )
uv = float2 ( - u , 1.0f - v ) ;
else
uv = float2 ( 1.0f + u , v - 1.0f ) ;
}
else if ( u < 1.0f )
{
if ( v < 0.0f )
uv = float2 ( 1.0f - u , - v ) ;
else if ( v < 1.0f )
uv = float2 ( u , v ) ;
else
uv = float2 ( 1.0f - u , 2.0f - v ) ;
}
else
{
if ( v < 0.0f )
uv = float2 ( u - 1.0f , 1.0f + v ) ;
else if ( v < 1.0f )
uv = float2 ( 2.0f - u , 1.0f - v ) ;
else
uv = float2 ( u - 1.0f , v - 1.0f ) ;
}

return uv ;
}
#line 9 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/ShaderTypes.cs.hlsl"
struct LightData
{
float4 position ;
float4 color ;
float4 attenuation ;
float4 spotDirection ;
float4 occlusionProbeChannels ;
uint layerMask ;
} ;
#line 23 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/Deprecated.hlsl"
half4 _DrawObjectPassData ;
#line 35
struct ShadowData
{
float4x4 worldToShadowMatrix ;
float4 shadowParams ;
} ;
#line 32 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/Input.hlsl"
struct InputData
{
float3 positionWS ;
float4 positionCS ;
float3 normalWS ;
half3 viewDirectionWS ;
float4 shadowCoord ;
half fogCoord ;
half3 vertexLighting ;
half3 bakedGI ;
float2 normalizedScreenSpaceUV ;
half4 shadowMask ;
half3x3 tangentToWorld ;
#line 70
} ;
#line 76
half4 _GlossyEnvironmentColor ;
half4 _SubtractiveShadowColor ;

half4 _GlossyEnvironmentCubeMap_HDR ;
TextureCube _GlossyEnvironmentCubeMap ;
SamplerState sampler_GlossyEnvironmentCubeMap ;
#line 84
float4 _ScaledScreenParams ;
#line 88
float2 _GlobalMipBias ;
#line 91
float _AlphaToMaskAvailable ;

float4 _MainLightPosition ;
half4 _MainLightColor ;
half4 _MainLightOcclusionProbes ;
uint _MainLightLayerMask ;
#line 100
half4 _AmbientOcclusionParam ;

half4 _AdditionalLightsCount ;

uint _RenderingLayerMaxInt ;
float _RenderingLayerRcpMaxInt ;
#line 108
float4 _ScreenCoordScaleBias ;
float4 _ScreenSizeOverride ;
#line 132
cbuffer AdditionalLights {

float4 _AdditionalLightsPosition [ 256 ] ;
half4 _AdditionalLightsColor [ 256 ] ;
half4 _AdditionalLightsAttenuation [ 256 ] ;
half4 _AdditionalLightsSpotDir [ 256 ] ;
half4 _AdditionalLightsOcclusionProbes [ 256 ] ;
float _AdditionalLightsLayerMasks [ 256 ] ;

} ;
#line 40 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/UnityInput.hlsl"
float4 _Time ;
float4 _SinTime ;
float4 _CosTime ;
float4 unity_DeltaTime ;
float4 _TimeParameters ;
#line 47
float3 _WorldSpaceCameraPos ;
#line 54
float4 _ProjectionParams ;
#line 60
float4 _ScreenParams ;
#line 72
float4 _ZBufferParams ;
#line 78
float4 unity_OrthoParams ;
#line 84
uniform float4 _ScaleBias ;
uniform float4 _ScaleBiasRt ;

float4 unity_CameraWorldClipPlanes [ 6 ] ;
#line 93
float4x4 unity_CameraProjection ;
float4x4 unity_CameraInvProjection ;
float4x4 unity_WorldToCamera ;
float4x4 unity_CameraToWorld ;
#line 104
cbuffer UnityPerDraw {

float4x4 unity_ObjectToWorld ;
float4x4 unity_WorldToObject ;
float4 unity_LODFade ;
float4 unity_WorldTransformParams ;
#line 113
float4 unity_RenderingLayer ;
#line 117
half4 unity_LightData ;
half4 unity_LightIndices [ 2 ] ;

float4 unity_ProbesOcclusion ;
#line 124
float4 unity_SpecCube0_HDR ;
float4 unity_SpecCube1_HDR ;

float4 unity_SpecCube0_BoxMax ;
float4 unity_SpecCube0_BoxMin ;
float4 unity_SpecCube0_ProbePosition ;
float4 unity_SpecCube1_BoxMax ;
float4 unity_SpecCube1_BoxMin ;
float4 unity_SpecCube1_ProbePosition ;
#line 135
float4 unity_LightmapST ;
float4 unity_DynamicLightmapST ;
#line 139
float4 unity_SHAr ;
float4 unity_SHAg ;
float4 unity_SHAb ;
float4 unity_SHBr ;
float4 unity_SHBg ;
float4 unity_SHBb ;
float4 unity_SHC ;
#line 148
float4 unity_RendererBounds_Min ;
float4 unity_RendererBounds_Max ;
#line 152
float4x4 unity_MatrixPreviousM ;
float4x4 unity_MatrixPreviousMI ;
#line 158
float4 unity_MotionVectorsParams ;
#line 161
float4 unity_SpriteColor ;
#line 166
float4 unity_SpriteProps ;
} ;
#line 208
float4x4 glstate_matrix_transpose_modelview0 ;
#line 212
float4 glstate_lightmodel_ambient ;
float4 unity_AmbientSky ;
float4 unity_AmbientEquator ;
float4 unity_AmbientGround ;
float4 unity_IndirectSpecColor ;
float4 unity_FogParams ;
float4 unity_FogColor ;
#line 221
float4x4 glstate_matrix_projection ;
float4x4 unity_MatrixV ;
float4x4 unity_MatrixInvV ;
float4x4 unity_MatrixInvP ;
float4x4 unity_MatrixVP ;
float4x4 unity_MatrixInvVP ;
float4 unity_StereoScaleOffset ;
int unity_StereoEyeIndex ;
#line 231
float4 unity_ShadowColor ;
#line 236
TextureCube unity_SpecCube0 ;
SamplerState samplerunity_SpecCube0 ;
TextureCube unity_SpecCube1 ;
SamplerState samplerunity_SpecCube1 ;
#line 242
Texture2D unity_Lightmap ;
SamplerState samplerunity_Lightmap ;
Texture2DArray unity_Lightmaps ;
SamplerState samplerunity_Lightmaps ;
#line 248
Texture2D unity_DynamicLightmap ;
SamplerState samplerunity_DynamicLightmap ;
#line 253
Texture2D unity_LightmapInd ;
Texture2DArray unity_LightmapsInd ;
Texture2D unity_DynamicDirectionality ;
#line 259
Texture2D unity_ShadowMask ;
SamplerState samplerunity_ShadowMask ;
Texture2DArray unity_ShadowMasks ;
SamplerState samplerunity_ShadowMasks ;
#line 277
float4x4 _PrevViewProjMatrix ;
float4x4 _NonJitteredViewProjMatrix ;
float4x4 _ViewProjMatrix ;

float4x4 _ViewMatrix ;
float4x4 _ProjMatrix ;
float4x4 _InvViewProjMatrix ;
float4x4 _InvViewMatrix ;
float4x4 _InvProjMatrix ;
float4 _InvProjParam ;
float4 _ScreenSize ;
float4 _FrustumPlanes [ 6 ] ;

float4x4 OptimizeProjectionMatrix ( float4x4 M )
{
#line 300
M . _21_41 = 0 ;
M . _12_42 = 0 ;
return M ;
}
#line 11 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/SpaceTransforms.hlsl"
float4x4 GetObjectToWorldMatrix ( )
{
return unity_ObjectToWorld ;
}

float4x4 GetWorldToObjectMatrix ( )
{
return unity_WorldToObject ;
}

float4x4 GetPrevObjectToWorldMatrix ( )
{
return unity_MatrixPreviousM ;
}

float4x4 GetPrevWorldToObjectMatrix ( )
{
return unity_MatrixPreviousMI ;
}

float4x4 GetWorldToViewMatrix ( )
{
return unity_MatrixV ;
}

float4x4 GetViewToWorldMatrix ( )
{
return unity_MatrixInvV ;
}
#line 42
float4x4 GetWorldToHClipMatrix ( )
{
return unity_MatrixVP ;
}
#line 48
float4x4 GetViewToHClipMatrix ( )
{
return OptimizeProjectionMatrix ( glstate_matrix_projection ) ;
}
#line 54
float3 GetAbsolutePositionWS ( float3 positionRWS )
{
#line 59
return positionRWS ;
}
#line 63
float3 GetCameraRelativePositionWS ( float3 positionWS )
{
#line 68
return positionWS ;
}

float GetOddNegativeScale ( )
{
#line 76
return unity_WorldTransformParams . w >= 0.0 ? 1.0 : - 1.0 ;
}

float3 TransformObjectToWorld ( float3 positionOS )
{
#line 84
return mul ( GetObjectToWorldMatrix ( ) , float4 ( positionOS , 1.0 ) ) . xyz ;

}

float3 TransformWorldToObject ( float3 positionWS )
{
#line 93
return mul ( GetWorldToObjectMatrix ( ) , float4 ( positionWS , 1.0 ) ) . xyz ;

}

float3 TransformWorldToView ( float3 positionWS )
{
return mul ( GetWorldToViewMatrix ( ) , float4 ( positionWS , 1.0 ) ) . xyz ;
}

float3 TransformViewToWorld ( float3 positionVS )
{
return mul ( GetViewToWorldMatrix ( ) , float4 ( positionVS , 1.0 ) ) . xyz ;
}
#line 108
float4 TransformObjectToHClip ( float3 positionOS )
{

return mul ( GetWorldToHClipMatrix ( ) , mul ( GetObjectToWorldMatrix ( ) , float4 ( positionOS , 1.0 ) ) ) ;
}
#line 115
float4 TransformWorldToHClip ( float3 positionWS )
{
return mul ( GetWorldToHClipMatrix ( ) , float4 ( positionWS , 1.0 ) ) ;
}
#line 121
float4 TransformWViewToHClip ( float3 positionVS )
{
return mul ( GetViewToHClipMatrix ( ) , float4 ( positionVS , 1.0 ) ) ;
}
#line 127
float3 TransformObjectToWorldDir ( float3 dirOS , bool doNormalize = true )
{

float3 dirWS = mul ( ( float3x3 ) GetObjectToWorldMatrix ( ) , dirOS ) ;
#line 134
if ( doNormalize )
return SafeNormalize ( dirWS ) ;

return dirWS ;
}
#line 141
float3 TransformWorldToObjectDir ( float3 dirWS , bool doNormalize = true )
{

float3 dirOS = mul ( ( float3x3 ) GetWorldToObjectMatrix ( ) , dirWS ) ;
#line 148
if ( doNormalize )
return normalize ( dirOS ) ;

return dirOS ;
}
#line 155
float3 TransformWorldToViewDir ( float3 dirWS , bool doNormalize = false )
{
float3 dirVS = mul ( ( float3x3 ) GetWorldToViewMatrix ( ) , dirWS ) . xyz ;
if ( doNormalize )
return normalize ( dirVS ) ;

return dirVS ;
}
#line 165
float3 TransformViewToWorldDir ( float3 dirVS , bool doNormalize = false )
{
float3 dirWS = mul ( ( float3x3 ) GetViewToWorldMatrix ( ) , dirVS ) . xyz ;
if ( doNormalize )
return normalize ( dirWS ) ;

return dirWS ;
}
#line 175
float3 TransformWorldToViewNormal ( float3 normalWS , bool doNormalize = false )
{

return TransformWorldToViewDir ( normalWS , doNormalize ) ;
}
#line 182
float3 TransformViewToWorldNormal ( float3 normalVS , bool doNormalize = false )
{

return TransformViewToWorldDir ( normalVS , doNormalize ) ;
}
#line 189
float3 TransformWorldToHClipDir ( float3 directionWS , bool doNormalize = false )
{
float3 dirHCS = mul ( ( float3x3 ) GetWorldToHClipMatrix ( ) , directionWS ) . xyz ;
if ( doNormalize )
return normalize ( dirHCS ) ;

return dirHCS ;
}
#line 199
float3 TransformObjectToWorldNormal ( float3 normalOS , bool doNormalize = true )
{
#line 205
float3 normalWS = mul ( normalOS , ( float3x3 ) GetWorldToObjectMatrix ( ) ) ;
if ( doNormalize )
return SafeNormalize ( normalWS ) ;

return normalWS ;

}
#line 214
float3 TransformWorldToObjectNormal ( float3 normalWS , bool doNormalize = true )
{
#line 220
float3 normalOS = mul ( normalWS , ( float3x3 ) GetObjectToWorldMatrix ( ) ) ;
if ( doNormalize )
return SafeNormalize ( normalOS ) ;

return normalOS ;

}

float3x3 CreateTangentToWorld ( float3 normal , float3 tangent , float flipSign )
{

float sgn = flipSign * GetOddNegativeScale ( ) ;
float3 bitangent = cross ( normal , tangent ) * sgn ;

return float3x3 ( tangent , bitangent , normal ) ;
}
#line 239
float3 TransformTangentToWorld ( float3 normalTS , float3x3 tangentToWorld , bool doNormalize = false )
{

float3 result = mul ( normalTS , tangentToWorld ) ;
if ( doNormalize )
return SafeNormalize ( result ) ;
return result ;
}
#line 253
float3 TransformWorldToTangent ( float3 normalWS , float3x3 tangentToWorld , bool doNormalize = true )
{

float3 row0 = tangentToWorld [ 0 ] ;
float3 row1 = tangentToWorld [ 1 ] ;
float3 row2 = tangentToWorld [ 2 ] ;
#line 261
float3 col0 = cross ( row1 , row2 ) ;
float3 col1 = cross ( row2 , row0 ) ;
float3 col2 = cross ( row0 , row1 ) ;

float determinant = dot ( row0 , col0 ) ;
#line 270
float3x3 matTBN_I_T = float3x3 ( col0 , col1 , col2 ) ;
float3 result = mul ( matTBN_I_T , normalWS ) ;
if ( doNormalize )
{
float sgn = determinant < 0.0 ? ( - 1.0 ) : 1.0 ;
return SafeNormalize ( sgn * result ) ;
}
else
return result / determinant ;
}
#line 283
float3 TransformWorldToTangentDir ( float3 dirWS , float3x3 tangentToWorld , bool doNormalize = false )
{

float3 result = mul ( tangentToWorld , dirWS ) ;
if ( doNormalize )
return SafeNormalize ( result ) ;
return result ;
}
#line 295
float3 TransformTangentToWorldDir ( float3 dirWS , float3x3 tangentToWorld , bool doNormalize = false )
{

float3 row0 = tangentToWorld [ 0 ] ;
float3 row1 = tangentToWorld [ 1 ] ;
float3 row2 = tangentToWorld [ 2 ] ;
#line 303
float3 col0 = cross ( row1 , row2 ) ;
float3 col1 = cross ( row2 , row0 ) ;
float3 col2 = cross ( row0 , row1 ) ;

float determinant = dot ( row0 , col0 ) ;
#line 312
float3x3 matTBN_I_T = float3x3 ( col0 , col1 , col2 ) ;
float3 result = mul ( dirWS , matTBN_I_T ) ;
if ( doNormalize )
{
float sgn = determinant < 0.0 ? ( - 1.0 ) : 1.0 ;
return SafeNormalize ( sgn * result ) ;
}
else
return result / determinant ;
}
#line 324
float3 TransformTangentToObject ( float3 dirTS , float3x3 tangentToWorld )
{

float3 normalWS = TransformTangentToWorld ( dirTS , tangentToWorld ) ;
return TransformWorldToObjectNormal ( normalWS ) ;
}
#line 332
float3 TransformObjectToTangent ( float3 dirOS , float3x3 tangentToWorld )
{
#line 337
float3 normalWS = TransformObjectToWorldNormal ( dirOS , false ) ;
#line 340
return TransformWorldToTangent ( normalWS , tangentToWorld ) ;
}
#line 36 ""
struct appdata_t
{
float4 vertex : POSITION ;

} ;

struct v2f
{
float4 vertex : SV_POSITION ;

} ;

v2f vert ( appdata_t v )
{
v2f o ;
;
;
o . vertex = TransformObjectToHClip ( v . vertex . xyz ) ;
return o ;
}

float4 frag ( v2f i ) : SV_Target
{
return float4 ( 0 , 1 , 1 , 1 ) ;
}
