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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	vec4 _LightDir;
	vec4 _LightColor;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 2) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 4) uniform highp texture2D unity_NHxRoughness;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
float u_xlat12;
layout(set = 0, binding = 5) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
    u_xlat0.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD1.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat12 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
    u_xlat12 = _ZBufferParams.x * u_xlat12 + _ZBufferParams.y;
    u_xlat12 = float(1.0) / u_xlat12;
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    u_xlat2.xyz = u_xlat0.yyy * unity_CameraToWorld[1].xyz;
    u_xlat0.xyw = unity_CameraToWorld[0].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = unity_CameraToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + unity_CameraToWorld[3].xyz;
    u_xlat0.xyz = u_xlat0.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    u_xlat2.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = vec3(u_xlat12) * u_xlat2.xyz;
    u_xlat12 = dot((-u_xlat0.xyz), u_xlat2.xyz);
    u_xlat12 = u_xlat12 + u_xlat12;
    u_xlat0.xyz = u_xlat2.xyz * (-vec3(u_xlat12)) + (-u_xlat0.xyz);
    u_xlat12 = dot(u_xlat2.xyz, (-_LightDir.xyz));
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat2.xyz = vec3(u_xlat12) * _LightColor.xyz;
    u_xlat0.x = dot(u_xlat0.xyz, (-_LightDir.xyz));
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat3 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).xyz;
    u_xlat0.y = (-u_xlat3.w) + 1.0;
    u_xlat0.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat0.xy).x;
    u_xlat0.x = u_xlat0.x * 16.0;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xyz;
    u_xlat0.w = 1.0;
    SV_Target0 = exp2((-u_xlat0));
    return;
}

