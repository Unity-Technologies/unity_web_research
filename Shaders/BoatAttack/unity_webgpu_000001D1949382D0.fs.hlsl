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
#line 681
uint FastLog2 ( uint x )
{
return firstbithigh ( x ) ;
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
#line 70 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/ACES.hlsl"
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
#line 162
half3 unity_to_ACES ( half3 x )
{
x = mul ( sRGB_2_AP0 , x ) ;
return x ;
}
#line 174
half3 ACES_to_unity ( half3 x )
{
x = mul ( AP0_2_sRGB , x ) ;
return x ;
}
#line 186
half3 unity_to_ACEScg ( half3 x )
{
x = mul ( sRGB_2_AP1 , x ) ;
return x ;
}
#line 198
half3 ACEScg_to_unity ( half3 x )
{
x = mul ( AP1_2_sRGB , x ) ;
return x ;
}

half3 ACEScg_to_Rec2020 ( half3 x )
{
half3 xyz = mul ( AP1_2_XYZ_MAT , x ) ;
return mul ( XYZ_2_REC2020_MAT , xyz ) ;
}
#line 218
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
#line 233
return ( x < 0.00003051757 ) ? ( log2 ( 0.00001525878 + x * 0.5 ) + 9.72 ) / 17.52 : ( log2 ( x ) + 9.72 ) / 17.52 ;
#line 242
}
#line 252
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
#line 280
float3 ACES_to_ACEScg ( float3 x )
{
return mul ( AP0_2_AP1_MAT , x ) ;
}
#line 293
float3 ACEScg_to_ACES ( float3 x )
{
return mul ( AP1_2_AP0_MAT , x ) ;
}
#line 304
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
#line 329
half r = rgb . x ;
half g = rgb . y ;
half b = rgb . z ;
half k = b * ( b - g ) + g * ( g - r ) + r * ( r - b ) ;
k = max ( k , 0.0h ) ;
#line 337
half chroma = sqrt ( k ) ;

return ( b + g + r + ycRadiusWeight * chroma ) / 3.0 ;
}

half rgb_2_hue ( half3 rgb )
{
#line 346
half hue ;
if ( rgb . x == rgb . y && rgb . y == rgb . z )
hue = 0.0 ;
else
hue = ( 180.0 / 3.14159265358979323846 ) * atan2 ( sqrt ( 3.0 ) * ( rgb . y - rgb . z ) , 2.0 * rgb . x - rgb . y - rgb . z ) ;

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
#line 369
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
#line 451
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
#line 472
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

struct SegmentedSplineParams_c9
{
float coefsLow [ 10 ] ;
float coefsHigh [ 10 ] ;
half2 minPoint ;
half2 midPoint ;
half2 maxPoint ;
float slopeLow ;
float slopeHigh ;
} ;

half segmented_spline_c9_fwd ( half x , SegmentedSplineParams_c9 params )
{
const int N_KNOTS_LOW = 8 ;
const int N_KNOTS_HIGH = 8 ;
#line 528
half xCheck = x ;
if ( xCheck <= 0.0 ) xCheck = 1e-4 ;

half logx = log10 ( xCheck ) ;
half logy ;

if ( logx <= log10 ( params . minPoint . x ) )
{
logy = logx * params . slopeLow + ( log10 ( params . minPoint . y ) - params . slopeLow * log10 ( params . minPoint . x ) ) ;
}
else if ( ( logx > log10 ( params . minPoint . x ) ) && ( logx < log10 ( params . midPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_LOW - 1 ) * ( logx - log10 ( params . minPoint . x ) ) / ( log10 ( params . midPoint . x ) - log10 ( params . minPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( params . coefsLow [ j ] , params . coefsLow [ j + 1 ] , params . coefsLow [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else if ( ( logx >= log10 ( params . midPoint . x ) ) && ( logx < log10 ( params . maxPoint . x ) ) )
{
half knot_coord = ( N_KNOTS_HIGH - 1 ) * ( logx - log10 ( params . midPoint . x ) ) / ( log10 ( params . maxPoint . x ) - log10 ( params . midPoint . x ) ) ;
int j = knot_coord ;
half t = knot_coord - j ;

half3 cf = half3 ( params . coefsHigh [ j ] , params . coefsHigh [ j + 1 ] , params . coefsHigh [ j + 2 ] ) ;
half3 monomials = half3 ( t * t , t , 1.0 ) ;
logy = dot ( monomials , mul ( M , cf ) ) ;
}
else
{
logy = logx * params . slopeHigh + ( log10 ( params . maxPoint . y ) - params . slopeHigh * log10 ( params . maxPoint . x ) ) ;
}

return pow ( 10.0 , logy ) ;
}
#line 568
SegmentedSplineParams_c9 GetSplineParams_ODT48Nits ( )
{
const SegmentedSplineParams_c9 ODT_48nits =
{

{ - 1.6989700043 , - 1.6989700043 , - 1.4779000000 , - 1.2291000000 , - 0.8648000000 , - 0.4480000000 , 0.0051800000 , 0.4511080334 , 0.9113744414 , 0.9113744414 } ,

{ 0.5154386965 , 0.8470437783 , 1.1358000000 , 1.3802000000 , 1.5197000000 , 1.5985000000 , 1.6467000000 , 1.6746091357 , 1.6878733390 , 1.6878733390 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , - 6.5 ) ) , 0.02 } ,
{ segmented_spline_c5_fwd ( 0.18 ) , 4.8 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , 6.5 ) ) , 48.0 } ,
0.0 ,
0.04
} ;
return ODT_48nits ;
}

SegmentedSplineParams_c9 GetSplineParams_ODT1000Nits ( )
{
const SegmentedSplineParams_c9 ODT_1000nits =
{

{ - 4.9706219331 , - 3.0293780669 , - 2.1262 , - 1.5105 , - 1.0578 , - 0.4668 , 0.11938 , 0.7088134201 , 1.2911865799 , 1.2911865799 } ,

{ 0.8089132070 , 1.1910867930 , 1.5683 , 1.9483 , 2.3083 , 2.6384 , 2.8595 , 2.9872608805 , 3.0127391195 , 3.0127391195 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , - 12. ) ) , 0.0001 } ,
{ segmented_spline_c5_fwd ( 0.18 ) , 10.0 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , 10. ) ) , 1000.0 } ,
3.0 ,
0.06
} ;
return ODT_1000nits ;
}

SegmentedSplineParams_c9 GetSplineParams_ODT2000Nits ( )
{
const SegmentedSplineParams_c9 ODT_2000nits =
{

{ - 4.9706219331 , - 3.0293780669 , - 2.1262 , - 1.5105 , - 1.0578 , - 0.4668 , 0.11938 , 0.7088134201 , 1.2911865799 , 1.2911865799 } ,

{ 0.8019952042 , 1.1980047958 , 1.5943000000 , 1.9973000000 , 2.3783000000 , 2.7684000000 , 3.0515000000 , 3.2746293562 , 3.3274306351 , 3.3274306351 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , - 12. ) ) , 0.0001 } ,
{ segmented_spline_c5_fwd ( 0.18 ) , 10.0 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , 11. ) ) , 2000.0 } ,
3.0 ,
0.12
} ;
return ODT_2000nits ;
}

SegmentedSplineParams_c9 GetSplineParams_ODT4000Nits ( )
{
const SegmentedSplineParams_c9 ODT_4000nits =
{

{ - 4.9706219331 , - 3.0293780669 , - 2.1262 , - 1.5105 , - 1.0578 , - 0.4668 , 0.11938 , 0.7088134201 , 1.2911865799 , 1.2911865799 } ,

{ 0.7973186613 , 1.2026813387 , 1.6093000000 , 2.0108000000 , 2.4148000000 , 2.8179000000 , 3.1725000000 , 3.5344995451 , 3.6696204376 , 3.6696204376 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , - 12. ) ) , 0.0001 } ,
{ segmented_spline_c5_fwd ( 0.18 ) , 10.0 } ,
{ segmented_spline_c5_fwd ( 0.18 * pow ( 2. , 12. ) ) , 4000.0 } ,
3.0 ,
0.3
} ;
return ODT_4000nits ;
}
#line 637
half segmented_spline_c9_fwd ( half x )
{
return segmented_spline_c9_fwd ( x , GetSplineParams_ODT48Nits ( ) ) ;
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
#line 662
half hue = rgb_2_hue ( aces ) ;
half centeredHue = center_hue ( hue , RRT_RED_HUE ) ;
half hueWeight ;
{

hueWeight = smoothstep ( 0.0 , 1.0 , 1.0 - abs ( 2.0 * centeredHue / RRT_RED_WIDTH ) ) ;
hueWeight *= hueWeight ;
}

aces . r += hueWeight * saturation * ( RRT_RED_PIVOT - aces . r ) * ( 1.0 - RRT_RED_SCALE ) ;
#line 674
aces = clamp ( aces , 0.0 , 65504.0 ) ;
half3 rgbPre = mul ( AP0_2_AP1_MAT , aces ) ;
rgbPre = clamp ( rgbPre , 0 , 65504.0 ) ;
#line 680
rgbPre = lerp ( dot ( rgbPre , AP1_RGB2Y ) . xxx , rgbPre , RRT_SAT_FACTOR . xxx ) ;
#line 683
half3 rgbPost ;
rgbPost . x = segmented_spline_c5_fwd ( rgbPre . x ) ;
rgbPost . y = segmented_spline_c5_fwd ( rgbPre . y ) ;
rgbPost . z = segmented_spline_c5_fwd ( rgbPre . z ) ;
#line 689
half3 outputVal = mul ( AP1_2_AP0_MAT , rgbPost ) ;

return outputVal ;
}
#line 697
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

float3 darkSurround_to_dimSurround ( float3 linearCV )
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
#line 747
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
#line 787
return pow ( max ( x , 0.0 ) , 1.0 / 2.4 ) ;
#line 791
half invgamma = 1.0 / gamma ;
half p_Lw = pow ( Lw , invgamma ) ;
half p_Lb = pow ( Lb , invgamma ) ;
half3 a = pow ( p_Lw - p_Lb , gamma ) . xxx ;
half3 b = ( p_Lb / p_Lw - p_Lb ) . xxx ;
half3 V = pow ( max ( x / a , 0.0 ) , invgamma . xxx ) - b ;
return V ;
}

static const half CINEMA_WHITE = 48.0f ;
static const half CINEMA_BLACK = CINEMA_WHITE / 2400.0 ;
static const half ODT_SAT_FACTOR = 0.93 ;
#line 848
half3 ODT_RGBmonitor_100nits_dim ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 853
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 856
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 862
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 865
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 869
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 873
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 876
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 879
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 883
linearCV = saturate ( linearCV ) ;
#line 901
return linearCV ;
}
#line 948
half3 ODT_RGBmonitor_D60sim_100nits_dim ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 953
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 956
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 962
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 979
const half SCALE = 0.955 ;
linearCV = min ( linearCV , 1.0 ) * SCALE ;
#line 983
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 987
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 991
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 994
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 998
linearCV = saturate ( linearCV ) ;
#line 1016
return linearCV ;
}
#line 1060
half3 ODT_Rec709_100nits_dim ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 1065
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1068
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 1074
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1077
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 1081
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1085
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1088
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 1091
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 1095
linearCV = saturate ( linearCV ) ;
#line 1098
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1110
return outputCV ;
}
#line 1154
half3 ODT_Rec709_D60sim_100nits_dim ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 1159
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1162
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 1168
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1186
const half SCALE = 0.955 ;
linearCV = min ( linearCV , 1.0 ) * SCALE ;
#line 1190
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 1194
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1198
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1201
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;
#line 1205
linearCV = saturate ( linearCV ) ;
#line 1208
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1220
return outputCV ;
}
#line 1266
half3 ODT_Rec2020_100nits_dim ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 1271
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1274
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 1280
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1283
linearCV = darkSurround_to_dimSurround ( linearCV ) ;
#line 1287
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1291
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1294
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 1297
linearCV = mul ( XYZ_2_REC2020_MAT , XYZ ) ;
#line 1301
linearCV = saturate ( linearCV ) ;
#line 1304
const half DISPGAMMA = 2.4 ;
const half L_W = 1.0 ;
const half L_B = 0.0 ;
half3 outputCV = linear_to_bt1886 ( linearCV , DISPGAMMA , L_W , L_B ) ;
#line 1316
return outputCV ;
}
#line 1350
half3 ODT_P3DCI_48nits ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_48nits = GetSplineParams_ODT48Nits ( ) ;
#line 1355
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1358
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_48nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_48nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_48nits ) ;
#line 1364
half3 linearCV = Y_2_linCV ( rgbPost , CINEMA_WHITE , CINEMA_BLACK ) ;
#line 1387
const half NEW_WHT = 0.918 ;
const half ROLL_WIDTH = 0.5 ;
linearCV . x = roll_white_fwd ( linearCV . x , NEW_WHT , ROLL_WIDTH ) ;
linearCV . y = roll_white_fwd ( linearCV . y , NEW_WHT , ROLL_WIDTH ) ;
linearCV . z = roll_white_fwd ( linearCV . z , NEW_WHT , ROLL_WIDTH ) ;
#line 1394
const half SCALE = 0.96 ;
linearCV = min ( linearCV , NEW_WHT ) * SCALE ;
#line 1399
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1402
linearCV = mul ( XYZ_2_DCIP3_MAT , XYZ ) ;
#line 1406
linearCV = saturate ( linearCV ) ;
#line 1409
const half DISPGAMMA = 2.6 ;
half3 outputCV = pow ( linearCV , 1.0 / DISPGAMMA ) ;
#line 1417
return outputCV ;
}
#line 1422
half3 ODT_Rec2020_1000nits_ToLinear ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_1000nits = GetSplineParams_ODT1000Nits ( ) ;
#line 1427
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1430
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_1000nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_1000nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_1000nits ) ;
#line 1436
half3 linearCV = Y_2_linCV ( rgbPost , ODT_1000nits . maxPoint . y , ODT_1000nits . minPoint . y ) ;
#line 1440
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 1444
half3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 1447
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 1450
linearCV = mul ( XYZ_2_REC2020_MAT , XYZ ) ;
#line 1453
linearCV = max ( linearCV , 0. ) ;

return linearCV ;
}

half3 ODT_1000nits_ToAP1 ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_1000nits = GetSplineParams_ODT1000Nits ( ) ;
#line 1463
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1466
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_1000nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_1000nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_1000nits ) ;

return rgbPost ;
}

half3 ODT_2000nits_ToAP1 ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_2000nits = GetSplineParams_ODT2000Nits ( ) ;
#line 1479
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1482
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_2000nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_2000nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_2000nits ) ;

return rgbPost ;
}

half3 ODT_4000nits_ToAP1 ( half3 oces )
{
const SegmentedSplineParams_c9 ODT_4000nits = GetSplineParams_ODT4000Nits ( ) ;
#line 1495
half3 rgbPre = mul ( AP0_2_AP1_MAT , oces ) ;
#line 1498
half3 rgbPost ;
rgbPost . x = segmented_spline_c9_fwd ( rgbPre . x , ODT_4000nits ) ;
rgbPost . y = segmented_spline_c9_fwd ( rgbPre . y , ODT_4000nits ) ;
rgbPost . z = segmented_spline_c9_fwd ( rgbPre . z , ODT_4000nits ) ;

return rgbPost ;
}
#line 15 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/Color.hlsl"
float Gamma20ToLinear ( float c )
{
return c * c ;
}

float3 Gamma20ToLinear ( float3 c )
{
return c . rgb * c . rgb ;
}

float4 Gamma20ToLinear ( float4 c )
{
return float4 ( Gamma20ToLinear ( c . rgb ) , c . a ) ;
}

float LinearToGamma20 ( float c )
{
return sqrt ( c ) ;
}

float3 LinearToGamma20 ( float3 c )
{
return sqrt ( c . rgb ) ;
}

float4 LinearToGamma20 ( float4 c )
{
return float4 ( LinearToGamma20 ( c . rgb ) , c . a ) ;
}
#line 46
float Gamma22ToLinear ( float c )
{
return PositivePow ( c , 2.2 ) ;
}

float3 Gamma22ToLinear ( float3 c )
{
return PositivePow ( c . rgb , float3 ( 2.2 , 2.2 , 2.2 ) ) ;
}

float4 Gamma22ToLinear ( float4 c )
{
return float4 ( Gamma22ToLinear ( c . rgb ) , c . a ) ;
}

float LinearToGamma22 ( float c )
{
return PositivePow ( c , 0.454545454545455 ) ;
}

float3 LinearToGamma22 ( float3 c )
{
return PositivePow ( c . rgb , float3 ( 0.454545454545455 , 0.454545454545455 , 0.454545454545455 ) ) ;
}

float4 LinearToGamma22 ( float4 c )
{
return float4 ( LinearToGamma22 ( c . rgb ) , c . a ) ;
}
#line 77
float SRGBToLinear ( float c )
{
#line 82
float linearRGBLo = c / 12.92 ;
float linearRGBHi = PositivePow ( ( c + 0.055 ) / 1.055 , 2.4 ) ;
float linearRGB = ( c <= 0.04045 ) ? linearRGBLo : linearRGBHi ;
return linearRGB ;
}

float2 SRGBToLinear ( float2 c )
{
#line 93
float2 linearRGBLo = c / 12.92 ;
float2 linearRGBHi = PositivePow ( ( c + 0.055 ) / 1.055 , float2 ( 2.4 , 2.4 ) ) ;
float2 linearRGB = ( c <= 0.04045 ) ? linearRGBLo : linearRGBHi ;
return linearRGB ;
}

float3 SRGBToLinear ( float3 c )
{
#line 104
float3 linearRGBLo = c / 12.92 ;
float3 linearRGBHi = PositivePow ( ( c + 0.055 ) / 1.055 , float3 ( 2.4 , 2.4 , 2.4 ) ) ;
float3 linearRGB = ( c <= 0.04045 ) ? linearRGBLo : linearRGBHi ;
return linearRGB ;
}

float4 SRGBToLinear ( float4 c )
{
return float4 ( SRGBToLinear ( c . rgb ) , c . a ) ;
}

float LinearToSRGB ( float c )
{
float sRGBLo = c * 12.92 ;
float sRGBHi = ( PositivePow ( c , 1.0 / 2.4 ) * 1.055 ) - 0.055 ;
float sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;
}

float2 LinearToSRGB ( float2 c )
{
float2 sRGBLo = c * 12.92 ;
float2 sRGBHi = ( PositivePow ( c , float2 ( 1.0 / 2.4 , 1.0 / 2.4 ) ) * 1.055 ) - 0.055 ;
float2 sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;
}

