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
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec2 u_xlatu0;
bool u_xlatb0;
vec2 u_xlat1;
float u_xlat2;
bool u_xlatb2;
float u_xlat3;
int u_xlati3;
vec2 u_xlat4;
bvec2 u_xlatb4;
float u_xlat5;
int u_xlati5;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BrushTex;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
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
    u_xlat2 = u_xlat2 * _BrushParams.x;
    u_xlat0.x = u_xlat2 * u_xlat0.x;
    u_xlat2 = u_xlat0.x * 0.00389105058;
    u_xlat2 = clamp(u_xlat2, 0.0, 1.0);
    u_xlatb0 = 0.0<u_xlat0.x;
    u_xlat4.x = (-u_xlat2) + 1.0;
    u_xlat2 = u_xlat2 + 9.99999997e-07;
    u_xlat2 = u_xlat4.x / u_xlat2;
    u_xlat4.xy = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xy;
    u_xlat4.x = u_xlat4.y * 256.0 + u_xlat4.x;
    u_xlat6 = u_xlat4.x * 0.00389105058 + (-_BrushParams.y);
    u_xlat4.x = u_xlat4.x * 0.00389105058;
    u_xlat1.x = u_xlat6 * u_xlat2;
    u_xlat1.x = max(u_xlat1.x, -1.0);
    u_xlat1.x = min(u_xlat1.x, 1.0);
    u_xlati3 = int((0.0<u_xlat1.x) ? 0xFFFFFFFFu : uint(0));
    u_xlati5 = int((u_xlat1.x<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlati3 = (-u_xlati3) + u_xlati5;
    u_xlat3 = float(u_xlati3);
    u_xlat5 = u_xlat1.x * 0.5;
    u_xlat3 = u_xlat5 * u_xlat3 + -1.0;
    u_xlat1.x = u_xlat3 * u_xlat1.x;
    u_xlat2 = u_xlat1.x / u_xlat2;
    u_xlat2 = u_xlat2 + u_xlat6;
    u_xlat2 = u_xlat2 + _BrushParams.y;
    u_xlat0.x = (u_xlatb0) ? u_xlat2 : u_xlat4.x;
    u_xlat0.x = u_xlat0.x * 65535.0;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.y = u_xlatu0.x & 255u;
    u_xlatu0.x = uint(uint_bitfieldExtract(u_xlatu0.x, 8 & int(0x1F), 8 & int(0x1F)));
    u_xlat1.xy = vec2(u_xlatu0.yx);
    SV_Target0.xy = u_xlat1.xy * vec2(0.00392156886, 0.00392156886);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

