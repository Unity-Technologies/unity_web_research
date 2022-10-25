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
	vec4 _Dithering_Params;
	vec4 _FsrRcasConstants;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _BlueNoise_Texture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointRepeat;
void main()
{
vec3 u_xlat0;
uvec4 u_xlatu0;
bvec3 u_xlatb0;
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
bool u_xlatb27;
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
    u_xlat0.xyz = vec3(u_xlat27) * u_xlat0.xyz;
    u_xlat1.xyz = log2(abs(u_xlat0.xyz));
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat2.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    u_xlat1.xyz = log2(abs(u_xlat0.xyz));
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat2.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Dithering_Params.xy + _Dithering_Params.zw;
    u_xlat27 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat27 = u_xlat27 * 2.0 + -1.0;
    u_xlat1.x = -abs(u_xlat27) + 1.0;
    u_xlatb27 = u_xlat27>=0.0;
    u_xlat27 = (u_xlatb27) ? 1.0 : -1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat27 = u_xlat27 * u_xlat1.x;
    u_xlat0.xyz = vec3(u_xlat27) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat1.xyz = log2(abs(u_xlat1.xyz));
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    SV_Target0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    SV_Target0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    SV_Target0.w = 1.0;
    return;
}

