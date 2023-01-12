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
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 _LightColor0;
	vec4 _Color;
	float _Metallic;
	float _Glossiness;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 2) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 3) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 4) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 6) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
float u_xlat6;
float u_xlat9;
    u_xlat0 = vs_TEXCOORD5.yyyy * unity_WorldToLight[1];
    u_xlat0 = unity_WorldToLight[0] * vs_TEXCOORD5.xxxx + u_xlat0;
    u_xlat0 = unity_WorldToLight[2] * vs_TEXCOORD5.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_WorldToLight[3];
    u_xlat1.xy = u_xlat0.xy / u_xlat0.ww;
    u_xlat1.xy = u_xlat1.xy + vec2(0.5, 0.5);
    u_xlat9 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat1.xy).w;
    u_xlatb1 = 0.0<u_xlat0.z;
    u_xlat0.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat0.x = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), u_xlat0.xx).x;
    u_xlat3.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat3.x = u_xlat9 * u_xlat3.x;
    u_xlat0.x = u_xlat0.x * u_xlat3.x;
    u_xlat1 = vs_TEXCOORD5.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
    u_xlat1 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD5.xxxx + u_xlat1;
    u_xlat1 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD5.zzzz + u_xlat1;
    u_xlat1 = u_xlat1 + unity_WorldToShadow[3 / 4][3 % 4];
    u_xlat3.xyz = u_xlat1.xyz / u_xlat1.www;
    vec3 txVec0 = vec3(u_xlat3.xy,u_xlat3.z);
    u_xlat3.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
    u_xlat6 = (-_LightShadowData.x) + 1.0;
    u_xlat3.x = u_xlat3.x * u_xlat6 + _LightShadowData.x;
    u_xlat0.x = u_xlat3.x * u_xlat0.x;
    u_xlat0.xyz = u_xlat0.xxx * _LightColor0.xyz;
    u_xlat9 = dot(vs_TEXCOORD4.xyz, vs_TEXCOORD4.xyz);
    u_xlat9 = inversesqrt(u_xlat9);
    u_xlat1.xyz = vec3(u_xlat9) * vs_TEXCOORD4.xyz;
    u_xlat2.x = vs_TEXCOORD2.w;
    u_xlat2.y = vs_TEXCOORD3.w;
    u_xlat2.z = vs_TEXCOORD4.w;
    u_xlat9 = dot(u_xlat1.xyz, u_xlat2.xyz);
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz;
    u_xlat9 = dot((-vs_TEXCOORD1.xyz), u_xlat1.xyz);
    u_xlat9 = u_xlat9 + u_xlat9;
    u_xlat1.xyz = u_xlat1.xyz * (-vec3(u_xlat9)) + (-vs_TEXCOORD1.xyz);
    u_xlat9 = dot(u_xlat1.xyz, u_xlat2.xyz);
    u_xlat9 = u_xlat9 * u_xlat9;
    u_xlat1.x = u_xlat9 * u_xlat9;
    u_xlat1.y = (-_Glossiness) + 1.0;
    u_xlat9 = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat1.xy).x;
    u_xlat9 = u_xlat9 * 16.0;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1 = u_xlat1.wxyz * _Color.wxyz;
    u_xlat2.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat2.xyz = vec3(u_xlat9) * u_xlat2.xyz;
    u_xlat9 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat4.xyz = vec3(u_xlat9) * u_xlat1.yzw;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat1.xxx + u_xlat2.xyz;
    SV_Target0.w = u_xlat1.x;
    SV_Target0.xyz = u_xlat0.xyz * u_xlat4.xyz;
    return;
}
