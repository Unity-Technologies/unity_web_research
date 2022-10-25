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
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat8;
float u_xlat15;
float u_xlat21;
    u_xlat0 = _BlitTexture_TexelSize.xxxx * vec4(-0.5, -0.5, 0.5, -0.5) + vs_TEXCOORD0.xyxy;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1 = _BlitTexture_TexelSize.xxxx * vec4(-0.5, 0.5, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xyz + u_xlat0.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy + (-_BlitTexture_TexelSize.xx);
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat2 = _BlitTexture_TexelSize.xxxx * vec4(0.0, -1.0, 1.0, -1.0) + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat3.xyz;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat3.xyz;
    u_xlat4 = _BlitTexture_TexelSize.xxxx * vec4(-1.0, 0.0, -1.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat3.xyz + u_xlat5.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.03125, 0.03125, 0.03125);
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.125, 0.125, 0.125) + u_xlat1.xyz;
    u_xlat1 = _BlitTexture_TexelSize.xxxx * vec4(1.0, 0.0, 0.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat6.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat3.xyz + u_xlat6.xyz;
    u_xlat2.xyz = u_xlat3.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat2.xyz * vec3(0.03125, 0.03125, 0.03125) + u_xlat0.xyz;
    u_xlat2.xyz = u_xlat1.xyz + u_xlat5.xyz;
    u_xlat2.xyz = u_xlat4.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat2.xyz * vec3(0.03125, 0.03125, 0.03125) + u_xlat0.xyz;
    u_xlat2.xy = vs_TEXCOORD0.xy + _BlitTexture_TexelSize.xx;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat6.xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xyz * vec3(0.03125, 0.03125, 0.03125) + u_xlat0.xyz;
    u_xlat0.xyz = min(u_xlat0.xyz, _Params.yyy);
    u_xlat21 = max(u_xlat0.y, u_xlat0.x);
    u_xlat21 = max(u_xlat0.z, u_xlat21);
    u_xlat1.x = u_xlat21 + (-_Params.z);
    u_xlat21 = max(u_xlat21, 9.99999975e-05);
    u_xlat8 = u_xlat1.x + _Params.w;
    u_xlat8 = max(u_xlat8, 0.0);
    u_xlat15 = _Params.w + _Params.w;
    u_xlat8 = min(u_xlat15, u_xlat8);
    u_xlat8 = u_xlat8 * u_xlat8;
    u_xlat15 = _Params.w * 4.0 + 9.99999975e-05;
    u_xlat8 = u_xlat8 / u_xlat15;
    u_xlat1.x = max(u_xlat8, u_xlat1.x);
    u_xlat21 = u_xlat1.x / u_xlat21;
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.125, 0.125, 0.125);
    u_xlat21 = max(u_xlat0.y, u_xlat0.x);
    u_xlat1.x = max(u_xlat0.z, 9.99999975e-06);
    u_xlat21 = max(u_xlat21, u_xlat1.x);
    u_xlat21 = u_xlat21 * 255.0;
    u_xlat21 = ceil(u_xlat21);
    u_xlat21 = u_xlat21 * 0.00392156886;
    SV_Target0.xyz = u_xlat0.xyz / vec3(u_xlat21);
    SV_Target0.w = u_xlat21;
    return;
}

