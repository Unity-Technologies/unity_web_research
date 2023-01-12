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
	vec4 _MainTex_TexelSize;
};
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp vec2 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
    gl_Position.xy = in_POSITION0.xy;
    gl_Position.zw = vec2(0.0, 1.0);
    vs_TEXCOORD0.xy = in_POSITION0.xy * vec2(0.5, -0.5) + vec2(0.5, 0.5);
    u_xlat0 = in_POSITION0.xyxy + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat0 = u_xlat0 * vec4(0.5, -0.5, 0.5, -0.5) + vec4(0.0, 1.0, 0.0, 1.0);
    vs_TEXCOORD1.xy = u_xlat0.zw * _MainTex_TexelSize.zw;
    u_xlat1 = _MainTex_TexelSize.xxyy * vec4(-0.25, 1.25, -0.125, -0.125) + u_xlat0.zzww;
    u_xlat0 = _MainTex_TexelSize.xyxy * vec4(-0.125, -0.25, -0.125, 1.25) + u_xlat0;
    vs_TEXCOORD2 = u_xlat1.xzyw;
    vs_TEXCOORD3 = u_xlat0;
    u_xlat1.zw = u_xlat0.yw;
    vs_TEXCOORD4 = _MainTex_TexelSize.xxyy * vec4(-8.0, 8.0, -8.0, 8.0) + u_xlat1;
    return;
}

