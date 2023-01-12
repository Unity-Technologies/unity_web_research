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
	vec4 _Time;
	vec4 _VeinColor;
	vec4 _BrainColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Occlusion;
layout(set = 0, binding = 2) uniform mediump texture2D _Metallic;
layout(set = 0, binding = 3) uniform mediump texture2D _NormalMap;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_Metallic;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_NormalMap;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Occlusion;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
float u_xlat6;
float u_xlat9;
    u_xlat0.x = texture(sampler2D(_Occlusion, sampler_Occlusion), vs_TEXCOORD0.xy).x;
    SV_Target0.w = u_xlat0.x;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1 = texture(sampler2D(_Metallic, sampler_Metallic), vs_TEXCOORD0.xy);
    u_xlat9 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    SV_Target1.w = u_xlat1.w;
    u_xlat0.xy = (-u_xlat1.yz) + vec2(1.0, 1.0);
    u_xlat1.xyz = texture(sampler2D(_NormalMap, sampler_NormalMap), vs_TEXCOORD0.xy).xyw;
    u_xlat1.x = u_xlat1.z * u_xlat1.x;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat6 = min(u_xlat6, 1.0);
    u_xlat6 = (-u_xlat6) + 1.0;
    u_xlat1.z = sqrt(u_xlat6);
    u_xlat2.x = dot(vs_TEXCOORD1.xyz, u_xlat1.xyz);
    u_xlat2.y = dot(vs_TEXCOORD2.xyz, u_xlat1.xyz);
    u_xlat2.z = dot(vs_TEXCOORD3.xyz, u_xlat1.xyz);
    u_xlat6 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat1.xyz = vec3(u_xlat6) * u_xlat2.xyz;
    SV_Target2.xyz = u_xlat1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    u_xlat6 = fract(_Time.y);
    u_xlat6 = u_xlat6 + -0.0399999991;
    u_xlat6 = (-u_xlat6) + vs_TEXCOORD0.y;
    u_xlat6 = u_xlat6 * 12.5;
    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
    u_xlat9 = u_xlat6 * -2.0 + 3.0;
    u_xlat6 = u_xlat6 * u_xlat6;
    u_xlat6 = u_xlat6 * u_xlat9;
    u_xlat6 = u_xlat6 * 3.1400001;
    u_xlat6 = sin(u_xlat6);
    u_xlat6 = max(u_xlat6, 0.0);
    u_xlat1.xyz = u_xlat0.yyy * _VeinColor.xyz;
    u_xlat0.xyw = u_xlat0.xxx * _BrainColor.xyz;
    u_xlat1.xyz = vec3(u_xlat6) * u_xlat1.xyz;
    u_xlat6 = _Time.y * 0.200000003;
    u_xlat6 = fract(u_xlat6);
    u_xlat6 = u_xlat6 * 3.1400001;
    u_xlat6 = sin(u_xlat6);
    SV_Target3.xyz = u_xlat0.xyw * vec3(u_xlat6) + u_xlat1.xyz;
    SV_Target3.w = 1.0;
    return;
}

