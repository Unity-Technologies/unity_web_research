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
layout(set = 0, binding = 1) uniform mediump texture2D Texture2D_D9BFD5F1;
layout(location = 0) in highp vec3 vs_INTERP1;
layout(location = 1) in highp vec4 vs_INTERP2;
layout(location = 2) in highp vec4 vs_INTERP3;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler samplerTexture2D_B222E8F;
layout(set = 0, binding = 3) uniform mediump  sampler samplerTexture2D_D9BFD5F1;
void main()
{
vec3 u_xlat0;
bvec2 u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
float u_xlat6;
    u_xlat0.x = texture(sampler2D(Texture2D_B222E8F, samplerTexture2D_B222E8F), vs_INTERP3.xy, _GlobalMipBias.x).w;
    u_xlat0.x = u_xlat0.x + -0.400000006;
    u_xlatb0.x = u_xlat0.x<0.0;
    if(((int(u_xlatb0.x) * int(0xffffffffu)))!=0){discard;}
    u_xlatb0.x = 0.0<vs_INTERP2.w;
    u_xlatb0.y = unity_WorldTransformParams.w>=0.0;
    u_xlat0.x = (u_xlatb0.x) ? float(1.0) : float(-1.0);
    u_xlat0.y = (u_xlatb0.y) ? float(1.0) : float(-1.0);
    u_xlat0.x = u_xlat0.y * u_xlat0.x;
    u_xlat2.xyz = vs_INTERP1.zxy * vs_INTERP2.yzx;
    u_xlat2.xyz = vs_INTERP1.yzx * vs_INTERP2.zxy + (-u_xlat2.xyz);
    u_xlat0.xyz = u_xlat2.xyz * u_xlat0.xxx;
    u_xlat1 = texture(sampler2D(Texture2D_D9BFD5F1, samplerTexture2D_D9BFD5F1), vs_INTERP3.xy, _GlobalMipBias.x);
    u_xlat1 = u_xlat1 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat6 = dot(u_xlat1, u_xlat1);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat1.xyz = vec3(u_xlat6) * u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.yyy;
    u_xlat0.xyz = u_xlat1.xxx * vs_INTERP2.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat1.zzz * vs_INTERP1.xyz + u_xlat0.xyz;
    u_xlat6 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat6 = inversesqrt(u_xlat6);
    SV_Target0.xyz = vec3(u_xlat6) * u_xlat0.xyz;
    SV_Target0.w = 0.0;
    return;
}

