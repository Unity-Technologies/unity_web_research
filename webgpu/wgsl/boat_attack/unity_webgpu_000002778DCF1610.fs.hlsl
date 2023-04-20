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
#line 753
float PositivePow ( float base , float power ) { return pow ( abs ( base ) , power ) ; } float2 PositivePow ( float2 base , float2 power ) { return pow ( abs ( base ) , power ) ; } float3 PositivePow ( float3 base , float3 power ) { return pow ( abs ( base ) , power ) ; } float4 PositivePow ( float4 base , float4 power ) { return pow ( abs ( base ) , power ) ; }
#line 786
float SafePositivePow ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
#line 789
float SafePositivePow_float ( float base , float power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float2 SafePositivePow_float ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float3 SafePositivePow_float ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; } float4 SafePositivePow_float ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , float ( 5.960464478e-8 ) ) , power ) ; }
half SafePositivePow_half ( half base , half power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half2 SafePositivePow_half ( half2 base , half2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half3 SafePositivePow_half ( half3 base , half3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } half4 SafePositivePow_half ( half4 base , half4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float SafePositivePow_half ( float base , float power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float2 SafePositivePow_half ( float2 base , float2 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float3 SafePositivePow_half ( float3 base , float3 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; } float4 SafePositivePow_half ( float4 base , float4 power ) { return pow ( max ( abs ( base ) , half ( 4.8828125e-4 ) ) , power ) ; }

float Eps_float ( ) { return 5.960464478e-8 ; }
float Min_float ( ) { return 1.175494351e-38 ; }
float Max_float ( ) { return 3.402823466e+378 ; }
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

uint mipLevel , width , height , mipCount ;
mipLevel = width = height = mipCount = 0 ;
tex . GetDimensions ( mipLevel , width , height , mipCount ) ;
return mipCount ;
#line 1013
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
#line 1367
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
#line 12 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Packing.hlsl"
float3 PackNormalMaxComponent ( float3 n )
{
return ( n / Max3 ( abs ( n . x ) , abs ( n . y ) , abs ( n . z ) ) ) * 0.5 + 0.5 ;
}

float3 UnpackNormalMaxComponent ( float3 n )
{
return normalize ( n * 2.0 - 1.0 ) ;
}
#line 25
float2 PackNormalOctRectEncode ( float3 n )
{

float3 p = n * rcp ( dot ( abs ( n ) , 1.0 ) ) ;
float x = p . x , y = p . y , z = p . z ;
#line 33
float r = saturate ( 0.5 - 0.5 * x + 0.5 * y ) ;
float g = x + y ;
#line 37
return float2 ( CopySign ( r , z ) , g ) ;
}

float3 UnpackNormalOctRectEncode ( float2 f )
{
float r = f . r , g = f . g ;
#line 45
float x = 0.5 + 0.5 * g - abs ( r ) ;
float y = g - x ;
float z = max ( 1.0 - abs ( x ) - abs ( y ) , 5.960464478e-8 ) ;

float3 p = float3 ( x , y , CopySign ( z , r ) ) ;

return normalize ( p ) ;
}
#line 57
float2 PackNormalOctQuadEncode ( float3 n )
{
#line 66
n *= rcp ( max ( dot ( abs ( n ) , 1.0 ) , 1e-6 ) ) ;
float t = saturate ( - n . z ) ;
return n . xy + ( n . xy >= 0.0 ? t : - t ) ;
}

float3 UnpackNormalOctQuadEncode ( float2 f )
{
float3 n = float3 ( f . x , f . y , 1.0 - abs ( f . x ) - abs ( f . y ) ) ;
#line 79
float t = max ( - n . z , 0.0 ) ;
n . xy += n . xy >= 0.0 ? - t . xx : t . xx ;

return normalize ( n ) ;
}

float2 PackNormalHemiOctEncode ( float3 n )
{
float l1norm = dot ( abs ( n ) , 1.0 ) ;
float2 res = n . xy * ( 1.0 / l1norm ) ;

return float2 ( res . x + res . y , res . x - res . y ) ;
}

float3 UnpackNormalHemiOctEncode ( float2 f )
{
float2 val = float2 ( f . x + f . y , f . x - f . y ) * 0.5 ;
float3 n = float3 ( val , 1.0 - dot ( abs ( val ) , 1.0 ) ) ;

return normalize ( n ) ;
}
#line 109
static const float3 tetraBasisNormal [ 4 ] =
{
float3 ( 0. , 0.816497 , - 0.57735 ) ,
float3 ( - 0.816497 , 0. , 0.57735 ) ,
float3 ( 0.816497 , 0. , 0.57735 ) ,
float3 ( 0. , - 0.816497 , - 0.57735 )
} ;
#line 118
static const float3x3 tetraBasisArray [ 4 ] =
{
float3x3 ( - 1. , 0. , 0. , 0. , 0.57735 , 0.816497 , 0. , 0.816497 , - 0.57735 ) ,
float3x3 ( 0. , - 1. , 0. , 0.57735 , 0. , 0.816497 , - 0.816497 , 0. , 0.57735 ) ,
float3x3 ( 0. , 1. , 0. , - 0.57735 , 0. , 0.816497 , 0.816497 , 0. , 0.57735 ) ,
float3x3 ( 1. , 0. , 0. , 0. , - 0.57735 , 0.816497 , 0. , - 0.816497 , - 0.57735 )
} ;
#line 127
float2 PackNormalTetraEncode ( float3 n , out uint faceIndex )
{
#line 131
float dot0 = dot ( n , tetraBasisNormal [ 0 ] ) ;
float dot1 = dot ( n , tetraBasisNormal [ 1 ] ) ;
float dot2 = dot ( n , tetraBasisNormal [ 2 ] ) ;
float dot3 = dot ( n , tetraBasisNormal [ 3 ] ) ;

float maxi0 = max ( dot0 , dot1 ) ;
float maxi1 = max ( dot2 , dot3 ) ;
float maxi = max ( maxi0 , maxi1 ) ;
#line 141
if ( maxi == dot0 )
faceIndex = 0 ;
else if ( maxi == dot1 )
faceIndex = 1 ;
else if ( maxi == dot2 )
faceIndex = 2 ;
else
faceIndex = 3 ;
#line 151
n = mul ( tetraBasisArray [ faceIndex ] , n ) ;
#line 154
return n . xy ;
}
#line 158
float3 UnpackNormalTetraEncode ( float2 f , uint faceIndex )
{

float3 n = float3 ( f . xy , sqrt ( 1.0 - dot ( f . xy , f . xy ) ) ) ;

return mul ( n , tetraBasisArray [ faceIndex ] ) ;
}
#line 167
float3 UnpackNormalRGB ( float4 packedNormal , float scale = 1.0 )
{
float3 normal ;
normal . xyz = packedNormal . rgb * 2.0 - 1.0 ;
normal . xy *= scale ;
return normal ;
}

float3 UnpackNormalRGBNoScale ( float4 packedNormal )
{
return packedNormal . rgb * 2.0 - 1.0 ;
}

float3 UnpackNormalAG ( float4 packedNormal , float scale = 1.0 )
{
float3 normal ;
normal . xy = packedNormal . ag * 2.0 - 1.0 ;
normal . z = max ( 1.0e-16 , sqrt ( 1.0 - saturate ( dot ( normal . xy , normal . xy ) ) ) ) ;
#line 193
normal . xy *= scale ;
return normal ;
}
#line 198
float3 UnpackNormalmapRGorAG ( float4 packedNormal , float scale = 1.0 )
{

packedNormal . a *= packedNormal . r ;
return UnpackNormalAG ( packedNormal , scale ) ;
}
#line 206
float3 UnpackNormal ( float4 packedNormal )
{
#line 214
return UnpackNormalmapRGorAG ( packedNormal , 1.0 ) ;

}
#line 219
float3 UnpackNormalScale ( float4 packedNormal , float bumpScale )
{
#line 226
return UnpackNormalmapRGorAG ( packedNormal , bumpScale ) ;

}
#line 235
float4 PackToLogLuv ( float3 vRGB )
{

const float3x3 M = float3x3 (
0.2209 , 0.3390 , 0.4184 ,
0.1138 , 0.6780 , 0.7319 ,
0.0102 , 0.1130 , 0.2969 ) ;

float4 vResult ;
float3 Xp_Y_XYZp = mul ( vRGB , M ) ;
Xp_Y_XYZp = max ( Xp_Y_XYZp , float3 ( 1e-6 , 1e-6 , 1e-6 ) ) ;
vResult . xy = Xp_Y_XYZp . xy / Xp_Y_XYZp . z ;
float Le = 2.0 * log2 ( Xp_Y_XYZp . y ) + 127.0 ;
vResult . w = frac ( Le ) ;
vResult . z = ( Le - ( floor ( vResult . w * 255.0 ) ) / 255.0 ) / 255.0 ;
return vResult ;
}

float3 UnpackFromLogLuv ( float4 vLogLuv )
{

const float3x3 InverseM = float3x3 (
6.0014 , - 2.7008 , - 1.7996 ,
- 1.3320 , 3.1029 , - 5.7721 ,
0.3008 , - 1.0882 , 5.6268 ) ;

float Le = vLogLuv . z * 255.0 + vLogLuv . w ;
float3 Xp_Y_XYZp ;
Xp_Y_XYZp . y = exp2 ( ( Le - 127.0 ) / 2.0 ) ;
Xp_Y_XYZp . z = Xp_Y_XYZp . y / vLogLuv . y ;
Xp_Y_XYZp . x = vLogLuv . x * Xp_Y_XYZp . z ;
float3 vRGB = mul ( Xp_Y_XYZp , InverseM ) ;
return max ( vRGB , float3 ( 0.0 , 0.0 , 0.0 ) ) ;
}
#line 271
uint PackToR11G11B10f ( float3 rgb )
{
uint r = ( f32tof16 ( rgb . x ) << 17 ) & 0xFFE00000 ;
uint g = ( f32tof16 ( rgb . y ) << 6 ) & 0x001FFC00 ;
uint b = ( f32tof16 ( rgb . z ) >> 5 ) & 0x000003FF ;
return r | g | b ;
}

float3 UnpackFromR11G11B10f ( uint rgb )
{
float r = f16tof32 ( ( rgb >> 17 ) & 0x7FF0 ) ;
float g = f16tof32 ( ( rgb >> 6 ) & 0x7FF0 ) ;
float b = f16tof32 ( ( rgb << 5 ) & 0x7FE0 ) ;
return float3 ( r , g , b ) ;
}
#line 323
float4 UnpackQuat ( float4 packedQuat )
{
uint index = ( uint ) ( packedQuat . w * 3.0 ) ;

float4 quat ;
quat . xyz = packedQuat . xyz * sqrt ( 2.0 ) - ( 1.0 / sqrt ( 2.0 ) ) ;
quat . w = sqrt ( 1.0 - saturate ( dot ( quat . xyz , quat . xyz ) ) ) ;

if ( index == 0 ) quat = quat . wxyz ;
if ( index == 1 ) quat = quat . xwyz ;
if ( index == 2 ) quat = quat . xywz ;

return quat ;
}
#line 343
float PackInt ( uint i , uint numBits )
{
uint maxInt = ( 1u << numBits ) - 1u ;
return saturate ( i * rcp ( maxInt ) ) ;
}
#line 350
uint UnpackInt ( float f , uint numBits )
{
uint maxInt = ( 1u << numBits ) - 1u ;
return ( uint ) ( f * maxInt + 0.5 ) ;
}
#line 357
float PackByte ( uint i )
{
return PackInt ( i , 8 ) ;
}
#line 363
uint UnpackByte ( float f )
{
return UnpackInt ( f , 8 ) ;
}
#line 369
float PackShort ( uint i )
{
return PackInt ( i , 16 ) ;
}
#line 375
uint UnpackShort ( float f )
{
return UnpackInt ( f , 16 ) ;
}
#line 381
float PackShortLo ( uint i )
{
uint lo = BitFieldExtract ( i , 0u , 8u ) ;
return PackInt ( lo , 8 ) ;
}
#line 388
float PackShortHi ( uint i )
{
uint hi = BitFieldExtract ( i , 8u , 8u ) ;
return PackInt ( hi , 8 ) ;
}

float Pack2Byte ( float2 inputs )
{
float2 temp = inputs * float2 ( 255.0 , 255.0 ) ;
temp . x *= 256.0 ;
temp = round ( temp ) ;
float combined = temp . x + temp . y ;
return combined * ( 1.0 / 65535.0 ) ;
}

float2 Unpack2Byte ( float inputs )
{
float temp = round ( inputs * 65535.0 ) ;
float ipart ;
float fpart = modf ( temp / 256.0 , ipart ) ;
float2 result = float2 ( ipart , round ( 256.0 * fpart ) ) ;
return result * ( 1.0 / float2 ( 255.0 , 255.0 ) ) ;
}
#line 420
float PackFloatInt ( float f , uint i , float maxi , float precision )
{

float precisionMinusOne = precision - 1.0 ;
float t1 = ( ( precision / maxi ) - 1.0 ) / precisionMinusOne ;
float t2 = ( precision / maxi ) / precisionMinusOne ;

return t1 * f + t2 * float ( i ) ;
}

void UnpackFloatInt ( float val , float maxi , float precision , out float f , out uint i )
{

float precisionMinusOne = precision - 1.0 ;
float t1 = ( ( precision / maxi ) - 1.0 ) / precisionMinusOne ;
float t2 = ( precision / maxi ) / precisionMinusOne ;
#line 438
i = int ( ( val / t2 ) + rcp ( precisionMinusOne ) ) ;
#line 441
f = saturate ( ( - t2 * float ( i ) + val ) / t1 ) ;
}
#line 445
float PackFloatInt8bit ( float f , uint i , float maxi )
{
return PackFloatInt ( f , i , maxi , 256.0 ) ;
}

void UnpackFloatInt8bit ( float val , float maxi , out float f , out uint i )
{
UnpackFloatInt ( val , maxi , 256.0 , f , i ) ;
}

float PackFloatInt10bit ( float f , uint i , float maxi )
{
return PackFloatInt ( f , i , maxi , 1024.0 ) ;
}

void UnpackFloatInt10bit ( float val , float maxi , out float f , out uint i )
{
UnpackFloatInt ( val , maxi , 1024.0 , f , i ) ;
}

float PackFloatInt16bit ( float f , uint i , float maxi )
{
return PackFloatInt ( f , i , maxi , 65536.0 ) ;
}

void UnpackFloatInt16bit ( float val , float maxi , out float f , out uint i )
{
UnpackFloatInt ( val , maxi , 65536.0 , f , i ) ;
}
#line 480
uint PackFloatToUInt ( float src , uint offset , uint numBits )
{
return UnpackInt ( src , numBits ) << offset ;
}

float UnpackUIntToFloat ( uint src , uint offset , uint numBits )
{
uint maxInt = ( 1u << numBits ) - 1u ;
return float ( BitFieldExtract ( src , offset , numBits ) ) * rcp ( maxInt ) ;
}

uint PackToR10G10B10A2 ( float4 rgba )
{
return ( PackFloatToUInt ( rgba . x , 0 , 10 ) |
PackFloatToUInt ( rgba . y , 10 , 10 ) |
PackFloatToUInt ( rgba . z , 20 , 10 ) |
PackFloatToUInt ( rgba . w , 30 , 2 ) ) ;
}

float4 UnpackFromR10G10B10A2 ( uint rgba )
{
float4 output ;
output . x = UnpackUIntToFloat ( rgba , 0 , 10 ) ;
output . y = UnpackUIntToFloat ( rgba , 10 , 10 ) ;
output . z = UnpackUIntToFloat ( rgba , 20 , 10 ) ;
output . w = UnpackUIntToFloat ( rgba , 30 , 2 ) ;
return output ;
}
#line 510
float2 PackFloatToR8G8 ( float f )
{
uint i = UnpackShort ( f ) ;
return float2 ( PackShortLo ( i ) , PackShortHi ( i ) ) ;
}
#line 517
float UnpackFloatFromR8G8 ( float2 f )
{
uint lo = UnpackByte ( f . x ) ;
uint hi = UnpackByte ( f . y ) ;
uint cb = ( hi << 8 ) + lo ;
return PackShort ( cb ) ;
}
#line 526
uint3 PackFloat2To888UInt ( float2 f )
{
uint2 i = ( uint2 ) ( f * 4095.5 ) ;
uint2 hi = i >> 8 ;
uint2 lo = i & 255 ;

uint3 cb = uint3 ( lo , hi . x | ( hi . y << 4 ) ) ;
return cb ;
}
#line 537
float3 PackFloat2To888 ( float2 f )
{
return PackFloat2To888UInt ( f ) / 255.0 ;
}
#line 543
float2 Unpack888UIntToFloat2 ( uint3 x )
{

uint hi = x . z >> 4 ;
uint lo = x . z & 15 ;
uint2 cb = x . xy | uint2 ( lo << 8 , hi << 8 ) ;

return cb / 4095.0 ;
}
#line 554
float2 Unpack888ToFloat2 ( float3 x )
{
uint3 i = ( uint3 ) ( x * 255.5 ) ;
return Unpack888UIntToFloat2 ( i ) ;
}
#line 561
float PackFloat2To8 ( float2 f )
{
float x_expanded = f . x * 15.0 ;
float y_expanded = f . y * 15.0 ;
float x_y_expanded = x_expanded * 16.0 + y_expanded ;
return x_y_expanded / 255.0 ;
#line 570
}
#line 573
float2 Unpack8ToFloat2 ( float f )
{
float x_y_expanded = 255.0 * f ;
float x_expanded = floor ( x_y_expanded / 16.0 ) ;
float y_expanded = x_y_expanded - 16.0 * x_expanded ;
float x = x_expanded / 15.0 ;
float y = y_expanded / 15.0 ;
return float2 ( x , y ) ;
}
#line 587
float4 UnpackFromR8G8B8A8 ( uint rgba )
{
return float4 ( rgba & 255 , ( rgba >> 8 ) & 255 , ( rgba >> 16 ) & 255 , ( rgba >> 24 ) & 255 ) * ( 1.0 / 255 ) ;
}

float2 PackToR5G6B5 ( float3 rgb )
{
uint rgb16 = ( PackFloatToUInt ( rgb . x , 0 , 5 ) |
PackFloatToUInt ( rgb . y , 5 , 6 ) |
PackFloatToUInt ( rgb . z , 11 , 5 ) ) ;
return float2 ( PackByte ( rgb16 >> 8 ) , PackByte ( rgb16 & 0xFF ) ) ;
}

float3 UnpackFromR5G6B5 ( float2 rgb )
{
uint rgb16 = ( UnpackByte ( rgb . x ) << 8 ) | UnpackByte ( rgb . y ) ;
return float3 ( UnpackUIntToFloat ( rgb16 , 0 , 5 ) ,
UnpackUIntToFloat ( rgb16 , 5 , 6 ) ,
UnpackUIntToFloat ( rgb16 , 11 , 5 ) ) ;
}

uint PackToR7G7B6 ( float3 rgb )
{
uint rgb20 = ( PackFloatToUInt ( rgb . x , 0 , 7 ) |
PackFloatToUInt ( rgb . y , 7 , 7 ) |
PackFloatToUInt ( rgb . z , 14 , 6 ) ) ;
return rgb20 ;
}

float3 UnpackFromR7G7B6 ( uint rgb )
{
return float3 ( UnpackUIntToFloat ( rgb , 0 , 7 ) ,
UnpackUIntToFloat ( rgb , 7 , 7 ) ,
UnpackUIntToFloat ( rgb , 14 , 6 ) ) ;
}
#line 9 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/ShaderTypes.cs.hlsl"
struct LightData
{
float4 position ;
float4 color ;
float4 attenuation ;
float4 spotDirection ;
float4 occlusionProbeChannels ;
uint layerMask ;
} ;
#line 38 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/Input.hlsl"
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
#line 76
} ;
#line 82
half4 _GlossyEnvironmentColor ;
half4 _SubtractiveShadowColor ;

half4 _GlossyEnvironmentCubeMap_HDR ;
TextureCube _GlossyEnvironmentCubeMap ;
SamplerState sampler_GlossyEnvironmentCubeMap ;
#line 90
float4 _ScaledScreenParams ;
#line 94
float2 _GlobalMipBias ;
#line 97
float _AlphaToMaskAvailable ;

float4 _MainLightPosition ;

half4 _MainLightColor ;
half4 _MainLightOcclusionProbes ;
uint _MainLightLayerMask ;
#line 107
half4 _AmbientOcclusionParam ;

half4 _AdditionalLightsCount ;

uint _RenderingLayerMaxInt ;
float _RenderingLayerRcpMaxInt ;
#line 115
float4 _ScreenCoordScaleBias ;
float4 _ScreenSizeOverride ;

uint _EnableProbeVolumes ;
#line 148
cbuffer AdditionalLights {

float4 _AdditionalLightsPosition [ 32 ] ;

half4 _AdditionalLightsColor [ 32 ] ;
half4 _AdditionalLightsAttenuation [ 32 ] ;
half4 _AdditionalLightsSpotDir [ 32 ] ;
half4 _AdditionalLightsOcclusionProbes [ 32 ] ;
float _AdditionalLightsLayerMasks [ 32 ] ;

} ;
#line 40 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/UnityInput.hlsl"
float4 _Time ;
float4 _SinTime ;
float4 _CosTime ;
float4 unity_DeltaTime ;
float4 _TimeParameters ;
float4 _LastTimeParameters ;
#line 48
float3 _WorldSpaceCameraPos ;
#line 55
float4 _ProjectionParams ;
#line 61
float4 _ScreenParams ;
#line 73
float4 _ZBufferParams ;
#line 79
float4 unity_OrthoParams ;
#line 85
uniform float4 _ScaleBias ;
uniform float4 _ScaleBiasRt ;
#line 89
uniform float4 _RTHandleScale ;

float4 unity_CameraWorldClipPlanes [ 6 ] ;
#line 97
float4x4 unity_CameraProjection ;
float4x4 unity_CameraInvProjection ;
float4x4 unity_WorldToCamera ;
float4x4 unity_CameraToWorld ;
#line 108
cbuffer UnityPerDraw {

float4x4 unity_ObjectToWorld ;
float4x4 unity_WorldToObject ;
float4 unity_LODFade ;
float4 unity_WorldTransformParams ;
#line 117
float4 unity_RenderingLayer ;
#line 121
half4 unity_LightData ;
half4 unity_LightIndices [ 2 ] ;

float4 unity_ProbesOcclusion ;
#line 128
float4 unity_SpecCube0_HDR ;
float4 unity_SpecCube1_HDR ;

float4 unity_SpecCube0_BoxMax ;
float4 unity_SpecCube0_BoxMin ;
float4 unity_SpecCube0_ProbePosition ;
float4 unity_SpecCube1_BoxMax ;
float4 unity_SpecCube1_BoxMin ;
float4 unity_SpecCube1_ProbePosition ;
#line 139
float4 unity_LightmapST ;
float4 unity_DynamicLightmapST ;
#line 143
float4 unity_SHAr ;
float4 unity_SHAg ;
float4 unity_SHAb ;
float4 unity_SHBr ;
float4 unity_SHBg ;
float4 unity_SHBb ;
float4 unity_SHC ;
#line 152
float4 unity_RendererBounds_Min ;
float4 unity_RendererBounds_Max ;
#line 156
float4x4 unity_MatrixPreviousM ;
float4x4 unity_MatrixPreviousMI ;
#line 162
float4 unity_MotionVectorsParams ;
#line 165
float4 unity_SpriteColor ;
#line 170
float4 unity_SpriteProps ;
} ;
#line 207
float4x4 glstate_matrix_transpose_modelview0 ;
#line 211
float4 glstate_lightmodel_ambient ;
float4 unity_AmbientSky ;
float4 unity_AmbientEquator ;
float4 unity_AmbientGround ;
float4 unity_IndirectSpecColor ;
float4 unity_FogParams ;
float4 unity_FogColor ;
#line 220
float4x4 glstate_matrix_projection ;
float4x4 unity_MatrixV ;
float4x4 unity_MatrixInvV ;
float4x4 unity_MatrixInvP ;
float4x4 unity_MatrixVP ;
float4x4 unity_MatrixInvVP ;
float4 unity_StereoScaleOffset ;
int unity_StereoEyeIndex ;
#line 230
float4 unity_ShadowColor ;
#line 235
TextureCube unity_SpecCube0 ;
SamplerState samplerunity_SpecCube0 ;
TextureCube unity_SpecCube1 ;
SamplerState samplerunity_SpecCube1 ;
#line 241
Texture2D unity_Lightmap ;
SamplerState samplerunity_Lightmap ;
Texture2DArray unity_Lightmaps ;
SamplerState samplerunity_Lightmaps ;
#line 247
Texture2D unity_DynamicLightmap ;
SamplerState samplerunity_DynamicLightmap ;
#line 252
Texture2D unity_LightmapInd ;
Texture2DArray unity_LightmapsInd ;
Texture2D unity_DynamicDirectionality ;
#line 258
Texture2D unity_ShadowMask ;
SamplerState samplerunity_ShadowMask ;
Texture2DArray unity_ShadowMasks ;
SamplerState samplerunity_ShadowMasks ;
#line 276
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
#line 299
M . _21_41 = 0 ;
M . _12_42 = 0 ;
return M ;
}
#line 11 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/SpaceTransforms.hlsl"
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
#line 152 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/Core.hlsl"
struct VertexPositionInputs
{
float3 positionWS ;
float3 positionVS ;
float4 positionCS ;
float4 positionNDC ;
} ;

struct VertexNormalInputs
{
float3 tangentWS ;
float3 bitangentWS ;
float3 normalWS ;
} ;
#line 9 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/ShaderVariablesFunctions.deprecated.hlsl"
float4 ComputeScreenPos ( float4 positionCS )
{
float4 o = positionCS * 0.5f ;
o . xy = float2 ( o . x , o . y * _ProjectionParams . x ) + o . w ;
o . zw = positionCS . zw ;
return o ;
}
#line 121 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/Debug/DebuggingCommon.hlsl"
bool IsAlphaDiscardEnabled ( )
{
#line 126
return true ;

}

bool IsFogEnabled ( )
{
#line 142
return true ;

}

bool IsLightingFeatureEnabled ( uint bitMask )
{
#line 151
return true ;

}

bool IsOnlyAOLightingFeatureEnabled ( )
{
#line 160
return false ;

}
#line 7 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/ShaderVariablesFunctions.hlsl"
VertexPositionInputs GetVertexPositionInputs ( float3 positionOS )
{
VertexPositionInputs input ;
input . positionWS = TransformObjectToWorld ( positionOS ) ;
input . positionVS = TransformWorldToView ( input . positionWS ) ;
input . positionCS = TransformWorldToHClip ( input . positionWS ) ;

float4 ndc = input . positionCS * 0.5f ;
input . positionNDC . xy = float2 ( ndc . x , ndc . y * _ProjectionParams . x ) + ndc . w ;
input . positionNDC . zw = input . positionCS . zw ;

return input ;
}

VertexNormalInputs GetVertexNormalInputs ( float3 normalOS )
{
VertexNormalInputs tbn ;
tbn . tangentWS = float3 ( 1.0 , 0.0 , 0.0 ) ;
tbn . bitangentWS = float3 ( 0.0 , 1.0 , 0.0 ) ;
tbn . normalWS = TransformObjectToWorldNormal ( normalOS ) ;
return tbn ;
}

VertexNormalInputs GetVertexNormalInputs ( float3 normalOS , float4 tangentOS )
{
VertexNormalInputs tbn ;
#line 35
float sign = float ( tangentOS . w ) * GetOddNegativeScale ( ) ;
tbn . normalWS = TransformObjectToWorldNormal ( normalOS ) ;
tbn . tangentWS = float3 ( TransformObjectToWorldDir ( tangentOS . xyz ) ) ;
tbn . bitangentWS = float3 ( cross ( tbn . normalWS , float3 ( tbn . tangentWS ) ) ) * sign ;
return tbn ;
}

float4 GetScaledScreenParams ( )
{
return _ScaledScreenParams ;
}
#line 48
bool IsPerspectiveProjection ( )
{
return ( unity_OrthoParams . w == 0 ) ;
}

float3 GetCameraPositionWS ( )
{
#line 57
return _WorldSpaceCameraPos ;
#line 66
}
#line 69
float3 GetCurrentViewPosition ( )
{
#line 73
return GetCameraPositionWS ( ) ;
#line 85
}
#line 88
float3 GetViewForwardDir ( )
{
float4x4 viewMat = GetWorldToViewMatrix ( ) ;
return - viewMat [ 2 ] . xyz ;
}
#line 95
float3 GetWorldSpaceViewDir ( float3 positionWS )
{
if ( IsPerspectiveProjection ( ) )
{

return GetCurrentViewPosition ( ) - positionWS ;
}
else
{

return - GetViewForwardDir ( ) ;
}
}
#line 110
half3 GetObjectSpaceNormalizeViewDir ( float3 positionOS )
{
if ( IsPerspectiveProjection ( ) )
{

float3 V = TransformWorldToObject ( GetCurrentViewPosition ( ) ) - positionOS ;
return half3 ( normalize ( V ) ) ;
}
else
{

return half3 ( TransformWorldToObjectNormal ( - GetViewForwardDir ( ) ) ) ;
}
}

half3 GetWorldSpaceNormalizeViewDir ( float3 positionWS )
{
if ( IsPerspectiveProjection ( ) )
{

float3 V = GetCurrentViewPosition ( ) - positionWS ;
return half3 ( normalize ( V ) ) ;
}
else
{

return half3 ( - GetViewForwardDir ( ) ) ;
}
}
#line 143
void GetLeftHandedViewSpaceMatrices ( out float4x4 viewMatrix , out float4x4 projMatrix )
{
viewMatrix = unity_MatrixV ;
viewMatrix . _31_32_33_34 = - viewMatrix . _31_32_33_34 ;

projMatrix = OptimizeProjectionMatrix ( glstate_matrix_projection ) ;
projMatrix . _13_23_33_43 = - projMatrix . _13_23_33_43 ;
}
#line 155
static const half kSurfaceTypeOpaque = 0.0 ;
static const half kSurfaceTypeTransparent = 1.0 ;
#line 159
bool IsSurfaceTypeOpaque ( half surfaceType )
{
return ( surfaceType == kSurfaceTypeOpaque ) ;
}
#line 165
bool IsSurfaceTypeTransparent ( half surfaceType )
{
return ( surfaceType == kSurfaceTypeTransparent ) ;
}
#line 214
float AlphaDiscard ( float alpha , float cutoff , float offset = float ( 0.0 ) )
{
#line 221
return alpha ;
}

half OutputAlpha ( half alpha , bool isTransparent )
{
if ( isTransparent )
{
return alpha ;
}
else
{
#line 236
return 1.0 ;

}
}

half3 AlphaModulate ( half3 albedo , half alpha )
{
#line 250
return albedo ;

}

half3 AlphaPremultiply ( half3 albedo , half alpha )
{
#line 263
return albedo ;
}
#line 269
half3 NormalizeNormalPerVertex ( half3 normalWS )
{
return normalize ( normalWS ) ;
}

float3 NormalizeNormalPerVertex ( float3 normalWS )
{
return normalize ( normalWS ) ;
}

half3 NormalizeNormalPerPixel ( half3 normalWS )
{
#line 285
return normalize ( normalWS ) ;

}

float3 NormalizeNormalPerPixel ( float3 normalWS )
{
#line 294
return normalize ( normalWS ) ;

}
#line 300
float ComputeFogFactorZ0ToFar ( float z )
{
#line 311
return float ( 0.0 ) ;

}

float ComputeFogFactor ( float zPositionCS )
{
float clipZ_0Far = max ( ( ( 1.0 - ( zPositionCS ) / _ProjectionParams . y ) * _ProjectionParams . z ) , 0 ) ;
return ComputeFogFactorZ0ToFar ( clipZ_0Far ) ;
}

half ComputeFogIntensity ( half fogFactor )
{
half fogIntensity = half ( 0.0 ) ;
#line 337
return fogIntensity ;
}
#line 342
float InitializeInputDataFog ( float4 positionWS , float vertFogFactor )
{
float fogFactor = 0.0 ;
#line 356
return fogFactor ;
}

float ComputeFogIntensity ( float fogFactor )
{
float fogIntensity = 0.0 ;
#line 375
return fogIntensity ;
}

half3 MixFogColor ( half3 fragColor , half3 fogColor , half fogFactor )
{
#line 384
return fragColor ;
}

float3 MixFogColor ( float3 fragColor , float3 fogColor , float fogFactor )
{
#line 396
return fragColor ;
}

half3 MixFog ( half3 fragColor , half fogFactor )
{
return MixFogColor ( fragColor , unity_FogColor . rgb , fogFactor ) ;
}

float3 MixFog ( float3 fragColor , float fogFactor )
{
return MixFogColor ( fragColor , unity_FogColor . rgb , fogFactor ) ;
}
#line 410
half LinearDepthToEyeDepth ( half rawDepth )
{

return half ( _ProjectionParams . z - ( _ProjectionParams . z - _ProjectionParams . y ) * rawDepth ) ;
#line 417
}

float LinearDepthToEyeDepth ( float rawDepth )
{

return _ProjectionParams . z - ( _ProjectionParams . z - _ProjectionParams . y ) * rawDepth ;
#line 426
}

void TransformScreenUV ( inout float2 uv , float screenHeight )
{

uv . y = screenHeight - ( uv . y * _ScaleBiasRt . x + _ScaleBiasRt . y * screenHeight ) ;

}

void TransformScreenUV ( inout float2 uv )
{

TransformScreenUV ( uv , GetScaledScreenParams ( ) . y ) ;

}

void TransformNormalizedScreenUV ( inout float2 uv )
{

TransformScreenUV ( uv , 1.0 ) ;

}

float2 GetNormalizedScreenSpaceUV ( float2 positionCS )
{
float2 normalizedScreenSpaceUV = positionCS . xy * rcp ( GetScaledScreenParams ( ) . xy ) ;
TransformNormalizedScreenUV ( normalizedScreenSpaceUV ) ;
return normalizedScreenSpaceUV ;
}

float2 GetNormalizedScreenSpaceUV ( float4 positionCS )
{
return GetNormalizedScreenSpaceUV ( positionCS . xy ) ;
}
#line 467
uint Select4 ( uint4 v , uint i )
{
#line 473
uint mask0 = uint ( int ( i << 31 ) >> 31 ) ;
uint mask1 = uint ( int ( i << 30 ) >> 31 ) ;
return
( ( ( v . w & mask0 ) | ( v . z & ~ mask0 ) ) & mask1 ) |
( ( ( v . y & mask0 ) | ( v . x & ~ mask0 ) ) & ~ mask1 ) ;
}
#line 481
uint URP_FirstBitLow ( uint m )
{

return ( asuint ( ( float ) ( m & asuint ( - asint ( m ) ) ) ) >> 23 ) - 0x7F ;
}
#line 493
uint GetMeshRenderingLayer ( )
{
return asuint ( unity_RenderingLayer . x ) ;
}

float EncodeMeshRenderingLayer ( uint renderingLayer )
{

renderingLayer &= _RenderingLayerMaxInt ;
#line 507
float rcpMaxInt = _RenderingLayerRcpMaxInt ;
return saturate ( renderingLayer * rcpMaxInt ) ;
}

uint DecodeMeshRenderingLayer ( float renderingLayer )
{
#line 517
uint maxInt = _RenderingLayerMaxInt ;
return ( uint ) ( renderingLayer * maxInt + 0.5 ) ;
}
#line 6 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/DynamicScalingClamping.hlsl"
float2 ClampUV ( float2 UV , float2 texelSize , float numberOfTexels , float2 scale )
{
float2 maxCoord = scale - numberOfTexels * texelSize ;
return min ( UV , maxCoord ) ;
}

float2 ClampUV ( float2 UV , float2 texelSize , float numberOfTexels )
{
return ClampUV ( UV , texelSize , numberOfTexels , _RTHandleScale . xy ) ;
}

float2 ClampAndScaleUV ( float2 UV , float2 texelSize , float numberOfTexels , float2 scale )
{
float2 maxCoord = 1.0f - numberOfTexels * texelSize ;
return min ( UV , maxCoord ) * scale ;
}

float2 ClampAndScaleUV ( float2 UV , float2 texelSize , float numberOfTexels )
{
return ClampAndScaleUV ( UV , texelSize , numberOfTexels , _RTHandleScale . xy ) ;
}
#line 29
float2 ClampUVForBilinear ( float2 UV , float2 texelSize )
{
return ClampUV ( UV , texelSize , 0.5f ) ;
}

float2 ClampUVForBilinear ( float2 UV )
{
return ClampUV ( UV , _ScreenSize . zw , 0.5f ) ;
}

float2 ClampAndScaleUVForBilinear ( float2 UV , float2 texelSize )
{
return ClampAndScaleUV ( UV , texelSize , 0.5f ) ;
}
#line 45
float2 ClampAndScaleUVForBilinear ( float2 UV )
{
return ClampAndScaleUV ( UV , _ScreenSize . zw , 0.5f ) ;
}

float2 ClampAndScaleUVForPoint ( float2 UV )
{
return min ( UV , 1.0f ) * _RTHandleScale . xy ;
}
#line 6 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.universal@16.0.1/ShaderLibrary/DeclareDepthTexture.hlsl"
Texture2D_float _CameraDepthTexture ;
SamplerState sampler_CameraDepthTexture ;
float4 _CameraDepthTexture_TexelSize ;

float SampleSceneDepth ( float2 uv )
{
uv = ClampAndScaleUVForBilinear ( uv , _CameraDepthTexture_TexelSize . xy ) ;
return _CameraDepthTexture . SampleBias ( sampler_CameraDepthTexture , uv , _GlobalMipBias . x ) . r ;
}

float LoadSceneDepth ( uint2 uv )
{
return _CameraDepthTexture . Load ( int3 ( uv , 0 ) ) . r ;
}
#line 14 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Filtering.hlsl"
float2 BSpline2Left ( float2 x )
{
return 0.5 * x * x ;
}

float2 BSpline2Middle ( float2 x )
{
return ( 1 - x ) * x + 0.5 ;
}

float2 BSpline2Right ( float2 x )
{
return ( 0.5 * x - 1 ) * x + 0.5 ;
}
#line 39
float2 BSpline3Leftmost ( float2 x )
{
return 0.16666667 * x * x * x ;
}

float2 BSpline3MiddleLeft ( float2 x )
{
return 0.16666667 + x * ( 0.5 + x * ( 0.5 - x * 0.5 ) ) ;
}

float2 BSpline3MiddleRight ( float2 x )
{
return 0.66666667 + x * ( - 1.0 + 0.5 * x ) * x ;
}

float2 BSpline3Rightmost ( float2 x )
{
return 0.16666667 + x * ( - 0.5 + x * ( 0.5 - x * 0.16666667 ) ) ;
}
#line 62
void BicubicFilter ( float2 fracCoord , out float2 weights [ 2 ] , out float2 offsets [ 2 ] )
{
float2 r = BSpline3Rightmost ( fracCoord ) ;
float2 mr = BSpline3MiddleRight ( fracCoord ) ;
float2 ml = BSpline3MiddleLeft ( fracCoord ) ;
float2 l = 1.0 - mr - ml - r ;

weights [ 0 ] = r + mr ;
weights [ 1 ] = ml + l ;
offsets [ 0 ] = - 1.0 + mr * rcp ( weights [ 0 ] ) ;
offsets [ 1 ] = 1.0 + l * rcp ( weights [ 1 ] ) ;
}
#line 78
void BiquadraticFilter ( float2 fracCoord , out float2 weights [ 2 ] , out float2 offsets [ 2 ] )
{
float2 l = BSpline2Left ( fracCoord ) ;
float2 m = BSpline2Middle ( fracCoord ) ;
float2 r = 1.0 - l - m ;
#line 87
weights [ 0 ] = l + 0.5 * m ;
weights [ 1 ] = r + 0.5 * m ;
offsets [ 0 ] = - 0.5 + 0.5 * m * rcp ( weights [ 0 ] ) ;
offsets [ 1 ] = 0.5 + r * rcp ( weights [ 1 ] ) ;
}
#line 94
float4 SampleTexture2DBiquadratic ( Texture2D tex , SamplerState smp , float2 coord , float4 texSize )
{
float2 xy = coord * texSize . xy ;
float2 ic = floor ( xy ) ;
float2 fc = frac ( xy ) ;

float2 weights [ 2 ] , offsets [ 2 ] ;
BiquadraticFilter ( 1.0 - fc , weights , offsets ) ;
#line 104
return weights [ 0 ] . x * weights [ 0 ] . y * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 0 ] . y ) ) * ( texSize . zw * 1.0 ) , 1.0 ) , 0.0 )
+ weights [ 1 ] . x * weights [ 0 ] . y * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 0 ] . y ) ) * ( texSize . zw * 1.0 ) , 1.0 ) , 0.0 )
+ weights [ 0 ] . x * weights [ 1 ] . y * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 1 ] . y ) ) * ( texSize . zw * 1.0 ) , 1.0 ) , 0.0 )
+ weights [ 1 ] . x * weights [ 1 ] . y * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 1 ] . y ) ) * ( texSize . zw * 1.0 ) , 1.0 ) , 0.0 ) ;
}
#line 111
float4 SampleTexture2DBicubic ( Texture2D tex , SamplerState smp , float2 coord , float4 texSize , float2 maxCoord , uint unused )
{
float2 xy = coord * texSize . xy + 0.5 ;
float2 ic = floor ( xy ) ;
float2 fc = frac ( xy ) ;

float2 weights [ 2 ] , offsets [ 2 ] ;
BicubicFilter ( fc , weights , offsets ) ;

return weights [ 0 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , 0.0 ) +
weights [ 1 ] . x * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , 0.0 ) ) +
weights [ 1 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , 0.0 ) +
weights [ 1 ] . x * tex . SampleLevel ( smp , min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , 0.0 ) ) ;
}

