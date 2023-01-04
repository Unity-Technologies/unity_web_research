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
};
layout(set = 1, binding = 1, std140) uniform UnityPerMaterial {
	vec4 Texture2D_25A083BC_TexelSize;
	vec4 Texture2D_6EEDD32E_TexelSize;
	vec4 Texture2D_E9EC22CC_TexelSize;
	float _Hue;
};
layout(set = 0, binding = 0) uniform mediump texture2D Texture2D_25A083BC;
layout(location = 0) in highp vec4 vs_INTERP0;
layout(location = 0) out highp vec4 SV_TARGET0;
layout(set = 0, binding = 1) uniform mediump  sampler samplerTexture2D_25A083BC;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
bool u_xlatb3;
vec3 u_xlat4;
bool u_xlatb4;
float u_xlat6;
bool u_xlatb6;
float u_xlat8;
bool u_xlatb8;
float u_xlat12;
bool u_xlatb12;
    u_xlat0.z = float(-1.0);
    u_xlat0.w = float(0.666666687);
    u_xlat1.z = float(1.0);
    u_xlat1.w = float(-1.0);
    u_xlat2 = texture(sampler2D(Texture2D_25A083BC, samplerTexture2D_25A083BC), vs_INTERP0.xy, _GlobalMipBias.x);
    u_xlatb3 = u_xlat2.y>=u_xlat2.z;
    u_xlat3 = u_xlatb3 ? 1.0 : float(0.0);
    u_xlat0.xy = u_xlat2.zy;
    u_xlat1.xy = (-u_xlat0.xy) + u_xlat2.yz;
    u_xlat0 = vec4(u_xlat3) * u_xlat1.xywz + u_xlat0.xywz;
    u_xlat1.z = u_xlat0.w;
    u_xlatb6 = u_xlat2.x>=u_xlat0.x;
    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
    u_xlat0.w = u_xlat2.x;
    u_xlat1.xyw = u_xlat0.wyx;
    u_xlat1 = (-u_xlat0) + u_xlat1;
    u_xlat0 = vec4(u_xlat6) * u_xlat1 + u_xlat0;
    u_xlat1.x = (-u_xlat0.y) + u_xlat0.w;
    u_xlat4.x = min(u_xlat0.y, u_xlat0.w);
    u_xlat4.x = (-u_xlat4.x) + u_xlat0.x;
    u_xlat12 = u_xlat4.x * 6.0 + 1.00000001e-10;
    u_xlat12 = u_xlat1.x / u_xlat12;
    u_xlat8 = u_xlat12 + u_xlat0.z;
    u_xlat8 = u_xlat2.w * _Hue + abs(u_xlat8);
    u_xlatb12 = 1.0<u_xlat8;
    u_xlat1.xy = vec2(u_xlat8) + vec2(1.0, -1.0);
    u_xlat12 = (u_xlatb12) ? u_xlat1.y : u_xlat8;
    u_xlatb8 = u_xlat8<0.0;
    u_xlat8 = (u_xlatb8) ? u_xlat1.x : u_xlat12;
    u_xlat1.xyz = vec3(u_xlat8) + vec3(1.0, 0.666666687, 0.333333343);
    u_xlat1.xyz = fract(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(6.0, 6.0, 6.0) + vec3(-3.0, -3.0, -3.0);
    u_xlat1.xyz = abs(u_xlat1.xyz) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz + vec3(-1.0, -1.0, -1.0);
    u_xlat8 = u_xlat0.x + 1.00000001e-10;
    u_xlat12 = u_xlat4.x / u_xlat8;
    u_xlatb4 = u_xlat4.x==0.0;
    u_xlat0.x = (u_xlatb4) ? u_xlat0.x : u_xlat8;
    u_xlat4.xyz = vec3(u_xlat12) * u_xlat1.xyz + vec3(1.0, 1.0, 1.0);
    SV_TARGET0.xyz = u_xlat4.xyz * u_xlat0.xxx;
    SV_TARGET0.xyz = clamp(SV_TARGET0.xyz, 0.0, 1.0);
    SV_TARGET0.w = 1.0;
    return;
}

