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
	vec4 _SourceSize;
	vec4 _FsrRcasConstants;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
uvec4 u_xlatu0;
vec3 u_xlat1;
uvec4 u_xlatu1;
vec3 u_xlat2;
uvec4 u_xlatu2;
vec3 u_xlat3;
uvec4 u_xlatu3;
vec3 u_xlat4;
uvec4 u_xlatu4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
float u_xlat27;
void main()
{
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu1.xy =  uvec2(ivec2(u_xlat1.xy));
    u_xlatu2 = u_xlatu1.xyxy + uvec4(0u, 4294967295u, 4294967295u, 0u);
    u_xlatu0.xy = u_xlatu2.zw;
    u_xlat0.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlatu3 = u_xlatu1.xyxy + uvec4(0u, 1u, 1u, 0u);
    u_xlatu4.xy = u_xlatu3.zw;
    u_xlatu4.z = uint(0u);
    u_xlatu4.w = uint(0u);
    u_xlat4.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu4.xy), int(u_xlatu4.w)).xyz;
    u_xlat5.xyz = max(u_xlat0.xyz, u_xlat4.xyz);
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, u_xlat2.xyz);
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlat3.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).xyz;
    u_xlat5.xyz = max(u_xlat3.xyz, u_xlat5.xyz);
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
    u_xlat6.xyz = max(u_xlat1.xyz, u_xlat5.xyz);
    u_xlat5.xyz = u_xlat5.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat5.xyz = vec3(1.0) / vec3(u_xlat5.xyz);
    u_xlat6.xyz = (-u_xlat6.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat7.xyz = min(u_xlat0.xyz, u_xlat4.xyz);
    u_xlat7.xyz = min(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat7.xyz = min(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat8.xyz = u_xlat7.xyz * vec3(4.0, 4.0, 4.0) + vec3(-4.0, -4.0, -4.0);
    u_xlat7.xyz = min(u_xlat1.xyz, u_xlat7.xyz);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat7.xyz;
    u_xlat7.xyz = vec3(1.0) / vec3(u_xlat8.xyz);
    u_xlat6.xyz = u_xlat6.xyz * u_xlat7.xyz;
    u_xlat5.xyz = max((-u_xlat5.xyz), u_xlat6.xyz);
    u_xlat27 = max(u_xlat5.z, u_xlat5.y);
    u_xlat27 = max(u_xlat27, u_xlat5.x);
    u_xlat27 = min(u_xlat27, 0.0);
    u_xlat27 = max(u_xlat27, -0.1875);
    u_xlat27 = u_xlat27 * _FsrRcasConstants.x;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat27);
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat3.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat4.xyz + u_xlat0.xyz;
    u_xlat27 = u_xlat27 * 4.0 + 1.0;
    u_xlat0.xyz = u_xlat1.xyz + u_xlat0.xyz;
    u_xlat1.x = intBitsToFloat((-floatBitsToInt(u_xlat27)) + int(0x7EF19FFFu));
    u_xlat27 = (-u_xlat1.x) * u_xlat27 + 2.0;
    u_xlat27 = u_xlat27 * u_xlat1.x;
    SV_Target0.xyz = vec3(u_xlat27) * u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

