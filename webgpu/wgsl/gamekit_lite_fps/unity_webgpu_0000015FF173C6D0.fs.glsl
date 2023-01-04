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
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	vec3 _TaaParams;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _CameraMotionVectorsTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _CoCTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec2 u_xlat3;
vec3 u_xlat5;
bool u_xlatb5;
bool u_xlatb6;
float u_xlat8;
bool u_xlatb9;
vec2 u_xlat11;
float u_xlat12;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_CameraMotionVectorsTexture;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_CoCTex;
void main()
{
    u_xlat0.xy = _MainTex_TexelSize.yy * vec2(-0.0, -1.0);
    u_xlat1 = (-_MainTex_TexelSize.xyyy) * vec4(1.0, 0.0, 0.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat1 = u_xlat1 * vec4(_RenderViewportScaleFactor);
    u_xlat12 = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat1.xy).x;
    u_xlat0.z = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat1.zw).x;
    u_xlat1.xy = vs_TEXCOORD0.xy + (-_TaaParams.xxyz.yz);
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1.x = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat1.xy).x;
    u_xlatb5 = u_xlat12<u_xlat1.x;
    u_xlat2.z = (u_xlatb5) ? u_xlat12 : u_xlat1.x;
    u_xlat12 = max(u_xlat12, u_xlat1.x);
    u_xlat12 = max(u_xlat0.z, u_xlat12);
    u_xlatb9 = u_xlat0.z<u_xlat2.z;
    u_xlat3.xy = _MainTex_TexelSize.xy * vec2(1.0, 0.0);
    u_xlat11.xy = (-u_xlat3.xy);
    u_xlat2.xy = bool(u_xlatb5) ? u_xlat11.xy : vec2(0.0, 0.0);
    u_xlat0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat2.xyz;
    u_xlat2 = _MainTex_TexelSize.yyxy * vec4(0.0, 1.0, 1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat2 = u_xlat2 * vec4(_RenderViewportScaleFactor);
    u_xlat5.z = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat2.xy).x;
    u_xlat2.x = texture(sampler2D(_CoCTex, sampler_CoCTex), u_xlat2.zw).x;
    u_xlatb6 = u_xlat5.z<u_xlat0.z;
    u_xlat5.xy = _MainTex_TexelSize.yy * vec2(0.0, 1.0);
    u_xlat12 = max(u_xlat12, u_xlat5.z);
    u_xlat12 = max(u_xlat2.x, u_xlat12);
    u_xlat0.xyz = (bool(u_xlatb6)) ? u_xlat5.xyz : u_xlat0.xyz;
    u_xlatb5 = u_xlat2.x<u_xlat0.z;
    u_xlat8 = min(u_xlat2.x, u_xlat0.z);
    u_xlat0.xy = (bool(u_xlatb5)) ? u_xlat3.xy : u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy + vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0.xy = texture(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), u_xlat0.xy).xy;
    u_xlat0.xy = (-u_xlat0.xy) + vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).x;
    u_xlat0.x = max(u_xlat8, u_xlat0.x);
    u_xlat0.x = min(u_xlat12, u_xlat0.x);
    u_xlat0.x = (-u_xlat1.x) + u_xlat0.x;
    SV_Target0 = vec4(_TaaParams.z, _TaaParams.z, _TaaParams.z, _TaaParams.z) * u_xlat0.xxxx + u_xlat1.xxxx;
    return;
}

