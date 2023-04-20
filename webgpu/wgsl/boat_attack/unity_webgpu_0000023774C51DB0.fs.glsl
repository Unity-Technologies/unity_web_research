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
	float _Intensity;
	vec4 _SourceSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _MotionVectorTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlat0.x = dot(u_xlat0.xy, vec2(0.0671105608, 0.00583714992));
    u_xlat0.x = fract(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * 52.9829178;
    u_xlat0.x = fract(u_xlat0.x);
    u_xlat4.x = u_xlat0.x * 0.25;
    u_xlat0.xz = u_xlat0.xx + vec2(-0.5, 1.0);
    u_xlat1.xy = texture(sampler2D(_MotionVectorTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xy;
    u_xlat1.xy = (-u_xlat1.xy) * vec2(_Intensity);
    u_xlat1.xy = u_xlat1.xy + u_xlat1.xy;
    u_xlat4.xz = u_xlat4.xx * u_xlat1.xy + vs_TEXCOORD0.xy;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat4.xz, _GlobalMipBias.x).xyz;
    u_xlat3 = (-u_xlat0.xxxx) + vec4(0.5, 0.5, 1.5, 1.5);
    u_xlat0.x = u_xlat0.z * 0.25;
    u_xlat0.xy = u_xlat0.xx * u_xlat1.xy + vs_TEXCOORD0.xy;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat3 = u_xlat3 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat1 = (-u_xlat3) * u_xlat1.xyxy + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    SV_Target0.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25);
    SV_Target0.w = 1.0;
    return;
}

