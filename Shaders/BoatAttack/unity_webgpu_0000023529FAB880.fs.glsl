#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _GlobalMipBias;
	vec3 _WorldSpaceCameraPos;
	vec4 _ScreenParams;
	vec4 unity_OrthoParams;
	mat4x4 unity_MatrixV;
};
layout(set = 1, binding = 1, std140) uniform UnityPerDraw {
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
layout(set = 0, binding = 0) uniform mediump texture2D Texture2D_B222E8F;
layout(location = 0) in highp vec3 vs_INTERP0;
layout(location = 1) in highp vec4 vs_INTERP2;
layout(location = 0) out highp vec4 SV_TARGET0;
layout(set = 0, binding = 1) uniform mediump  sampler samplerTexture2D_B222E8F;
int int_bitfieldInsert(int base, int insert, int offset, int bits) {
    uint mask = ~(uint(0xffffffffu) << uint(bits)) << uint(offset);
    return int((uint(base) & ~mask) | ((uint(insert) << uint(offset)) & mask));
}

void main()
{
vec4 u_xlat0;
int u_xlati0;
uvec3 u_xlatu0;
bool u_xlatb0;
vec3 u_xlat1;
float u_xlat2;
int u_xlati2;
uint u_xlatu2;
float u_xlat4;
int u_xlati4;
uint u_xlatu4;
bool u_xlatb4;
float u_xlat6;
uint u_xlatu6;
bool u_xlatb6;
    u_xlat0.xyz = (-vs_INTERP0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    u_xlatb6 = unity_OrthoParams.w==0.0;
    u_xlat2 = (u_xlatb6) ? u_xlat0.y : unity_MatrixV[1].z;
    u_xlat1.xyz = vec3(u_xlat2) * unity_WorldToObject[1].xyz;
    u_xlat0.x = (u_xlatb6) ? u_xlat0.x : unity_MatrixV[0].z;
    u_xlat2 = (u_xlatb6) ? u_xlat0.z : unity_MatrixV[2].z;
    u_xlat0.xzw = unity_WorldToObject[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToObject[2].xyz * vec3(u_xlat2) + u_xlat0.xzw;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    u_xlat0.xyz = abs(u_xlat0.xyz) * _ScreenParams.xyx;
    u_xlatu0.xyz = uvec3(u_xlat0.xyz);
    u_xlatu4 = u_xlatu0.z * 1025u;
    u_xlatu6 = u_xlatu4 >> (6u & uint(0x1F));
    u_xlati4 = int(u_xlatu6 ^ u_xlatu4);
    u_xlatu4 = uint(u_xlati4) * 9u;
    u_xlatu6 = u_xlatu4 >> (11u & uint(0x1F));
    u_xlati4 = int(u_xlatu6 ^ u_xlatu4);
    u_xlati4 = u_xlati4 * 32769;
    u_xlati2 = int(uint(u_xlati4) ^ u_xlatu0.y);
    u_xlatu2 = uint(u_xlati2) * 1025u;
    u_xlatu4 = u_xlatu2 >> (6u & uint(0x1F));
    u_xlati2 = int(u_xlatu4 ^ u_xlatu2);
    u_xlatu2 = uint(u_xlati2) * 9u;
    u_xlatu4 = u_xlatu2 >> (11u & uint(0x1F));
    u_xlati2 = int(u_xlatu4 ^ u_xlatu2);
    u_xlati2 = u_xlati2 * 32769;
    u_xlati0 = int(uint(u_xlati2) ^ u_xlatu0.x);
    u_xlatu0.x = uint(u_xlati0) * 1025u;
    u_xlatu2 = u_xlatu0.x >> (6u & uint(0x1F));
    u_xlati0 = int(u_xlatu2 ^ u_xlatu0.x);
    u_xlatu0.x = uint(u_xlati0) * 9u;
    u_xlatu2 = u_xlatu0.x >> (11u & uint(0x1F));
    u_xlati0 = int(u_xlatu2 ^ u_xlatu0.x);
    u_xlati0 = u_xlati0 * 32769;
    u_xlat0.x = intBitsToFloat(int(int_bitfieldInsert(1065353216, u_xlati0, 0 & int(0x1F), 23)));
    u_xlat0.x = u_xlat0.x + -1.0;
    u_xlat2 = (-u_xlat0.x) + 1.0;
    u_xlatb4 = unity_LODFade.x<0.0;
    u_xlat6 = unity_LODFade.x + 1.0;
    u_xlat4 = (u_xlatb4) ? u_xlat6 : unity_LODFade.x;
    u_xlatb6 = 0.5>=u_xlat4;
    u_xlat0.x = (u_xlatb6) ? u_xlat0.x : u_xlat2;
    u_xlat0.x = u_xlat4 * 2.0 + (-u_xlat0.x);
    u_xlat2 = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP2.xy, _GlobalMipBias.x).w;
    u_xlat0.x = u_xlat2 * u_xlat0.x + -0.400000006;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    SV_TARGET0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

