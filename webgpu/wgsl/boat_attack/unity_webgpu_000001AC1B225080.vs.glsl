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
layout(set = 1, binding = 2, std140) uniform VGlobals {
	vec3 _WorldSpaceCameraPos;
	mat4x4 unity_MatrixVP;
	float _ProbeSize;
	float _CullDistance;
	int _MaxAllowedSubdiv;
	int _MinAllowedSubdiv;
	int _DebugProbeVolumeSampling;
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
layout(set = 1, binding = 4, std140) uniform ShaderVariablesProbeVolumes {
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
layout(set = 1, binding = 1, std140) uniform Props {
	float _Validity;
	float _DilationThreshold;
	float _TouchupedByVolume;
	vec4 _IndexInAtlas;
	vec4 _Offset;
	float _RelativeSize;
};
 struct _APVResIndex_type {
	uint[1] value;
};

layout(set = 0, binding = 3, std430) readonly buffer _APVResIndex {
	_APVResIndex_type _APVResIndex_buf[];
};
 struct _APVResCellIndices_type {
	uint[3] value;
};

layout(set = 0, binding = 4, std430) readonly buffer _APVResCellIndices {
	_APVResCellIndices_type _APVResCellIndices_buf[];
};
layout(set = 0, binding = 5) uniform mediump texture3D _APVResValidity;
 struct _positionNormalBuffer_type {
	uint[4] value;
};

layout(set = 0, binding = 6, std430) readonly buffer _positionNormalBuffer {
	_positionNormalBuffer_type _positionNormalBuffer_buf[];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 3) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec3 vs_TEXCOORD1;
highp vec4 vs_COLOR0;
highp vec2 vs_TEXCOORD0;
highp  vec4 phase0_Output0_3;
highp vec2 vs_TEXCOORD2;
vec4 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec3 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
bvec4 u_xlatb2;
vec3 u_xlat3;
ivec3 u_xlati3;
vec3 u_xlat4;
ivec3 u_xlati4;
uvec4 u_xlatu4;
bvec3 u_xlatb4;
vec3 u_xlat5;
ivec3 u_xlati5;
uvec4 u_xlatu5;
bvec3 u_xlatb5;
vec3 u_xlat6;
uvec4 u_xlatu6;
vec4 u_xlat7;
ivec2 u_xlati7;
uvec4 u_xlatu7;
bvec3 u_xlatb7;
vec3 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
bool u_xlatb10;
vec2 u_xlat12;
vec3 u_xlat15;
uvec3 u_xlatu15;
bvec3 u_xlatb16;
vec2 u_xlat20;
bool u_xlatb20;
float u_xlat22;
float u_xlat25;
float u_xlat30;
uint u_xlatu30;
bool u_xlatb30;
float u_xlat31;
int u_xlati31;
uint u_xlatu31;
bool u_xlatb31;
float u_xlat32;
int u_xlati32;
uint u_xlatu32;
float u_xlat33;
float u_xlat34;
float u_xlat36;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
    u_xlati0 = int(_IndexInAtlas.w);
    u_xlat10.xyz = (-_WorldSpaceCameraPos.xyz) + unity_ObjectToWorld[3].xyz;
    u_xlat10.x = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat10.x = sqrt(u_xlat10.x);
    u_xlatb10 = _CullDistance<u_xlat10.x;
    u_xlatb20 = _MaxAllowedSubdiv<u_xlati0;
    u_xlatb10 = u_xlatb20 || u_xlatb10;
    u_xlatb0 = u_xlati0<_MinAllowedSubdiv;
    u_xlatb0 = u_xlatb0 || u_xlatb10;
    if(!u_xlatb0){
        if(_DebugProbeVolumeSampling != 0) {
            u_xlat0.xyz = vec3(uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 0]), uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 1]), uintBitsToFloat(_positionNormalBuffer_buf[0].value[(0 >> 2) + 2]));
            u_xlat1.xyz = vec3(uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 0]), uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 1]), uintBitsToFloat(_positionNormalBuffer_buf[1].value[(0 >> 2) + 2]));
            u_xlat2.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
            u_xlat30 = dot(u_xlat2.xyz, u_xlat2.xyz);
            u_xlat30 = inversesqrt(u_xlat30);
            u_xlat2.xyz = vec3(u_xlat30) * u_xlat2.xyz;
            u_xlat3.xyz = u_xlat1.xyz * _Biases_CellInMinBrick_MinBrickSize.xxx + u_xlat0.xyz;
            u_xlat2.xyz = u_xlat2.xyz * _Biases_CellInMinBrick_MinBrickSize.yyy + u_xlat3.xyz;
            u_xlat3.xyz = u_xlat2.xyz / _NormalizationClamp_IndirectionEntryDim_Padding.zzz;
            u_xlat3.xyz = floor(u_xlat3.xyz);
            u_xlatb4.xyz = greaterThanEqual(u_xlat3.xyzx, _Weight_MinLoadedCellInEntries.yzwy).xyz;
            u_xlatb5.xyz = greaterThanEqual(_MaxLoadedCellInEntries_FrameIndex.xyzx, u_xlat3.xyzx).xyz;
            u_xlatb4.x = u_xlatb4.x && u_xlatb5.x;
            u_xlatb4.y = u_xlatb4.y && u_xlatb5.y;
            u_xlatb4.z = u_xlatb4.z && u_xlatb5.z;
            u_xlatb30 = u_xlatb4.y && u_xlatb4.x;
            u_xlatb30 = u_xlatb4.z && u_xlatb30;
            u_xlat4.xyz = u_xlat3.xyz + (-_MinEntryPos_Noise.xyz);
            u_xlati4.xyz = ivec3(u_xlat4.xyz);
            u_xlati5.xyz = ivec3(_IndicesDim_IndexChunkSize.xyw);
            u_xlati31 = u_xlati5.y * u_xlati5.x;
            u_xlati32 = u_xlati4.y * u_xlati5.x + u_xlati4.x;
            u_xlati31 = u_xlati4.z * u_xlati31 + u_xlati32;
            u_xlatu4.xyz = uvec3(_APVResCellIndices_buf[u_xlati31].value[(0 >> 2) + 0], _APVResCellIndices_buf[u_xlati31].value[(0 >> 2) + 1], _APVResCellIndices_buf[u_xlati31].value[(0 >> 2) + 2]);
            u_xlatb31 = int(u_xlatu4.x)!=int(0xFFFFFFFFu);
            u_xlatu32 = u_xlatu4.x >> (29u & uint(0x1F));
            u_xlat32 = float(u_xlatu32);
            u_xlat32 = u_xlat32 * 1.58496249;
            u_xlat32 = exp2(u_xlat32);
            u_xlatu6.w =  uint(int(u_xlat32));
            u_xlatu6.xyz = u_xlatu4.xyz & uvec3(536870911u, 1023u, 1023u);
            u_xlatu4 = uvec4(uint_bitfieldExtract(u_xlatu4.y, int(10) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.z, int(10) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.z, int(20) & int(0x1F), int(10) & int(0x1F)), uint_bitfieldExtract(u_xlatu4.y, int(20) & int(0x1F), int(10) & int(0x1F)));
            u_xlatu7.x = u_xlatu6.y;
            u_xlatu7.yz = u_xlatu4.xw;
            u_xlatu5.xyw = (bool(u_xlatb31)) ? u_xlatu7.xyz : uvec3(4294967295u, 4294967295u, 4294967295u);
            u_xlatu4.x = u_xlatu6.z;
            u_xlatu4.xyz = (bool(u_xlatb31)) ? u_xlatu4.xyz : uvec3(4294967295u, 4294967295u, 4294967295u);
            u_xlatu6.xy = (bool(u_xlatb31)) ? u_xlatu6.xw : uvec2(4294967295u, 4294967295u);
            u_xlatb30 = u_xlatb30 && u_xlatb31;
            u_xlat3.xyz = (-u_xlat3.xyz) * _NormalizationClamp_IndirectionEntryDim_Padding.zzz + u_xlat2.xyz;
            u_xlat31 = float(int(u_xlatu6.y));
            u_xlat31 = u_xlat31 * _Biases_CellInMinBrick_MinBrickSize.w;
            u_xlat3.xyz = u_xlat3.xyz / vec3(u_xlat31);
            u_xlat3.xyz = floor(u_xlat3.xyz);
            u_xlati3.xyz = ivec3(u_xlat3.xyz);
            u_xlatb16.xyz = greaterThanEqual(u_xlati3.xyzz, ivec4(u_xlatu5.xyww)).xyz;
            u_xlatb7.xyz = lessThan(u_xlati3.xyzx, ivec4(u_xlatu4.xyzx)).xyz;
            u_xlatb16.x = u_xlatb16.x && u_xlatb7.x;
            u_xlatb16.y = u_xlatb16.y && u_xlatb7.y;
            u_xlatb16.z = u_xlatb16.z && u_xlatb7.z;
            u_xlatb31 = u_xlatb16.y && u_xlatb16.x;
            u_xlati7.x = int((uint(u_xlatb16.z) * 0xffffffffu) & (uint(u_xlatb31) * 0xffffffffu));
            u_xlati4.xy = (-ivec2(u_xlatu5.xy)) + ivec2(u_xlatu4.xy);
            u_xlati3.xyz = (-ivec3(u_xlatu5.xyw)) + u_xlati3.xyz;
            u_xlati31 = u_xlati4.y * u_xlati4.x;
            u_xlati32 = u_xlati3.x * u_xlati4.y + u_xlati3.y;
            u_xlati31 = u_xlati3.z * u_xlati31 + u_xlati32;
            u_xlati7.y = int(u_xlatu6.x) * u_xlati5.z + u_xlati31;
            u_xlati3.xy = ivec2((uvec2(bvec2(u_xlatb30)) * 0xFFFFFFFFu) & uvec2(u_xlati7.xy));
            u_xlatu30 = _APVResIndex_buf[u_xlati3.y].value[(0 >> 2) + 0];
            u_xlatu30 = (u_xlati3.x != 0) ? u_xlatu30 : 4294967295u;
            u_xlatu31 = u_xlatu30 >> (28u & uint(0x1F));
            u_xlat31 = float(u_xlatu31);
            u_xlat31 = u_xlat31 * 1.58496249;
            u_xlat31 = exp2(u_xlat31);
            u_xlatu30 = u_xlatu30 & 268435455u;
            u_xlat30 = float(u_xlatu30);
            u_xlat32 = u_xlat30 * _RcpPoolDim_Padding.w;
            u_xlat3.z = floor(u_xlat32);
            u_xlat32 = _PoolDim_CellInMeters.y * _PoolDim_CellInMeters.x;
            u_xlat30 = (-u_xlat3.z) * u_xlat32 + u_xlat30;
            u_xlat32 = u_xlat30 * _RcpPoolDim_Padding.x;
            u_xlat3.y = floor(u_xlat32);
            u_xlat30 = (-u_xlat3.y) * _PoolDim_CellInMeters.x + u_xlat30;
            u_xlat3.x = floor(u_xlat30);
            u_xlat4.xyz = u_xlat2.xyz / _Biases_CellInMinBrick_MinBrickSize.www;
            u_xlat4.xyz = u_xlat4.xyz / vec3(u_xlat31);
            u_xlat4.xyz = fract(u_xlat4.xyz);
            u_xlat3.xyz = u_xlat3.xyz + vec3(0.5, 0.5, 0.5);
            u_xlat3.xyz = u_xlat4.xyz * vec3(3.0, 3.0, 3.0) + u_xlat3.xyz;
            u_xlat3.xyz = u_xlat3.xyz * _RcpPoolDim_Padding.xyz;
            u_xlat30 = u_xlat31 * _Biases_CellInMinBrick_MinBrickSize.w;
            u_xlat31 = u_xlat30 * 0.333333343;
            u_xlat4.xyz = u_xlat2.xyz / vec3(u_xlat31);
            u_xlat5.xyz = fract(u_xlat4.xyz);
            u_xlat4.xyz = u_xlat4.xyz + (-u_xlat5.xyz);
            u_xlat3.xyz = u_xlat3.xyz * _PoolDim_CellInMeters.xyz + vec3(-0.5, -0.5, -0.5);
            u_xlatu5.xyz =  uvec3(ivec3(u_xlat3.xyz));
            u_xlat3.xyz = fract(u_xlat3.xyz);
            u_xlat6.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
            u_xlatu5.w = 0u;
            u_xlat32 = texelFetch(_APVResValidity, ivec3(u_xlatu5.xyz), int(u_xlatu5.w)).x;
            u_xlat32 = u_xlat32 * 255.0;
            u_xlatu32 = uint(u_xlat32);
            u_xlat33 = u_xlat6.y * u_xlat6.x;
            u_xlat34 = u_xlat6.z * u_xlat33;
            u_xlatu5 = uvec4(u_xlatu32) & uvec4(1u, 2u, 4u, 8u);
            u_xlat5.x = float(int(u_xlatu5.x));
            u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat0.xyz);
            u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
            u_xlat36 = inversesqrt(u_xlat36);
            u_xlat7.xyz = u_xlat0.xyz * vec3(u_xlat36);
            u_xlat36 = dot(u_xlat7.xyz, u_xlat1.xyz);
            u_xlat36 = u_xlat36 + (-_LeakReductionParams.z);
            u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
            u_xlat5.x = u_xlat5.x * u_xlat36;
            u_xlat6.xy = u_xlat3.xy * u_xlat6.yx;
            u_xlat7.xy = u_xlat6.zz * u_xlat6.xy;
            u_xlatu15.xyz = min(u_xlatu5.yzw, uvec3(1u, 1u, 1u));
            u_xlat15.xyz = vec3(ivec3(u_xlatu15.xyz));
            u_xlat8.xyz = vec3(u_xlat30) * vec3(0.333333343, 0.0, 0.0) + u_xlat0.xyz;
            u_xlat36 = dot(u_xlat8.xyz, u_xlat8.xyz);
            u_xlat36 = inversesqrt(u_xlat36);
            u_xlat8.xyz = vec3(u_xlat36) * u_xlat8.xyz;
            u_xlat36 = dot(u_xlat8.xyz, u_xlat1.xyz);
            u_xlat36 = u_xlat36 + (-_LeakReductionParams.z);
            u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
            u_xlat15.x = u_xlat15.x * u_xlat36;
            u_xlat8.x = u_xlat15.x * u_xlat7.x;
            u_xlat34 = u_xlat34 * u_xlat5.x + u_xlat8.x;
            u_xlat7.xzw = vec3(u_xlat30) * vec3(0.0, 0.333333343, 0.0) + u_xlat0.xyz;
            u_xlat5.x = dot(u_xlat7.xzw, u_xlat7.xzw);
            u_xlat5.x = inversesqrt(u_xlat5.x);
            u_xlat7.xzw = u_xlat5.xxx * u_xlat7.xzw;
            u_xlat5.x = dot(u_xlat7.xzw, u_xlat1.xyz);
            u_xlat5.x = u_xlat5.x + (-_LeakReductionParams.z);
            u_xlat5.x = clamp(u_xlat5.x, 0.0, 1.0);
            u_xlat5.x = u_xlat15.y * u_xlat5.x;
            u_xlat8.y = u_xlat5.x * u_xlat7.y;
            u_xlat34 = u_xlat7.y * u_xlat5.x + u_xlat34;
            u_xlat5.x = u_xlat3.y * u_xlat3.x;
            u_xlat15.x = u_xlat6.z * u_xlat5.x;
            u_xlat7.xyz = vec3(u_xlat30) * vec3(0.333333343, 0.333333343, 0.0) + u_xlat0.xyz;
            u_xlat25 = dot(u_xlat7.xyz, u_xlat7.xyz);
            u_xlat25 = inversesqrt(u_xlat25);
            u_xlat7.xyz = vec3(u_xlat25) * u_xlat7.xyz;
            u_xlat25 = dot(u_xlat7.xyz, u_xlat1.xyz);
            u_xlat25 = u_xlat25 + (-_LeakReductionParams.z);
            u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
            u_xlat25 = u_xlat15.z * u_xlat25;
            u_xlat8.z = u_xlat25 * u_xlat15.x;
            u_xlat34 = u_xlat15.x * u_xlat25 + u_xlat34;
            u_xlat33 = u_xlat3.z * u_xlat33;
            u_xlatu7 = uvec4(u_xlatu32) & uvec4(16u, 32u, 64u, 128u);
            u_xlatu7 = min(u_xlatu7, uvec4(1u, 1u, 1u, 1u));
            u_xlat7 = vec4(ivec4(u_xlatu7));
            u_xlat15.xyz = vec3(u_xlat30) * vec3(0.0, 0.0, 0.333333343) + u_xlat0.xyz;
            u_xlat32 = dot(u_xlat15.xyz, u_xlat15.xyz);
            u_xlat32 = inversesqrt(u_xlat32);
            u_xlat15.xyz = vec3(u_xlat32) * u_xlat15.xyz;
            u_xlat32 = dot(u_xlat15.xyz, u_xlat1.xyz);
            u_xlat32 = u_xlat32 + (-_LeakReductionParams.z);
            u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
            u_xlat32 = u_xlat7.x * u_xlat32;
            u_xlat9.x = u_xlat32 * u_xlat33;
            u_xlat32 = u_xlat33 * u_xlat32 + u_xlat34;
            u_xlat15.xy = u_xlat3.zz * u_xlat6.xy;
            u_xlat6.xyz = vec3(u_xlat30) * vec3(0.333333343, 0.0, 0.333333343) + u_xlat0.xyz;
            u_xlat33 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat33 = inversesqrt(u_xlat33);
            u_xlat6.xyz = vec3(u_xlat33) * u_xlat6.xyz;
            u_xlat33 = dot(u_xlat6.xyz, u_xlat1.xyz);
            u_xlat33 = u_xlat33 + (-_LeakReductionParams.z);
            u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
            u_xlat33 = u_xlat7.y * u_xlat33;
            u_xlat9.y = u_xlat33 * u_xlat15.x;
            u_xlat32 = u_xlat15.x * u_xlat33 + u_xlat32;
            u_xlat6.xyz = vec3(u_xlat30) * vec3(0.0, 0.333333343, 0.333333343) + u_xlat0.xyz;
            u_xlat33 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat33 = inversesqrt(u_xlat33);
            u_xlat6.xyz = vec3(u_xlat33) * u_xlat6.xyz;
            u_xlat33 = dot(u_xlat6.xyz, u_xlat1.xyz);
            u_xlat33 = u_xlat33 + (-_LeakReductionParams.z);
            u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
            u_xlat33 = u_xlat7.z * u_xlat33;
            u_xlat9.z = u_xlat33 * u_xlat15.y;
            u_xlat32 = u_xlat15.y * u_xlat33 + u_xlat32;
            u_xlat33 = u_xlat3.z * u_xlat5.x;
            u_xlat0.xyz = vec3(u_xlat30) * vec3(0.333333343, 0.333333343, 0.333333343) + u_xlat0.xyz;
            u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
            u_xlat34 = inversesqrt(u_xlat34);
            u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat34);
            u_xlat0.x = dot(u_xlat0.xyz, u_xlat1.xyz);
            u_xlat0.x = u_xlat0.x + (-_LeakReductionParams.z);
            u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
            u_xlat0.x = u_xlat7.w * u_xlat0.x;
            u_xlat10.x = u_xlat0.x * u_xlat33;
            u_xlat0.x = u_xlat33 * u_xlat0.x + u_xlat32;
            u_xlat0.x = max(u_xlat0.x, 9.99999975e-05);
            u_xlat0.x = float(1.0) / float(u_xlat0.x);
            u_xlat1.xyz = u_xlat0.xxx * u_xlat8.xyz;
            u_xlat5.xyz = u_xlat0.xxx * u_xlat9.xyz;
            u_xlat6.xyz = u_xlat1.xxx * vec3(1.0, 0.0, 0.0) + (-u_xlat3.xyz);
            u_xlat6.xyz = u_xlat1.yyy * vec3(0.0, 1.0, 0.0) + u_xlat6.xyz;
            u_xlat1.xyz = u_xlat1.zzz * vec3(1.0, 1.0, 0.0) + u_xlat6.xyz;
            u_xlat1.xyz = u_xlat5.xxx * vec3(0.0, 0.0, 1.0) + u_xlat1.xyz;
            u_xlat1.xyz = u_xlat5.yyy * vec3(1.0, 0.0, 1.0) + u_xlat1.xyz;
            u_xlat1.xyz = u_xlat5.zzz * vec3(0.0, 1.0, 1.0) + u_xlat1.xyz;
            u_xlat0.xyz = u_xlat10.xxx * u_xlat0.xxx + u_xlat1.xyz;
            u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
            u_xlatb1 = _LeakReductionParams.x!=0.0;
            u_xlat2.xyz = (-u_xlat4.xyz) * vec3(u_xlat31) + u_xlat2.xyz;
            u_xlat2.xyz = u_xlat2.xyz / vec3(u_xlat31);
            u_xlat0.xyz = (bool(u_xlatb1)) ? u_xlat0.xyz : u_xlat2.xyz;
            u_xlat1.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-unity_ObjectToWorld[3].xyz);
            u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
            u_xlat1.x = sqrt(u_xlat1.x);
            u_xlatb1 = u_xlat1.x<9.99999975e-05;
            if(u_xlatb1){
                u_xlat1.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
                u_xlat1.x = u_xlat1.y * u_xlat1.x;
                u_xlat1.z = u_xlat1.z * u_xlat1.x;
            } else {
                u_xlat2.xyz = vec3(u_xlat30) * vec3(-0.333333343, 0.0, 0.0) + unity_ObjectToWorld[3].xyz;
                u_xlat2.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
                u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
                u_xlat2.x = sqrt(u_xlat2.x);
                u_xlatb2.x = u_xlat2.x<9.99999975e-05;
                if(u_xlatb2.x){
                    u_xlat2.xy = (-u_xlat0.yz) + vec2(1.0, 1.0);
                    u_xlat2.x = u_xlat0.x * u_xlat2.x;
                    u_xlat1.z = u_xlat2.y * u_xlat2.x;
                } else {
                    u_xlat2.xyz = vec3(u_xlat30) * vec3(-0.333333343, -0.333333343, 0.0) + unity_ObjectToWorld[3].xyz;
                    u_xlat2.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
                    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
                    u_xlat2.x = sqrt(u_xlat2.x);
                    u_xlatb2.x = u_xlat2.x<9.99999975e-05;
                    if(u_xlatb2.x){
                        u_xlat2.x = u_xlat0.y * u_xlat0.x;
                        u_xlat12.x = (-u_xlat0.z) + 1.0;
                        u_xlat1.z = u_xlat12.x * u_xlat2.x;
                    } else {
                        u_xlat2.xyz = vec3(u_xlat30) * vec3(0.0, -0.333333343, 0.0) + unity_ObjectToWorld[3].xyz;
                        u_xlat2.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
                        u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
                        u_xlat2.x = sqrt(u_xlat2.x);
                        u_xlatb2.x = u_xlat2.x<9.99999975e-05;
                        if(u_xlatb2.x){
                            u_xlat2.xy = (-u_xlat0.xz) + vec2(1.0, 1.0);
                            u_xlat2.x = u_xlat0.y * u_xlat2.x;
                            u_xlat1.z = u_xlat2.y * u_xlat2.x;
                        } else {
                            u_xlat2.xyz = vec3(u_xlat30) * vec3(-0.333333343, 0.0, -0.333333343) + unity_ObjectToWorld[3].xyz;
                            u_xlat2.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
                            u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
                            u_xlat2.x = sqrt(u_xlat2.x);
                            u_xlat12.xy = (-u_xlat0.yx) + vec2(1.0, 1.0);
                            u_xlat3.xy = u_xlat0.xy * u_xlat12.xy;
                            u_xlat5.xyz = vec3(u_xlat30) * vec3(0.0, 0.0, -0.333333343) + unity_ObjectToWorld[3].xyz;
                            u_xlat5.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat5.xyz);
                            u_xlat32 = dot(u_xlat5.xyz, u_xlat5.xyz);
                            u_xlat2.w = sqrt(u_xlat32);
                            u_xlat12.x = u_xlat12.x * u_xlat12.y;
                            u_xlat12.x = u_xlat0.z * u_xlat12.x;
                            u_xlat5.xyz = vec3(u_xlat30) * vec3(-0.333333343, -0.333333343, -0.333333343) + unity_ObjectToWorld[3].xyz;
                            u_xlat5.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat5.xyz);
                            u_xlat22 = dot(u_xlat5.xyz, u_xlat5.xyz);
                            u_xlat2.z = sqrt(u_xlat22);
                            u_xlatb2.xzw = lessThan(u_xlat2.xxzw, vec4(9.99999975e-05, 0.0, 9.99999975e-05, 9.99999975e-05)).xzw;
                            u_xlat0.x = u_xlat0.y * u_xlat0.x;
                            u_xlat0.x = u_xlat0.z * u_xlat0.x;
                            u_xlat5.xyz = vec3(u_xlat30) * vec3(0.0, -0.333333343, -0.333333343) + unity_ObjectToWorld[3].xyz;
                            u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat31) + (-u_xlat5.xyz);
                            u_xlat10.x = dot(u_xlat4.xyz, u_xlat4.xyz);
                            u_xlat10.x = sqrt(u_xlat10.x);
                            u_xlatb10 = u_xlat10.x<9.99999975e-05;
                            u_xlat20.xy = u_xlat0.zz * u_xlat3.xy;
                            u_xlat10.x = u_xlatb10 ? u_xlat20.y : float(0.0);
                            u_xlat0.x = (u_xlatb2.z) ? u_xlat0.x : u_xlat10.x;
                            u_xlat0.x = (u_xlatb2.w) ? u_xlat12.x : u_xlat0.x;
                            u_xlat1.z = (u_xlatb2.x) ? u_xlat20.x : u_xlat0.x;
                        }
                    }
                }
            }
            u_xlatb0 = u_xlat1.z==0.0;
            if(u_xlatb0){
                gl_Position = vec4(0.0, 0.0, 0.0, 0.0);
                vs_COLOR0 = vec4(0.0, 0.0, 0.0, 0.0);
                phase0_Output0_3 = vec4(0.0, 0.0, 0.0, 1.0);
                vs_TEXCOORD1.xyz = vec3(0.0, 0.0, 0.0);
vs_TEXCOORD0 = phase0_Output0_3.xy;
vs_TEXCOORD2 = phase0_Output0_3.zw;
                return;
            }
            u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
            u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
            u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
            u_xlat31 = dot(u_xlat0, u_xlat0);
            u_xlat31 = inversesqrt(u_xlat31);
            u_xlat0 = u_xlat0 * vec4(u_xlat31);
            u_xlat0 = u_xlat0 * vec4(vec4(_ProbeSize, _ProbeSize, _ProbeSize, _ProbeSize));
            u_xlat0 = u_xlat0 * vec4(0.300000012, 0.300000012, 0.300000012, 0.300000012) + unity_ObjectToWorld[3];
            u_xlat2 = u_xlat0.yyyy * unity_MatrixVP[1];
            u_xlat2 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat2;
            u_xlat2 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat2;
            u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat2;
            u_xlat20.x = u_xlat0.z + 1.0;
            u_xlat20.x = u_xlat20.x * 0.199999988 + 0.600000024;
            gl_Position.z = u_xlat0.w * u_xlat20.x;
            u_xlat2.x = dot(in_NORMAL0.xyz, unity_ObjectToWorld[0].xyz);
            u_xlat2.y = dot(in_NORMAL0.xyz, unity_ObjectToWorld[1].xyz);
            u_xlat2.z = dot(in_NORMAL0.xyz, unity_ObjectToWorld[2].xyz);
            u_xlat20.x = dot(u_xlat2.xyz, u_xlat2.xyz);
            u_xlat20.x = inversesqrt(u_xlat20.x);
            vs_TEXCOORD1.xyz = u_xlat20.xxx * u_xlat2.xyz;
            gl_Position.xyw = u_xlat0.xyw;
            vs_COLOR0 = in_COLOR0;
            u_xlat1.xy = in_TEXCOORD0.xy;
        } else {
            u_xlat0.xyz = in_POSITION0.xyz * vec3(vec3(_ProbeSize, _ProbeSize, _ProbeSize));
            u_xlat2 = u_xlat0.yyyy * unity_ObjectToWorld[1];
            u_xlat2 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat2;
            u_xlat0 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat2;
            u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
            u_xlat2 = u_xlat0.yyyy * unity_MatrixVP[1];
            u_xlat2 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat2;
            u_xlat2 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat2;
            gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat2;
            u_xlat0.x = dot(in_NORMAL0.xyz, unity_ObjectToWorld[0].xyz);
            u_xlat0.y = dot(in_NORMAL0.xyz, unity_ObjectToWorld[1].xyz);
            u_xlat0.z = dot(in_NORMAL0.xyz, unity_ObjectToWorld[2].xyz);
            u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
            u_xlat30 = inversesqrt(u_xlat30);
            vs_TEXCOORD1.xyz = vec3(u_xlat30) * u_xlat0.xyz;
            vs_COLOR0 = vec4(0.0, 0.0, 0.0, 0.0);
            u_xlat1.x = float(0.0);
            u_xlat1.y = float(0.0);
            u_xlat1.z = float(0.0);
        }
    } else {
        gl_Position = vec4(0.0, 0.0, 0.0, 0.0);
        vs_COLOR0 = vec4(0.0, 0.0, 0.0, 0.0);
        u_xlat1.x = float(0.0);
        u_xlat1.y = float(0.0);
        u_xlat1.z = float(0.0);
        vs_TEXCOORD1.xyz = vec3(0.0, 0.0, 0.0);
    }
    phase0_Output0_3.xyz = u_xlat1.xyz;
    phase0_Output0_3.w = 1.0;
vs_TEXCOORD0 = phase0_Output0_3.xy;
vs_TEXCOORD2 = phase0_Output0_3.zw;
    return;
}

