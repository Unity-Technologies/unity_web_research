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
	vec4 _MainTex_ST;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _SecondTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec2 u_xlat2;
vec3 u_xlat3;
float u_xlat4;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_SecondTex;
void main()
{
    u_xlat0.xyz = vs_TEXCOORD0.xxy * vec3(0.5, 0.5, 1.0);
    u_xlat1.xy = texture(sampler2D(_SecondTex, sampler_SecondTex), u_xlat0.yz).xy;
    u_xlat1.xzw = u_xlat1.yxx * vec3(1.59375, 0.390625, 1.984375);
    u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.yz).w;
    u_xlat2.x = _MainTex_ST.x * 0.5 + u_xlat0.x;
    u_xlat0.x = u_xlat4 * 1.15625 + (-u_xlat1.z);
    u_xlat0.yz = vec2(u_xlat4) * vec2(1.15625, 1.15625) + u_xlat1.xw;
    u_xlat0.x = (-u_xlat1.y) * 0.8125 + u_xlat0.x;
    u_xlat3.xyz = u_xlat0.yxz + vec3(-0.872539997, 0.531369984, -1.06861997);
    u_xlat0.xyz = u_xlat3.xyz * vec3(0.305306017, 0.305306017, 0.305306017) + vec3(0.682171106, 0.682171106, 0.682171106);
    u_xlat0.xyz = u_xlat3.xyz * u_xlat0.xyz + vec3(0.0125228781, 0.0125228781, 0.0125228781);
    SV_Target0.xyz = u_xlat0.xyz * u_xlat3.xyz;
    u_xlat2.y = vs_TEXCOORD0.y;
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).w;
    u_xlat0.x = u_xlat0.x + -0.0627449974;
    SV_Target0.w = u_xlat0.x * 1.15625;
    return;
}

