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
layout(set = 0, binding = 1) uniform mediump texture2D _Normal0;
layout(set = 0, binding = 2) uniform mediump texture2D _Normal1;
layout(set = 0, binding = 3) uniform mediump texture2D _Normal2;
layout(set = 0, binding = 4) uniform mediump texture2D _Normal3;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD1;
layout(location = 2) in highp  vec4 vs_TEXCOORD2;
layout(location = 3) in highp  vec4 vs_TEXCOORD3;
layout(location = 4) in highp  vec4 vs_TEXCOORD4;
layout(location = 5) in highp  vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
float u_xlat6;
float u_xlat7;
float u_xlat9;
float u_xlat10;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_Control;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Normal0;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_Normal0, sampler_Normal0), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyw;
    u_xlat0.x = u_xlat0.x * u_xlat0.z;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6 = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat1.xy = u_xlat0.xy * vec2(_NormalScale0);
    u_xlat0.x = min(u_xlat6, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat1.z = max(u_xlat0.x, 1.00000002e-16);
    u_xlat0.xyz = texture(sampler2D(_Normal1, sampler_Normal0), vs_TEXCOORD1.zw, _GlobalMipBias.x).xyw;
    u_xlat0.x = u_xlat0.x * u_xlat0.z;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6 = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat2.xy = u_xlat0.xy * vec2(vec2(_NormalScale1, _NormalScale1));
    u_xlat0.x = min(u_xlat6, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat2.z = max(u_xlat0.x, 1.00000002e-16);
    u_xlat0.xy = _Control_TexelSize.zw + vec2(-1.0, -1.0);
    u_xlat0.xy = vs_TEXCOORD0.xy * u_xlat0.xy + vec2(0.5, 0.5);
    u_xlat0.xy = u_xlat0.xy * _Control_TexelSize.xy;
    u_xlat0 = texture(sampler2D(_Control, sampler_Control), u_xlat0.xy, _GlobalMipBias.x);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.yyy;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat2.xyz = texture(sampler2D(_Normal2, sampler_Normal0), vs_TEXCOORD2.xy, _GlobalMipBias.x).xyw;
    u_xlat2.x = u_xlat2.x * u_xlat2.z;
    u_xlat0.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat10 = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat2.xy = u_xlat0.xy * vec2(vec2(_NormalScale2, _NormalScale2));
    u_xlat0.x = min(u_xlat10, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat2.z = max(u_xlat0.x, 1.00000002e-16);
    u_xlat0.xyz = u_xlat0.zzz * u_xlat2.xyz + u_xlat1.xyz;
    u_xlat1.xyz = texture(sampler2D(_Normal3, sampler_Normal0), vs_TEXCOORD2.zw, _GlobalMipBias.x).xyw;
    u_xlat1.x = u_xlat1.x * u_xlat1.z;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat7 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat2.xy = u_xlat1.xy * vec2(vec2(_NormalScale3, _NormalScale3));
    u_xlat1.x = min(u_xlat7, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat2.z = max(u_xlat1.x, 1.00000002e-16);
    u_xlat0.xyz = u_xlat0.www * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.w = u_xlat0.z + 9.99999975e-06;
    u_xlat6 = dot(u_xlat0.xyw, u_xlat0.xyw);
    u_xlat6 = inversesqrt(u_xlat6);
    u_xlat0.xyz = vec3(u_xlat6) * u_xlat0.xyw;
    u_xlat1.xyz = u_xlat0.yyy * vs_TEXCOORD5.xyz;
    u_xlat0.xyw = u_xlat0.xxx * (-vs_TEXCOORD4.xyz) + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat0.zzz * vs_TEXCOORD3.xyz + u_xlat0.xyw;
    u_xlat9 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat9 = inversesqrt(u_xlat9);
    SV_Target0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    SV_Target0.w = 0.0;
    return;
}

