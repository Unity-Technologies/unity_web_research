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
layout(set = 0, binding = 10, std140) uniform VGlobals {
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
	mat4x4 unity_MatrixVP;
	vec4 unity_ParticleUVShiftData;
	float unity_ParticleUseMeshColors;
	vec4 _MainTex_ST;
};
layout(set = 0, binding = 11, std140) uniform UnityDrawCallInfo {
	int unity_BaseInstanceID;
	int unity_InstanceCount;
};
 struct unity_ParticleInstanceData_type {
	uint[14] value;
};

layout(set = 0, binding = 12, std430) readonly buffer unity_ParticleInstanceData {
	unity_ParticleInstanceData_type unity_ParticleInstanceData_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec3 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_COLOR0;
layout(location = 3) out highp vec2 vs_TEXCOORD2;
layout(location = 4) out highp vec3 vs_TEXCOORD3;
layout(location = 5) out highp vec4 vs_TEXCOORD5;
highp uint vs_SV_InstanceID0;
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
bool u_xlatb1;
vec4 u_xlat2;
uvec3 u_xlatu2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat9;
float u_xlat17;
float u_xlat27;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
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
    u_xlat6.y = dot(u_xlat3, in_POSITION0);
    u_xlat7 = vec4(u_xlat17) * unity_MatrixVP[1];
    u_xlat4.w = u_xlat2.x;
    u_xlat5.z = u_xlat4.y;
    u_xlat4.x = u_xlat5.y;
    u_xlat4.y = u_xlat9.x;
    u_xlat5.y = u_xlat9.z;
    u_xlat9.x = dot(u_xlat4, u_xlat0);
    u_xlat6.x = dot(u_xlat4, in_POSITION0);
    u_xlat7 = unity_MatrixVP[0] * u_xlat9.xxxx + u_xlat7;
    u_xlat5.w = u_xlat2.z;
    u_xlat0.x = dot(u_xlat5, u_xlat0);
    u_xlat6.z = dot(u_xlat5, in_POSITION0);
    u_xlat0 = unity_MatrixVP[2] * u_xlat0.xxxx + u_xlat7;
    u_xlat0 = u_xlat0 + unity_MatrixVP[3];
    gl_Position = u_xlat0;
    u_xlat9.xyz = u_xlat4.yzx * u_xlat5.zxy;
    u_xlat9.xyz = u_xlat4.zxy * u_xlat5.yzx + (-u_xlat9.xyz);
    u_xlat2.xyz = u_xlat3.zxy * u_xlat5.yzx;
    u_xlat2.xyz = u_xlat3.yzx * u_xlat5.zxy + (-u_xlat2.xyz);
    u_xlat27 = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat27 = float(1.0) / float(u_xlat27);
    u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat27);
    u_xlat5.y = dot(in_NORMAL0.xyz, u_xlat9.xyz);
    u_xlat9.xyz = u_xlat3.yzx * u_xlat4.zxy;
    u_xlat9.xyz = u_xlat4.yzx * u_xlat3.zxy + (-u_xlat9.xyz);
    u_xlat9.xyz = vec3(u_xlat27) * u_xlat9.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat27);
    u_xlat5.x = dot(in_NORMAL0.xyz, u_xlat2.xyz);
    u_xlat5.z = dot(in_NORMAL0.xyz, u_xlat9.xyz);
    u_xlat9.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat9.x = inversesqrt(u_xlat9.x);
    u_xlat9.xyz = u_xlat9.xxx * u_xlat5.xyz;
    vs_TEXCOORD0.xyz = u_xlat9.xyz;
    vs_TEXCOORD1.xyz = u_xlat6.xyz;
    u_xlat3 = (-u_xlat6.xxxx) + unity_4LightPosX0;
    u_xlat4 = (-u_xlat6.yyyy) + unity_4LightPosY0;
    u_xlat5 = (-u_xlat6.zzzz) + unity_4LightPosZ0;
    u_xlat6 = in_COLOR0 + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat6 = vec4(unity_ParticleUseMeshColors) * u_xlat6 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlatu2.x = floatBitsToUint(u_xlat2.w) & 255u;
    u_xlat7.x = float(u_xlatu2.x);
    u_xlatu2.xy = uvec2(uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(8), int(8)), uint_bitfieldExtract(floatBitsToUint(u_xlat2.w), int(16), int(8)));
    u_xlatu2.z = floatBitsToUint(u_xlat2.w) >> 24u;
    u_xlat7.yzw = vec3(u_xlatu2.xyz);
    u_xlat2 = u_xlat6 * u_xlat7;
    vs_COLOR0 = u_xlat2 * vec4(0.00392156886, 0.00392156886, 0.00392156886, 0.00392156886);
    u_xlat2.x = u_xlat1.x / unity_ParticleUVShiftData.y;
    u_xlat2.x = floor(u_xlat2.x);
    u_xlat1.x = (-u_xlat2.x) * unity_ParticleUVShiftData.y + u_xlat1.x;
    u_xlat1.x = floor(u_xlat1.x);
    u_xlat6.x = u_xlat1.x * unity_ParticleUVShiftData.z;
    u_xlat1.x = (-unity_ParticleUVShiftData.w) + 1.0;
    u_xlat6.y = (-u_xlat2.x) * unity_ParticleUVShiftData.w + u_xlat1.x;
    u_xlat2.xy = in_TEXCOORD0.xy * unity_ParticleUVShiftData.zw + u_xlat6.xy;
    u_xlatb1 = unity_ParticleUVShiftData.x!=0.0;
    u_xlat2.xy = (bool(u_xlatb1)) ? u_xlat2.xy : in_TEXCOORD0.xy;
    vs_TEXCOORD2.xy = u_xlat2.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    u_xlat2 = u_xlat9.yyyy * u_xlat4;
    u_xlat4 = u_xlat4 * u_xlat4;
    u_xlat4 = u_xlat3 * u_xlat3 + u_xlat4;
    u_xlat2 = u_xlat3 * u_xlat9.xxxx + u_xlat2;
    u_xlat2 = u_xlat5 * u_xlat9.zzzz + u_xlat2;
    u_xlat3 = u_xlat5 * u_xlat5 + u_xlat4;
    u_xlat3 = max(u_xlat3, vec4(9.99999997e-07, 9.99999997e-07, 9.99999997e-07, 9.99999997e-07));
    u_xlat4 = inversesqrt(u_xlat3);
    u_xlat3 = u_xlat3 * unity_4LightAtten0 + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat3 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat3;
    u_xlat2 = u_xlat2 * u_xlat4;
    u_xlat2 = max(u_xlat2, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat2 = u_xlat3 * u_xlat2;
    u_xlat3.xyz = u_xlat2.yyy * unity_LightColor[1].xyz;
    u_xlat3.xyz = unity_LightColor[0].xyz * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat2.xyz = unity_LightColor[2].xyz * u_xlat2.zzz + u_xlat3.xyz;
    u_xlat2.xyz = unity_LightColor[3].xyz * u_xlat2.www + u_xlat2.xyz;
    u_xlat1.x = u_xlat9.y * u_xlat9.y;
    u_xlat1.x = u_xlat9.x * u_xlat9.x + (-u_xlat1.x);
    u_xlat3 = u_xlat9.yzzx * u_xlat9.xyzz;
    u_xlat4.x = dot(unity_SHBr, u_xlat3);
    u_xlat4.y = dot(unity_SHBg, u_xlat3);
    u_xlat4.z = dot(unity_SHBb, u_xlat3);
    u_xlat1.xyz = unity_SHC.xyz * u_xlat1.xxx + u_xlat4.xyz;
    vs_TEXCOORD3.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0.y = u_xlat0.y * _ProjectionParams.x;
    u_xlat1.xzw = u_xlat0.xwy * vec3(0.5, 0.5, 0.5);
    vs_TEXCOORD5.zw = u_xlat0.zw;
    vs_TEXCOORD5.xy = u_xlat1.zz + u_xlat1.xw;
    vs_SV_InstanceID0 =  uint(gl_InstanceIndex);
    return;
}

