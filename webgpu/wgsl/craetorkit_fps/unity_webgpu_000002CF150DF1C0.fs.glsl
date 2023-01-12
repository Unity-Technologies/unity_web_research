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
	vec4 _Color;
	vec3 _EmissionColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _EmissionMap;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_EmissionMap;
void main()
{
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat4;
bool u_xlatb4;
float u_xlat9;
bool u_xlatb9;
    u_xlatb0 = vs_COLOR0.y>=vs_COLOR0.z;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat1.xy = vs_COLOR0.yz;
    u_xlat1.z = float(0.0);
    u_xlat1.w = float(-0.333333343);
    u_xlat2.xy = vs_COLOR0.zy;
    u_xlat2.z = float(-1.0);
    u_xlat2.w = float(0.666666687);
    u_xlat1 = u_xlat1 + (-u_xlat2);
    u_xlat0 = u_xlat0.xxxx * u_xlat1.xywz + u_xlat2.xywz;
    u_xlatb1 = vs_COLOR0.x>=u_xlat0.x;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat2.z = u_xlat0.w;
    u_xlat0.w = vs_COLOR0.x;
    u_xlat2.xyw = u_xlat0.wyx;
    u_xlat2 = (-u_xlat0) + u_xlat2;
    u_xlat0 = u_xlat1.xxxx * u_xlat2 + u_xlat0;
    u_xlat1.x = min(u_xlat0.y, u_xlat0.w);
    u_xlat1.x = u_xlat0.x + (-u_xlat1.x);
    u_xlat4 = u_xlat1.x * 6.0 + 9.99999975e-05;
    u_xlat3.x = (-u_xlat0.y) + u_xlat0.w;
    u_xlat3.x = u_xlat3.x / u_xlat4;
    u_xlat3.x = u_xlat3.x + u_xlat0.z;
    u_xlat0.x = u_xlat0.x + 9.99999975e-05;
    u_xlat0.x = u_xlat1.x / u_xlat0.x;
    u_xlat3.xyz = abs(u_xlat3.xxx) + vec3(1.0, 0.666666687, 0.333333343);
    u_xlat3.xyz = fract(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
    u_xlat3.xyz = abs(u_xlat3.xyz) + vec3(-1.0, -1.0, -1.0);
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz + vec3(-1.0, -1.0, -1.0);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat2 = u_xlat1 * _Color;
    u_xlatb9 = u_xlat2.y>=u_xlat2.z;
    u_xlat9 = u_xlatb9 ? 1.0 : float(0.0);
    u_xlat4 = u_xlat1.y * _Color.y + (-u_xlat2.z);
    u_xlat9 = u_xlat9 * u_xlat4 + u_xlat2.z;
    u_xlatb4 = u_xlat2.x>=u_xlat9;
    SV_Target0.w = u_xlat2.w * vs_COLOR0.w;
    u_xlat4 = u_xlatb4 ? 1.0 : float(0.0);
    u_xlat1.x = u_xlat1.x * _Color.x + (-u_xlat9);
    u_xlat9 = u_xlat4 * u_xlat1.x + u_xlat9;
    u_xlat1.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(_EmissionColor.x, _EmissionColor.y, _EmissionColor.z);
    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz + u_xlat1.xyz;
    return;
}

