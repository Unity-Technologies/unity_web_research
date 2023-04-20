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
	float _FaceUVSpeedX;
	float _FaceUVSpeedY;
	vec4 _FaceColor;
	float _OutlineSoftness;
	float _OutlineUVSpeedX;
	float _OutlineUVSpeedY;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _ScaleRatioA;
	vec4 _ClipRect;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _FaceTex;
layout(set = 0, binding = 2) uniform mediump texture2D _OutlineTex;
layout(location = 0) in highp  vec4 vs_COLOR0;
layout(location = 1) in highp  vec2 vs_TEXCOORD0;
layout(location = 2) in highp  vec4 vs_TEXCOORD1;
layout(location = 3) in highp  vec4 vs_TEXCOORD2;
layout(location = 4) in highp  vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
float u_xlat4;
bool u_xlatb4;
float u_xlat5;
vec2 u_xlat8;
float u_xlat12;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat4 = u_xlat0.x + (-vs_TEXCOORD1.x);
    u_xlat0.x = (-u_xlat0.x) + vs_TEXCOORD1.z;
    u_xlatb4 = u_xlat4<0.0;
    if(((int(u_xlatb4) * int(0xffffffffu)))!=0){discard;}
    u_xlat4 = _OutlineWidth * _ScaleRatioA;
    u_xlat4 = u_xlat4 * vs_TEXCOORD1.y;
    u_xlat8.x = min(u_xlat4, 1.0);
    u_xlat4 = u_xlat4 * 0.5;
    u_xlat8.x = sqrt(u_xlat8.x);
    u_xlat12 = u_xlat0.x * vs_TEXCOORD1.y + u_xlat4;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat0.x = u_xlat0.x * vs_TEXCOORD1.y + (-u_xlat4);
    u_xlat4 = u_xlat8.x * u_xlat12;
    u_xlat8.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD5.zw;
    u_xlat1 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat8.xy);
    u_xlat1 = u_xlat1 * _OutlineColor;
    u_xlat1.xyz = u_xlat1.www * u_xlat1.xyz;
    u_xlat2.xyz = vs_COLOR0.xyz * _FaceColor.xyz;
    u_xlat8.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD5.xy;
    u_xlat3 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat8.xy);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat3.xyz;
    u_xlat3.w = u_xlat3.w * _FaceColor.w;
    u_xlat3.xyz = u_xlat2.xyz * u_xlat3.www;
    u_xlat1 = u_xlat1 + (-u_xlat3);
    u_xlat1 = vec4(u_xlat4) * u_xlat1 + u_xlat3;
    u_xlat4 = _OutlineSoftness * _ScaleRatioA;
    u_xlat8.x = u_xlat4 * vs_TEXCOORD1.y;
    u_xlat4 = u_xlat4 * vs_TEXCOORD1.y + 1.0;
    u_xlat0.x = u_xlat8.x * 0.5 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x / u_xlat4;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0 = u_xlat0.xxxx * u_xlat1;
    u_xlat1.xy = (-_ClipRect.xy) + _ClipRect.zw;
    u_xlat1.xy = u_xlat1.xy + -abs(vs_TEXCOORD2.xy);
    u_xlat1.xy = u_xlat1.xy * vs_TEXCOORD2.zw;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.x = u_xlat1.y * u_xlat1.x;
    u_xlat5 = u_xlat0.w * u_xlat1.x + -0.00100000005;
    u_xlat0 = u_xlat0 * u_xlat1.xxxx;
    SV_Target0 = u_xlat0 * vs_COLOR0.wwww;
    u_xlatb0 = u_xlat5<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    return;
}

