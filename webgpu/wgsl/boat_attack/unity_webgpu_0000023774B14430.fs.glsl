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
	vec2 _GlobalMipBias;
	vec4 _HDRDebugParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _DebugScreenTexture;
writeonly layout(set = 0, binding = 1, r32f) highp uniform image2D _xyBufferRW_origX1X;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec4 u_xlatu0;
bool u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
float u_xlat8;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointClamp;
void main()
{
    u_xlatb0 = _HDRDebugParams.w==0.0;
    u_xlat1 = texture(sampler2D(_DebugScreenTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat2.x = dot(vec3(0.412391007, 0.357584, 0.180481002), u_xlat1.xyz);
    u_xlat2.y = dot(vec3(0.212639004, 0.715169013, 0.0721922964), u_xlat1.xyz);
    u_xlat2.z = dot(vec3(0.0193307996, 0.119194999, 0.950532019), u_xlat1.xyz);
    u_xlat3.x = dot(vec3(0.638574004, 0.144617006, 0.167264998), u_xlat1.xyz);
    u_xlat3.y = dot(vec3(0.263366997, 0.677998006, 0.0586352982), u_xlat1.xyz);
    u_xlat3.z = dot(vec2(0.0280726999, 1.06098998), u_xlat1.yz);
    SV_Target0 = u_xlat1;
    u_xlat0.xyz = (bool(u_xlatb0)) ? u_xlat2.xyz : u_xlat3.xyz;
    u_xlat8 = dot(u_xlat0.xyz, vec3(1.0, 1.0, 1.0));
    u_xlat0 = u_xlat0.xyyy / vec4(u_xlat8);
    u_xlat0 = u_xlat0 * _HDRDebugParams.xyyy;
    u_xlatu0 = uvec4(u_xlat0);
    imageStore(_xyBufferRW_origX1X, ivec2(u_xlatu0.xy), vec4(1.0, 1.0, 1.0, 1.0));
    return;
}