float3 LinearToSRGB ( float3 c )
{
float3 sRGBLo = c * 12.92 ;
float3 sRGBHi = ( PositivePow ( c , float3 ( 1.0 / 2.4 , 1.0 / 2.4 , 1.0 / 2.4 ) ) * 1.055 ) - 0.055 ;
float3 sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;
}

float4 LinearToSRGB ( float4 c )
{
return float4 ( LinearToSRGB ( c . rgb ) , c . a ) ;
}
#line 146
float FastSRGBToLinear ( float c )
{
return c * ( c * ( c * 0.305306011 + 0.682171111 ) + 0.012522878 ) ;
}

float2 FastSRGBToLinear ( float2 c )
{
return c * ( c * ( c * 0.305306011 + 0.682171111 ) + 0.012522878 ) ;
}

float3 FastSRGBToLinear ( float3 c )
{
return c * ( c * ( c * 0.305306011 + 0.682171111 ) + 0.012522878 ) ;
}

float4 FastSRGBToLinear ( float4 c )
{
return float4 ( FastSRGBToLinear ( c . rgb ) , c . a ) ;
}

float FastLinearToSRGB ( float c )
{
return saturate ( 1.055 * PositivePow ( c , 0.416666667 ) - 0.055 ) ;
}

float2 FastLinearToSRGB ( float2 c )
{
return saturate ( 1.055 * PositivePow ( c , 0.416666667 ) - 0.055 ) ;
}

float3 FastLinearToSRGB ( float3 c )
{
return saturate ( 1.055 * PositivePow ( c , 0.416666667 ) - 0.055 ) ;
}

float4 FastLinearToSRGB ( float4 c )
{
return float4 ( FastLinearToSRGB ( c . rgb ) , c . a ) ;
}
#line 193
float Luminance ( float3 linearRgb )
{
return dot ( linearRgb , float3 ( 0.2126729 , 0.7151522 , 0.0721750 ) ) ;
}
#line 199
float Luminance ( float4 linearRgba )
{
return Luminance ( linearRgba . rgb ) ;
}

float AcesLuminance ( float3 linearRgb )
{
return dot ( linearRgb , AP1_RGB2Y ) ;
}

float AcesLuminance ( float4 linearRgba )
{
return AcesLuminance ( linearRgba . rgb ) ;
}
#line 218
float ScotopicLuminance ( float3 xyzRgb )
{
float X = xyzRgb . x ;
float Y = xyzRgb . y ;
float Z = xyzRgb . z ;
return Y * ( 1.33 * ( 1.0 + ( Y + Z ) / X ) - 1.68 ) ;
}

float ScotopicLuminance ( float4 xyzRgba )
{
return ScotopicLuminance ( xyzRgba . rgb ) ;
}
#line 235
float3 RGBToYCoCg ( float3 rgb )
{
float3 YCoCg ;
YCoCg . x = dot ( rgb , float3 ( 0.25 , 0.5 , 0.25 ) ) ;
YCoCg . y = dot ( rgb , float3 ( 0.5 , 0.0 , - 0.5 ) ) + ( 128.0 / 255.0 ) ;
YCoCg . z = dot ( rgb , float3 ( - 0.25 , 0.5 , - 0.25 ) ) + ( 128.0 / 255.0 ) ;

return YCoCg ;
}

float3 YCoCgToRGB ( float3 YCoCg )
{
float Y = YCoCg . x ;
float Co = YCoCg . y - ( 128.0 / 255.0 ) ;
float Cg = YCoCg . z - ( 128.0 / 255.0 ) ;

float3 rgb ;
rgb . r = Y + Co - Cg ;
rgb . g = Y + Cg ;
rgb . b = Y - Co - Cg ;

return rgb ;
}
#line 261
float YCoCgCheckBoardEdgeFilter ( float centerLum , float2 a0 , float2 a1 , float2 a2 , float2 a3 )
{
float4 lum = float4 ( a0 . x , a1 . x , a2 . x , a3 . x ) ;

float4 w = 1.0 - saturate ( ( abs ( lum . xxxx - centerLum ) - 30.0 / 255.0 ) * 65504.0 ) ;
float W = w . x + w . y + w . z + w . w ;

return ( W == 0.0 ) ? a0 . y : ( w . x * a0 . y + w . y * a1 . y + w . z * a2 . y + w . w * a3 . y ) / W ;
}
#line 273
float3 LinearToLMS ( float3 x )
{
const float3x3 LIN_2_LMS_MAT = {
3.90405e-1 , 5.49941e-1 , 8.92632e-3 ,
7.08416e-2 , 9.63172e-1 , 1.35775e-3 ,
2.31082e-2 , 1.28021e-1 , 9.36245e-1
} ;

return mul ( LIN_2_LMS_MAT , x ) ;
}
#line 285
float3 LMSToLinear ( float3 x )
{
const float3x3 LMS_2_LIN_MAT = {
2.85847e+0 , - 1.62879e+0 , - 2.48910e-2 ,
- 2.10182e-1 , 1.15820e+0 , 3.24281e-4 ,
- 4.18120e-2 , - 1.18169e-1 , 1.06867e+0
} ;

return mul ( LMS_2_LIN_MAT , x ) ;
}
#line 301
float3 RgbToHsv ( float3 c )
{
const float4 K = float4 ( 0.0 , - 1.0 / 3.0 , 2.0 / 3.0 , - 1.0 ) ;
float4 p = lerp ( float4 ( c . bg , K . wz ) , float4 ( c . gb , K . xy ) , step ( c . b , c . g ) ) ;
float4 q = lerp ( float4 ( p . xyw , c . r ) , float4 ( c . r , p . yzx ) , step ( p . x , c . r ) ) ;
float d = q . x - min ( q . w , q . y ) ;
const float e = 1.0e-4 ;
return float3 ( abs ( q . z + ( q . w - q . y ) / ( 6.0 * d + e ) ) , d / ( q . x + e ) , q . x ) ;
}

