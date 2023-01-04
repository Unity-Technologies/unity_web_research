#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
	vec4 _CameraDepthAttachment_TexelSize;
};
layout(set = 0, binding = 0) uniform highp texture2DMS _CameraDepthAttachment;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
void main()
{
vec2 u_xlat0;
uvec4 u_xlatu0;
float u_xlat1;
float u_xlat2;
float u_xlat3;
    u_xlat0.xy = vs_TEXCOORD0.xy * _CameraDepthAttachment_TexelSize.zw;
    u_xlatu0.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 0).x;
    u_xlat1 = min(u_xlat1, 1.0);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 1).x;
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 2).x;
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 3).x;
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 4).x;
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 5).x;
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlat3 = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 6).x;
    u_xlat0.x = texelFetch(_CameraDepthAttachment, ivec2(u_xlatu0.xy), 7).x;
    u_xlat2 = min(u_xlat1, u_xlat3);
    gl_FragDepth = min(u_xlat2, u_xlat0.x);
    return;
}

