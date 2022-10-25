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
	vec2 _GlobalMipBias;
	vec4 _SourceSize;
	vec4 _DownSampleScaleFactor;
	vec3 _CoCParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _HalfCoCTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
uvec4 u_xlatu1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat12;
    u_xlat0.xyz = _SourceSize.xyw * _DownSampleScaleFactor.xyw;
    u_xlat0.xy = u_xlat0.xy * vs_TEXCOORD0.xy;
    u_xlatu1.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat0.x = texelFetch(_HalfCoCTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).x;
    u_xlat4.x = u_xlat0.x * u_xlat0.z;
    u_xlat1.y = u_xlat4.x * _CoCParams.z;
    u_xlat1.x = 0.0;
    u_xlat1 = vec4(-1.33333337, -1.33333337, 1.33333337, 1.33333337) * u_xlat1.xyxy + vs_TEXCOORD0.xyxy;
    u_xlat4.x = texture(sampler2D(_HalfCoCTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).x;
    u_xlat4.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat2.w = (-u_xlat4.x) + 1.0;
    u_xlat2.w = clamp(u_xlat2.w, 0.0, 1.0);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.www * u_xlat4.xyz;
    u_xlat4.x = texture(sampler2D(_HalfCoCTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat4.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat3.w = (-u_xlat4.x) + 1.0;
    u_xlat3.w = clamp(u_xlat3.w, 0.0, 1.0);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.www * u_xlat4.xyz;
    u_xlat3 = u_xlat3 * vec4(0.294117659, 0.294117659, 0.294117659, 0.294117659);
    u_xlat2 = u_xlat2 * vec4(0.352941185, 0.352941185, 0.352941185, 0.352941185) + u_xlat3;
    u_xlat4.x = texture(sampler2D(_HalfCoCTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).x;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat0.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat0.w = (-u_xlat0.x) + 1.0;
    u_xlat0.w = clamp(u_xlat0.w, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.www * u_xlat1.xyz;
    u_xlat0 = u_xlat0 * vec4(0.352941185, 0.352941185, 0.352941185, 0.352941185) + u_xlat2;
    u_xlat12 = u_xlat0.w + 9.99999975e-05;
    SV_Target0.xyz = u_xlat0.xyz / vec3(u_xlat12);
    SV_Target0.w = 1.0;
    return;
}

