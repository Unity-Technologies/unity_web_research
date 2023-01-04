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
	vec4 _BorderColors[4];
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _GUIClipTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_GUIClipTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
float u_xlat2;
ivec3 u_xlati2;
bvec4 u_xlatb2;
vec4 u_xlat3;
bvec2 u_xlatb3;
vec4 u_xlat4;
bvec2 u_xlatb4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
bvec2 u_xlatb9;
float u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat12;
bool u_xlatb12;
vec2 u_xlat13;
int u_xlati13;
float u_xlat18;
int u_xlati18;
bool u_xlatb18;
float u_xlat20;
bool u_xlatb20;
bool u_xlatb21;
float u_xlat27;
int u_xlati27;
bool u_xlatb27;
float u_xlat28;
int u_xlati29;
bool u_xlatb29;
float u_xlat30;
int u_xlati30;
    u_xlat0.x = dFdxCoarse(vs_TEXCOORD2.x);
    u_xlat0.x = float(1.0) / abs(u_xlat0.x);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat9.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat9.xyz = log2(u_xlat9.xyz);
    u_xlat9.xyz = u_xlat9.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat9.xyz = exp2(u_xlat9.xyz);
    u_xlat9.xyz = u_xlat9.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat9.xyz = max(u_xlat9.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = (_ManualTex2SRGB != 0) ? u_xlat9.xyz : u_xlat1.xyz;
    u_xlat9.x = vs_TEXCOORD2.x + (-_Rect[0]);
    u_xlat9.x = (-_Rect[2]) * 0.5 + u_xlat9.x;
    u_xlat18 = vs_TEXCOORD2.y + (-_Rect[1]);
    u_xlat9.y = (-_Rect[3]) * 0.5 + u_xlat18;
    u_xlatb9.xy = greaterThanEqual(vec4(0.0, 0.0, 0.0, 0.0), u_xlat9.xyxx).xy;
    u_xlati2.xyz = (u_xlatb9.y) ? ivec3(0, 1, 2) : ivec3(3, 2, 8);
    u_xlati27 = (u_xlatb9.x) ? u_xlati2.x : u_xlati2.y;
    u_xlati2.x = (u_xlatb9.x) ? 1 : 4;
    u_xlat3.y = _Rect[0] + _CornerRadiuses[u_xlati27];
    u_xlat4.y = _Rect[1] + _CornerRadiuses[u_xlati27];
    u_xlat3.w = _BorderWidths[0] + _Rect[0];
    u_xlat4.w = _BorderWidths[1] + _Rect[1];
    u_xlat5.x = _Rect[0] + _Rect[2];
    u_xlat5.y = u_xlat5.x + (-_CornerRadiuses[u_xlati27]);
    u_xlat5.w = u_xlat5.x + (-_BorderWidths[2]);
    u_xlat3.x = _Rect[0];
    u_xlat3.z = _BorderWidths[0];
    u_xlat5.z = _BorderWidths[2];
    u_xlat5 = (u_xlatb9.x) ? u_xlat3 : u_xlat5;
    u_xlat6.x = _Rect[1] + _Rect[3];
    u_xlat6.y = u_xlat6.x + (-_CornerRadiuses[u_xlati27]);
    u_xlat6.w = u_xlat6.x + (-_BorderWidths[3]);
    u_xlat4.x = _Rect[1];
    u_xlat4.z = _BorderWidths[1];
    u_xlat6.z = _BorderWidths[3];
    u_xlat6 = (u_xlatb9.y) ? u_xlat4.yxzw : u_xlat6.yxzw;
    u_xlatb11.xz = greaterThanEqual(u_xlat5.yyww, vs_TEXCOORD2.xxxx).xz;
    u_xlatb3.xy = greaterThanEqual(vs_TEXCOORD2.xxxx, u_xlat5.ywyy).xy;
    u_xlatb11.xz = (u_xlatb9.x) ? u_xlatb11.xz : u_xlatb3.xy;
    u_xlatb3.xy = greaterThanEqual(u_xlat6.xwxx, vs_TEXCOORD2.yyyy).xy;
    u_xlatb4.xy = greaterThanEqual(vs_TEXCOORD2.yyyy, u_xlat6.xwxx).xy;
    u_xlatb9.xy = (u_xlatb9.y) ? u_xlatb3.xy : u_xlatb4.xy;
    u_xlatb9.x = u_xlatb9.x && u_xlatb11.x;
    u_xlat11 = _BorderWidths[0] + _BorderWidths[2];
    u_xlat11 = (-u_xlat11) + _Rect[2];
    u_xlat3.x = _BorderWidths[1] + _BorderWidths[3];
    u_xlat3.x = (-u_xlat3.x) + _Rect[3];
    u_xlatb12 = vs_TEXCOORD2.x>=u_xlat3.w;
    u_xlat11 = u_xlat11 + u_xlat3.w;
    u_xlatb11.x = u_xlat11>=vs_TEXCOORD2.x;
    u_xlatb11.x = u_xlatb11.x && u_xlatb12;
    u_xlatb12 = vs_TEXCOORD2.y>=u_xlat4.w;
    u_xlatb11.x = u_xlatb11.x && u_xlatb12;
    u_xlat3.x = u_xlat3.x + u_xlat4.w;
    u_xlatb3.x = u_xlat3.x>=vs_TEXCOORD2.y;
    u_xlatb11.x = u_xlatb11.x && u_xlatb3.x;
    u_xlatb3.xy = equal(ivec4(u_xlati27), ivec4(0, 2, 0, 0)).xy;
    u_xlatb3.x = u_xlatb3.y || u_xlatb3.x;
    u_xlatb12 = 0.0<_CornerRadiuses[u_xlati27];
    u_xlatb12 = u_xlatb9.x && u_xlatb12;
    u_xlatb21 = 0.0<u_xlat5.z;
    u_xlati30 = u_xlatb21 ? 1 : int(0);
    u_xlatb4.x = 0.0<u_xlat6.z;
    u_xlati13 = u_xlatb4.x ? 1 : int(0);
    u_xlati13 = u_xlati2.z * u_xlati13;
    u_xlati30 = u_xlati30 * u_xlati2.x + u_xlati13;
    u_xlatb29 = u_xlatb11.z && u_xlatb21;
    u_xlatb18 = u_xlatb9.y && u_xlatb4.x;
    u_xlati29 = u_xlatb29 ? 1 : int(0);
    u_xlati18 = u_xlatb18 ? 1 : int(0);
    u_xlati18 = u_xlati2.z * u_xlati18;
    u_xlati18 = u_xlati29 * u_xlati2.x + u_xlati18;
    u_xlati18 = (u_xlatb11.x) ? 0 : u_xlati18;
    u_xlati18 = (u_xlatb12) ? u_xlati30 : u_xlati18;
    u_xlati29 = u_xlati2.z + u_xlati2.x;
    u_xlat3.x = (u_xlatb3.x) ? 1.0 : -1.0;
    u_xlat7.xz = u_xlat5.wy;
    u_xlat7.yw = u_xlat6.wx;
    u_xlat6.x = u_xlat5.x;
    u_xlat12.xz = (-u_xlat7.yx) + u_xlat6.yx;
    u_xlat3.xy = u_xlat12.xz * u_xlat3.xx;
    u_xlat30 = dot(u_xlat3.xy, u_xlat3.xy);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat3.xy = vec2(u_xlat30) * u_xlat3.xy;
    u_xlat3.xy = u_xlat3.xy * vec2(100.0, 100.0) + u_xlat6.yx;
    u_xlat13.xy = (-u_xlat3.yx) + u_xlat6.xy;
    u_xlat3.xy = (-u_xlat3.xy) + vs_TEXCOORD2.yx;
    u_xlat12.x = u_xlat3.y * u_xlat13.y;
    u_xlat3.x = u_xlat13.x * u_xlat3.x + (-u_xlat12.x);
    u_xlatb3.x = u_xlat3.x>=0.0;
    u_xlati2.x = (u_xlatb3.x) ? u_xlati2.x : u_xlati2.z;
    u_xlatb20 = u_xlati18!=u_xlati29;
    u_xlati18 = (u_xlatb20) ? u_xlati18 : u_xlati2.x;
    if(u_xlati18 == 0) {
        u_xlat8 = u_xlat1 * vs_COLOR0;
    } else {
        u_xlatb2.xzw = equal(ivec4(u_xlati18), ivec4(2, 0, 4, 8)).xzw;
        u_xlati18 = u_xlatb2.w ? 3 : int(0);
        u_xlati18 = (u_xlatb2.z) ? 2 : u_xlati18;
        u_xlati18 = (u_xlatb2.x) ? 1 : u_xlati18;
        u_xlat8 = u_xlat1 * _BorderColors[u_xlati18];
    }
    u_xlatb18 = u_xlatb21 || u_xlatb4.x;
    u_xlat1.xy = (-u_xlat7.zw) + vs_TEXCOORD2.xy;
    u_xlat28 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat28 = sqrt(u_xlat28);
    u_xlat28 = u_xlat28 + (-_CornerRadiuses[u_xlati27]);
    u_xlat28 = u_xlat28 * u_xlat0.x + 0.5;
    u_xlat28 = clamp(u_xlat28, 0.0, 1.0);
    u_xlat28 = u_xlatb18 ? u_xlat28 : float(0.0);
    u_xlat2 = (-u_xlat5.z) + _CornerRadiuses[u_xlati27];
    u_xlat27 = (-u_xlat6.z) + _CornerRadiuses[u_xlati27];
    u_xlat20 = u_xlat2 / u_xlat27;
    u_xlat1.z = u_xlat1.y * u_xlat20;
    u_xlat1.x = dot(u_xlat1.xz, u_xlat1.xz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat2) + u_xlat1.x;
    u_xlat0.x = u_xlat1.x * u_xlat0.x + 0.5;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb1 = 0.0<u_xlat2;
    u_xlatb27 = 0.0<u_xlat27;
    u_xlatb27 = u_xlatb27 && u_xlatb1;
    u_xlat0.x = (u_xlatb27) ? u_xlat0.x : 1.0;
    u_xlat0.x = u_xlatb18 ? u_xlat0.x : float(0.0);
    u_xlatb18 = u_xlat28==0.0;
    u_xlat27 = (-u_xlat28) + 1.0;
    u_xlat0.x = (u_xlatb18) ? u_xlat0.x : u_xlat27;
    u_xlat0.x = (u_xlatb9.x) ? u_xlat0.x : 1.0;
    u_xlat18 = u_xlat0.x * u_xlat8.w;
    u_xlat27 = (u_xlatb11.x) ? 0.0 : 1.0;
    u_xlat9.x = (u_xlatb9.x) ? 1.0 : u_xlat27;
    u_xlat18 = u_xlat9.x * u_xlat18;
    u_xlat27 = texture(sampler2D(_GUIClipTexture, sampler_GUIClipTexture), vs_TEXCOORD1.xy).w;
    SV_Target0.w = u_xlat27 * u_xlat18;
    u_xlatb18 = _SrcBlend!=5;
    u_xlat0.x = u_xlat9.x * u_xlat0.x;
    u_xlat0.x = u_xlat27 * u_xlat0.x;
    u_xlat0.xyw = u_xlat0.xxx * u_xlat8.xyz;
    SV_Target0.xyz = (bool(u_xlatb18)) ? u_xlat0.xyw : u_xlat8.xyz;
    return;
}

