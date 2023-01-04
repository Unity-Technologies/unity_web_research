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
	float _BlitMipLevel;
};
layout(set = 0, binding = 0) uniform mediump textureCube _BlitCubeTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
bvec2 u_xlatb2;
vec2 u_xlat6;
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6.x = -abs(u_xlat0.x) + 1.0;
    u_xlat1.z = -abs(u_xlat0.y) + u_xlat6.x;
    u_xlat6.x = max((-u_xlat1.z), 0.0);
    u_xlatb2.xy = greaterThanEqual(u_xlat0.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    {
        vec2 hlslcc_movcTemp = u_xlat6;
        hlslcc_movcTemp.x = (u_xlatb2.x) ? (-u_xlat6.x) : u_xlat6.x;
        hlslcc_movcTemp.y = (u_xlatb2.y) ? (-u_xlat6.x) : u_xlat6.x;
        u_xlat6 = hlslcc_movcTemp;
    }
    u_xlat1.xy = u_xlat6.xy + u_xlat0.xy;
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat0.x = textureLod(samplerCube(_BlitCubeTexture, sampler_LinearRepeat), u_xlat0.xyz, _BlitMipLevel).w;
    SV_Target0 = u_xlat0.xxxx;
    return;
}

