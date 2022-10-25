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
	float _Height_Offset;
	float _Height_Scale;
};
layout(set = 0, binding = 0) uniform highp texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_MainTex;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
vec2 u_xlat0;
uvec2 u_xlatu0;
vec2 u_xlat1;
    u_xlat0.xy = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xy;
    u_xlat0.x = u_xlat0.y * 256.0 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * _Height_Scale;
    u_xlat0.x = u_xlat0.x * 0.00389105058 + _Height_Offset;
    u_xlat0.x = u_xlat0.x * 65535.0;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.y = u_xlatu0.x & 255u;
    u_xlatu0.x = uint(uint_bitfieldExtract(u_xlatu0.x, 8 & int(0x1F), 8 & int(0x1F)));
    u_xlat1.xy = vec2(u_xlatu0.yx);
    SV_Target0.xy = u_xlat1.xy * vec2(0.00392156886, 0.00392156886);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

