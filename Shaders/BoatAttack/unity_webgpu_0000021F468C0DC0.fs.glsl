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
	vec2 _Grain_Params;
	vec4 _Grain_TilingParams;
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
bvec3 u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
    u_xlat0.xy = vs_TEXCOORD0.xy * _Grain_TilingParams.xy + _Grain_TilingParams.zw;
    u_xlat0.x = texture(sampler2D(_Grain_Texture, sampler_LinearRepeat), u_xlat0.xy, _GlobalMipBias.x).w;
    u_xlat0.x = u_xlat0.x + -0.5;
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat1.xyz = u_xlat1.xyz * _Grain_Params.xxx;
    u_xlat0.x = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = _Grain_Params.y * (-u_xlat0.x) + 1.0;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat1.xyz = log2(abs(u_xlat0.xyz));
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat2.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    SV_Target0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    SV_Target0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    SV_Target0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    SV_Target0.w = 1.0;
    return;
}

