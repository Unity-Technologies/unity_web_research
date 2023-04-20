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
layout(set = 1, binding = 2, std140) uniform VGlobals {
	mat4x4 unity_MatrixVP;
};
layout(set = 1, binding = 1, std140) uniform _Terrain {
	float _NormalScale0;
	float _NormalScale1;
	float _NormalScale2;
	float _NormalScale3;
	float _Metallic0;
	float _Metallic1;
	float _Metallic2;
	float _Metallic3;
	float _Smoothness0;
	float _Smoothness1;
	float _Smoothness2;
	float _Smoothness3;
	vec4 _DiffuseRemapScale0;
	vec4 _DiffuseRemapScale1;
	vec4 _DiffuseRemapScale2;
	vec4 _DiffuseRemapScale3;
	vec4 _MaskMapRemapOffset0;
	vec4 _MaskMapRemapOffset1;
	vec4 _MaskMapRemapOffset2;
	vec4 _MaskMapRemapOffset3;
	vec4 _MaskMapRemapScale0;
	vec4 _MaskMapRemapScale1;
	vec4 _MaskMapRemapScale2;
	vec4 _MaskMapRemapScale3;
	vec4 _Control_ST;
	vec4 _Control_TexelSize;
	float _DiffuseHasAlpha0;
	float _DiffuseHasAlpha1;
	float _DiffuseHasAlpha2;
	float _DiffuseHasAlpha3;
	float _LayerHasMask0;
	float _LayerHasMask1;
	float _LayerHasMask2;
	float _LayerHasMask3;
	vec4 _Splat0_ST;
	vec4 _Splat1_ST;
	vec4 _Splat2_ST;
	vec4 _Splat3_ST;
	float _HeightTransition;
	float _NumLayersCount;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
highp vec3 vs_TEXCOORD3;
highp  vec4 phase0_Output0_3;
highp float vs_TEXCOORD6;
highp vec3 vs_TEXCOORD4;
highp vec3 vs_TEXCOORD7;
vec4 u_xlat0;
void main()
{
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    vs_TEXCOORD0.zw = vec2(0.0, 0.0);
    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _Splat0_ST.xy + _Splat0_ST.zw;
    vs_TEXCOORD1.zw = in_TEXCOORD0.xy * _Splat1_ST.xy + _Splat1_ST.zw;
    vs_TEXCOORD2.xy = in_TEXCOORD0.xy * _Splat2_ST.xy + _Splat2_ST.zw;
    vs_TEXCOORD2.zw = in_TEXCOORD0.xy * _Splat3_ST.xy + _Splat3_ST.zw;
    phase0_Output0_3 = vec4(0.0, 0.0, 0.0, 0.0);
    vs_TEXCOORD4.xyz = vec3(0.0, 0.0, 0.0);
    vs_TEXCOORD7.xyz = vec3(0.0, 0.0, 0.0);
    u_xlat0 = in_POSITION0.yyyy * unity_MatrixVP[1];
    u_xlat0 = unity_MatrixVP[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_MatrixVP[2] * in_POSITION0.zzzz + u_xlat0;
    gl_Position = u_xlat0 + unity_MatrixVP[3];
vs_TEXCOORD3 = phase0_Output0_3.xyz;
vs_TEXCOORD6 = phase0_Output0_3.w;
    return;
}

