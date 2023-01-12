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
	float _RenderViewportScaleFactor;
	vec4 _MainTex_TexelSize;
	vec2 _Jitter;
	vec4 _FinalBlendParameters;
	float _Sharpness;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _HistoryTex;
layout(set = 0, binding = 2) uniform mediump texture2D _CameraMotionVectorsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_HistoryTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_CameraMotionVectorsTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat7;
vec2 u_xlat12;
float u_xlat13;
float u_xlat18;
float u_xlat19;
    u_xlat0.xy = vs_TEXCOORD1.xy + (-_Jitter.xy);
    u_xlat0.xy = max(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat0.xy = min(u_xlat0.xy, vec2(_RenderViewportScaleFactor));
    u_xlat12.xy = (-_MainTex_TexelSize.xy) * vec2(0.5, 0.5) + u_xlat0.xy;
    u_xlat12.xy = max(u_xlat12.xy, vec2(0.0, 0.0));
    u_xlat12.xy = min(u_xlat12.xy, vec2(_RenderViewportScaleFactor));
    u_xlat1 = texture(sampler2D(_MainTex, sampler_LinearClamp), u_xlat12.xy);
    u_xlat12.xy = _MainTex_TexelSize.xy * vec2(0.5, 0.5) + u_xlat0.xy;
    u_xlat2 = texture(sampler2D(_MainTex, sampler_LinearClamp), u_xlat0.xy);
    u_xlat0.xy = max(u_xlat12.xy, vec2(0.0, 0.0));
    u_xlat0.xy = min(u_xlat0.xy, vec2(_RenderViewportScaleFactor));
    u_xlat0 = texture(sampler2D(_MainTex, sampler_LinearClamp), u_xlat0.xy);
    u_xlat3 = u_xlat0 + u_xlat1;
    u_xlat4 = u_xlat2 + u_xlat2;
    u_xlat3 = u_xlat3 * vec4(4.0, 4.0, 4.0, 4.0) + (-u_xlat4);
    u_xlat4 = (-u_xlat3) * vec4(0.166666999, 0.166666999, 0.166666999, 0.166666999) + u_xlat2;
    u_xlat4 = u_xlat4 * vec4(_Sharpness);
    u_xlat2 = u_xlat4 * vec4(2.71828198, 2.71828198, 2.71828198, 2.71828198) + u_xlat2;
    u_xlat2 = max(u_xlat2, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat2 = min(u_xlat2, vec4(65472.0, 65472.0, 65472.0, 65472.0));
    u_xlat3.xyz = u_xlat2.xyz + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.142857, 0.142857, 0.142857);
    u_xlat18 = dot(u_xlat3.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat19 = dot(u_xlat2.xyz, vec3(0.212672904, 0.715152204, 0.0721750036));
    u_xlat18 = u_xlat18 + (-u_xlat19);
    u_xlat3.xyz = min(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.xyz = max(u_xlat0.xyz, u_xlat1.xyz);
    u_xlat1.xy = texture(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), vs_TEXCOORD1.xy).xy;
    u_xlat13 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat1.xy = (-u_xlat1.xy) + vs_TEXCOORD1.xy;
    u_xlat1.xy = max(u_xlat1.xy, vec2(0.0, 0.0));
    u_xlat1.xy = min(u_xlat1.xy, vec2(_RenderViewportScaleFactor));
    u_xlat4 = texture(sampler2D(_HistoryTex, sampler_HistoryTex), u_xlat1.xy);
    u_xlat1.x = sqrt(u_xlat13);
    u_xlat7.x = u_xlat1.x * 100.0;
    u_xlat1.x = u_xlat1.x * _FinalBlendParameters.z;
    u_xlat7.x = min(u_xlat7.x, 1.0);
    u_xlat7.x = u_xlat7.x * -3.75 + 4.0;
    u_xlat3.xyz = (-u_xlat7.xxx) * abs(vec3(u_xlat18)) + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat7.xxx * abs(vec3(u_xlat18)) + u_xlat0.xyz;
    u_xlat7.xyz = (-u_xlat3.xyz) + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat3.xyz + u_xlat0.xyz;
    u_xlat7.xyz = u_xlat7.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat3.xyz = (-u_xlat0.xyz) * vec3(0.5, 0.5, 0.5) + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat5.xyz = u_xlat3.xyz + vec3(9.99999975e-05, 9.99999975e-05, 9.99999975e-05);
    u_xlat7.xyz = u_xlat7.xyz / u_xlat5.xyz;
    u_xlat18 = min(abs(u_xlat7.y), abs(u_xlat7.x));
    u_xlat18 = min(abs(u_xlat7.z), u_xlat18);
    u_xlat18 = min(u_xlat18, 1.0);
    u_xlat4.xyz = u_xlat3.xyz * vec3(u_xlat18) + u_xlat0.xyz;
    u_xlat0 = (-u_xlat2) + u_xlat4;
    u_xlat7.x = (-_FinalBlendParameters.x) + _FinalBlendParameters.y;
    u_xlat1.x = u_xlat1.x * u_xlat7.x + _FinalBlendParameters.x;
    u_xlat1.x = max(u_xlat1.x, _FinalBlendParameters.y);
    u_xlat1.x = min(u_xlat1.x, _FinalBlendParameters.x);
    u_xlat0 = u_xlat1.xxxx * u_xlat0 + u_xlat2;
    u_xlat0 = max(u_xlat0, vec4(0.0, 0.0, 0.0, 0.0));
    u_xlat0 = min(u_xlat0, vec4(65472.0, 65472.0, 65472.0, 65472.0));
    SV_Target0 = u_xlat0;
    SV_Target1 = u_xlat0;
    return;
}

