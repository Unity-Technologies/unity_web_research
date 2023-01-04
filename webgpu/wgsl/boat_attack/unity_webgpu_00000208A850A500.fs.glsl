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
	mat4x4 unity_CameraInvProjection;
	mat4x4 unity_CameraToWorld;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy).x;
    u_xlat0.z = (-u_xlat0.x) + 1.0;
    u_xlat0.xy = vs_TEXCOORD0.zw;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1 = u_xlat0.yyyy * unity_CameraInvProjection[1];
    u_xlat1 = unity_CameraInvProjection[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_CameraInvProjection[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + unity_CameraInvProjection[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat1 = u_xlat0.yyyy * unity_CameraToWorld[1];
    u_xlat1 = unity_CameraToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_CameraToWorld[2] * (-u_xlat0.zzzz) + u_xlat1;
    u_xlat0 = u_xlat0 + unity_CameraToWorld[3];
    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat1.xyz = unity_WorldToShadow[0 / 4][0 % 4].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToShadow[2 / 4][2 % 4].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToShadow[3 / 4][3 % 4].xyz * u_xlat0.www + u_xlat0.xyz;
    vec3 txVec0 = vec3(u_xlat0.xy,u_xlat0.z);
    u_xlat0.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
    u_xlat2 = (-_LightShadowData.x) + 1.0;
    SV_Target0 = u_xlat0.xxxx * vec4(u_xlat2) + _LightShadowData.xxxx;
    return;
}

