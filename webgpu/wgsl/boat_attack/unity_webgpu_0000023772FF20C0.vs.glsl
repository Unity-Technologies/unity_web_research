#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _ScaleBias;
	vec4 _ScaleBiasRt;
};
layout(location = 0) out highp vec2 vs_TEXCOORD0;
float u_xlat0;
int u_xlati0;
uint u_xlatu0;
vec2 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
int u_xlati3;
uint u_xlatu3;
int u_xlati6;
void main()
{
    u_xlati0 = int(uint(gl_VertexIndex) & 1u);
    u_xlatu3 = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati6 = (-u_xlati0) + (-int(u_xlatu3));
    u_xlati0 = u_xlati0 + int(u_xlatu3);
    u_xlat1.x = float(u_xlatu3);
    u_xlatu0 = uint(u_xlati0) & 1u;
    u_xlat0 = float(u_xlatu0);
    u_xlat0 = (-u_xlat0) + 1.0;
    u_xlati3 = u_xlati6 + 1;
    u_xlatu3 = uint(u_xlati3) & 1u;
    u_xlat1.y = float(u_xlatu3);
    u_xlat2.xy = u_xlat1.xy * _ScaleBiasRt.xy + _ScaleBiasRt.zw;
    vs_TEXCOORD0.x = u_xlat1.x * _ScaleBias.x + _ScaleBias.z;
    u_xlat2.z = float(1.0);
    u_xlat2.w = float(1.0);
    gl_Position = u_xlat2 * vec4(2.0, -2.0, 1.0, 1.0) + vec4(-1.0, 1.0, 0.0, 0.0);
    u_xlat3 = (-_ScaleBias.w) + 1.0;
    u_xlat3 = u_xlat3 + (-_ScaleBias.y);
    vs_TEXCOORD0.y = u_xlat0 * _ScaleBias.y + u_xlat3;
    return;
}

