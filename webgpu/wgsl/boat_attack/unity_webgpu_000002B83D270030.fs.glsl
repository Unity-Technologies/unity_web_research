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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	vec4 _LightProjectionParams;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	vec4 _LightPos;
	vec4 _LightColor;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 2) uniform highp textureCube _LightTexture0;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 4) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 5) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 6) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 7) uniform highp textureCube _ShadowMapTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
float u_xlat12;
float u_xlat13;
float u_xlat18;
float u_xlat19;
bool u_xlatb19;
layout(set = 0, binding = 8) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 10) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 11) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 12) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_CameraGBufferTexture2;
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
    u_xlat6.xyz = u_xlat2.xyw + (-_LightPos.xyz);
    u_xlat13 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat19 = inversesqrt(u_xlat13);
    u_xlat3.xyz = u_xlat6.xyz * vec3(u_xlat19);
    u_xlat13 = u_xlat13 * _LightPos.w;
    u_xlat13 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat13)).x;
    u_xlat0.x = u_xlat0.x * _LightShadowData.z + _LightShadowData.w;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb19 = u_xlat0.x<0.99000001;
    if(u_xlatb19){
        u_xlat19 = max(abs(u_xlat6.y), abs(u_xlat6.x));
        u_xlat19 = max(abs(u_xlat6.z), u_xlat19);
        u_xlat19 = u_xlat19 + (-_LightProjectionParams.z);
        u_xlat19 = max(u_xlat19, 9.99999975e-06);
        u_xlat19 = u_xlat19 * _LightProjectionParams.w;
        u_xlat19 = _LightProjectionParams.y / u_xlat19;
        u_xlat19 = u_xlat19 + (-_LightProjectionParams.x);
        u_xlat19 = (-u_xlat19) + 1.0;
        u_xlat4.xyz = u_xlat6.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
        vec4 txVec0 = vec4(u_xlat4.xyz,u_xlat19);
        u_xlat4.x = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0);
        u_xlat5.xyz = u_xlat6.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
        vec4 txVec1 = vec4(u_xlat5.xyz,u_xlat19);
        u_xlat4.y = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1);
        u_xlat5.xyz = u_xlat6.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
        vec4 txVec2 = vec4(u_xlat5.xyz,u_xlat19);
        u_xlat4.z = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2);
        u_xlat6.xyz = u_xlat6.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
        vec4 txVec3 = vec4(u_xlat6.xyz,u_xlat19);
        u_xlat4.w = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3);
        u_xlat6.x = dot(u_xlat4, vec4(0.25, 0.25, 0.25, 0.25));
        u_xlat12 = (-_LightShadowData.x) + 1.0;
        u_xlat6.x = u_xlat6.x * u_xlat12 + _LightShadowData.x;
    } else {
        u_xlat6.x = 1.0;
    }
    u_xlat12 = (-u_xlat6.x) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat12 + u_xlat6.x;
    u_xlat0.x = u_xlat0.x * u_xlat13;
    u_xlat6.xyz = u_xlat2.yyy * unity_WorldToLight[1].xyz;
    u_xlat6.xyz = unity_WorldToLight[0].xyz * u_xlat2.xxx + u_xlat6.xyz;
    u_xlat6.xyz = unity_WorldToLight[2].xyz * u_xlat2.www + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz + unity_WorldToLight[3].xyz;
    u_xlat6.x = texture(samplerCube(_LightTexture0, sampler_LightTexture0), u_xlat6.xyz, -8.0).w;
    u_xlat0.x = u_xlat6.x * u_xlat0.x;
    u_xlat0.xyz = u_xlat0.xxx * _LightColor.xyz;
    u_xlat4.xyz = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).xyz;
    u_xlat5 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat18 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat2.xyw + (-_WorldSpaceCameraPos.xyz);
    u_xlat18 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat2.xyz = vec3(u_xlat18) * u_xlat2.xyz;
    u_xlat18 = dot((-u_xlat2.xyz), u_xlat1.xyz);
    u_xlat18 = u_xlat18 + u_xlat18;
    u_xlat2.xyz = u_xlat1.xyz * (-vec3(u_xlat18)) + (-u_xlat2.xyz);
    u_xlat18 = dot(u_xlat1.xyz, (-u_xlat3.xyz));
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat1.x = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat1.y = (-u_xlat5.w) + 1.0;
    u_xlat1.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat1.xy).x;
    u_xlat1.x = u_xlat1.x * 16.0;
    u_xlat1.xyz = u_xlat1.xxx * u_xlat5.xyz + u_xlat4.xyz;
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat0.w = 1.0;
    SV_Target0 = exp2((-u_xlat0));
    return;
}
