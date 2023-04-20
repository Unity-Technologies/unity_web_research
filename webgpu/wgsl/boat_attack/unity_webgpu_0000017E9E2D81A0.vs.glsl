#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
	vec3 _WorldSpaceCameraPos;
	mat4x4 unity_MatrixInvV;
	mat4x4 unity_MatrixVP;
	float _ProbeSize;
	int _ForceDebugNormalViewBias;
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
layout(set = 1, binding = 3, std140) uniform ShaderVariablesProbeVolumes {
	vec4 _PoolDim_CellInMeters;
	vec4 _RcpPoolDim_Padding;
	vec4 _MinEntryPos_Noise;
	vec4 _IndicesDim_IndexChunkSize;
	vec4 _Biases_CellInMinBrick_MinBrickSize;
	vec4 _LeakReductionParams;
	vec4 _Weight_MinLoadedCellInEntries;
	vec4 _MaxLoadedCellInEntries_FrameIndex;
	vec4 _NormalizationClamp_IndirectionEntryDim_Padding;
};
 struct _APVResIndex_type {
	uint[1] value;
};

layout(set = 0, binding = 2, std430) readonly buffer _APVResIndex {
	_APVResIndex_type _APVResIndex_buf[];
};
 struct _APVResCellIndices_type {
	uint[3] value;
};

layout(set = 0, binding = 3, std430) readonly buffer _APVResCellIndices {
	_APVResCellIndices_type _APVResCellIndices_buf[];
};
layout(set = 0, binding = 4) uniform mediump texture3D _APVResValidity;
 struct _positionNormalBuffer_type {
	uint[4] value;
};

