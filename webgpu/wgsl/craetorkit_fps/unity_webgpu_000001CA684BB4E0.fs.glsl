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
	vec4 _ZBufferParams;
	vec4 _Color;
	vec4 _SoftParticleFadeParams;
	vec4 _CameraFadeParams;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bvec2 u_xlatb1;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD2.xy);
    u_xlat1 = (-u_xlat0) + u_xlat1;
    u_xlat0 = vs_TEXCOORD2.zzzz * u_xlat1 + u_xlat0;
    u_xlat0 = u_xlat0 * _Color;
    u_xlat0 = u_xlat0.wxyz * vs_COLOR0.wxyz;
    u_xlatb1.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), _SoftParticleFadeParams.xyxx).xy;
    u_xlatb1.x = u_xlatb1.y || u_xlatb1.x;
    if(u_xlatb1.x){
        u_xlat1.xy = vs_TEXCOORD3.xy / vs_TEXCOORD3.ww;
        u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
        u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
        u_xlat1.x = float(1.0) / u_xlat1.x;
        u_xlat1.x = u_xlat1.x + (-_SoftParticleFadeParams.x);
        u_xlat1.x = u_xlat1.x + (-vs_TEXCOORD3.z);
        u_xlat1.x = u_xlat1.x * _SoftParticleFadeParams.y;
        u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
        u_xlat0.x = u_xlat0.x * u_xlat1.x;
    }
    u_xlat1.x = vs_TEXCOORD3.z + (-_CameraFadeParams.x);
    u_xlat1.x = u_xlat1.x * _CameraFadeParams.y;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    SV_Target0.w = u_xlat0.x * u_xlat1.x;
    SV_Target0.xyz = u_xlat0.yzw;
    return;
}

