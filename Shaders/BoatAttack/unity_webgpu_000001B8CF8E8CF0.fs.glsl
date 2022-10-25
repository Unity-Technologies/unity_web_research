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
	vec2 _Grain_Params;
	vec4 _Grain_TilingParams;
	vec4 _Dithering_Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Grain_Texture;
layout(set = 0, binding = 2) uniform mediump texture2D _BlueNoise_Texture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
vec4 u_xlat0;
ivec4 u_xlati0;
uvec4 u_xlatu0;
bvec3 u_xlatb0;
vec4 u_xlat1;
ivec4 u_xlati1;
uvec4 u_xlatu1;
bool u_xlatb1;
vec4 u_xlat2;
uvec4 u_xlatu2;
vec4 u_xlat3;
uvec4 u_xlatu3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat10;
float u_xlat12;
float u_xlat15;
bool u_xlatb15;
float u_xlat17;
    u_xlat0 = vs_TEXCOORD0.xyxy * _SourceSize.xyxy;
    u_xlati0 = ivec4(u_xlat0);
    u_xlati1 = u_xlati0.zwzw + ivec4(int(0xFFFFFFFFu), int(0xFFFFFFFFu), 1, int(0xFFFFFFFFu));
    u_xlati0 = u_xlati0 + ivec4(int(0xFFFFFFFFu), 1, 1, 1);
    u_xlat0 = vec4(u_xlati0);
    u_xlat0 = max(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat1 = vec4(u_xlati1);
    u_xlat1 = max(u_xlat1, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat2 = _SourceSize.xyxy + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat1 = min(u_xlat1, u_xlat2);
    u_xlat0 = min(u_xlat0, u_xlat2);
    u_xlatu0 =  uvec4(ivec4(u_xlat0.zwxy));
    u_xlatu1 =  uvec4(ivec4(u_xlat1.zwxy));
    u_xlatu2.xy = u_xlatu1.zw;
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlat2.xyz = u_xlat2.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlatu3.xy = u_xlatu0.zw;
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlat7.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).xyz;
    u_xlat7.xyz = u_xlat7.xyz;
    u_xlat7.xyz = clamp(u_xlat7.xyz, 0.0, 1.0);
    u_xlat7.x = dot(u_xlat7.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat12 = u_xlat7.x + u_xlat2.x;
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
    u_xlat1.xyz = u_xlat1.xyz;
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat0.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlat0.xyz = u_xlat0.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat5.x = u_xlat0.x + u_xlat1.x;
    u_xlat3.yw = (-u_xlat5.xx) + vec2(u_xlat12);
    u_xlat5.x = u_xlat1.x + u_xlat2.x;
    u_xlat10 = u_xlat0.x + u_xlat7.x;
    u_xlat10 = (-u_xlat10) + u_xlat5.x;
    u_xlat5.x = u_xlat7.x + u_xlat5.x;
    u_xlat5.x = u_xlat0.x + u_xlat5.x;
    u_xlat5.x = u_xlat5.x * 0.03125;
    u_xlat5.x = max(u_xlat5.x, 0.0078125);
    u_xlat15 = min(abs(u_xlat3.w), abs(u_xlat10));
    u_xlat3.xz = (-vec2(u_xlat10));
    u_xlat5.x = u_xlat5.x + u_xlat15;
    u_xlat5.x = float(1.0) / float(u_xlat5.x);
    u_xlat3 = u_xlat5.xxxx * u_xlat3;
    u_xlat3 = max(u_xlat3, vec4(-8.0, -8.0, -8.0, -8.0));
    u_xlat3 = min(u_xlat3, vec4(8.0, 8.0, 8.0, 8.0));
    u_xlat3 = u_xlat3 * _SourceSize.zwzw;
    u_xlat4 = u_xlat3.zwzw * vec4(-0.5, -0.5, -0.166666672, -0.166666672) + vs_TEXCOORD0.xyxy;
    u_xlat3 = u_xlat3 * vec4(0.166666672, 0.166666672, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, _GlobalMipBias.x).xyz;
    u_xlat6.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.zw, _GlobalMipBias.x).xyz;
    u_xlat6.xyz = u_xlat6.xyz;
    u_xlat6.xyz = clamp(u_xlat6.xyz, 0.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz;
    u_xlat5.xyz = clamp(u_xlat5.xyz, 0.0, 1.0);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.zw, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz;
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat6.xyz = u_xlat6.xyz + u_xlat3.xyz;
    u_xlat4.xyz = u_xlat4.xyz;
    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz + u_xlat4.xyz;
    u_xlat5.xyz = u_xlat5.xyz * vec3(0.25, 0.25, 0.25);
    u_xlat5.xyz = u_xlat6.xyz * vec3(0.25, 0.25, 0.25) + u_xlat5.xyz;
    u_xlat6.xyz = u_xlat6.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat12 = dot(u_xlat5.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat17 = min(u_xlat7.x, u_xlat1.x);
    u_xlat1.x = max(u_xlat7.x, u_xlat1.x);
    u_xlat1.x = max(u_xlat0.x, u_xlat1.x);
    u_xlat0.x = min(u_xlat0.x, u_xlat17);
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz;
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat7.x = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat17 = min(u_xlat2.x, u_xlat7.x);
    u_xlat2.x = max(u_xlat2.x, u_xlat7.x);
    u_xlat1.x = max(u_xlat1.x, u_xlat2.x);
    u_xlatb1 = u_xlat1.x<u_xlat12;
    u_xlat0.x = min(u_xlat0.x, u_xlat17);
    u_xlatb0.x = u_xlat12<u_xlat0.x;
    u_xlatb0.x = u_xlatb1 || u_xlatb0.x;
    u_xlat0.xyz = (u_xlatb0.x) ? u_xlat6.xyz : u_xlat5.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Grain_TilingParams.xy + _Grain_TilingParams.zw;
    u_xlat15 = texture(sampler2D(_Grain_Texture, sampler_LinearRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat15 = u_xlat15 + -0.5;
    u_xlat15 = u_xlat15 + u_xlat15;
    u_xlat1.xyz = vec3(u_xlat15) * u_xlat0.xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Grain_Params.xxx;
    u_xlat15 = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat15 = sqrt(u_xlat15);
    u_xlat15 = _Grain_Params.y * (-u_xlat15) + 1.0;
    u_xlat0.xyz = u_xlat1.xyz * vec3(u_xlat15) + u_xlat0.xyz;
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
    u_xlat15 = texture(sampler2D(_BlueNoise_Texture, sampler_PointRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat15 = u_xlat15 * 2.0 + -1.0;
    u_xlat1.x = -abs(u_xlat15) + 1.0;
    u_xlatb15 = u_xlat15>=0.0;
    u_xlat15 = (u_xlatb15) ? 1.0 : -1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat15 = u_xlat15 * u_xlat1.x;
    u_xlat0.xyz = vec3(u_xlat15) * vec3(0.00392156886, 0.00392156886, 0.00392156886) + u_xlat0.xyz;
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

