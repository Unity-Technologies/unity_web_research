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
	vec4 _ProjectionParams;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_WorldTransformParams;
	mat4x4 unity_MatrixV;
	mat4x4 unity_MatrixVP;
	vec4 unity_ParticleUVShiftData;
	float unity_ParticleUseMeshColors;
	vec4 _MainTex_ST;
};
layout(set = 1, binding = 2, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
 struct unity_ParticleInstanceData_type {
	uint[14] value;
};

layout(set = 0, binding = 11, std430) readonly buffer unity_ParticleInstanceData {
	unity_ParticleInstanceData_type unity_ParticleInstanceData_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 4) in highp vec4 in_TANGENT0;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
layout(location = 3) out highp vec4 vs_COLOR0;
layout(location = 4) out highp vec2 vs_TEXCOORD3;
layout(location = 5) out highp float vs_TEXCOORD6;
highp vec4 vs_TEXCOORD4;
layout(location = 6) out highp vec3 vs_TEXCOORD5;
layout(location = 7) out highp vec4 vs_TEXCOORD7;
highp uint vs_SV_InstanceID0;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
uvec3 u_xlatu8;
vec3 u_xlat9;
float u_xlat16;
float u_xlat17;
bool u_xlatb24;
float u_xlat25;
    u_xlat0.xyz = in_POSITION0.xyz;
    u_xlat0.w = 1.0;
    u_xlati1 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlat2 = vec4(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 3]));
    u_xlat3.w = u_xlat2.y;
    u_xlat9.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 2]));
    u_xlat3.y = u_xlat9.y;
    u_xlat4.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 0]));
    u_xlat3.z = u_xlat4.x;
    u_xlat5.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 1]));
    u_xlat1.x = uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(52 >> 2) + 0]);
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat3.x = u_xlat5.z;
    u_xlat17 = dot(u_xlat3, u_xlat0);
    vs_TEXCOORD1.w = dot(u_xlat3, in_POSITION0);
    u_xlat6 = vec4(u_xlat17) * unity_MatrixVP[1];
    u_xlat4.w = u_xlat2.x;
    u_xlat5.z = u_xlat4.y;
    u_xlat4.x = u_xlat5.y;
    u_xlat4.y = u_xlat9.x;
    u_xlat5.y = u_xlat9.z;
    u_xlat9.x = dot(u_xlat4, u_xlat0);
    vs_TEXCOORD0.w = dot(u_xlat4, in_POSITION0);
    u_xlat6 = unity_MatrixVP[0] * u_xlat9.xxxx + u_xlat6;
    u_xlat5.w = u_xlat2.z;
    u_xlat0.x = dot(u_xlat5, u_xlat0);
    vs_TEXCOORD2.w = dot(u_xlat5, in_POSITION0);
    u_xlat6 = unity_MatrixVP[2] * u_xlat0.xxxx + u_xlat6;
    u_xlat6 = u_xlat6 + unity_MatrixVP[3];
    gl_Position = u_xlat6;
    u_xlat8.xyz = u_xlat4.yzx * u_xlat5.zxy;
    u_xlat8.xyz = u_xlat4.zxy * u_xlat5.yzx + (-u_xlat8.xyz);
    u_xlat2.xyz = u_xlat3.zxy * u_xlat5.yzx;
    u_xlat2.xyz = u_xlat3.yzx * u_xlat5.zxy + (-u_xlat2.xyz);
    u_xlat5.y = dot(u_xlat5.xyz, in_TANGENT0.xyz);
    u_xlat25 = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat25 = float(1.0) / float(u_xlat25);
    u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat25);
    u_xlat7.y = dot(in_NORMAL0.xyz, u_xlat8.xyz);
    u_xlat8.xyz = u_xlat3.yzx * u_xlat4.zxy;
    u_xlat8.xyz = u_xlat4.yzx * u_xlat3.zxy + (-u_xlat8.xyz);
    u_xlat5.x = dot(u_xlat3.xyz, in_TANGENT0.xyz);
    u_xlat5.z = dot(u_xlat4.xyz, in_TANGENT0.xyz);
    u_xlat8.xyz = vec3(u_xlat25) * u_xlat8.xyz;
    u_xlat2.xyz = vec3(u_xlat25) * u_xlat2.xyz;
    u_xlat7.x = dot(in_NORMAL0.xyz, u_xlat2.xyz);
    u_xlat7.z = dot(in_NORMAL0.xyz, u_xlat8.xyz);
    u_xlat8.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat3 = u_xlat8.xxxx * u_xlat7.xyzz;
    u_xlat8.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat8.xyz = u_xlat8.xxx * u_xlat5.xyz;
    u_xlat2.xyz = u_xlat8.xyz * u_xlat3.wxy;
    u_xlat2.xyz = u_xlat3.ywx * u_xlat8.yzx + (-u_xlat2.xyz);
    u_xlat25 = in_TANGENT0.w * unity_WorldTransformParams.w;
    u_xlat2.xyz = vec3(u_xlat25) * u_xlat2.xyz;
    vs_TEXCOORD0.y = u_xlat2.x;
    vs_TEXCOORD0.z = u_xlat3.x;
    vs_TEXCOORD0.x = u_xlat8.z;
    vs_TEXCOORD1.x = u_xlat8.x;
    vs_TEXCOORD2.x = u_xlat8.y;
    vs_TEXCOORD1.z = u_xlat3.y;
    vs_TEXCOORD1.y = u_xlat2.y;
    vs_TEXCOORD2.y = u_xlat2.z;
    vs_TEXCOORD2.z = u_xlat3.w;
    u_xlat4 = in_COLOR0 + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat4 = vec4(unity_ParticleUseMeshColors) * u_xlat4 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlatu8.x = floatBitsToUint(u_xlat2.w) & 255u;
    u_xlat5.x = float(u_xlatu8.x);
    u_xlatu8.xy = uvec2(uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(8) & int(0x1F), int(8) & int(0x1F)), uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(16) & int(0x1F), int(8) & int(0x1F)));
    u_xlatu8.z = floatBitsToUint(u_xlat2.w) >> (24u & uint(0x1F));
    u_xlat5.yzw = vec3(u_xlatu8.xyz);
    u_xlat2 = u_xlat4 * u_xlat5;
    vs_COLOR0 = u_xlat2 * vec4(0.00392156886, 0.00392156886, 0.00392156886, 0.00392156886);
    u_xlat8.x = u_xlat1.x / unity_ParticleUVShiftData.y;
    u_xlat8.x = floor(u_xlat8.x);
    u_xlat16 = (-u_xlat8.x) * unity_ParticleUVShiftData.y + u_xlat1.x;
    u_xlat16 = floor(u_xlat16);
    u_xlat2.x = u_xlat16 * unity_ParticleUVShiftData.z;
    u_xlat16 = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat2.y = (-u_xlat8.x) * unity_ParticleUVShiftData.w + u_xlat16;
    u_xlat8.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat2.xy;
    u_xlatb24 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat8.xy = (bool(u_xlatb24)) ? u_xlat8.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD3.xy = u_xlat8.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD6 = u_xlat6.z;
    vs_TEXCOORD7.zw = u_xlat6.zw;
    u_xlat8.x = u_xlat17 * unity_MatrixV[1].z;
    u_xlat1.xzw = vec3(u_xlat17) * unity_MatrixVP[1].xyw;
    u_xlat1.xzw = unity_MatrixVP[0].xyw * u_xlat9.xxx + u_xlat1.xzw;
    u_xlat8.x = unity_MatrixV[0].z * u_xlat9.x + u_xlat8.x;
    u_xlat8.x = unity_MatrixV[2].z * u_xlat0.x + u_xlat8.x;
    u_xlat0.xzw = unity_MatrixVP[2].xyw * u_xlat0.xxx + u_xlat1.xzw;
    u_xlat0.xzw = u_xlat0.xzw + unity_MatrixVP[3].xyw;
    u_xlat8.x = u_xlat8.x + unity_MatrixV[3].z;
    vs_TEXCOORD4.z = (-u_xlat8.x);
    vs_TEXCOORD4.w = u_xlat0.w;
    u_xlat1.x = float(0.5);
    u_xlat1.z = float(0.5);
    u_xlat1.y = _ProjectionParams.x;
    u_xlat0.xyz = u_xlat0.xzw * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat6.xyw;
    u_xlat0.w = u_xlat0.y * 0.5;
    vs_TEXCOORD4.xy = u_xlat0.zz + u_xlat0.xw;
    u_xlat0.x = u_xlat3.y * u_xlat3.y;
    u_xlat0.x = u_xlat3.x * u_xlat3.x + (-u_xlat0.x);
    u_xlat2 = u_xlat3.ywzx * u_xlat3;
    u_xlat3.x = dot(unity_SHBr, u_xlat2);
    u_xlat3.y = dot(unity_SHBg, u_xlat2);
    u_xlat3.z = dot(unity_SHBb, u_xlat2);
    vs_TEXCOORD5.xyz = unity_SHC.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat1.w = u_xlat1.y * 0.5;
    vs_TEXCOORD7.xy = u_xlat1.zz + u_xlat1.xw;
    vs_SV_InstanceID0 =  uint(gl_InstanceIndex);
    return;
}
