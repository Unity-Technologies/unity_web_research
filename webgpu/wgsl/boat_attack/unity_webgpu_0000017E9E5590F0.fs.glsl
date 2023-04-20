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
	vec4 _MainTex_TexelSize;
	vec4 _BrushParams;
	vec4 _SmoothWeights;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BrushTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
uvec2 u_xlatu0;
vec4 u_xlat1;
bvec2 u_xlatb1;
vec4 u_xlat2;
vec2 u_xlat3;
vec2 u_xlat4;
float u_xlat6;
bool u_xlatb6;
vec2 u_xlat7;
float u_xlat9;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_BrushTex;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy + _MainTex_TexelSize.xy;
    u_xlat0.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy).xy;
    u_xlat0.x = u_xlat0.y * 256.0 + u_xlat0.x;
    u_xlat1.xyz = (-_MainTex_TexelSize.xyx);
    u_xlat1.w = 0.0;
    u_xlat1 = u_xlat1.zwxy + vs_TEXCOORD0.xyxy;
    u_xlat3.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xy;
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xy;
    u_xlat9 = u_xlat1.y * 256.0 + u_xlat1.x;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlat1.xw = _MainTex_TexelSize.xy;
    u_xlat1.y = float(0.0);
    u_xlat1.z = float(0.0);
    u_xlat1 = u_xlat1 + vs_TEXCOORD0.xyxy;
    u_xlat1.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy).xy;
    u_xlat7.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zw).xy;
    u_xlat6 = u_xlat7.y * 256.0 + u_xlat7.x;
    u_xlat1.x = u_xlat1.y * 256.0 + u_xlat1.x;
    u_xlat4.xy = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xy;
    u_xlat4.x = u_xlat4.y * 256.0 + u_xlat4.x;
    u_xlat7.x = u_xlat4.x * 0.00389105058;
    u_xlat1.x = u_xlat1.x * 0.00389105058 + u_xlat7.x;
    u_xlat3.x = u_xlat3.x * 0.00389105058 + u_xlat1.x;
    u_xlat0.x = u_xlat0.x * 0.00291828788 + u_xlat3.x;
    u_xlat2 = _MainTex_TexelSize.xyxy * vec4(-1.0, 1.0, 1.0, -1.0) + vs_TEXCOORD0.xyxy;
    u_xlat1.xw = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy).xy;
    u_xlat2.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat2.zw).xy;
    u_xlat3.x = u_xlat2.y * 256.0 + u_xlat2.x;
    u_xlat1.x = u_xlat1.w * 256.0 + u_xlat1.x;
    u_xlat0.x = u_xlat1.x * 0.00291828788 + u_xlat0.x;
    u_xlat0.x = u_xlat3.x * 0.00291828788 + u_xlat0.x;
    u_xlat0.x = u_xlat9 * 0.00291828788 + u_xlat0.x;
    u_xlat0.x = u_xlat6 * 0.00389105058 + u_xlat0.x;
    u_xlat2.x = 0.0;
    u_xlat2.y = (-_MainTex_TexelSize.y);
    u_xlat3.xy = u_xlat2.xy + vs_TEXCOORD0.xy;
    u_xlat3.xy = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat3.xy).xy;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlat0.x = u_xlat3.x * 0.00389105058 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * 0.125;
    u_xlat0.y = min(u_xlat7.x, u_xlat0.x);
    u_xlat0.z = max(u_xlat7.x, u_xlat0.x);
    u_xlat0.x = dot(u_xlat0.xyz, _SmoothWeights.xyz);
    u_xlat0.x = (-u_xlat4.x) * 0.00389105058 + u_xlat0.x;
    u_xlat2 = vs_TEXCOORD0.xxyy * _PCUVToBrushUVScales;
    u_xlat3.xy = u_xlat2.zw + u_xlat2.xy;
    u_xlat3.xy = u_xlat3.xy + _PCUVToBrushUVOffset.xy;
    u_xlat1.xy = u_xlat3.xy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlatb1.xy = equal(u_xlat3.xyxx, u_xlat1.xyxx).xy;
    u_xlat3.xy = texture(sampler2D(_BrushTex, sampler_BrushTex), u_xlat3.xy).xy;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlatb6 = u_xlatb1.y && u_xlatb1.x;
    u_xlat6 = u_xlatb6 ? 1.0 : float(0.0);
    u_xlat6 = u_xlat6 * _BrushParams.x;
    u_xlat3.x = u_xlat6 * u_xlat3.x;
    u_xlat3.x = u_xlat3.x * 0.00389105058;
    u_xlat0.x = u_xlat3.x * u_xlat0.x + u_xlat7.x;
    u_xlat0.x = u_xlat0.x * 65535.0;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.y = u_xlatu0.x & 255u;
    u_xlatu0.x = uint(uint_bitfieldExtract(u_xlatu0.x, 8 & int(0x1F), 8 & int(0x1F)));
    u_xlat1.xy = vec2(u_xlatu0.yx);
    SV_Target0.xy = u_xlat1.xy * vec2(0.00392156886, 0.00392156886);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

