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
	vec4 _Color;
	float _GlossMapScale;
	vec4 _EmissionColor;
	bvec4 unity_MetaFragmentControl;
	float unity_OneOverOutputBoost;
	float unity_MaxOutputValue;
	float unity_UseLinearSpace;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _EmissionMap;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_EmissionMap;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
float u_xlat9;
bool u_xlatb10;
    u_xlat0.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat3.x = (-u_xlat0.y) * _GlossMapScale + 1.0;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat2.xyz = _Color.xyz * u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = u_xlat3.xxx * u_xlat2.xyz;
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat0.xyz = log2(u_xlat0.xyz);
    u_xlat9 = unity_OneOverOutputBoost;
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat9);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat0.xyz = min(u_xlat0.xyz, vec3(vec3(unity_MaxOutputValue, unity_MaxOutputValue, unity_MaxOutputValue)));
    u_xlat0.w = 1.0;
    u_xlat0 = (unity_MetaFragmentControl.x) ? u_xlat0 : vec4(0.0, 0.0, 0.0, 0.0);
    u_xlat1.xyz = texture(sampler2D(_EmissionMap, sampler_EmissionMap), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * _EmissionColor.xyz;
    u_xlat2.xyz = u_xlat1.xyz * vec3(0.305306017, 0.305306017, 0.305306017) + vec3(0.682171106, 0.682171106, 0.682171106);
    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xyz + vec3(0.0125228781, 0.0125228781, 0.0125228781);
    u_xlat2.xyz = u_xlat1.xyz * u_xlat2.xyz;
    u_xlatb10 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(unity_UseLinearSpace);
    u_xlat1.xyz = (bool(u_xlatb10)) ? u_xlat1.xyz : u_xlat2.xyz;
    u_xlat1.w = 1.0;
    SV_Target0 = (unity_MetaFragmentControl.y) ? u_xlat1 : u_xlat0;
    return;
}
