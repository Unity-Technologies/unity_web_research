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
	vec4 _FlareColorValue;
	vec4 _FlareData3;
	vec4 _FlareData4;
};
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
vec4 u_xlat0;
float u_xlat1;
int u_xlati1;
bool u_xlatb1;
vec2 u_xlat2;
float u_xlat3;
bool u_xlatb4;
vec2 u_xlat6;
int u_xlati6;
float u_xlat9;
int u_xlati9;
bool u_xlatb9;
    u_xlat0.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6.x = max(abs(u_xlat0.x), abs(u_xlat0.y));
    u_xlat6.x = float(1.0) / u_xlat6.x;
    u_xlat9 = min(abs(u_xlat0.x), abs(u_xlat0.y));
    u_xlat6.x = u_xlat6.x * u_xlat9;
    u_xlat9 = u_xlat6.x * u_xlat6.x;
    u_xlat1 = u_xlat9 * 0.0208350997 + -0.0851330012;
    u_xlat1 = u_xlat9 * u_xlat1 + 0.180141002;
    u_xlat1 = u_xlat9 * u_xlat1 + -0.330299497;
    u_xlat9 = u_xlat9 * u_xlat1 + 0.999866009;
    u_xlat1 = u_xlat9 * u_xlat6.x;
    u_xlat1 = u_xlat1 * -2.0 + 1.57079637;
    u_xlatb4 = abs(u_xlat0.x)<abs(u_xlat0.y);
    u_xlat1 = u_xlatb4 ? u_xlat1 : float(0.0);
    u_xlat6.x = u_xlat6.x * u_xlat9 + u_xlat1;
    u_xlatb9 = u_xlat0.x<(-u_xlat0.x);
    u_xlat9 = u_xlatb9 ? -3.14159274 : float(0.0);
    u_xlat6.x = u_xlat9 + u_xlat6.x;
    u_xlat9 = min(u_xlat0.x, u_xlat0.y);
    u_xlatb9 = u_xlat9<(-u_xlat9);
    u_xlat1 = max(u_xlat0.x, u_xlat0.y);
    u_xlatb1 = u_xlat1>=(-u_xlat1);
    u_xlatb9 = u_xlatb9 && u_xlatb1;
    u_xlat6.x = (u_xlatb9) ? (-u_xlat6.x) : u_xlat6.x;
    u_xlat6.x = _FlareData4.z * 0.5 + u_xlat6.x;
    u_xlat6.x = u_xlat6.x / _FlareData4.z;
    u_xlat6.x = floor(u_xlat6.x);
    u_xlat6.x = u_xlat6.x * _FlareData4.z;
    u_xlat1 = sin(u_xlat6.x);
    u_xlat2.x = cos(u_xlat6.x);
    u_xlat6.xy = u_xlat0.xy * u_xlat2.xx;
    u_xlat2.x = u_xlat1 * u_xlat0.y + u_xlat6.x;
    u_xlat2.y = (-u_xlat1) * u_xlat0.x + u_xlat6.y;
    u_xlat0.xyz = (-_FlareData4.wxy);
    u_xlat0.x = max(u_xlat0.x, u_xlat2.y);
    u_xlat0.x = min(u_xlat0.x, _FlareData4.w);
    u_xlat0.w = (-u_xlat0.x);
    u_xlat0.xz = u_xlat0.zw + u_xlat2.xy;
    u_xlati9 = int((0.0<u_xlat0.x) ? 0xFFFFFFFFu : uint(0));
    u_xlati1 = int((u_xlat0.x<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlat0.x = dot(u_xlat0.xz, u_xlat0.xz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlati6 = (-u_xlati9) + u_xlati1;
    u_xlat6.x = float(u_xlati6);
    u_xlat0.x = u_xlat0.x * u_xlat6.x + u_xlat0.y;
    u_xlat0.x = u_xlat0.x * _FlareData3.y;
    u_xlat0.x = (-u_xlat0.x);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat3 = (-u_xlat0.x) + 1.0;
    u_xlat3 = u_xlat3 * u_xlat0.x;
    u_xlat0.x = u_xlat0.x + 9.99999997e-07;
    u_xlat0.x = u_xlat3 / u_xlat0.x;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * _FlareData3.z;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat0.x = min(u_xlat0.x, 1.0);
    SV_Target0 = u_xlat0.xxxx * _FlareColorValue;
    return;
}