float3 HsvToRgb ( float3 c )
{
const float4 K = float4 ( 1.0 , 2.0 / 3.0 , 1.0 / 3.0 , 3.0 ) ;
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
#line 328
float3 xyYtoXYZ ( float3 xyY )
{
float x = xyY . x ;
float y = xyY . y ;
float Y = xyY . z ;

float X = ( Y / y ) * x ;
float Z = ( Y / y ) * ( 1.0 - x - y ) ;

return float3 ( X , Y , Z ) ;
}
#line 341
float2 XYZtoxy ( float3 XYZ )
{
return XYZ . xy / ( dot ( XYZ , 1 ) ) ;
}
#line 348
float3 SoftLight ( float3 base , float3 blend )
{
float3 r1 = 2.0 * base * blend + base * base * ( 1.0 - 2.0 * blend ) ;
float3 r2 = sqrt ( base ) * ( 2.0 * blend - 1.0 ) + 2.0 * base * ( 1.0 - blend ) ;
float3 t = step ( 0.5 , blend ) ;
return r2 * t + ( 1.0 - t ) * r1 ;
}
#line 364
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

float LinearToLogC_Precise ( float x )
{
float o ;
if ( x > LogC . cut )
o = LogC . c * log10 ( max ( LogC . a * x + LogC . b , 0.0 ) ) + LogC . d ;
else
o = LogC . e * x + LogC . f ;
return o ;
}
#line 392
float3 LinearToLogC ( float3 x )
{
#line 401
return LogC . c * log10 ( max ( LogC . a * x + LogC . b , 0.0 ) ) + LogC . d ;

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
#line 416
float3 LogCToLinear ( float3 x )
{
#line 425
return ( pow ( 10.0 , ( x - LogC . d ) / LogC . c ) - LogC . b ) / LogC . a ;

}
#line 433
float3 Desaturate ( float3 value , float saturation )
{
#line 437
float mean = Avg3 ( value . r , value . g , value . b ) ;
float3 dev = value - mean ;

return mean + dev * saturation ;
}
#line 445
float FastTonemapPerChannel ( float c )
{
return c * rcp ( c + 1.0 ) ;
}

float2 FastTonemapPerChannel ( float2 c )
{
return c * rcp ( c + 1.0 ) ;
}

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

float FastTonemapPerChannelInvert ( float c )
{
return c * rcp ( 1.0 - c ) ;
}

float2 FastTonemapPerChannelInvert ( float2 c )
{
return c * rcp ( 1.0 - c ) ;
}

float3 FastTonemapInvert ( float3 c )
{
return c * rcp ( 1.0 - Max3 ( c . r , c . g , c . b ) ) ;
}

float4 FastTonemapInvert ( float4 c )
{
return float4 ( FastTonemapInvert ( c . rgb ) , c . a ) ;
}
#line 498
float3 ApplyLut3D ( Texture3D tex , SamplerState samplerTex , float3 uvw , float2 scaleOffset )
{
uvw . xyz = uvw . xyz * scaleOffset . yyy * scaleOffset . xxx + scaleOffset . xxx * 0.5 ;
return tex . SampleLevel ( samplerTex , uvw , 0.0 ) . rgb ;
}
#line 507
float3 ApplyLut2D ( Texture2D tex , SamplerState samplerTex , float3 uvw , float3 scaleOffset )
{

uvw . z *= scaleOffset . z ;
float shift = floor ( uvw . z ) ;
uvw . xy = uvw . xy * scaleOffset . z * scaleOffset . xy + scaleOffset . xy * 0.5 ;
uvw . x += shift * scaleOffset . y ;
uvw . xyz = lerp (
tex . SampleLevel ( samplerTex , uvw . xy , 0.0 ) . rgb ,
tex . SampleLevel ( samplerTex , uvw . xy + float2 ( scaleOffset . y , 0.0 ) , 0.0 ) . rgb ,
uvw . z - shift
) ;
return uvw ;
}
#line 524
float3 GetLutStripValue ( float2 uv , float4 params )
{
uv -= params . yz ;
float3 color ;
color . r = frac ( uv . x * params . x ) ;
color . b = uv . x - color . r / params . x ;
color . g = uv . y ;
return color * params . w ;
}
#line 537
float3 NeutralCurve ( float3 x , float a , float b , float c , float d , float e , float f )
{
return ( ( x * ( a * x + c * b ) + d * e ) / ( x * ( a * x + b ) + d * f ) ) - e / f ;
}
#line 547
float3 NeutralTonemap ( float3 x )
{

const float a = 0.2 ;
const float b = 0.29 ;
const float c = 0.24 ;
const float d = 0.272 ;
const float e = 0.02 ;
const float f = 0.3 ;
const float whiteLevel = 5.3 ;
const float whiteClip = 1.0 ;
#line 563
float3 whiteScale = ( 1.0 ) . xxx / NeutralCurve ( whiteLevel , a , b , c , d , e , f ) ;
x = NeutralCurve ( x * whiteScale , a , b , c , d , e , f ) ;
x *= whiteScale ;
#line 568
x /= whiteClip . xxx ;

return x ;
}
#line 575
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
#line 614
float3 CustomTonemap ( float3 x , float3 curve , float4 toeSegmentA , float2 toeSegmentB , float4 midSegmentA , float2 midSegmentB , float4 shoSegmentA , float2 shoSegmentB )
{
float3 normX = x * curve . x ;
float3 ret ;
ret . x = EvalCustomCurve ( normX . x , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
ret . y = EvalCustomCurve ( normX . y , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
ret . z = EvalCustomCurve ( normX . z , curve , toeSegmentA , toeSegmentB , midSegmentA , midSegmentB , shoSegmentA , shoSegmentB ) ;
return ret ;
}
#line 630
float3 AcesTonemap ( float3 aces )
{
#line 641
float saturation = rgb_2_saturation ( aces ) ;
float ycIn = rgb_2_yc ( aces ) ;
float s = sigmoid_shaper ( ( saturation - 0.4 ) / 0.2 ) ;
float addedGlow = 1.0 + glow_fwd ( ycIn , RRT_GLOW_GAIN * s , RRT_GLOW_MID ) ;
aces *= addedGlow ;
#line 648
float hue = rgb_2_hue ( aces ) ;
float centeredHue = center_hue ( hue , RRT_RED_HUE ) ;
float hueWeight ;
{

hueWeight = smoothstep ( 0.0 , 1.0 , 1.0 - abs ( 2.0 * centeredHue / RRT_RED_WIDTH ) ) ;
hueWeight *= hueWeight ;
}

aces . r += hueWeight * saturation * ( RRT_RED_PIVOT - aces . r ) * ( 1.0 - RRT_RED_SCALE ) ;
#line 660
float3 acescg = max ( 0.0 , ACES_to_ACEScg ( aces ) ) ;
#line 664
acescg = lerp ( dot ( acescg , AP1_RGB2Y ) . xxx , acescg , RRT_SAT_FACTOR . xxx ) ;
#line 668
const float a = 0.0245786f ;
const float b = 0.000090537f ;
const float c = 0.983729f ;
const float d = 0.4329510f ;
const float e = 0.238081f ;
#line 682
float3 rgbPost = ( acescg * ( acescg + a ) - b ) /
( acescg * ( c * acescg + d ) + e ) ;
#line 690
float3 linearCV = darkSurround_to_dimSurround ( rgbPost ) ;
#line 694
linearCV = lerp ( dot ( linearCV , AP1_RGB2Y ) . xxx , linearCV , ODT_SAT_FACTOR . xxx ) ;
#line 698
float3 XYZ = mul ( AP1_2_XYZ_MAT , linearCV ) ;
#line 701
XYZ = mul ( D60_2_D65_CAT , XYZ ) ;
#line 704
linearCV = mul ( XYZ_2_REC709_MAT , XYZ ) ;

return linearCV ;
#line 709
}
#line 712
static const float kRGBMRange = 8.0 ;

half4 EncodeRGBM ( half3 color )
{
color *= 1.0 / kRGBMRange ;
half m = max ( max ( color . x , color . y ) , max ( color . z , 1e-5 ) ) ;
m = ceil ( m * 255 ) / 255 ;
return half4 ( color / m , m ) ;
}

half3 DecodeRGBM ( half4 rgbm )
{
return rgbm . xyz * rgbm . w * kRGBMRange ;
}
#line 4 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/ScreenCoordOverride.hlsl"
float2 ScreenCoordApplyScaleBias ( float2 xy , float4 screenCoordScaleBias )
{
return screenCoordScaleBias . zw + xy * screenCoordScaleBias . xy ;
}

float2 ScreenCoordRemoveScaleBias ( float2 xy , float4 screenCoordScaleBias )
{
return ( xy - screenCoordScaleBias . zw ) / screenCoordScaleBias . xy ;
}
#line 12 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/Packing.hlsl"
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
#line 238
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
#line 274
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
#line 296
float4 UnpackFromR8G8B8A8 ( uint rgba )
{
return float4 ( rgba & 255 , ( rgba >> 8 ) & 255 , ( rgba >> 16 ) & 255 , ( rgba >> 24 ) & 255 ) * ( 1.0 / 255 ) ;
}
#line 337
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
#line 360
float PackInt ( uint i , uint numBits )
{
uint maxInt = ( 1u << numBits ) - 1u ;
return saturate ( i * rcp ( maxInt ) ) ;
}
#line 367
uint UnpackInt ( float f , uint numBits )
{
uint maxInt = ( 1u << numBits ) - 1u ;
return ( uint ) ( f * maxInt + 0.5 ) ;
}
#line 374
float PackByte ( uint i )
{
return PackInt ( i , 8 ) ;
}
#line 380
uint UnpackByte ( float f )
{
return UnpackInt ( f , 8 ) ;
}
#line 386
float PackShort ( uint i )
{
return PackInt ( i , 16 ) ;
}
#line 392
uint UnpackShort ( float f )
{
return UnpackInt ( f , 16 ) ;
}
#line 398
float PackShortLo ( uint i )
{
uint lo = BitFieldExtract ( i , 0u , 8u ) ;
return PackInt ( lo , 8 ) ;
}
#line 405
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
#line 437
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
#line 455
i = int ( ( val / t2 ) + rcp ( precisionMinusOne ) ) ;
#line 458
f = saturate ( ( - t2 * float ( i ) + val ) / t1 ) ;
}
#line 462
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
#line 497
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
#line 527
float2 PackFloatToR8G8 ( float f )
{
uint i = UnpackShort ( f ) ;
return float2 ( PackShortLo ( i ) , PackShortHi ( i ) ) ;
}
#line 534
float UnpackFloatFromR8G8 ( float2 f )
{
uint lo = UnpackByte ( f . x ) ;
uint hi = UnpackByte ( f . y ) ;
uint cb = ( hi << 8 ) + lo ;
return PackShort ( cb ) ;
}
#line 543
uint3 PackFloat2To888UInt ( float2 f )
{
uint2 i = ( uint2 ) ( f * 4095.5 ) ;
uint2 hi = i >> 8 ;
uint2 lo = i & 255 ;

uint3 cb = uint3 ( lo , hi . x | ( hi . y << 4 ) ) ;
return cb ;
}
#line 554
float3 PackFloat2To888 ( float2 f )
{
return PackFloat2To888UInt ( f ) / 255.0 ;
}
#line 560
float2 Unpack888UIntToFloat2 ( uint3 x )
{

uint hi = x . z >> 4 ;
uint lo = x . z & 15 ;
uint2 cb = x . xy | uint2 ( lo << 8 , hi << 8 ) ;

return cb / 4095.0 ;
}
#line 571
float2 Unpack888ToFloat2 ( float3 x )
{
uint3 i = ( uint3 ) ( x * 255.5 ) ;
return Unpack888UIntToFloat2 ( i ) ;
}
#line 580
float PackFloat2To8 ( float2 f )
{
float x_expanded = f . x * 15.0 ;
float y_expanded = f . y * 15.0 ;
float x_y_expanded = x_expanded * 16.0 + y_expanded ;
return x_y_expanded / 255.0 ;
#line 589
}
#line 592
float2 Unpack8ToFloat2 ( float f )
{
float x_y_expanded = 255.0 * f ;
float x_expanded = floor ( x_y_expanded / 16.0 ) ;
float y_expanded = x_y_expanded - 16.0 * x_expanded ;
float x = x_expanded / 15.0 ;
float y = y_expanded / 15.0 ;
return float2 ( x , y ) ;
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
#line 150 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/Core.hlsl"
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
#line 9 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/ShaderVariablesFunctions.deprecated.hlsl"
float4 ComputeScreenPos ( float4 positionCS )
{
float4 o = positionCS * 0.5f ;
o . xy = float2 ( o . x , o . y * _ProjectionParams . x ) + o . w ;
o . zw = positionCS . zw ;
return o ;
}
#line 121 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/Debug/DebuggingCommon.hlsl"
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
#line 7 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/ShaderLibrary/ShaderVariablesFunctions.hlsl"
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
#line 507
uint GetMeshRenderingLayer ( )
{
return asuint ( unity_RenderingLayer . x ) ;
}

float EncodeMeshRenderingLayer ( uint renderingLayer )
{

renderingLayer &= _RenderingLayerMaxInt ;
#line 521
float rcpMaxInt = _RenderingLayerRcpMaxInt ;
return saturate ( renderingLayer * rcpMaxInt ) ;
}

uint DecodeMeshRenderingLayer ( float renderingLayer )
{
#line 531
uint maxInt = _RenderingLayerMaxInt ;
return ( uint ) ( renderingLayer * maxInt + 0.5 ) ;
}
#line 29 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/ShaderLibrary/Debug.hlsl"
static const float4 kDebugColorGradient [ 12 ] = { float4 ( 0.0 / 255.0 , 0.0 / 255.0 , 0.0 / 255.0 , 1.0 ) , float4 ( 166.0 / 255.0 , 70.0 / 255.0 , 242.0 / 255.0 , 1.0 ) , float4 ( 0.0 / 255.0 , 26.0 / 255.0 , 221.0 / 255.0 , 1.0 ) ,
float4 ( 65.0 / 255.0 , 152.0 / 255.0 , 224.0 / 255.0 , 1.0 ) , float4 ( 158.0 / 255.0 , 228.0 / 255.0 , 251.0 / 255.0 , 1.0 ) , float4 ( 56.0 / 255.0 , 243.0 / 255.0 , 176.0 / 255.0 , 1.0 ) , float4 ( 168.0 / 255.0 , 238.0 / 255.0 , 46.0 / 255.0 , 1.0 ) , float4 ( 255.0 / 255.0 , 253.0 / 255.0 , 76.0 / 255.0 , 1.0 ) ,
float4 ( 255.0 / 255.0 , 214.0 / 255.0 , 0.0 / 255.0 , 1.0 ) , float4 ( 253.0 / 255.0 , 152.0 / 255.0 , 0.0 / 255.0 , 1.0 ) , float4 ( 255.0 / 255.0 , 67.0 / 255.0 , 51.0 / 255.0 , 1.0 ) , float4 ( 132.0 / 255.0 , 10.0 / 255.0 , 54.0 / 255.0 , 1.0 ) } ;
#line 38
float3 GetIndexColor ( int index )
{
float3 outColor = float3 ( 1.0 , 0.0 , 0.0 ) ;

if ( index == 0 )
outColor = float3 ( 1.0 , 0.5 , 0.5 ) ;
else if ( index == 1 )
outColor = float3 ( 0.5 , 1.0 , 0.5 ) ;
else if ( index == 2 )
outColor = float3 ( 0.5 , 0.5 , 1.0 ) ;
else if ( index == 3 )
outColor = float3 ( 1.0 , 1.0 , 0.5 ) ;
else if ( index == 4 )
outColor = float3 ( 1.0 , 0.5 , 1.0 ) ;
else if ( index == 5 )
outColor = float3 ( 0.5 , 1.0 , 1.0 ) ;
else if ( index == 6 )
outColor = float3 ( 0.25 , 0.75 , 1.0 ) ;
else if ( index == 7 )
outColor = float3 ( 1.0 , 0.75 , 0.25 ) ;
else if ( index == 8 )
outColor = float3 ( 0.75 , 1.0 , 0.25 ) ;
else if ( index == 9 )
outColor = float3 ( 0.75 , 0.25 , 1.0 ) ;
else if ( index == 10 )
outColor = float3 ( 0.25 , 1.0 , 0.75 ) ;
else if ( index == 11 )
outColor = float3 ( 0.75 , 0.75 , 0.25 ) ;
else if ( index == 12 )
outColor = float3 ( 0.75 , 0.25 , 0.75 ) ;
else if ( index == 13 )
outColor = float3 ( 0.25 , 0.75 , 0.75 ) ;
else if ( index == 14 )
outColor = float3 ( 0.25 , 0.25 , 0.75 ) ;
else if ( index == 15 )
outColor = float3 ( 0.75 , 0.25 , 0.25 ) ;

return outColor ;
}

bool SampleDebugFont ( int2 pixCoord , uint digit )
{
if ( pixCoord . x < 0 || pixCoord . y < 0 || pixCoord . x >= 5 || pixCoord . y >= 9 || digit > 9 )
return false ;
#line 86
uint fontData [ 9 ] [ 2 ] = {
{ ( 0 | ( 0 << 1 ) | ( 1 << 2 ) | ( 0 << 3 ) | ( 0 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 1 << 11 ) | ( 1 << 12 ) | ( 1 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 1 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 1 << 4 ) | ( 0 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 0 << 9 ) | ( 1 << 10 ) | ( 1 << 11 ) | ( 1 << 12 ) | ( 1 << 13 ) | ( 1 << 14 ) | ( 0 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 1 << 21 ) | ( 1 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) } ,
{ ( 0 | ( 1 << 1 ) | ( 0 << 2 ) | ( 1 << 3 ) | ( 0 << 4 ) | ( 0 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 1 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 1 << 14 ) | ( 0 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 0 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 1 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 1 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 1 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 1 << 14 ) | ( 0 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 1 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 0 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 1 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 1 << 14 ) | ( 0 << 15 ) | ( 0 << 16 ) | ( 1 << 17 ) | ( 0 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 1 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 0 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 0 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 1 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 1 << 13 ) | ( 0 << 14 ) | ( 0 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 1 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 1 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 1 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 0 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 1 << 21 ) | ( 1 << 22 ) | ( 1 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 1 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 0 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 0 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 1 << 9 ) | ( 0 << 10 ) | ( 0 << 11 ) | ( 1 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 1 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 0 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 1 << 21 ) | ( 1 << 22 ) | ( 1 << 23 ) | ( 1 << 24 ) ) , ( 0 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 1 << 9 ) | ( 0 << 10 ) | ( 1 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 0 | ( 1 << 1 ) | ( 0 << 2 ) | ( 1 << 3 ) | ( 0 << 4 ) | ( 0 << 5 ) | ( 0 << 6 ) | ( 1 << 7 ) | ( 0 << 8 ) | ( 0 << 9 ) | ( 1 << 10 ) | ( 0 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 1 | ( 0 << 1 ) | ( 0 << 2 ) | ( 0 << 3 ) | ( 1 << 4 ) | ( 1 << 5 ) | ( 0 << 6 ) | ( 0 << 7 ) | ( 0 << 8 ) | ( 1 << 9 ) | ( 0 << 10 ) | ( 1 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 1 << 15 ) | ( 0 << 16 ) | ( 0 << 17 ) | ( 0 << 18 ) | ( 1 << 19 ) | ( 1 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 0 << 23 ) | ( 1 << 24 ) ) } ,
{ ( 0 | ( 0 << 1 ) | ( 1 << 2 ) | ( 0 << 3 ) | ( 0 << 4 ) | ( 1 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 1 << 9 ) | ( 1 << 10 ) | ( 1 << 11 ) | ( 1 << 12 ) | ( 1 << 13 ) | ( 1 << 14 ) | ( 0 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 0 << 21 ) | ( 0 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) , ( 0 | ( 1 << 1 ) | ( 1 << 2 ) | ( 1 << 3 ) | ( 0 << 4 ) | ( 0 << 5 ) | ( 1 << 6 ) | ( 1 << 7 ) | ( 1 << 8 ) | ( 0 << 9 ) | ( 0 << 10 ) | ( 1 << 11 ) | ( 0 << 12 ) | ( 0 << 13 ) | ( 0 << 14 ) | ( 0 << 15 ) | ( 1 << 16 ) | ( 1 << 17 ) | ( 1 << 18 ) | ( 0 << 19 ) | ( 0 << 20 ) | ( 1 << 21 ) | ( 1 << 22 ) | ( 1 << 23 ) | ( 0 << 24 ) ) }
} ;
#line 100
return ( fontData [ 8 - pixCoord . y ] [ digit >= 5 ] >> ( ( digit % 5 ) * 5 + pixCoord . x ) ) & 1 ;
}
#line 113
bool SampleDebugFontNumber2Digits ( int2 pixCoord , uint number )
{
pixCoord . y -= 4 ;
if ( number <= 9 )
{
return SampleDebugFont ( pixCoord - int2 ( 6 , 0 ) , number ) ;
}
else
{
return ( SampleDebugFont ( pixCoord , number / 10 ) | SampleDebugFont ( pixCoord - int2 ( 6 , 0 ) , number % 10 ) ) ;
}
}
#line 136
bool SampleDebugFontNumberAllDigits ( int2 pixCoord , uint number )
{
const int digitCount = ( int ) max ( 1u , uint ( log10 ( number ) ) + 1u ) ;

pixCoord . y -= 4 ;
int2 offset = int2 ( 6 * digitCount , 0 ) ;
uint current = number ;
for ( int i = 0 ; i < digitCount ; ++ i )
{
if ( SampleDebugFont ( pixCoord - offset , current % 10 ) )
return true ;

current /= 10 ;
offset -= int2 ( 6 , 0 ) ;
}
return false ;
}
#line 156
float4 OverlayHeatMap ( uint2 pixCoord , uint2 tileSize , uint n , uint maxN , float opacity )
{
int colorIndex = 1 + ( int ) floor ( 10 * ( log2 ( ( float ) n + 0.1f ) / log2 ( float ( maxN ) ) ) ) ;
colorIndex = clamp ( colorIndex , 0 , 12 - 1 ) ;
float4 col = kDebugColorGradient [ colorIndex ] ;

int2 coord = ( pixCoord & ( tileSize - 1 ) ) - int2 ( tileSize . x / 4 + 1 , tileSize . y / 3 - 3 ) ;

float4 color = float4 ( PositivePow ( col . rgb , 2.2 ) , opacity * col . a ) ;
if ( n >= 0 )
{
if ( SampleDebugFontNumber2Digits ( coord , n ) )
color = float4 ( 0 , 0 , 0 , 1 ) ;
if ( SampleDebugFontNumber2Digits ( coord + 1 , n ) )
color = float4 ( 1 , 1 , 1 , 1 ) ;
}
return color ;
}

float4 GetStreamingMipColor ( uint mipCount , float4 mipInfo )
{
#line 184
uint originalTextureMipCount = uint ( mipInfo . y ) ;
#line 187
if ( originalTextureMipCount == 0 )
return float4 ( 1.0 , 1.0 , 1.0 , 0.0 ) ;

uint desiredMipLevel = uint ( mipInfo . z ) ;
uint mipCountDesired = uint ( originalTextureMipCount ) - uint ( desiredMipLevel ) ;
if ( mipCount == 0 )
{

return float4 ( 1.0 , 0.0 , 1.0 , 1.0 ) ;
}
else if ( mipCount < mipCountDesired )
{

float ratioToDesired = float ( mipCount ) / float ( mipCountDesired ) ;
return float4 ( 1.0 , 0.0 , 0.0 , 1.0 - ratioToDesired ) ;
}
else if ( mipCount >= originalTextureMipCount )
{

return float4 ( 1.0 , 1.0 , 1.0 , 0.0 ) ;
}
else
{

float ratioToOriginal = float ( mipCount ) / float ( originalTextureMipCount ) ;
return float4 ( 0.0 , 1.0 , 0.0 , 1.0 - ratioToOriginal ) ;
}
}

float4 GetSimpleMipCountColor ( uint mipCount )
{

float mipCountColor = float ( mipCount ) / 14.0 ;
float4 color = float4 ( mipCountColor , mipCountColor , mipCountColor , 1.0f ) ;
#line 225
return mipCount == 0 ? float4 ( 1.0 , 0.0 , 1.0 , 1.0 ) : ( mipCount > 14 ? float4 ( 1.0 , 0.0 , 0.0 , 1.0 ) : color ) ;
}

float4 GetMipLevelColor ( float2 uv , float4 texelSize )
{
#line 232
texelSize . zw *= 4.0 ;

float mipLevel = ComputeTextureLOD ( uv , texelSize . wz ) ;
mipLevel = clamp ( mipLevel , 0.0 , 5.0 - 0.0001 ) ;

float4 colors [ 6 ] = {
float4 ( 0.0 , 0.0 , 1.0 , 0.8 ) ,
float4 ( 0.0 , 0.5 , 1.0 , 0.4 ) ,
float4 ( 1.0 , 1.0 , 1.0 , 0.0 ) ,
float4 ( 1.0 , 0.7 , 0.0 , 0.2 ) ,
float4 ( 1.0 , 0.3 , 0.0 , 0.6 ) ,
float4 ( 1.0 , 0.0 , 0.0 , 0.8 )
} ;

int mipLevelInt = floor ( mipLevel ) ;
float t = frac ( mipLevel ) ;
float4 a = colors [ mipLevelInt ] ;
float4 b = colors [ mipLevelInt + 1 ] ;
float4 color = lerp ( a , b , t ) ;

return color ;
}

float3 GetDebugMipColor ( float3 originalColor , float4 texelSize , float2 uv )
{

float4 mipColor = GetMipLevelColor ( uv , texelSize ) ;
return lerp ( originalColor , mipColor . rgb , mipColor . a ) ;
}

float3 GetDebugMipCountColor ( float3 originalColor , uint mipCount )
{
float4 mipColor = GetSimpleMipCountColor ( mipCount ) ;
return lerp ( originalColor , mipColor . rgb , mipColor . a ) ;
}

float3 GetDebugStreamingMipColor ( uint mipCount , float4 mipInfo )
{
return GetStreamingMipColor ( mipCount , mipInfo ) . xyz ;
}

float3 GetDebugStreamingMipColorBlended ( float3 originalColor , uint mipCount , float4 mipInfo )
{
float4 mipColor = GetStreamingMipColor ( mipCount , mipInfo ) ;
return lerp ( originalColor , mipColor . rgb , mipColor . a ) ;
}

float3 GetDebugMipColorIncludingMipReduction ( float3 originalColor , uint mipCount , float4 texelSize , float2 uv , float4 mipInfo )
{
uint originalTextureMipCount = uint ( mipInfo . y ) ;
if ( originalTextureMipCount != 0 )
{
#line 291
uint mipReductionLevel = originalTextureMipCount - mipCount ;
uint mipReductionFactor = 1U << mipReductionLevel ;
if ( mipReductionFactor )
{
float oneOverMipReductionFactor = 1.0 / mipReductionFactor ;

texelSize . zw *= oneOverMipReductionFactor ;
}
}
return GetDebugMipColor ( originalColor , texelSize , uv ) ;
}
#line 308
float3 GetDebugMipReductionColor ( uint mipCount , float4 mipInfo )
{
float3 outColor = float3 ( 1.0 , 0.0 , 1.0 ) ;

uint originalTextureMipCount = uint ( mipInfo . y ) ;
if ( originalTextureMipCount != 0 )
{

uint mipReductionLevel = originalTextureMipCount - mipCount ;

float mipCol = float ( mipReductionLevel ) / 14.0 ;
outColor = float3 ( 0 , mipCol , 0 ) ;
}

return outColor ;
}
#line 326
float3 GetColorCodeFunction ( float value , float4 threshold )
{
const float3 red = { 1.0 , 0.0 , 0.0 } ;
const float3 lightGreen = { 0.5 , 1.0 , 0.5 } ;
const float3 darkGreen = { 0.1 , 1.0 , 0.1 } ;
const float3 yellow = { 1.0 , 1.0 , 0.0 } ;

float3 outColor = red ;
if ( value < threshold [ 0 ] )
{
outColor = red ;
}
else if ( value >= threshold [ 0 ] && value < threshold [ 1 ] )
{
float scale = ( value - threshold [ 0 ] ) / ( threshold [ 1 ] - threshold [ 0 ] ) ;
outColor = lerp ( red , darkGreen , scale ) ;
}
else if ( value >= threshold [ 1 ] && value < threshold [ 2 ] )
{
float scale = ( value - threshold [ 1 ] ) / ( threshold [ 2 ] - threshold [ 1 ] ) ;
outColor = lerp ( darkGreen , lightGreen , scale ) ;
}
else if ( value >= threshold [ 2 ] && value < threshold [ 3 ] )
{
float scale = ( value - threshold [ 2 ] ) / ( threshold [ 2 ] - threshold [ 2 ] ) ;
outColor = lerp ( lightGreen , yellow , scale ) ;
}
else
{
outColor = yellow ;
}

return outColor ;
}
#line 369
float3 GetOverdrawColor ( float overdrawCount , float maxOverdrawCount )
{
if ( overdrawCount < 0.01 )
return float3 ( 0 , 0 , 0 ) ;
#line 375
const float initialHue = 240 ;

const float deltaHue = 20 ;

const float xLight = 0.95 ;

const float minHue = deltaHue - 360 + initialHue ;

const float xCostOne = 1.0 / maxOverdrawCount ;

const float x = saturate ( overdrawCount / maxOverdrawCount ) ;
#line 388
float hue = fmod ( max ( min ( ( x - xCostOne ) * ( deltaHue - 360 ) * ( 1.0 / ( xLight - xCostOne ) ) + initialHue , initialHue ) , minHue ) , 360 ) / 360.0 ;
float saturation = min ( max ( ( - 1.0 / ( 1 - xLight ) ) * ( x - xLight ) , 0 ) , 1 ) ;
return HsvToRgb ( float3 ( hue , saturation , 1.0 ) ) ;
}

uint OverdrawLegendBucketInterval ( uint maxOverdrawCount )
{
if ( maxOverdrawCount <= 10 )
return 1 ;
if ( maxOverdrawCount <= 50 )
return 5 ;
if ( maxOverdrawCount <= 100 )
return 10 ;

const uint digitCount = floor ( log10 ( maxOverdrawCount ) ) ;
const uint digitMultiplier = pow ( 10 , digitCount ) ;
const uint biggestDigit = floor ( maxOverdrawCount / digitMultiplier ) ;
if ( biggestDigit < 5 )
return pow ( 10 , digitCount - 1 ) * 5 ;

return digitMultiplier ;
}
#line 419
void DrawOverdrawLegend ( float2 texCoord , float maxOverdrawCount , float4 screenSize , inout float3 color )
{
#line 423
const float4 bandPosition = float4 ( 20 , 20 , 0 , 0 ) ;

const float4 bandLabelPosition = float4 ( 20 , 50 , 0 , 0 ) ;

const float4 bandSize = float4 ( - bandPosition . x * 2 , 20 , 1 , 0 ) ;

const float4 bandBorderThickness = float4 ( 4 , 4 , 0 , 0 ) ;
#line 432
const float2 bandPositionUV = bandPosition . xy * screenSize . zw + bandPosition . zw ;
const float2 bandLabelPositionUV = bandLabelPosition . xy * screenSize . zw + bandLabelPosition . zw ;
const float2 bandSizeUV = bandSize . xy * screenSize . zw + bandSize . zw ;
const float4 bandBorderPosition = bandPosition - bandBorderThickness ;
const float4 bandBorderSize = bandSize + 2 * bandBorderThickness ;
const float2 bandBorderPositionUV = bandBorderPosition . xy * screenSize . zw + bandBorderPosition . zw ;
const float2 bandBorderSizeUV = bandBorderSize . xy * screenSize . zw + bandBorderSize . zw ;
#line 441
const float2 bandBorderCoord = ( texCoord - bandBorderPositionUV ) / bandBorderSizeUV ;
const float2 bandCoord = ( texCoord - bandPositionUV ) / bandSizeUV ;
#line 445
const float bucket = ceil ( bandCoord . x * maxOverdrawCount ) ;
#line 449
if ( all ( bandBorderCoord >= 0 ) && all ( bandBorderCoord <= 1 ) )
color = float3 ( 0.1 , 0.1 , 0.1 ) ;
#line 453
if ( all ( bandCoord >= 0 ) && all ( bandCoord <= 1 ) )
color = GetOverdrawColor ( bucket , maxOverdrawCount ) ;
#line 457
if ( 0 < bucket && bucket <= maxOverdrawCount )
{
const uint bucketInterval = OverdrawLegendBucketInterval ( maxOverdrawCount ) ;
const uint bucketLabelIndex = ( uint ( bucket ) / bucketInterval ) * bucketInterval ;
const float2 labelStartCoord = float2 (
bandLabelPositionUV . x + ( bucketLabelIndex - 1 ) * ( bandSizeUV . x / maxOverdrawCount ) ,
bandLabelPositionUV . y
) ;

const uint2 pixCoord = uint2 ( ( texCoord - labelStartCoord ) * screenSize . xy ) ;
if ( SampleDebugFontNumberAllDigits ( pixCoord , bucketLabelIndex ) )
color = float3 ( 1 , 1 , 1 ) ;
}
}
#line 8 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/Runtime/Utilities/Blit.hlsl"
Texture2D _BlitTexture ;
TextureCube _BlitCubeTexture ;
SamplerState sampler_PointClamp ;
SamplerState sampler_LinearClamp ;
SamplerState sampler_PointRepeat ;
SamplerState sampler_LinearRepeat ;
uniform float4 _BlitScaleBias ;
uniform float4 _BlitScaleBiasRt ;
uniform float _BlitMipLevel ;
uniform float2 _BlitTextureSize ;
uniform uint _BlitPaddingSize ;
uniform int _BlitTexArraySlice ;
#line 29
struct Attributes
{
uint vertexID : SV_VertexID ;

} ;
#line 36
struct Varyings
{
float4 positionCS : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;

} ;

Varyings Vert ( Attributes input )
{
Varyings output ;
;
;
#line 53
float4 pos = GetFullScreenTriangleVertexPosition ( input . vertexID ) ;
float2 uv = GetFullScreenTriangleTexCoord ( input . vertexID ) ;
#line 57
output . positionCS = pos ;
output . texcoord = uv * _BlitScaleBias . xy + _BlitScaleBias . zw ;
return output ;
}

Varyings VertQuad ( Attributes input )
{
Varyings output ;
;
;
#line 72
float4 pos = GetQuadVertexPosition ( input . vertexID ) ;
float2 uv = GetQuadTexCoord ( input . vertexID ) ;
#line 76
output . positionCS = pos * float4 ( _BlitScaleBiasRt . x , _BlitScaleBiasRt . y , 1 , 1 ) + float4 ( _BlitScaleBiasRt . z , _BlitScaleBiasRt . w , 0 , 0 ) ;
output . positionCS . xy = output . positionCS . xy * float2 ( 2.0f , - 2.0f ) + float2 ( - 1.0f , 1.0f ) ;
output . texcoord = uv * _BlitScaleBias . xy + _BlitScaleBias . zw ;
return output ;
}

Varyings VertQuadPadding ( Attributes input )
{
Varyings output ;
;
;

float2 scalePadding = ( ( _BlitTextureSize + float ( _BlitPaddingSize ) ) / _BlitTextureSize ) ;
float2 offsetPadding = ( float ( _BlitPaddingSize ) / 2.0 ) / ( _BlitTextureSize + _BlitPaddingSize ) ;
#line 95
float4 pos = GetQuadVertexPosition ( input . vertexID ) ;
float2 uv = GetQuadTexCoord ( input . vertexID ) ;
#line 99
output . positionCS = pos * float4 ( _BlitScaleBiasRt . x , _BlitScaleBiasRt . y , 1 , 1 ) + float4 ( _BlitScaleBiasRt . z , _BlitScaleBiasRt . w , 0 , 0 ) ;
output . positionCS . xy = output . positionCS . xy * float2 ( 2.0f , - 2.0f ) + float2 ( - 1.0f , 1.0f ) ;
output . texcoord = uv ;
output . texcoord = ( output . texcoord - offsetPadding ) * scalePadding ;
output . texcoord = output . texcoord * _BlitScaleBias . xy + _BlitScaleBias . zw ;
return output ;
}

float4 FragBlit ( Varyings input , SamplerState s )
{
#line 113
;
return _BlitTexture . SampleLevel ( s , input . texcoord . xy , _BlitMipLevel ) ;
}

float4 FragNearest ( Varyings input ) : SV_Target
{
return FragBlit ( input , sampler_PointClamp ) ;
}

float4 FragBilinear ( Varyings input ) : SV_Target
{
return FragBlit ( input , sampler_LinearClamp ) ;
}

float4 FragBilinearRepeat ( Varyings input ) : SV_Target
{
;
float2 uv = input . texcoord . xy ;
return _BlitTexture . SampleLevel ( sampler_LinearRepeat , uv , _BlitMipLevel ) ;
}

float4 FragNearestRepeat ( Varyings input ) : SV_Target
{
;
float2 uv = input . texcoord . xy ;
return _BlitTexture . SampleLevel ( sampler_PointRepeat , uv , _BlitMipLevel ) ;
}

float4 FragOctahedralBilinearRepeat ( Varyings input ) : SV_Target
{
;
float2 uv = RepeatOctahedralUV ( input . texcoord . x , input . texcoord . y ) ;
return _BlitTexture . SampleLevel ( sampler_LinearRepeat , uv , _BlitMipLevel ) ;
}

float4 FragOctahedralProject ( Varyings input ) : SV_Target
{
;
float2 UV = saturate ( input . texcoord ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * UV - 1.0f ) ;
return float4 ( _BlitCubeTexture . SampleLevel ( sampler_LinearRepeat , dir , _BlitMipLevel ) . rgb , 1 ) ;
}

float4 FragOctahedralProjectNearestRepeat ( Varyings input ) : SV_Target
{
;
float2 uv = RepeatOctahedralUV ( input . texcoord . x , input . texcoord . y ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * uv - 1.0f ) ;
return float4 ( _BlitCubeTexture . SampleLevel ( sampler_PointRepeat , dir , _BlitMipLevel ) . rgb , 1 ) ;
}

float4 FragOctahedralProjectBilinearRepeat ( Varyings input ) : SV_Target
{
;
float2 uv = RepeatOctahedralUV ( input . texcoord . x , input . texcoord . y ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * uv - 1.0f ) ;
return float4 ( _BlitCubeTexture . SampleLevel ( sampler_LinearRepeat , dir , _BlitMipLevel ) . rgb , 1 ) ;
}
#line 174
float4 FragOctahedralProjectLuminance ( Varyings input ) : SV_Target
{
;
float2 UV = saturate ( input . texcoord ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * UV - 1.0f ) ;

return Luminance ( _BlitCubeTexture . SampleLevel ( sampler_LinearRepeat , dir , _BlitMipLevel ) ) . xxxx ;
}

float4 FragOctahedralProjectRedToRGBA ( Varyings input ) : SV_Target
{
;
float2 UV = saturate ( input . texcoord ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * UV - 1.0f ) ;
return _BlitCubeTexture . SampleLevel ( sampler_LinearRepeat , dir , _BlitMipLevel ) . rrrr ;
}

float4 FragOctahedralProjectAlphaToRGBA ( Varyings input ) : SV_Target
{
;
float2 UV = saturate ( input . texcoord ) ;
float3 dir = UnpackNormalOctQuadEncode ( 2.0f * UV - 1.0f ) ;
return _BlitCubeTexture . SampleLevel ( sampler_LinearRepeat , dir , _BlitMipLevel ) . aaaa ;
}

float4 FragBilinearLuminance ( Varyings input ) : SV_Target
{
;
float2 uv = input . texcoord . xy ;

return Luminance ( _BlitTexture . SampleLevel ( sampler_LinearRepeat , uv , _BlitMipLevel ) ) . xxxx ;
}

float4 FragBilinearRedToRGBA ( Varyings input ) : SV_Target
{
;
float2 uv = input . texcoord . xy ;
return _BlitTexture . SampleLevel ( sampler_LinearRepeat , uv , _BlitMipLevel ) . rrrr ;
}

float4 FragBilinearAlphaToRGBA ( Varyings input ) : SV_Target
{
;
float2 uv = input . texcoord . xy ;
return _BlitTexture . SampleLevel ( sampler_LinearRepeat , uv , _BlitMipLevel ) . aaaa ;
}
#line 10 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.universal@15.0.1/Shaders/PostProcessing/Common.hlsl"
half GetLuminance ( half3 colorLinear )
{
#line 15
return Luminance ( colorLinear ) ;

}

float3 GetSRGBToLinear ( float3 c )
{
#line 24
return SRGBToLinear ( c ) ;

}

float4 GetSRGBToLinear ( float4 c )
{
#line 33
return SRGBToLinear ( c ) ;

}

float3 GetLinearToSRGB ( float3 c )
{
#line 42
return LinearToSRGB ( c ) ;

}

float4 GetLinearToSRGB ( float4 c )
{
#line 51
return LinearToSRGB ( c ) ;

}
#line 59
half3 ApplyVignette ( half3 input , float2 uv , float2 center , float intensity , float roundness , float smoothness , half3 color )
{
center = center ;
float2 dist = abs ( uv - center ) * intensity ;
#line 68
dist . x *= roundness ;
float vfactor = pow ( saturate ( 1.0 - dot ( dist , dist ) ) , smoothness ) ;
return input * lerp ( color , ( 1.0 ) . xxx , vfactor ) ;
}

half3 ApplyTonemap ( half3 input )
{
#line 82
return saturate ( input ) ;
}

half3 ApplyColorGrading ( half3 input , float postExposure , Texture2D lutTex , SamplerState lutSampler , float3 lutParams , Texture2D userLutTex , SamplerState userLutSampler , float3 userLutParams , float userLutContrib )
{

input *= postExposure ;
#line 114
{
input = ApplyTonemap ( input ) ;

[ branch ]
if ( userLutContrib > 0.0 )
{
input . rgb = GetLinearToSRGB ( input . rgb ) ;
half3 outLut = ApplyLut2D ( userLutTex , userLutSampler , input , userLutParams ) ;
input = lerp ( input , outLut , userLutContrib ) ;
input . rgb = GetSRGBToLinear ( input . rgb ) ;
}

input = ApplyLut2D ( lutTex , lutSampler , input , lutParams ) ;
}
#line 130
return input ;
}

half3 ApplyGrain ( half3 input , float2 uv , Texture2D GrainTexture , SamplerState GrainSampler , float intensity , float response , float2 scale , float2 offset )
{

half grain = GrainTexture . SampleBias ( GrainSampler , uv * scale + offset , _GlobalMipBias . x ) . w ;
#line 139
grain = ( grain - 0.5 ) * 2.0 ;
#line 142
float lum = 1.0 - sqrt ( Luminance ( input ) ) ;
lum = lerp ( 1.0 , lum , response ) ;

return input + input * grain * intensity * lum ;
}

half3 ApplyDithering ( half3 input , float2 uv , Texture2D BlueNoiseTexture , SamplerState BlueNoiseSampler , float2 scale , float2 offset )
{

float noise = BlueNoiseTexture . SampleBias ( BlueNoiseSampler , uv * scale + offset , _GlobalMipBias . x ) . a * 2.0 - 1.0 ;
noise = FastSign ( noise ) * ( 1.0 - sqrt ( 1.0 - abs ( noise ) ) ) ;
#line 157
input = GetSRGBToLinear ( GetLinearToSRGB ( input ) + noise / 255.0 ) ;
#line 160
return input ;
}
#line 167
half3 FXAAFetch ( float2 coords , float2 offset , Texture2D inputTexture )
{
float2 uv = coords + offset ;
return inputTexture . SampleBias ( sampler_LinearClamp , uv , _GlobalMipBias . x ) . xyz ;
}

half3 FXAALoad ( int2 icoords , int idx , int idy , float4 sourceSize , Texture2D inputTexture )
{
#line 179
return inputTexture . Load ( int3 ( clamp ( icoords + int2 ( idx , idy ) , 0 , sourceSize . xy - 1.0 ) , 0 ) ) . xyz ;

}

half3 ApplyFXAA ( half3 color , float2 positionNDC , int2 positionSS , float4 sourceSize , Texture2D inputTexture )
{

half3 rgbNW = FXAALoad ( positionSS , - 1 , - 1 , sourceSize , inputTexture ) ;
half3 rgbNE = FXAALoad ( positionSS , 1 , - 1 , sourceSize , inputTexture ) ;
half3 rgbSW = FXAALoad ( positionSS , - 1 , 1 , sourceSize , inputTexture ) ;
half3 rgbSE = FXAALoad ( positionSS , 1 , 1 , sourceSize , inputTexture ) ;

rgbNW = saturate ( rgbNW ) ;
rgbNE = saturate ( rgbNE ) ;
rgbSW = saturate ( rgbSW ) ;
rgbSE = saturate ( rgbSE ) ;
color = saturate ( color ) ;

half lumaNW = Luminance ( rgbNW ) ;
half lumaNE = Luminance ( rgbNE ) ;
half lumaSW = Luminance ( rgbSW ) ;
half lumaSE = Luminance ( rgbSE ) ;
half lumaM = Luminance ( color ) ;

float2 dir ;
dir . x = - ( ( lumaNW + lumaNE ) - ( lumaSW + lumaSE ) ) ;
dir . y = ( ( lumaNW + lumaSW ) - ( lumaNE + lumaSE ) ) ;

half lumaSum = lumaNW + lumaNE + lumaSW + lumaSE ;
float dirReduce = max ( lumaSum * ( 0.25 * ( 1.0 / 8.0 ) ) , ( 1.0 / 128.0 ) ) ;
float rcpDirMin = rcp ( min ( abs ( dir . x ) , abs ( dir . y ) ) + dirReduce ) ;

dir = min ( ( ( 8.0 ) ) . xx , max ( ( - ( 8.0 ) ) . xx , dir * rcpDirMin ) ) * sourceSize . zw ;
#line 214
half3 rgb03 = FXAAFetch ( positionNDC , dir * ( 0.0 / 3.0 - 0.5 ) , inputTexture ) ;
half3 rgb13 = FXAAFetch ( positionNDC , dir * ( 1.0 / 3.0 - 0.5 ) , inputTexture ) ;
half3 rgb23 = FXAAFetch ( positionNDC , dir * ( 2.0 / 3.0 - 0.5 ) , inputTexture ) ;
half3 rgb33 = FXAAFetch ( positionNDC , dir * ( 3.0 / 3.0 - 0.5 ) , inputTexture ) ;

rgb03 = saturate ( rgb03 ) ;
rgb13 = saturate ( rgb13 ) ;
rgb23 = saturate ( rgb23 ) ;
rgb33 = saturate ( rgb33 ) ;

half3 rgbA = 0.5 * ( rgb13 + rgb23 ) ;
half3 rgbB = rgbA * 0.5 + 0.25 * ( rgb03 + rgb33 ) ;

half lumaB = Luminance ( rgbB ) ;

half lumaMin = Min3 ( lumaM , lumaNW , Min3 ( lumaNE , lumaSW , lumaSE ) ) ;
half lumaMax = Max3 ( lumaM , lumaNW , Max3 ( lumaNE , lumaSW , lumaSE ) ) ;

return ( ( lumaB < lumaMin ) || ( lumaB > lumaMax ) ) ? rgbA : rgbB ;
}
#line 21 ""
Texture2D _Grain_Texture ;
Texture2D _BlueNoise_Texture ;

float4 _SourceSize ;
float2 _Grain_Params ;
float4 _Grain_TilingParams ;
float4 _Dithering_Params ;
#line 1095 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/Runtime/PostProcessing/Shaders/ffx/ffx_a.hlsl"
uint AU1_AH1_AF1_x ( float a ) { return f32tof16 ( a ) ; }
#line 1098
uint AU1_AH2_AF2_x ( float2 a ) { return f32tof16 ( a . x ) | ( f32tof16 ( a . y ) << 16 ) ; }
#line 1102
float2 AF2_AH2_AU1_x ( uint x ) { return float2 ( f16tof32 ( x & 0xFFFF ) , f16tof32 ( x >> 16 ) ) ; }
#line 1105
float AF1_x ( float a ) { return float ( a ) ; }
float2 AF2_x ( float a ) { return float2 ( a , a ) ; }
float3 AF3_x ( float a ) { return float3 ( a , a , a ) ; }
float4 AF4_x ( float a ) { return float4 ( a , a , a , a ) ; }
#line 1114
uint AU1_x ( uint a ) { return uint ( a ) ; }
uint2 AU2_x ( uint a ) { return uint2 ( a , a ) ; }
uint3 AU3_x ( uint a ) { return uint3 ( a , a , a ) ; }
uint4 AU4_x ( uint a ) { return uint4 ( a , a , a , a ) ; }
#line 1123
uint AAbsSU1 ( uint a ) { return uint ( abs ( int ( a ) ) ) ; }
uint2 AAbsSU2 ( uint2 a ) { return uint2 ( abs ( int2 ( a ) ) ) ; }
uint3 AAbsSU3 ( uint3 a ) { return uint3 ( abs ( int3 ( a ) ) ) ; }
uint4 AAbsSU4 ( uint4 a ) { return uint4 ( abs ( int4 ( a ) ) ) ; }

uint ABfe ( uint src , uint off , uint bits ) { uint mask = ( 1u << bits ) - 1 ; return ( src >> off ) & mask ; }
uint ABfi ( uint src , uint ins , uint mask ) { return ( ins & mask ) | ( src & ( ~ mask ) ) ; }
uint ABfiM ( uint src , uint ins , uint bits ) { uint mask = ( 1u << bits ) - 1 ; return ( ins & mask ) | ( src & ( ~ mask ) ) ; }

float AClampF1 ( float x , float n , float m ) { return max ( n , min ( x , m ) ) ; }
float2 AClampF2 ( float2 x , float2 n , float2 m ) { return max ( n , min ( x , m ) ) ; }
float3 AClampF3 ( float3 x , float3 n , float3 m ) { return max ( n , min ( x , m ) ) ; }
float4 AClampF4 ( float4 x , float4 n , float4 m ) { return max ( n , min ( x , m ) ) ; }

float AFractF1 ( float x ) { return x - floor ( x ) ; }
float2 AFractF2 ( float2 x ) { return x - floor ( x ) ; }
float3 AFractF3 ( float3 x ) { return x - floor ( x ) ; }
float4 AFractF4 ( float4 x ) { return x - floor ( x ) ; }

float ALerpF1 ( float x , float y , float a ) { return lerp ( x , y , a ) ; }
float2 ALerpF2 ( float2 x , float2 y , float2 a ) { return lerp ( x , y , a ) ; }
float3 ALerpF3 ( float3 x , float3 y , float3 a ) { return lerp ( x , y , a ) ; }
float4 ALerpF4 ( float4 x , float4 y , float4 a ) { return lerp ( x , y , a ) ; }

float AMax3F1 ( float x , float y , float z ) { return max ( x , max ( y , z ) ) ; }
float2 AMax3F2 ( float2 x , float2 y , float2 z ) { return max ( x , max ( y , z ) ) ; }
float3 AMax3F3 ( float3 x , float3 y , float3 z ) { return max ( x , max ( y , z ) ) ; }
float4 AMax3F4 ( float4 x , float4 y , float4 z ) { return max ( x , max ( y , z ) ) ; }

uint AMax3SU1 ( uint x , uint y , uint z ) { return uint ( max ( int ( x ) , max ( int ( y ) , int ( z ) ) ) ) ; }
uint2 AMax3SU2 ( uint2 x , uint2 y , uint2 z ) { return uint2 ( max ( int2 ( x ) , max ( int2 ( y ) , int2 ( z ) ) ) ) ; }
uint3 AMax3SU3 ( uint3 x , uint3 y , uint3 z ) { return uint3 ( max ( int3 ( x ) , max ( int3 ( y ) , int3 ( z ) ) ) ) ; }
uint4 AMax3SU4 ( uint4 x , uint4 y , uint4 z ) { return uint4 ( max ( int4 ( x ) , max ( int4 ( y ) , int4 ( z ) ) ) ) ; }

uint AMax3U1 ( uint x , uint y , uint z ) { return max ( x , max ( y , z ) ) ; }
uint2 AMax3U2 ( uint2 x , uint2 y , uint2 z ) { return max ( x , max ( y , z ) ) ; }
uint3 AMax3U3 ( uint3 x , uint3 y , uint3 z ) { return max ( x , max ( y , z ) ) ; }
uint4 AMax3U4 ( uint4 x , uint4 y , uint4 z ) { return max ( x , max ( y , z ) ) ; }

uint AMaxSU1 ( uint a , uint b ) { return uint ( max ( int ( a ) , int ( b ) ) ) ; }
uint2 AMaxSU2 ( uint2 a , uint2 b ) { return uint2 ( max ( int2 ( a ) , int2 ( b ) ) ) ; }
uint3 AMaxSU3 ( uint3 a , uint3 b ) { return uint3 ( max ( int3 ( a ) , int3 ( b ) ) ) ; }
uint4 AMaxSU4 ( uint4 a , uint4 b ) { return uint4 ( max ( int4 ( a ) , int4 ( b ) ) ) ; }

float AMed3F1 ( float x , float y , float z ) { return max ( min ( x , y ) , min ( max ( x , y ) , z ) ) ; }
float2 AMed3F2 ( float2 x , float2 y , float2 z ) { return max ( min ( x , y ) , min ( max ( x , y ) , z ) ) ; }
float3 AMed3F3 ( float3 x , float3 y , float3 z ) { return max ( min ( x , y ) , min ( max ( x , y ) , z ) ) ; }
float4 AMed3F4 ( float4 x , float4 y , float4 z ) { return max ( min ( x , y ) , min ( max ( x , y ) , z ) ) ; }

float AMin3F1 ( float x , float y , float z ) { return min ( x , min ( y , z ) ) ; }
float2 AMin3F2 ( float2 x , float2 y , float2 z ) { return min ( x , min ( y , z ) ) ; }
float3 AMin3F3 ( float3 x , float3 y , float3 z ) { return min ( x , min ( y , z ) ) ; }
float4 AMin3F4 ( float4 x , float4 y , float4 z ) { return min ( x , min ( y , z ) ) ; }

uint AMin3SU1 ( uint x , uint y , uint z ) { return uint ( min ( int ( x ) , min ( int ( y ) , int ( z ) ) ) ) ; }
uint2 AMin3SU2 ( uint2 x , uint2 y , uint2 z ) { return uint2 ( min ( int2 ( x ) , min ( int2 ( y ) , int2 ( z ) ) ) ) ; }
uint3 AMin3SU3 ( uint3 x , uint3 y , uint3 z ) { return uint3 ( min ( int3 ( x ) , min ( int3 ( y ) , int3 ( z ) ) ) ) ; }
uint4 AMin3SU4 ( uint4 x , uint4 y , uint4 z ) { return uint4 ( min ( int4 ( x ) , min ( int4 ( y ) , int4 ( z ) ) ) ) ; }

uint AMin3U1 ( uint x , uint y , uint z ) { return min ( x , min ( y , z ) ) ; }
uint2 AMin3U2 ( uint2 x , uint2 y , uint2 z ) { return min ( x , min ( y , z ) ) ; }
uint3 AMin3U3 ( uint3 x , uint3 y , uint3 z ) { return min ( x , min ( y , z ) ) ; }
uint4 AMin3U4 ( uint4 x , uint4 y , uint4 z ) { return min ( x , min ( y , z ) ) ; }

uint AMinSU1 ( uint a , uint b ) { return uint ( min ( int ( a ) , int ( b ) ) ) ; }
uint2 AMinSU2 ( uint2 a , uint2 b ) { return uint2 ( min ( int2 ( a ) , int2 ( b ) ) ) ; }
uint3 AMinSU3 ( uint3 a , uint3 b ) { return uint3 ( min ( int3 ( a ) , int3 ( b ) ) ) ; }
uint4 AMinSU4 ( uint4 a , uint4 b ) { return uint4 ( min ( int4 ( a ) , int4 ( b ) ) ) ; }

float ANCosF1 ( float x ) { return cos ( x * AF1_x ( float ( 6.28318530718 ) ) ) ; }
float2 ANCosF2 ( float2 x ) { return cos ( x * AF2_x ( float ( 6.28318530718 ) ) ) ; }
float3 ANCosF3 ( float3 x ) { return cos ( x * AF3_x ( float ( 6.28318530718 ) ) ) ; }
float4 ANCosF4 ( float4 x ) { return cos ( x * AF4_x ( float ( 6.28318530718 ) ) ) ; }

float ANSinF1 ( float x ) { return sin ( x * AF1_x ( float ( 6.28318530718 ) ) ) ; }
float2 ANSinF2 ( float2 x ) { return sin ( x * AF2_x ( float ( 6.28318530718 ) ) ) ; }
float3 ANSinF3 ( float3 x ) { return sin ( x * AF3_x ( float ( 6.28318530718 ) ) ) ; }
float4 ANSinF4 ( float4 x ) { return sin ( x * AF4_x ( float ( 6.28318530718 ) ) ) ; }

float ARcpF1 ( float x ) { return rcp ( x ) ; }
float2 ARcpF2 ( float2 x ) { return rcp ( x ) ; }
float3 ARcpF3 ( float3 x ) { return rcp ( x ) ; }
float4 ARcpF4 ( float4 x ) { return rcp ( x ) ; }

float ARsqF1 ( float x ) { return rsqrt ( x ) ; }
float2 ARsqF2 ( float2 x ) { return rsqrt ( x ) ; }
float3 ARsqF3 ( float3 x ) { return rsqrt ( x ) ; }
float4 ARsqF4 ( float4 x ) { return rsqrt ( x ) ; }

float ASatF1 ( float x ) { return saturate ( x ) ; }
float2 ASatF2 ( float2 x ) { return saturate ( x ) ; }
float3 ASatF3 ( float3 x ) { return saturate ( x ) ; }
float4 ASatF4 ( float4 x ) { return saturate ( x ) ; }

uint AShrSU1 ( uint a , uint b ) { return uint ( int ( a ) >> int ( b ) ) ; }
uint2 AShrSU2 ( uint2 a , uint2 b ) { return uint2 ( int2 ( a ) >> int2 ( b ) ) ; }
uint3 AShrSU3 ( uint3 a , uint3 b ) { return uint3 ( int3 ( a ) >> int3 ( b ) ) ; }
uint4 AShrSU4 ( uint4 a , uint4 b ) { return uint4 ( int4 ( a ) >> int4 ( b ) ) ; }
#line 1487
float ACpySgnF1 ( float d , float s ) { return asfloat ( uint ( asuint ( float ( d ) ) | ( asuint ( float ( s ) ) & AU1_x ( uint ( 0x80000000u ) ) ) ) ) ; }
float2 ACpySgnF2 ( float2 d , float2 s ) { return asfloat ( uint2 ( asuint ( float2 ( d ) ) | ( asuint ( float2 ( s ) ) & AU2_x ( uint ( 0x80000000u ) ) ) ) ) ; }
float3 ACpySgnF3 ( float3 d , float3 s ) { return asfloat ( uint3 ( asuint ( float3 ( d ) ) | ( asuint ( float3 ( s ) ) & AU3_x ( uint ( 0x80000000u ) ) ) ) ) ; }
float4 ACpySgnF4 ( float4 d , float4 s ) { return asfloat ( uint4 ( asuint ( float4 ( d ) ) | ( asuint ( float4 ( s ) ) & AU4_x ( uint ( 0x80000000u ) ) ) ) ) ; }
#line 1500
float ASignedF1 ( float m ) { return ASatF1 ( m * AF1_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float2 ASignedF2 ( float2 m ) { return ASatF2 ( m * AF2_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float3 ASignedF3 ( float3 m ) { return ASatF3 ( m * AF3_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float4 ASignedF4 ( float4 m ) { return ASatF4 ( m * AF4_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }

float AGtZeroF1 ( float m ) { return ASatF1 ( m * AF1_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float2 AGtZeroF2 ( float2 m ) { return ASatF2 ( m * AF2_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float3 AGtZeroF3 ( float3 m ) { return ASatF3 ( m * AF3_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float4 AGtZeroF4 ( float4 m ) { return ASatF4 ( m * AF4_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
#line 1552
uint AFisToU1 ( uint x ) { return x ^ ( ( AShrSU1 ( x , AU1_x ( uint ( 31 ) ) ) ) | AU1_x ( uint ( 0x80000000 ) ) ) ; }
uint AFisFromU1 ( uint x ) { return x ^ ( ( ~ AShrSU1 ( x , AU1_x ( uint ( 31 ) ) ) ) | AU1_x ( uint ( 0x80000000 ) ) ) ; }
#line 1556
uint AFisToHiU1 ( uint x ) { return x ^ ( ( AShrSU1 ( x , AU1_x ( uint ( 15 ) ) ) ) | AU1_x ( uint ( 0x80000000 ) ) ) ; }
uint AFisFromHiU1 ( uint x ) { return x ^ ( ( ~ AShrSU1 ( x , AU1_x ( uint ( 15 ) ) ) ) | AU1_x ( uint ( 0x80000000 ) ) ) ; }
#line 1666
uint ABuc0ToU1 ( uint d , float i ) { return ( d & 0xffffff00u ) | ( ( min ( uint ( i ) , 255u ) ) & ( 0x000000ffu ) ) ; }
uint ABuc1ToU1 ( uint d , float i ) { return ( d & 0xffff00ffu ) | ( ( min ( uint ( i ) , 255u ) << 8 ) & ( 0x0000ff00u ) ) ; }
uint ABuc2ToU1 ( uint d , float i ) { return ( d & 0xff00ffffu ) | ( ( min ( uint ( i ) , 255u ) << 16 ) & ( 0x00ff0000u ) ) ; }
uint ABuc3ToU1 ( uint d , float i ) { return ( d & 0x00ffffffu ) | ( ( min ( uint ( i ) , 255u ) << 24 ) & ( 0xff000000u ) ) ; }
#line 1672
float ABuc0FromU1 ( uint i ) { return float ( ( i ) & 255u ) ; }
float ABuc1FromU1 ( uint i ) { return float ( ( i >> 8 ) & 255u ) ; }
float ABuc2FromU1 ( uint i ) { return float ( ( i >> 16 ) & 255u ) ; }
float ABuc3FromU1 ( uint i ) { return float ( ( i >> 24 ) & 255u ) ; }
#line 1734
uint ABsc0ToU1 ( uint d , float i ) { return ( d & 0xffffff00u ) | ( ( min ( uint ( i + 128.0 ) , 255u ) ) & ( 0x000000ffu ) ) ; }
uint ABsc1ToU1 ( uint d , float i ) { return ( d & 0xffff00ffu ) | ( ( min ( uint ( i + 128.0 ) , 255u ) << 8 ) & ( 0x0000ff00u ) ) ; }
uint ABsc2ToU1 ( uint d , float i ) { return ( d & 0xff00ffffu ) | ( ( min ( uint ( i + 128.0 ) , 255u ) << 16 ) & ( 0x00ff0000u ) ) ; }
uint ABsc3ToU1 ( uint d , float i ) { return ( d & 0x00ffffffu ) | ( ( min ( uint ( i + 128.0 ) , 255u ) << 24 ) & ( 0xff000000u ) ) ; }

uint ABsc0ToZbU1 ( uint d , float i ) { return ( ( d & 0xffffff00u ) | ( ( min ( uint ( trunc ( i ) + 128.0 ) , 255u ) ) & ( 0x000000ffu ) ) ) ^ 0x00000080u ; }
uint ABsc1ToZbU1 ( uint d , float i ) { return ( ( d & 0xffff00ffu ) | ( ( min ( uint ( trunc ( i ) + 128.0 ) , 255u ) << 8 ) & ( 0x0000ff00u ) ) ) ^ 0x00008000u ; }
uint ABsc2ToZbU1 ( uint d , float i ) { return ( ( d & 0xff00ffffu ) | ( ( min ( uint ( trunc ( i ) + 128.0 ) , 255u ) << 16 ) & ( 0x00ff0000u ) ) ) ^ 0x00800000u ; }
uint ABsc3ToZbU1 ( uint d , float i ) { return ( ( d & 0x00ffffffu ) | ( ( min ( uint ( trunc ( i ) + 128.0 ) , 255u ) << 24 ) & ( 0xff000000u ) ) ) ^ 0x80000000u ; }

float ABsc0FromU1 ( uint i ) { return float ( ( i ) & 255u ) - 128.0 ; }
float ABsc1FromU1 ( uint i ) { return float ( ( i >> 8 ) & 255u ) - 128.0 ; }
float ABsc2FromU1 ( uint i ) { return float ( ( i >> 16 ) & 255u ) - 128.0 ; }
float ABsc3FromU1 ( uint i ) { return float ( ( i >> 24 ) & 255u ) - 128.0 ; }

float ABsc0FromZbU1 ( uint i ) { return float ( ( ( i ) & 255u ) ^ 0x80u ) - 128.0 ; }
float ABsc1FromZbU1 ( uint i ) { return float ( ( ( i >> 8 ) & 255u ) ^ 0x80u ) - 128.0 ; }
float ABsc2FromZbU1 ( uint i ) { return float ( ( ( i >> 16 ) & 255u ) ^ 0x80u ) - 128.0 ; }
float ABsc3FromZbU1 ( uint i ) { return float ( ( ( i >> 24 ) & 255u ) ^ 0x80u ) - 128.0 ; }
#line 1848
float APrxLoSqrtF1 ( float a ) { return asfloat ( uint ( ( asuint ( float ( a ) ) >> AU1_x ( uint ( 1 ) ) ) + AU1_x ( uint ( 0x1fbc4639 ) ) ) ) ; }
float APrxLoRcpF1 ( float a ) { return asfloat ( uint ( AU1_x ( uint ( 0x7ef07ebb ) ) - asuint ( float ( a ) ) ) ) ; }
float APrxMedRcpF1 ( float a ) { float b = asfloat ( uint ( AU1_x ( uint ( 0x7ef19fff ) ) - asuint ( float ( a ) ) ) ) ; return b * ( - b * a + AF1_x ( float ( 2.0 ) ) ) ; }
float APrxLoRsqF1 ( float a ) { return asfloat ( uint ( AU1_x ( uint ( 0x5f347d74 ) ) - ( asuint ( float ( a ) ) >> AU1_x ( uint ( 1 ) ) ) ) ) ; }

float2 APrxLoSqrtF2 ( float2 a ) { return asfloat ( uint2 ( ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 1 ) ) ) + AU2_x ( uint ( 0x1fbc4639 ) ) ) ) ; }
float2 APrxLoRcpF2 ( float2 a ) { return asfloat ( uint2 ( AU2_x ( uint ( 0x7ef07ebb ) ) - asuint ( float2 ( a ) ) ) ) ; }
float2 APrxMedRcpF2 ( float2 a ) { float2 b = asfloat ( uint2 ( AU2_x ( uint ( 0x7ef19fff ) ) - asuint ( float2 ( a ) ) ) ) ; return b * ( - b * a + AF2_x ( float ( 2.0 ) ) ) ; }
float2 APrxLoRsqF2 ( float2 a ) { return asfloat ( uint2 ( AU2_x ( uint ( 0x5f347d74 ) ) - ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 1 ) ) ) ) ) ; }

float3 APrxLoSqrtF3 ( float3 a ) { return asfloat ( uint3 ( ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 1 ) ) ) + AU3_x ( uint ( 0x1fbc4639 ) ) ) ) ; }
float3 APrxLoRcpF3 ( float3 a ) { return asfloat ( uint3 ( AU3_x ( uint ( 0x7ef07ebb ) ) - asuint ( float3 ( a ) ) ) ) ; }
float3 APrxMedRcpF3 ( float3 a ) { float3 b = asfloat ( uint3 ( AU3_x ( uint ( 0x7ef19fff ) ) - asuint ( float3 ( a ) ) ) ) ; return b * ( - b * a + AF3_x ( float ( 2.0 ) ) ) ; }
float3 APrxLoRsqF3 ( float3 a ) { return asfloat ( uint3 ( AU3_x ( uint ( 0x5f347d74 ) ) - ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 1 ) ) ) ) ) ; }

float4 APrxLoSqrtF4 ( float4 a ) { return asfloat ( uint4 ( ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 1 ) ) ) + AU4_x ( uint ( 0x1fbc4639 ) ) ) ) ; }
float4 APrxLoRcpF4 ( float4 a ) { return asfloat ( uint4 ( AU4_x ( uint ( 0x7ef07ebb ) ) - asuint ( float4 ( a ) ) ) ) ; }
float4 APrxMedRcpF4 ( float4 a ) { float4 b = asfloat ( uint4 ( AU4_x ( uint ( 0x7ef19fff ) ) - asuint ( float4 ( a ) ) ) ) ; return b * ( - b * a + AF4_x ( float ( 2.0 ) ) ) ; }
float4 APrxLoRsqF4 ( float4 a ) { return asfloat ( uint4 ( AU4_x ( uint ( 0x5f347d74 ) ) - ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 1 ) ) ) ) ) ; }
#line 1877
float Quart ( float a ) { a = a * a ; return a * a ; }
float Oct ( float a ) { a = a * a ; a = a * a ; return a * a ; }
float2 Quart ( float2 a ) { a = a * a ; return a * a ; }
float2 Oct ( float2 a ) { a = a * a ; a = a * a ; return a * a ; }
float3 Quart ( float3 a ) { a = a * a ; return a * a ; }
float3 Oct ( float3 a ) { a = a * a ; a = a * a ; return a * a ; }
float4 Quart ( float4 a ) { a = a * a ; return a * a ; }
float4 Oct ( float4 a ) { a = a * a ; a = a * a ; return a * a ; }

float APrxPQToGamma2 ( float a ) { return Quart ( a ) ; }
float APrxPQToLinear ( float a ) { return Oct ( a ) ; }
float APrxLoGamma2ToPQ ( float a ) { return asfloat ( uint ( ( asuint ( float ( a ) ) >> AU1_x ( uint ( 2 ) ) ) + AU1_x ( uint ( 0x2F9A4E46 ) ) ) ) ; }
float APrxMedGamma2ToPQ ( float a ) { float b = asfloat ( uint ( ( asuint ( float ( a ) ) >> AU1_x ( uint ( 2 ) ) ) + AU1_x ( uint ( 0x2F9A4E46 ) ) ) ) ; float b4 = Quart ( b ) ; return b - b * ( b4 - a ) / ( AF1_x ( float ( 4.0 ) ) * b4 ) ; }
float APrxHighGamma2ToPQ ( float a ) { return sqrt ( sqrt ( a ) ) ; }
float APrxLoLinearToPQ ( float a ) { return asfloat ( uint ( ( asuint ( float ( a ) ) >> AU1_x ( uint ( 3 ) ) ) + AU1_x ( uint ( 0x378D8723 ) ) ) ) ; }
float APrxMedLinearToPQ ( float a ) { float b = asfloat ( uint ( ( asuint ( float ( a ) ) >> AU1_x ( uint ( 3 ) ) ) + AU1_x ( uint ( 0x378D8723 ) ) ) ) ; float b8 = Oct ( b ) ; return b - b * ( b8 - a ) / ( AF1_x ( float ( 8.0 ) ) * b8 ) ; }
float APrxHighLinearToPQ ( float a ) { return sqrt ( sqrt ( sqrt ( a ) ) ) ; }

float2 APrxPQToGamma2 ( float2 a ) { return Quart ( a ) ; }
float2 APrxPQToLinear ( float2 a ) { return Oct ( a ) ; }
float2 APrxLoGamma2ToPQ ( float2 a ) { return asfloat ( uint2 ( ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 2 ) ) ) + AU2_x ( uint ( 0x2F9A4E46 ) ) ) ) ; }
float2 APrxMedGamma2ToPQ ( float2 a ) { float2 b = asfloat ( uint2 ( ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 2 ) ) ) + AU2_x ( uint ( 0x2F9A4E46 ) ) ) ) ; float2 b4 = Quart ( b ) ; return b - b * ( b4 - a ) / ( AF1_x ( float ( 4.0 ) ) * b4 ) ; }
float2 APrxHighGamma2ToPQ ( float2 a ) { return sqrt ( sqrt ( a ) ) ; }
float2 APrxLoLinearToPQ ( float2 a ) { return asfloat ( uint2 ( ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 3 ) ) ) + AU2_x ( uint ( 0x378D8723 ) ) ) ) ; }
float2 APrxMedLinearToPQ ( float2 a ) { float2 b = asfloat ( uint2 ( ( asuint ( float2 ( a ) ) >> AU2_x ( uint ( 3 ) ) ) + AU2_x ( uint ( 0x378D8723 ) ) ) ) ; float2 b8 = Oct ( b ) ; return b - b * ( b8 - a ) / ( AF1_x ( float ( 8.0 ) ) * b8 ) ; }
float2 APrxHighLinearToPQ ( float2 a ) { return sqrt ( sqrt ( sqrt ( a ) ) ) ; }

