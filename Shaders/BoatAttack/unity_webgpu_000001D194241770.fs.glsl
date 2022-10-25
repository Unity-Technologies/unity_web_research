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
	vec4 _SourceTexLowMip_TexelSize;
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _SourceTexLowMip;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec2 u_xlat10;
vec2 u_xlat11;
vec2 u_xlat12;
float u_xlat15;
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceTexLowMip_TexelSize.zw + vec2(0.5, 0.5);
    u_xlat10.xy = fract(u_xlat0.xy);
    u_xlat0.xy = floor(u_xlat0.xy);
    u_xlat1.xy = u_xlat10.xy * vec2(0.5, 0.5) + vec2(-1.0, -1.0);
    u_xlat11.xy = u_xlat10.xy * u_xlat10.xy;
    u_xlat1.xy = u_xlat11.xy * u_xlat1.xy + vec2(0.666666687, 0.666666687);
    u_xlat11.xy = (-u_xlat1.xy) + vec2(1.0, 1.0);
    u_xlat2 = (-u_xlat10.xyxy) * vec4(0.5, 0.5, 0.166666672, 0.166666672) + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat2 = u_xlat10.xyxy * u_xlat2 + vec4(0.5, 0.5, -0.5, -0.5);
    u_xlat2 = u_xlat10.xyxy * u_xlat2 + vec4(0.166666672, 0.166666672, 0.166666672, 0.166666672);
    u_xlat10.xy = u_xlat11.xy + (-u_xlat2.xy);
    u_xlat10.xy = (-u_xlat2.zw) + u_xlat10.xy;
    u_xlat11.xy = u_xlat10.xy + u_xlat2.xy;
    u_xlat2.xy = u_xlat1.xy + u_xlat2.zw;
    u_xlat12.xy = vec2(1.0) / vec2(u_xlat11.xy);
    u_xlat3.xy = u_xlat10.xy * u_xlat12.xy + vec2(1.0, 1.0);
    u_xlat10.xy = vec2(1.0) / vec2(u_xlat2.xy);
    u_xlat3.zw = u_xlat1.xy * u_xlat10.xy + vec2(-1.0, -1.0);
    u_xlat4 = u_xlat0.xyxy + u_xlat3.zyxy;
    u_xlat0 = u_xlat0.xyxy + u_xlat3.zwxw;
    u_xlat0 = u_xlat0 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat0 = u_xlat0 * _SourceTexLowMip_TexelSize.xyxy;
    u_xlat0 = min(u_xlat0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat3 = u_xlat4 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat3 = u_xlat3 * _SourceTexLowMip_TexelSize.xyxy;
    u_xlat3 = min(u_xlat3, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat4 = textureLod(sampler2D(_SourceTexLowMip, sampler_LinearClamp), u_xlat3.zw, 0.0);
    u_xlat3 = textureLod(sampler2D(_SourceTexLowMip, sampler_LinearClamp), u_xlat3.xy, 0.0);
    u_xlat4 = u_xlat11.xxxx * u_xlat4;
    u_xlat3 = u_xlat2.xxxx * u_xlat3 + u_xlat4;
    u_xlat3 = u_xlat11.yyyy * u_xlat3;
    u_xlat4 = textureLod(sampler2D(_SourceTexLowMip, sampler_LinearClamp), u_xlat0.zw, 0.0);
    u_xlat0 = textureLod(sampler2D(_SourceTexLowMip, sampler_LinearClamp), u_xlat0.xy, 0.0);
    u_xlat1 = u_xlat11.xxxx * u_xlat4;
    u_xlat0 = u_xlat2.xxxx * u_xlat0 + u_xlat1;
    u_xlat0 = u_xlat2.yyyy * u_xlat0 + u_xlat3;
    u_xlat0.xyz = u_xlat0.www * u_xlat0.xyz;
    u_xlat1 = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.xyz = u_xlat1.www * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(8.0, 8.0, 8.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(8.0, 8.0, 8.0) + (-u_xlat1.xyz);
    u_xlat0.xyz = _Params.xxx * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.125, 0.125, 0.125);
    u_xlat15 = max(u_xlat0.y, u_xlat0.x);
    u_xlat1.x = max(u_xlat0.z, 9.99999975e-06);
    u_xlat15 = max(u_xlat15, u_xlat1.x);
    u_xlat15 = u_xlat15 * 255.0;
    u_xlat15 = ceil(u_xlat15);
    u_xlat15 = u_xlat15 * 0.00392156886;
    SV_Target0.xyz = u_xlat0.xyz / vec3(u_xlat15);
    SV_Target0.w = u_xlat15;
    return;
}

