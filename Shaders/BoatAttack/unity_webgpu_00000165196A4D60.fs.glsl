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
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
float u_xlat3;
float u_xlat5;
    u_xlat0.x = _Params.w + _Params.w;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = min(u_xlat2.xyz, _Params.yyy);
    u_xlat1.x = max(u_xlat2.y, u_xlat2.x);
    u_xlat1.x = max(u_xlat2.z, u_xlat1.x);
    u_xlat3 = u_xlat1.x + (-_Params.z);
    u_xlat1.z = u_xlat3 + _Params.w;
    u_xlat1.xz = max(u_xlat1.xz, vec2(9.99999975e-05, 0.0));
    u_xlat0.x = min(u_xlat0.x, u_xlat1.z);
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat5 = _Params.w * 4.0 + 9.99999975e-05;
    u_xlat0.x = u_xlat0.x / u_xlat5;
    u_xlat0.x = max(u_xlat0.x, u_xlat3);
    u_xlat0.x = u_xlat0.x / u_xlat1.x;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
    SV_Target0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    SV_Target0.w = 1.0;
    return;
}

