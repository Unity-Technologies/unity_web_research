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
	vec4 _ZBufferParams;
	vec4 _SourceSize;
	vec4 _CoCParams;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp float SV_Target0;
void main()
{
vec2 u_xlat0;
uvec4 u_xlatu0;
float u_xlat1;
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu0.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat0.x = texelFetch(_CameraDepthTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).x;
    u_xlat0.x = _ZBufferParams.z * u_xlat0.x + _ZBufferParams.w;
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlat0.x = _CoCParams.x / u_xlat0.x;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x * _CoCParams.y;
    u_xlat1 = max(u_xlat0.x, -1.0);
    u_xlat0.x = u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat1 = min(u_xlat1, 0.0);
    u_xlat0.x = u_xlat1 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x + 1.0;
    SV_Target0 = u_xlat0.x * 0.5;
    return;
}