layout(set = 0, binding = 5, std430) readonly buffer _positionNormalBuffer {
	_positionNormalBuffer_type _positionNormalBuffer_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
highp  vec4 phase0_Output0_3;
layout(location = 2) out highp vec2 vs_TEXCOORD2;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
ivec3 u_xlati3;
vec3 u_xlat4;
ivec3 u_xlati4;
uvec4 u_xlatu4;
bvec3 u_xlatb4;
vec4 u_xlat5;
ivec3 u_xlati5;
uvec4 u_xlatu5;
bvec3 u_xlatb5;
vec4 u_xlat6;
uvec4 u_xlatu6;
vec4 u_xlat7;
ivec2 u_xlati7;
uvec4 u_xlatu7;
bvec3 u_xlatb7;
vec4 u_xlat8;
bvec4 u_xlatb8;
vec4 u_xlat9;
vec4 u_xlat10;
uvec4 u_xlatu10;
vec4 u_xlat11;
vec3 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat18;
bvec3 u_xlatb20;
float u_xlat28;
float u_xlat32;
bool u_xlatb32;
float u_xlat36;
float u_xlat42;
uint u_xlatu42;
bool u_xlatb42;
float u_xlat43;
int u_xlati43;
uint u_xlatu43;
bool u_xlatb43;
float u_xlat45;
int u_xlati45;
uint u_xlatu45;
bool u_xlatb45;
float u_xlat46;
float u_xlat47;
float u_xlat50;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
    u_xlat0.xyz = vec3(uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 0]), uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 1]), uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 2]));
    u_xlat1.xyz = vec3(uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 0]), uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 1]), uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 2]));
    u_xlat2.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat42 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat2.xyz = vec3(u_xlat42) * u_xlat2.xyz;
    u_xlat3.xyz = u_xlat1.xyz * _Biases_CellInMinBrick_MinBrickSize.xxx + u_xlat0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * _Biases_CellInMinBrick_MinBrickSize.yyy + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat2.xyz / _NormalizationClamp_IndirectionEntryDim_Padding.zzz;
    u_xlat3.xyz = floor(u_xlat3.xyz);
    u_xlatb4.xyz = greaterThanEqual(u_xlat3.xyzx, _Weight_MinLoadedCellInEntries.yzwy).xyz;
    u_xlatb5.xyz = greaterThanEqual(_MaxLoadedCellInEntries_FrameIndex.xyzx, u_xlat3.xyzx).xyz;
    u_xlatb4.x = u_xlatb4.x && u_xlatb5.x;
    u_xlatb4.y = u_xlatb4.y && u_xlatb5.y;
    u_xlatb4.z = u_xlatb4.z && u_xlatb5.z;
    u_xlatb42 = u_xlatb4.y && u_xlatb4.x;
    u_xlatb42 = u_xlatb4.z && u_xlatb42;
    u_xlat4.xyz = u_xlat3.xyz + (-_MinEntryPos_Noise.xyz);
    u_xlati4.xyz = ivec3(u_xlat4.xyz);
    u_xlati5.xyz = ivec3(_IndicesDim_IndexChunkSize.xyw);
    u_xlati43 = u_xlati5.y * u_xlati5.x;
    u_xlati45 = u_xlati4.y * u_xlati5.x + u_xlati4.x;
    u_xlati43 = u_xlati4.z * u_xlati43 + u_xlati45;
    u_xlatu4.xyz = uvec3(_APVResCellIndices_buf[u_xlati43].value[(0 >> 2) + 0], _APVResCellIndices_buf[u_xlati43].value[(0 >> 2) + 1], _APVResCellIndices_buf[u_xlati43].value[(0 >> 2) + 2]);
    u_xlatb43 = int(u_xlatu4.x)!=int(0xFFFFFFFFu);
    u_xlatu45 = u_xlatu4.x >> (29u & uint(0x1F));
    u_xlat45 = float(u_xlatu45);
    u_xlat45 = u_xlat45 * 1.58496249;
    u_xlat45 = exp2(u_xlat45);
    u_xlatu6.w =  uint(int(u_xlat45));
    u_xlatu6.xyz = u_xlatu4.xyz & uvec3(536870911u, 1023u, 1023u);
    u_xlatu4 = uvec4(uint_bitfieldExtract(u_xlatu4.y, int(10) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.z, int(10) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.z, int(20) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.y, int(20) & int(0x1F), int(10) & int(0x1F)));
    u_xlatu7.x = u_xlatu6.y;
    u_xlatu7.yz = u_xlatu4.xw;
    u_xlatu5.xyw = (bool(u_xlatb43)) ? u_xlatu7.xyz : uvec3(4294967295u, 4294967295u, 4294967295u);
    u_xlatu4.x = u_xlatu6.z;
    u_xlatu4.xyz = (bool(u_xlatb43)) ? u_xlatu4.xyz : uvec3(4294967295u, 4294967295u, 4294967295u);
    u_xlatu6.xy = (bool(u_xlatb43)) ? u_xlatu6.xw : uvec2(4294967295u, 4294967295u);
    u_xlatb42 = u_xlatb42 && u_xlatb43;
    u_xlat3.xyz = (-u_xlat3.xyz) * _NormalizationClamp_IndirectionEntryDim_Padding.zzz + u_xlat2.xyz;
    u_xlat43 = float(int(u_xlatu6.y));
    u_xlat43 = u_xlat43 * _Biases_CellInMinBrick_MinBrickSize.w;
    u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat43);
    u_xlat3.xyz = floor(u_xlat3.xyz);
    u_xlati3.xyz = ivec3(u_xlat3.xyz);
    u_xlatb20.xyz = greaterThanEqual(u_xlati3.xyzz, ivec4(u_xlatu5.xyww)).xyz;
    u_xlatb7.xyz = lessThan(u_xlati3.xyzx, ivec4(u_xlatu4.xyzx)).xyz;
    u_xlatb20.x = u_xlatb20.x && u_xlatb7.x;
    u_xlatb20.y = u_xlatb20.y && u_xlatb7.y;
    u_xlatb20.z = u_xlatb20.z && u_xlatb7.z;
    u_xlatb43 = u_xlatb20.y && u_xlatb20.x;
    u_xlati7.x = int((uint(u_xlatb20.z) * 0xffffffffu) & (uint(u_xlatb43) * 0xffffffffu));
    u_xlati4.xy = (-ivec2(u_xlatu5.xy)) + ivec2(u_xlatu4.xy);
    u_xlati3.xyz = (-ivec3(u_xlatu5.xyw)) + u_xlati3.xyz;
    u_xlati43 = u_xlati4.y * u_xlati4.x;
    u_xlati3.x = u_xlati3.x * u_xlati4.y + u_xlati3.y;
    u_xlati43 = u_xlati3.z * u_xlati43 + u_xlati3.x;
    u_xlati7.y = int(u_xlatu6.x) * u_xlati5.z + u_xlati43;
    u_xlati3.xy = ivec2((uvec2(bvec2(u_xlatb42)) * 0xFFFFFFFFu) & uvec2(u_xlati7.xy));
    u_xlatu42 = _APVResIndex_buf[u_xlati3.y].value[(0 >> 2) + 0];
    u_xlatu42 = (u_xlati3.x != 0) ? u_xlatu42 : 4294967295u;
    u_xlatu43 = u_xlatu42 >> (28u & uint(0x1F));
    u_xlat43 = float(u_xlatu43);
    u_xlat43 = u_xlat43 * 1.58496249;
    u_xlat43 = exp2(u_xlat43);
    u_xlatu42 = u_xlatu42 & 268435455u;
    u_xlat42 = float(u_xlatu42);
    u_xlat3.x = u_xlat42 * _RcpPoolDim_Padding.w;
    u_xlat3.z = floor(u_xlat3.x);
    u_xlat45 = _PoolDim_CellInMeters.y * _PoolDim_CellInMeters.x;
    u_xlat42 = (-u_xlat3.z) * u_xlat45 + u_xlat42;
    u_xlat45 = u_xlat42 * _RcpPoolDim_Padding.x;
    u_xlat3.y = floor(u_xlat45);
    u_xlat42 = (-u_xlat3.y) * _PoolDim_CellInMeters.x + u_xlat42;
    u_xlat3.x = floor(u_xlat42);
    u_xlat4.xyz = u_xlat2.xyz / _Biases_CellInMinBrick_MinBrickSize.www;
    u_xlat4.xyz = u_xlat4.xyz / vec3(u_xlat43);
    u_xlat4.xyz = fract(u_xlat4.xyz);
    u_xlat3.xyz = u_xlat3.xyz + vec3(0.5, 0.5, 0.5);
    u_xlat3.xyz = u_xlat4.xyz * vec3(3.0, 3.0, 3.0) + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _RcpPoolDim_Padding.xyz;
    u_xlat42 = u_xlat43 * _Biases_CellInMinBrick_MinBrickSize.w;
    u_xlat4.xyz = vec3(u_xlat42) * vec3(0.333333343, 0.333333343, 0.0);
    u_xlat5.xyz = u_xlat2.xyz / u_xlat4.xxx;
    u_xlat6.xyz = fract(u_xlat5.xyz);
    u_xlat5.xyz = u_xlat5.xyz + (-u_xlat6.xyz);
    u_xlat6.yzw = u_xlat4.xxx * u_xlat5.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _PoolDim_CellInMeters.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlatu7.xyz =  uvec3(ivec3(u_xlat3.xyz));
    u_xlat3.xyz = fract(u_xlat3.xyz);
    u_xlat8.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlatu7.w = 0u;
    u_xlat43 = texelFetch(_APVResValidity, ivec3(u_xlatu7.xyz), int(u_xlatu7.w)).x;
    u_xlat43 = u_xlat43 * 255.0;
    u_xlatu43 = uint(u_xlat43);
    u_xlat45 = u_xlat8.y * u_xlat8.x;
    u_xlat46 = u_xlat8.z * u_xlat45;
    u_xlatu7 = uvec4(u_xlatu43) & uvec4(1u, 2u, 4u, 8u);
    u_xlat6.x = float(int(u_xlatu7.x));
    u_xlat9.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat0.xyz);
    u_xlat47 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat10.xyz = vec3(u_xlat47) * u_xlat9.xyz;
    u_xlat47 = dot(u_xlat10.xyz, u_xlat1.xyz);
    u_xlat47 = u_xlat47 + (-_LeakReductionParams.z);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat47 = u_xlat6.x * u_xlat47;
    u_xlat8.xy = u_xlat3.xy * u_xlat8.yx;
    u_xlat10.xy = u_xlat8.zz * u_xlat8.xy;
    u_xlatu7.xyz = min(u_xlatu7.yzw, uvec3(1u, 1u, 1u));
    u_xlat7.xyz = vec3(ivec3(u_xlatu7.xyz));
    u_xlat11.xyz = vec3(u_xlat42) * vec3(0.333333343, 0.0, 0.0) + u_xlat9.xyz;
    u_xlat50 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat50 = inversesqrt(u_xlat50);
    u_xlat11.xyz = vec3(u_xlat50) * u_xlat11.xyz;
    u_xlat50 = dot(u_xlat11.xyz, u_xlat1.xyz);
    u_xlat50 = u_xlat50 + (-_LeakReductionParams.z);
    u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
    u_xlat50 = u_xlat7.x * u_xlat50;
    u_xlat11.x = u_xlat50 * u_xlat10.x;
    u_xlat46 = u_xlat46 * u_xlat47 + u_xlat11.x;
    u_xlat10.xzw = vec3(u_xlat42) * vec3(0.0, 0.333333343, 0.0) + u_xlat9.xyz;
    u_xlat47 = dot(u_xlat10.xzw, u_xlat10.xzw);
    u_xlat47 = inversesqrt(u_xlat47);
    u_xlat10.xzw = vec3(u_xlat47) * u_xlat10.xzw;
    u_xlat47 = dot(u_xlat10.xzw, u_xlat1.xyz);
    u_xlat47 = u_xlat47 + (-_LeakReductionParams.z);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat47 = u_xlat7.y * u_xlat47;
    u_xlat11.y = u_xlat47 * u_xlat10.y;
    u_xlat46 = u_xlat10.y * u_xlat47 + u_xlat46;
    u_xlat47 = u_xlat3.y * u_xlat3.x;
    u_xlat36 = u_xlat8.z * u_xlat47;
    u_xlat10.xyz = vec3(u_xlat42) * vec3(0.333333343, 0.333333343, 0.0) + u_xlat9.xyz;
    u_xlat50 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat50 = inversesqrt(u_xlat50);
    u_xlat10.xyz = vec3(u_xlat50) * u_xlat10.xyz;
    u_xlat50 = dot(u_xlat10.xyz, u_xlat1.xyz);
    u_xlat50 = u_xlat50 + (-_LeakReductionParams.z);
    u_xlat50 = clamp(u_xlat50, 0.0, 1.0);
    u_xlat50 = u_xlat7.z * u_xlat50;
    u_xlat11.z = u_xlat50 * u_xlat36;
    u_xlat46 = u_xlat36 * u_xlat50 + u_xlat46;
    u_xlat45 = u_xlat3.z * u_xlat45;
    u_xlatu10 = uvec4(u_xlatu43) & uvec4(16u, 32u, 64u, 128u);
    u_xlatu10 = min(u_xlatu10, uvec4(1u, 1u, 1u, 1u));
    u_xlat10 = vec4(ivec4(u_xlatu10.yxzw));
    u_xlat12.xyz = vec3(u_xlat42) * vec3(0.0, 0.0, 0.333333343) + u_xlat9.xyz;
    u_xlat43 = dot(u_xlat12.xyz, u_xlat12.xyz);
    u_xlat43 = inversesqrt(u_xlat43);
    u_xlat12.xyz = vec3(u_xlat43) * u_xlat12.xyz;
    u_xlat43 = dot(u_xlat12.xyz, u_xlat1.xyz);
    u_xlat43 = u_xlat43 + (-_LeakReductionParams.z);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat43 = u_xlat10.y * u_xlat43;
    u_xlat12.x = u_xlat43 * u_xlat45;
    u_xlat43 = u_xlat45 * u_xlat43 + u_xlat46;
    u_xlat8.xy = u_xlat3.zz * u_xlat8.xy;
    u_xlat13.xyz = vec3(u_xlat42) * vec3(0.333333343, 0.0, 0.333333343) + u_xlat9.xyz;
    u_xlat45 = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat13.xyz = vec3(u_xlat45) * u_xlat13.xyz;
    u_xlat45 = dot(u_xlat13.xyz, u_xlat1.xyz);
    u_xlat45 = u_xlat45 + (-_LeakReductionParams.z);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat45 = u_xlat10.x * u_xlat45;
    u_xlat12.y = u_xlat45 * u_xlat8.x;
    u_xlat43 = u_xlat8.x * u_xlat45 + u_xlat43;
    u_xlat8.xzw = vec3(u_xlat42) * vec3(0.0, 0.333333343, 0.333333343) + u_xlat9.xyz;
    u_xlat45 = dot(u_xlat8.xzw, u_xlat8.xzw);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat8.xzw = vec3(u_xlat45) * u_xlat8.xzw;
    u_xlat45 = dot(u_xlat8.xzw, u_xlat1.xyz);
    u_xlat45 = u_xlat45 + (-_LeakReductionParams.z);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat45 = u_xlat10.z * u_xlat45;
    u_xlat12.z = u_xlat45 * u_xlat8.y;
    u_xlat43 = u_xlat8.y * u_xlat45 + u_xlat43;
    u_xlat45 = u_xlat3.z * u_xlat47;
    u_xlat8.xyz = vec3(u_xlat42) * vec3(0.333333343, 0.333333343, 0.333333343) + u_xlat9.xyz;
    u_xlat46 = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat46 = inversesqrt(u_xlat46);
    u_xlat8.xyz = vec3(u_xlat46) * u_xlat8.xyz;
    u_xlat46 = dot(u_xlat8.xyz, u_xlat1.xyz);
    u_xlat46 = u_xlat46 + (-_LeakReductionParams.z);
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat46 = u_xlat10.w * u_xlat46;
    u_xlat5.w = u_xlat45 * u_xlat46;
    u_xlat43 = u_xlat45 * u_xlat46 + u_xlat43;
    u_xlat43 = max(u_xlat43, 9.99999975e-05);
    u_xlat43 = float(1.0) / float(u_xlat43);
    u_xlat8.xyz = vec3(u_xlat43) * u_xlat11.xyz;
    u_xlat9.xyz = vec3(u_xlat43) * u_xlat12.xyz;
    u_xlat11.xyz = u_xlat8.xxx * vec3(1.0, 0.0, 0.0) + (-u_xlat3.xyz);
    u_xlat8.xyw = u_xlat8.yyy * vec3(0.0, 1.0, 0.0) + u_xlat11.xyz;
    u_xlat8.xyz = u_xlat8.zzz * vec3(1.0, 1.0, 0.0) + u_xlat8.xyw;
    u_xlat8.xyz = u_xlat9.xxx * vec3(0.0, 0.0, 1.0) + u_xlat8.xyz;
    u_xlat8.xyz = u_xlat9.yyy * vec3(1.0, 0.0, 1.0) + u_xlat8.xyz;
    u_xlat8.xyz = u_xlat9.zzz * vec3(0.0, 1.0, 1.0) + u_xlat8.xyz;
    u_xlat8.xyz = u_xlat5.www * vec3(u_xlat43) + u_xlat8.xyz;
    u_xlat3.xyz = u_xlat3.xyz + u_xlat8.xyz;
    u_xlatb43 = _LeakReductionParams.x!=0.0;
    u_xlat8.xyz = (-u_xlat5.xyz) * u_xlat4.xxx + u_xlat2.xyz;
    u_xlat8.xyz = u_xlat8.xyz / u_xlat4.xxx;
    u_xlat3.xyz = (bool(u_xlatb43)) ? u_xlat3.xyz : u_xlat8.xyz;
    u_xlatb43 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(in_COLOR0.z);
    if(u_xlatb43){
        u_xlat8 = in_COLOR0.zzzz + vec4(-0.200000003, -0.300000012, -0.400000006, -0.5);
        u_xlatb8 = lessThan(abs(u_xlat8), vec4(0.0199999996, 0.0199999996, 0.0199999996, 0.0199999996));
        u_xlat9.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.zyz;
        u_xlat9.x = u_xlat7.y;
        u_xlat9 = (u_xlatb8.x) ? u_xlat9 : u_xlat6;
        u_xlat11.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.yyz;
        u_xlat11.x = u_xlat7.z;
        u_xlat9 = (u_xlatb8.y) ? u_xlat11 : u_xlat9;
        u_xlat7.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.yzz;
        u_xlat7 = (u_xlatb8.z) ? u_xlat7 : u_xlat9;
        u_xlat9.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.zzy;
        u_xlat9.x = u_xlat10.y;
        u_xlat7 = (u_xlatb8.w) ? u_xlat9 : u_xlat7;
        u_xlat8.xyz = in_COLOR0.zzz + vec3(-0.600000024, -0.699999988, -0.800000012);
        u_xlatb8.xyz = lessThan(abs(u_xlat8.xyzx), vec4(0.0199999996, 0.0199999996, 0.0199999996, 0.0)).xyz;
        u_xlat9.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.zyy;
        u_xlat9.x = u_xlat10.z;
        u_xlat7 = (u_xlatb8.x) ? u_xlat9 : u_xlat7;
        u_xlat9.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.xxx;
        u_xlat9.x = u_xlat10.w;
        u_xlat7 = (u_xlatb8.y) ? u_xlat9 : u_xlat7;
        u_xlat10.yzw = u_xlat5.xyz * u_xlat4.xxx + u_xlat4.yzy;
        u_xlat7 = (u_xlatb8.z) ? u_xlat10 : u_xlat7;
        u_xlat18.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat7.yzw);
        u_xlat43 = dot(u_xlat18.xyz, u_xlat18.xyz);
        u_xlat43 = sqrt(u_xlat43);
        u_xlatb43 = u_xlat43<9.99999975e-05;
        if(u_xlatb43){
            u_xlat18.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
            u_xlat43 = u_xlat18.y * u_xlat18.x;
            u_xlat8.x = u_xlat18.z * u_xlat43;
        } else {
            u_xlat18.xyz = vec3(u_xlat42) * vec3(-0.333333343, 0.0, 0.0) + u_xlat7.yzw;
            u_xlat18.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat18.xyz);
            u_xlat43 = dot(u_xlat18.xyz, u_xlat18.xyz);
            u_xlat43 = sqrt(u_xlat43);
            u_xlatb43 = u_xlat43<9.99999975e-05;
            if(u_xlatb43){
                u_xlat18.xy = (-u_xlat3.yz) + vec2(1.0, 1.0);
                u_xlat43 = u_xlat3.x * u_xlat18.x;
                u_xlat8.x = u_xlat18.y * u_xlat43;
            } else {
                u_xlat18.xyz = vec3(u_xlat42) * vec3(-0.333333343, -0.333333343, 0.0) + u_xlat7.yzw;
                u_xlat18.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat18.xyz);
                u_xlat43 = dot(u_xlat18.xyz, u_xlat18.xyz);
                u_xlat43 = sqrt(u_xlat43);
                u_xlatb43 = u_xlat43<9.99999975e-05;
                if(u_xlatb43){
                    u_xlat43 = u_xlat3.y * u_xlat3.x;
                    u_xlat45 = (-u_xlat3.z) + 1.0;
                    u_xlat8.x = u_xlat43 * u_xlat45;
                } else {
                    u_xlat18.xyz = vec3(u_xlat42) * vec3(0.0, -0.333333343, 0.0) + u_xlat7.yzw;
                    u_xlat18.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat18.xyz);
                    u_xlat43 = dot(u_xlat18.xyz, u_xlat18.xyz);
                    u_xlat43 = sqrt(u_xlat43);
                    u_xlatb43 = u_xlat43<9.99999975e-05;
                    if(u_xlatb43){
                        u_xlat18.xy = (-u_xlat3.xz) + vec2(1.0, 1.0);
                        u_xlat43 = u_xlat3.y * u_xlat18.x;
                        u_xlat8.x = u_xlat18.y * u_xlat43;
                    } else {
                        u_xlat18.xyz = vec3(u_xlat42) * vec3(-0.333333343, 0.0, -0.333333343) + u_xlat7.yzw;
                        u_xlat18.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat18.xyz);
                        u_xlat43 = dot(u_xlat18.xyz, u_xlat18.xyz);
                        u_xlat43 = sqrt(u_xlat43);
                        u_xlatb43 = u_xlat43<9.99999975e-05;
                        u_xlat18.xy = (-u_xlat3.yx) + vec2(1.0, 1.0);
                        u_xlat9.xy = u_xlat3.xy * u_xlat18.xy;
                        u_xlat10.xyz = vec3(u_xlat42) * vec3(0.0, 0.0, -0.333333343) + u_xlat7.yzw;
                        u_xlat10.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat10.xyz);
                        u_xlat45 = dot(u_xlat10.xyz, u_xlat10.xyz);
                        u_xlat45 = sqrt(u_xlat45);
                        u_xlatb45 = u_xlat45<9.99999975e-05;
                        u_xlat18.x = u_xlat18.x * u_xlat18.y;
                        u_xlat10.xyz = vec3(u_xlat42) * vec3(-0.333333343, -0.333333343, -0.333333343) + u_xlat7.yzw;
                        u_xlat10.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat10.xyz);
                        u_xlat32 = dot(u_xlat10.xyz, u_xlat10.xyz);
                        u_xlat32 = sqrt(u_xlat32);
                        u_xlatb32 = u_xlat32<9.99999975e-05;
                        u_xlat18.z = u_xlat3.y * u_xlat3.x;
                        u_xlat18.xz = u_xlat3.zz * u_xlat18.xz;
                        u_xlat10.xyz = vec3(u_xlat42) * vec3(0.0, -0.333333343, -0.333333343) + u_xlat7.yzw;
                        u_xlat5.xyz = u_xlat5.xyz * u_xlat4.xxx + (-u_xlat10.xyz);
                        u_xlat42 = dot(u_xlat5.xyz, u_xlat5.xyz);
                        u_xlat42 = sqrt(u_xlat42);
                        u_xlatb42 = u_xlat42<9.99999975e-05;
                        u_xlat5.xy = u_xlat3.zz * u_xlat9.xy;
                        u_xlat42 = u_xlatb42 ? u_xlat5.y : float(0.0);
                        u_xlat42 = (u_xlatb32) ? u_xlat18.z : u_xlat42;
                        u_xlat42 = (u_xlatb45) ? u_xlat18.x : u_xlat42;
                        u_xlat8.x = (u_xlatb43) ? u_xlat5.x : u_xlat42;
                    }
                }
            }
        }
        u_xlat18.xyz = unity_MatrixInvV[1].xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
        u_xlat18.xyz = u_xlat18.xyz * vec3(0.666666687, 0.666666687, 0.666666687) + u_xlat7.yzw;
        u_xlat5.xyz = u_xlat18.xyz + unity_ObjectToWorld[3].xyz;
        u_xlat18.xyz = in_POSITION0.yyy * unity_MatrixInvV[1].xyz;
        u_xlat18.xyz = u_xlat18.xyz * vec3(0.5, 0.5, 0.5);
        u_xlat18.xyz = in_POSITION0.xxx * (-unity_MatrixInvV[0].xyz) + u_xlat18.xyz;
        u_xlat18.xyz = u_xlat18.xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
        u_xlat9.xyz = u_xlat18.xyz * vec3(20.0, 20.0, 20.0);
        u_xlat5.w = unity_ObjectToWorld[3].w;
        u_xlat9.w = 0.0;
        u_xlat5 = u_xlat5 + u_xlat9;
        u_xlat8.y = u_xlat7.x;
    } else {
        u_xlatb42 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(in_COLOR0.y);
        if(u_xlatb42){
            u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
            u_xlat42 = inversesqrt(u_xlat42);
            u_xlat1.xyz = vec3(u_xlat42) * u_xlat1.xyz;
            u_xlatb42 = 0.899999976<u_xlat1.y;
            u_xlat18.xyz = (bool(u_xlatb42)) ? vec3(0.0, 0.0, 1.0) : vec3(1.0, 0.0, 0.0);
            u_xlat7.xyz = u_xlat1.zxy * u_xlat18.xyz;
            u_xlat18.xyz = u_xlat1.yzx * u_xlat18.yzx + (-u_xlat7.xyz);
            u_xlat42 = dot(u_xlat18.xyz, u_xlat18.xyz);
            u_xlat42 = inversesqrt(u_xlat42);
            u_xlat18.xyz = vec3(u_xlat42) * u_xlat18.xyz;
            u_xlat7.xyz = u_xlat1.yzx * u_xlat18.zxy;
            u_xlat7.xyz = u_xlat18.yzx * u_xlat1.zxy + (-u_xlat7.xyz);
            u_xlat9.xyz = in_POSITION0.xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
            u_xlat9.xyz = u_xlat9.xyz * vec3(5.0, 5.0, 5.0);
            u_xlat7.xyz = u_xlat7.xyz * u_xlat9.yyy;
            u_xlat18.xyz = u_xlat18.xyz * u_xlat9.xxx + u_xlat7.xyz;
            u_xlat1.xyz = u_xlat1.xyz * u_xlat9.zzz + u_xlat18.xyz;
            u_xlat7 = u_xlat1.yyyy * unity_ObjectToWorld[1];
            u_xlat7 = unity_ObjectToWorld[0] * u_xlat1.xxxx + u_xlat7;
            u_xlat1 = unity_ObjectToWorld[2] * u_xlat1.zzzz + u_xlat7;
            u_xlat5 = u_xlat1 + unity_ObjectToWorld[3];
            u_xlat5.xyz = u_xlat0.xyz + u_xlat5.xyz;
        } else {
            u_xlatb0 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(in_COLOR0.x);
            if(u_xlatb0){
                if(_ForceDebugNormalViewBias != 0) {
                    u_xlat0.xyz = in_POSITION0.xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
                    u_xlat0.xyz = u_xlat0.xyz * vec3(1.5, 1.5, 1.5);
                    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
                    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
                    u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
                    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
                    u_xlat2.w = 0.0;
                    u_xlat5 = u_xlat0 + u_xlat2;
                } else {
                    gl_Position = vec4(0.0, 0.0, 0.0, 0.0);
                    vs_COLOR0 = vec4(0.0, 0.0, 0.0, 0.0);
                    phase0_Output0_3 = vec4(0.0, 0.0, 0.0, 1.0);
                    vs_TEXCOORD1.xyz = vec3(0.0, 0.0, 0.0);
vs_TEXCOORD0 = phase0_Output0_3.xy;
vs_TEXCOORD2 = phase0_Output0_3.zw;
                    return;
                }
            } else {
                u_xlat0.xyz = in_POSITION0.xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
                u_xlat0.xyz = u_xlat0.xyz * vec3(3.0, 3.0, 3.0);
                u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
                u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
                u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
                u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
                u_xlat1.xyz = u_xlat3.xyz * u_xlat4.xxx + u_xlat6.yzw;
                u_xlat1.w = 0.0;
                u_xlat5 = u_xlat0 + u_xlat1;
            }
        }
        u_xlat8.x = float(0.0);
        u_xlat8.y = float(1.0);
    }
    u_xlat0 = u_xlat5.yyyy * unity_MatrixVP[1];
    u_xlat0 = unity_MatrixVP[0] * u_xlat5.xxxx + u_xlat0;
    u_xlat0 = unity_MatrixVP[2] * u_xlat5.zzzz + u_xlat0;
    u_xlat0 = unity_MatrixVP[3] * u_xlat5.wwww + u_xlat0;
    u_xlat28 = u_xlat0.z + 1.0;
    u_xlat28 = u_xlat28 * 0.199999988 + 0.600000024;
    gl_Position.z = u_xlat0.w * u_xlat28;
    u_xlat1.x = dot(in_NORMAL0.xyz, unity_ObjectToWorld[0].xyz);
    u_xlat1.y = dot(in_NORMAL0.xyz, unity_ObjectToWorld[1].xyz);
    u_xlat1.z = dot(in_NORMAL0.xyz, unity_ObjectToWorld[2].xyz);
    u_xlat28 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat28 = inversesqrt(u_xlat28);
    vs_TEXCOORD1.xyz = vec3(u_xlat28) * u_xlat1.xyz;
    gl_Position.xyw = u_xlat0.xyw;
    vs_COLOR0 = in_COLOR0;
    u_xlat8.zw = in_TEXCOORD0.xy;
    phase0_Output0_3 = u_xlat8.zwxy;
vs_TEXCOORD0 = phase0_Output0_3.xy;
vs_TEXCOORD2 = phase0_Output0_3.zw;
    return;
}

