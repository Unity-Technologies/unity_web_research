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
const uvec4 ImmCB_0[] = uvec4[71] (
	uvec4(0x0, 0x0, 0x0, 0x0),
	uvec4(0x3E8D3DCC, 0x0, 0x0, 0x0),
	uvec4(0x3E302009, 0x3E5CDA9C, 0x0, 0x0),
	uvec4(0xBD7B6EF0, 0x3E89B33F, 0x0, 0x0),
	uvec4(0xBE7E8219, 0x3DF52122, 0x0, 0x0),
	uvec4(0xBE7E8219, 0xBDF5211F, 0x0, 0x0),
	uvec4(0xBD7B6ED2, 0xBE89B340, 0x0, 0x0),
	uvec4(0x3E302007, 0xBE5CDA9E, 0x0, 0x0),
	uvec4(0x3F0469EE, 0x0, 0x0, 0x0),
	uvec4(0x3EEE99F5, 0x3E65CF0B, 0x0, 0x0),
	uvec4(0x3EA51E07, 0x3ECF0CF0, 0x0, 0x0),
	uvec4(0x3DEBB801, 0x3F01180A, 0x0, 0x0),
	uvec4(0xBDEBB7FF, 0x3F01180A, 0x0, 0x0),
	uvec4(0xBEA51E0A, 0x3ECF0CEE, 0x0, 0x0),
	uvec4(0xBEEE99F5, 0x3E65CF0D, 0x0, 0x0),
	uvec4(0xBF0469EE, 0x0, 0x0, 0x0),
	uvec4(0xBEEE99F5, 0xBE65CF0B, 0x0, 0x0),
	uvec4(0xBEA51E04, 0xBECF0CF2, 0x0, 0x0),
	uvec4(0xBDEBB7E3, 0xBF01180B, 0x0, 0x0),
	uvec4(0x3DEBB825, 0xBF011809, 0x0, 0x0),
	uvec4(0x3EA51E05, 0xBECF0CF2, 0x0, 0x0),
	uvec4(0x3EEE99F5, 0xBE65CF0B, 0x0, 0x0),
	uvec4(0x3F4234F7, 0x0, 0x0, 0x0),
	uvec4(0x3F39942E, 0x3E64F955, 0x0, 0x0),
	uvec4(0x3F207615, 0x3EDACD22, 0x0, 0x0),
	uvec4(0x3EF22C0A, 0x3F17D64A, 0x0, 0x0),
	uvec4(0x3E8DE74A, 0x3F34C838, 0x0, 0x0),
	uvec4(0x3D683595, 0x3F41A9F3, 0x0, 0x0),
	uvec4(0xBE2CDC44, 0x3F3D5675, 0x0, 0x0),
	uvec4(0xBEC234F9, 0x3F283027, 0x0, 0x0),
	uvec4(0xBF0E5D1E, 0x3F04181F, 0x0, 0x0),
	uvec4(0xBF2EF970, 0x3EA886C6, 0x0, 0x0),
	uvec4(0xBF4009AB, 0x3DE78F5C, 0x0, 0x0),
	uvec4(0xBF4009AB, 0xBDE78F85, 0x0, 0x0),
	uvec4(0xBF2EF970, 0xBEA886C4, 0x0, 0x0),
	uvec4(0xBF0E5D1D, 0xBF041821, 0x0, 0x0),
	uvec4(0xBEC234F5, 0xBF283028, 0x0, 0x0),
	uvec4(0xBE2CDC47, 0xBF3D5675, 0x0, 0x0),
	uvec4(0x3D6835D0, 0xBF41A9F2, 0x0, 0x0),
	uvec4(0x3E8DE757, 0xBF34C835, 0x0, 0x0),
	uvec4(0x3EF22C07, 0xBF17D64C, 0x0, 0x0),
	uvec4(0x3F207616, 0xBEDACD1F, 0x0, 0x0),
	uvec4(0x3F39942F, 0xBE64F943, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F7994E0, 0x3E63DC87, 0x0, 0x0),
	uvec4(0x3F66A5E5, 0x3EDE2603, 0x0, 0x0),
	uvec4(0x3F48261C, 0x3F1F9D07, 0x0, 0x0),
	uvec4(0x3F1F9D07, 0x3F48261C, 0x0, 0x0),
	uvec4(0x3EDE25FF, 0x3F66A5E6, 0x0, 0x0),
	uvec4(0x3E63DC8A, 0x3F7994E0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0xBE63DC88, 0x3F7994E0, 0x0, 0x0),
	uvec4(0xBEDE2606, 0x3F66A5E5, 0x0, 0x0),
	uvec4(0xBF1F9D0A, 0x3F48261A, 0x0, 0x0),
	uvec4(0xBF48261F, 0x3F1F9D03, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0x3EDE2605, 0x0, 0x0),
	uvec4(0xBF7994E0, 0x3E63DC87, 0x0, 0x0),
	uvec4(0xBF800000, 0x0, 0x0, 0x0),
	uvec4(0xBF7994E0, 0xBE63DC83, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0xBEDE2603, 0x0, 0x0),
	uvec4(0xBF48261A, 0xBF1F9D09, 0x0, 0x0),
	uvec4(0xBF1F9D04, 0xBF48261E, 0x0, 0x0),
	uvec4(0xBEDE25F9, 0xBF66A5E8, 0x0, 0x0),
	uvec4(0xBE63DC6D, 0xBF7994E2, 0x0, 0x0),
	uvec4(0x0, 0xBF800000, 0x0, 0x0),
	uvec4(0x3E63DCAD, 0xBF7994DE, 0x0, 0x0),
	uvec4(0x3EDE25FA, 0xBF66A5E7, 0x0, 0x0),
	uvec4(0x3F1F9D05, 0xBF48261E, 0x0, 0x0),
	uvec4(0x3F48261B, 0xBF1F9D08, 0x0, 0x0),
	uvec4(0x3F66A5E5, 0xBEDE2603, 0x0, 0x0),
	uvec4(0x3F7994E0, 0xBE63DC82, 0x0, 0x0));
layout(set = 0, binding = 0, std140) uniform PGlobals {
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	float _MaxCoC;
	float _RcpAspect;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
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
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
void main()
{
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
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<71 ; u_xlati_loop_1++)
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
    u_xlat18 = u_xlat3.w * 0.0442477837;
    u_xlat18 = min(u_xlat18, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = vec3(u_xlat18) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = u_xlat18;
    return;
}

