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
layout(set = 0, binding = 5, std140) uniform VGlobals {
	vec4 _ProjectionParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 unity_ParticleUVShiftData;
	float unity_ParticleUseMeshColors;
	vec4 _MainTex_ST;
};
layout(set = 0, binding = 6, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
 struct unity_ParticleInstanceData_type {
	uint[14] value;
};

layout(set = 0, binding = 7, std430) readonly buffer unity_ParticleInstanceData {
	unity_ParticleInstanceData_type unity_ParticleInstanceData_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD1;
highp vec4 vs_TEXCOORD3;
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat7;
uvec2 u_xlatu7;
float u_xlat12;
uint u_xlatu12;
bool u_xlatb12;
float u_xlat13;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
    u_xlat0.xyz = in_POSITION0.xyz;
    u_xlat0.w = 1.0;
    u_xlati1 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlat2.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 1]));
    u_xlat3.x = u_xlat2.z;
    u_xlat4.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 2]));
    u_xlat3.y = u_xlat4.x;
    u_xlat7.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 2]));
    u_xlat3.z = u_xlat7.y;
    u_xlat5 = vec4(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 3]));
    u_xlat1.x = uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(52 >> 2) + 0]);
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat3.w = u_xlat5.y;
    u_xlat13 = dot(u_xlat3, u_xlat0);
    u_xlat3 = vec4(u_xlat13) * unity_MatrixVP[1];
    u_xlat13 = u_xlat13 * unity_MatrixV[1].z;
    u_xlat4.x = u_xlat2.y;
    u_xlat2.y = u_xlat4.z;
    u_xlat4.z = u_xlat7.x;
    u_xlat2.z = u_xlat7.z;
    u_xlat4.w = u_xlat5.x;
    u_xlat7.x = dot(u_xlat4, u_xlat0);
    u_xlat3 = unity_MatrixVP[0] * u_xlat7.xxxx + u_xlat3;
    u_xlat7.x = unity_MatrixV[0].z * u_xlat7.x + u_xlat13;
    u_xlat2.w = u_xlat5.z;
    u_xlat0.x = dot(u_xlat2, u_xlat0);
    u_xlat2 = unity_MatrixVP[2] * u_xlat0.xxxx + u_xlat3;
    u_xlat0.x = unity_MatrixV[2].z * u_xlat0.x + u_xlat7.x;
    u_xlat0.x = u_xlat0.x + unity_MatrixV[3].z;
    vs_TEXCOORD3.z = (-u_xlat0.x);
    u_xlat0 = u_xlat2 + unity_MatrixVP[3];
    gl_Position = u_xlat0;
    u_xlat2 = in_COLOR0 + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat2 = vec4(unity_ParticleUseMeshColors) * u_xlat2 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlatu12 = floatBitsToUint(u_xlat5.w) & 255u;
    u_xlat3.x = float(u_xlatu12);
    u_xlatu7.xy = uvec2(uint_bitfieldExtract(floatBitsToUint(u_xlat5.w), int(8), int(8)), uint_bitfieldExtract(floatBitsToUint(u_xlat5.w), int(16), int(8)));
    u_xlatu12 = floatBitsToUint(u_xlat5.w) >> 24u;
    u_xlat3.w = float(u_xlatu12);
    u_xlat3.yz = vec2(u_xlatu7.xy);
    u_xlat2 = u_xlat2 * u_xlat3;
    vs_COLOR0 = u_xlat2 * vec4(0.00392156886, 0.00392156886, 0.00392156886, 0.00392156886);
    u_xlat12 = u_xlat1.x / unity_ParticleUVShiftData.y;
    u_xlat12 = floor(u_xlat12);
    u_xlat1.x = (-u_xlat12) * unity_ParticleUVShiftData.y + u_xlat1.x;
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_ParticleUVShiftData.z;
    u_xlat13 = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat1.y = (-u_xlat12) * unity_ParticleUVShiftData.w + u_xlat13;
    u_xlat1.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat1.xy;
    u_xlatb12 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat1.xy = (bool(u_xlatb12)) ? u_xlat1.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD1.xy = u_xlat1.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
    vs_TEXCOORD3.w = u_xlat0.w;
    vs_TEXCOORD3.xy = u_xlat1.zz + u_xlat1.xw;
    return;
}

