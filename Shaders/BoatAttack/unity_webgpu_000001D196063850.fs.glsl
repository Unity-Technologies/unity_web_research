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
	vec4 _MainLightColor;
	vec4 _Time;
	mat4x4 unity_MatrixInvVP;
	float _Size;
	float _WaterLevel;
	float _BlendDistance;
	mat4x4 _MainLightDir;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _CausticMap;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CausticMap;
void main()
{
vec3 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec2 u_xlat3;
vec3 u_xlat4;
vec2 u_xlat6;
float u_xlat7;
    u_xlat0.x = _Time.x * 0.25;
    u_xlat3.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat1.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat3.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat3.xy, _GlobalMipBias.x).x;
    u_xlat2 = u_xlat1.yyyy * (-unity_MatrixInvVP[1]);
    u_xlat1 = unity_MatrixInvVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat1 = unity_MatrixInvVP[2] * u_xlat3.xxxx + u_xlat1;
    u_xlat1 = u_xlat1 + unity_MatrixInvVP[3];
    u_xlat1 = u_xlat1.xyzz / u_xlat1.wwww;
    u_xlat0.xy = u_xlat1.xw * vec2(0.0250000004, 0.0250000004) + u_xlat0.xx;
    u_xlat0.x = texture(sampler2D(_CausticMap, sampler_CausticMap), u_xlat0.xy, _GlobalMipBias.x).w;
    u_xlat0.x = u_xlat0.x + -0.5;
    u_xlat0.x = u_xlat0.x * 0.100000001;
    u_xlat2.x = dot(u_xlat1.xyww, _MainLightDir[0]);
    u_xlat2.y = dot(u_xlat1, _MainLightDir[1]);
    u_xlat0.xy = u_xlat2.xy * vec2(_Size) + u_xlat0.xx;
    u_xlat6.xy = u_xlat0.xy + _Time.xx;
    u_xlat0.xy = u_xlat0.xy + u_xlat0.xy;
    u_xlat1.x = u_xlat1.y + (-_WaterLevel);
    u_xlat4.x = (-u_xlat1.y) + _WaterLevel;
    u_xlat4.x = clamp(u_xlat4.x, 0.0, 1.0);
    u_xlat7 = abs(u_xlat1.x) * 4.0;
    u_xlat1.x = u_xlat1.x / _BlendDistance;
    u_xlat1.x = u_xlat1.x + _BlendDistance;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat1.x = min(u_xlat1.x, u_xlat4.x);
    u_xlat4.x = u_xlat7 / _BlendDistance;
    u_xlat6.xy = textureLod(sampler2D(_CausticMap, sampler_CausticMap), u_xlat6.xy, u_xlat4.x).zw;
    u_xlat4.xyz = textureLod(sampler2D(_CausticMap, sampler_CausticMap), u_xlat0.xy, u_xlat4.x).xzw;
    u_xlat0.x = u_xlat6.x * u_xlat4.y;
    u_xlat0.x = u_xlat0.x * 10.0 + u_xlat6.x;
    u_xlat2.x = u_xlat6.y * 0.5;
    u_xlat0.x = u_xlat4.y + u_xlat0.x;
    u_xlat2.yz = u_xlat4.zx * vec2(0.75, 1.0);
    u_xlat0.x = u_xlat1.x * u_xlat0.x;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xxx;
    SV_Target0.xyz = u_xlat0.xyz * _MainLightColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