float3 APrxPQToGamma2 ( float3 a ) { return Quart ( a ) ; }
float3 APrxPQToLinear ( float3 a ) { return Oct ( a ) ; }
float3 APrxLoGamma2ToPQ ( float3 a ) { return asfloat ( uint3 ( ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 2 ) ) ) + AU3_x ( uint ( 0x2F9A4E46 ) ) ) ) ; }
float3 APrxMedGamma2ToPQ ( float3 a ) { float3 b = asfloat ( uint3 ( ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 2 ) ) ) + AU3_x ( uint ( 0x2F9A4E46 ) ) ) ) ; float3 b4 = Quart ( b ) ; return b - b * ( b4 - a ) / ( AF1_x ( float ( 4.0 ) ) * b4 ) ; }
float3 APrxHighGamma2ToPQ ( float3 a ) { return sqrt ( sqrt ( a ) ) ; }
float3 APrxLoLinearToPQ ( float3 a ) { return asfloat ( uint3 ( ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 3 ) ) ) + AU3_x ( uint ( 0x378D8723 ) ) ) ) ; }
float3 APrxMedLinearToPQ ( float3 a ) { float3 b = asfloat ( uint3 ( ( asuint ( float3 ( a ) ) >> AU3_x ( uint ( 3 ) ) ) + AU3_x ( uint ( 0x378D8723 ) ) ) ) ; float3 b8 = Oct ( b ) ; return b - b * ( b8 - a ) / ( AF1_x ( float ( 8.0 ) ) * b8 ) ; }
float3 APrxHighLinearToPQ ( float3 a ) { return sqrt ( sqrt ( sqrt ( a ) ) ) ; }

