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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	mat4x4 unity_ObjectToWorld;
	float _Cutoff;
	float _Cutoff2;
	float _EdgeSizeTop;
	vec4 _bounds;
};
layout(set = 0, binding = 1) uniform mediump texture2D _Noise;
layout(location = 0) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
float u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
float u_xlat4;
float u_xlat6;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_Noise;
void main()
{
    u_xlat0 = _Cutoff + _Cutoff;
    u_xlat2.xyz = vs_TEXCOORD1.zyx + (-unity_ObjectToWorld[3].zyx);
    u_xlat1.x = u_xlat2.y * 2.0 + u_xlat0;
    u_xlat1.yz = u_xlat2.zx * vec2(0.200000003, 0.200000003);
    u_xlat0 = texture(sampler2D(_Noise, sampler_Noise), u_xlat1.xz).x;
    u_xlat1.x = u_xlat2.y * 4.0 + _Cutoff;
    u_xlat2.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat1.xy).x;
    u_xlat0 = dot(vec2(u_xlat0), u_xlat2.xx);
    u_xlat2.x = _bounds.y + 0.200000003;
    u_xlat6 = u_xlat2.x * 0.5;
    u_xlat2.x = _Cutoff * u_xlat2.x + (-u_xlat6);
    u_xlat6 = u_xlat2.x + _EdgeSizeTop;
    u_xlat1.x = (-u_xlat6) + u_xlat2.x;
    u_xlatb2 = u_xlat2.y>=u_xlat2.x;
    u_xlat4 = (-u_xlat6) + u_xlat2.y;
    u_xlat2.x = (u_xlatb2) ? 0.0 : 1.0;
    u_xlat6 = float(1.0) / u_xlat1.x;
    u_xlat4 = u_xlat6 * u_xlat4;
    u_xlat4 = clamp(u_xlat4, 0.0, 1.0);
    u_xlat6 = u_xlat4 * -2.0 + 3.0;
    u_xlat4 = u_xlat4 * u_xlat4;
    u_xlat4 = u_xlat4 * u_xlat6;
    u_xlat0 = u_xlat0 * u_xlat4 + u_xlat2.x;
    u_xlat0 = u_xlat0 + (-_Cutoff);
    u_xlat0 = u_xlat0 + (-_Cutoff2);
    u_xlatb0 = u_xlat0<0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    return;
}

