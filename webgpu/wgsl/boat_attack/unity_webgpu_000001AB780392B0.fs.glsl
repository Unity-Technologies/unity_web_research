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
	vec4 _FsrRcasConstants;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Grain_Texture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
vec3 u_xlat0;
uvec4 u_xlatu0;
bvec3 u_xlatb0;
vec4 u_xlat1;
ivec4 u_xlati1;
uvec4 u_xlatu1;
vec4 u_xlat2;
ivec4 u_xlati2;
uvec4 u_xlatu2;
vec4 u_xlat3;
uvec4 u_xlatu3;
vec3 u_xlat4;
uvec4 u_xlatu4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
float u_xlat11;
float u_xlat12;
float u_xlat20;
float u_xlat21;
float u_xlat30;
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1.xy = vs_TEXCOORD0.xy * _SourceSize.xy;
    u_xlatu1.xy =  uvec2(ivec2(u_xlat1.xy));
    u_xlatu2 = u_xlatu1.xyxy + uvec4(0u, 4294967295u, 4294967295u, 0u);
    u_xlatu0.xy = u_xlatu2.zw;
    u_xlat0.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlatu4 = u_xlatu1.xyxy + uvec4(0u, 1u, 1u, 0u);
    u_xlatu3.xy = u_xlatu4.zw;
    u_xlat3.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).xyz;
    u_xlat5.xyz = max(u_xlat0.xyz, u_xlat3.xyz);
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlat5.xyz = max(u_xlat5.xyz, u_xlat2.xyz);
    u_xlatu4.z = uint(0u);
    u_xlatu4.w = uint(0u);
    u_xlat4.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu4.xy), int(u_xlatu4.w)).xyz;
    u_xlat5.xyz = max(u_xlat4.xyz, u_xlat5.xyz);
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat6.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
    u_xlat7.xyz = max(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.xyz = u_xlat5.xyz * vec3(4.0, 4.0, 4.0);
    u_xlat5.xyz = vec3(1.0) / vec3(u_xlat5.xyz);
    u_xlat7.xyz = (-u_xlat7.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat8.xyz = min(u_xlat0.xyz, u_xlat3.xyz);
    u_xlat8.xyz = min(u_xlat2.xyz, u_xlat8.xyz);
    u_xlat8.xyz = min(u_xlat4.xyz, u_xlat8.xyz);
    u_xlat9.xyz = u_xlat8.xyz * vec3(4.0, 4.0, 4.0) + vec3(-4.0, -4.0, -4.0);
    u_xlat8.xyz = min(u_xlat6.xyz, u_xlat8.xyz);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat8.xyz;
    u_xlat8.xyz = vec3(1.0) / vec3(u_xlat9.xyz);
    u_xlat7.xyz = u_xlat7.xyz * u_xlat8.xyz;
    u_xlat5.xyz = max((-u_xlat5.xyz), u_xlat7.xyz);
    u_xlat30 = max(u_xlat5.z, u_xlat5.y);
    u_xlat30 = max(u_xlat30, u_xlat5.x);
    u_xlat30 = min(u_xlat30, 0.0);
    u_xlat30 = max(u_xlat30, -0.1875);
    u_xlat30 = u_xlat30 * _FsrRcasConstants.x;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat2.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat4.xyz + u_xlat0.xyz;
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat3.xyz + u_xlat0.xyz;
    u_xlat30 = u_xlat30 * 4.0 + 1.0;
    u_xlat0.xyz = u_xlat6.xyz + u_xlat0.xyz;
    u_xlat21 = intBitsToFloat((-floatBitsToInt(u_xlat30)) + int(0x7EF19FFFu));
    u_xlat30 = (-u_xlat21) * u_xlat30 + 2.0;
    u_xlat30 = u_xlat30 * u_xlat21;
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlati2 = ivec4(u_xlatu1.xyxy) + ivec4(int(0xFFFFFFFFu), int(0xFFFFFFFFu), 1, int(0xFFFFFFFFu));
    u_xlati1 = ivec4(u_xlatu1.xyxy) + ivec4(int(0xFFFFFFFFu), 1, 1, 1);
    u_xlat1 = vec4(u_xlati1);
    u_xlat1 = max(u_xlat1, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat2 = vec4(u_xlati2);
    u_xlat2 = max(u_xlat2, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat3 = _SourceSize.xyxy + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat2 = min(u_xlat2, u_xlat3);
    u_xlat1 = min(u_xlat1, u_xlat3);
    u_xlatu1 =  uvec4(ivec4(u_xlat1.zwxy));
    u_xlatu2 =  uvec4(ivec4(u_xlat2.zwxy));
    u_xlatu3.xy = u_xlatu2.zw;
    u_xlatu3.z = uint(0u);
    u_xlatu3.w = uint(0u);
    u_xlat10.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu3.xy), int(u_xlatu3.w)).xyz;
    u_xlat10.xyz = u_xlat10.xyz;
    u_xlat10.xyz = clamp(u_xlat10.xyz, 0.0, 1.0);
    u_xlat10.x = dot(u_xlat10.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat20 = min(u_xlat10.x, u_xlat0.x);
    u_xlat0.x = max(u_xlat10.x, u_xlat0.x);
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlat2.xyz = u_xlat2.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat30 = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlatu2.xy = u_xlatu1.zw;
    u_xlatu2.z = uint(0u);
    u_xlatu2.w = uint(0u);
    u_xlat2.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu2.xy), int(u_xlatu2.w)).xyz;
    u_xlat2.xyz = u_xlat2.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat12 = min(u_xlat30, u_xlat2.x);
    u_xlatu1.z = uint(0u);
    u_xlatu1.w = uint(0u);
    u_xlat1.xyz = texelFetch(_BlitTexture, ivec2(u_xlatu1.xy), int(u_xlatu1.w)).xyz;
    u_xlat1.xyz = u_xlat1.xyz;
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.x = dot(u_xlat1.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat11 = min(u_xlat1.x, u_xlat12);
    u_xlat0.z = min(u_xlat20, u_xlat11);
    u_xlat11 = u_xlat10.x + u_xlat2.x;
    u_xlat10.x = u_xlat30 + u_xlat10.x;
    u_xlat21 = u_xlat30 + u_xlat1.x;
    u_xlat30 = max(u_xlat30, u_xlat2.x);
    u_xlat30 = max(u_xlat1.x, u_xlat30);
    u_xlat0.x = max(u_xlat30, u_xlat0.x);
    u_xlat3.yw = (-vec2(u_xlat21)) + vec2(u_xlat11);
    u_xlat30 = u_xlat1.x + u_xlat2.x;
    u_xlat11 = u_xlat2.x + u_xlat10.x;
    u_xlat10.x = (-u_xlat30) + u_xlat10.x;
    u_xlat30 = u_xlat1.x + u_xlat11;
    u_xlat30 = u_xlat30 * 0.03125;
    u_xlat30 = max(u_xlat30, 0.0078125);
    u_xlat1.x = min(abs(u_xlat3.w), abs(u_xlat10.x));
    u_xlat3.xz = (-u_xlat10.xx);
    u_xlat10.x = u_xlat30 + u_xlat1.x;
    u_xlat10.x = float(1.0) / float(u_xlat10.x);
    u_xlat1 = u_xlat10.xxxx * u_xlat3;
    u_xlat1 = max(u_xlat1, vec4(-8.0, -8.0, -8.0, -8.0));
    u_xlat1 = min(u_xlat1, vec4(8.0, 8.0, 8.0, 8.0));
    u_xlat1 = u_xlat1 * _SourceSize.zwzw;
    u_xlat2 = u_xlat1.zwzw * vec4(-0.5, -0.5, -0.166666672, -0.166666672) + vs_TEXCOORD0.xyxy;
    u_xlat1 = u_xlat1 * vec4(0.166666672, 0.166666672, 0.5, 0.5) + vs_TEXCOORD0.xyxy;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = u_xlat2.xyz;
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz;
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat1.xyz;
    u_xlat1.xyz = clamp(u_xlat1.xyz, 0.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz + u_xlat2.xyz;
    u_xlat4.xyz = u_xlat4.xyz;
    u_xlat4.xyz = clamp(u_xlat4.xyz, 0.0, 1.0);
    u_xlat2.xyz = u_xlat3.xyz + u_xlat4.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.25, 0.25, 0.25);
    u_xlat2.xyz = u_xlat1.xyz * vec3(0.25, 0.25, 0.25) + u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat0.y = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlatb0.xz = lessThan(u_xlat0.xxyx, u_xlat0.yyzy).xz;
    u_xlatb0.x = u_xlatb0.x || u_xlatb0.z;
    u_xlat0.xyz = (u_xlatb0.x) ? u_xlat1.xyz : u_xlat2.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy * _Grain_TilingParams.xy + _Grain_TilingParams.zw;
    u_xlat30 = texture(sampler2D(_Grain_Texture, sampler_LinearRepeat), u_xlat1.xy, _GlobalMipBias.x).w;
    u_xlat30 = u_xlat30 + -0.5;
    u_xlat30 = u_xlat30 + u_xlat30;
    u_xlat1.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Grain_Params.xxx;
    u_xlat30 = dot(u_xlat0.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat30 = sqrt(u_xlat30);
    u_xlat30 = _Grain_Params.y * (-u_xlat30) + 1.0;
    SV_Target0.xyz = u_xlat1.xyz * vec3(u_xlat30) + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

