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
	vec4 _BokehKernel[42];
	vec4 _BokehConstants;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
int u_xlati0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat7;
bool u_xlatb7;
float u_xlat8;
float u_xlat14;
float u_xlat15;
bool u_xlatb15;
float u_xlat21;
bool u_xlatb21;
float u_xlat27;
bool u_xlatb27;
    u_xlat0 = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.x = max(u_xlat0.w, 0.0);
    u_xlat1.x = u_xlat1.x + _BokehConstants.y;
    u_xlat1.y = (-u_xlat0.w) + _BokehConstants.y;
    u_xlat1.xy = u_xlat1.xy / _BokehConstants.yy;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlatb15 = (-u_xlat0.w)>=_BokehConstants.x;
    u_xlat15 = u_xlatb15 ? 1.0 : float(0.0);
    u_xlat8 = u_xlat15 * u_xlat1.y;
    u_xlat2.xyz = u_xlat0.xyz;
    u_xlat2.w = 1.0;
    u_xlat3 = u_xlat1.xxxx * u_xlat2;
    u_xlat1 = vec4(u_xlat8) * u_xlat2;
    u_xlat2.w = 1.0;
    u_xlat4 = u_xlat3;
    u_xlat5 = u_xlat1;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<42 ; u_xlati_loop_1++)
    {
        u_xlat7.xy = vs_TEXCOORD0.xy + _BokehKernel[u_xlati_loop_1].wy;
        u_xlat6 = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat7.xy, _GlobalMipBias.x);
        u_xlat7.x = min(u_xlat0.w, u_xlat6.w);
        u_xlat7.x = max(u_xlat7.x, 0.0);
        u_xlat7.x = u_xlat7.x + (-_BokehKernel[u_xlati_loop_1].z);
        u_xlat7.x = u_xlat7.x + _BokehConstants.y;
        u_xlat14 = (-u_xlat6.w) + (-_BokehKernel[u_xlati_loop_1].z);
        u_xlat7.y = u_xlat14 + _BokehConstants.y;
        u_xlat7.xy = u_xlat7.xy / _BokehConstants.yy;
        u_xlat7.xy = clamp(u_xlat7.xy, 0.0, 1.0);
        u_xlatb27 = (-u_xlat6.w)>=_BokehConstants.x;
        u_xlat27 = u_xlatb27 ? 1.0 : float(0.0);
        u_xlat14 = u_xlat7.y * u_xlat27;
        u_xlat2.xyz = u_xlat6.xyz;
        u_xlat4 = u_xlat2 * u_xlat7.xxxx + u_xlat4;
        u_xlat5 = u_xlat2 * vec4(u_xlat14) + u_xlat5;
    }
    u_xlatb0 = u_xlat4.w==0.0;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat0.x = u_xlat0.x + u_xlat4.w;
    u_xlat0.xyz = u_xlat4.xyz / u_xlat0.xxx;
    u_xlatb21 = u_xlat5.w==0.0;
    u_xlat21 = u_xlatb21 ? 1.0 : float(0.0);
    u_xlat21 = u_xlat21 + u_xlat5.w;
    u_xlat1.xyz = u_xlat5.xyz / vec3(u_xlat21);
    u_xlat21 = u_xlat5.w * 0.0730602965;
    u_xlat21 = min(u_xlat21, 1.0);
    u_xlat1.xyz = (-u_xlat0.xyz) + u_xlat1.xyz;
    SV_Target0.xyz = vec3(u_xlat21) * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = u_xlat21;
    return;
}

