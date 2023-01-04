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
	vec2 _Grain_Params;
	vec4 _Grain_TilingParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Grain_Texture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
vec2 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
    u_xlat0.xy = vs_TEXCOORD0.xy * _Grain_TilingParams.xy + _Grain_TilingParams.zw;
    u_xlat0.x = texture(sampler2D(_Grain_Texture, sampler_LinearRepeat), u_xlat0.xy, _GlobalMipBias.x).w;
    u_xlat0.x = u_xlat0.x + -0.5;
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Grain_Params.xxx;
    u_xlat0.x = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = _Grain_Params.y * (-u_xlat0.x) + 1.0;
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat2.xyz;
    SV_Target0.w = 1.0;
    return;
}

