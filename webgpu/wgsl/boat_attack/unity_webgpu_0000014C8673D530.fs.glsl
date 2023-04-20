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
	float _BlitMipLevel;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
bvec2 u_xlatb0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
vec2 u_xlat4;
vec2 u_xlat5;
vec2 u_xlat8;
vec2 u_xlat9;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearRepeat;
void main()
{
    u_xlatb0.x = vs_TEXCOORD0.x<0.0;
    if(u_xlatb0.x){
        u_xlatb0.xy = lessThan(vs_TEXCOORD0.yyyy, vec4(0.0, 1.0, 0.0, 0.0)).xy;
        u_xlat1.xyz = vs_TEXCOORD0.xyy + vec3(1.0, 1.0, -1.0);
        u_xlat8.xy = (-vs_TEXCOORD0.xy) + vec2(0.0, 1.0);
        u_xlat4.xy = (u_xlatb0.y) ? u_xlat8.xy : u_xlat1.xz;
        u_xlat0.xy = (u_xlatb0.x) ? u_xlat1.xy : u_xlat4.xy;
    } else {
        u_xlatb1.xyz = lessThan(vs_TEXCOORD0.xyyx, vec4(1.0, 0.0, 1.0, 0.0)).xyz;
        u_xlat2 = (-vs_TEXCOORD0.xyxy) + vec4(1.0, 2.0, 2.0, 1.0);
        u_xlat8.xy = (u_xlatb1.z) ? vs_TEXCOORD0.xy : u_xlat2.xy;
        u_xlat2.xy = (-vs_TEXCOORD0.xy) + vec2(1.0, 0.0);
        u_xlat8.xy = (u_xlatb1.y) ? u_xlat2.xy : u_xlat8.xy;
        u_xlat3.xyz = vs_TEXCOORD0.xyy + vec3(-1.0, 1.0, -1.0);
        u_xlat9.xy = (u_xlatb1.z) ? u_xlat2.zw : u_xlat3.xz;
        u_xlat5.xy = (u_xlatb1.y) ? u_xlat3.xy : u_xlat9.xy;
        u_xlat0.xy = (u_xlatb1.x) ? u_xlat8.xy : u_xlat5.xy;
    }
    SV_Target0 = textureLod(sampler2D(_BlitTexture, sampler_LinearRepeat), u_xlat0.xy, _BlitMipLevel);
    return;
}

