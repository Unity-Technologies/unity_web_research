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
	vec4 _BlitTexture_TexelSize;
	float _SampleOffset;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_BlitTexture;
void main()
{
    u_xlat0 = vec4(_SampleOffset) * vec4(-1.0, -1.0, 1.0, 1.0);
    u_xlat1 = _BlitTexture_TexelSize.xyxy * u_xlat0.xyzy + vs_TEXCOORD0.xyxy;
    u_xlat0 = _BlitTexture_TexelSize.xyxy * u_xlat0.xwzw + vs_TEXCOORD0.xyxy;
    u_xlat2 = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat1.xy, _GlobalMipBias.x);
    u_xlat1 = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat1.zw, _GlobalMipBias.x);
    u_xlat1 = u_xlat1 + u_xlat2;
    u_xlat2 = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat0.xy, _GlobalMipBias.x);
    u_xlat0 = texture(sampler2D(_BlitTexture, sampler_BlitTexture), u_xlat0.zw, _GlobalMipBias.x);
    u_xlat1 = u_xlat1 + u_xlat2;
    u_xlat0 = u_xlat0 + u_xlat1;
    SV_Target0 = u_xlat0 * vec4(0.25, 0.25, 0.25, 0.25);
    return;
}

