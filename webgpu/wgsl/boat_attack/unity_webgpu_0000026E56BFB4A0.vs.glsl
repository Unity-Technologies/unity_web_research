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
layout(set = 1, binding = 2, std140) uniform VGlobals {
	mat4x4 unity_MatrixVP;
};
layout(set = 1, binding = 3, std140) uniform UnityPerDraw {
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
layout(set = 1, binding = 4, std140) uniform TerrainGrass {
	vec4 _WavingTint;
	vec4 _WaveAndDistance;
	vec4 _CameraPosition;
	vec3 _CameraRight;
	vec3 _CameraUp;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
float u_xlat3;
vec3 u_xlat4;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    u_xlat0 = _WaveAndDistance.yyyy * vec4(0.00600000005, 0.0199999996, 0.0199999996, 0.0500000007);
    u_xlat0 = u_xlat0 * in_POSITION0.zzzz;
    u_xlat1 = _WaveAndDistance.yyyy * vec4(0.0120000001, 0.0199999996, 0.0599999987, 0.0240000002);
    u_xlat0 = in_POSITION0.xxxx * u_xlat1 + u_xlat0;
    u_xlat0 = _WaveAndDistance.xxxx * vec4(1.20000005, 2.0, 1.60000002, 4.80000019) + u_xlat0;
    u_xlat0 = fract(u_xlat0);
    u_xlat0 = u_xlat0 * vec4(6.40884876, 6.40884876, 6.40884876, 6.40884876) + vec4(-3.14159274, -3.14159274, -3.14159274, -3.14159274);
    u_xlat1 = u_xlat0 * u_xlat0;
    u_xlat2 = u_xlat0 * u_xlat1;
    u_xlat0 = u_xlat2 * vec4(-0.161616161, -0.161616161, -0.161616161, -0.161616161) + u_xlat0;
    u_xlat2 = u_xlat1 * u_xlat2;
    u_xlat1 = u_xlat1 * u_xlat2;
    u_xlat0 = u_xlat2 * vec4(0.00833330024, 0.00833330024, 0.00833330024, 0.00833330024) + u_xlat0;
    u_xlat0 = u_xlat1 * vec4(-0.000198409994, -0.000198409994, -0.000198409994, -0.000198409994) + u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat1.x = dot(u_xlat0, vec4(0.674199879, 0.674199879, 0.269679934, 0.134839967));
    u_xlat1.x = u_xlat1.x * 0.699999988;
    u_xlat4.xyz = _WavingTint.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat1.xyz = u_xlat1.xxx * u_xlat4.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat1.xyz = u_xlat1.xyz * in_COLOR0.xyz;
    vs_TEXCOORD1.xyz = u_xlat1.xyz + u_xlat1.xyz;
    u_xlat1.x = in_COLOR0.w * _WaveAndDistance.z;
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat1.x = dot(u_xlat0, vec4(0.0240000002, 0.0399999991, -0.119999997, 0.0960000008));
    u_xlat1.z = dot(u_xlat0, vec4(0.00600000005, 0.0199999996, -0.0199999996, 0.100000001));
    u_xlat0.xz = (-u_xlat1.xz) * _WaveAndDistance.zz + in_POSITION0.xz;
    u_xlat0.y = in_POSITION0.y;
    u_xlat1.xyz = u_xlat0.xyz + (-_CameraPosition.xyz);
    u_xlat3 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat3 = (-u_xlat3) + _WaveAndDistance.w;
    u_xlat3 = u_xlat3 + u_xlat3;
    vs_TEXCOORD1.w = u_xlat3 * _CameraPosition.w;
    vs_TEXCOORD1.w = clamp(vs_TEXCOORD1.w, 0.0, 1.0);
    u_xlat1.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyw = unity_ObjectToWorld[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
    return;
}

