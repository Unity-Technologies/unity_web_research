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
layout(set = 0, binding = 2) uniform mediump texture2D _History;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraMotionVectorsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
float u_xlat6;
vec2 u_xlat13;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_History;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_CameraMotionVectorsTexture;
void main()
{
    u_xlat0.z = 0.0;
    u_xlat0.xyw = (-_MainTex_TexelSize.xyy);
    u_xlat0 = u_xlat0 + vs_TEXCOORD0.xyxy;
    u_xlat1 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0);
    u_xlat0 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.zw, 0.0);
    u_xlat2 = min(u_xlat0, u_xlat1);
    u_xlat0 = max(u_xlat0, u_xlat1);
    u_xlat1 = _MainTex_TexelSize.xyxy * vec4(1.0, -1.0, -1.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat3 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy, 0.0);
    u_xlat1 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw, 0.0);
    u_xlat2 = min(u_xlat2, u_xlat3);
    u_xlat0 = max(u_xlat0, u_xlat3);
    u_xlat3.x = (-_MainTex_TexelSize.x);
    u_xlat3.y = float(0.0);
    u_xlat13.y = float(0.0);
    u_xlat3.xy = u_xlat3.xy + vs_TEXCOORD0.xy;
    u_xlat4 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy, 0.0);
    u_xlat2 = min(u_xlat2, u_xlat4);
    u_xlat0 = max(u_xlat0, u_xlat4);
    u_xlat13.x = _MainTex_TexelSize.x;
    u_xlat3.xy = u_xlat13.xy + vs_TEXCOORD0.xy;
    u_xlat3 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy, 0.0);
    u_xlat2 = min(u_xlat2, u_xlat3);
    u_xlat0 = max(u_xlat0, u_xlat3);
    u_xlat0 = max(u_xlat1, u_xlat0);
    u_xlat1 = min(u_xlat1, u_xlat2);
    u_xlat2.x = 0.0;
    u_xlat2.y = _MainTex_TexelSize.y;
    u_xlat2.xy = u_xlat2.xy + vs_TEXCOORD0.xy;
    u_xlat2 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy, 0.0);
    u_xlat1 = min(u_xlat1, u_xlat2);
    u_xlat0 = max(u_xlat0, u_xlat2);
    u_xlat2.xy = vs_TEXCOORD0.xy + _MainTex_TexelSize.xy;
    u_xlat2 = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy, 0.0);
    u_xlat1 = min(u_xlat1, u_xlat2);
    u_xlat0 = max(u_xlat0, u_xlat2);
    u_xlat2 = textureLod(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy, 0.0);
    u_xlat1 = min(u_xlat1, u_xlat2);
    u_xlat3.xy = textureLod(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), vs_TEXCOORD1.xy, 0.0).xy;
    u_xlat13.xy = (-u_xlat3.xy) + vs_TEXCOORD0.xy;
    u_xlat3.x = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat3.x = sqrt(u_xlat3.x);
    u_xlat3.x = (-_MainTex_TexelSize.z) * 0.00200000009 + u_xlat3.x;
    u_xlat4 = textureLod(sampler2D(_History, sampler_History), u_xlat13.xy, 0.0);
    u_xlat1 = max(u_xlat1, u_xlat4);
    u_xlat0 = max(u_xlat0, u_xlat2);
    u_xlat0 = min(u_xlat0, u_xlat1);
    u_xlat1.x = _MainTex_TexelSize.z * 0.00150000001;
    u_xlat1.x = float(1.0) / u_xlat1.x;
    u_xlat1.x = u_xlat1.x * u_xlat3.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat6 = u_xlat1.x * -2.0 + 3.0;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * u_xlat6;
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlat2.w = u_xlat1.x * 0.850000024;
    u_xlat1 = u_xlat0 + (-u_xlat2);
    u_xlat0.x = u_xlat0.w * -25.0 + 0.949999988;
    u_xlat0.x = max(u_xlat0.x, 0.699999988);
    u_xlat0.x = min(u_xlat0.x, 0.949999988);
    SV_Target0 = u_xlat0.xxxx * u_xlat1 + u_xlat2;
    return;
}

