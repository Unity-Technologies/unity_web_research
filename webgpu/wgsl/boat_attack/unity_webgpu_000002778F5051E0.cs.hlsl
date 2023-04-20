#line 1 "Packages/com.unity.render-pipelines.core/Tests/Runtime/Threading/FunctionTestsGroup.compute"
static const int GROUP_SIZE_1024 = 0 ;
static const int GROUP_SIZE_128 = 0 ;
static const int GROUP_SIZE_16 = 0 ;
static const int GROUP_SIZE_2 = 0 ;
static const int GROUP_SIZE_256 = 0 ;
static const int GROUP_SIZE_32 = 0 ;
static const int GROUP_SIZE_4 = 0 ;
static const int GROUP_SIZE_512 = 0 ;
static const int GROUP_SIZE_64 = 0 ;
static const int GROUP_SIZE_8 = 0 ;
#line 4 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Random.hlsl"
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
#line 16
uint JenkinsHash ( uint x )
{
x += ( x << 10u ) ;
x ^= ( x >> 6u ) ;
x += ( x << 3u ) ;
x ^= ( x >> 11u ) ;
x += ( x << 15u ) ;
return x ;
}
#line 27
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
#line 44
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
#line 62
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
#line 93
float InterleavedGradientNoise ( float2 pixCoord , int frameCount )
{
const float3 magic = float3 ( 0.06711056f , 0.00583715f , 52.9829189f ) ;
float2 frameMagicScale = float2 ( 2.083f , 4.867f ) ;
pixCoord += frameCount * frameMagicScale ;
return frac ( magic . z * frac ( dot ( pixCoord , magic . xy ) ) ) ;
}
#line 102
uint XorShift ( inout uint rngState )
{
rngState ^= rngState << 13 ;
rngState ^= rngState >> 17 ;
rngState ^= rngState << 5 ;
return rngState ;
}
#line 8 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/CommonDeprecated.hlsl"
void LODDitheringTransition ( uint3 fadeMaskSeed , float ditherFactor )
{
ditherFactor = ditherFactor < 0.0 ? 1 + ditherFactor : ditherFactor ;

float p = GenerateHashedRandomFloat ( fadeMaskSeed ) ;
p = ( ditherFactor >= 0.5 ) ? p : 1 - p ;
clip ( ditherFactor - p ) ;
}
#line 442 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Common.hlsl"
uint BitFieldExtract ( uint data , uint offset , uint numBits )
{
uint mask = ( 1u << numBits ) - 1u ;
return ( data >> offset ) & mask ;
}
#line 453
int BitFieldExtractSignExtend ( int data , uint offset , uint numBits )
{
int shifted = data >> offset ;
int signBit = shifted & ( 1u << ( numBits - 1u ) ) ;
uint mask = ( 1u << numBits ) - 1u ;

return - signBit | ( shifted & mask ) ;
}
#line 465
uint BitFieldInsert ( uint mask , uint src , uint dst )
{
return ( src & mask ) | ( dst & ~ mask ) ;
}
#line 471
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
#line 493
float WaveReadLaneFirst ( float scalarValue ) { return scalarValue ; } float2 WaveReadLaneFirst ( float2 scalarValue ) { return scalarValue ; } float3 WaveReadLaneFirst ( float3 scalarValue ) { return scalarValue ; } float4 WaveReadLaneFirst ( float4 scalarValue ) { return scalarValue ; }
int WaveReadLaneFirst ( int scalarValue ) { return scalarValue ; } int2 WaveReadLaneFirst ( int2 scalarValue ) { return scalarValue ; } int3 WaveReadLaneFirst ( int3 scalarValue ) { return scalarValue ; } int4 WaveReadLaneFirst ( int4 scalarValue ) { return scalarValue ; } uint WaveReadLaneFirst ( uint scalarValue ) { return scalarValue ; } uint2 WaveReadLaneFirst ( uint2 scalarValue ) { return scalarValue ; } uint3 WaveReadLaneFirst ( uint3 scalarValue ) { return scalarValue ; } uint4 WaveReadLaneFirst ( uint4 scalarValue ) { return scalarValue ; }
#line 498
int Mul24 ( int a , int b ) { return a * b ; } int2 Mul24 ( int2 a , int2 b ) { return a * b ; } int3 Mul24 ( int3 a , int3 b ) { return a * b ; } int4 Mul24 ( int4 a , int4 b ) { return a * b ; } uint Mul24 ( uint a , uint b ) { return a * b ; } uint2 Mul24 ( uint2 a , uint2 b ) { return a * b ; } uint3 Mul24 ( uint3 a , uint3 b ) { return a * b ; } uint4 Mul24 ( uint4 a , uint4 b ) { return a * b ; }
#line 502
int Mad24 ( int a , int b , int c ) { return a * b + c ; } int2 Mad24 ( int2 a , int2 b , int2 c ) { return a * b + c ; } int3 Mad24 ( int3 a , int3 b , int3 c ) { return a * b + c ; } int4 Mad24 ( int4 a , int4 b , int4 c ) { return a * b + c ; } uint Mad24 ( uint a , uint b , uint c ) { return a * b + c ; } uint2 Mad24 ( uint2 a , uint2 b , uint2 c ) { return a * b + c ; } uint3 Mad24 ( uint3 a , uint3 b , uint3 c ) { return a * b + c ; } uint4 Mad24 ( uint4 a , uint4 b , uint4 c ) { return a * b + c ; }
#line 506
float Min3 ( float a , float b , float c ) { return min ( min ( a , b ) , c ) ; } float2 Min3 ( float2 a , float2 b , float2 c ) { return min ( min ( a , b ) , c ) ; } float3 Min3 ( float3 a , float3 b , float3 c ) { return min ( min ( a , b ) , c ) ; } float4 Min3 ( float4 a , float4 b , float4 c ) { return min ( min ( a , b ) , c ) ; }
int Min3 ( int a , int b , int c ) { return min ( min ( a , b ) , c ) ; } int2 Min3 ( int2 a , int2 b , int2 c ) { return min ( min ( a , b ) , c ) ; } int3 Min3 ( int3 a , int3 b , int3 c ) { return min ( min ( a , b ) , c ) ; } int4 Min3 ( int4 a , int4 b , int4 c ) { return min ( min ( a , b ) , c ) ; } uint Min3 ( uint a , uint b , uint c ) { return min ( min ( a , b ) , c ) ; } uint2 Min3 ( uint2 a , uint2 b , uint2 c ) { return min ( min ( a , b ) , c ) ; } uint3 Min3 ( uint3 a , uint3 b , uint3 c ) { return min ( min ( a , b ) , c ) ; } uint4 Min3 ( uint4 a , uint4 b , uint4 c ) { return min ( min ( a , b ) , c ) ; }
float Max3 ( float a , float b , float c ) { return max ( max ( a , b ) , c ) ; } float2 Max3 ( float2 a , float2 b , float2 c ) { return max ( max ( a , b ) , c ) ; } float3 Max3 ( float3 a , float3 b , float3 c ) { return max ( max ( a , b ) , c ) ; } float4 Max3 ( float4 a , float4 b , float4 c ) { return max ( max ( a , b ) , c ) ; }
int Max3 ( int a , int b , int c ) { return max ( max ( a , b ) , c ) ; } int2 Max3 ( int2 a , int2 b , int2 c ) { return max ( max ( a , b ) , c ) ; } int3 Max3 ( int3 a , int3 b , int3 c ) { return max ( max ( a , b ) , c ) ; } int4 Max3 ( int4 a , int4 b , int4 c ) { return max ( max ( a , b ) , c ) ; } uint Max3 ( uint a , uint b , uint c ) { return max ( max ( a , b ) , c ) ; } uint2 Max3 ( uint2 a , uint2 b , uint2 c ) { return max ( max ( a , b ) , c ) ; } uint3 Max3 ( uint3 a , uint3 b , uint3 c ) { return max ( max ( a , b ) , c ) ; } uint4 Max3 ( uint4 a , uint4 b , uint4 c ) { return max ( max ( a , b ) , c ) ; }
#line 512
float Avg3 ( float a , float b , float c ) { return ( a + b + c ) * 0.33333333 ; } float2 Avg3 ( float2 a , float2 b , float2 c ) { return ( a + b + c ) * 0.33333333 ; } float3 Avg3 ( float3 a , float3 b , float3 c ) { return ( a + b + c ) * 0.33333333 ; } float4 Avg3 ( float4 a , float4 b , float4 c ) { return ( a + b + c ) * 0.33333333 ; }
#line 515
float2 GetQuadOffset ( int2 screenPos )
{
return float2 ( float ( screenPos . x & 1 ) * 2.0 - 1.0 , float ( screenPos . y & 1 ) * 2.0 - 1.0 ) ;
}
#line 521
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
#line 540
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
#line 580
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
#line 602
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
#line 666
float DegToRad ( float deg )
{
return deg * ( 3.14159265358979323846 / 180.0 ) ;
}

