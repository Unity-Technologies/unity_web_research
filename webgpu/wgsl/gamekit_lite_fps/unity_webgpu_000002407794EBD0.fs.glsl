#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 0, binding = 0) uniform mediump texture2D _CameraDepthNormalsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
float u_xlat4;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_CameraDepthNormalsTexture;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_CameraDepthNormalsTexture, sampler_CameraDepthNormalsTexture), vs_TEXCOORD1.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(3.55539989, 3.55539989, 0.0) + vec3(-1.77769995, -1.77769995, 1.0);
    u_xlat4 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat4 = 2.0 / u_xlat4;
    u_xlat1.xy = u_xlat0.xy * vec2(u_xlat4);
    u_xlat1.z = u_xlat4 + -1.0;
    SV_Target0.xyz = u_xlat1.xyz * vec3(1.0, 1.0, -1.0);
    SV_Target0.w = 1.0;
    return;
}

