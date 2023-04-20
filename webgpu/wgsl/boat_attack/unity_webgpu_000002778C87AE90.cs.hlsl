#line 6 "D:/unity/BoatAttack_fix/Library/PackageCache/com.unity.cinemachine@2.9.5/Editor/EditorResources/StdLib.hlsl"
const float _RenderViewportScaleFactor = 1 ;
#line 10
float3 PositivePow ( float3 base , float3 power )
{
return pow ( max ( abs ( base ) , float3 ( 1.192092896e-07 , 1.192092896e-07 , 1.192092896e-07 ) ) , power ) ;
}
#line 23
float2 TransformStereoScreenSpaceTex ( float2 uv , float w )
{
return uv * _RenderViewportScaleFactor ;
}
#line 30
float2 TransformTriangleVertexToUV ( float2 vertex )
{
float2 uv = ( vertex + 1.0 ) * 0.5 ;
return uv ;
}

struct AttributesDefault
{
float3 vertex : POSITION ;
} ;

struct VaryingsDefault
{
float4 vertex : SV_POSITION ;
float2 texcoord : TEXCOORD0 ;
float2 texcoordStereo : TEXCOORD1 ;
} ;

VaryingsDefault VertDefault ( AttributesDefault v )
{
VaryingsDefault o ;
o . vertex = float4 ( v . vertex . xy , 0.0 , 1.0 ) ;
o . texcoord = TransformTriangleVertexToUV ( v . vertex . xy ) ;
#line 58
o . texcoordStereo = TransformStereoScreenSpaceTex ( o . texcoord , 1.0 ) ;

return o ;
}
#line 3 "Packages/com.unity.cinemachine/Editor/EditorResources/CMWaveform.compute"
RWStructuredBuffer < uint4 > _WaveformBuffer ;
Texture2D < float4 > _Source ;
SamplerState sampler_Source ;

cbuffer name
{
float4 _Params ;
} ;
#line 22
half3 LinearToSRGB ( half3 c )
{
half3 sRGBLo = c * 12.92 ;
half3 sRGBHi = ( PositivePow ( c , half3 ( 1.0 / 2.4 , 1.0 / 2.4 , 1.0 / 2.4 ) ) * 1.055 ) - 0.055 ;
half3 sRGB = ( c <= 0.0031308 ) ? sRGBLo : sRGBHi ;
return sRGB ;
}
#line 31
[ numthreads ( 1 , 256 , 1 ) ]
void KCMWaveformGather ( uint2 dispatchThreadId : SV_DispatchThreadID )
{

if ( dispatchThreadId . x < uint ( _Params . x ) && dispatchThreadId . y < uint ( _Params . y ) )
{
float3 color = _Source [ dispatchThreadId ] . rgb ;
color = saturate ( color ) ;
#line 41
if ( _Params . z > 0 )
color = LinearToSRGB ( color ) ;
#line 45
uint3 idx = ( uint3 ) ( round ( color * ( _Params . w - 1 ) ) ) ;
idx += dispatchThreadId . x * _Params . w ;

if ( idx . x > 0u ) InterlockedAdd ( _WaveformBuffer [ idx . x ] . x , 1u ) ;
if ( idx . y > 0u ) InterlockedAdd ( _WaveformBuffer [ idx . y ] . y , 1u ) ;
if ( idx . z > 0u ) InterlockedAdd ( _WaveformBuffer [ idx . z ] . z , 1u ) ;
}
}
#line 55
[ numthreads ( 16 , 16 , 1 ) ]
void KCMWaveformClear ( uint2 dispatchThreadId : SV_DispatchThreadID )
{
if ( dispatchThreadId . x < uint ( _Params . x ) && dispatchThreadId . y < uint ( _Params . w ) )
_WaveformBuffer [ dispatchThreadId . y * uint ( _Params . x ) + dispatchThreadId . x ] = uint4 ( 0u , 0u , 0u , 0u ) ;
}
