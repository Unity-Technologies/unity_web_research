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
const uvec4 ImmCB_0[] = uvec4[22] (
	uvec4(0x0, 0x0, 0x0, 0x0),
	uvec4(0x3F088889, 0x0, 0x0, 0x0),
	uvec4(0x3EAA4119, 0x3ED57DFC, 0x0, 0x0),
	uvec4(0xBDF30D5F, 0x3F051C34, 0x0, 0x0),
	uvec4(0xBEF6064A, 0x3E6CF55B, 0x0, 0x0),
	uvec4(0xBEF6064A, 0xBE6CF559, 0x0, 0x0),
	uvec4(0xBDF30D42, 0xBF051C35, 0x0, 0x0),
	uvec4(0x3EAA4117, 0xBED57DFF, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F66A5E5, 0x3EDE2603, 0x0, 0x0),
	uvec4(0x3F1F9D07, 0x3F48261C, 0x0, 0x0),
	uvec4(0x3E63DC8A, 0x3F7994E0, 0x0, 0x0),
	uvec4(0xBE63DC88, 0x3F7994E0, 0x0, 0x0),
	uvec4(0xBF1F9D0A, 0x3F48261A, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0x3EDE2605, 0x0, 0x0),
	uvec4(0xBF800000, 0x0, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0xBEDE2603, 0x0, 0x0),
	uvec4(0xBF1F9D04, 0xBF48261E, 0x0, 0x0),
	uvec4(0xBE63DC6D, 0xBF7994E2, 0x0, 0x0),
	uvec4(0x3E63DCAD, 0xBF7994DE, 0x0, 0x0),
	uvec4(0x3F1F9D05, 0xBF48261E, 0x0, 0x0),
	uvec4(0x3F66A5E5, 0xBEDE2603, 0x0, 0x0));
layout(set = 1, binding = 0, std140) uniform PGlobals {
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	float _MaxCoC;
	float _RcpAspect;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
float u_xlat5;
float u_xlat6;
int u_xlati12;
float u_xlat18;
bool u_xlatb18;
float u_xlat22;
bool u_xlatb22;
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).w;
    u_xlat6 = _MainTex_TexelSize.y + _MainTex_TexelSize.y;
    u_xlat1.w = 1.0;
    u_xlat2.x = float(0.0);
    u_xlat2.y = float(0.0);
    u_xlat2.z = float(0.0);
    u_xlat2.w = float(0.0);
    u_xlat3.x = float(0.0);
    u_xlat3.y = float(0.0);
    u_xlat3.z = float(0.0);
    u_xlat3.w = float(0.0);
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<22 ; u_xlati_loop_1++)
    {
        u_xlat4.yz = vec2(vec2(_MaxCoC, _MaxCoC)) * uintBitsToFloat(ImmCB_0[u_xlati_loop_1].xy);
        u_xlat18 = dot(u_xlat4.yz, u_xlat4.yz);
        u_xlat18 = sqrt(u_xlat18);
        u_xlat4.x = u_xlat4.y * _RcpAspect;
        u_xlat4.xy = u_xlat4.xz + vs_TEXCOORD0.xy;
        u_xlat4.xy = clamp(u_xlat4.xy, 0.0, 1.0);
        u_xlat4.xy = u_xlat4.xy * vec2(_RenderViewportScaleFactor);
        u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat4.xy);
        u_xlat5 = min(u_xlat0.x, u_xlat4.w);
        u_xlat5 = max(u_xlat5, 0.0);
        u_xlat5 = (-u_xlat18) + u_xlat5;
        u_xlat5 = _MainTex_TexelSize.y * 2.0 + u_xlat5;
        u_xlat5 = u_xlat5 / u_xlat6;
        u_xlat5 = clamp(u_xlat5, 0.0, 1.0);
        u_xlat18 = (-u_xlat18) + (-u_xlat4.w);
        u_xlat18 = _MainTex_TexelSize.y * 2.0 + u_xlat18;
        u_xlat18 = u_xlat18 / u_xlat6;
        u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
        u_xlatb22 = (-u_xlat4.w)>=_MainTex_TexelSize.y;
        u_xlat22 = u_xlatb22 ? 1.0 : float(0.0);
        u_xlat18 = u_xlat18 * u_xlat22;
        u_xlat1.xyz = u_xlat4.xyz;
        u_xlat2 = u_xlat1 * vec4(u_xlat5) + u_xlat2;
        u_xlat3 = u_xlat1 * vec4(u_xlat18) + u_xlat3;
    }
    u_xlatb0 = u_xlat2.w==0.0;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat0.x = u_xlat0.x + u_xlat2.w;
    u_xlat0.xyz = u_xlat2.xyz / u_xlat0.xxx;
    u_xlatb18 = u_xlat3.w==0.0;
    u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
    u_xlat18 = u_xlat18 + u_xlat3.w;
    u_xlat1.xyz = u_xlat3.xyz / vec3(u_xlat18);
    u_xlat18 = u_xlat3.w * 0.142799661;
    u_xlat18 = min(u_xlat18, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = vec3(u_xlat18) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = u_xlat18;
    return;
}

