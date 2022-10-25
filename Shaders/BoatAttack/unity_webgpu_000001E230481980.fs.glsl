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
	vec4 _ClipRect;
	float _MaskWipeControl;
	float _MaskEdgeSoftness;
	vec4 _MaskEdgeColor;
	int _MaskInverse;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MaskTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec4 vs_TEXCOORD0;
layout(location = 2) in highp vec4 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MaskTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
float u_xlat8;
bool u_xlatb8;
    u_xlat0.x = (_MaskInverse != 0) ? 1.0 : 0.0;
    u_xlat4.x = texture(sampler2D(_MaskTex, sampler_MaskTex), vs_TEXCOORD0.zw).w;
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat4.x = (-_MaskWipeControl) + 1.0;
    u_xlat0.x = u_xlat4.x * _MaskEdgeSoftness + abs(u_xlat0.x);
    u_xlat0.x = u_xlat0.x + (-_MaskWipeControl);
    u_xlat0.x = u_xlat0.x / _MaskEdgeSoftness;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4.xy = (-_ClipRect.xy) + _ClipRect.zw;
    u_xlat4.xy = u_xlat4.xy + -abs(vs_TEXCOORD2.xy);
    u_xlat4.xy = u_xlat4.xy * vs_TEXCOORD2.zw;
    u_xlat4.xy = clamp(u_xlat4.xy, 0.0, 1.0);
    u_xlat4.x = u_xlat4.y * u_xlat4.x;
    u_xlat8 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat8 = u_xlat8 * vs_TEXCOORD1.x + (-vs_TEXCOORD1.w);
    u_xlat8 = clamp(u_xlat8, 0.0, 1.0);
    u_xlat1 = vec4(u_xlat8) * vs_COLOR0;
    u_xlat2.w = u_xlat4.x * u_xlat1.w;
    u_xlat3.xyz = u_xlat2.www * _MaskEdgeColor.xyz;
    u_xlat8 = u_xlat2.w * u_xlat0.x + -0.00100000005;
    u_xlatb8 = u_xlat8<0.0;
    if(((int(u_xlatb8) * int(0xffffffffu)))!=0){discard;}
    u_xlat4.xyz = u_xlat1.xyz * u_xlat4.xxx + (-u_xlat3.xyz);
    u_xlat2.xyz = u_xlat0.xxx * u_xlat4.xyz + u_xlat3.xyz;
    u_xlat0 = u_xlat0.xxxx * u_xlat2;
    SV_Target0 = u_xlat0;
    return;
}

