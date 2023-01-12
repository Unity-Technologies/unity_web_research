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
const uvec4 ImmCB_1[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _SinTime;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	float _Displacement;
	float _DisplacementScale;
	float _DisplacementSpeed;
	int _DisplacementIndex;
	bvec4 unity_MetaVertexControl;
};
layout(set = 0, binding = 6) uniform mediump texture3D _DisplacementNoise;
layout(set = 0, binding = 7) uniform mediump texture2D _DisplacementRamp;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_TEXCOORD1;
layout(location = 3) in highp vec4 in_TEXCOORD2;
layout(location = 4) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_COLOR0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_DisplacementNoise;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_DisplacementRamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
vec4 u_xlat2;
bool u_xlatb9;
    u_xlat0.xyz = in_POSITION0.xyz * vec3(vec3(_DisplacementScale, _DisplacementScale, _DisplacementScale));
    u_xlat0.xyz = u_xlat0.xyz * in_COLOR0.zzz;
    u_xlat1.y = _SinTime.y * _DisplacementSpeed;
    u_xlat1.x = float(0.0);
    u_xlat1.z = float(0.0);
    u_xlat0.xyz = u_xlat1.xyz * in_COLOR0.yyy + u_xlat0.xyz;
    u_xlat0 = textureLod(sampler3D(_DisplacementNoise, sampler_DisplacementNoise), u_xlat0.xyz, 0.0);
    u_xlati1 = _DisplacementIndex;
    u_xlat0.x = dot(u_xlat0, uintBitsToFloat(ImmCB_1[u_xlati1]));
    u_xlat0.x = textureLod(sampler2D(_DisplacementRamp, sampler_DisplacementRamp), u_xlat0.xx, 0.0).x;
    u_xlat0.x = u_xlat0.x * _Displacement;
    u_xlat0.x = u_xlat0.x * in_COLOR0.x;
    u_xlat0.xyz = in_NORMAL0.xyz * u_xlat0.xxx + in_POSITION0.xyz;
    u_xlatb9 = 0.0<u_xlat0.z;
    u_xlat1.z = u_xlatb9 ? 9.99999975e-05 : float(0.0);
    u_xlat1.xy = in_TEXCOORD1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
    u_xlat1.xyz = (unity_MetaVertexControl.x) ? u_xlat1.xyz : u_xlat0.xyz;
    u_xlatb9 = 0.0<u_xlat1.z;
    u_xlat2.z = u_xlatb9 ? 9.99999975e-05 : float(0.0);
    u_xlat2.xy = in_TEXCOORD2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
    u_xlat1.xyz = (unity_MetaVertexControl.y) ? u_xlat2.xyz : u_xlat1.xyz;
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat1 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    gl_Position = u_xlat1 + unity_MatrixVP[3];
    u_xlat1.xyz = u_xlat0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyw = unity_ObjectToWorld[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    vs_TEXCOORD0.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    vs_COLOR0 = in_COLOR0;
    return;
}

