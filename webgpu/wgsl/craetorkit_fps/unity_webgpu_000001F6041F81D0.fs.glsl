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
	vec4 unity_FogColor;
	vec4 _Color;
	vec4 _SoftParticleFadeParams;
	vec4 _CameraFadeParams;
	int _DstBlend;
	float _DistortionStrengthScaled;
	float _DistortionBlend;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform highp texture2D _GrabTexture;
layout(location = 0) in highp vec4 vs_COLOR0;
layout(location = 1) in highp float vs_TEXCOORD0;
layout(location = 2) in highp vec2 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 6) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 7) uniform highp  sampler sampler_GrabTexture;
void main()
{
vec4 u_xlat0;
float u_xlat1;
vec3 u_xlat2;
vec2 u_xlat4;
bvec2 u_xlatb4;
vec2 u_xlat7;
float u_xlat9;
bool u_xlatb9;
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat0 = u_xlat0 * _Color;
    u_xlat1 = u_xlat0.w * vs_COLOR0.w;
    u_xlatb4.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), _SoftParticleFadeParams.xyxx).xy;
    u_xlatb9 = u_xlatb4.y || u_xlatb4.x;
    if(u_xlatb9){
        u_xlat4.xy = vs_TEXCOORD3.xy / vs_TEXCOORD3.ww;
        u_xlat9 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat4.xy).x;
        u_xlat9 = _ZBufferParams.z * u_xlat9 + _ZBufferParams.w;
        u_xlat9 = float(1.0) / u_xlat9;
        u_xlat9 = u_xlat9 + (-_SoftParticleFadeParams.x);
        u_xlat9 = u_xlat9 + (-vs_TEXCOORD3.z);
        u_xlat9 = u_xlat9 * _SoftParticleFadeParams.y;
        u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
        u_xlat1 = u_xlat9 * u_xlat1;
    }
    u_xlat9 = vs_TEXCOORD3.z + (-_CameraFadeParams.x);
    u_xlat9 = u_xlat9 * _CameraFadeParams.y;
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat4.x = u_xlat9 * u_xlat1;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD1.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat7.x = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat7.x = min(u_xlat7.x, 1.0);
    u_xlat7.x = (-u_xlat7.x) + 1.0;
    u_xlat2.z = sqrt(u_xlat7.x);
    u_xlat7.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat7.x = inversesqrt(u_xlat7.x);
    u_xlat7.xy = u_xlat7.xx * u_xlat2.xy;
    u_xlat7.xy = u_xlat7.xy * vec2(vec2(_DistortionStrengthScaled, _DistortionStrengthScaled));
    u_xlat7.xy = u_xlat7.xy * u_xlat4.xx + vs_TEXCOORD4.xy;
    u_xlat7.xy = u_xlat7.xy / vs_TEXCOORD4.ww;
    u_xlat2.xyz = texture(sampler2D(_GrabTexture, sampler_GrabTexture), u_xlat7.xy).xyz;
    u_xlat9 = u_xlat1 * u_xlat9 + (-_DistortionBlend);
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * vs_COLOR0.xyz + (-u_xlat2.xyz);
    u_xlat0.xyz = vec3(u_xlat9) * u_xlat0.xyz + u_xlat2.xyz;
    u_xlatb9 = _DstBlend==1;
    u_xlat1 = vs_TEXCOORD0;
    u_xlat1 = clamp(u_xlat1, 0.0, 1.0);
    u_xlat2.xyz = u_xlat0.xyz * vec3(u_xlat1);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    u_xlat0.xyz = vec3(u_xlat1) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.xyz = (bool(u_xlatb9)) ? u_xlat2.xyz : u_xlat0.xyz;
    SV_Target0.w = u_xlat4.x;
    return;
}