float RadToDeg ( float rad )
{
return rad * ( 180.0 / 3.14159265358979323846 ) ;
}
#line 677
float Sq ( float x ) { return ( x ) * ( x ) ; } float2 Sq ( float2 x ) { return ( x ) * ( x ) ; } float3 Sq ( float3 x ) { return ( x ) * ( x ) ; } float4 Sq ( float4 x ) { return ( x ) * ( x ) ; }
int Sq ( int x ) { return ( x ) * ( x ) ; } int2 Sq ( int2 x ) { return ( x ) * ( x ) ; } int3 Sq ( int3 x ) { return ( x ) * ( x ) ; } int4 Sq ( int4 x ) { return ( x ) * ( x ) ; } uint Sq ( uint x ) { return ( x ) * ( x ) ; } uint2 Sq ( uint2 x ) { return ( x ) * ( x ) ; } uint3 Sq ( uint3 x ) { return ( x ) * ( x ) ; } uint4 Sq ( uint4 x ) { return ( x ) * ( x ) ; }

bool IsPower2 ( uint x )
{
return ( x & ( x - 1 ) ) == 0 ;
}
#line 687
float FastACosPos ( float inX )
{
float x = abs ( inX ) ;
float res = ( 0.0468878 * x + - 0.203471 ) * x + 1.570796 ;
res *= sqrt ( 1.0 - x ) ;

return res ;
}
#line 699
float FastACos ( float inX )
{
float res = FastACosPos ( inX ) ;

return ( inX >= 0 ) ? res : 3.14159265358979323846 - res ;
}
#line 709
float FastASin ( float x )
{
return 1.57079632679489661923 - FastACos ( x ) ;
}
#line 718
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
#line 731
float FastATan ( float x )
{
float t0 = FastATanPos ( abs ( x ) ) ;
return ( x < 0.0 ) ? - t0 : t0 ;
}

