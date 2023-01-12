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
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec2 u_xlat2;
vec3 u_xlat3;
vec2 u_xlat5;
float u_xlat10;
float u_xlat12;
float u_xlat13;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat12 = dot(u_xlat0.xyz, vec3(2.43251014, 11.4688454, 1.76049244));
    u_xlat1 = vec4(u_xlat12) * vec4(0.00778222037, 5.98477382e-05, -0.000328985829, 0.232164323);
    u_xlat2.xy = vec2(u_xlat12) * vec2(0.137866527, 0.00933136418);
    u_xlat12 = dot(u_xlat0.xyz, vec3(6.5019784, 11.0320301, 1.22384095));
    u_xlat10 = u_xlat12 * 0.00778222037;
    u_xlat1.x = u_xlat1.x / u_xlat10;
    u_xlatb1 = u_xlat1.x<0.834949017;
    u_xlat5.xy = vec2(u_xlat12) * vec2(-4.58941759e-06, 0.000198408336) + u_xlat1.yz;
    u_xlat13 = u_xlat12 * 0.239932507 + (-u_xlat1.w);
    u_xlat5.xy = u_xlat5.xy * vec2(98.8431854, -58.8051376);
    u_xlat1.x = (u_xlatb1) ? u_xlat5.x : u_xlat5.y;
    u_xlat3.x = u_xlat1.x * 1.61047399 + u_xlat13;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat5.x = u_xlat12 * -0.0504402146 + u_xlat2.x;
    u_xlat12 = u_xlat12 * -0.00292370259 + (-u_xlat2.y);
    u_xlat3.z = u_xlat1.x * 14.2738457 + u_xlat12;
    u_xlat3.z = clamp(u_xlat3.z, 0.0, 1.0);
    u_xlat3.y = (-u_xlat1.x) * 2.53264189 + u_xlat5.x;
    u_xlat3.y = clamp(u_xlat3.y, 0.0, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat3.xyz;
    SV_Target0.xyz = _Params.xxx * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

