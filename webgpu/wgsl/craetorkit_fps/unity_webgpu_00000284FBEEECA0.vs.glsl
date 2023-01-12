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
layout(set = 1, binding = 0, std140) uniform VGlobals {
	vec4 _MainTex_TexelSize;
};
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
void main()
{
vec2 u_xlat0;
    gl_Position.xy = in_POSITION0.xy;
    gl_Position.zw = vec2(0.0, 1.0);
    u_xlat0.xy = in_POSITION0.xy + vec2(1.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(0.5, -0.5) + vec2(0.0, 1.0);
    vs_TEXCOORD0.xy = u_xlat0.xy;
    vs_TEXCOORD1 = _MainTex_TexelSize.xyxy * vec4(-1.0, 0.0, 0.0, -1.0) + u_xlat0.xyxy;
    vs_TEXCOORD2 = _MainTex_TexelSize.xyxy * vec4(1.0, 0.0, 0.0, 1.0) + u_xlat0.xyxy;
    vs_TEXCOORD3 = _MainTex_TexelSize.xyxy * vec4(-2.0, 0.0, 0.0, -2.0) + u_xlat0.xyxy;
    return;
}

