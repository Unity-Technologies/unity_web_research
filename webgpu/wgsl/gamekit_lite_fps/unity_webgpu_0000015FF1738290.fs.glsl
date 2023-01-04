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
const uvec4 ImmCB_0[] = uvec4[16] (
	uvec4(0x0, 0x0, 0x0, 0x0),
	uvec4(0x3F0BA2E9, 0x0, 0x0, 0x0),
	uvec4(0x3E2C999C, 0x3F04CD55, 0x0, 0x0),
	uvec4(0xBEE1EFB8, 0x3EA42702, 0x0, 0x0),
	uvec4(0xBEE1EFB6, 0xBEA42705, 0x0, 0x0),
	uvec4(0x3E2C99A1, 0xBF04CD55, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F4F1BBD, 0x3F167918, 0x0, 0x0),
	uvec4(0x3E9E3779, 0x3F737871, 0x0, 0x0),
	uvec4(0xBE9E377B, 0x3F737870, 0x0, 0x0),
	uvec4(0xBF4F1BBE, 0x3F167917, 0x0, 0x0),
	uvec4(0xBF800000, 0x0, 0x0, 0x0),
	uvec4(0xBF4F1BBC, 0xBF16791A, 0x0, 0x0),
	uvec4(0xBE9E376E, 0xBF737872, 0x0, 0x0),
	uvec4(0x3E9E377E, 0xBF737870, 0x0, 0x0),
	uvec4(0x3F4F1BBC, 0xBF167919, 0x0, 0x0));
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
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<16 ; u_xlati_loop_1++)
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
    u_xlat18 = u_xlat3.w * 0.196349546;
    u_xlat18 = min(u_xlat18, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = vec3(u_xlat18) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = u_xlat18;
    return;
}

