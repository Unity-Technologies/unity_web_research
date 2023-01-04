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
	vec4 _ScreenParams;
	float _Rotation;
	float _OffsetX;
	float _OffsetY;
	float _Width;
};
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
vec3 u_xlat0;
vec2 u_xlat1;
float u_xlat2;
vec2 u_xlat3;
vec2 u_xlat6;
float u_xlat9;
    u_xlat0.xy = vs_TEXCOORD1.xy / vs_TEXCOORD1.ww;
    u_xlat0.yz = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat3.x = u_xlat0.y * _ScreenParams.x;
    u_xlat0.x = u_xlat3.x / _ScreenParams.y;
    u_xlat0.xy = u_xlat0.xz * vec2(10.0, 10.0);
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
    u_xlat0.x = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = u_xlat0.x + -0.5;
    u_xlat0.x = u_xlat0.x * -2.0 + 1.0;
    u_xlat3.xy = vs_TEXCOORD0.xy + vec2(_OffsetX, _OffsetY);
    u_xlat9 = _Rotation * 3.14249992;
    u_xlat1.x = sin(u_xlat9);
    u_xlat2 = cos(u_xlat9);
    u_xlat1.y = u_xlat2;
    u_xlat3.x = dot(u_xlat3.xy, u_xlat1.xy);
    u_xlat3.x = u_xlat3.x + _Width;
    u_xlat6.x = _Width + _Width;
    u_xlat3.x = u_xlat3.x / u_xlat6.x;
    u_xlat0.xy = u_xlat0.xx * u_xlat3.xx + vec2(-0.379999995, -0.580000043);
    u_xlat0.xy = u_xlat0.xy * vec2(24.9999866, 25.0000248);
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat6.xy = u_xlat0.xy * vec2(-2.0, -2.0) + vec2(3.0, 3.0);
    u_xlat0.xy = u_xlat0.xy * u_xlat0.xy;
    u_xlat0.x = u_xlat0.x * u_xlat6.x;
    u_xlat3.x = u_xlat6.y * u_xlat0.y + (-u_xlat0.x);
    u_xlat0.x = u_xlat3.x * 0.5 + u_xlat0.x;
    SV_Target0.w = u_xlat0.x * vs_TEXCOORD2.w;
    SV_Target0.xyz = vs_TEXCOORD2.xyz;
    return;
}

