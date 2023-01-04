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
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	mat4x4 _NonJitteredVP;
	mat4x4 _PreviousVP;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy).x;
    u_xlat0.x = _ZBufferParams.x * u_xlat0.x + _ZBufferParams.y;
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlat3.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat3.xyz = u_xlat3.xxx * vs_TEXCOORD1.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_CameraToWorld[1];
    u_xlat1 = unity_CameraToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_CameraToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + unity_CameraToWorld[3];
    u_xlat1.xyz = u_xlat0.yyy * _PreviousVP[1].xyw;
    u_xlat1.xyz = _PreviousVP[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = _PreviousVP[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = _PreviousVP[3].xyw * u_xlat0.www + u_xlat1.xyz;
    u_xlat1.xy = u_xlat1.xy / u_xlat1.zz;
    u_xlat1.xy = u_xlat1.xy + vec2(1.0, 1.0);
    u_xlat1.x = u_xlat1.x * 0.5;
    u_xlat1.z = (-u_xlat1.y) * 0.5 + 1.0;
    u_xlat2.xyz = u_xlat0.yyy * _NonJitteredVP[1].xyw;
    u_xlat2.xyz = _NonJitteredVP[0].xyw * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = _NonJitteredVP[2].xyw * u_xlat0.zzz + u_xlat2.xyz;
    u_xlat0.xyz = _NonJitteredVP[3].xyw * u_xlat0.www + u_xlat0.xyz;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.zz;
    u_xlat0.xy = u_xlat0.xy + vec2(1.0, 1.0);
    u_xlat0.x = u_xlat0.x * 0.5;
    u_xlat0.z = (-u_xlat0.y) * 0.5 + 1.0;
    SV_Target0.xy = (-u_xlat1.xz) + u_xlat0.xz;
    SV_Target0.zw = vec2(0.0, 1.0);
    return;
}

