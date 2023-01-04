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
	vec4 _PCUVToBrushUVScales;
	vec2 _PCUVToBrushUVOffset;
	vec4 _BrushParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BrushTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BrushTex;
void main()
{
vec4 u_xlat0;
uvec2 u_xlatu0;
vec2 u_xlat1;
float u_xlat2;
bool u_xlatb2;
float u_xlat3;
vec2 u_xlat4;
bvec2 u_xlatb4;
float u_xlat6;
    u_xlat0 = vs_TEXCOORD0.xxyy * _PCUVToBrushUVScales;
    u_xlat0.xy = u_xlat0.zw + u_xlat0.xy;
    u_xlat0.xy = u_xlat0.xy + _PCUVToBrushUVOffset.xy;
    u_xlat4.xy = u_xlat0.xy;
    u_xlat4.xy = clamp(u_xlat4.xy, 0.0, 1.0);
    u_xlatb4.xy = equal(u_xlat0.xyxy, u_xlat4.xyxy).xy;
    u_xlat0.xy = texture(sampler2D(_BrushTex, sampler_BrushTex), u_xlat0.xy).xy;
    u_xlat0.x = u_xlat0.y * 256.0 + u_xlat0.x;
    u_xlatb2 = u_xlatb4.y && u_xlatb4.x;
    u_xlat2 = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat0.x = u_xlat2 * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * _BrushParams.z;
    u_xlat0.x = u_xlat0.x * 0.00389105058;
    u_xlat2 = (-_BrushParams.w) + 1.0;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlat2 = u_xlat2 * 8.0;
    u_xlat2 = exp2(u_xlat2);
    u_xlat4.x = u_xlat2 * u_xlat0.x;
    u_xlat4.x = exp2(u_xlat4.x);
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xy;
    u_xlat6 = u_xlat1.y * 256.0 + u_xlat1.x;
    u_xlat1.x = u_xlat6 * 0.00389105058;
    u_xlat3 = u_xlat2 * u_xlat1.x;
    u_xlat3 = exp2(u_xlat3);
    u_xlat4.x = u_xlat4.x + u_xlat3;
    u_xlat4.x = u_xlat4.x + -1.0;
    u_xlat4.x = log2(u_xlat4.x);
    u_xlat2 = u_xlat4.x / u_xlat2;
    u_xlat0.x = max(u_xlat0.x, u_xlat1.x);
    u_xlatb4.x = 0.0<_BrushParams.w;
    u_xlat0.x = (u_xlatb4.x) ? u_xlat2 : u_xlat0.x;
    u_xlat0.x = (-u_xlat6) * 0.00389105058 + u_xlat0.x;
    u_xlat0.x = _BrushParams.x * u_xlat0.x + u_xlat1.x;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat0.x = min(u_xlat0.x, 0.499977112);
    u_xlat0.x = u_xlat0.x * 65535.0;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.y = u_xlatu0.x & 255u;
    u_xlatu0.x = u_xlatu0.x >> (8u & uint(0x1F));
    u_xlat1.xy = vec2(u_xlatu0.yx);
    SV_Target0.xy = u_xlat1.xy * vec2(0.00392156886, 0.00392156886);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

