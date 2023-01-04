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
	vec4 _ScaledScreenParams;
	vec4 _FlareData0;
	vec4 _FlareData2;
};
layout(location = 0) out highp vec2 vs_TEXCOORD0;
void main()
{
vec2 u_xlat0;
int u_xlati0;
uvec2 u_xlatu0;
vec2 u_xlat1;
float u_xlat4;
int u_xlati4;
float u_xlat6;
    u_xlati0 = int(uint(gl_VertexIndex) & 1u);
    u_xlatu0.y = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati4 = (-u_xlati0) + (-int(u_xlatu0.y));
    u_xlati0 = u_xlati0 + int(u_xlatu0.y);
    u_xlatu0.x = uint(u_xlati0) & 1u;
    u_xlat0.x = float(u_xlatu0.x);
    vs_TEXCOORD0.y = (-u_xlat0.x) + 1.0;
    u_xlati0 = u_xlati4 + 1;
    u_xlatu0.x = uint(u_xlati0) & 1u;
    u_xlat1.xy = vec2(u_xlatu0.yx);
    u_xlat0.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    vs_TEXCOORD0.x = (-u_xlat1.x) + 1.0;
    u_xlat0.xy = u_xlat0.xy * _FlareData2.zw;
    u_xlat4 = u_xlat0.y * _FlareData0.y;
    u_xlat4 = u_xlat0.x * _FlareData0.x + (-u_xlat4);
    u_xlat0.y = dot(u_xlat0.yx, _FlareData0.xy);
    u_xlat6 = _ScaledScreenParams.y / _ScaledScreenParams.x;
    u_xlat0.x = u_xlat6 * u_xlat4;
    u_xlat0.xy = u_xlat0.xy + _FlareData2.xy;
    gl_Position.xy = u_xlat0.xy + _FlareData0.zw;
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

