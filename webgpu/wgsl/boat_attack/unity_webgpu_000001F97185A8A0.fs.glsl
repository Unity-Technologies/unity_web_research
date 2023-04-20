#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

layout(origin_upper_left) in vec4 gl_FragCoord;
#define HLSLCC_ENABLE_UNIFORM_BUFFERS 1
#if HLSLCC_ENABLE_UNIFORM_BUFFERS
#define UNITY_UNIFORM
#else
#define UNITY_UNIFORM uniform
#endif
#define UNITY_SUPPORTS_UNIFORM_LOCATION 1
#if UNITY_SUPPORTS_UNIFORM_LOCATION
#define UNITY_LOCATION(x) layout(location = x)
#define UNITY_BINDING(x) layout(binding = x, std140)
#else
#define UNITY_LOCATION(x)
#define UNITY_BINDING(x) layout(std140)
#endif
precise vec4 u_xlat_precise_vec4;
precise ivec4 u_xlat_precise_ivec4;
precise bvec4 u_xlat_precise_bvec4;
precise uvec4 u_xlat_precise_uvec4;
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _GlobalMipBias;
	float _AlphaToMaskAvailable;
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 _BaseMap_ST;
	vec4 _BaseColor;
	vec4 _SpecColor;
	vec4 _EmissionColor;
	float _Cutoff;
	float _Surface;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BaseMap;
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(location = 0) in highp  vec2 vs_TEXCOORD1;
layout(location = 1) in highp  vec4 vs_TEXCOORD2;
layout(location = 2) in highp  vec4 vs_TEXCOORD3;
layout(location = 3) in highp  vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
float u_xlat2;
float u_xlat4;
bool u_xlatb4;
float u_xlat6;
bool u_xlatb6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_BaseMap;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BumpMap;
void main()
{
    u_xlat0.x = texture(sampler2D(_BaseMap, sampler_BaseMap), vs_TEXCOORD1.xy, _GlobalMipBias.x).w;
    u_xlat2 = u_xlat0.x * _BaseColor.w;
    u_xlat0.x = u_xlat0.x * _BaseColor.w + (-_Cutoff);
    u_xlat4 = dFdxCoarse(u_xlat2);
    u_xlat6 = dFdyCoarse(u_xlat2);
    u_xlat4 = abs(u_xlat6) + abs(u_xlat4);
    u_xlat4 = max(u_xlat4, 9.99999975e-05);
    u_xlat0.x = u_xlat0.x / u_xlat4;
    u_xlat0.x = u_xlat0.x + 0.5;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb4 = _AlphaToMaskAvailable!=0.0;
    u_xlatb6 = u_xlat2>=_Cutoff;
    u_xlat2 = u_xlatb6 ? u_xlat2 : float(0.0);
    u_xlat0.x = (u_xlatb4) ? u_xlat0.x : u_xlat2;
    u_xlat0.x = u_xlat0.x + -9.99999975e-05;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyw;
    u_xlat0.x = u_xlat0.x * u_xlat0.z;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1.xyz = u_xlat0.yyy * vs_TEXCOORD4.xyz;
    u_xlat1.xyz = u_xlat0.xxx * vs_TEXCOORD3.xyz + u_xlat1.xyz;
    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = max(u_xlat0.x, 1.00000002e-16);
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD2.xyz + u_xlat1.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    SV_Target0.w = 0.0;
    return;
}

