#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 _MainTex_TexelSize;
	vec4 _MRLL_TexelSize;
	vec4 _BumpMap_TexelSize;
	vec4 _Color1;
	vec4 _Color2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MRLL;
layout(location = 0) in highp  vec4 vs_INTERP0;
layout(location = 0) out highp vec4 SV_TARGET0;
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec3 u_xlat4;
vec3 u_xlat5;
float u_xlat15;
layout(set = 0, binding = 2) uniform mediump  sampler samplerSamplerState_Trilinear_Clamp;
void main()
{
    u_xlat0.xy = texture(sampler2D(_MRLL, samplerSamplerState_Trilinear_Clamp), vs_INTERP0.xy, _GlobalMipBias.x).zw;
    u_xlat1.xyz = u_xlat0.yyy * _Color2.xyz;
    u_xlat1.xyz = _Color1.xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.x = u_xlat0.y + u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat5.xyz = (-u_xlat1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = texture(sampler2D(_MainTex, samplerSamplerState_Trilinear_Clamp), vs_INTERP0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = (-u_xlat2.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz + u_xlat3.xyz;
    u_xlat5.xyz = (-u_xlat3.xyz) * u_xlat5.xyz + vec3(1.0, 1.0, 1.0);
    u_xlatb3.xyz = greaterThanEqual(vec4(0.5, 0.5, 0.5, 0.0), u_xlat2.xyzx).xyz;
    u_xlat4.x = (u_xlatb3.x) ? float(0.0) : float(1.0);
    u_xlat4.y = (u_xlatb3.y) ? float(0.0) : float(1.0);
    u_xlat4.z = (u_xlatb3.z) ? float(0.0) : float(1.0);
    u_xlat3.x = u_xlatb3.x ? float(1.0) : 0.0;
    u_xlat3.y = u_xlatb3.y ? float(1.0) : 0.0;
    u_xlat3.z = u_xlatb3.z ? float(1.0) : 0.0;
;
    u_xlat5.xyz = u_xlat5.xyz * u_xlat4.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat1.xyz;
    u_xlat5.xyz = u_xlat1.xyz * u_xlat3.xyz + u_xlat5.xyz;
    u_xlat5.xyz = (-u_xlat2.xyz) + u_xlat5.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat5.xyz + u_xlat2.xyz;
    u_xlat15 = u_xlat2.x + -0.150000006;
    u_xlat15 = ceil(u_xlat15);
    u_xlat15 = (-u_xlat15) + 1.0;
    SV_TARGET0.xyz = vec3(u_xlat15) * vec3(0.400000006, 0.400000006, 0.400000006) + u_xlat0.xyz;
    SV_TARGET0.w = 1.0;
    return;
}

