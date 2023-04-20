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
layout(set = 0, binding = 0) uniform mediump texture2D _Control;
layout(set = 0, binding = 1) uniform mediump texture2D _Splat0;
layout(set = 0, binding = 2) uniform mediump texture2D _Splat1;
layout(set = 0, binding = 3) uniform mediump texture2D _Splat2;
layout(set = 0, binding = 4) uniform mediump texture2D _Splat3;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_Control;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Splat0;
void main()
{
    u_xlat0.x = texture(sampler2D(_Splat0, sampler_Splat0), vs_TEXCOORD1.xy, _GlobalMipBias.x).w;
    u_xlat0.y = texture(sampler2D(_Splat1, sampler_Splat0), vs_TEXCOORD1.zw, _GlobalMipBias.x).w;
    u_xlat0.z = texture(sampler2D(_Splat2, sampler_Splat0), vs_TEXCOORD2.xy, _GlobalMipBias.x).w;
    u_xlat0.w = texture(sampler2D(_Splat3, sampler_Splat0), vs_TEXCOORD2.zw, _GlobalMipBias.x).w;
    u_xlat1.xy = _Control_TexelSize.zw + vec2(-1.0, -1.0);
    u_xlat1.xy = vs_TEXCOORD0.xy * u_xlat1.xy + vec2(0.5, 0.5);
    u_xlat1.xy = u_xlat1.xy * _Control_TexelSize.xy;
    u_xlat1 = texture(sampler2D(_Control, sampler_Control), u_xlat1.xy, _GlobalMipBias.x);
    u_xlat2 = (-u_xlat1) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat0 = u_xlat0 + (-u_xlat2);
    u_xlat0 = u_xlat0 * vec4(20.0, 20.0, 20.0, 20.0);
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = u_xlat1 * vec4(0.00100000005, 0.00100000005, 0.00100000005, 0.00100000005) + u_xlat0;
    u_xlat2 = (-u_xlat0) + u_xlat1;
    u_xlat3.x = u_xlat2.x * _DiffuseRemapScale0.w;
    u_xlat3.y = u_xlat2.y * _DiffuseRemapScale1.w;
    u_xlat3.z = u_xlat2.z * _DiffuseRemapScale2.w;
    u_xlat3.w = u_xlat2.w * _DiffuseRemapScale3.w;
    u_xlat0 = u_xlat0 + u_xlat3;
    u_xlatb2 = 4.0>=_NumLayersCount;
    u_xlat0 = (bool(u_xlatb2)) ? u_xlat0 : u_xlat1;
    u_xlat1.x = _MaskMapRemapOffset0.x + _MaskMapRemapScale0.x;
    u_xlat1.y = _MaskMapRemapOffset1.x + _MaskMapRemapScale1.x;
    u_xlat1.z = _MaskMapRemapOffset2.x + _MaskMapRemapScale3.x;
    u_xlat1.w = _MaskMapRemapOffset3.x + _MaskMapRemapScale3.x;
    u_xlat1 = u_xlat1 + (-vec4(_Metallic0, _Metallic1, _Metallic2, _Metallic3));
    u_xlat1 = vec4(_LayerHasMask0, _LayerHasMask1, _LayerHasMask2, _LayerHasMask3) * u_xlat1 + vec4(_Metallic0, _Metallic1, _Metallic2, _Metallic3);
    SV_Target0 = vec4(dot(u_xlat0, u_xlat1));
    return;
}

