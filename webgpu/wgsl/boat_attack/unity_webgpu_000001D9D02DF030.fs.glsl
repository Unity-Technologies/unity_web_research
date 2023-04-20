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
	vec4 _Offsets;
	vec4 _SlopeEnableFlags;
	float _AddressMode;
};
layout(set = 0, binding = 0) uniform mediump texture2D _LeftTex;
layout(set = 0, binding = 1) uniform mediump texture2D _RightTex;
layout(set = 0, binding = 2) uniform mediump texture2D _BottomTex;
layout(set = 0, binding = 3) uniform mediump texture2D _TopTex;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec2 u_xlatu0;
vec4 u_xlat1;
vec4 u_xlat2;
vec2 u_xlat3;
vec3 u_xlat4;
float u_xlat7;
vec2 u_xlat8;
vec2 u_xlat11;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_TopTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_BottomTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LeftTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_RightTex;
uint uint_bitfieldExtract(uint value, int offset, int bits) { return (value >> uint(offset)) & ~(uint(0xffffffffu) << uint(bits)); }

void main()
{
    u_xlat0.xy = (-vs_TEXCOORD0.yx) + vec2(1.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_AddressMode);
    u_xlat0.zw = vs_TEXCOORD0.xy;
    u_xlat0.xz = texture(sampler2D(_TopTex, sampler_TopTex), u_xlat0.zx).xy;
    u_xlat4.xz = texture(sampler2D(_RightTex, sampler_RightTex), u_xlat0.yw).xy;
    u_xlat0.y = u_xlat4.z * 256.0 + u_xlat4.x;
    u_xlat0.x = u_xlat0.z * 256.0 + u_xlat0.x;
    u_xlat1.xw = u_xlat0.xy * vec2(0.00389105058, 0.00389105058);
    u_xlat0.xy = (-vs_TEXCOORD0.yx) * vec2(_AddressMode) + vec2(1.0, 1.0);
    u_xlat0.zw = vs_TEXCOORD0.xy;
    u_xlat0.xz = texture(sampler2D(_BottomTex, sampler_BottomTex), u_xlat0.zx).xy;
    u_xlat4.xz = texture(sampler2D(_LeftTex, sampler_LeftTex), u_xlat0.yw).xy;
    u_xlat0.y = u_xlat4.z * 256.0 + u_xlat4.x;
    u_xlat0.x = u_xlat0.z * 256.0 + u_xlat0.x;
    u_xlat1.yz = u_xlat0.xy * vec2(0.00389105058, 0.00389105058);
    u_xlat0.xy = textureLod(sampler2D(_LeftTex, sampler_LeftTex), vec2(1.0, 1.0), 0.0).xy;
    u_xlat0.x = u_xlat0.y * 256.0 + u_xlat0.x;
    u_xlat0.x = u_xlat0.x * 0.00389105058;
    u_xlat8.xy = textureLod(sampler2D(_RightTex, sampler_RightTex), vec2(0.0, 1.0), 0.0).xy;
    u_xlat8.x = u_xlat8.y * 256.0 + u_xlat8.x;
    u_xlat0.y = u_xlat8.x * 0.00389105058;
    u_xlat0.xy = u_xlat0.xy + _Offsets.zw;
    u_xlat0.xy = _SlopeEnableFlags.yy * u_xlat0.xy + _Offsets.yy;
    u_xlat4.x = (-u_xlat0.x) + u_xlat0.y;
    u_xlat2.yz = vs_TEXCOORD0.wz;
    u_xlat2.yz = clamp(u_xlat2.yz, 0.0, 1.0);
    u_xlat0.x = u_xlat2.z * u_xlat4.x + u_xlat0.x;
    u_xlat3.xy = textureLod(sampler2D(_LeftTex, sampler_LeftTex), vec2(1.0, 0.0), 0.0).xy;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlat3.x = u_xlat3.x * 0.00389105058;
    u_xlat11.xy = textureLod(sampler2D(_RightTex, sampler_RightTex), vec2(0.0, 0.0), 0.0).xy;
    u_xlat11.x = u_xlat11.y * 256.0 + u_xlat11.x;
    u_xlat3.y = u_xlat11.x * 0.00389105058;
    u_xlat3.xy = u_xlat3.xy + _Offsets.zw;
    u_xlat3.xy = _SlopeEnableFlags.xx * u_xlat3.xy + _Offsets.xx;
    u_xlat7 = (-u_xlat3.x) + u_xlat3.y;
    u_xlat0.y = u_xlat2.z * u_xlat7 + u_xlat3.x;
    u_xlat3.xy = textureLod(sampler2D(_BottomTex, sampler_BottomTex), vec2(0.0, 1.0), 0.0).xy;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlat3.x = u_xlat3.x * 0.00389105058;
    u_xlat11.xy = textureLod(sampler2D(_TopTex, sampler_TopTex), vec2(0.0, 0.0), 0.0).xy;
    u_xlat11.x = u_xlat11.y * 256.0 + u_xlat11.x;
    u_xlat3.y = u_xlat11.x * 0.00389105058;
    u_xlat3.xy = u_xlat3.xy + _Offsets.xy;
    u_xlat3.xy = _SlopeEnableFlags.zz * u_xlat3.xy + _Offsets.zz;
    u_xlat7 = (-u_xlat3.x) + u_xlat3.y;
    u_xlat0.z = u_xlat2.y * u_xlat7 + u_xlat3.x;
    u_xlat3.xy = textureLod(sampler2D(_BottomTex, sampler_BottomTex), vec2(1.0, 1.0), 0.0).xy;
    u_xlat3.x = u_xlat3.y * 256.0 + u_xlat3.x;
    u_xlat3.x = u_xlat3.x * 0.00389105058;
    u_xlat11.xy = textureLod(sampler2D(_TopTex, sampler_TopTex), vec2(1.0, 0.0), 0.0).xy;
    u_xlat11.x = u_xlat11.y * 256.0 + u_xlat11.x;
    u_xlat3.y = u_xlat11.x * 0.00389105058;
    u_xlat3.xy = u_xlat3.xy + _Offsets.xy;
    u_xlat3.xy = _SlopeEnableFlags.ww * u_xlat3.xy + _Offsets.ww;
    u_xlat7 = (-u_xlat3.x) + u_xlat3.y;
    u_xlat0.w = u_xlat2.y * u_xlat7 + u_xlat3.x;
    u_xlat0 = u_xlat0 + u_xlat1;
    u_xlat2.xw = (-u_xlat2.yz) + vec2(1.0, 1.0);
    u_xlat1 = max(u_xlat2, vec4(1.00000001e-07, 1.00000001e-07, 1.00000001e-07, 1.00000001e-07));
    u_xlat1 = vec4(1.0, 1.0, 1.0, 1.0) / u_xlat1;
    u_xlat2.x = dot(u_xlat1, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat1 = u_xlat1 / u_xlat2.xxxx;
    u_xlat0.x = dot(u_xlat0, u_xlat1);
    u_xlat0.x = u_xlat0.x * 65535.0;
    u_xlatu0.x = uint(u_xlat0.x);
    u_xlatu0.y = u_xlatu0.x & 255u;
    u_xlatu0.x = uint(uint_bitfieldExtract(u_xlatu0.x, 8 & int(0x1F), 8 & int(0x1F)));
    u_xlat1.xy = vec2(u_xlatu0.yx);
    SV_Target0.xy = u_xlat1.xy * vec2(0.00392156886, 0.00392156886);
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

