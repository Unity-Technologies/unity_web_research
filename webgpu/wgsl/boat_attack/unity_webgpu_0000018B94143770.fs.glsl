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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 _LightColor0;
	float _FaceUVSpeedX;
	float _FaceUVSpeedY;
	vec4 _FaceColor;
	float _OutlineSoftness;
	float _OutlineUVSpeedX;
	float _OutlineUVSpeedY;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _ScaleRatioA;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _FaceTex;
layout(set = 0, binding = 2) uniform mediump texture2D _OutlineTex;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec2 vs_TEXCOORD1;
layout(location = 2) in highp  vec2 vs_TEXCOORD5;
layout(location = 3) in highp  vec4 vs_TEXCOORD2;
layout(location = 4) in highp  vec4 vs_TEXCOORD3;
layout(location = 5) in highp  vec4 vs_TEXCOORD4;
layout(location = 6) in highp  vec4 vs_COLOR0;
layout(location = 7) in highp  vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat5;
float u_xlat6;
float u_xlat10;
float u_xlat12;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD1.xy;
    u_xlat0 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat0.xy);
    u_xlat0.xyz = u_xlat0.xyz * _OutlineColor.xyz;
    u_xlat1.x = vs_COLOR0.w * _OutlineColor.w;
    u_xlat1.w = u_xlat0.w * u_xlat1.x;
    u_xlat1.xyz = u_xlat0.xyz * u_xlat1.www;
    u_xlat0.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD0.zw;
    u_xlat0 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat0.xy);
    u_xlat2 = vs_COLOR0 * _FaceColor;
    u_xlat0 = u_xlat0 * u_xlat2;
    u_xlat0.xyz = u_xlat0.www * u_xlat0.xyz;
    u_xlat1 = (-u_xlat0) + u_xlat1;
    u_xlat2.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat2.x = (-u_xlat2.x) + 0.5;
    u_xlat2.x = u_xlat2.x + (-vs_TEXCOORD5.x);
    u_xlat2.x = u_xlat2.x * vs_TEXCOORD5.y + 0.5;
    u_xlat6 = _OutlineWidth * _ScaleRatioA;
    u_xlat6 = u_xlat6 * vs_TEXCOORD5.y;
    u_xlat10 = u_xlat6 * 0.5 + u_xlat2.x;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat2.x = (-u_xlat6) * 0.5 + u_xlat2.x;
    u_xlat6 = min(u_xlat6, 1.0);
    u_xlat6 = sqrt(u_xlat6);
    u_xlat6 = u_xlat6 * u_xlat10;
    u_xlat0 = vec4(u_xlat6) * u_xlat1 + u_xlat0;
    u_xlat1.x = _OutlineSoftness * _ScaleRatioA;
    u_xlat5 = u_xlat1.x * vs_TEXCOORD5.y;
    u_xlat1.x = u_xlat1.x * vs_TEXCOORD5.y + 1.0;
    u_xlat5 = u_xlat5 * 0.5 + u_xlat2.x;
    u_xlat1.x = u_xlat5 / u_xlat1.x;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    u_xlat1.x = max(u_xlat0.w, 9.99999975e-05);
    u_xlat0.xyz = u_xlat0.xyz / u_xlat1.xxx;
    SV_Target0.w = u_xlat0.w;
    u_xlat1.xyz = u_xlat0.xyz * _LightColor0.xyz;
    u_xlat2.x = vs_TEXCOORD2.z;
    u_xlat2.y = vs_TEXCOORD3.z;
    u_xlat2.z = vs_TEXCOORD4.z;
    u_xlat12 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat2.xyz = vec3(u_xlat12) * u_xlat2.xyz;
    u_xlat2.w = 1.0;
    u_xlat3.x = dot(unity_SHAr, u_xlat2);
    u_xlat3.y = dot(unity_SHAg, u_xlat2);
    u_xlat3.z = dot(unity_SHAb, u_xlat2);
    u_xlat12 = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat12 = max(u_xlat12, 0.0);
    u_xlat2.xyz = u_xlat3.xyz + vs_TEXCOORD7.xyz;
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat1.xyz * vec3(u_xlat12) + u_xlat0.xyz;
    return;
}

