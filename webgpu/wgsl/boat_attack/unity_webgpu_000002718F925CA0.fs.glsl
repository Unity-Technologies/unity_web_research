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
layout(set = 0, binding = 1) uniform mediump texture2D _SourceTexLowMip;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0 = texture(sampler2D(_SourceTexLowMip, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat0.xyz = u_xlat0.www * u_xlat0.xyz;
    u_xlat1 = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.xyz = u_xlat1.www * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(8.0, 8.0, 8.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(8.0, 8.0, 8.0) + (-u_xlat1.xyz);
    u_xlat0.xyz = _Params.xxx * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.125, 0.125, 0.125);
    u_xlat6 = max(u_xlat0.y, u_xlat0.x);
    u_xlat1.x = max(u_xlat0.z, 9.99999975e-06);
    u_xlat6 = max(u_xlat6, u_xlat1.x);
    u_xlat6 = u_xlat6 * 255.0;
    u_xlat6 = ceil(u_xlat6);
    u_xlat6 = u_xlat6 * 0.00392156886;
    SV_Target0.xyz = u_xlat0.xyz / vec3(u_xlat6);
    SV_Target0.w = u_xlat6;
    return;
}