float FastAtan2 ( float y , float x )
{
return FastATan ( y / x ) + ( y >= 0.0 ? 3.14159265358979323846 : - 3.14159265358979323846 ) * ( x < 0.0 ) ;
}
#line 743
uint FastLog2 ( uint x )
{
return firstbithigh ( x ) ;
}
#line 753
float PositivePow ( float base , float power ) { return pow ( abs ( base ) , power ) ; } float2 PositivePow ( float2 base , float2 power ) { return pow ( abs ( base ) , power ) ; } float3 PositivePow ( float3 base , float3 power ) { return pow ( abs ( base ) , power ) ; } float4 PositivePow ( float4 base , float4 power ) { return pow ( abs ( base ) , power ) ; }
#line 786
float SafePositivePow ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
#line 789
float SafePositivePow_float ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow_float ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow_float ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow_float ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
half SafePositivePow_half ( half base , half power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half2 SafePositivePow_half ( half2 base , half2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half3 SafePositivePow_half ( half3 base , half3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half4 SafePositivePow_half ( half4 base , half4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float SafePositivePow_half ( float base , float power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float2 SafePositivePow_half ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float3 SafePositivePow_half ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float4 SafePositivePow_half ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; }

float Eps_float ( ) { return 5.960464478e-8 ; }
float Min_float ( ) { return 1.175494351e-38 ; }
float Max_float ( ) { return 3.402823466e+38 ; }
half Eps_half ( ) { return 4.8828125e-4 ; }
half Min_half ( ) { return 6.103515625e-5 ; }
half Max_half ( ) { return 65504.0 ; }
#line 801
bool NearlyEqual ( float a , float b , float epsilon )
{
return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < epsilon ;
}

float NearlyEqual_Real ( float a , float b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float2 NearlyEqual_Real ( float2 a , float2 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float3 NearlyEqual_Real ( float3 a , float3 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float4 NearlyEqual_Real ( float4 a , float4 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; }
float NearlyEqual_Float ( float a , float b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float2 NearlyEqual_Float ( float2 a , float2 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float3 NearlyEqual_Float ( float3 a , float3 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; } float4 NearlyEqual_Float ( float4 a , float4 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 5.960464478e-8 ) ; }
half NearlyEqual_Half ( half a , half b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } half2 NearlyEqual_Half ( half2 a , half2 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } half3 NearlyEqual_Half ( half3 a , half3 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } half4 NearlyEqual_Half ( half4 a , half4 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } float NearlyEqual_Half ( float a , float b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } float2 NearlyEqual_Half ( float2 a , float2 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } float3 NearlyEqual_Half ( float3 a , float3 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; } float4 NearlyEqual_Half ( float4 a , float4 b ) { return abs ( a - b ) / ( abs ( a ) + abs ( b ) ) < float ( 4.8828125e-4 ) ; }
#line 812
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
}
#line 833
float FastSign ( float s , bool ignoreNegZero = true )
{
return CopySign ( 1.0 , s , ignoreNegZero ) ;
}
#line 842
float3 Orthonormalize ( float3 tangent , float3 normal )
{

return normalize ( tangent - dot ( tangent , normal ) * normal ) ;
}
#line 849
float Remap01 ( float x , float rcpLength , float startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float2 Remap01 ( float2 x , float2 rcpLength , float2 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float3 Remap01 ( float3 x , float3 rcpLength , float3 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; } float4 Remap01 ( float4 x , float4 rcpLength , float4 startTimesRcpLength ) { return saturate ( x * rcpLength - startTimesRcpLength ) ; }
#line 852
float Remap10 ( float x , float rcpLength , float endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float2 Remap10 ( float2 x , float2 rcpLength , float2 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float3 Remap10 ( float3 x , float3 rcpLength , float3 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; } float4 Remap10 ( float4 x , float4 rcpLength , float4 endTimesRcpLength ) { return saturate ( endTimesRcpLength - x * rcpLength ) ; }
#line 855
float2 RemapHalfTexelCoordTo01 ( float2 coord , float2 size )
{
const float2 rcpLen = size * rcp ( size - 1 ) ;
const float2 startTimesRcpLength = 0.5 * rcp ( size - 1 ) ;

return Remap01 ( coord , rcpLen , startTimesRcpLength ) ;
}
#line 864
float2 Remap01ToHalfTexelCoord ( float2 coord , float2 size )
{
const float2 start = 0.5 * rcp ( size ) ;
const float2 len = 1 - rcp ( size ) ;

return coord * len + start ;
}
#line 873
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
#line 901
float Pow4 ( float x )
{
return ( x * x ) * ( x * x ) ;
}
#line 907
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

float Remap ( float origFrom , float origTo , float targetFrom , float targetTo , float value )
{
return lerp ( targetFrom , targetTo , ( value - origFrom ) / ( origTo - origFrom ) ) ;
}
#line 958
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
#line 976
float ComputeTextureLOD ( float2 uv , float2 texelSize , float bias = 0.0 )
{
uv *= texelSize ;

return ComputeTextureLOD ( uv , bias ) ;
}
#line 984
float ComputeTextureLOD ( float3 duvw_dx , float3 duvw_dy , float3 duvw_dz , float scale , float bias = 0.0 )
{
float d = Max3 ( dot ( duvw_dx , duvw_dx ) , dot ( duvw_dy , duvw_dy ) , dot ( duvw_dz , duvw_dz ) ) ;

return max ( 0.5f * log2 ( d * ( scale * scale ) ) - bias , 0.0 ) ;
}
#line 1003
uint GetMipCount ( Texture2D tex , SamplerState smp )
{
#line 1011
return 0 ;

}
#line 1108
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
#line 1138
float Linear01DepthFromNear ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . x + zBufferParam . y / depth ) ;
}
#line 1147
float Linear01Depth ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . x * depth + zBufferParam . y ) ;
}
#line 1156
float LinearEyeDepth ( float depth , float4 zBufferParam )
{
return 1.0 / ( zBufferParam . z * depth + zBufferParam . w ) ;
}
#line 1165
float LinearEyeDepth ( float2 positionNDC , float deviceDepth , float4 invProjParam )
{
float4 positionCS = float4 ( positionNDC * 2.0 - 1.0 , deviceDepth , 1.0 ) ;
float viewSpaceZ = rcp ( dot ( positionCS , invProjParam ) ) ;
#line 1171
return abs ( viewSpaceZ ) ;
}
#line 1178
float LinearEyeDepth ( float3 positionWS , float4x4 viewMatrix )
{
float viewSpaceZ = mul ( viewMatrix , float4 ( positionWS , 1.0 ) ) . z ;
#line 1183
return abs ( viewSpaceZ ) ;
}
#line 1193
float EncodeLogarithmicDepthGeneralized ( float z , float4 encodingParams )
{

return encodingParams . x + encodingParams . y * log2 ( max ( 0 , z - encodingParams . z ) ) ;
}
#line 1207
float DecodeLogarithmicDepthGeneralized ( float d , float4 decodingParams )
{
return decodingParams . x * exp2 ( d * decodingParams . y ) + decodingParams . z ;
}
#line 1216
float EncodeLogarithmicDepth ( float z , float4 encodingParams )
{
#line 1220
return log2 ( max ( 0 , z * encodingParams . z ) ) * encodingParams . w ;
}
#line 1228
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
#line 1251
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
#line 1269
positionCS . y = - positionCS . y ;
#line 1272
return positionCS ;
}
#line 1279
float4 ComputeClipSpacePosition ( float3 position , float4x4 clipSpaceTransform = k_identity4x4 )
{
return mul ( clipSpaceTransform , float4 ( position , 1.0 ) ) ;
}
#line 1289
float3 ComputeNormalizedDeviceCoordinatesWithZ ( float3 position , float4x4 clipSpaceTransform = k_identity4x4 )
{
float4 positionCS = ComputeClipSpacePosition ( position , clipSpaceTransform ) ;
#line 1298
positionCS . y = - positionCS . y ;
#line 1301
positionCS *= rcp ( positionCS . w ) ;
positionCS . xy = positionCS . xy * 0.5 + 0.5 ;

return positionCS . xyz ;
}
#line 1311
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
#line 1343
struct PositionInputs
{
float3 positionWS ;
float2 positionNDC ;
uint2 positionSS ;
uint2 tileCoord ;
float deviceDepth ;
float linearDepth ;
} ;
#line 1357
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , uint2 tileCoord )
{
PositionInputs posInput ;
posInput = ( PositionInputs ) 0 ; ;

posInput . positionNDC = positionSS ;
#line 1365
posInput . positionNDC . xy += float2 ( 0.5 , 0.5 ) ;

posInput . positionNDC *= invScreenSize ;
posInput . positionSS = uint2 ( positionSS ) ;
posInput . tileCoord = tileCoord ;

return posInput ;
}

PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize )
{
return GetPositionInput ( positionSS , invScreenSize , uint2 ( 0 , 0 ) ) ;
}
#line 1381
PositionInputs GetPositionInput ( float2 positionSS , float2 invScreenSize , float3 positionWS )
{
PositionInputs posInput = GetPositionInput ( positionSS , invScreenSize , uint2 ( 0 , 0 ) ) ;
posInput . positionWS = positionWS ;

return posInput ;
}
#line 1391
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
#line 1409
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
#line 1429
void ApplyDepthOffsetPositionInput ( float3 V , float depthOffsetVS , float3 viewForwardDir , float4x4 viewProjMatrix , inout PositionInputs posInput )
{
posInput . positionWS += depthOffsetVS * ( - V ) ;
posInput . deviceDepth = ComputeNormalizedDeviceCoordinatesWithZ ( posInput . positionWS , viewProjMatrix ) . z ;
#line 1437
posInput . linearDepth += depthOffsetVS * abs ( dot ( V , viewForwardDir ) ) ;
}
#line 1448
float4 PackHeightmap ( float height )
{
uint a = ( uint ) ( 65535.0 * height ) ;
return float4 ( ( a >> 0 ) & 0xFF , ( a >> 8 ) & 0xFF , 0 , 0 ) / 255.0 ;
}

float UnpackHeightmap ( float4 height )
{
return ( height . r + height . g * 256.0 ) / 257.0 ;
}
#line 1482
bool HasFlag ( uint bitfield , uint flag )
{
return ( bitfield & flag ) != 0 ;
}
#line 1488
float3 SafeNormalize ( float3 inVec )
{
float dp3 = max ( 1.175494351e-38 , dot ( inVec , inVec ) ) ;
return inVec * rsqrt ( dp3 ) ;
}

float3 SafeNormalize ( half3 inVec )
{
half dp3 = max ( 6.103515625e-5 , dot ( inVec , inVec ) ) ;
return inVec * rsqrt ( dp3 ) ;
}
#line 1501
bool IsNormalized ( float3 inVec )
{
float l = length ( inVec ) ;
return length ( l ) < 1.0001 && length ( l ) > 0.9999 ;
}
#line 1509
float SafeDiv ( float numer , float denom )
{
return ( numer != denom ) ? numer / denom : 1 ;
}
#line 1515
float SafeSqrt ( float x )
{
return sqrt ( max ( 0 , x ) ) ;
}
#line 1521
float SinFromCos ( float cosX )
{
return sqrt ( saturate ( 1 - cosX * cosX ) ) ;
}
#line 1527
float SphericalDot ( float cosTheta1 , float phi1 , float cosTheta2 , float phi2 )
{
return SinFromCos ( cosTheta1 ) * SinFromCos ( cosTheta2 ) * cos ( phi1 - phi2 ) + cosTheta1 * cosTheta2 ;
}
#line 1534
float2 GetFullScreenTriangleTexCoord ( uint vertexID )
{

return float2 ( ( vertexID << 1 ) & 2 , 1.0 - ( vertexID & 2 ) ) ;
#line 1541
}

float4 GetFullScreenTriangleVertexPosition ( uint vertexID , float z = ( 1.0 ) )
{

float2 uv = float2 ( ( vertexID << 1 ) & 2 , vertexID & 2 ) ;
float4 pos = float4 ( uv * 2.0 - 1.0 , z , 1.0 ) ;
#line 1551
return pos ;
}
#line 1562
float2 GetQuadTexCoord ( uint vertexID )
{
uint topBit = vertexID >> 1 ;
uint botBit = ( vertexID & 1 ) ;
float u = topBit ;
float v = ( topBit + botBit ) & 1 ;

v = 1.0 - v ;

return float2 ( u , v ) ;
}
#line 1578
float4 GetQuadVertexPosition ( uint vertexID , float z = ( 1.0 ) )
{
uint topBit = vertexID >> 1 ;
uint botBit = ( vertexID & 1 ) ;
float x = topBit ;
float y = 1 - ( topBit + botBit ) & 1 ;
float4 pos = float4 ( x , y , z , 1.0 ) ;
#line 1588
return pos ;
}
#line 1597
void LODDitheringTransition ( uint2 fadeMaskSeed , float ditherFactor )
{
#line 1601
float p = GenerateHashedRandomFloat ( fadeMaskSeed ) ;
#line 1604
float f = ditherFactor - CopySign ( p , ditherFactor ) ;
clip ( f ) ;
}
#line 1612
uint GetStencilValue ( uint2 stencilBufferVal )
{
#line 1617
return stencilBufferVal . x ;

}
#line 1624
float SharpenAlpha ( float alpha , float alphaClipTreshold )
{
return saturate ( ( alpha - alphaClipTreshold ) / max ( fwidth ( alpha ) , 0.0001 ) + 0.5 ) ;
}
#line 1630
float ClampToFloat16Max ( float value ) { return min ( value , 65504.0 ) ; } float2 ClampToFloat16Max ( float2 value ) { return min ( value , 65504.0 ) ; } float3 ClampToFloat16Max ( float3 value ) { return min ( value , 65504.0 ) ; } float4 ClampToFloat16Max ( float4 value ) { return min ( value , 65504.0 ) ; }
#line 1636
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
#line 45 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Threading.hlsl"
namespace Threading
{
struct Wave
{

uint indexG ;
uint indexW ;

uint indexL ;
uint offset ;
#line 57
uint GetIndex ( ) ;

void Init ( uint groupIndex ) ;
#line 76
bool AllEqual ( uint v ) ; uint Product ( uint v ) ; uint Sum ( uint v ) ; uint Max ( uint v ) ; uint Min ( uint v ) ; uint InclusivePrefixSum ( uint v ) ; uint InclusivePrefixProduct ( uint v ) ; uint PrefixSum ( uint v ) ; uint PrefixProduct ( uint v ) ; uint ReadLaneAt ( uint v , uint i ) ; uint ReadLaneFirst ( uint v ) ; uint ReadLaneShuffle ( uint v , uint i ) ;
bool AllEqual ( int v ) ; int Product ( int v ) ; int Sum ( int v ) ; int Max ( int v ) ; int Min ( int v ) ; int InclusivePrefixSum ( int v ) ; int InclusivePrefixProduct ( int v ) ; int PrefixSum ( int v ) ; int PrefixProduct ( int v ) ; int ReadLaneAt ( int v , uint i ) ; int ReadLaneFirst ( int v ) ; int ReadLaneShuffle ( int v , uint i ) ;
bool AllEqual ( float v ) ; float Product ( float v ) ; float Sum ( float v ) ; float Max ( float v ) ; float Min ( float v ) ; float InclusivePrefixSum ( float v ) ; float InclusivePrefixProduct ( float v ) ; float PrefixSum ( float v ) ; float PrefixProduct ( float v ) ; float ReadLaneAt ( float v , uint i ) ; float ReadLaneFirst ( float v ) ; float ReadLaneShuffle ( float v , uint i ) ;
#line 81
uint GetLaneCount ( ) ;
uint GetLaneIndex ( ) ;
bool IsFirstLane ( ) ;
bool AllTrue ( bool v ) ;
bool AnyTrue ( bool v ) ;
uint4 Ballot ( bool v ) ;
uint CountBits ( bool v ) ;
uint PrefixCountBits ( bool v ) ;
uint And ( uint v ) ;
uint Or ( uint v ) ;
uint Xor ( uint v ) ;
} ;

struct GroupBallot
{
uint dwords [ ( ( 1 + 31u ) / 32u ) ] ;

uint CountBits ( )
{
uint result = 0 ;

[ unroll ]
for ( uint dwordIndex = 0 ; dwordIndex < ( ( 1 + 31u ) / 32u ) ; ++ dwordIndex )
{
result += countbits ( dwords [ dwordIndex ] ) ;
}

return result ;
}
} ;

struct Group
{
uint groupIndex : SV_GroupIndex ;
uint3 groupID : SV_GroupID ;
uint3 dispatchID : SV_DispatchThreadID ;

Wave GetWave ( )
{
Wave wave ;
{
wave = ( Wave ) 0 ;
wave . Init ( groupIndex ) ;
}
return wave ;
}
#line 150
uint2 RemapLaneTo8x16 ( )
{

return uint2 ( BitFieldInsert ( 1u , groupIndex , BitFieldExtract ( groupIndex , 2u , 3u ) ) ,
BitFieldInsert ( 3u , BitFieldExtract ( groupIndex , 1u , 2u ) , BitFieldExtract ( groupIndex , 3u , 4u ) ) ) ;
}

uint GetWaveCount ( ) ;
#line 174
bool AllEqual ( uint v ) ; uint Product ( uint v ) ; uint Sum ( uint v ) ; uint Max ( uint v ) ; uint Min ( uint v ) ; uint InclusivePrefixSum ( uint v ) ; uint InclusivePrefixProduct ( uint v ) ; uint PrefixSum ( uint v ) ; uint PrefixProduct ( uint v ) ; uint ReadThreadAt ( uint v , uint i ) ; uint ReadThreadFirst ( uint v ) ; uint ReadThreadShuffle ( uint v , uint i ) ;
bool AllEqual ( int v ) ; int Product ( int v ) ; int Sum ( int v ) ; int Max ( int v ) ; int Min ( int v ) ; int InclusivePrefixSum ( int v ) ; int InclusivePrefixProduct ( int v ) ; int PrefixSum ( int v ) ; int PrefixProduct ( int v ) ; int ReadThreadAt ( int v , uint i ) ; int ReadThreadFirst ( int v ) ; int ReadThreadShuffle ( int v , uint i ) ;
bool AllEqual ( float v ) ; float Product ( float v ) ; float Sum ( float v ) ; float Max ( float v ) ; float Min ( float v ) ; float InclusivePrefixSum ( float v ) ; float InclusivePrefixProduct ( float v ) ; float PrefixSum ( float v ) ; float PrefixProduct ( float v ) ; float ReadThreadAt ( float v , uint i ) ; float ReadThreadFirst ( float v ) ; float ReadThreadShuffle ( float v , uint i ) ;
#line 179
uint GetThreadCount ( ) ;
uint GetThreadIndex ( ) ;
bool IsFirstThread ( ) ;
bool AllTrue ( bool v ) ;
bool AnyTrue ( bool v ) ;
GroupBallot Ballot ( bool v ) ;
uint CountBits ( bool v ) ;
uint PrefixCountBits ( bool v ) ;
uint And ( uint v ) ;
uint Or ( uint v ) ;
uint Xor ( uint v ) ;
} ;
}
#line 11 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/ThreadingEmuImpl.hlsl"
namespace Threading
{
#line 15
groupshared uint g_Scratch [ 1 ] ;
#line 65
uint Wave::GetIndex ( ) { return indexW ; }

void Wave::Init ( uint groupIndex )
{
indexG = groupIndex ;
indexW = indexG / 32 ;
indexL = indexG & ( 32 - 1 ) ;
offset = indexW * 32 ;
}
#line 94
bool Wave::AllEqual ( uint v ) { return AllTrue ( ReadLaneFirst ( v ) == v ) ; } uint Wave::Product ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asuint ( g_Scratch [ indexG ] ) * asuint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; } uint Wave::Sum ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asuint ( g_Scratch [ indexG ] ) + asuint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; } uint Wave::Max ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( max ( asuint ( g_Scratch [ indexG ] ) , asuint ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; } uint Wave::Min ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( min ( asuint ( g_Scratch [ indexG ] ) , asuint ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; } uint Wave::InclusivePrefixSum ( uint v ) { return PrefixSum ( v ) + v ; } uint Wave::InclusivePrefixProduct ( uint v ) { return PrefixProduct ( v ) * v ; } uint Wave::PrefixSum ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { uint nv = ( uint ) 0 ; if ( indexL >= s ) { nv = asuint ( g_Scratch [ indexG - s ] ) ; } nv = asuint ( g_Scratch [ indexG ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } uint result = ( uint ) 0 ; if ( indexL > 0u ) result = asuint ( g_Scratch [ indexG - 1 ] ) ; return result ; } uint Wave::PrefixProduct ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { uint nv = ( uint ) 1 ; if ( indexL >= s ) { nv = asuint ( g_Scratch [ indexG - s ] ) ; } nv = asuint ( g_Scratch [ indexG ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } uint result = ( uint ) 1 ; if ( indexL > 0u ) result = asuint ( g_Scratch [ indexG - 1 ] ) ; return result ; } uint Wave::ReadLaneAt ( uint v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asuint ( g_Scratch [ offset + i ] ) ; } uint Wave::ReadLaneFirst ( uint v ) { return ReadLaneAt ( v , 0u ) ; } uint Wave::ReadLaneShuffle ( uint v , uint i ) { return ReadLaneAt ( v , i ) ; }
bool Wave::AllEqual ( int v ) { return AllTrue ( ReadLaneFirst ( v ) == v ) ; } int Wave::Product ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asint ( g_Scratch [ indexG ] ) * asint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ offset ] ) ; } int Wave::Sum ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asint ( g_Scratch [ indexG ] ) + asint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ offset ] ) ; } int Wave::Max ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( max ( asint ( g_Scratch [ indexG ] ) , asint ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ offset ] ) ; } int Wave::Min ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( min ( asint ( g_Scratch [ indexG ] ) , asint ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ offset ] ) ; } int Wave::InclusivePrefixSum ( int v ) { return PrefixSum ( v ) + v ; } int Wave::InclusivePrefixProduct ( int v ) { return PrefixProduct ( v ) * v ; } int Wave::PrefixSum ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { int nv = ( int ) 0 ; if ( indexL >= s ) { nv = asint ( g_Scratch [ indexG - s ] ) ; } nv = asint ( g_Scratch [ indexG ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } int result = ( int ) 0 ; if ( indexL > 0u ) result = asint ( g_Scratch [ indexG - 1 ] ) ; return result ; } int Wave::PrefixProduct ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { int nv = ( int ) 1 ; if ( indexL >= s ) { nv = asint ( g_Scratch [ indexG - s ] ) ; } nv = asint ( g_Scratch [ indexG ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } int result = ( int ) 1 ; if ( indexL > 0u ) result = asint ( g_Scratch [ indexG - 1 ] ) ; return result ; } int Wave::ReadLaneAt ( int v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asint ( g_Scratch [ offset + i ] ) ; } int Wave::ReadLaneFirst ( int v ) { return ReadLaneAt ( v , 0u ) ; } int Wave::ReadLaneShuffle ( int v , uint i ) { return ReadLaneAt ( v , i ) ; }
bool Wave::AllEqual ( float v ) { return AllTrue ( ReadLaneFirst ( v ) == v ) ; } float Wave::Product ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asfloat ( g_Scratch [ indexG ] ) * asfloat ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ offset ] ) ; } float Wave::Sum ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asfloat ( g_Scratch [ indexG ] ) + asfloat ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ offset ] ) ; } float Wave::Max ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( max ( asfloat ( g_Scratch [ indexG ] ) , asfloat ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ offset ] ) ; } float Wave::Min ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( min ( asfloat ( g_Scratch [ indexG ] ) , asfloat ( g_Scratch [ indexG + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ offset ] ) ; } float Wave::InclusivePrefixSum ( float v ) { return PrefixSum ( v ) + v ; } float Wave::InclusivePrefixProduct ( float v ) { return PrefixProduct ( v ) * v ; } float Wave::PrefixSum ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { float nv = ( float ) 0 ; if ( indexL >= s ) { nv = asfloat ( g_Scratch [ indexG - s ] ) ; } nv = asfloat ( g_Scratch [ indexG ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } float result = ( float ) 0 ; if ( indexL > 0u ) result = asfloat ( g_Scratch [ indexG - 1 ] ) ; return result ; } float Wave::PrefixProduct ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 32 ; s <<= 1u ) { float nv = ( float ) 1 ; if ( indexL >= s ) { nv = asfloat ( g_Scratch [ indexG - s ] ) ; } nv = asfloat ( g_Scratch [ indexG ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } float result = ( float ) 1 ; if ( indexL > 0u ) result = asfloat ( g_Scratch [ indexG - 1 ] ) ; return result ; } float Wave::ReadLaneAt ( float v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asfloat ( g_Scratch [ offset + i ] ) ; } float Wave::ReadLaneFirst ( float v ) { return ReadLaneAt ( v , 0u ) ; } float Wave::ReadLaneShuffle ( float v , uint i ) { return ReadLaneAt ( v , i ) ; }
#line 99
uint Wave::GetLaneCount ( ) { return 32 ; }
uint Wave::GetLaneIndex ( ) { return indexL ; }
bool Wave::IsFirstLane ( ) { return indexL == 0u ; }
bool Wave::AllTrue ( bool v ) { return And ( v ) != 0u ; }
bool Wave::AnyTrue ( bool v ) { return Or ( v ) != 0u ; }
uint Wave::PrefixCountBits ( bool v ) { return PrefixSum ( ( uint ) v ) ; }
uint Wave::And ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asuint ( g_Scratch [ indexG ] ) & asuint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; }
uint Wave::Or ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asuint ( g_Scratch [ indexG ] ) | asuint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; }
uint Wave::Xor ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ indexG ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 32 / 2u ; s > 0u ; s >>= 1u ) { if ( indexL < s ) g_Scratch [ indexG ] = asuint ( asuint ( g_Scratch [ indexG ] ) ^ asuint ( g_Scratch [ indexG + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ offset ] ) ; }

uint4 Wave::Ballot ( bool v )
{
uint indexDw = indexL % 32u ;
uint offsetDw = ( indexL / 32u ) * 32u ;
uint indexScratch = offset + offsetDw + indexDw ;

GroupMemoryBarrierWithGroupSync ( ) ;

g_Scratch [ indexG ] = v << indexDw ;

GroupMemoryBarrierWithGroupSync ( ) ;

[ unroll ]
for ( uint s = min ( 32 / 2u , 16u ) ; s > 0u ; s >>= 1u )
{
if ( indexDw < s )
g_Scratch [ indexScratch ] = g_Scratch [ indexScratch ] | g_Scratch [ indexScratch + s ] ;

GroupMemoryBarrierWithGroupSync ( ) ;
}

uint4 result = uint4 ( g_Scratch [ offset ] , 0 , 0 , 0 ) ;
#line 144
return result ;
}

uint Wave::CountBits ( bool v )
{
uint4 ballot = Ballot ( v ) ;

uint result = countbits ( ballot . x ) ;
#line 165
return result ;
}
#line 216
uint Group::GetWaveCount ( )
{
return 1 / 32 ;
}
#line 236
bool Group::AllEqual ( uint v ) { return AllTrue ( ReadThreadFirst ( v ) == v ) ; } uint Group::Product ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asuint ( g_Scratch [ groupIndex ] ) * asuint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; } uint Group::Sum ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asuint ( g_Scratch [ groupIndex ] ) + asuint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; } uint Group::Max ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( max ( asuint ( g_Scratch [ groupIndex ] ) , asuint ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; } uint Group::Min ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( min ( asuint ( g_Scratch [ groupIndex ] ) , asuint ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; } uint Group::InclusivePrefixSum ( uint v ) { return PrefixSum ( v ) + v ; } uint Group::InclusivePrefixProduct ( uint v ) { return PrefixProduct ( v ) * v ; } uint Group::PrefixSum ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { uint nv = ( uint ) 0 ; if ( groupIndex >= s ) { nv = asuint ( g_Scratch [ groupIndex - s ] ) ; } nv = asuint ( g_Scratch [ groupIndex ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } uint result = ( uint ) 0 ; if ( groupIndex > 0u ) result = asuint ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } uint Group::PrefixProduct ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { uint nv = ( uint ) 1 ; if ( groupIndex >= s ) { nv = asuint ( g_Scratch [ groupIndex - s ] ) ; } nv = asuint ( g_Scratch [ groupIndex ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } uint result = ( uint ) 1 ; if ( groupIndex > 0u ) result = asuint ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } uint Group::ReadThreadAt ( uint v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asuint ( g_Scratch [ i ] ) ; } uint Group::ReadThreadFirst ( uint v ) { return ReadThreadAt ( v , 0u ) ; } uint Group::ReadThreadShuffle ( uint v , uint i ) { return ReadThreadAt ( v , i ) ; }
bool Group::AllEqual ( int v ) { return AllTrue ( ReadThreadFirst ( v ) == v ) ; } int Group::Product ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asint ( g_Scratch [ groupIndex ] ) * asint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ 0 ] ) ; } int Group::Sum ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asint ( g_Scratch [ groupIndex ] ) + asint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ 0 ] ) ; } int Group::Max ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( max ( asint ( g_Scratch [ groupIndex ] ) , asint ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ 0 ] ) ; } int Group::Min ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( min ( asint ( g_Scratch [ groupIndex ] ) , asint ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asint ( g_Scratch [ 0 ] ) ; } int Group::InclusivePrefixSum ( int v ) { return PrefixSum ( v ) + v ; } int Group::InclusivePrefixProduct ( int v ) { return PrefixProduct ( v ) * v ; } int Group::PrefixSum ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { int nv = ( int ) 0 ; if ( groupIndex >= s ) { nv = asint ( g_Scratch [ groupIndex - s ] ) ; } nv = asint ( g_Scratch [ groupIndex ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } int result = ( int ) 0 ; if ( groupIndex > 0u ) result = asint ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } int Group::PrefixProduct ( int v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { int nv = ( int ) 1 ; if ( groupIndex >= s ) { nv = asint ( g_Scratch [ groupIndex - s ] ) ; } nv = asint ( g_Scratch [ groupIndex ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } int result = ( int ) 1 ; if ( groupIndex > 0u ) result = asint ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } int Group::ReadThreadAt ( int v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asint ( g_Scratch [ i ] ) ; } int Group::ReadThreadFirst ( int v ) { return ReadThreadAt ( v , 0u ) ; } int Group::ReadThreadShuffle ( int v , uint i ) { return ReadThreadAt ( v , i ) ; }
bool Group::AllEqual ( float v ) { return AllTrue ( ReadThreadFirst ( v ) == v ) ; } float Group::Product ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asfloat ( g_Scratch [ groupIndex ] ) * asfloat ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ 0 ] ) ; } float Group::Sum ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asfloat ( g_Scratch [ groupIndex ] ) + asfloat ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ 0 ] ) ; } float Group::Max ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( max ( asfloat ( g_Scratch [ groupIndex ] ) , asfloat ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ 0 ] ) ; } float Group::Min ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( min ( asfloat ( g_Scratch [ groupIndex ] ) , asfloat ( g_Scratch [ groupIndex + s ] ) ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asfloat ( g_Scratch [ 0 ] ) ; } float Group::InclusivePrefixSum ( float v ) { return PrefixSum ( v ) + v ; } float Group::InclusivePrefixProduct ( float v ) { return PrefixProduct ( v ) * v ; } float Group::PrefixSum ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { float nv = ( float ) 0 ; if ( groupIndex >= s ) { nv = asfloat ( g_Scratch [ groupIndex - s ] ) ; } nv = asfloat ( g_Scratch [ groupIndex ] ) + nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } float result = ( float ) 0 ; if ( groupIndex > 0u ) result = asfloat ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } float Group::PrefixProduct ( float v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1u ; s < 1 ; s <<= 1u ) { float nv = ( float ) 1 ; if ( groupIndex >= s ) { nv = asfloat ( g_Scratch [ groupIndex - s ] ) ; } nv = asfloat ( g_Scratch [ groupIndex ] ) * nv ; GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( nv ) ; GroupMemoryBarrierWithGroupSync ( ) ; } float result = ( float ) 1 ; if ( groupIndex > 0u ) result = asfloat ( g_Scratch [ groupIndex - 1 ] ) ; return result ; } float Group::ReadThreadAt ( float v , uint i ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; return asfloat ( g_Scratch [ i ] ) ; } float Group::ReadThreadFirst ( float v ) { return ReadThreadAt ( v , 0u ) ; } float Group::ReadThreadShuffle ( float v , uint i ) { return ReadThreadAt ( v , i ) ; }
#line 241
uint Group::GetThreadCount ( ) { return 1 ; }
uint Group::GetThreadIndex ( ) { return groupIndex ; }
bool Group::IsFirstThread ( ) { return groupIndex == 0u ; }
bool Group::AllTrue ( bool v ) { return And ( v ) != 0u ; }
bool Group::AnyTrue ( bool v ) { return Or ( v ) != 0u ; }
uint Group::PrefixCountBits ( bool v ) { return PrefixSum ( ( uint ) v ) ; }
uint Group::And ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asuint ( g_Scratch [ groupIndex ] ) & asuint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; }
uint Group::Or ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asuint ( g_Scratch [ groupIndex ] ) | asuint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; }
uint Group::Xor ( uint v ) { GroupMemoryBarrierWithGroupSync ( ) ; g_Scratch [ groupIndex ] = asuint ( v ) ; GroupMemoryBarrierWithGroupSync ( ) ; [ unroll ] for ( uint s = 1 / 2u ; s > 0u ; s >>= 1u ) { if ( groupIndex < s ) g_Scratch [ groupIndex ] = asuint ( asuint ( g_Scratch [ groupIndex ] ) ^ asuint ( g_Scratch [ groupIndex + s ] ) ) ; GroupMemoryBarrierWithGroupSync ( ) ; } return asuint ( g_Scratch [ 0 ] ) ; }

