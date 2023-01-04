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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	vec4 _LightPos;
	vec4 _LightColor;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 4) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 5) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 6) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 7) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec2 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
vec3 u_xlat8;
float u_xlat12;
float u_xlat13;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat21;
layout(set = 0, binding = 8) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 10) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 11) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
    u_xlat0.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD1.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat18 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
    u_xlat18 = _ZBufferParams.x * u_xlat18 + _ZBufferParams.y;
    u_xlat18 = float(1.0) / u_xlat18;
    u_xlat2.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat3.xyz = u_xlat2.yyy * unity_CameraToWorld[1].xyz;
    u_xlat2.xyw = unity_CameraToWorld[0].xyz * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat2.xyw = unity_CameraToWorld[2].xyz * u_xlat2.zzz + u_xlat2.xyw;
    u_xlat2.xyw = u_xlat2.xyw + unity_CameraToWorld[3].xyz;
    u_xlat3.xyz = u_xlat2.xyw + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.z) * u_xlat18 + u_xlat0.x;
    u_xlat0.x = unity_ShadowFadeCenterAndType.w * u_xlat0.x + u_xlat2.z;
    u_xlat0.x = u_xlat0.x * _LightShadowData.z + _LightShadowData.w;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat3 = u_xlat2.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
    u_xlat3 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat2.xxxx + u_xlat3;
    u_xlat3 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat2.wwww + u_xlat3;
    u_xlat3 = u_xlat3 + unity_WorldToShadow[3 / 4][3 % 4];
    u_xlat6.xyz = u_xlat3.xyz / u_xlat3.www;
    vec3 txVec0 = vec3(u_xlat6.xy,u_xlat6.z);
    u_xlat6.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
    u_xlat12 = (-_LightShadowData.x) + 1.0;
    u_xlat6.x = u_xlat6.x * u_xlat12 + _LightShadowData.x;
    u_xlat12 = (-u_xlat6.x) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat12 + u_xlat6.x;
    u_xlat6.xyz = u_xlat2.yyy * unity_WorldToLight[1].xyw;
    u_xlat6.xyz = unity_WorldToLight[0].xyw * u_xlat2.xxx + u_xlat6.xyz;
    u_xlat6.xyz = unity_WorldToLight[2].xyw * u_xlat2.www + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz + unity_WorldToLight[3].xyw;
    u_xlat6.xy = u_xlat6.xy / u_xlat6.zz;
    u_xlatb18 = u_xlat6.z<0.0;
    u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
    u_xlat6.x = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat6.xy, -8.0).w;
    u_xlat6.x = u_xlat18 * u_xlat6.x;
    u_xlat3.xyz = (-u_xlat2.xyw) + _LightPos.xyz;
    u_xlat2.xyz = u_xlat2.xyw + (-_WorldSpaceCameraPos.xyz);
    u_xlat12 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat18 = u_xlat12 * _LightPos.w;
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat18 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat18)).x;
    u_xlat6.x = u_xlat18 * u_xlat6.x;
    u_xlat0.x = u_xlat0.x * u_xlat6.x;
    u_xlat0.xyw = u_xlat0.xxx * _LightColor.xyz;
    u_xlat13 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat13 = inversesqrt(u_xlat13);
    u_xlat2.xyz = vec3(u_xlat13) * u_xlat2.xyz;
    u_xlat4.xyz = u_xlat3.xyz * vec3(u_xlat12) + (-u_xlat2.xyz);
    u_xlat3.xyz = vec3(u_xlat12) * u_xlat3.xyz;
    u_xlat12 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat12 = max(u_xlat12, 0.00100000005);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat4.xyz = vec3(u_xlat12) * u_xlat4.xyz;
    u_xlat5.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat5.xyz = u_xlat5.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat12 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat12 = inversesqrt(u_xlat12);
    u_xlat5.xyz = vec3(u_xlat12) * u_xlat5.xyz;
    u_xlat12 = dot(u_xlat5.xyz, u_xlat4.xyz);
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat13 = dot(u_xlat3.xyz, u_xlat4.xyz);
    u_xlat13 = clamp(u_xlat13, 0.0, 1.0);
    u_xlat19 = dot(u_xlat5.xyz, u_xlat3.xyz);
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat5.xyz, (-u_xlat2.xyz));
    u_xlat3 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat8.xyz = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).xyz;
    u_xlat4 = (-u_xlat3.wxyz) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat1.x = u_xlat4.x * u_xlat4.x;
    u_xlat1.x = max(u_xlat1.x, 0.00200000009);
    u_xlat7 = u_xlat1.x * u_xlat1.x;
    u_xlat21 = u_xlat12 * u_xlat7 + (-u_xlat12);
    u_xlat12 = u_xlat21 * u_xlat12 + 1.0;
    u_xlat12 = u_xlat12 * u_xlat12 + 1.00000001e-07;
    u_xlat7 = u_xlat7 * 0.318309873;
    u_xlat12 = u_xlat7 / u_xlat12;
    u_xlat7 = (-u_xlat1.x) + 1.0;
    u_xlat21 = abs(u_xlat2.x) * u_xlat7 + u_xlat1.x;
    u_xlat1.x = u_xlat19 * u_xlat7 + u_xlat1.x;
    u_xlat1.x = u_xlat1.x * abs(u_xlat2.x);
    u_xlat7 = -abs(u_xlat2.x) + 1.0;
    u_xlat1.x = u_xlat19 * u_xlat21 + u_xlat1.x;
    u_xlat1.x = u_xlat1.x + 9.99999975e-06;
    u_xlat1.x = 0.5 / u_xlat1.x;
    u_xlat12 = u_xlat12 * u_xlat1.x;
    u_xlat12 = u_xlat19 * u_xlat12;
    u_xlat12 = u_xlat12 * 3.14159274;
    u_xlat12 = max(u_xlat12, 0.0);
    u_xlat1.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlatb1 = u_xlat1.x!=0.0;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat12 = u_xlat12 * u_xlat1.x;
    u_xlat5.xyz = u_xlat0.xyw * vec3(u_xlat12);
    u_xlat12 = (-u_xlat13) + 1.0;
    u_xlat1.x = u_xlat13 * u_xlat13;
    u_xlat1.x = dot(u_xlat1.xx, u_xlat4.xx);
    u_xlat1.x = u_xlat1.x + -0.5;
    u_xlat13 = u_xlat12 * u_xlat12;
    u_xlat13 = u_xlat13 * u_xlat13;
    u_xlat12 = u_xlat12 * u_xlat13;
    u_xlat3.xyz = u_xlat4.yzw * vec3(u_xlat12) + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
    u_xlat12 = u_xlat7 * u_xlat7;
    u_xlat12 = u_xlat12 * u_xlat12;
    u_xlat12 = u_xlat7 * u_xlat12;
    u_xlat12 = u_xlat1.x * u_xlat12 + 1.0;
    u_xlat7 = (-u_xlat19) + 1.0;
    u_xlat13 = u_xlat7 * u_xlat7;
    u_xlat13 = u_xlat13 * u_xlat13;
    u_xlat7 = u_xlat7 * u_xlat13;
    u_xlat1.x = u_xlat1.x * u_xlat7 + 1.0;
    u_xlat12 = u_xlat12 * u_xlat1.x;
    u_xlat12 = u_xlat19 * u_xlat12;
    u_xlat0.xyz = vec3(u_xlat12) * u_xlat0.xyw;
    SV_Target0.xyz = u_xlat8.xyz * u_xlat0.xyz + u_xlat3.xyz;
    SV_Target0.w = 1.0;
    return;
}

