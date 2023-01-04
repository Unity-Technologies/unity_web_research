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
	vec4 _SourceSize;
	vec4 _CoCParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _FullCoCTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
float u_xlat1;
vec4 u_xlat2;
vec3 u_xlat4;
bool u_xlatb4;
float u_xlat7;
    u_xlat0 = (-_SourceSize.zwzw) * vec4(0.5, 0.5, -0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat1 = texture(sampler2D(_FullCoCTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).x;
    u_xlat1 = u_xlat1 * 2.0 + -1.0;
    u_xlat2 = _SourceSize.zwzw * vec4(-0.5, 0.5, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat4.x = texture(sampler2D(_FullCoCTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).x;
    u_xlat4.x = u_xlat4.x * 2.0 + -1.0;
    u_xlat7 = min(u_xlat4.x, u_xlat1);
    u_xlat1 = max(u_xlat4.x, u_xlat1);
    u_xlat4.x = texture(sampler2D(_FullCoCTexture, sampler_LinearClamp), u_xlat2.zw, _GlobalMipBias.x).x;
    u_xlat4.x = u_xlat4.x * 2.0 + -1.0;
    u_xlat7 = min(u_xlat4.x, u_xlat7);
    u_xlat1 = max(u_xlat4.x, u_xlat1);
    u_xlat4.x = texture(sampler2D(_FullCoCTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).x;
    u_xlat4.x = u_xlat4.x * 2.0 + -1.0;
    u_xlat7 = min(u_xlat7, u_xlat4.x);
    u_xlat1 = max(u_xlat1, u_xlat4.x);
    u_xlatb4 = u_xlat1<(-u_xlat7);
    u_xlat1 = (u_xlatb4) ? u_xlat7 : u_xlat1;
    u_xlat1 = u_xlat1 * _CoCParams.z;
    u_xlat4.x = _SourceSize.w + _SourceSize.w;
    u_xlat4.x = float(1.0) / u_xlat4.x;
    u_xlat4.x = u_xlat4.x * abs(u_xlat1);
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    SV_Target0.w = u_xlat1;
    u_xlat1 = u_xlat4.x * -2.0 + 3.0;
    u_xlat4.x = u_xlat4.x * u_xlat4.x;
    u_xlat1 = u_xlat4.x * u_xlat1;
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat4.xyz;
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25);
    SV_Target0.xyz = vec3(u_xlat1) * u_xlat0.xyz;
    return;
}

