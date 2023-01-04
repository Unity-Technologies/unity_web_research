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
	vec4 _Metrics;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _BlendTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
float u_xlat6;
    u_xlat0.x = texture(sampler2D(_BlendTexture, sampler_LinearClamp), vs_TEXCOORD1.xy, _GlobalMipBias.x).w;
    u_xlat0.y = texture(sampler2D(_BlendTexture, sampler_LinearClamp), vs_TEXCOORD1.zw, _GlobalMipBias.x).y;
    u_xlat0.zw = texture(sampler2D(_BlendTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).zx;
    u_xlat1.x = dot(u_xlat0, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlatb1 = u_xlat1.x<9.99999975e-06;
    if(u_xlatb1){
        SV_Target0 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, 0.0);
    } else {
        u_xlat1.xy = max(u_xlat0.zw, u_xlat0.xy);
        u_xlatb1 = u_xlat1.y<u_xlat1.x;
        u_xlat2.xz = bool(u_xlatb1) ? u_xlat0.xz : vec2(0.0, 0.0);
        u_xlat2.yw = (bool(u_xlatb1)) ? vec2(0.0, 0.0) : u_xlat0.yw;
        u_xlat0.x = (u_xlatb1) ? u_xlat0.x : u_xlat0.y;
        u_xlat0.y = (u_xlatb1) ? u_xlat0.z : u_xlat0.w;
        u_xlat6 = dot(u_xlat0.xy, vec2(1.0, 1.0));
        u_xlat0.xy = u_xlat0.xy / vec2(u_xlat6);
        u_xlat1 = _Metrics.xyxy * vec4(1.0, 1.0, -1.0, -1.0);
        u_xlat1 = u_xlat2 * u_xlat1 + vs_TEXCOORD0.xyxy;
        u_xlat2 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, 0.0);
        u_xlat1 = textureLod(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, 0.0);
        u_xlat1 = u_xlat0.yyyy * u_xlat1;
        SV_Target0 = u_xlat0.xxxx * u_xlat2 + u_xlat1;
    }
    return;
}

