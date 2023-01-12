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
	vec4 unity_4LightPosX0;
	vec4 unity_4LightPosY0;
	vec4 unity_4LightPosZ0;
	vec4 unity_4LightAtten0;
	vec4 unity_LightColor[8];
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

layout(set = 0, binding = 9, std430) readonly buffer unity_ParticleInstanceData {
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
highp vec4 vs_TEXCOORD4;
layout(location = 5) out highp vec3 vs_TEXCOORD5;
highp vec4 vs_TEXCOORD7;
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
vec4 u_xlat7;
vec4 u_xlat8;
vec2 u_xlat9;
uvec3 u_xlatu9;
vec3 u_xlat10;
float u_xlat11;
float u_xlat18;
float u_xlat19;
float u_xlat27;
bool u_xlatb27;
float u_xlat28;
    u_xlat0.xyz = in_POSITION0.xyz;
    u_xlat0.w = 1.0;
    u_xlati1 = gl_InstanceIndex + unity_BaseInstanceID;
    u_xlat2 = vec4(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(36 >> 2) + 3]));
    u_xlat3.w = u_xlat2.y;
    u_xlat10.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(12 >> 2) + 2]));
    u_xlat3.y = u_xlat10.y;
    u_xlat4.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 1]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(24 >> 2) + 0]));
    u_xlat3.z = u_xlat4.x;
    u_xlat5.xyz = vec3(uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 2]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 0]), uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(0 >> 2) + 1]));
    u_xlat1.x = uintBitsToFloat(unity_ParticleInstanceData_buf[u_xlati1].value[(52 >> 2) + 0]);
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat3.x = u_xlat5.z;
    u_xlat19 = dot(u_xlat3, u_xlat0);
    u_xlat11 = dot(u_xlat3, in_POSITION0);
    u_xlat6 = vec4(u_xlat19) * unity_MatrixVP[1];
    u_xlat4.w = u_xlat2.x;
    u_xlat5.z = u_xlat4.y;
    u_xlat4.x = u_xlat5.y;
    u_xlat4.y = u_xlat10.x;
    u_xlat5.y = u_xlat10.z;
    u_xlat10.x = dot(u_xlat4, u_xlat0);
    u_xlat28 = dot(u_xlat4, in_POSITION0);
    u_xlat6 = unity_MatrixVP[0] * u_xlat10.xxxx + u_xlat6;
    u_xlat5.w = u_xlat2.z;
    u_xlat0.x = dot(u_xlat5, u_xlat0);
    u_xlat9.x = dot(u_xlat5, in_POSITION0);
    u_xlat6 = unity_MatrixVP[2] * u_xlat0.xxxx + u_xlat6;
    gl_Position = u_xlat6 + unity_MatrixVP[3];
    u_xlat6.xyz = u_xlat4.yzx * u_xlat5.zxy;
    u_xlat6.xyz = u_xlat4.zxy * u_xlat5.yzx + (-u_xlat6.xyz);
    u_xlat7.xyz = u_xlat3.zxy * u_xlat5.yzx;
    u_xlat7.xyz = u_xlat3.yzx * u_xlat5.zxy + (-u_xlat7.xyz);
    u_xlat5.y = dot(u_xlat5.xyz, in_TANGENT0.xyz);
    u_xlat18 = dot(u_xlat4.xyz, u_xlat7.xyz);
    u_xlat18 = float(1.0) / float(u_xlat18);
    u_xlat6.xyz = vec3(u_xlat18) * u_xlat6.xyz;
    u_xlat6.y = dot(in_NORMAL0.xyz, u_xlat6.xyz);
    u_xlat8.xyz = u_xlat3.yzx * u_xlat4.zxy;
    u_xlat8.xyz = u_xlat4.yzx * u_xlat3.zxy + (-u_xlat8.xyz);
    u_xlat5.x = dot(u_xlat3.xyz, in_TANGENT0.xyz);
    u_xlat5.z = dot(u_xlat4.xyz, in_TANGENT0.xyz);
    u_xlat3.xyz = vec3(u_xlat18) * u_xlat8.xyz;
    u_xlat4.xyz = vec3(u_xlat18) * u_xlat7.xyz;
    u_xlat6.x = dot(in_NORMAL0.xyz, u_xlat4.xyz);
    u_xlat6.z = dot(in_NORMAL0.xyz, u_xlat3.xyz);
    u_xlat18 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat3 = vec4(u_xlat18) * u_xlat6.xyzz;
    u_xlat18 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat4.xyz = vec3(u_xlat18) * u_xlat5.xyz;
    u_xlat5.xyz = u_xlat3.wxy * u_xlat4.xyz;
    u_xlat5.xyz = u_xlat3.ywx * u_xlat4.yzx + (-u_xlat5.xyz);
    u_xlat18 = in_TANGENT0.w * unity_WorldTransformParams.w;
    u_xlat5.xyz = vec3(u_xlat18) * u_xlat5.xyz;
    vs_TEXCOORD0.y = u_xlat5.x;
    vs_TEXCOORD0.z = u_xlat3.x;
    vs_TEXCOORD0.x = u_xlat4.z;
    vs_TEXCOORD0.w = u_xlat28;
    u_xlat6 = (-vec4(u_xlat28)) + unity_4LightPosX0;
    vs_TEXCOORD1.x = u_xlat4.x;
    vs_TEXCOORD2.x = u_xlat4.y;
    vs_TEXCOORD1.z = u_xlat3.y;
    vs_TEXCOORD1.y = u_xlat5.y;
    vs_TEXCOORD2.y = u_xlat5.z;
    vs_TEXCOORD1.w = u_xlat11;
    u_xlat4 = (-vec4(u_xlat11)) + unity_4LightPosY0;
    vs_TEXCOORD2.z = u_xlat3.w;
    vs_TEXCOORD2.w = u_xlat9.x;
    u_xlat5 = (-u_xlat9.xxxx) + unity_4LightPosZ0;
    u_xlat7 = in_COLOR0 + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat7 = vec4(unity_ParticleUseMeshColors) * u_xlat7 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlatu9.x = floatBitsToUint(u_xlat2.w) & 255u;
    u_xlat8.x = float(u_xlatu9.x);
    u_xlatu9.xy = uvec2(uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(8) & int(0x1F), int(8) & int(0x1F)), uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(16) & int(0x1F), int(8) & int(0x1F)));
    u_xlatu9.z = floatBitsToUint(u_xlat2.w) >> (24u & uint(0x1F));
    u_xlat8.yzw = vec3(u_xlatu9.xyz);
    u_xlat2 = u_xlat7 * u_xlat8;
    vs_COLOR0 = u_xlat2 * vec4(0.00392156886, 0.00392156886, 0.00392156886, 0.00392156886);
    u_xlat9.x = u_xlat1.x / unity_ParticleUVShiftData.y;
    u_xlat9.x = floor(u_xlat9.x);
    u_xlat18 = (-u_xlat9.x) * unity_ParticleUVShiftData.y + u_xlat1.x;
    u_xlat18 = floor(u_xlat18);
    u_xlat2.x = u_xlat18 * unity_ParticleUVShiftData.z;
    u_xlat18 = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat2.y = (-u_xlat9.x) * unity_ParticleUVShiftData.w + u_xlat18;
    u_xlat9.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat2.xy;
    u_xlatb27 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat9.xy = (bool(u_xlatb27)) ? u_xlat9.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD3.xy = u_xlat9.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat9.x = u_xlat19 * unity_MatrixV[1].z;
    u_xlat1.xzw = vec3(u_xlat19) * unity_MatrixVP[1].xyw;
    u_xlat1.xzw = unity_MatrixVP[0].xyw * u_xlat10.xxx + u_xlat1.xzw;
    u_xlat9.x = unity_MatrixV[0].z * u_xlat10.x + u_xlat9.x;
    u_xlat9.x = unity_MatrixV[2].z * u_xlat0.x + u_xlat9.x;
    u_xlat0.xzw = unity_MatrixVP[2].xyw * u_xlat0.xxx + u_xlat1.xzw;
    u_xlat0.xzw = u_xlat0.xzw + unity_MatrixVP[3].xyw;
    u_xlat9.x = u_xlat9.x + unity_MatrixV[3].z;
    vs_TEXCOORD4.z = (-u_xlat9.x);
    u_xlat0.y = u_xlat0.z * _ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
    vs_TEXCOORD4.w = u_xlat0.w;
    vs_TEXCOORD4.xy = u_xlat1.zz + u_xlat1.xw;
    u_xlat0 = u_xlat3.yyyy * u_xlat4;
    u_xlat1 = u_xlat4 * u_xlat4;
    u_xlat1 = u_xlat6 * u_xlat6 + u_xlat1;
    u_xlat0 = u_xlat6 * u_xlat3.xxxx + u_xlat0;
    u_xlat0 = u_xlat5 * u_xlat3.wwzw + u_xlat0;
    u_xlat1 = u_xlat5 * u_xlat5 + u_xlat1;
    u_xlat1 = max(u_xlat1, vec4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat2 = inversesqrt(u_xlat1);
    u_xlat1 = u_xlat1 * unity_4LightAtten0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat1;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat0 = max(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = u_xlat1 * u_xlat0;
    u_xlat1.xyz = u_xlat0.yyy * unity_LightColor[1].xyz;
    u_xlat1.xyz = unity_LightColor[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[2].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_LightColor[3].xyz * u_xlat0.www + u_xlat0.xyz;
    u_xlat27 = u_xlat3.y * u_xlat3.y;
    u_xlat27 = u_xlat3.x * u_xlat3.x + (-u_xlat27);
    u_xlat1 = u_xlat3.ywzx * u_xlat3;
    u_xlat2.x = dot(unity_SHBr, u_xlat1);
    u_xlat2.y = dot(unity_SHBg, u_xlat1);
    u_xlat2.z = dot(unity_SHBb, u_xlat1);
    u_xlat1.xyz = unity_SHC.xyz * vec3(u_xlat27) + u_xlat2.xyz;
    vs_TEXCOORD5.xyz = u_xlat0.xyz + u_xlat1.xyz;
    vs_TEXCOORD7 = vec4(0.0, 0.0, 0.0, 0.0);
    vs_SV_InstanceID0 =  uint(gl_InstanceIndex);
    return;
}
