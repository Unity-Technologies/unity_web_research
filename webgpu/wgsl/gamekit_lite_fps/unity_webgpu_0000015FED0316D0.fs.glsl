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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 _MainTex_TexelSize;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
float u_xlat3;
vec2 u_xlat4;
bool u_xlatb4;
vec2 u_xlat5;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0 = _MainTex_TexelSize.xyxy * vec4(-0.5, -0.5, 0.5, -0.5) + vs_TEXCOORD0.xyxy;
    u_xlat0.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).xy;
    u_xlat4.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw).xy;
    u_xlat1.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat3 = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlatb1 = u_xlat1.x<u_xlat3;
    u_xlat0.xy = (bool(u_xlatb1)) ? u_xlat4.xy : u_xlat0.xy;
    u_xlat4.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1 = _MainTex_TexelSize.xyxy * vec4(-0.5, 0.5, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xy;
    u_xlat5.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xy;
    u_xlat6 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlatb4 = u_xlat4.x<u_xlat6;
    u_xlat0.xy = (bool(u_xlatb4)) ? u_xlat1.xy : u_xlat0.xy;
    u_xlat4.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat6 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlatb4 = u_xlat4.x<u_xlat6;
    SV_Target0.xy = (bool(u_xlatb4)) ? u_xlat5.xy : u_xlat0.xy;
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

