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
	mat4x4 unity_MatrixVP;
};
layout(set = 1, binding = 2, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec4 vs_INTERP0;
highp vec3 vs_INTERP1;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat6;
float u_xlat9;
void main()
{
    u_xlat0.xy = unity_ObjectToWorld[3].xz * vec2(2.0, 0.25);
    u_xlat0.x = u_xlat0.y + u_xlat0.x;
    u_xlat0.x = sin(u_xlat0.x);
    u_xlat0.x = u_xlat0.x + 1.0;
    u_xlat0.xy = u_xlat0.xx * vec2(-0.0500000007, -0.174999997);
    u_xlat6 = in_POSITION0.y * 0.0500000007 + 1.0;
    u_xlat6 = u_xlat6 * u_xlat6;
    u_xlat6 = u_xlat6 * u_xlat6 + (-u_xlat6);
    u_xlat0.xz = u_xlat0.xy * vec2(u_xlat6);
    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat1.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat1.xyz;
    u_xlat1.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat0.y = 0.0;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToObject[1].xyz;
    u_xlat0.xyw = unity_WorldToObject[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToObject[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + unity_WorldToObject[3].xyz;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = inversesqrt(u_xlat9);
    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    u_xlat9 = dot(in_POSITION0.xyz, in_POSITION0.xyz);
    u_xlat9 = sqrt(u_xlat9);
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9);
    u_xlat1.x = unity_ObjectToWorld[0].y;
    u_xlat1.y = unity_ObjectToWorld[1].y;
    u_xlat1.z = unity_ObjectToWorld[2].y;
    u_xlat1.w = unity_ObjectToWorld[3].y;
    u_xlat9 = dot(u_xlat1, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat9 = in_COLOR0.y * 4.5 + u_xlat9;
    u_xlat1.x = dot(u_xlat0.xyz, vec3(u_xlat9));
    u_xlat1.y = in_COLOR0.y;
    u_xlat1 = u_xlat1.xxyy * vec4(3.95000005, 1.38600004, 2.4749999, 1.27380002) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1 = u_xlat1 * vec4(0.25, 0.25, 0.25, 0.25) + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat1 = fract(u_xlat1);
    u_xlat1 = u_xlat1 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat2 = abs(u_xlat1) * abs(u_xlat1);
    u_xlat1 = -abs(u_xlat1) * vec4(2.0, 2.0, 2.0, 2.0) + vec4(3.0, 3.0, 3.0, 3.0);
    u_xlat1 = u_xlat2 * u_xlat1 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat1.xyz = u_xlat1.ywy + u_xlat1.xzx;
    u_xlat2.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat2.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat2.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat9 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat9 = max(u_xlat9, 1.17549435e-38);
    u_xlat9 = inversesqrt(u_xlat9);
    u_xlat2.xy = vec2(u_xlat9) * u_xlat2.xz;
    u_xlat9 = in_COLOR0.x * 0.100000001;
    u_xlat2.xz = vec2(u_xlat9) * u_xlat2.xy;
    u_xlat2.y = in_COLOR0.z * -0.349999994 + 0.349999994;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyw = unity_ObjectToWorld[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    vs_INTERP1.xyz = u_xlat0.xyz;
    gl_Position = u_xlat1 + unity_MatrixVP[3];
    vs_INTERP0 = in_TEXCOORD0;
    return;
}