GroupBallot Group::Ballot ( bool v )
{
uint indexDw = groupIndex % 32u ;
uint offsetDw = ( groupIndex / 32u ) * 32u ;
uint indexScratch = offsetDw + indexDw ;

GroupMemoryBarrierWithGroupSync ( ) ;

g_Scratch [ groupIndex ] = v << indexDw ;

GroupMemoryBarrierWithGroupSync ( ) ;

[ unroll ]
for ( uint s = min ( 1 / 2u , 16u ) ; s > 0u ; s >>= 1u )
{
if ( indexDw < s )
g_Scratch [ indexScratch ] = g_Scratch [ indexScratch ] | g_Scratch [ indexScratch + s ] ;

GroupMemoryBarrierWithGroupSync ( ) ;
}

GroupBallot ballot = ( GroupBallot ) 0 ;
#line 275
[ unroll ]
for ( uint dwordIndex = 0 ; dwordIndex < ( ( 1 + 31u ) / 32u ) ; ++ dwordIndex )
{
ballot . dwords [ dwordIndex ] = g_Scratch [ dwordIndex * 32 ] ;
}

return ballot ;
}

uint Group::CountBits ( bool v )
{
return Ballot ( v ) . CountBits ( ) ;
}
}
#line 67 "Packages/com.unity.render-pipelines.core/Tests/Runtime/Threading/FunctionTestsGroup.compute"
typedef Threading::Group Group ;
typedef Threading::GroupBallot GroupBallot ;

