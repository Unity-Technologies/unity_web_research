#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
	vec4 _SourceSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _ColorTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _FullCoCTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
uvec4 u_xlatu0;
vec3 u_xlat1;
vec3 u_xlat2;
bool u_xlatb2;
float u_xlat7;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu0.xy =  uvec2(ivec2(u_xlat0.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlat0.x = texelFetch(_FullCoCTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).x;
    u_xlatb2 = 0.0<u_xlat0.x;
    if(u_xlatb2){
        u_xlat2.xyz = texture(sampler2D(_ColorTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
        u_xlat0.x = u_xlat0.x * 6.28318548;
        u_xlat0.x = sqrt(u_xlat0.x);
        u_xlat7 = min(u_xlat0.x, 1.0);
        u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat7);
        u_xlat0.x = (-u_xlat0.x) + 1.0;
        u_xlat0.x = max(u_xlat0.x, 0.0);
    } else {
        u_xlat0.x = float(1.0);
        u_xlat2.x = float(0.0);
        u_xlat2.y = float(0.0);
        u_xlat2.z = float(0.0);
    }
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat2.xyz;
    SV_Target0.w = 1.0;
    return;
}

