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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _ScreenParams;
	mat4x4 unity_ObjectToWorld;
	mat4x4 glstate_matrix_projection;
	mat4x4 unity_MatrixVP;
	vec4 _Color;
	vec4 _ClipRect;
	vec4 _MainTex_ST;
	float _UIMaskSoftnessX;
	float _UIMaskSoftnessY;
	int _UIVertexColorAlwaysGammaSpace;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec2 vs_TEXCOORD0;
highp vec4 vs_TEXCOORD1;
layout(location = 2) out highp vec4 vs_TEXCOORD2;
vec4 u_xlat0;
vec4 u_xlat1;
bvec3 u_xlatb2;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    gl_Position = u_xlat0;
    u_xlat0.xyz = in_COLOR0.xyz * vec3(0.265884995, 0.265884995, 0.265884995) + vec3(0.736584008, 0.736584008, 0.736584008);
    u_xlat0.xyz = in_COLOR0.xyz * u_xlat0.xyz + vec3(-0.00980184041, -0.00980184041, -0.00980184041);
    u_xlat0.xyz = in_COLOR0.xyz * u_xlat0.xyz + vec3(0.00319697009, 0.00319697009, 0.00319697009);
    u_xlat1.xyz = in_COLOR0.xyz * vec3(0.0849710032, 0.0849710032, 0.0849710032) + vec3(-0.000163029006, -0.000163029006, -0.000163029006);
    u_xlatb2.xyz = lessThan(in_COLOR0.xyzx, vec4(0.0725490004, 0.0725490004, 0.0725490004, 0.0)).xyz;
    {
        vec4 hlslcc_movcTemp = u_xlat0;
        hlslcc_movcTemp.x = (u_xlatb2.x) ? u_xlat1.x : u_xlat0.x;
        hlslcc_movcTemp.y = (u_xlatb2.y) ? u_xlat1.y : u_xlat0.y;
        hlslcc_movcTemp.z = (u_xlatb2.z) ? u_xlat1.z : u_xlat0.z;
        u_xlat0 = hlslcc_movcTemp;
    }
    u_xlat1.xyz = (int(_UIVertexColorAlwaysGammaSpace) != 0) ? u_xlat0.xyz : in_COLOR0.xyz;
    u_xlat1.w = in_COLOR0.w;
    vs_COLOR0 = u_xlat1 * _Color;
    vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    vs_TEXCOORD1 = in_POSITION0;
    u_xlat0.xy = _ScreenParams.yy * glstate_matrix_projection[1].xy;
    u_xlat0.xy = glstate_matrix_projection[0].xy * _ScreenParams.xx + u_xlat0.xy;
    u_xlat0.xy = u_xlat0.ww / abs(u_xlat0.xy);
    u_xlat0.xy = vec2(_UIMaskSoftnessX, _UIMaskSoftnessY) * vec2(0.25, 0.25) + abs(u_xlat0.xy);
    vs_TEXCOORD2.zw = vec2(0.25, 0.25) / u_xlat0.xy;
    u_xlat0 = max(_ClipRect, vec4(-2e+10, -2e+10, -2e+10, -2e+10));
    u_xlat0 = min(u_xlat0, vec4(2e+10, 2e+10, 2e+10, 2e+10));
    u_xlat0.xy = in_POSITION0.xy * vec2(2.0, 2.0) + (-u_xlat0.xy);
    vs_TEXCOORD2.xy = (-u_xlat0.zw) + u_xlat0.xy;
    return;
}

