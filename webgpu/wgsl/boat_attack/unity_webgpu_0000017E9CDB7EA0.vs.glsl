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
	vec4 _BlitScaleBias;
	vec4 _BlitScaleBiasRt;
};
layout(location = 0) out highp vec2 vs_TEXCOORD0;
vec4 u_xlat0;
int u_xlati0;
uint u_xlatu0;
vec3 u_xlat1;
uint u_xlatu2;
int u_xlati4;
void main()
{
    u_xlati0 = int(uint(gl_VertexIndex) & 1u);
    u_xlatu2 = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati4 = (-u_xlati0) + (-int(u_xlatu2));
    u_xlati0 = u_xlati0 + int(u_xlatu2);
    u_xlat1.x = float(u_xlatu2);
    u_xlatu0 = uint(u_xlati0) & 1u;
    u_xlat0.x = float(u_xlatu0);
    u_xlat1.z = (-u_xlat0.x) + 1.0;
    vs_TEXCOORD0.xy = u_xlat1.xz * _BlitScaleBias.xy + _BlitScaleBias.zw;
    u_xlati0 = u_xlati4 + 1;
    u_xlatu0 = uint(u_xlati0) & 1u;
    u_xlat1.y = float(u_xlatu0);
    u_xlat0.xy = u_xlat1.xy * _BlitScaleBiasRt.xy + _BlitScaleBiasRt.zw;
    u_xlat0.z = float(1.0);
    u_xlat0.w = float(1.0);
    gl_Position = u_xlat0 * vec4(2.0, -2.0, 1.0, 1.0) + vec4(-1.0, 1.0, 0.0, 0.0);
    return;
}

