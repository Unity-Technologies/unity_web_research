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
	mat4x4 unity_MatrixInvVP;
	mat4x4 _ViewProjM;
	mat4x4 _PrevViewProjM;
	float _Intensity;
	float _Clamp;
	vec4 _SourceSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
float u_xlat4;
bool u_xlatb4;
vec2 u_xlat8;
float u_xlat12;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat1 = (-u_xlat0.yyyy) * unity_MatrixInvVP[1];
    u_xlat0 = unity_MatrixInvVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat0 = unity_MatrixInvVP[2] * u_xlat1.xxxx + u_xlat0;
    u_xlat0 = u_xlat0 + unity_MatrixInvVP[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat1.xyz = u_xlat0.yyy * _PrevViewProjM[1].xyw;
    u_xlat1.xyz = _PrevViewProjM[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = _PrevViewProjM[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz + _PrevViewProjM[3].xyw;
    u_xlat1.xy = u_xlat1.xy / u_xlat1.zz;
    u_xlat2.xyz = u_xlat0.yyy * _ViewProjM[1].xyw;
    u_xlat0.xyw = _ViewProjM[0].xyw * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = _ViewProjM[2].xyw * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + _ViewProjM[3].xyw;
    u_xlat0.xy = u_xlat0.xy / u_xlat0.zz;
    u_xlat0.xy = (-u_xlat0.xy) + u_xlat1.xy;
    u_xlat0.z = (-u_xlat0.y);
    u_xlat4 = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat4 = sqrt(u_xlat4);
    u_xlat12 = float(1.0) / float(u_xlat4);
    u_xlat0.xz = vec2(u_xlat12) * u_xlat0.xz;
    u_xlat12 = min(u_xlat4, _Clamp);
    u_xlatb4 = 0.0<u_xlat4;
    u_xlat0.xz = u_xlat0.xz * vec2(u_xlat12);
    u_xlat0.xy = bool(u_xlatb4) ? u_xlat0.xz : vec2(0.0, 0.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_Intensity);
    u_xlat8.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlat8.x = dot(u_xlat8.xy, vec2(0.0671105608, 0.00583714992));
    u_xlat8.x = fract(u_xlat8.x);
    u_xlat8.x = u_xlat8.x * 52.9829178;
    u_xlat8.x = fract(u_xlat8.x);
    u_xlat12 = u_xlat8.x * 0.25;
    u_xlat1.xy = u_xlat8.xx + vec2(-0.5, 1.0);
    u_xlat8.xy = vec2(u_xlat12) * u_xlat0.xy + vs_TEXCOORD0.xy;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat8.xy, _GlobalMipBias.x).xyz;
    u_xlat3 = (-u_xlat1.xxxx) + vec4(0.5, 0.5, 1.5, 1.5);
    u_xlat8.x = u_xlat1.y * 0.25;
    u_xlat8.xy = u_xlat8.xx * u_xlat0.xy + vs_TEXCOORD0.xy;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat8.xy, _GlobalMipBias.x).xyz;
    u_xlat3 = u_xlat3 * vec4(0.25, 0.25, 0.25, 0.25);
    u_xlat0 = (-u_xlat3) * u_xlat0.xyxy + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), u_xlat0.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.xyz = u_xlat0.xyz * vec3(0.25, 0.25, 0.25);
    SV_Target0.w = 1.0;
    return;
}

