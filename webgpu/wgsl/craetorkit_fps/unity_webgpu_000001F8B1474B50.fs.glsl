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
	vec4 _ProjectionParams;
	vec4 unity_FogColor;
	vec4 unity_FogParams;
	vec4 _Color;
	int _DstBlend;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp float vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
bvec3 u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
float u_xlat9;
bool u_xlatb9;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat1.xyz = (-u_xlat0.xyz) * _Color.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat0 = u_xlat0 * _Color;
    u_xlat1.xyz = u_xlat1.xyz + u_xlat1.xyz;
    u_xlat2.xyz = (-vs_COLOR0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat1.xyz = (-u_xlat1.xyz) * u_xlat2.xyz + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat0.xyz * vs_COLOR0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.0, 2.0, 2.0) + (-u_xlat1.xyz);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.5, 0.5, 0.5, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.w = u_xlat0.w * vs_COLOR0.w;
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
    u_xlat0.z = u_xlatb0.z ? float(1.0) : 0.0;
;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat2.xyz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    u_xlat9 = vs_TEXCOORD0 / _ProjectionParams.y;
    u_xlat9 = (-u_xlat9) + 1.0;
    u_xlat9 = u_xlat9 * _ProjectionParams.z;
    u_xlat9 = max(u_xlat9, 0.0);
    u_xlat9 = u_xlat9 * unity_FogParams.x;
    u_xlat9 = u_xlat9 * (-u_xlat9);
    u_xlat9 = exp2(u_xlat9);
    u_xlat1.xyz = vec3(u_xlat9) * u_xlat1.xyz + unity_FogColor.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9);
    u_xlatb9 = _DstBlend==1;
    SV_Target0.xyz = (bool(u_xlatb9)) ? u_xlat0.xyz : u_xlat1.xyz;
    return;
}
