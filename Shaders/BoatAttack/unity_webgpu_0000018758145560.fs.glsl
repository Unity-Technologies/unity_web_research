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
	vec2 _GlobalMipBias;
	mat4x4 unity_MatrixInvVP;
};
layout(set = 1, binding = 1, std140) uniform MainLightShadows {
	mat4x4 _MainLightWorldToShadow[5];
	vec4 _CascadeShadowSplitSpheres0;
	vec4 _CascadeShadowSplitSpheres1;
	vec4 _CascadeShadowSplitSpheres2;
	vec4 _CascadeShadowSplitSpheres3;
	vec4 _CascadeShadowSplitSphereRadii;
	vec4 _MainLightShadowOffset0;
	vec4 _MainLightShadowOffset1;
	vec4 _MainLightShadowParams;
	vec4 _MainLightShadowmapSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
bool u_xlatb2;
float u_xlat4;
bool u_xlatb6;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1 = (-u_xlat0.yyyy) * unity_MatrixInvVP[1];
    u_xlat0 = unity_MatrixInvVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat0 = unity_MatrixInvVP[2] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = u_xlat0 + unity_MatrixInvVP[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat1.xyz = u_xlat0.yyy * _MainLightWorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat0.xyw = _MainLightWorldToShadow[0 / 4][0 % 4].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = _MainLightWorldToShadow[2 / 4][2 % 4].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + _MainLightWorldToShadow[3 / 4][3 % 4].xyz;
    u_xlatb6 = 0.0>=u_xlat0.z;
    u_xlatb1 = u_xlat0.z>=1.0;
    vec3 txVec0 = vec3(u_xlat0.xy,u_xlat0.z);
    u_xlat0.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
    u_xlatb2 = u_xlatb6 || u_xlatb1;
    u_xlat4 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _MainLightShadowParams.x + u_xlat4;
    SV_Target0 = (bool(u_xlatb2)) ? vec4(1.0, 1.0, 1.0, 1.0) : u_xlat0.xxxx;
    return;
}