float4 SampleTexture2DArrayBicubic ( Texture2DArray tex , SamplerState smp , float2 coord , float slice , float4 texSize )
{
float2 xy = coord * texSize . xy + 0.5 ;
float2 ic = floor ( xy ) ;
float2 fc = frac ( xy ) ;

float2 weights [ 2 ] , offsets [ 2 ] ;
BicubicFilter ( fc , weights , offsets ) ;

return weights [ 0 ] . y * ( weights [ 0 ] . x * tex . SampleBias ( smp , float3 ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , slice ) , _GlobalMipBias . x ) . rgba +
weights [ 1 ] . x * tex . SampleBias ( smp , float3 ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , slice ) , _GlobalMipBias . x ) . rgba ) +
weights [ 1 ] . y * ( weights [ 0 ] . x * tex . SampleBias ( smp , float3 ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , slice ) , _GlobalMipBias . x ) . rgba +
weights [ 1 ] . x * tex . SampleBias ( smp , float3 ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , slice ) , _GlobalMipBias . x ) . rgba ) ;
}

float4 SampleTexture2DArrayBicubicLOD ( Texture2DArray tex , SamplerState smp , float2 coord , float slice , float4 texSize , int lod )
{
float2 xy = coord * texSize . xy + 0.5 ;
float2 ic = floor ( xy ) ;
float2 fc = frac ( xy ) ;

float2 weights [ 2 ] , offsets [ 2 ] ;
BicubicFilter ( fc , weights , offsets ) ;

return weights [ 0 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , float3 ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , slice ) , lod ) . rgba +
weights [ 1 ] . x * tex . SampleLevel ( smp , float3 ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , slice ) , lod ) . rgba ) +
weights [ 1 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , float3 ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , slice ) , lod ) . rgba +
weights [ 1 ] . x * tex . SampleLevel ( smp , float3 ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , slice ) , lod ) . rgba ) ;
}
#line 158
float4 SampleTexture2DBicubic ( Texture2DArray tex , SamplerState smp , float2 coord , float4 texSize , float2 maxCoord , uint slice )
{
float2 xy = coord * texSize . xy + 0.5 ;
float2 ic = floor ( xy ) ;
float2 fc = frac ( xy ) ;

float2 weights [ 2 ] , offsets [ 2 ] ;
BicubicFilter ( fc , weights , offsets ) ;

return weights [ 0 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , float3 ( min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , slice ) , 0.0 ) +
weights [ 1 ] . x * tex . SampleLevel ( smp , float3 ( min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 0 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , slice ) , 0.0 ) ) +
weights [ 1 ] . y * ( weights [ 0 ] . x * tex . SampleLevel ( smp , float3 ( min ( ( ic + float2 ( offsets [ 0 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , slice ) , 0.0 ) +
weights [ 1 ] . x * tex . SampleLevel ( smp , float3 ( min ( ( ic + float2 ( offsets [ 1 ] . x , offsets [ 1 ] . y ) - 0.5 ) * texSize . zw , maxCoord ) , slice ) , 0.0 ) ) ;
}
#line 11 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Sampling/Fibonacci.hlsl"
float2 Fibonacci2dSeq ( float fibN1 , float fibN2 , uint i )
{
#line 16
return float2 ( i / fibN1 + ( 0.5 / fibN1 ) , frac ( i * ( fibN2 / fibN1 ) ) ) ;
}
#line 23
float2 Golden2dSeq ( uint i , float n )
{
#line 27
return float2 ( i / n + ( 0.5 / n ) , frac ( i * rcp ( 1.618033988749895 ) ) ) ;
}

static const uint k_FibonacciSeq [ ] = {
0 , 1 , 1 , 2 , 3 , 5 , 8 , 13 , 21 , 34 , 55 , 89 , 144 , 233 , 377 , 610 , 987 , 1597 , 2584 , 4181
} ;

static const float2 k_Fibonacci2dSeq21 [ ] = {
float2 ( 0.02380952 , 0.00000000 ) ,
float2 ( 0.07142857 , 0.61904764 ) ,
float2 ( 0.11904762 , 0.23809528 ) ,
float2 ( 0.16666667 , 0.85714293 ) ,
float2 ( 0.21428572 , 0.47619057 ) ,
float2 ( 0.26190478 , 0.09523821 ) ,
float2 ( 0.30952382 , 0.71428585 ) ,
float2 ( 0.35714287 , 0.33333349 ) ,
float2 ( 0.40476191 , 0.95238113 ) ,
float2 ( 0.45238096 , 0.57142878 ) ,
float2 ( 0.50000000 , 0.19047642 ) ,
float2 ( 0.54761904 , 0.80952406 ) ,
float2 ( 0.59523809 , 0.42857170 ) ,
float2 ( 0.64285713 , 0.04761887 ) ,
float2 ( 0.69047618 , 0.66666698 ) ,
float2 ( 0.73809522 , 0.28571510 ) ,
float2 ( 0.78571427 , 0.90476227 ) ,
float2 ( 0.83333331 , 0.52380943 ) ,
float2 ( 0.88095236 , 0.14285755 ) ,
float2 ( 0.92857140 , 0.76190567 ) ,
float2 ( 0.97619045 , 0.38095284 )
} ;

static const float2 k_Fibonacci2dSeq34 [ ] = {
float2 ( 0.01470588 , 0.00000000 ) ,
float2 ( 0.04411765 , 0.61764705 ) ,
float2 ( 0.07352941 , 0.23529410 ) ,
float2 ( 0.10294118 , 0.85294116 ) ,
float2 ( 0.13235295 , 0.47058821 ) ,
float2 ( 0.16176471 , 0.08823538 ) ,
float2 ( 0.19117647 , 0.70588231 ) ,
float2 ( 0.22058824 , 0.32352924 ) ,
float2 ( 0.25000000 , 0.94117641 ) ,
float2 ( 0.27941176 , 0.55882359 ) ,
float2 ( 0.30882353 , 0.17647076 ) ,
float2 ( 0.33823529 , 0.79411745 ) ,
float2 ( 0.36764705 , 0.41176462 ) ,
float2 ( 0.39705881 , 0.02941132 ) ,
float2 ( 0.42647058 , 0.64705849 ) ,
float2 ( 0.45588234 , 0.26470566 ) ,
float2 ( 0.48529410 , 0.88235283 ) ,
float2 ( 0.51470590 , 0.50000000 ) ,
float2 ( 0.54411763 , 0.11764717 ) ,
float2 ( 0.57352942 , 0.73529434 ) ,
float2 ( 0.60294116 , 0.35294151 ) ,
float2 ( 0.63235295 , 0.97058773 ) ,
float2 ( 0.66176468 , 0.58823490 ) ,
float2 ( 0.69117647 , 0.20588207 ) ,
float2 ( 0.72058821 , 0.82352924 ) ,
float2 ( 0.75000000 , 0.44117641 ) ,
float2 ( 0.77941179 , 0.05882263 ) ,
float2 ( 0.80882353 , 0.67646980 ) ,
float2 ( 0.83823532 , 0.29411697 ) ,
float2 ( 0.86764705 , 0.91176414 ) ,
float2 ( 0.89705884 , 0.52941132 ) ,
float2 ( 0.92647058 , 0.14705849 ) ,
float2 ( 0.95588237 , 0.76470566 ) ,
float2 ( 0.98529410 , 0.38235283 )
} ;

static const float2 k_Fibonacci2dSeq55 [ ] = {
float2 ( 0.00909091 , 0.00000000 ) ,
float2 ( 0.02727273 , 0.61818182 ) ,
float2 ( 0.04545455 , 0.23636365 ) ,
float2 ( 0.06363636 , 0.85454547 ) ,
float2 ( 0.08181818 , 0.47272730 ) ,
float2 ( 0.10000000 , 0.09090900 ) ,
float2 ( 0.11818182 , 0.70909095 ) ,
float2 ( 0.13636364 , 0.32727289 ) ,
float2 ( 0.15454546 , 0.94545460 ) ,
float2 ( 0.17272727 , 0.56363630 ) ,
float2 ( 0.19090909 , 0.18181801 ) ,
float2 ( 0.20909090 , 0.80000019 ) ,
float2 ( 0.22727273 , 0.41818190 ) ,
float2 ( 0.24545455 , 0.03636360 ) ,
float2 ( 0.26363635 , 0.65454578 ) ,
float2 ( 0.28181818 , 0.27272701 ) ,
float2 ( 0.30000001 , 0.89090919 ) ,
float2 ( 0.31818181 , 0.50909138 ) ,
float2 ( 0.33636364 , 0.12727261 ) ,
float2 ( 0.35454544 , 0.74545479 ) ,
float2 ( 0.37272727 , 0.36363602 ) ,
float2 ( 0.39090911 , 0.98181820 ) ,
float2 ( 0.40909091 , 0.60000038 ) ,
float2 ( 0.42727274 , 0.21818161 ) ,
float2 ( 0.44545454 , 0.83636379 ) ,
float2 ( 0.46363637 , 0.45454597 ) ,
float2 ( 0.48181817 , 0.07272720 ) ,
float2 ( 0.50000000 , 0.69090843 ) ,
float2 ( 0.51818180 , 0.30909157 ) ,
float2 ( 0.53636366 , 0.92727280 ) ,
float2 ( 0.55454546 , 0.54545403 ) ,
float2 ( 0.57272726 , 0.16363716 ) ,
float2 ( 0.59090906 , 0.78181839 ) ,
float2 ( 0.60909092 , 0.39999962 ) ,
float2 ( 0.62727273 , 0.01818275 ) ,
float2 ( 0.64545453 , 0.63636398 ) ,
float2 ( 0.66363639 , 0.25454521 ) ,
float2 ( 0.68181819 , 0.87272835 ) ,
float2 ( 0.69999999 , 0.49090958 ) ,
float2 ( 0.71818179 , 0.10909081 ) ,
float2 ( 0.73636365 , 0.72727203 ) ,
float2 ( 0.75454545 , 0.34545517 ) ,
float2 ( 0.77272725 , 0.96363640 ) ,
float2 ( 0.79090911 , 0.58181763 ) ,
float2 ( 0.80909091 , 0.20000076 ) ,
float2 ( 0.82727271 , 0.81818199 ) ,
float2 ( 0.84545457 , 0.43636322 ) ,
float2 ( 0.86363637 , 0.05454636 ) ,
float2 ( 0.88181818 , 0.67272758 ) ,
float2 ( 0.89999998 , 0.29090881 ) ,
float2 ( 0.91818184 , 0.90909195 ) ,
float2 ( 0.93636364 , 0.52727318 ) ,
float2 ( 0.95454544 , 0.14545441 ) ,
float2 ( 0.97272730 , 0.76363754 ) ,
float2 ( 0.99090910 , 0.38181686 )
} ;

static const float2 k_Fibonacci2dSeq89 [ ] = {
float2 ( 0.00561798 , 0.00000000 ) ,
float2 ( 0.01685393 , 0.61797750 ) ,
float2 ( 0.02808989 , 0.23595500 ) ,
float2 ( 0.03932584 , 0.85393250 ) ,
float2 ( 0.05056180 , 0.47191000 ) ,
float2 ( 0.06179775 , 0.08988762 ) ,
float2 ( 0.07303371 , 0.70786500 ) ,
float2 ( 0.08426967 , 0.32584238 ) ,
float2 ( 0.09550562 , 0.94382000 ) ,
float2 ( 0.10674157 , 0.56179762 ) ,
float2 ( 0.11797753 , 0.17977524 ) ,
float2 ( 0.12921348 , 0.79775238 ) ,
float2 ( 0.14044943 , 0.41573000 ) ,
float2 ( 0.15168539 , 0.03370762 ) ,
float2 ( 0.16292135 , 0.65168476 ) ,
float2 ( 0.17415731 , 0.26966286 ) ,
float2 ( 0.18539326 , 0.88764000 ) ,
float2 ( 0.19662921 , 0.50561714 ) ,
float2 ( 0.20786516 , 0.12359524 ) ,
float2 ( 0.21910113 , 0.74157238 ) ,
float2 ( 0.23033708 , 0.35955048 ) ,
float2 ( 0.24157304 , 0.97752762 ) ,
float2 ( 0.25280899 , 0.59550476 ) ,
float2 ( 0.26404494 , 0.21348286 ) ,
float2 ( 0.27528089 , 0.83146000 ) ,
float2 ( 0.28651685 , 0.44943714 ) ,
float2 ( 0.29775280 , 0.06741524 ) ,
float2 ( 0.30898875 , 0.68539238 ) ,
float2 ( 0.32022473 , 0.30336952 ) ,
float2 ( 0.33146068 , 0.92134666 ) ,
float2 ( 0.34269664 , 0.53932571 ) ,
float2 ( 0.35393259 , 0.15730286 ) ,
float2 ( 0.36516854 , 0.77528000 ) ,
float2 ( 0.37640449 , 0.39325714 ) ,
float2 ( 0.38764045 , 0.01123428 ) ,
float2 ( 0.39887640 , 0.62921333 ) ,
float2 ( 0.41011235 , 0.24719048 ) ,
float2 ( 0.42134830 , 0.86516762 ) ,
float2 ( 0.43258426 , 0.48314476 ) ,
float2 ( 0.44382024 , 0.10112190 ) ,
float2 ( 0.45505619 , 0.71910095 ) ,
float2 ( 0.46629214 , 0.33707809 ) ,
float2 ( 0.47752810 , 0.95505524 ) ,
float2 ( 0.48876405 , 0.57303238 ) ,
float2 ( 0.50000000 , 0.19100952 ) ,
float2 ( 0.51123595 , 0.80898666 ) ,
float2 ( 0.52247190 , 0.42696571 ) ,
float2 ( 0.53370786 , 0.04494286 ) ,
float2 ( 0.54494381 , 0.66292000 ) ,
float2 ( 0.55617976 , 0.28089714 ) ,
float2 ( 0.56741571 , 0.89887428 ) ,
float2 ( 0.57865167 , 0.51685333 ) ,
float2 ( 0.58988762 , 0.13483047 ) ,
float2 ( 0.60112357 , 0.75280762 ) ,
float2 ( 0.61235952 , 0.37078476 ) ,
float2 ( 0.62359548 , 0.98876190 ) ,
float2 ( 0.63483149 , 0.60673904 ) ,
float2 ( 0.64606744 , 0.22471619 ) ,
float2 ( 0.65730339 , 0.84269333 ) ,
float2 ( 0.66853935 , 0.46067429 ) ,
float2 ( 0.67977530 , 0.07865143 ) ,
float2 ( 0.69101125 , 0.69662857 ) ,
float2 ( 0.70224720 , 0.31460571 ) ,
float2 ( 0.71348315 , 0.93258286 ) ,
float2 ( 0.72471911 , 0.55056000 ) ,
float2 ( 0.73595506 , 0.16853714 ) ,
float2 ( 0.74719101 , 0.78651428 ) ,
float2 ( 0.75842696 , 0.40449142 ) ,
float2 ( 0.76966292 , 0.02246857 ) ,
float2 ( 0.78089887 , 0.64044571 ) ,
float2 ( 0.79213482 , 0.25842667 ) ,
float2 ( 0.80337077 , 0.87640381 ) ,
float2 ( 0.81460673 , 0.49438095 ) ,
float2 ( 0.82584268 , 0.11235809 ) ,
float2 ( 0.83707863 , 0.73033524 ) ,
float2 ( 0.84831458 , 0.34831238 ) ,
float2 ( 0.85955054 , 0.96628952 ) ,
float2 ( 0.87078649 , 0.58426666 ) ,
float2 ( 0.88202250 , 0.20224380 ) ,
float2 ( 0.89325845 , 0.82022095 ) ,
float2 ( 0.90449440 , 0.43820190 ) ,
float2 ( 0.91573036 , 0.05617905 ) ,
float2 ( 0.92696631 , 0.67415619 ) ,
float2 ( 0.93820226 , 0.29213333 ) ,
float2 ( 0.94943821 , 0.91011047 ) ,
float2 ( 0.96067417 , 0.52808762 ) ,
float2 ( 0.97191012 , 0.14606476 ) ,
float2 ( 0.98314607 , 0.76404190 ) ,
float2 ( 0.99438202 , 0.38201904 )
} ;
#line 248
float2 Fibonacci2d ( uint i , uint sampleCount )
{
switch ( sampleCount )
{
case 21 : return k_Fibonacci2dSeq21 [ i ] ;
case 34 : return k_Fibonacci2dSeq34 [ i ] ;
case 55 : return k_Fibonacci2dSeq55 [ i ] ;
case 89 : return k_Fibonacci2dSeq89 [ i ] ;
default :
{
uint fibN1 = sampleCount ;
uint fibN2 = sampleCount ;
#line 262
for ( uint j = 1 ; j < 20 ; j ++ )
{
if ( k_FibonacciSeq [ j ] == fibN1 )
{
fibN2 = k_FibonacciSeq [ j - 1 ] ;
}
}

return Fibonacci2dSeq ( fibN1 , fibN2 , i ) ;
}
}
}

float2 SampleDiskGolden ( uint i , uint sampleCount )
{
float2 f = Golden2dSeq ( i , sampleCount ) ;
return float2 ( sqrt ( f . x ) , 6.28318530717958647693 * f . y ) ;
}
#line 282
float2 SampleDiskFibonacci ( uint i , uint sampleCount )
{
float2 f = Fibonacci2d ( i , sampleCount ) ;
return float2 ( sqrt ( f . x ) , 6.28318530717958647693 * f . y ) ;
}
#line 289
float2 SampleHemisphereFibonacci ( uint i , uint sampleCount )
{
float2 f = Fibonacci2d ( i , sampleCount ) ;
return float2 ( 1 - f . x , 6.28318530717958647693 * f . y ) ;
}
#line 296
float2 SampleSphereFibonacci ( uint i , uint sampleCount )
{
float2 f = Fibonacci2d ( i , sampleCount ) ;
return float2 ( 1 - 2 * f . x , 6.28318530717958647693 * f . y ) ;
}
#line 9 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Sampling/Hammersley.hlsl"
uint ReverseBits32 ( uint bits )
{
#line 14
bits = ( bits << 16 ) | ( bits >> 16 ) ;
bits = ( ( bits & 0x00ff00ff ) << 8 ) | ( ( bits & 0xff00ff00 ) >> 8 ) ;
bits = ( ( bits & 0x0f0f0f0f ) << 4 ) | ( ( bits & 0xf0f0f0f0 ) >> 4 ) ;
bits = ( ( bits & 0x33333333 ) << 2 ) | ( ( bits & 0xcccccccc ) >> 2 ) ;
bits = ( ( bits & 0x55555555 ) << 1 ) | ( ( bits & 0xaaaaaaaa ) >> 1 ) ;
return bits ;

}

float VanDerCorputBase2 ( uint i )
{
return ReverseBits32 ( i ) * rcp ( 4294967296.0 ) ;
}

float2 Hammersley2dSeq ( uint i , uint sequenceLength )
{
return float2 ( float ( i ) / float ( sequenceLength ) , VanDerCorputBase2 ( i ) ) ;
}
#line 37
static const float2 k_Hammersley2dSeq16 [ ] = {
float2 ( 0.00000000 , 0.00000000 ) ,
float2 ( 0.06250000 , 0.50000000 ) ,
float2 ( 0.12500000 , 0.25000000 ) ,
float2 ( 0.18750000 , 0.75000000 ) ,
float2 ( 0.25000000 , 0.12500000 ) ,
float2 ( 0.31250000 , 0.62500000 ) ,
float2 ( 0.37500000 , 0.37500000 ) ,
float2 ( 0.43750000 , 0.87500000 ) ,
float2 ( 0.50000000 , 0.06250000 ) ,
float2 ( 0.56250000 , 0.56250000 ) ,
float2 ( 0.62500000 , 0.31250000 ) ,
float2 ( 0.68750000 , 0.81250000 ) ,
float2 ( 0.75000000 , 0.18750000 ) ,
float2 ( 0.81250000 , 0.68750000 ) ,
float2 ( 0.87500000 , 0.43750000 ) ,
float2 ( 0.93750000 , 0.93750000 )
} ;

static const float2 k_Hammersley2dSeq32 [ ] = {
float2 ( 0.00000000 , 0.00000000 ) ,
float2 ( 0.03125000 , 0.50000000 ) ,
float2 ( 0.06250000 , 0.25000000 ) ,
float2 ( 0.09375000 , 0.75000000 ) ,
float2 ( 0.12500000 , 0.12500000 ) ,
float2 ( 0.15625000 , 0.62500000 ) ,
float2 ( 0.18750000 , 0.37500000 ) ,
float2 ( 0.21875000 , 0.87500000 ) ,
float2 ( 0.25000000 , 0.06250000 ) ,
float2 ( 0.28125000 , 0.56250000 ) ,
float2 ( 0.31250000 , 0.31250000 ) ,
float2 ( 0.34375000 , 0.81250000 ) ,
float2 ( 0.37500000 , 0.18750000 ) ,
float2 ( 0.40625000 , 0.68750000 ) ,
float2 ( 0.43750000 , 0.43750000 ) ,
float2 ( 0.46875000 , 0.93750000 ) ,
float2 ( 0.50000000 , 0.03125000 ) ,
float2 ( 0.53125000 , 0.53125000 ) ,
float2 ( 0.56250000 , 0.28125000 ) ,
float2 ( 0.59375000 , 0.78125000 ) ,
float2 ( 0.62500000 , 0.15625000 ) ,
float2 ( 0.65625000 , 0.65625000 ) ,
float2 ( 0.68750000 , 0.40625000 ) ,
float2 ( 0.71875000 , 0.90625000 ) ,
float2 ( 0.75000000 , 0.09375000 ) ,
float2 ( 0.78125000 , 0.59375000 ) ,
float2 ( 0.81250000 , 0.34375000 ) ,
float2 ( 0.84375000 , 0.84375000 ) ,
float2 ( 0.87500000 , 0.21875000 ) ,
float2 ( 0.90625000 , 0.71875000 ) ,
float2 ( 0.93750000 , 0.46875000 ) ,
float2 ( 0.96875000 , 0.96875000 )
} ;

static const float2 k_Hammersley2dSeq64 [ ] = {
float2 ( 0.00000000 , 0.00000000 ) ,
float2 ( 0.01562500 , 0.50000000 ) ,
float2 ( 0.03125000 , 0.25000000 ) ,
float2 ( 0.04687500 , 0.75000000 ) ,
float2 ( 0.06250000 , 0.12500000 ) ,
float2 ( 0.07812500 , 0.62500000 ) ,
float2 ( 0.09375000 , 0.37500000 ) ,
float2 ( 0.10937500 , 0.87500000 ) ,
float2 ( 0.12500000 , 0.06250000 ) ,
float2 ( 0.14062500 , 0.56250000 ) ,
float2 ( 0.15625000 , 0.31250000 ) ,
float2 ( 0.17187500 , 0.81250000 ) ,
float2 ( 0.18750000 , 0.18750000 ) ,
float2 ( 0.20312500 , 0.68750000 ) ,
float2 ( 0.21875000 , 0.43750000 ) ,
float2 ( 0.23437500 , 0.93750000 ) ,
float2 ( 0.25000000 , 0.03125000 ) ,
float2 ( 0.26562500 , 0.53125000 ) ,
float2 ( 0.28125000 , 0.28125000 ) ,
float2 ( 0.29687500 , 0.78125000 ) ,
float2 ( 0.31250000 , 0.15625000 ) ,
float2 ( 0.32812500 , 0.65625000 ) ,
float2 ( 0.34375000 , 0.40625000 ) ,
float2 ( 0.35937500 , 0.90625000 ) ,
float2 ( 0.37500000 , 0.09375000 ) ,
float2 ( 0.39062500 , 0.59375000 ) ,
float2 ( 0.40625000 , 0.34375000 ) ,
float2 ( 0.42187500 , 0.84375000 ) ,
float2 ( 0.43750000 , 0.21875000 ) ,
float2 ( 0.45312500 , 0.71875000 ) ,
float2 ( 0.46875000 , 0.46875000 ) ,
float2 ( 0.48437500 , 0.96875000 ) ,
float2 ( 0.50000000 , 0.01562500 ) ,
float2 ( 0.51562500 , 0.51562500 ) ,
float2 ( 0.53125000 , 0.26562500 ) ,
float2 ( 0.54687500 , 0.76562500 ) ,
float2 ( 0.56250000 , 0.14062500 ) ,
float2 ( 0.57812500 , 0.64062500 ) ,
float2 ( 0.59375000 , 0.39062500 ) ,
float2 ( 0.60937500 , 0.89062500 ) ,
float2 ( 0.62500000 , 0.07812500 ) ,
float2 ( 0.64062500 , 0.57812500 ) ,
float2 ( 0.65625000 , 0.32812500 ) ,
float2 ( 0.67187500 , 0.82812500 ) ,
float2 ( 0.68750000 , 0.20312500 ) ,
float2 ( 0.70312500 , 0.70312500 ) ,
float2 ( 0.71875000 , 0.45312500 ) ,
float2 ( 0.73437500 , 0.95312500 ) ,
float2 ( 0.75000000 , 0.04687500 ) ,
float2 ( 0.76562500 , 0.54687500 ) ,
float2 ( 0.78125000 , 0.29687500 ) ,
float2 ( 0.79687500 , 0.79687500 ) ,
float2 ( 0.81250000 , 0.17187500 ) ,
float2 ( 0.82812500 , 0.67187500 ) ,
float2 ( 0.84375000 , 0.42187500 ) ,
float2 ( 0.85937500 , 0.92187500 ) ,
float2 ( 0.87500000 , 0.10937500 ) ,
float2 ( 0.89062500 , 0.60937500 ) ,
float2 ( 0.90625000 , 0.35937500 ) ,
float2 ( 0.92187500 , 0.85937500 ) ,
float2 ( 0.93750000 , 0.23437500 ) ,
float2 ( 0.95312500 , 0.73437500 ) ,
float2 ( 0.96875000 , 0.48437500 ) ,
float2 ( 0.98437500 , 0.98437500 )
} ;

static const float2 k_Hammersley2dSeq256 [ ] = {
float2 ( 0.00000000 , 0.00000000 ) ,
float2 ( 0.00390625 , 0.50000000 ) ,
float2 ( 0.00781250 , 0.25000000 ) ,
float2 ( 0.01171875 , 0.75000000 ) ,
float2 ( 0.01562500 , 0.12500000 ) ,
float2 ( 0.01953125 , 0.62500000 ) ,
float2 ( 0.02343750 , 0.37500000 ) ,
float2 ( 0.02734375 , 0.87500000 ) ,
float2 ( 0.03125000 , 0.06250000 ) ,
float2 ( 0.03515625 , 0.56250000 ) ,
float2 ( 0.03906250 , 0.31250000 ) ,
float2 ( 0.04296875 , 0.81250000 ) ,
float2 ( 0.04687500 , 0.18750000 ) ,
float2 ( 0.05078125 , 0.68750000 ) ,
float2 ( 0.05468750 , 0.43750000 ) ,
float2 ( 0.05859375 , 0.93750000 ) ,
float2 ( 0.06250000 , 0.03125000 ) ,
float2 ( 0.06640625 , 0.53125000 ) ,
float2 ( 0.07031250 , 0.28125000 ) ,
float2 ( 0.07421875 , 0.78125000 ) ,
float2 ( 0.07812500 , 0.15625000 ) ,
float2 ( 0.08203125 , 0.65625000 ) ,
float2 ( 0.08593750 , 0.40625000 ) ,
float2 ( 0.08984375 , 0.90625000 ) ,
float2 ( 0.09375000 , 0.09375000 ) ,
float2 ( 0.09765625 , 0.59375000 ) ,
float2 ( 0.10156250 , 0.34375000 ) ,
float2 ( 0.10546875 , 0.84375000 ) ,
float2 ( 0.10937500 , 0.21875000 ) ,
float2 ( 0.11328125 , 0.71875000 ) ,
float2 ( 0.11718750 , 0.46875000 ) ,
float2 ( 0.12109375 , 0.96875000 ) ,
float2 ( 0.12500000 , 0.01562500 ) ,
float2 ( 0.12890625 , 0.51562500 ) ,
float2 ( 0.13281250 , 0.26562500 ) ,
float2 ( 0.13671875 , 0.76562500 ) ,
float2 ( 0.14062500 , 0.14062500 ) ,
float2 ( 0.14453125 , 0.64062500 ) ,
float2 ( 0.14843750 , 0.39062500 ) ,
float2 ( 0.15234375 , 0.89062500 ) ,
float2 ( 0.15625000 , 0.07812500 ) ,
float2 ( 0.16015625 , 0.57812500 ) ,
float2 ( 0.16406250 , 0.32812500 ) ,
float2 ( 0.16796875 , 0.82812500 ) ,
float2 ( 0.17187500 , 0.20312500 ) ,
float2 ( 0.17578125 , 0.70312500 ) ,
float2 ( 0.17968750 , 0.45312500 ) ,
float2 ( 0.18359375 , 0.95312500 ) ,
float2 ( 0.18750000 , 0.04687500 ) ,
float2 ( 0.19140625 , 0.54687500 ) ,
float2 ( 0.19531250 , 0.29687500 ) ,
float2 ( 0.19921875 , 0.79687500 ) ,
float2 ( 0.20312500 , 0.17187500 ) ,
float2 ( 0.20703125 , 0.67187500 ) ,
float2 ( 0.21093750 , 0.42187500 ) ,
float2 ( 0.21484375 , 0.92187500 ) ,
float2 ( 0.21875000 , 0.10937500 ) ,
float2 ( 0.22265625 , 0.60937500 ) ,
float2 ( 0.22656250 , 0.35937500 ) ,
float2 ( 0.23046875 , 0.85937500 ) ,
float2 ( 0.23437500 , 0.23437500 ) ,
float2 ( 0.23828125 , 0.73437500 ) ,
float2 ( 0.24218750 , 0.48437500 ) ,
float2 ( 0.24609375 , 0.98437500 ) ,
float2 ( 0.25000000 , 0.00781250 ) ,
float2 ( 0.25390625 , 0.50781250 ) ,
float2 ( 0.25781250 , 0.25781250 ) ,
float2 ( 0.26171875 , 0.75781250 ) ,
float2 ( 0.26562500 , 0.13281250 ) ,
float2 ( 0.26953125 , 0.63281250 ) ,
float2 ( 0.27343750 , 0.38281250 ) ,
float2 ( 0.27734375 , 0.88281250 ) ,
float2 ( 0.28125000 , 0.07031250 ) ,
float2 ( 0.28515625 , 0.57031250 ) ,
float2 ( 0.28906250 , 0.32031250 ) ,
float2 ( 0.29296875 , 0.82031250 ) ,
float2 ( 0.29687500 , 0.19531250 ) ,
float2 ( 0.30078125 , 0.69531250 ) ,
float2 ( 0.30468750 , 0.44531250 ) ,
float2 ( 0.30859375 , 0.94531250 ) ,
float2 ( 0.31250000 , 0.03906250 ) ,
float2 ( 0.31640625 , 0.53906250 ) ,
float2 ( 0.32031250 , 0.28906250 ) ,
float2 ( 0.32421875 , 0.78906250 ) ,
float2 ( 0.32812500 , 0.16406250 ) ,
float2 ( 0.33203125 , 0.66406250 ) ,
float2 ( 0.33593750 , 0.41406250 ) ,
float2 ( 0.33984375 , 0.91406250 ) ,
float2 ( 0.34375000 , 0.10156250 ) ,
float2 ( 0.34765625 , 0.60156250 ) ,
float2 ( 0.35156250 , 0.35156250 ) ,
float2 ( 0.35546875 , 0.85156250 ) ,
float2 ( 0.35937500 , 0.22656250 ) ,
float2 ( 0.36328125 , 0.72656250 ) ,
float2 ( 0.36718750 , 0.47656250 ) ,
float2 ( 0.37109375 , 0.97656250 ) ,
float2 ( 0.37500000 , 0.02343750 ) ,
float2 ( 0.37890625 , 0.52343750 ) ,
float2 ( 0.38281250 , 0.27343750 ) ,
float2 ( 0.38671875 , 0.77343750 ) ,
float2 ( 0.39062500 , 0.14843750 ) ,
float2 ( 0.39453125 , 0.64843750 ) ,
float2 ( 0.39843750 , 0.39843750 ) ,
float2 ( 0.40234375 , 0.89843750 ) ,
float2 ( 0.40625000 , 0.08593750 ) ,
float2 ( 0.41015625 , 0.58593750 ) ,
float2 ( 0.41406250 , 0.33593750 ) ,
float2 ( 0.41796875 , 0.83593750 ) ,
float2 ( 0.42187500 , 0.21093750 ) ,
float2 ( 0.42578125 , 0.71093750 ) ,
float2 ( 0.42968750 , 0.46093750 ) ,
float2 ( 0.43359375 , 0.96093750 ) ,
float2 ( 0.43750000 , 0.05468750 ) ,
float2 ( 0.44140625 , 0.55468750 ) ,
float2 ( 0.44531250 , 0.30468750 ) ,
float2 ( 0.44921875 , 0.80468750 ) ,
float2 ( 0.45312500 , 0.17968750 ) ,
float2 ( 0.45703125 , 0.67968750 ) ,
float2 ( 0.46093750 , 0.42968750 ) ,
float2 ( 0.46484375 , 0.92968750 ) ,
float2 ( 0.46875000 , 0.11718750 ) ,
float2 ( 0.47265625 , 0.61718750 ) ,
float2 ( 0.47656250 , 0.36718750 ) ,
float2 ( 0.48046875 , 0.86718750 ) ,
float2 ( 0.48437500 , 0.24218750 ) ,
float2 ( 0.48828125 , 0.74218750 ) ,
float2 ( 0.49218750 , 0.49218750 ) ,
float2 ( 0.49609375 , 0.99218750 ) ,
float2 ( 0.50000000 , 0.00390625 ) ,
float2 ( 0.50390625 , 0.50390625 ) ,
float2 ( 0.50781250 , 0.25390625 ) ,
float2 ( 0.51171875 , 0.75390625 ) ,
float2 ( 0.51562500 , 0.12890625 ) ,
float2 ( 0.51953125 , 0.62890625 ) ,
float2 ( 0.52343750 , 0.37890625 ) ,
float2 ( 0.52734375 , 0.87890625 ) ,
float2 ( 0.53125000 , 0.06640625 ) ,
float2 ( 0.53515625 , 0.56640625 ) ,
float2 ( 0.53906250 , 0.31640625 ) ,
float2 ( 0.54296875 , 0.81640625 ) ,
float2 ( 0.54687500 , 0.19140625 ) ,
float2 ( 0.55078125 , 0.69140625 ) ,
float2 ( 0.55468750 , 0.44140625 ) ,
float2 ( 0.55859375 , 0.94140625 ) ,
float2 ( 0.56250000 , 0.03515625 ) ,
float2 ( 0.56640625 , 0.53515625 ) ,
float2 ( 0.57031250 , 0.28515625 ) ,
float2 ( 0.57421875 , 0.78515625 ) ,
float2 ( 0.57812500 , 0.16015625 ) ,
float2 ( 0.58203125 , 0.66015625 ) ,
float2 ( 0.58593750 , 0.41015625 ) ,
float2 ( 0.58984375 , 0.91015625 ) ,
float2 ( 0.59375000 , 0.09765625 ) ,
float2 ( 0.59765625 , 0.59765625 ) ,
float2 ( 0.60156250 , 0.34765625 ) ,
float2 ( 0.60546875 , 0.84765625 ) ,
float2 ( 0.60937500 , 0.22265625 ) ,
float2 ( 0.61328125 , 0.72265625 ) ,
float2 ( 0.61718750 , 0.47265625 ) ,
float2 ( 0.62109375 , 0.97265625 ) ,
float2 ( 0.62500000 , 0.01953125 ) ,
float2 ( 0.62890625 , 0.51953125 ) ,
float2 ( 0.63281250 , 0.26953125 ) ,
float2 ( 0.63671875 , 0.76953125 ) ,
float2 ( 0.64062500 , 0.14453125 ) ,
float2 ( 0.64453125 , 0.64453125 ) ,
float2 ( 0.64843750 , 0.39453125 ) ,
float2 ( 0.65234375 , 0.89453125 ) ,
float2 ( 0.65625000 , 0.08203125 ) ,
float2 ( 0.66015625 , 0.58203125 ) ,
float2 ( 0.66406250 , 0.33203125 ) ,
float2 ( 0.66796875 , 0.83203125 ) ,
float2 ( 0.67187500 , 0.20703125 ) ,
float2 ( 0.67578125 , 0.70703125 ) ,
float2 ( 0.67968750 , 0.45703125 ) ,
float2 ( 0.68359375 , 0.95703125 ) ,
float2 ( 0.68750000 , 0.05078125 ) ,
float2 ( 0.69140625 , 0.55078125 ) ,
float2 ( 0.69531250 , 0.30078125 ) ,
float2 ( 0.69921875 , 0.80078125 ) ,
float2 ( 0.70312500 , 0.17578125 ) ,
float2 ( 0.70703125 , 0.67578125 ) ,
float2 ( 0.71093750 , 0.42578125 ) ,
float2 ( 0.71484375 , 0.92578125 ) ,
float2 ( 0.71875000 , 0.11328125 ) ,
float2 ( 0.72265625 , 0.61328125 ) ,
float2 ( 0.72656250 , 0.36328125 ) ,
float2 ( 0.73046875 , 0.86328125 ) ,
float2 ( 0.73437500 , 0.23828125 ) ,
float2 ( 0.73828125 , 0.73828125 ) ,
float2 ( 0.74218750 , 0.48828125 ) ,
float2 ( 0.74609375 , 0.98828125 ) ,
float2 ( 0.75000000 , 0.01171875 ) ,
float2 ( 0.75390625 , 0.51171875 ) ,
float2 ( 0.75781250 , 0.26171875 ) ,
float2 ( 0.76171875 , 0.76171875 ) ,
float2 ( 0.76562500 , 0.13671875 ) ,
float2 ( 0.76953125 , 0.63671875 ) ,
float2 ( 0.77343750 , 0.38671875 ) ,
float2 ( 0.77734375 , 0.88671875 ) ,
float2 ( 0.78125000 , 0.07421875 ) ,
float2 ( 0.78515625 , 0.57421875 ) ,
float2 ( 0.78906250 , 0.32421875 ) ,
float2 ( 0.79296875 , 0.82421875 ) ,
float2 ( 0.79687500 , 0.19921875 ) ,
float2 ( 0.80078125 , 0.69921875 ) ,
float2 ( 0.80468750 , 0.44921875 ) ,
float2 ( 0.80859375 , 0.94921875 ) ,
float2 ( 0.81250000 , 0.04296875 ) ,
float2 ( 0.81640625 , 0.54296875 ) ,
float2 ( 0.82031250 , 0.29296875 ) ,
float2 ( 0.82421875 , 0.79296875 ) ,
float2 ( 0.82812500 , 0.16796875 ) ,
float2 ( 0.83203125 , 0.66796875 ) ,
float2 ( 0.83593750 , 0.41796875 ) ,
float2 ( 0.83984375 , 0.91796875 ) ,
float2 ( 0.84375000 , 0.10546875 ) ,
float2 ( 0.84765625 , 0.60546875 ) ,
float2 ( 0.85156250 , 0.35546875 ) ,
float2 ( 0.85546875 , 0.85546875 ) ,
float2 ( 0.85937500 , 0.23046875 ) ,
float2 ( 0.86328125 , 0.73046875 ) ,
float2 ( 0.86718750 , 0.48046875 ) ,
float2 ( 0.87109375 , 0.98046875 ) ,
float2 ( 0.87500000 , 0.02734375 ) ,
float2 ( 0.87890625 , 0.52734375 ) ,
float2 ( 0.88281250 , 0.27734375 ) ,
float2 ( 0.88671875 , 0.77734375 ) ,
float2 ( 0.89062500 , 0.15234375 ) ,
float2 ( 0.89453125 , 0.65234375 ) ,
float2 ( 0.89843750 , 0.40234375 ) ,
float2 ( 0.90234375 , 0.90234375 ) ,
float2 ( 0.90625000 , 0.08984375 ) ,
float2 ( 0.91015625 , 0.58984375 ) ,
float2 ( 0.91406250 , 0.33984375 ) ,
float2 ( 0.91796875 , 0.83984375 ) ,
float2 ( 0.92187500 , 0.21484375 ) ,
float2 ( 0.92578125 , 0.71484375 ) ,
float2 ( 0.92968750 , 0.46484375 ) ,
float2 ( 0.93359375 , 0.96484375 ) ,
float2 ( 0.93750000 , 0.05859375 ) ,
float2 ( 0.94140625 , 0.55859375 ) ,
float2 ( 0.94531250 , 0.30859375 ) ,
float2 ( 0.94921875 , 0.80859375 ) ,
float2 ( 0.95312500 , 0.18359375 ) ,
float2 ( 0.95703125 , 0.68359375 ) ,
float2 ( 0.96093750 , 0.43359375 ) ,
float2 ( 0.96484375 , 0.93359375 ) ,
float2 ( 0.96875000 , 0.12109375 ) ,
float2 ( 0.97265625 , 0.62109375 ) ,
float2 ( 0.97656250 , 0.37109375 ) ,
float2 ( 0.98046875 , 0.87109375 ) ,
float2 ( 0.98437500 , 0.24609375 ) ,
float2 ( 0.98828125 , 0.74609375 ) ,
float2 ( 0.99218750 , 0.49609375 ) ,
float2 ( 0.99609375 , 0.99609375 )
} ;
#line 421
float2 Hammersley2d ( uint i , uint sampleCount )
{
switch ( sampleCount )
{
#line 431
case 16 : return k_Hammersley2dSeq16 [ i ] ;
case 32 : return k_Hammersley2dSeq32 [ i ] ;
case 64 : return k_Hammersley2dSeq64 [ i ] ;
case 256 : return k_Hammersley2dSeq256 [ i ] ;

default : return Hammersley2dSeq ( i , sampleCount ) ;
}
}
#line 20 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/ShaderLibrary/Sampling/Sampling.hlsl"
float3 SphericalToCartesian ( float cosPhi , float sinPhi , float cosTheta )
{
float sinTheta = SinFromCos ( cosTheta ) ;

return float3 ( float2 ( cosPhi , sinPhi ) * sinTheta , cosTheta ) ;
}

float3 SphericalToCartesian ( float phi , float cosTheta )
{
float sinPhi , cosPhi ;
sincos ( phi , sinPhi , cosPhi ) ;

return SphericalToCartesian ( cosPhi , sinPhi , cosTheta ) ;
}
#line 38
float3 TransformGLtoDX ( float3 v )
{
return v . xzy ;
}
#line 44
float3 ConvertEquiarealToCubemap ( float u , float v )
{
float phi = 6.28318530717958647693 - 6.28318530717958647693 * u ;
float cosTheta = 1.0 - 2.0 * v ;

return TransformGLtoDX ( SphericalToCartesian ( phi , cosTheta ) ) ;
}
#line 53
float2 CubemapTexelToNVC ( uint2 unPositionTXS , uint cubemapSize )
{
return 2.0 * float2 ( unPositionTXS ) / float ( max ( cubemapSize - 1 , 1 ) ) - 1.0 ;
}
#line 59
static const float3 CUBEMAP_FACE_BASIS_MAPPING [ 6 ] [ 3 ] =
{

{
float3 ( 0.0 , 0.0 , - 1.0 ) ,
float3 ( 0.0 , - 1.0 , 0.0 ) ,
float3 ( 1.0 , 0.0 , 0.0 )
} ,

{
float3 ( 0.0 , 0.0 , 1.0 ) ,
float3 ( 0.0 , - 1.0 , 0.0 ) ,
float3 ( - 1.0 , 0.0 , 0.0 )
} ,

{
float3 ( 1.0 , 0.0 , 0.0 ) ,
float3 ( 0.0 , 0.0 , 1.0 ) ,
float3 ( 0.0 , 1.0 , 0.0 )
} ,

{
float3 ( 1.0 , 0.0 , 0.0 ) ,
float3 ( 0.0 , 0.0 , - 1.0 ) ,
float3 ( 0.0 , - 1.0 , 0.0 )
} ,

{
float3 ( 1.0 , 0.0 , 0.0 ) ,
float3 ( 0.0 , - 1.0 , 0.0 ) ,
float3 ( 0.0 , 0.0 , 1.0 )
} ,

{
float3 ( - 1.0 , 0.0 , 0.0 ) ,
float3 ( 0.0 , - 1.0 , 0.0 ) ,
float3 ( 0.0 , 0.0 , - 1.0 )
}
} ;
#line 100
float3 CubemapTexelToDirection ( float2 positionNVC , uint faceId )
{
float3 dir = CUBEMAP_FACE_BASIS_MAPPING [ faceId ] [ 0 ] * positionNVC . x
+ CUBEMAP_FACE_BASIS_MAPPING [ faceId ] [ 1 ] * positionNVC . y
+ CUBEMAP_FACE_BASIS_MAPPING [ faceId ] [ 2 ] ;

return normalize ( dir ) ;
}
#line 116
float2 SampleDiskUniform ( float u1 , float u2 )
{
float r = sqrt ( u1 ) ;
float phi = 6.28318530717958647693 * u2 ;

float sinPhi , cosPhi ;
sincos ( phi , sinPhi , cosPhi ) ;

return r * float2 ( cosPhi , sinPhi ) ;
}
#line 128
float2 SampleDiskCubic ( float u1 , float u2 )
{
float r = u1 ;
float phi = 6.28318530717958647693 * u2 ;

float sinPhi , cosPhi ;
sincos ( phi , sinPhi , cosPhi ) ;

return r * float2 ( cosPhi , sinPhi ) ;
}

float3 SampleConeUniform ( float u1 , float u2 , float cos_theta )
{
float r0 = cos_theta + u1 * ( 1.0f - cos_theta ) ;
float r = sqrt ( max ( 0.0 , 1.0 - r0 * r0 ) ) ;
float phi = 6.28318530717958647693 * u2 ;
return float3 ( r * cos ( phi ) , r * sin ( phi ) , r0 ) ;
}

float3 SampleSphereUniform ( float u1 , float u2 )
{
float phi = 6.28318530717958647693 * u2 ;
float cosTheta = 1.0 - 2.0 * u1 ;

return SphericalToCartesian ( phi , cosTheta ) ;
}
#line 157
float3 SampleHemisphereCosine ( float u1 , float u2 )
{
float3 localL ;
#line 163
localL . xy = SampleDiskUniform ( u1 , u2 ) ;
#line 166
localL . z = sqrt ( 1.0 - u1 ) ;

return localL ;
}
#line 173
float3 SampleHemisphereCosine ( float u1 , float u2 , float3 normal )
{
#line 178
float3 pointOnSphere = SampleSphereUniform ( u1 , u2 ) ;
return SafeNormalize ( normal + pointOnSphere ) ;
}

float3 SampleHemisphereUniform ( float u1 , float u2 )
{
float phi = 6.28318530717958647693 * u2 ;
float cosTheta = 1.0 - u1 ;

return SphericalToCartesian ( phi , cosTheta ) ;
}

void SampleSphere ( float2 u ,
float4x4 localToWorld ,
float radius ,
out float lightPdf ,
out float3 P ,
out float3 Ns )
{
float u1 = u . x ;
float u2 = u . y ;

Ns = SampleSphereUniform ( u1 , u2 ) ;
#line 203
P = radius * Ns + localToWorld [ 3 ] . xyz ;
#line 206
lightPdf = 1.0 / ( 12.5663706143591729538 * radius * radius ) ;
}

void SampleHemisphere ( float2 u ,
float4x4 localToWorld ,
float radius ,
out float lightPdf ,
out float3 P ,
out float3 Ns )
{
float u1 = u . x ;
float u2 = u . y ;
#line 220
Ns = - SampleHemisphereUniform ( u1 , u2 ) ;
P = radius * Ns ;
#line 224
P = mul ( float4 ( P , 1.0 ) , localToWorld ) . xyz ;
Ns = mul ( Ns , ( float3x3 ) ( localToWorld ) ) ;
#line 228
lightPdf = 1.0 / ( 6.28318530717958647693 * radius * radius ) ;
}
#line 232
void SampleCylinder ( float2 u ,
float4x4 localToWorld ,
float radius ,
float width ,
out float lightPdf ,
out float3 P ,
out float3 Ns )
{
float u1 = u . x ;
float u2 = u . y ;
#line 244
float t = ( u1 - 0.5 ) * width ;
float theta = 2.0 * 3.14159265358979323846 * u2 ;
float cosTheta = cos ( theta ) ;
float sinTheta = sin ( theta ) ;
#line 250
P = float3 ( t , radius * cosTheta , radius * sinTheta ) ;
Ns = normalize ( float3 ( 0.0 , cosTheta , sinTheta ) ) ;
#line 254
P = mul ( float4 ( P , 1.0 ) , localToWorld ) . xyz ;
Ns = mul ( Ns , ( float3x3 ) ( localToWorld ) ) ;
#line 258
lightPdf = 1.0 / ( 6.28318530717958647693 * radius * width ) ;
}

void SampleRectangle ( float2 u ,
float4x4 localToWorld ,
float width ,
float height ,
out float lightPdf ,
out float3 P ,
out float3 Ns )
{

P = float3 ( ( u . x - 0.5 ) * width , ( u . y - 0.5 ) * height , 0 ) ;
Ns = float3 ( 0 , 0 , - 1 ) ;
#line 274
P = mul ( float4 ( P , 1.0 ) , localToWorld ) . xyz ;
Ns = mul ( Ns , ( float3x3 ) ( localToWorld ) ) ;
#line 278
lightPdf = 1.0 / ( width * height ) ;
}

void SampleDisk ( float2 u ,
float4x4 localToWorld ,
float radius ,
out float lightPdf ,
out float3 P ,
out float3 Ns )
{

P = float3 ( radius * SampleDiskUniform ( u . x , u . y ) , 0 ) ;
Ns = float3 ( 0.0 , 0.0 , - 1.0 ) ;
#line 293
P = mul ( float4 ( P , 1.0 ) , localToWorld ) . xyz ;
Ns = mul ( Ns , ( float3x3 ) ( localToWorld ) ) ;
#line 297
lightPdf = 1.0 / ( 3.14159265358979323846 * radius * radius ) ;
}
#line 302
void SampleCone ( float2 u , float cosHalfAngle ,
out float3 dir , out float rcpPdf )
{
float cosTheta = lerp ( 1 , cosHalfAngle , u . x ) ;
float phi = 6.28318530717958647693 * u . y ;

dir = SphericalToCartesian ( phi , cosTheta ) ;
rcpPdf = 6.28318530717958647693 * ( 1 - cosHalfAngle ) ;
}
#line 315
float3 SampleConeStrata ( uint sampleIdx , float rcpSampleCount , float cosHalfApexAngle )
{
float z = 1.0f - ( ( 1.0f - cosHalfApexAngle ) * sampleIdx ) * rcpSampleCount ;
float r = sqrt ( 1.0f - z * z ) ;
float a = sampleIdx * 2.3999632297286f ;
float sphi = sin ( a ) ;
float cphi = cos ( a ) ;
return float3 ( r * cphi , r * sphi , z ) ;
}
#line 6 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.render-pipelines.core@16.0.1/Runtime/PostProcessing/Shaders/LensFlareCommon.hlsl"
struct AttributesLensFlare
{
uint vertexID : SV_VertexID ;
#line 13
} ;

struct VaryingsLensFlare
{
float4 positionCS : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;

float occlusion : TEXCOORD1 ;
#line 26
} ;

Texture2D _FlareTex ;
SamplerState sampler_FlareTex ;

Texture2D _FlareOcclusionRemapTex ;
SamplerState sampler_FlareOcclusionRemapTex ;
#line 50
float4 _FlareColorValue ;
float4 _FlareData0 ;
float4 _FlareData1 ;
float4 _FlareData2 ;
float4 _FlareData3 ;
float4 _FlareData4 ;
#line 64
float4 _FlareOcclusionIndex ;
#line 92
float2 Rotate ( float2 v , float cos0 , float sin0 )
{
return float2 ( v . x * cos0 - v . y * sin0 ,
v . x * sin0 + v . y * cos0 ) ;
}
#line 99
float GetLinearDepthValue ( float2 uv )
{
#line 104
float depth = _CameraDepthTexture . Load ( int3 ( uint2 ( uv * GetScaledScreenParams ( ) . xy ) , 0 ) ) . x ;
#line 107
return LinearEyeDepth ( depth , _ZBufferParams ) ;
}

float GetOcclusion ( float ratio )
{
if ( _FlareData1 . y == 0.0f )
return 1.0f ;

float contrib = 0.0f ;
float sample_Contrib = 1.0f / _FlareData1 . y ;
float2 ratioScale = float2 ( 1.0f / ratio , 1.0 ) ;

for ( uint i = 0 ; i < ( uint ) _FlareData1 . y ; i ++ )
{
float2 dir = _FlareData1 . x * SampleDiskUniform ( Hash ( 2 * i + 0 ) , Hash ( 2 * i + 1 ) ) ;
float2 pos0 = _FlareData2 . xy . xy + dir ;
float2 pos = pos0 * 0.5f + 0.5f ;

pos . y = 1.0f - pos . y ;
#line 128
if ( all ( pos >= 0 ) && all ( pos <= 1 ) )
{
float depth0 = GetLinearDepthValue ( pos ) ;
if ( depth0 > _FlareData1 . z || NearlyEqual_Float ( depth0 , _FlareData1 . z ) )
{
float occlusionValue = 1.0f ;
#line 144
contrib += sample_Contrib * occlusionValue ;
}
}
else if ( _FlareData3 . x > 0.0f )
{
contrib += sample_Contrib ;
}
}

contrib = _FlareOcclusionRemapTex . SampleLevel ( sampler_FlareOcclusionRemapTex , float2 ( saturate ( contrib ) , 0.0f ) , 0 ) . x ;
contrib = saturate ( contrib ) ;

return contrib ;
}
#line 161
VaryingsLensFlare vertOcclusion ( AttributesLensFlare input , uint instanceID : SV_InstanceID )
{
VaryingsLensFlare output ;

;
;
#line 171
float2 screenParam = GetScaledScreenParams ( ) . xy ;
float screenRatio = screenParam . y / screenParam . x ;
#line 175
float2 quadPos = 2.0f * GetQuadVertexPosition ( input . vertexID ) . xy - 1.0f ;
float2 uv = GetQuadTexCoord ( input . vertexID ) ;
uv . x = 1.0f - uv . x ;
output . positionCS . xy = quadPos ;

output . texcoord . xy = uv ;

output . positionCS . z = 1.0f ;
output . positionCS . w = 1.0f ;

float occlusion = GetOcclusion ( screenRatio ) ;

if ( _FlareData3 . x < 0.0f &&
( any ( _FlareData2 . xy . xy < - 1 ) || any ( _FlareData2 . xy . xy >= 1 ) ) )
occlusion = 0.0f ;

output . occlusion = occlusion ;

return output ;
}

float4 fragOcclusion ( VaryingsLensFlare input ) : SV_Target
{
;

return float4 ( input . occlusion . xxx , 1.0f ) ;
}
#line 266
float InverseGradient ( float x )
{

return x * ( 1.0f - x ) / ( x + 1e-6f ) ;
}

float4 ComputeCircle ( float2 uv )
{
float2 v = ( uv - 0.5f ) * 2.0f ;

const float epsilon = 1e-3f ;
const float epsCoef = pow ( epsilon , 1.0f / _FlareData3 . z ) ;

float x = length ( v ) ;

float sdf = saturate ( ( x - 1.0f ) / ( ( _FlareData3 . y - 1.0f ) ) ) ;
#line 288
return pow ( sdf , _FlareData3 . z ) ;
}
#line 293
float4 ComputePolygon ( float2 uv_ )
{
float2 p = uv_ * 2.0f - 1.0f ;

float r = _FlareData4 . y ;
float an = _FlareData4 . z ;
float he = _FlareData4 . w ;

float bn = an * floor ( ( atan2 ( p . y , p . x ) + 0.5f * an ) / an ) ;
float cos0 = cos ( bn ) ;
float sin0 = sin ( bn ) ;
p = float2 ( cos0 * p . x + sin0 * p . y ,
- sin0 * p . x + cos0 * p . y ) ;
#line 308
float sdf = length ( p - float2 ( r , clamp ( p . y , - he , he ) ) ) * sign ( p . x - r ) - _FlareData4 . x ;

sdf *= _FlareData3 . y ;
#line 316
sdf = saturate ( - sdf ) ;
#line 319
return saturate ( pow ( sdf , _FlareData3 . z ) ) ;
}

float4 GetFlareShape ( float2 uv )
{
#line 329
return _FlareTex . SampleBias ( sampler_FlareTex , uv , _GlobalMipBias . x ) ;

}

float4 frag ( VaryingsLensFlare input ) : SV_Target
{

;
#line 339
float4 col = GetFlareShape ( input . texcoord ) ;
#line 344
return col * _FlareColorValue ;

}