float4 APrxPQToGamma2 ( float4 a ) { return Quart ( a ) ; }
float4 APrxPQToLinear ( float4 a ) { return Oct ( a ) ; }
float4 APrxLoGamma2ToPQ ( float4 a ) { return asfloat ( uint4 ( ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 2 ) ) ) + AU4_x ( uint ( 0x2F9A4E46 ) ) ) ) ; }
float4 APrxMedGamma2ToPQ ( float4 a ) { float4 b = asfloat ( uint4 ( ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 2 ) ) ) + AU4_x ( uint ( 0x2F9A4E46 ) ) ) ) ; float4 b4 = Quart ( b ) ; return b - b * ( b4 - a ) / ( AF1_x ( float ( 4.0 ) ) * b4 ) ; }
float4 APrxHighGamma2ToPQ ( float4 a ) { return sqrt ( sqrt ( a ) ) ; }
float4 APrxLoLinearToPQ ( float4 a ) { return asfloat ( uint4 ( ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 3 ) ) ) + AU4_x ( uint ( 0x378D8723 ) ) ) ) ; }
float4 APrxMedLinearToPQ ( float4 a ) { float4 b = asfloat ( uint4 ( ( asuint ( float4 ( a ) ) >> AU4_x ( uint ( 3 ) ) ) + AU4_x ( uint ( 0x378D8723 ) ) ) ) ; float4 b8 = Oct ( b ) ; return b - b * ( b8 - a ) / ( AF1_x ( float ( 8.0 ) ) * b8 ) ; }
float4 APrxHighLinearToPQ ( float4 a ) { return sqrt ( sqrt ( sqrt ( a ) ) ) ; }
#line 1933
float APSinF1 ( float x ) { return x * abs ( x ) - x ; }
float2 APSinF2 ( float2 x ) { return x * abs ( x ) - x ; }
float APCosF1 ( float x ) { x = AFractF1 ( x * AF1_x ( float ( 0.5 ) ) + AF1_x ( float ( 0.75 ) ) ) ; x = x * AF1_x ( float ( 2.0 ) ) - AF1_x ( float ( 1.0 ) ) ; return APSinF1 ( x ) ; }
float2 APCosF2 ( float2 x ) { x = AFractF2 ( x * AF2_x ( float ( 0.5 ) ) + AF2_x ( float ( 0.75 ) ) ) ; x = x * AF2_x ( float ( 2.0 ) ) - AF2_x ( float ( 1.0 ) ) ; return APSinF2 ( x ) ; }
float2 APSinCosF1 ( float x ) { float y = AFractF1 ( x * AF1_x ( float ( 0.5 ) ) + AF1_x ( float ( 0.75 ) ) ) ; y = y * AF1_x ( float ( 2.0 ) ) - AF1_x ( float ( 1.0 ) ) ; return APSinF2 ( float2 ( x , y ) ) ; }
#line 1974
uint AZolAndU1 ( uint x , uint y ) { return min ( x , y ) ; }
uint2 AZolAndU2 ( uint2 x , uint2 y ) { return min ( x , y ) ; }
uint3 AZolAndU3 ( uint3 x , uint3 y ) { return min ( x , y ) ; }
uint4 AZolAndU4 ( uint4 x , uint4 y ) { return min ( x , y ) ; }

