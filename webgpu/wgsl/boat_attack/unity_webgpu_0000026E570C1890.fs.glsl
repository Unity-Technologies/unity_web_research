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
	vec4 _SSAOParams;
	vec4 _SourceSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp float SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
float u_xlat2;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_BlitTexture;
void main()
{
    u_xlat0.x = float(1.0) / float(_SSAOParams.z);
    u_xlat0.x = u_xlat0.x * _SourceSize.z;
    u_xlat0.xz = u_xlat0.xx * vec2(0.538049996, 2.0627799);
    u_xlat0.y = float(0.0);
    u_xlat0.w = float(0.0);
    u_xlat1 = u_xlat0 + vs_TEXCOORD0.xyxy;
    u_xlat0 = (-u_xlat0) + vs_TEXCOORD0.xyxy;
    u_xlat1.z = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat1.zw, _GlobalMipBias.x).x;
    u_xlat1.x = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat1.xy, _GlobalMipBias.x).x;
    u_xlat0.z = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat0.zw, _GlobalMipBias.x).x;
    u_xlat0.x = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat0.xy, _GlobalMipBias.x).x;
    u_xlat0.xy = u_xlat0.xz + u_xlat1.xz;
    u_xlat2 = u_xlat0.y * 0.0509199984;
    SV_Target0 = u_xlat0.x * 0.44907999 + u_xlat2;
    return;
}

