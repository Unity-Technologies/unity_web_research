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
layout(set = 0, binding = 3, std140) uniform VGlobals {
	vec4 _Time;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_LightShadowBias;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	mat4x4 unity_MatrixVP;
	float _Cutoff;
	float _DisplaceAmount;
	vec4 _Noise_ST;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Noise;
layout(set = 0, binding = 4) uniform mediump texture2D _Gradient;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 0) out highp vec2 vs_TEXCOORD1;
highp vec3 vs_TEXCOORD2;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
float u_xlat12;
bool u_xlatb12;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_Gradient;
void main()
{
    u_xlat0.x = textureLod(sampler2D(_Gradient, sampler_Gradient), in_TEXCOORD0.xy, 0.0).x;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = u_xlat0.x + (-_Cutoff);
    u_xlat0.x = u_xlat0.x * -3.33333325;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4.x = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat4.x;
    u_xlat4.xy = in_POSITION0.yy * unity_ObjectToWorld[1].xy;
    u_xlat4.xy = unity_ObjectToWorld[0].xy * in_POSITION0.xx + u_xlat4.xy;
    u_xlat1.yz = unity_ObjectToWorld[2].xy * in_POSITION0.zz + u_xlat4.xy;
    u_xlat1.x = _Time.x * 30.0 + u_xlat1.y;
    u_xlat4.xy = u_xlat1.xz * vec2(0.5, 0.5);
    u_xlat4.xyz = textureLod(sampler2D(_Noise, sampler_Noise), u_xlat4.xy, 0.0).xyz;
    u_xlat4.xyz = u_xlat4.xyz * in_NORMAL0.xyz;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat4.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_Cutoff, _Cutoff, _Cutoff));
    u_xlat0.xyz = u_xlat0.xyz * vec3(vec3(_DisplaceAmount, _DisplaceAmount, _DisplaceAmount)) + in_POSITION0.xyz;
    u_xlat1 = u_xlat0.yyyy * unity_ObjectToWorld[1];
    u_xlat1 = unity_ObjectToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat1 = unity_ObjectToWorld[3] * in_POSITION0.wwww + u_xlat1;
    u_xlat2.xyz = (-u_xlat1.xyz) * _WorldSpaceLightPos0.www + _WorldSpaceLightPos0.xyz;
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = vec3(u_xlat12) * u_xlat2.xyz;
    u_xlat3.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat3.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat3.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
    u_xlat12 = dot(u_xlat3.xyz, u_xlat2.xyz);
    u_xlat12 = (-u_xlat12) * u_xlat12 + 1.0;
    u_xlat12 = sqrt(u_xlat12);
    u_xlat12 = u_xlat12 * unity_LightShadowBias.z;
    u_xlat2.xyz = (-u_xlat3.xyz) * vec3(u_xlat12) + u_xlat1.xyz;
    u_xlatb12 = unity_LightShadowBias.z!=0.0;
    u_xlat1.xyz = (bool(u_xlatb12)) ? u_xlat2.xyz : u_xlat1.xyz;
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    u_xlat1 = unity_MatrixVP[3] * u_xlat1.wwww + u_xlat2;
    u_xlat12 = min(u_xlat1.w, u_xlat1.z);
    u_xlat12 = (-u_xlat1.z) + u_xlat12;
    gl_Position.z = unity_LightShadowBias.y * u_xlat12 + u_xlat1.z;
    gl_Position.xyw = u_xlat1.xyw;
    vs_TEXCOORD1.xy = in_TEXCOORD0.xy * _Noise_ST.xy + _Noise_ST.zw;
    u_xlat1.xyz = u_xlat0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyw = unity_ObjectToWorld[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    vs_TEXCOORD2.xyz = unity_ObjectToWorld[3].xyz * in_POSITION0.www + u_xlat0.xyz;
    return;
}