uint AZolNotU1 ( uint x ) { return x ^ AU1_x ( uint ( 1 ) ) ; }
uint2 AZolNotU2 ( uint2 x ) { return x ^ AU2_x ( uint ( 1 ) ) ; }
uint3 AZolNotU3 ( uint3 x ) { return x ^ AU3_x ( uint ( 1 ) ) ; }
uint4 AZolNotU4 ( uint4 x ) { return x ^ AU4_x ( uint ( 1 ) ) ; }

uint AZolOrU1 ( uint x , uint y ) { return max ( x , y ) ; }
uint2 AZolOrU2 ( uint2 x , uint2 y ) { return max ( x , y ) ; }
uint3 AZolOrU3 ( uint3 x , uint3 y ) { return max ( x , y ) ; }
uint4 AZolOrU4 ( uint4 x , uint4 y ) { return max ( x , y ) ; }

uint AZolF1ToU1 ( float x ) { return uint ( x ) ; }
uint2 AZolF2ToU2 ( float2 x ) { return uint2 ( x ) ; }
uint3 AZolF3ToU3 ( float3 x ) { return uint3 ( x ) ; }
uint4 AZolF4ToU4 ( float4 x ) { return uint4 ( x ) ; }
#line 1995
uint AZolNotF1ToU1 ( float x ) { return uint ( AF1_x ( float ( 1.0 ) ) - x ) ; }
uint2 AZolNotF2ToU2 ( float2 x ) { return uint2 ( AF2_x ( float ( 1.0 ) ) - x ) ; }
uint3 AZolNotF3ToU3 ( float3 x ) { return uint3 ( AF3_x ( float ( 1.0 ) ) - x ) ; }
uint4 AZolNotF4ToU4 ( float4 x ) { return uint4 ( AF4_x ( float ( 1.0 ) ) - x ) ; }

float AZolU1ToF1 ( uint x ) { return float ( x ) ; }
float2 AZolU2ToF2 ( uint2 x ) { return float2 ( x ) ; }
float3 AZolU3ToF3 ( uint3 x ) { return float3 ( x ) ; }
float4 AZolU4ToF4 ( uint4 x ) { return float4 ( x ) ; }

float AZolAndF1 ( float x , float y ) { return min ( x , y ) ; }
float2 AZolAndF2 ( float2 x , float2 y ) { return min ( x , y ) ; }
float3 AZolAndF3 ( float3 x , float3 y ) { return min ( x , y ) ; }
float4 AZolAndF4 ( float4 x , float4 y ) { return min ( x , y ) ; }

float ASolAndNotF1 ( float x , float y ) { return ( - x ) * y + AF1_x ( float ( 1.0 ) ) ; }
float2 ASolAndNotF2 ( float2 x , float2 y ) { return ( - x ) * y + AF2_x ( float ( 1.0 ) ) ; }
float3 ASolAndNotF3 ( float3 x , float3 y ) { return ( - x ) * y + AF3_x ( float ( 1.0 ) ) ; }
float4 ASolAndNotF4 ( float4 x , float4 y ) { return ( - x ) * y + AF4_x ( float ( 1.0 ) ) ; }

float AZolAndOrF1 ( float x , float y , float z ) { return ASatF1 ( x * y + z ) ; }
float2 AZolAndOrF2 ( float2 x , float2 y , float2 z ) { return ASatF2 ( x * y + z ) ; }
float3 AZolAndOrF3 ( float3 x , float3 y , float3 z ) { return ASatF3 ( x * y + z ) ; }
float4 AZolAndOrF4 ( float4 x , float4 y , float4 z ) { return ASatF4 ( x * y + z ) ; }

