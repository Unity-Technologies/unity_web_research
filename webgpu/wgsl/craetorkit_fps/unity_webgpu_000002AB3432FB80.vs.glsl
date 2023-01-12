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
	vec4 unity_ParticleUVShiftData;
	vec4 _MainTex_ST;
};
layout(set = 1, binding = 2, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
 struct unity_ParticleInstanceData_type {
	uint[14] value;
};

layout(set = 0, binding = 0, std430) readonly buffer unity_ParticleInstanceData {
	unity_ParticleInstanceData_type unity_ParticleInstanceData_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
highp vec2 vs_TEXCOORD0;
highp vec4 vs_TEXCOORD2;
void main()
{
vec4 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
float u_xlat12;
bool u_xlatb18;
    u_xlati0 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlat6.x = uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(52 >> 2) + 0]);
    u_xlat6.x = floor(u_xlat6.x);
    u_xlat12 = u_xlat6.x / unity_ParticleUVShiftData.y;
    u_xlat12 = floor(u_xlat12);
    u_xlat6.x = (-u_xlat12) * unity_ParticleUVShiftData.y + u_xlat6.x;
    u_xlat6.x = floor(u_xlat6.x);
    u_xlat1.x = u_xlat6.x * unity_ParticleUVShiftData.z;
    u_xlat6.x = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat1.y = (-u_xlat12) * unity_ParticleUVShiftData.w + u_xlat6.x;
    u_xlat6.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat1.xy;
    u_xlatb18 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat6.xy = (bool(u_xlatb18)) ? u_xlat6.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD0.xy = u_xlat6.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD2 = in_COLOR0;
    u_xlat1.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 1]));
    u_xlat2.x = u_xlat1.z;
    u_xlat3.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 2]));
    u_xlat2.y = u_xlat3.x;
    u_xlat6.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 2]));
    u_xlat4.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 2]));
    u_xlat2.z = u_xlat6.y;
    u_xlat2.w = u_xlat4.y;
    u_xlat5.xyz = in_POSITION0.xyz;
    u_xlat5.w = 1.0;
    u_xlat0.x = dot(u_xlat2, u_xlat5);
    u_xlat2 = u_xlat0.xxxx * unity_MatrixVP[1];
    u_xlat3.x = u_xlat1.y;
    u_xlat1.y = u_xlat3.z;
    u_xlat3.z = u_xlat6.x;
    u_xlat1.z = u_xlat6.z;
    u_xlat3.w = u_xlat4.x;
    u_xlat1.w = u_xlat4.z;
    u_xlat0.x = dot(u_xlat1, u_xlat5);
    u_xlat6.x = dot(u_xlat3, u_xlat5);
    u_xlat1 = unity_MatrixVP[0] * u_xlat6.xxxx + u_xlat2;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.xxxx + u_xlat1;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
    return;
}

