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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 _MainTex_TexelSize;
	vec4 _Params;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _Test;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uvec4 u_xlatu0;
vec3 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
float u_xlat3;
float u_xlat9;
float u_xlat10;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatu0.xy =  uvec2(ivec2(hlslcc_FragCoord.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat0 = texelFetch(_Test, ivec2(u_xlatu0.xy), int(u_xlatu0.w));
    u_xlatb1 = u_xlat0.w==0.0;
    if(u_xlatb1){
        SV_Target0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
        return;
    }
    u_xlat1.xyz = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0).xyz;
    u_xlat10 = max(u_xlat0.y, u_xlat0.x);
    u_xlat10 = (-u_xlat10) + 1.0;
    u_xlat2.x = min(u_xlat0.y, u_xlat0.x);
    u_xlat10 = min(u_xlat10, u_xlat2.x);
    u_xlat10 = u_xlat10 * 2.19178081;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat10 = inversesqrt(u_xlat10);
    u_xlat10 = float(1.0) / u_xlat10;
    u_xlat9 = u_xlat0.w * u_xlat10;
    u_xlat0.xy = u_xlat0.xy + vec2(-0.5, -0.5);
    u_xlat2.yz = abs(u_xlat0.xy) * _Params.xx;
    u_xlat0.x = _MainTex_TexelSize.z * _MainTex_TexelSize.y;
    u_xlat2.x = u_xlat0.x * u_xlat2.y;
    u_xlat0.x = dot(u_xlat2.xz, u_xlat2.xz);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = max(u_xlat0.x, 0.0);
    u_xlat3 = u_xlat0.x * u_xlat0.x;
    u_xlat3 = u_xlat3 * u_xlat3;
    u_xlat0.x = u_xlat3 * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat9;
    SV_Target0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    SV_Target0.w = u_xlat0.z;
    return;
}