float AZolGtZeroF1 ( float x ) { return ASatF1 ( x * AF1_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float2 AZolGtZeroF2 ( float2 x ) { return ASatF2 ( x * AF2_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float3 AZolGtZeroF3 ( float3 x ) { return ASatF3 ( x * AF3_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }
float4 AZolGtZeroF4 ( float4 x ) { return ASatF4 ( x * AF4_x ( float ( asfloat ( uint ( 0x7f800000u ) ) ) ) ) ; }

float AZolNotF1 ( float x ) { return AF1_x ( float ( 1.0 ) ) - x ; }
float2 AZolNotF2 ( float2 x ) { return AF2_x ( float ( 1.0 ) ) - x ; }
float3 AZolNotF3 ( float3 x ) { return AF3_x ( float ( 1.0 ) ) - x ; }
float4 AZolNotF4 ( float4 x ) { return AF4_x ( float ( 1.0 ) ) - x ; }

float AZolOrF1 ( float x , float y ) { return max ( x , y ) ; }
float2 AZolOrF2 ( float2 x , float2 y ) { return max ( x , y ) ; }
float3 AZolOrF3 ( float3 x , float3 y ) { return max ( x , y ) ; }
float4 AZolOrF4 ( float4 x , float4 y ) { return max ( x , y ) ; }

float AZolSelF1 ( float x , float y , float z ) { float r = ( - x ) * z + z ; return x * y + r ; }
float2 AZolSelF2 ( float2 x , float2 y , float2 z ) { float2 r = ( - x ) * z + z ; return x * y + r ; }
float3 AZolSelF3 ( float3 x , float3 y , float3 z ) { float3 r = ( - x ) * z + z ; return x * y + r ; }
float4 AZolSelF4 ( float4 x , float4 y , float4 z ) { float4 r = ( - x ) * z + z ; return x * y + r ; }

float AZolSignedF1 ( float x ) { return ASatF1 ( x * AF1_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float2 AZolSignedF2 ( float2 x ) { return ASatF2 ( x * AF2_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float3 AZolSignedF3 ( float3 x ) { return ASatF3 ( x * AF3_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }
float4 AZolSignedF4 ( float4 x ) { return ASatF4 ( x * AF4_x ( float ( asfloat ( uint ( 0xff800000u ) ) ) ) ) ; }

float AZolZeroPassF1 ( float x , float y ) { return asfloat ( uint ( ( asuint ( float ( x ) ) != AU1_x ( uint ( 0 ) ) ) ? AU1_x ( uint ( 0 ) ) : asuint ( float ( y ) ) ) ) ; }
float2 AZolZeroPassF2 ( float2 x , float2 y ) { return asfloat ( uint2 ( ( asuint ( float2 ( x ) ) != AU2_x ( uint ( 0 ) ) ) ? AU2_x ( uint ( 0 ) ) : asuint ( float2 ( y ) ) ) ) ; }
float3 AZolZeroPassF3 ( float3 x , float3 y ) { return asfloat ( uint3 ( ( asuint ( float3 ( x ) ) != AU3_x ( uint ( 0 ) ) ) ? AU3_x ( uint ( 0 ) ) : asuint ( float3 ( y ) ) ) ) ; }
float4 AZolZeroPassF4 ( float4 x , float4 y ) { return asfloat ( uint4 ( ( asuint ( float4 ( x ) ) != AU4_x ( uint ( 0 ) ) ) ? AU4_x ( uint ( 0 ) ) : asuint ( float4 ( y ) ) ) ) ; }
#line 2172
float ATo709F1 ( float c ) { float3 j = float3 ( 0.018 * 4.5 , 4.5 , 0.45 ) ; float2 k = float2 ( 1.099 , - 0.099 ) ;
return clamp ( j . x , c * j . y , pow ( c , j . z ) * k . x + k . y ) ; }
float2 ATo709F2 ( float2 c ) { float3 j = float3 ( 0.018 * 4.5 , 4.5 , 0.45 ) ; float2 k = float2 ( 1.099 , - 0.099 ) ;
return clamp ( j . xx , c * j . yy , pow ( c , j . zz ) * k . xx + k . yy ) ; }
float3 ATo709F3 ( float3 c ) { float3 j = float3 ( 0.018 * 4.5 , 4.5 , 0.45 ) ; float2 k = float2 ( 1.099 , - 0.099 ) ;
return clamp ( j . xxx , c * j . yyy , pow ( c , j . zzz ) * k . xxx + k . yyy ) ; }
#line 2180
float AToGammaF1 ( float c , float rcpX ) { return pow ( c , AF1_x ( float ( rcpX ) ) ) ; }
float2 AToGammaF2 ( float2 c , float rcpX ) { return pow ( c , AF2_x ( float ( rcpX ) ) ) ; }
float3 AToGammaF3 ( float3 c , float rcpX ) { return pow ( c , AF3_x ( float ( rcpX ) ) ) ; }

float AToPqF1 ( float x ) { float p = pow ( x , AF1_x ( float ( 0.159302 ) ) ) ;
return pow ( ( AF1_x ( float ( 0.835938 ) ) + AF1_x ( float ( 18.8516 ) ) * p ) / ( AF1_x ( float ( 1.0 ) ) + AF1_x ( float ( 18.6875 ) ) * p ) , AF1_x ( float ( 78.8438 ) ) ) ; }
float2 AToPqF1 ( float2 x ) { float2 p = pow ( x , AF2_x ( float ( 0.159302 ) ) ) ;
return pow ( ( AF2_x ( float ( 0.835938 ) ) + AF2_x ( float ( 18.8516 ) ) * p ) / ( AF2_x ( float ( 1.0 ) ) + AF2_x ( float ( 18.6875 ) ) * p ) , AF2_x ( float ( 78.8438 ) ) ) ; }
float3 AToPqF1 ( float3 x ) { float3 p = pow ( x , AF3_x ( float ( 0.159302 ) ) ) ;
return pow ( ( AF3_x ( float ( 0.835938 ) ) + AF3_x ( float ( 18.8516 ) ) * p ) / ( AF3_x ( float ( 1.0 ) ) + AF3_x ( float ( 18.6875 ) ) * p ) , AF3_x ( float ( 78.8438 ) ) ) ; }

float AToSrgbF1 ( float c ) { float3 j = float3 ( 0.0031308 * 12.92 , 12.92 , 1.0 / 2.4 ) ; float2 k = float2 ( 1.055 , - 0.055 ) ;
return clamp ( j . x , c * j . y , pow ( c , j . z ) * k . x + k . y ) ; }
float2 AToSrgbF2 ( float2 c ) { float3 j = float3 ( 0.0031308 * 12.92 , 12.92 , 1.0 / 2.4 ) ; float2 k = float2 ( 1.055 , - 0.055 ) ;
return clamp ( j . xx , c * j . yy , pow ( c , j . zz ) * k . xx + k . yy ) ; }
float3 AToSrgbF3 ( float3 c ) { float3 j = float3 ( 0.0031308 * 12.92 , 12.92 , 1.0 / 2.4 ) ; float2 k = float2 ( 1.055 , - 0.055 ) ;
return clamp ( j . xxx , c * j . yyy , pow ( c , j . zzz ) * k . xxx + k . yyy ) ; }

float AToTwoF1 ( float c ) { return sqrt ( c ) ; }
float2 AToTwoF2 ( float2 c ) { return sqrt ( c ) ; }
float3 AToTwoF3 ( float3 c ) { return sqrt ( c ) ; }

float AToThreeF1 ( float c ) { return pow ( c , AF1_x ( float ( 1.0 / 3.0 ) ) ) ; }
float2 AToThreeF2 ( float2 c ) { return pow ( c , AF2_x ( float ( 1.0 / 3.0 ) ) ) ; }
float3 AToThreeF3 ( float3 c ) { return pow ( c , AF3_x ( float ( 1.0 / 3.0 ) ) ) ; }
#line 2209
float AFrom709F1 ( float c ) { float3 j = float3 ( 0.081 / 4.5 , 1.0 / 4.5 , 1.0 / 0.45 ) ; float2 k = float2 ( 1.0 / 1.099 , 0.099 / 1.099 ) ;
return AZolSelF1 ( AZolSignedF1 ( c - j . x ) , c * j . y , pow ( c * k . x + k . y , j . z ) ) ; }
float2 AFrom709F2 ( float2 c ) { float3 j = float3 ( 0.081 / 4.5 , 1.0 / 4.5 , 1.0 / 0.45 ) ; float2 k = float2 ( 1.0 / 1.099 , 0.099 / 1.099 ) ;
return AZolSelF2 ( AZolSignedF2 ( c - j . xx ) , c * j . yy , pow ( c * k . xx + k . yy , j . zz ) ) ; }
float3 AFrom709F3 ( float3 c ) { float3 j = float3 ( 0.081 / 4.5 , 1.0 / 4.5 , 1.0 / 0.45 ) ; float2 k = float2 ( 1.0 / 1.099 , 0.099 / 1.099 ) ;
return AZolSelF3 ( AZolSignedF3 ( c - j . xxx ) , c * j . yyy , pow ( c * k . xxx + k . yyy , j . zzz ) ) ; }

float AFromGammaF1 ( float c , float x ) { return pow ( c , AF1_x ( float ( x ) ) ) ; }
float2 AFromGammaF2 ( float2 c , float x ) { return pow ( c , AF2_x ( float ( x ) ) ) ; }
float3 AFromGammaF3 ( float3 c , float x ) { return pow ( c , AF3_x ( float ( x ) ) ) ; }

float AFromPqF1 ( float x ) { float p = pow ( x , AF1_x ( float ( 0.0126833 ) ) ) ;
return pow ( ASatF1 ( p - AF1_x ( float ( 0.835938 ) ) ) / ( AF1_x ( float ( 18.8516 ) ) - AF1_x ( float ( 18.6875 ) ) * p ) , AF1_x ( float ( 6.27739 ) ) ) ; }
float2 AFromPqF1 ( float2 x ) { float2 p = pow ( x , AF2_x ( float ( 0.0126833 ) ) ) ;
return pow ( ASatF2 ( p - AF2_x ( float ( 0.835938 ) ) ) / ( AF2_x ( float ( 18.8516 ) ) - AF2_x ( float ( 18.6875 ) ) * p ) , AF2_x ( float ( 6.27739 ) ) ) ; }
float3 AFromPqF1 ( float3 x ) { float3 p = pow ( x , AF3_x ( float ( 0.0126833 ) ) ) ;
return pow ( ASatF3 ( p - AF3_x ( float ( 0.835938 ) ) ) / ( AF3_x ( float ( 18.8516 ) ) - AF3_x ( float ( 18.6875 ) ) * p ) , AF3_x ( float ( 6.27739 ) ) ) ; }
#line 2228
float AFromSrgbF1 ( float c ) { float3 j = float3 ( 0.04045 / 12.92 , 1.0 / 12.92 , 2.4 ) ; float2 k = float2 ( 1.0 / 1.055 , 0.055 / 1.055 ) ;
return AZolSelF1 ( AZolSignedF1 ( c - j . x ) , c * j . y , pow ( c * k . x + k . y , j . z ) ) ; }
float2 AFromSrgbF2 ( float2 c ) { float3 j = float3 ( 0.04045 / 12.92 , 1.0 / 12.92 , 2.4 ) ; float2 k = float2 ( 1.0 / 1.055 , 0.055 / 1.055 ) ;
return AZolSelF2 ( AZolSignedF2 ( c - j . xx ) , c * j . yy , pow ( c * k . xx + k . yy , j . zz ) ) ; }
float3 AFromSrgbF3 ( float3 c ) { float3 j = float3 ( 0.04045 / 12.92 , 1.0 / 12.92 , 2.4 ) ; float2 k = float2 ( 1.0 / 1.055 , 0.055 / 1.055 ) ;
return AZolSelF3 ( AZolSignedF3 ( c - j . xxx ) , c * j . yyy , pow ( c * k . xxx + k . yyy , j . zzz ) ) ; }

float AFromTwoF1 ( float c ) { return c * c ; }
float2 AFromTwoF2 ( float2 c ) { return c * c ; }
float3 AFromTwoF3 ( float3 c ) { return c * c ; }

float AFromThreeF1 ( float c ) { return c * c * c ; }
float2 AFromThreeF2 ( float2 c ) { return c * c * c ; }
float3 AFromThreeF3 ( float3 c ) { return c * c * c ; }
#line 2310
uint2 ARmp8x8 ( uint a ) { return uint2 ( ABfe ( a , 1u , 3u ) , ABfiM ( ABfe ( a , 3u , 3u ) , a , 1u ) ) ; }
#line 2328
uint2 ARmpRed8x8 ( uint a ) { return uint2 ( ABfiM ( ABfe ( a , 2u , 3u ) , a , 1u ) , ABfiM ( ABfe ( a , 3u , 3u ) , ABfe ( a , 1u , 2u ) , 2u ) ) ; }
#line 2615
float2 opAAbsF2 ( out float2 d , in float2 a ) { d = abs ( a ) ; return d ; }
float3 opAAbsF3 ( out float3 d , in float3 a ) { d = abs ( a ) ; return d ; }
float4 opAAbsF4 ( out float4 d , in float4 a ) { d = abs ( a ) ; return d ; }

float2 opAAddF2 ( out float2 d , in float2 a , in float2 b ) { d = a + b ; return d ; }
float3 opAAddF3 ( out float3 d , in float3 a , in float3 b ) { d = a + b ; return d ; }
float4 opAAddF4 ( out float4 d , in float4 a , in float4 b ) { d = a + b ; return d ; }

float2 opAAddOneF2 ( out float2 d , in float2 a , float b ) { d = a + AF2_x ( float ( b ) ) ; return d ; }
float3 opAAddOneF3 ( out float3 d , in float3 a , float b ) { d = a + AF3_x ( float ( b ) ) ; return d ; }
float4 opAAddOneF4 ( out float4 d , in float4 a , float b ) { d = a + AF4_x ( float ( b ) ) ; return d ; }

float2 opACpyF2 ( out float2 d , in float2 a ) { d = a ; return d ; }
float3 opACpyF3 ( out float3 d , in float3 a ) { d = a ; return d ; }
float4 opACpyF4 ( out float4 d , in float4 a ) { d = a ; return d ; }

float2 opALerpF2 ( out float2 d , in float2 a , in float2 b , in float2 c ) { d = ALerpF2 ( a , b , c ) ; return d ; }
float3 opALerpF3 ( out float3 d , in float3 a , in float3 b , in float3 c ) { d = ALerpF3 ( a , b , c ) ; return d ; }
float4 opALerpF4 ( out float4 d , in float4 a , in float4 b , in float4 c ) { d = ALerpF4 ( a , b , c ) ; return d ; }

float2 opALerpOneF2 ( out float2 d , in float2 a , in float2 b , float c ) { d = ALerpF2 ( a , b , AF2_x ( float ( c ) ) ) ; return d ; }
float3 opALerpOneF3 ( out float3 d , in float3 a , in float3 b , float c ) { d = ALerpF3 ( a , b , AF3_x ( float ( c ) ) ) ; return d ; }
float4 opALerpOneF4 ( out float4 d , in float4 a , in float4 b , float c ) { d = ALerpF4 ( a , b , AF4_x ( float ( c ) ) ) ; return d ; }

float2 opAMaxF2 ( out float2 d , in float2 a , in float2 b ) { d = max ( a , b ) ; return d ; }
float3 opAMaxF3 ( out float3 d , in float3 a , in float3 b ) { d = max ( a , b ) ; return d ; }
float4 opAMaxF4 ( out float4 d , in float4 a , in float4 b ) { d = max ( a , b ) ; return d ; }

float2 opAMinF2 ( out float2 d , in float2 a , in float2 b ) { d = min ( a , b ) ; return d ; }
float3 opAMinF3 ( out float3 d , in float3 a , in float3 b ) { d = min ( a , b ) ; return d ; }
float4 opAMinF4 ( out float4 d , in float4 a , in float4 b ) { d = min ( a , b ) ; return d ; }

float2 opAMulF2 ( out float2 d , in float2 a , in float2 b ) { d = a * b ; return d ; }
float3 opAMulF3 ( out float3 d , in float3 a , in float3 b ) { d = a * b ; return d ; }
float4 opAMulF4 ( out float4 d , in float4 a , in float4 b ) { d = a * b ; return d ; }

float2 opAMulOneF2 ( out float2 d , in float2 a , float b ) { d = a * AF2_x ( float ( b ) ) ; return d ; }
float3 opAMulOneF3 ( out float3 d , in float3 a , float b ) { d = a * AF3_x ( float ( b ) ) ; return d ; }
float4 opAMulOneF4 ( out float4 d , in float4 a , float b ) { d = a * AF4_x ( float ( b ) ) ; return d ; }

float2 opANegF2 ( out float2 d , in float2 a ) { d = - a ; return d ; }
float3 opANegF3 ( out float3 d , in float3 a ) { d = - a ; return d ; }
float4 opANegF4 ( out float4 d , in float4 a ) { d = - a ; return d ; }

float2 opARcpF2 ( out float2 d , in float2 a ) { d = ARcpF2 ( a ) ; return d ; }
float3 opARcpF3 ( out float3 d , in float3 a ) { d = ARcpF3 ( a ) ; return d ; }
float4 opARcpF4 ( out float4 d , in float4 a ) { d = ARcpF4 ( a ) ; return d ; }
#line 156 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/Runtime/PostProcessing/Shaders/ffx/ffx_fsr1.hlsl"
void FsrEasuCon (
out uint4 con0 ,
out uint4 con1 ,
out uint4 con2 ,
out uint4 con3 ,

float inputViewportInPixelsX ,
float inputViewportInPixelsY ,

float inputSizeInPixelsX ,
float inputSizeInPixelsY ,

float outputSizeInPixelsX ,
float outputSizeInPixelsY ) {

con0 [ 0 ] = asuint ( float ( inputViewportInPixelsX * ARcpF1 ( outputSizeInPixelsX ) ) ) ;
con0 [ 1 ] = asuint ( float ( inputViewportInPixelsY * ARcpF1 ( outputSizeInPixelsY ) ) ) ;
con0 [ 2 ] = asuint ( float ( AF1_x ( float ( 0.5 ) ) * inputViewportInPixelsX * ARcpF1 ( outputSizeInPixelsX ) - AF1_x ( float ( 0.5 ) ) ) ) ;
con0 [ 3 ] = asuint ( float ( AF1_x ( float ( 0.5 ) ) * inputViewportInPixelsY * ARcpF1 ( outputSizeInPixelsY ) - AF1_x ( float ( 0.5 ) ) ) ) ;
#line 177
con1 [ 0 ] = asuint ( float ( ARcpF1 ( inputSizeInPixelsX ) ) ) ;
con1 [ 1 ] = asuint ( float ( ARcpF1 ( inputSizeInPixelsY ) ) ) ;
#line 193
con1 [ 2 ] = asuint ( float ( AF1_x ( float ( 1.0 ) ) * ARcpF1 ( inputSizeInPixelsX ) ) ) ;
con1 [ 3 ] = asuint ( float ( AF1_x ( float ( - 1.0 ) ) * ARcpF1 ( inputSizeInPixelsY ) ) ) ;

con2 [ 0 ] = asuint ( float ( AF1_x ( float ( - 1.0 ) ) * ARcpF1 ( inputSizeInPixelsX ) ) ) ;
con2 [ 1 ] = asuint ( float ( AF1_x ( float ( 2.0 ) ) * ARcpF1 ( inputSizeInPixelsY ) ) ) ;
con2 [ 2 ] = asuint ( float ( AF1_x ( float ( 1.0 ) ) * ARcpF1 ( inputSizeInPixelsX ) ) ) ;
con2 [ 3 ] = asuint ( float ( AF1_x ( float ( 2.0 ) ) * ARcpF1 ( inputSizeInPixelsY ) ) ) ;
con3 [ 0 ] = asuint ( float ( AF1_x ( float ( 0.0 ) ) * ARcpF1 ( inputSizeInPixelsX ) ) ) ;
con3 [ 1 ] = asuint ( float ( AF1_x ( float ( 4.0 ) ) * ARcpF1 ( inputSizeInPixelsY ) ) ) ;
con3 [ 2 ] = con3 [ 3 ] = 0 ; }
#line 205
void FsrEasuConOffset (
out uint4 con0 ,
out uint4 con1 ,
out uint4 con2 ,
out uint4 con3 ,

float inputViewportInPixelsX ,
float inputViewportInPixelsY ,

float inputSizeInPixelsX ,
float inputSizeInPixelsY ,

float outputSizeInPixelsX ,
float outputSizeInPixelsY ,

float inputOffsetInPixelsX ,
float inputOffsetInPixelsY ) {
FsrEasuCon ( con0 , con1 , con2 , con3 , inputViewportInPixelsX , inputViewportInPixelsY , inputSizeInPixelsX , inputSizeInPixelsY , outputSizeInPixelsX , outputSizeInPixelsY ) ;
con0 [ 2 ] = asuint ( float ( AF1_x ( float ( 0.5 ) ) * inputViewportInPixelsX * ARcpF1 ( outputSizeInPixelsX ) - AF1_x ( float ( 0.5 ) ) + inputOffsetInPixelsX ) ) ;
con0 [ 3 ] = asuint ( float ( AF1_x ( float ( 0.5 ) ) * inputViewportInPixelsY * ARcpF1 ( outputSizeInPixelsY ) - AF1_x ( float ( 0.5 ) ) + inputOffsetInPixelsY ) ) ;
}
#line 234
float4 FsrEasuRF ( float2 p ) ;
float4 FsrEasuGF ( float2 p ) ;
float4 FsrEasuBF ( float2 p ) ;
#line 239
void FsrEasuTapF (
inout float3 aC ,
inout float aW ,
float2 off ,
float2 dir ,
float2 len ,
float lob ,
float clp ,
float3 c ) {

float2 v ;
v . x = ( off . x * ( dir . x ) ) + ( off . y * dir . y ) ;
v . y = ( off . x * ( - dir . y ) ) + ( off . y * dir . x ) ;

v *= len ;

float d2 = v . x * v . x + v . y * v . y ;

d2 = min ( d2 , clp ) ;
#line 265
float wB = AF1_x ( float ( 2.0 / 5.0 ) ) * d2 + AF1_x ( float ( - 1.0 ) ) ;
float wA = lob * d2 + AF1_x ( float ( - 1.0 ) ) ;
wB *= wB ;
wA *= wA ;
wB = AF1_x ( float ( 25.0 / 16.0 ) ) * wB + AF1_x ( float ( - ( 25.0 / 16.0 - 1.0 ) ) ) ;
float w = wB * wA ;

aC += c * w ; aW += w ; }
#line 275
void FsrEasuSetF (
inout float2 dir ,
inout float len ,
float2 pp ,
bool biS , bool biT , bool biU , bool biV ,
float lA , float lB , float lC , float lD , float lE ) {
#line 284
float w = AF1_x ( float ( 0.0 ) ) ;
if ( biS ) w = ( AF1_x ( float ( 1.0 ) ) - pp . x ) * ( AF1_x ( float ( 1.0 ) ) - pp . y ) ;
if ( biT ) w = pp . x * ( AF1_x ( float ( 1.0 ) ) - pp . y ) ;
if ( biU ) w = ( AF1_x ( float ( 1.0 ) ) - pp . x ) * pp . y ;
if ( biV ) w = pp . x * pp . y ;
#line 295
float dc = lD - lC ;
float cb = lC - lB ;
float lenX = max ( abs ( dc ) , abs ( cb ) ) ;
lenX = APrxLoRcpF1 ( lenX ) ;
float dirX = lD - lB ;
dir . x += dirX * w ;
lenX = ASatF1 ( abs ( dirX ) * lenX ) ;
lenX *= lenX ;
len += lenX * w ;

float ec = lE - lC ;
float ca = lC - lA ;
float lenY = max ( abs ( ec ) , abs ( ca ) ) ;
lenY = APrxLoRcpF1 ( lenY ) ;
float dirY = lE - lA ;
dir . y += dirY * w ;
lenY = ASatF1 ( abs ( dirY ) * lenY ) ;
lenY *= lenY ;
len += lenY * w ; }

void FsrEasuF (
out float3 pix ,
uint2 ip ,
uint4 con0 ,
uint4 con1 ,
uint4 con2 ,
uint4 con3 ) {
#line 324
float2 pp = float2 ( ip ) * asfloat ( uint2 ( con0 . xy ) ) + asfloat ( uint2 ( con0 . zw ) ) ;
float2 fp = floor ( pp ) ;
pp -= fp ;
#line 344
float2 p0 = fp * asfloat ( uint2 ( con1 . xy ) ) + asfloat ( uint2 ( con1 . zw ) ) ;

float2 p1 = p0 + asfloat ( uint2 ( con2 . xy ) ) ;
float2 p2 = p0 + asfloat ( uint2 ( con2 . zw ) ) ;
float2 p3 = p0 + asfloat ( uint2 ( con3 . xy ) ) ;
float4 bczzR = FsrEasuRF ( p0 ) ;
float4 bczzG = FsrEasuGF ( p0 ) ;
float4 bczzB = FsrEasuBF ( p0 ) ;
float4 ijfeR = FsrEasuRF ( p1 ) ;
float4 ijfeG = FsrEasuGF ( p1 ) ;
float4 ijfeB = FsrEasuBF ( p1 ) ;
float4 klhgR = FsrEasuRF ( p2 ) ;
float4 klhgG = FsrEasuGF ( p2 ) ;
float4 klhgB = FsrEasuBF ( p2 ) ;
float4 zzonR = FsrEasuRF ( p3 ) ;
float4 zzonG = FsrEasuGF ( p3 ) ;
float4 zzonB = FsrEasuBF ( p3 ) ;
#line 363
float4 bczzL = bczzB * AF4_x ( float ( 0.5 ) ) + ( bczzR * AF4_x ( float ( 0.5 ) ) + bczzG ) ;
float4 ijfeL = ijfeB * AF4_x ( float ( 0.5 ) ) + ( ijfeR * AF4_x ( float ( 0.5 ) ) + ijfeG ) ;
float4 klhgL = klhgB * AF4_x ( float ( 0.5 ) ) + ( klhgR * AF4_x ( float ( 0.5 ) ) + klhgG ) ;
float4 zzonL = zzonB * AF4_x ( float ( 0.5 ) ) + ( zzonR * AF4_x ( float ( 0.5 ) ) + zzonG ) ;

float bL = bczzL . x ;
float cL = bczzL . y ;
float iL = ijfeL . x ;
float jL = ijfeL . y ;
float fL = ijfeL . z ;
float eL = ijfeL . w ;
float kL = klhgL . x ;
float lL = klhgL . y ;
float hL = klhgL . z ;
float gL = klhgL . w ;
float oL = zzonL . z ;
float nL = zzonL . w ;

float2 dir = AF2_x ( float ( 0.0 ) ) ;
float len = AF1_x ( float ( 0.0 ) ) ;
FsrEasuSetF ( dir , len , pp , true , false , false , false , bL , eL , fL , gL , jL ) ;
FsrEasuSetF ( dir , len , pp , false , true , false , false , cL , fL , gL , hL , kL ) ;
FsrEasuSetF ( dir , len , pp , false , false , true , false , fL , iL , jL , kL , nL ) ;
FsrEasuSetF ( dir , len , pp , false , false , false , true , gL , jL , kL , lL , oL ) ;
#line 389
float2 dir2 = dir * dir ;
float dirR = dir2 . x + dir2 . y ;
bool zro = dirR < AF1_x ( float ( 1.0 / 32768.0 ) ) ;
dirR = APrxLoRsqF1 ( dirR ) ;
dirR = zro ? AF1_x ( float ( 1.0 ) ) : dirR ;
dir . x = zro ? AF1_x ( float ( 1.0 ) ) : dir . x ;
dir *= AF2_x ( float ( dirR ) ) ;

len = len * AF1_x ( float ( 0.5 ) ) ;
len *= len ;

float stretch = ( dir . x * dir . x + dir . y * dir . y ) * APrxLoRcpF1 ( max ( abs ( dir . x ) , abs ( dir . y ) ) ) ;
#line 404
float2 len2 = float2 ( AF1_x ( float ( 1.0 ) ) + ( stretch - AF1_x ( float ( 1.0 ) ) ) * len , AF1_x ( float ( 1.0 ) ) + AF1_x ( float ( - 0.5 ) ) * len ) ;
#line 407
float lob = AF1_x ( float ( 0.5 ) ) + AF1_x ( float ( ( 1.0 / 4.0 - 0.04 ) - 0.5 ) ) * len ;

float clp = APrxLoRcpF1 ( lob ) ;
#line 416
float3 min4 = min ( AMin3F3 ( float3 ( ijfeR . z , ijfeG . z , ijfeB . z ) , float3 ( klhgR . w , klhgG . w , klhgB . w ) , float3 ( ijfeR . y , ijfeG . y , ijfeB . y ) ) ,
float3 ( klhgR . x , klhgG . x , klhgB . x ) ) ;
float3 max4 = max ( AMax3F3 ( float3 ( ijfeR . z , ijfeG . z , ijfeB . z ) , float3 ( klhgR . w , klhgG . w , klhgB . w ) , float3 ( ijfeR . y , ijfeG . y , ijfeB . y ) ) ,
float3 ( klhgR . x , klhgG . x , klhgB . x ) ) ;

float3 aC = AF3_x ( float ( 0.0 ) ) ;
float aW = AF1_x ( float ( 0.0 ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 0.0 , - 1.0 ) - pp , dir , len2 , lob , clp , float3 ( bczzR . x , bczzG . x , bczzB . x ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 1.0 , - 1.0 ) - pp , dir , len2 , lob , clp , float3 ( bczzR . y , bczzG . y , bczzB . y ) ) ;
FsrEasuTapF ( aC , aW , float2 ( - 1.0 , 1.0 ) - pp , dir , len2 , lob , clp , float3 ( ijfeR . x , ijfeG . x , ijfeB . x ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 0.0 , 1.0 ) - pp , dir , len2 , lob , clp , float3 ( ijfeR . y , ijfeG . y , ijfeB . y ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 0.0 , 0.0 ) - pp , dir , len2 , lob , clp , float3 ( ijfeR . z , ijfeG . z , ijfeB . z ) ) ;
FsrEasuTapF ( aC , aW , float2 ( - 1.0 , 0.0 ) - pp , dir , len2 , lob , clp , float3 ( ijfeR . w , ijfeG . w , ijfeB . w ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 1.0 , 1.0 ) - pp , dir , len2 , lob , clp , float3 ( klhgR . x , klhgG . x , klhgB . x ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 2.0 , 1.0 ) - pp , dir , len2 , lob , clp , float3 ( klhgR . y , klhgG . y , klhgB . y ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 2.0 , 0.0 ) - pp , dir , len2 , lob , clp , float3 ( klhgR . z , klhgG . z , klhgB . z ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 1.0 , 0.0 ) - pp , dir , len2 , lob , clp , float3 ( klhgR . w , klhgG . w , klhgB . w ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 1.0 , 2.0 ) - pp , dir , len2 , lob , clp , float3 ( zzonR . z , zzonG . z , zzonB . z ) ) ;
FsrEasuTapF ( aC , aW , float2 ( 0.0 , 2.0 ) - pp , dir , len2 , lob , clp , float3 ( zzonR . w , zzonG . w , zzonB . w ) ) ;
#line 437
pix = min ( max4 , max ( min4 , aC * AF3_x ( float ( ARcpF1 ( aW ) ) ) ) ) ; }
#line 662
void FsrRcasCon (
out uint4 con ,

float sharpness ) {

sharpness = exp2 ( float ( - sharpness ) ) ;
float2 hSharp = float2 ( sharpness , sharpness ) ;
con [ 0 ] = asuint ( float ( sharpness ) ) ;
con [ 1 ] = AU1_AH2_AF2_x ( float2 ( hSharp ) ) ;
con [ 2 ] = 0 ;
con [ 3 ] = 0 ; }
#line 681
float4 FsrRcasLoadF ( int2 p ) ;
void FsrRcasInputF ( inout float r , inout float g , inout float b ) ;

void FsrRcasF (
out float pixR ,
out float pixG ,
out float pixB ,
#line 691
uint2 ip ,
uint4 con ) {
#line 697
int2 sp = int2 ( ip ) ;
float3 b = FsrRcasLoadF ( sp + int2 ( 0 , - 1 ) ) . rgb ;
float3 d = FsrRcasLoadF ( sp + int2 ( - 1 , 0 ) ) . rgb ;
#line 704
float3 e = FsrRcasLoadF ( sp ) . rgb ;

float3 f = FsrRcasLoadF ( sp + int2 ( 1 , 0 ) ) . rgb ;
float3 h = FsrRcasLoadF ( sp + int2 ( 0 , 1 ) ) . rgb ;

float bR = b . r ;
float bG = b . g ;
float bB = b . b ;
float dR = d . r ;
float dG = d . g ;
float dB = d . b ;
float eR = e . r ;
float eG = e . g ;
float eB = e . b ;
float fR = f . r ;
float fG = f . g ;
float fB = f . b ;
float hR = h . r ;
float hG = h . g ;
float hB = h . b ;

FsrRcasInputF ( bR , bG , bB ) ;
FsrRcasInputF ( dR , dG , dB ) ;
FsrRcasInputF ( eR , eG , eB ) ;
FsrRcasInputF ( fR , fG , fB ) ;
FsrRcasInputF ( hR , hG , hB ) ;

float bL = bB * AF1_x ( float ( 0.5 ) ) + ( bR * AF1_x ( float ( 0.5 ) ) + bG ) ;
float dL = dB * AF1_x ( float ( 0.5 ) ) + ( dR * AF1_x ( float ( 0.5 ) ) + dG ) ;
float eL = eB * AF1_x ( float ( 0.5 ) ) + ( eR * AF1_x ( float ( 0.5 ) ) + eG ) ;
float fL = fB * AF1_x ( float ( 0.5 ) ) + ( fR * AF1_x ( float ( 0.5 ) ) + fG ) ;
float hL = hB * AF1_x ( float ( 0.5 ) ) + ( hR * AF1_x ( float ( 0.5 ) ) + hG ) ;

float nz = AF1_x ( float ( 0.25 ) ) * bL + AF1_x ( float ( 0.25 ) ) * dL + AF1_x ( float ( 0.25 ) ) * fL + AF1_x ( float ( 0.25 ) ) * hL - eL ;
nz = ASatF1 ( abs ( nz ) * APrxMedRcpF1 ( AMax3F1 ( AMax3F1 ( bL , dL , eL ) , fL , hL ) - AMin3F1 ( AMin3F1 ( bL , dL , eL ) , fL , hL ) ) ) ;
nz = AF1_x ( float ( - 0.5 ) ) * nz + AF1_x ( float ( 1.0 ) ) ;

float mn4R = min ( AMin3F1 ( bR , dR , fR ) , hR ) ;
float mn4G = min ( AMin3F1 ( bG , dG , fG ) , hG ) ;
float mn4B = min ( AMin3F1 ( bB , dB , fB ) , hB ) ;
float mx4R = max ( AMax3F1 ( bR , dR , fR ) , hR ) ;
float mx4G = max ( AMax3F1 ( bG , dG , fG ) , hG ) ;
float mx4B = max ( AMax3F1 ( bB , dB , fB ) , hB ) ;

float2 peakC = float2 ( 1.0 , - 1.0 * 4.0 ) ;

float hitMinR = min ( mn4R , eR ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mx4R ) ;
float hitMinG = min ( mn4G , eG ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mx4G ) ;
float hitMinB = min ( mn4B , eB ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mx4B ) ;
float hitMaxR = ( peakC . x - max ( mx4R , eR ) ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mn4R + peakC . y ) ;
float hitMaxG = ( peakC . x - max ( mx4G , eG ) ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mn4G + peakC . y ) ;
float hitMaxB = ( peakC . x - max ( mx4B , eB ) ) * ARcpF1 ( AF1_x ( float ( 4.0 ) ) * mn4B + peakC . y ) ;
float lobeR = max ( - hitMinR , hitMaxR ) ;
float lobeG = max ( - hitMinG , hitMaxG ) ;
float lobeB = max ( - hitMinB , hitMaxB ) ;
float lobe = max ( AF1_x ( float ( - ( 0.25 - ( 1.0 / 16.0 ) ) ) ) , min ( AMax3F1 ( lobeR , lobeG , lobeB ) , AF1_x ( float ( 0.0 ) ) ) ) * asfloat ( uint ( con . x ) ) ;
#line 765
float rcpL = APrxMedRcpF1 ( AF1_x ( float ( 4.0 ) ) * lobe + AF1_x ( float ( 1.0 ) ) ) ;
pixR = ( lobe * bR + lobe * dR + lobe * hR + lobe * fR + eR ) * rcpL ;
pixG = ( lobe * bG + lobe * dG + lobe * hG + lobe * fG + eG ) * rcpL ;
pixB = ( lobe * bB + lobe * dB + lobe * hB + lobe * fB + eB ) * rcpL ;
return ; }
#line 1014
void FsrLfgaF ( inout float3 c , float3 t , float a ) { c += ( t * AF3_x ( float ( a ) ) ) * min ( AF3_x ( float ( 1.0 ) ) - c , c ) ; }
#line 1043
void FsrSrtmF ( inout float3 c ) { c *= AF3_x ( float ( ARcpF1 ( AMax3F1 ( c . r , c . g , c . b ) + AF1_x ( float ( 1.0 ) ) ) ) ) ; }

void FsrSrtmInvF ( inout float3 c ) { c *= AF3_x ( float ( ARcpF1 ( max ( AF1_x ( float ( 1.0 / 32768.0 ) ) , AF1_x ( float ( 1.0 ) ) - AMax3F1 ( c . r , c . g , c . b ) ) ) ) ) ; }
#line 1086
float FsrTepdDitF ( uint2 p , uint f ) {
float x = AF1_x ( float ( p . x + f ) ) ;
float y = AF1_x ( float ( p . y ) ) ;

float a = AF1_x ( float ( ( 1.0 + sqrt ( 5.0 ) ) / 2.0 ) ) ;

float b = AF1_x ( float ( 1.0 / 3.69 ) ) ;
x = x * a + ( y * b ) ;
return AFractF1 ( x ) ; }
#line 1099
void FsrTepdC8F ( inout float3 c , float dit ) {
float3 n = sqrt ( c ) ;
n = floor ( n * AF3_x ( float ( 255.0 ) ) ) * AF3_x ( float ( 1.0 / 255.0 ) ) ;
float3 a = n * n ;
float3 b = n + AF3_x ( float ( 1.0 / 255.0 ) ) ; b = b * b ;
#line 1107
float3 r = ( c - b ) * APrxMedRcpF3 ( a - b ) ;
#line 1110
c = ASatF3 ( n + AGtZeroF3 ( AF3_x ( float ( dit ) ) - r ) * AF3_x ( float ( 1.0 / 255.0 ) ) ) ; }
#line 1115
void FsrTepdC10F ( inout float3 c , float dit ) {
float3 n = sqrt ( c ) ;
n = floor ( n * AF3_x ( float ( 1023.0 ) ) ) * AF3_x ( float ( 1.0 / 1023.0 ) ) ;
float3 a = n * n ;
float3 b = n + AF3_x ( float ( 1.0 / 1023.0 ) ) ; b = b * b ;
float3 r = ( c - b ) * APrxMedRcpF3 ( a - b ) ;
c = ASatF3 ( n + AGtZeroF3 ( AF3_x ( float ( dit ) ) - r ) * AF3_x ( float ( 1.0 / 1023.0 ) ) ) ; }
#line 57 "D:/unity/BoatAttack/Library/PackageCache/com.unity.render-pipelines.core@15.0.1/Runtime/PostProcessing/Shaders/FSRCommon.hlsl"
float4 _FsrEasuConstants0 ;
float4 _FsrEasuConstants1 ;
float4 _FsrEasuConstants2 ;
float4 _FsrEasuConstants3 ;
#line 85
float4 FsrEasuRF ( float2 p )
{
return _BlitTexture . GatherRed ( sampler_LinearClamp , p ) ;
}
float4 FsrEasuGF ( float2 p )
{
return _BlitTexture . GatherGreen ( sampler_LinearClamp , p ) ;
}
float4 FsrEasuBF ( float2 p )
{
return _BlitTexture . GatherBlue ( sampler_LinearClamp , p ) ;
}
#line 108
float3 ApplyEASU ( uint2 positionSS )
{
#line 116
float3 color ;
FsrEasuF (

color , positionSS , asuint ( _FsrEasuConstants0 ) , asuint ( _FsrEasuConstants1 ) , asuint ( _FsrEasuConstants2 ) , asuint ( _FsrEasuConstants3 )
) ;
return color ;
}
#line 127
float4 _FsrRcasConstants ;
#line 145
float4 FsrRcasLoadF ( int2 p )
{
return _BlitTexture . Load ( int3 ( p , 0 ) ) ;
}
void FsrRcasInputF ( inout float r , inout float g , inout float b )
{

}
#line 170
float3 ApplyRCAS ( uint2 positionSS )

{
#line 186
float3 color ;

FsrRcasF (

color . r ,
color . g ,
color . b ,
#line 196
positionSS ,
asuint ( _FsrRcasConstants )
) ;
return color ;
}
#line 44 ""
half4 FragFinalPost ( Varyings input ) : SV_Target
{
;

float2 uv = input . texcoord ;
float2 positionNDC = uv ;
int2 positionSS = uv * _SourceSize . xy ;
#line 55
half3 color = ApplyRCAS ( positionSS ) ;
#line 78
{
color = LinearToSRGB ( color ) ;
}
#line 84
{
color = ApplyDithering ( color , positionNDC , _BlueNoise_Texture , sampler_PointRepeat , _Dithering_Params . xy , _Dithering_Params . zw ) ;
}
#line 89
half4 finalColor = half4 ( color , 1 ) ;
#line 100
return finalColor ;
}
