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
	int _ForceGammaToLinear;
};
layout(set = 0, binding = 0) uniform highp texture2D _MainTex;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
bvec3 u_xlatb2;
vec3 u_xlat3;
bvec3 u_xlatb3;
vec3 u_xlat4;
vec3 u_xlat5;
bool u_xlatb19;
layout(set = 0, binding = 1) uniform highp  sampler sampler_MainTex;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlatb1.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlatb3.xyz = lessThan(u_xlat0.xyzx, vec4(1.0, 1.0, 1.0, 0.0)).xyz;
    u_xlat4.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat4.xyz = log2(u_xlat4.xyz);
    u_xlat4.xyz = u_xlat4.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat4.xyz = exp2(u_xlat4.xyz);
    u_xlat5.xyz = log2(u_xlat0.xyz);
    u_xlat5.xyz = u_xlat5.xyz * vec3(2.20000005, 2.20000005, 2.20000005);
    u_xlat5.xyz = exp2(u_xlat5.xyz);
    u_xlat3.x = (u_xlatb3.x) ? u_xlat4.x : u_xlat5.x;
    u_xlat3.y = (u_xlatb3.y) ? u_xlat4.y : u_xlat5.y;
    u_xlat3.z = (u_xlatb3.z) ? u_xlat4.z : u_xlat5.z;
    u_xlat1.x = (u_xlatb1.x) ? u_xlat2.x : u_xlat3.x;
    u_xlat1.y = (u_xlatb1.y) ? u_xlat2.y : u_xlat3.y;
    u_xlat1.z = (u_xlatb1.z) ? u_xlat2.z : u_xlat3.z;
    u_xlat1.xyz = (int(_ForceGammaToLinear) != 0) ? u_xlat1.xyz : u_xlat0.xyz;
    if(_ColorGamut == 0) {
        u_xlatb2.xyz = lessThan(u_xlat1.xyzx, vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0)).xyz;
        u_xlat3.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
        u_xlat4.xyz = log2(abs(u_xlat1.xyz));
        u_xlat4.xyz = u_xlat4.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
        u_xlat4.xyz = exp2(u_xlat4.xyz);
        u_xlat4.xyz = u_xlat4.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
        u_xlat0.x = (u_xlatb2.x) ? u_xlat3.x : u_xlat4.x;
        u_xlat0.y = (u_xlatb2.y) ? u_xlat3.y : u_xlat4.y;
        u_xlat0.z = (u_xlatb2.z) ? u_xlat3.z : u_xlat4.z;
    } else {
        u_xlatb19 = _ColorGamut==4;
        u_xlat2.xy = vec2(_NitsForPaperWhite) * vec2(9.99999975e-05, 0.0125000002);
        u_xlat3.x = dot(vec3(0.627402008, 0.329291999, 0.0433060005), u_xlat1.xyz);
        u_xlat3.y = dot(vec3(0.0690950006, 0.919543982, 0.0113599999), u_xlat1.xyz);
        u_xlat3.z = dot(vec3(0.0163940005, 0.0880279988, 0.895578027), u_xlat1.xyz);
        u_xlat2.xzw = u_xlat2.xxx * u_xlat3.xyz;
        u_xlat2.xzw = log2(abs(u_xlat2.xzw));
        u_xlat2.xzw = u_xlat2.xzw * vec3(0.159301758, 0.159301758, 0.159301758);
        u_xlat2.xzw = exp2(u_xlat2.xzw);
        u_xlat3.xyz = u_xlat2.xzw * vec3(18.8515625, 18.8515625, 18.8515625) + vec3(0.8359375, 0.8359375, 0.8359375);
        u_xlat2.xzw = u_xlat2.xzw * vec3(18.6875, 18.6875, 18.6875) + vec3(1.0, 1.0, 1.0);
        u_xlat2.xzw = u_xlat3.xyz / u_xlat2.xzw;
        u_xlat2.xzw = log2(u_xlat2.xzw);
        u_xlat2.xzw = u_xlat2.xzw * vec3(78.84375, 78.84375, 78.84375);
        u_xlat2.xzw = exp2(u_xlat2.xzw);
        u_xlat1.xyz = u_xlat1.xyz * u_xlat2.yyy;
        u_xlat0.xyz = (bool(u_xlatb19)) ? u_xlat2.xzw : u_xlat1.xyz;
    }
    SV_Target0 = u_xlat0;
    return;
}

