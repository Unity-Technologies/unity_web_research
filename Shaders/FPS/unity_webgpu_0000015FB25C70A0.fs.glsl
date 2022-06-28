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
	vec4 _ZBufferParams;
	mat4x4 _InverseViewMatrix;
	mat4x4 _InverseProjectionMatrix;
	vec4 _Params;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraReflectionsTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 5) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 6) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 7) uniform mediump texture2D _Resolve;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
uvec4 u_xlatu0;
bool u_xlatb0;
float u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat8;
float u_xlat9;
float u_xlat10;
vec2 u_xlat11;
float u_xlat13;
float u_xlat15;
float u_xlat17;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_CameraReflectionsTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Resolve;
void main()
{
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.x = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD1.xy, 0.0).x;
    u_xlat0.x = _ZBufferParams.x * u_xlat0.x + _ZBufferParams.y;
    u_xlat0.x = float(1.0) / u_xlat0.x;
    u_xlatb0 = 0.999000013<u_xlat0.x;
    if(u_xlatb0){
        SV_Target0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
        return;
    }
    u_xlatu0.xy =  uvec2(ivec2(hlslcc_FragCoord.xy));
    u_xlatu0.z = uint(0u);
    u_xlatu0.w = uint(0u);
    u_xlat1 = texelFetch(_CameraGBufferTexture0, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).w;
    u_xlat2 = texelFetch(_CameraGBufferTexture1, ivec2(u_xlatu0.xy), int(u_xlatu0.w));
    u_xlat0.xyz = texelFetch(_CameraGBufferTexture2, ivec2(u_xlatu0.xy), int(u_xlatu0.w)).xyz;
    u_xlat15 = max(u_xlat2.y, u_xlat2.x);
    u_xlat15 = max(u_xlat2.z, u_xlat15);
    u_xlat15 = (-u_xlat15) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat6.x = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy, 0.0).x;
    u_xlat11.xy = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat3 = u_xlat11.yyyy * _InverseProjectionMatrix[1];
    u_xlat3 = _InverseProjectionMatrix[0] * u_xlat11.xxxx + u_xlat3;
    u_xlat3 = _InverseProjectionMatrix[2] * u_xlat6.xxxx + u_xlat3;
    u_xlat3 = u_xlat3 + _InverseProjectionMatrix[3];
    u_xlat6.xyz = u_xlat3.xyz / u_xlat3.www;
    u_xlat3.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat3.x = inversesqrt(u_xlat3.x);
    u_xlat6.xyz = u_xlat6.xyz * u_xlat3.xxx;
    u_xlat3.xyz = u_xlat6.yyy * _InverseViewMatrix[1].xyz;
    u_xlat3.xyz = _InverseViewMatrix[0].xyz * u_xlat6.xxx + u_xlat3.xyz;
    u_xlat6.xyz = _InverseViewMatrix[2].xyz * u_xlat6.zzz + u_xlat3.xyz;
    u_xlat3.x = (-u_xlat2.w) + 1.0;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat8 = _Params.w + -1.0;
    u_xlat8 = u_xlat3.x * u_xlat8 + 1.0;
    u_xlat4 = textureLod(sampler2D(_Resolve, sampler_Resolve), vs_TEXCOORD1.xy, u_xlat8);
    u_xlat8 = dot((-u_xlat6.xyz), u_xlat0.xyz);
    u_xlat13 = u_xlat8 + u_xlat8;
    u_xlat0.xyz = u_xlat0.xyz * (-vec3(u_xlat13)) + (-u_xlat6.xyz);
    u_xlat13 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat13 = inversesqrt(u_xlat13);
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat13);
    u_xlat0.x = dot((-u_xlat6.xyz), u_xlat0.xyz);
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat5.x = max(u_xlat3.x, 0.00200000009);
    u_xlat5.x = u_xlat5.x * u_xlat5.x + 1.0;
    u_xlat5.x = float(1.0) / u_xlat5.x;
    u_xlat10 = (-u_xlat15) + u_xlat2.w;
    u_xlat10 = u_xlat10 + 1.0;
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat6.xyz = u_xlat4.xyz * u_xlat5.xxx;
    u_xlat5.x = -abs(u_xlat8) + 1.0;
    u_xlat15 = u_xlat5.x * u_xlat5.x;
    u_xlat15 = u_xlat15 * u_xlat15;
    u_xlat5.x = u_xlat5.x * u_xlat15;
    u_xlat3.xyz = (-u_xlat2.xyz) + vec3(u_xlat10);
    u_xlat5.xyz = u_xlat5.xxx * u_xlat3.xyz + u_xlat2.xyz;
    u_xlat2.xyz = texture(sampler2D(_CameraReflectionsTexture, sampler_CameraReflectionsTexture), vs_TEXCOORD1.xy).xyz;
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy);
    u_xlat3.xyz = (-u_xlat2.xyz) + u_xlat3.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat17 = u_xlat4.w * u_xlat4.w;
    u_xlat4.x = u_xlat17 * 3.0;
    u_xlat17 = u_xlat17 * 3.0 + -0.5;
    u_xlat17 = u_xlat17 + u_xlat17;
    u_xlat17 = clamp(u_xlat17, 0.0, 1.0);
    u_xlat9 = u_xlat17 * -2.0 + 3.0;
    u_xlat17 = u_xlat17 * u_xlat17;
    u_xlat17 = u_xlat17 * u_xlat9;
    u_xlat17 = u_xlat17 * u_xlat4.x;
    u_xlat17 = u_xlat17 * _Params.y;
    u_xlat17 = clamp(u_xlat17, 0.0, 1.0);
    u_xlat17 = (-u_xlat17) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat17;
    u_xlat5.xyz = u_xlat6.xyz * u_xlat5.xyz + (-u_xlat2.xyz);
    u_xlat0.xyz = u_xlat0.xxx * u_xlat5.xyz + u_xlat2.xyz;
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat1) + u_xlat3.xyz;
    SV_Target0.w = u_xlat3.w;
    return;
}

