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
	vec4 _Time;
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
	vec4 _AmbientColor;
	float _NormalSacle;
	float _MovementSpeed;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Normal;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_Normal;
void main()
{
vec3 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
float u_xlat6;
    u_xlat0.x = (-vs_COLOR0.w) + 1.0;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat0.x = u_xlat1.w * _Color.w + (-u_xlat0.x);
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlatb0 = u_xlat0.x<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat1.xyz = u_xlat2.xyz * vs_COLOR0.xyz;
    u_xlat0.xyz = u_xlat2.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    SV_Target1.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-_Metallic) * 0.959999979 + 0.959999979;
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    SV_Target0.w = 1.0;
    SV_Target1.w = _Glossiness;
    u_xlat0.x = _Time.x * _MovementSpeed + vs_TEXCOORD0.z;
    u_xlat0.y = (-_Time.x) * _MovementSpeed + vs_TEXCOORD0.w;
    u_xlat0.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat0.xy).xyw;
    u_xlat0.x = u_xlat0.z * u_xlat0.x;
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_NormalSacle);
    u_xlat6 = dot(u_xlat0.xy, u_xlat0.xy);
    u_xlat6 = min(u_xlat6, 1.0);
    u_xlat6 = (-u_xlat6) + 1.0;
    u_xlat0.z = sqrt(u_xlat6);
    u_xlat1.x = dot(vs_TEXCOORD1.xyz, u_xlat0.xyz);
    u_xlat1.y = dot(vs_TEXCOORD2.xyz, u_xlat0.xyz);
    u_xlat1.z = dot(vs_TEXCOORD3.xyz, u_xlat0.xyz);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    SV_Target2.xyz = u_xlat0.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    SV_Target2.w = 1.0;
    SV_Target3.xyz = _AmbientColor.xyz;
    SV_Target3.w = 1.0;
    return;
}

