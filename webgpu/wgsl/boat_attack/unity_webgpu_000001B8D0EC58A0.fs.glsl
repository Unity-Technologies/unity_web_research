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
	float _NitsForPaperWhite;
	int _ColorGamut;
};
layout(set = 0, binding = 0) uniform highp texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform highp  sampler sampler_MainTex;
void main()
{
vec3 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
bvec3 u_xlatb3;
bool u_xlatb12;
    u_xlat0.x = _NitsForPaperWhite * 9.99999975e-05;
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat2.x = dot(vec3(0.627402008, 0.329291999, 0.0433060005), u_xlat1.xyz);
    u_xlat2.y = dot(vec3(0.0690950006, 0.919543982, 0.0113599999), u_xlat1.xyz);
    u_xlat2.z = dot(vec3(0.0163940005, 0.0880279988, 0.895578027), u_xlat1.xyz);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat0.xyz = log2(abs(u_xlat0.xyz));
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.159301758, 0.159301758, 0.159301758);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat2.xyz = u_xlat0.xyz * vec3(18.8515625, 18.8515625, 18.8515625) + vec3(0.8359375, 0.8359375, 0.8359375);
    u_xlat0.xyz = u_xlat0.xyz * vec3(18.6875, 18.6875, 18.6875) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyz = u_xlat2.xyz / u_xlat0.xyz;
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat0.xyz = u_xlat0.xyz * vec3(78.84375, 78.84375, 78.84375);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlatb12 = _ColorGamut==4;
    u_xlat0.xyz = (bool(u_xlatb12)) ? u_xlat0.xyz : u_xlat1.xyz;
    u_xlat2.xyz = log2(abs(u_xlat1.xyz));
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat2.xyz = exp2(u_xlat2.xyz);
    u_xlat2.xyz = u_xlat2.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlatb3.xyz = lessThan(u_xlat1.xyzx, vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0)).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    SV_Target0.w = u_xlat1.w;
    {
        vec4 hlslcc_movcTemp = u_xlat1;
        hlslcc_movcTemp.x = (u_xlatb3.x) ? u_xlat1.x : u_xlat2.x;
        hlslcc_movcTemp.y = (u_xlatb3.y) ? u_xlat1.y : u_xlat2.y;
        hlslcc_movcTemp.z = (u_xlatb3.z) ? u_xlat1.z : u_xlat2.z;
        u_xlat1 = hlslcc_movcTemp;
    }
    SV_Target0.xyz = (int(_ColorGamut) != 0) ? u_xlat0.xyz : u_xlat1.xyz;
    return;
}

