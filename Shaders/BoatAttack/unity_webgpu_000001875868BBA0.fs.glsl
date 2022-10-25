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
	uint _SourceTexArraySlice;
	uint _SRGBRead;
	uint _SRGBWrite;
};
layout(set = 0, binding = 0) uniform mediump texture2DArray _SourceTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
bvec2 u_xlatb1;
vec3 u_xlat2;
bvec3 u_xlatb3;
    u_xlat0.z = float(_SourceTexArraySlice);
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0 = texture(sampler2DArray(_SourceTex, sampler_LinearClamp), u_xlat0.xyz, _GlobalMipBias.x);
    u_xlatb1.xy = notEqual(ivec4(uvec4(_SRGBRead, _SRGBWrite, _SRGBRead, _SRGBRead)), ivec4(0, 0, 0, 0)).xy;
    u_xlatb1.x = u_xlatb1.y && u_xlatb1.x;
    if(u_xlatb1.x){
        SV_Target0 = u_xlat0;
        return;
    }
    u_xlat1.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlat2.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat2.xyz = log2(abs(u_xlat2.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlatb3.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    {
        vec3 hlslcc_movcTemp = u_xlat1;
        hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
        hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
        hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
        u_xlat1 = hlslcc_movcTemp;
    }
    u_xlat0.xyz = (uint(_SRGBRead) != uint(0)) ? u_xlat1.xyz : u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlat2.xyz = log2(abs(u_xlat0.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb3.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat0.xyzx).xyz;
    {
        vec3 hlslcc_movcTemp = u_xlat1;
        hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
        hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
        hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
        u_xlat1 = hlslcc_movcTemp;
    }
    SV_Target0.xyz = (uint(_SRGBWrite) != uint(0)) ? u_xlat1.xyz : u_xlat0.xyz;
    SV_Target0.w = u_xlat0.w;
    return;
}

