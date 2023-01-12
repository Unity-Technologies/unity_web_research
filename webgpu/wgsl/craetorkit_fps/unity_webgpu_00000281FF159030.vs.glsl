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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_LightShadowBias;
	mat4x4 unity_MatrixVP;
	vec4 unity_ParticleUVShiftData;
	vec4 _MainTex_ST;
};
layout(set = 1, binding = 1, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
 struct unity_ParticleInstanceData_type {
	uint[14] value;
};

layout(set = 0, binding = 4, std430) readonly buffer unity_ParticleInstanceData {
	unity_ParticleInstanceData_type unity_ParticleInstanceData_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec2 vs_TEXCOORD1;
layout(location = 1) out highp vec4 vs_TEXCOORD3;
void main()
{
vec4 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat14;
float u_xlat21;
bool u_xlatb21;
    u_xlati0 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlat7.x = uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(52 >> 2) + 0]);
    u_xlat7.x = floor(u_xlat7.x);
    u_xlat14 = u_xlat7.x / unity_ParticleUVShiftData.y;
    u_xlat14 = floor(u_xlat14);
    u_xlat7.x = (-u_xlat14) * unity_ParticleUVShiftData.y + u_xlat7.x;
    u_xlat7.x = floor(u_xlat7.x);
    u_xlat1.x = u_xlat7.x * unity_ParticleUVShiftData.z;
    u_xlat7.x = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat1.y = (-u_xlat14) * unity_ParticleUVShiftData.w + u_xlat7.x;
    u_xlat7.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat1.xy;
    u_xlatb21 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat7.xy = (bool(u_xlatb21)) ? u_xlat7.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD1.xy = u_xlat7.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD3 = in_COLOR0;
    u_xlat1.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(24 >> 2) + 0]));
    u_xlat2.z = u_xlat1.y;
    u_xlat3.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(0 >> 2) + 2]));
    u_xlat2.x = u_xlat3.z;
    u_xlat7.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(12 >> 2) + 2]));
    u_xlat4.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati0].value[(36 >> 2) + 2]));
    u_xlat2.y = u_xlat7.z;
    u_xlat3.z = u_xlat1.x;
    u_xlat1.x = u_xlat3.y;
    u_xlat1.y = u_xlat7.x;
    u_xlat3.y = u_xlat7.y;
    u_xlat0.xyz = u_xlat2.zxy * u_xlat1.yzx;
    u_xlat0.xyz = u_xlat1.zxy * u_xlat2.yzx + (-u_xlat0.xyz);
    u_xlat5.xyz = u_xlat2.yzx * u_xlat3.zxy;
    u_xlat5.xyz = u_xlat3.yzx * u_xlat2.zxy + (-u_xlat5.xyz);
    u_xlat21 = dot(u_xlat1.xyz, u_xlat5.xyz);
    u_xlat21 = float(1.0) / float(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat0.y = dot(in_NORMAL0.xyz, u_xlat0.xyz);
    u_xlat6.xyz = u_xlat1.zxy * u_xlat3.yzx;
    u_xlat6.xyz = u_xlat1.yzx * u_xlat3.zxy + (-u_xlat6.xyz);
    u_xlat6.xyz = vec3(u_xlat21) * u_xlat6.xyz;
    u_xlat5.xyz = vec3(u_xlat21) * u_xlat5.xyz;
    u_xlat0.x = dot(in_NORMAL0.xyz, u_xlat5.xyz);
    u_xlat0.z = dot(in_NORMAL0.xyz, u_xlat6.xyz);
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat1.w = u_xlat4.x;
    u_xlat1.x = dot(u_xlat1, in_POSITION0);
    u_xlat3.w = u_xlat4.y;
    u_xlat2.w = u_xlat4.z;
    u_xlat1.z = dot(u_xlat2, in_POSITION0);
    u_xlat1.y = dot(u_xlat3, in_POSITION0);
    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
    u_xlat21 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat2.xyz = vec3(u_xlat21) * u_xlat2.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat2.xyz);
    u_xlat21 = (-u_xlat21) * u_xlat21 + 1.0;
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = u_xlat21 * unity_LightShadowBias.z;
    u_xlat0.xyz = (-u_xlat0.xyz) * vec3(u_xlat21) + u_xlat1.xyz;
    u_xlatb21 = unity_LightShadowBias.z!=0.0;
    u_xlat0.xyz = (bool(u_xlatb21)) ? u_xlat0.xyz : u_xlat1.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * in_POSITION0.wwww + u_xlat0;
    u_xlat1.x = min(u_xlat0.w, u_xlat0.z);
    u_xlat1.x = (-u_xlat0.z) + u_xlat1.x;
    gl_Position.z = unity_LightShadowBias.y * u_xlat1.x + u_xlat0.z;
    gl_Position.xyw = u_xlat0.xyw;
    return;
}

