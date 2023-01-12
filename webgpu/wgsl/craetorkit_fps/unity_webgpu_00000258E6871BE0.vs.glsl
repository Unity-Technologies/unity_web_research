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
layout(set = 1, binding = 0, std140) uniform VGlobals {
	vec4 _SinTime;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_LightShadowBias;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixVP;
	float _Displacement;
	float _DisplacementScale;
	float _DisplacementSpeed;
	int _DisplacementIndex;
};
layout(set = 0, binding = 0) uniform mediump texture3D _DisplacementNoise;
layout(set = 0, binding = 1) uniform mediump texture2D _DisplacementRamp;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
highp vec3 vs_TEXCOORD1;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_DisplacementNoise;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_DisplacementRamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
float u_xlat12;
int u_xlati12;
bool u_xlatb12;
float u_xlat13;
    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyz;
    u_xlat1.xyz = in_POSITION0.xyz * vec3(vec3(_DisplacementScale, _DisplacementScale, _DisplacementScale));
    u_xlat1.xyz = u_xlat1.xyz * in_COLOR0.zzz;
    u_xlat2.y = _SinTime.y * _DisplacementSpeed;
    u_xlat2.x = float(0.0);
    u_xlat2.z = float(0.0);
    u_xlat1.xyz = u_xlat2.xyz * in_COLOR0.yyy + u_xlat1.xyz;
    u_xlat1 = textureLod(sampler3D(_DisplacementNoise, sampler_DisplacementNoise), u_xlat1.xyz, 0.0);
    u_xlati12 = _DisplacementIndex;
    u_xlat12 = dot(u_xlat1, uintBitsToFloat(ImmCB_1[u_xlati12]));
    u_xlat12 = textureLod(sampler2D(_DisplacementRamp, sampler_DisplacementRamp), vec2(u_xlat12), 0.0).x;
    u_xlat12 = u_xlat12 * _Displacement;
    u_xlat12 = u_xlat12 * in_COLOR0.x;
    u_xlat1.xyz = in_NORMAL0.xyz * vec3(u_xlat12) + in_POSITION0.xyz;
    u_xlat2 = u_xlat1.yyyy * unity_ObjectToWorld[1];
    u_xlat2 = unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_ObjectToWorld[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat2 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat2;
    u_xlat3.xyz = (-u_xlat2.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
    u_xlat12 = dot(u_xlat0.xyz, u_xlat3.xyz);
    u_xlat12 = (-u_xlat12) * u_xlat12 + 1.0;
    u_xlat12 = sqrt(u_xlat12);
    u_xlat12 = u_xlat12 * unity_LightShadowBias.z;
    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat12) + u_xlat2.xyz;
    u_xlatb12 = unity_LightShadowBias.z!=0.0;
    u_xlat0.xyz = (bool(u_xlatb12)) ? u_xlat0.xyz : u_xlat2.xyz;
    u_xlat3 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat3 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat3;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat3;
    u_xlat0 = unity_MatrixVP[3] * u_xlat2.wwww + u_xlat0;
    u_xlat13 = min(u_xlat0.w, u_xlat0.z);
    u_xlat13 = (-u_xlat0.z) + u_xlat13;
    gl_Position.z = unity_LightShadowBias.y * u_xlat13 + u_xlat0.z;
    gl_Position.xyw = u_xlat0.xyw;
    u_xlat0.xyz = u_xlat1.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * u_xlat1.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat1.zzz + u_xlat0.xyz;
    vs_TEXCOORD1.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    return;
}