ByteAddressBuffer _Input ;
RWByteAddressBuffer _Output ;
#line 77
[ numthreads ( 1 , 1 , 1 ) ]
void kAllEqual ( Group group )
{
const uint result = ( uint ) group . AllEqual ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) - group . groupIndex ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kAllTrue ( Group group )
{
const uint result = ( uint ) group . AllTrue ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kAnyTrue ( Group group )
{
const uint result = ( uint ) group . AnyTrue ( ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ) == ( group . GetThreadCount ( ) / 2 ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kBallot ( Group group )
{
GroupBallot ballot = group . Ballot ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) ;

uint numBits = ballot . CountBits ( ) ;

const uint result = ( numBits == group . GetThreadCount ( ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kBitAnd ( Group group )
{
const uint result = group . And ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kBitOr ( Group group )
{
const uint result = ( group . Or ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) != group . groupIndex ) == 0 ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kBitXor ( Group group )
{
const uint result = ( group . Xor ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) != group . groupIndex ) == 0 ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kCountBits ( Group group )
{
const uint result = ( group . CountBits ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) == group . GetThreadCount ( ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kMax ( Group group )
{
const uint result = ( group . Max ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ) == ( group . GetThreadCount ( ) - 1 ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kMin ( Group group )
{
const uint result = ( group . Min ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ) == 0 ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kProduct ( Group group )
{
const uint result = group . Product ( ( uint ) ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kSum ( Group group )
{
const uint result = ( group . Sum ( ( uint ) ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) ) == group . GetThreadCount ( ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kGetThreadCount ( Group group )
{

const uint result = ( 1 == group . GetThreadCount ( ) ) ;
#line 188
_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kGetThreadIndex ( Group group )
{

const uint result = ( ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ) == group . GetThreadIndex ( ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kIsFirstThread ( Group group )
{
const uint result = ( group . GetThreadIndex ( ) != 0 ) ^ group . IsFirstThread ( ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kPrefixCountBits ( Group group )
{
const uint result = ( group . PrefixCountBits ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) == group . groupIndex ) == group . GetThreadIndex ( ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kPrefixProduct ( Group group )
{
const uint value = ( ( group . GetThreadIndex ( ) % 64 ) == 0 ) ? 2u : 1u ;

const uint expectedValue = ( 1u << ( ( group . GetThreadIndex ( ) / 64u ) + 1 ) ) ;

const uint result = ( ( group . PrefixProduct ( value ) * value ) == expectedValue ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kPrefixSum ( Group group )
{
const uint value = group . GetThreadIndex ( ) ;
const uint expectedValue = ( group . GetThreadIndex ( ) * ( group . GetThreadIndex ( ) + 1u ) ) / 2u ;

const uint result = ( ( group . PrefixSum ( value ) + value ) == expectedValue ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kReadThreadAtBroadcast ( Group group )
{
const uint laneValue = ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ;

const uint result = ( group . ReadThreadAt ( laneValue , ( group . GetThreadCount ( ) - 1 ) ) == ( group . GetThreadCount ( ) - 1 ) ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kReadThreadAtShuffle ( Group group )
{
const uint laneValue = ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ;

const uint result = ( group . ReadThreadShuffle ( laneValue , laneValue ) == laneValue ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}

[ numthreads ( 1 , 1 , 1 ) ]
void kReadThreadFirst ( Group group )
{
const uint result = ( group . ReadThreadFirst ( ( ( uint ) _Input . Load ( group . dispatchID . x << 2 ) ) & ( group . GetThreadCount ( ) - 1 ) ) == 0 ) ;

_Output . Store ( ( ( uint ) ( group . groupIndex << 2 ) ) , result ) ;
}
