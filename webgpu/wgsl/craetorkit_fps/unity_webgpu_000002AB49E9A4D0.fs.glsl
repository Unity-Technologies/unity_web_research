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
const uvec4 ImmCB_0[] = uvec4[43] (
	uvec4(0x0, 0x0, 0x0, 0x0),
	uvec4(0x3EBA2E8C, 0x0, 0x0, 0x0),
	uvec4(0x3E682A39, 0x3E919015, 0x0, 0x0),
	uvec4(0xBDA5B7A9, 0x3EB5838C, 0x0, 0x0),
	uvec4(0xBEA7BE78, 0x3E219004, 0x0, 0x0),
	uvec4(0xBEA7BE78, 0xBE219002, 0x0, 0x0),
	uvec4(0xBDA5B795, 0xBEB5838D, 0x0, 0x0),
	uvec4(0x3E682A36, 0xBE919016, 0x0, 0x0),
	uvec4(0x3F2E8BA3, 0x0, 0x0, 0x0),
	uvec4(0x3F1D4291, 0x3E977702, 0x0, 0x0),
	uvec4(0x3ED9A795, 0x3F087713, 0x0, 0x0),
	uvec4(0x3E1B5C30, 0x3F2A2B53, 0x0, 0x0),
	uvec4(0xBE1B5C2E, 0x3F2A2B53, 0x0, 0x0),
	uvec4(0xBED9A799, 0x3F087712, 0x0, 0x0),
	uvec4(0xBF1D4291, 0x3E977703, 0x0, 0x0),
	uvec4(0xBF2E8BA3, 0x0, 0x0, 0x0),
	uvec4(0xBF1D4291, 0xBE977702, 0x0, 0x0),
	uvec4(0xBED9A791, 0xBF087715, 0x0, 0x0),
	uvec4(0xBE1B5C1C, 0xBF2A2B54, 0x0, 0x0),
	uvec4(0x3E1B5C47, 0xBF2A2B52, 0x0, 0x0),
	uvec4(0x3ED9A793, 0xBF087715, 0x0, 0x0),
	uvec4(0x3F1D4291, 0xBE977702, 0x0, 0x0),
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x3F74A06B, 0x3E96EA27, 0x0, 0x0),
	uvec4(0x3F538462, 0x3F1035BF, 0x0, 0x0),
	uvec4(0x3F1F9D07, 0x3F48261C, 0x0, 0x0),
	uvec4(0x3EBB0DF9, 0x3F6E4DBE, 0x0, 0x0),
	uvec4(0x3D990C0B, 0x3F7F48C0, 0x0, 0x0),
	uvec4(0xBE63DC88, 0x3F7994E0, 0x0, 0x0),
	uvec4(0xBF000001, 0x3F5DB3D7, 0x0, 0x0),
	uvec4(0xBF3BA94B, 0x3F2E1FCC, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0x3EDE2605, 0x0, 0x0),
	uvec4(0xBF7D2405, 0x3E189E7D, 0x0, 0x0),
	uvec4(0xBF7D2404, 0xBE189E98, 0x0, 0x0),
	uvec4(0xBF66A5E5, 0xBEDE2603, 0x0, 0x0),
	uvec4(0xBF3BA949, 0xBF2E1FCE, 0x0, 0x0),
	uvec4(0xBEFFFFFD, 0xBF5DB3D8, 0x0, 0x0),
	uvec4(0xBE63DC8C, 0xBF7994E0, 0x0, 0x0),
	uvec4(0x3D990C32, 0xBF7F48BF, 0x0, 0x0),
	uvec4(0x3EBB0E0A, 0xBF6E4DBB, 0x0, 0x0),
	uvec4(0x3F1F9D05, 0xBF48261E, 0x0, 0x0),
	uvec4(0x3F538463, 0xBF1035BD, 0x0, 0x0),
	uvec4(0x3F74A06D, 0xBE96EA1B, 0x0, 0x0));
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
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<43 ; u_xlati_loop_1++)
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
    u_xlat18 = u_xlat3.w * 0.0730602965;
    u_xlat18 = min(u_xlat18, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = vec3(u_xlat18) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = u_xlat18;
    return;
}

