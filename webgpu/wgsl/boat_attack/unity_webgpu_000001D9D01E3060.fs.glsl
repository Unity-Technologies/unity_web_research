#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

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
	int _ManualTex2SRGB;
	int _SrcBlend;
	float _CornerRadiuses[4];
	float _BorderWidths[4];
	float _Rect[4];
	int _SmoothCorners;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _GUIClipTexture;
layout(location = 0) in highp  vec4 vs_COLOR0;
layout(location = 1) in highp  vec2 vs_TEXCOORD0;
layout(location = 2) in highp  vec2 vs_TEXCOORD1;
layout(location = 3) in highp  vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
bvec2 u_xlatb0;
vec4 u_xlat1;
bvec2 u_xlatb1;
vec4 u_xlat2;
ivec2 u_xlati2;
vec3 u_xlat3;
float u_xlat5;
bvec3 u_xlatb5;
float u_xlat10;
bool u_xlatb10;
float u_xlat11;
bool u_xlatb11;
vec2 u_xlat13;
vec2 u_xlat14;
float u_xlat15;
bool u_xlatb15;
int u_xlati16;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_GUIClipTexture;
void main()
{
    u_xlat0.x = _BorderWidths[0];
    u_xlat1.x = _BorderWidths[2];
    u_xlat10 = vs_TEXCOORD2.x + (-_Rect[0]);
    u_xlat10 = (-_Rect[2]) * 0.5 + u_xlat10;
    u_xlatb10 = 0.0>=u_xlat10;
    u_xlat15 = _Rect[0] + _Rect[2];
    u_xlat11 = vs_TEXCOORD2.y + (-_Rect[1]);
    u_xlat11 = (-_Rect[3]) * 0.5 + u_xlat11;
    u_xlatb11 = 0.0>=u_xlat11;
    u_xlati2.xy = (bool(u_xlatb11)) ? ivec2(0, 1) : ivec2(3, 2);
    u_xlati16 = (u_xlatb10) ? u_xlati2.x : u_xlati2.y;
    u_xlat1.y = u_xlat15 + (-_CornerRadiuses[u_xlati16]);
    u_xlat0.y = _Rect[0] + _CornerRadiuses[u_xlati16];
    u_xlat2.xy = (bool(u_xlatb10)) ? u_xlat0.xy : u_xlat1.xy;
    u_xlat13.x = _BorderWidths[1];
    u_xlat14.x = _BorderWidths[3];
    u_xlat0.x = _Rect[1] + _Rect[3];
    u_xlat14.y = u_xlat0.x + (-_CornerRadiuses[u_xlati16]);
    u_xlat13.y = _Rect[1] + _CornerRadiuses[u_xlati16];
    u_xlat2.zw = (bool(u_xlatb11)) ? u_xlat13.xy : u_xlat14.xy;
    u_xlat0.xy = (-u_xlat2.xz) + vec2(_CornerRadiuses[u_xlati16]);
    u_xlat15 = u_xlat0.x / u_xlat0.y;
    u_xlat3.xy = (-u_xlat2.yw) + vs_TEXCOORD2.xy;
    u_xlat3.z = u_xlat15 * u_xlat3.y;
    u_xlat15 = dot(u_xlat3.xz, u_xlat3.xz);
    u_xlat1.x = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = u_xlat1.x + (-_CornerRadiuses[u_xlati16]);
    u_xlat15 = sqrt(u_xlat15);
    u_xlat15 = (-u_xlat0.x) + u_xlat15;
    u_xlatb0.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat0.xyxx).xy;
    u_xlatb0.x = u_xlatb0.y && u_xlatb0.x;
    u_xlat5 = dFdxCoarse(vs_TEXCOORD2.x);
    u_xlat5 = float(1.0) / abs(u_xlat5);
    u_xlat15 = u_xlat15 * u_xlat5 + 0.5;
    u_xlat15 = clamp(u_xlat15, 0.0, 1.0);
    u_xlat5 = u_xlat1.x * u_xlat5 + 0.5;
    u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
    u_xlat0.x = (u_xlatb0.x) ? u_xlat15 : 1.0;
    u_xlatb1.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat2.xzxx).xy;
    u_xlatb15 = u_xlatb1.y || u_xlatb1.x;
    u_xlat0.x = u_xlatb15 ? u_xlat0.x : float(0.0);
    u_xlat5 = u_xlatb15 ? u_xlat5 : float(0.0);
    u_xlat15 = (-u_xlat5) + 1.0;
    u_xlatb5.x = u_xlat5==0.0;
    u_xlat15 = (_SmoothCorners != 0) ? u_xlat15 : 0.0;
    u_xlat0.x = (u_xlatb5.x) ? u_xlat0.x : u_xlat15;
    u_xlatb5.xz = greaterThanEqual(u_xlat2.yyww, vs_TEXCOORD2.xxyy).xz;
    u_xlatb1.xy = greaterThanEqual(vs_TEXCOORD2.xyxx, u_xlat2.ywyy).xy;
    u_xlatb5.x = (u_xlatb10) ? u_xlatb5.x : u_xlatb1.x;
    u_xlatb10 = (u_xlatb11) ? u_xlatb5.z : u_xlatb1.y;
    u_xlatb5.x = u_xlatb10 && u_xlatb5.x;
    u_xlat0.x = (u_xlatb5.x) ? u_xlat0.x : 1.0;
    u_xlat10 = _BorderWidths[0] + _BorderWidths[2];
    u_xlat10 = (-u_xlat10) + _Rect[2];
    u_xlat15 = _BorderWidths[0] + _Rect[0];
    u_xlat10 = u_xlat10 + u_xlat15;
    u_xlatb15 = vs_TEXCOORD2.x>=u_xlat15;
    u_xlatb10 = u_xlat10>=vs_TEXCOORD2.x;
    u_xlatb10 = u_xlatb10 && u_xlatb15;
    u_xlat15 = _BorderWidths[1] + _Rect[1];
    u_xlatb1.x = vs_TEXCOORD2.y>=u_xlat15;
    u_xlatb10 = u_xlatb10 && u_xlatb1.x;
    u_xlat1.x = _BorderWidths[1] + _BorderWidths[3];
    u_xlat1.x = (-u_xlat1.x) + _Rect[3];
    u_xlat15 = u_xlat15 + u_xlat1.x;
    u_xlatb15 = u_xlat15>=vs_TEXCOORD2.y;
    u_xlatb10 = u_xlatb15 && u_xlatb10;
    u_xlat10 = (u_xlatb10) ? 0.0 : 1.0;
    u_xlat5 = (u_xlatb5.x) ? 1.0 : u_xlat10;
    u_xlatb10 = 0.0<_BorderWidths[0];
    u_xlatb15 = 0.0<_BorderWidths[1];
    u_xlatb10 = u_xlatb15 || u_xlatb10;
    u_xlatb15 = 0.0<_BorderWidths[2];
    u_xlatb10 = u_xlatb15 || u_xlatb10;
    u_xlatb15 = 0.0<_BorderWidths[3];
    u_xlatb10 = u_xlatb15 || u_xlatb10;
    u_xlat5 = (u_xlatb10) ? u_xlat5 : 1.0;
    u_xlat10 = u_xlat5 * u_xlat0.x;
    u_xlat15 = texture(sampler2D(_GUIClipTexture, sampler_GUIClipTexture), vs_TEXCOORD1.xy).w;
    u_xlat10 = u_xlat15 * u_xlat10;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat2.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat2.xyz = log2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat2.xyz = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = (_ManualTex2SRGB != 0) ? u_xlat2.xyz : u_xlat1.xyz;
    u_xlat1 = u_xlat1 * vs_COLOR0;
    u_xlat2.xyz = vec3(u_xlat10) * u_xlat1.xyz;
    u_xlatb10 = _SrcBlend!=5;
    SV_Target0.xyz = (bool(u_xlatb10)) ? u_xlat2.xyz : u_xlat1.xyz;
    u_xlat0.x = u_xlat0.x * u_xlat1.w;
    u_xlat0.x = u_xlat5 * u_xlat0.x;
    SV_Target0.w = u_xlat15 * u_xlat0.x;
    return;
}

