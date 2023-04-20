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
	mat4x4 unity_WorldToCamera;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraNormalsTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
bool u_xlatb3;
float u_xlat4;
layout(set = 0, binding = 2) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CameraNormalsTexture;
void main()
{
    u_xlat0.xyz = texture(sampler2D(_CameraNormalsTexture, sampler_CameraNormalsTexture), vs_TEXCOORD0.xy).xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToCamera[1].xyz;
    u_xlat0.xyw = unity_WorldToCamera[0].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToCamera[2].xyz * u_xlat0.zzz + u_xlat0.xyw;
    u_xlat4 = (-u_xlat0.z) + 1.0;
    u_xlat0.xy = u_xlat0.xy / vec2(u_xlat4);
    u_xlat0.xy = u_xlat0.xy * vec2(0.281262308, 0.281262308) + vec2(0.5, 0.5);
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy).x;
    u_xlat1.x = _ZBufferParams.x * u_xlat1.x + _ZBufferParams.y;
    u_xlat1.x = float(1.0) / u_xlat1.x;
    u_xlatb3 = u_xlat1.x<0.999984622;
    u_xlat1.xz = u_xlat1.xx * vec2(1.0, 255.0);
    u_xlat1.xz = fract(u_xlat1.xz);
    u_xlat0.z = (-u_xlat1.z) * 0.00392156886 + u_xlat1.x;
    u_xlat0.w = u_xlat1.z;
    SV_Target0 = (bool(u_xlatb3)) ? u_xlat0 : vec4(0.5, 0.5, 1.0, 1.0);
    return;
}

