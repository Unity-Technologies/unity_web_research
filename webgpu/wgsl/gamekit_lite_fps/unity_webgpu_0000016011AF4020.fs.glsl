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
	mat4x4 unity_CameraProjection;
	mat4x4 unity_WorldToCamera;
	vec4 _ProjectionParams;
	vec4 unity_OrthoParams;
	vec4 _ZBufferParams;
	vec4 _ScreenParams;
	float _RenderViewportScaleFactor;
	vec3 _FogParams;
	vec4 _AOParams;
};
layout(set = 0, binding = 1) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 2) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
int u_xlati0;
vec4 u_xlat1;
vec3 u_xlat2;
bvec2 u_xlatb2;
vec2 u_xlat3;
vec2 u_xlat4;
vec3 u_xlat5;
float u_xlat6;
vec2 u_xlat7;
float u_xlat8;
vec3 u_xlat12;
ivec2 u_xlati12;
bvec2 u_xlatb12;
vec2 u_xlat16;
ivec2 u_xlati16;
bvec2 u_xlatb16;
vec2 u_xlat19;
float u_xlat20;
bvec2 u_xlatb20;
float u_xlat24;
bool u_xlatb24;
int u_xlati25;
float u_xlat26;
bool u_xlatb26;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CameraGBufferTexture2;
layout(set = 0, binding = 4) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat0.xy).xyz;
    u_xlat16.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlatb16.x = u_xlat16.x!=0.0;
    u_xlat16.x = (u_xlatb16.x) ? -1.0 : -0.0;
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + u_xlat16.xxx;
    u_xlat2.xyz = u_xlat1.yyy * unity_WorldToCamera[1].xyz;
    u_xlat1.xyw = unity_WorldToCamera[0].xyz * u_xlat1.xxx + u_xlat2.xyz;
    u_xlat1.xyz = unity_WorldToCamera[2].xyz * u_xlat1.zzz + u_xlat1.xyw;
    u_xlat0.x = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat0.xy, 0.0).x;
    u_xlat8 = (-unity_OrthoParams.w) + 1.0;
    u_xlat0.x = u_xlat0.x * _ZBufferParams.x;
    u_xlat16.x = (-unity_OrthoParams.w) * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat8 * u_xlat0.x + _ZBufferParams.y;
    u_xlat0.x = u_xlat16.x / u_xlat0.x;
    u_xlatb16.xy = lessThan(vs_TEXCOORD0.xyxy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    u_xlati16.x = int((uint(u_xlatb16.y) * 0xffffffffu) | (uint(u_xlatb16.x) * 0xffffffffu));
    u_xlatb2.xy = lessThan(vec4(1.0, 1.0, 0.0, 0.0), vs_TEXCOORD0.xyxx).xy;
    u_xlati16.y = int((uint(u_xlatb2.y) * 0xffffffffu) | (uint(u_xlatb2.x) * 0xffffffffu));
    u_xlati16.xy = ivec2(uvec2(u_xlati16.xy) & uvec2(1u, 1u));
    u_xlati16.x = u_xlati16.y + u_xlati16.x;
    u_xlat16.x = float(u_xlati16.x);
    u_xlatb24 = 9.99999975e-06>=u_xlat0.x;
    u_xlat24 = u_xlatb24 ? 1.0 : float(0.0);
    u_xlat16.x = u_xlat24 + u_xlat16.x;
    u_xlat16.x = u_xlat16.x * 100000000.0;
    u_xlat2.z = u_xlat0.x * _ProjectionParams.z + u_xlat16.x;
    u_xlat0.xz = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xz = u_xlat0.xz + (-unity_CameraProjection[2].xy);
    u_xlat3.x = unity_CameraProjection[0].x;
    u_xlat3.y = unity_CameraProjection[1].y;
    u_xlat0.xz = u_xlat0.xz / u_xlat3.xy;
    u_xlat24 = (-u_xlat2.z) + 1.0;
    u_xlat24 = unity_OrthoParams.w * u_xlat24 + u_xlat2.z;
    u_xlat2.xy = vec2(u_xlat24) * u_xlat0.xz;
    u_xlati0 = int(_AOParams.w);
    u_xlat16.xy = vs_TEXCOORD0.xy * _AOParams.zz;
    u_xlat16.xy = u_xlat16.xy * _ScreenParams.xy;
    u_xlat16.xy = floor(u_xlat16.xy);
    u_xlat16.x = dot(vec2(0.0671105608, 0.00583714992), u_xlat16.xy);
    u_xlat16.x = fract(u_xlat16.x);
    u_xlat16.x = u_xlat16.x * 52.9829178;
    u_xlat16.x = fract(u_xlat16.x);
    u_xlat4.x = 12.9898005;
    u_xlat24 = 0.0;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati0 ; u_xlati_loop_1++)
    {
        u_xlat26 = float(u_xlati_loop_1);
        u_xlat4.y = vs_TEXCOORD0.x * 1.00000001e-10 + u_xlat26;
        u_xlat19.x = u_xlat4.y * 78.2330017;
        u_xlat19.x = sin(u_xlat19.x);
        u_xlat19.x = u_xlat19.x * 43758.5469;
        u_xlat19.x = fract(u_xlat19.x);
        u_xlat19.x = u_xlat16.x + u_xlat19.x;
        u_xlat19.x = fract(u_xlat19.x);
        u_xlat5.z = u_xlat19.x * 2.0 + -1.0;
        u_xlat19.x = dot(u_xlat4.xy, vec2(1.0, 78.2330017));
        u_xlat19.x = sin(u_xlat19.x);
        u_xlat19.x = u_xlat19.x * 43758.5469;
        u_xlat19.x = fract(u_xlat19.x);
        u_xlat19.x = u_xlat16.x + u_xlat19.x;
        u_xlat19.x = u_xlat19.x * 6.28318548;
        u_xlat6 = sin(u_xlat19.x);
        u_xlat7.x = cos(u_xlat19.x);
        u_xlat19.x = (-u_xlat5.z) * u_xlat5.z + 1.0;
        u_xlat19.x = sqrt(u_xlat19.x);
        u_xlat7.y = u_xlat6;
        u_xlat5.xy = u_xlat19.xx * u_xlat7.xy;
        u_xlat26 = u_xlat26 + 1.0;
        u_xlat26 = u_xlat26 / _AOParams.w;
        u_xlat26 = sqrt(u_xlat26);
        u_xlat26 = u_xlat26 * _AOParams.y;
        u_xlat12.xyz = vec3(u_xlat26) * u_xlat5.xyz;
        u_xlat26 = dot((-u_xlat1.xyz), u_xlat12.xyz);
        u_xlatb26 = u_xlat26>=0.0;
        u_xlat12.xyz = (bool(u_xlatb26)) ? (-u_xlat12.xyz) : u_xlat12.xyz;
        u_xlat12.xyz = u_xlat2.xyz + u_xlat12.xyz;
        u_xlat19.xy = u_xlat12.yy * unity_CameraProjection[1].xy;
        u_xlat19.xy = unity_CameraProjection[0].xy * u_xlat12.xx + u_xlat19.xy;
        u_xlat19.xy = unity_CameraProjection[2].xy * u_xlat12.zz + u_xlat19.xy;
        u_xlat26 = (-u_xlat12.z) + 1.0;
        u_xlat26 = unity_OrthoParams.w * u_xlat26 + u_xlat12.z;
        u_xlat19.xy = u_xlat19.xy / vec2(u_xlat26);
        u_xlat19.xy = u_xlat19.xy + vec2(1.0, 1.0);
        u_xlat12.xy = u_xlat19.xy * vec2(0.5, 0.5);
        u_xlat12.xy = clamp(u_xlat12.xy, 0.0, 1.0);
        u_xlat12.xy = u_xlat12.xy * vec2(_RenderViewportScaleFactor);
        u_xlat26 = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat12.xy, 0.0).x;
        u_xlat26 = u_xlat26 * _ZBufferParams.x;
        u_xlat12.x = (-unity_OrthoParams.w) * u_xlat26 + 1.0;
        u_xlat26 = u_xlat8 * u_xlat26 + _ZBufferParams.y;
        u_xlat26 = u_xlat12.x / u_xlat26;
        u_xlatb12.xy = lessThan(u_xlat19.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy;
        u_xlati12.x = int((uint(u_xlatb12.y) * 0xffffffffu) | (uint(u_xlatb12.x) * 0xffffffffu));
        u_xlatb20.xy = lessThan(vec4(2.0, 2.0, 2.0, 2.0), u_xlat19.xyxy).xy;
        u_xlati12.y = int((uint(u_xlatb20.y) * 0xffffffffu) | (uint(u_xlatb20.x) * 0xffffffffu));
        u_xlati12.xy = ivec2(uvec2(u_xlati12.xy) & uvec2(1u, 1u));
        u_xlati12.x = u_xlati12.y + u_xlati12.x;
        u_xlat12.x = float(u_xlati12.x);
        u_xlatb20.x = 9.99999975e-06>=u_xlat26;
        u_xlat20 = u_xlatb20.x ? 1.0 : float(0.0);
        u_xlat12.x = u_xlat20 + u_xlat12.x;
        u_xlat12.x = u_xlat12.x * 100000000.0;
        u_xlat5.z = u_xlat26 * _ProjectionParams.z + u_xlat12.x;
        u_xlat19.xy = u_xlat19.xy + (-unity_CameraProjection[2].xy);
        u_xlat19.xy = u_xlat19.xy + vec2(-1.0, -1.0);
        u_xlat19.xy = u_xlat19.xy / u_xlat3.xy;
        u_xlat26 = (-u_xlat5.z) + 1.0;
        u_xlat26 = unity_OrthoParams.w * u_xlat26 + u_xlat5.z;
        u_xlat5.xy = vec2(u_xlat26) * u_xlat19.xy;
        u_xlat12.xyz = (-u_xlat2.xyz) + u_xlat5.xyz;
        u_xlat26 = dot(u_xlat12.xyz, u_xlat1.xyz);
        u_xlat26 = (-u_xlat2.z) * 0.00200000009 + u_xlat26;
        u_xlat26 = max(u_xlat26, 0.0);
        u_xlat19.x = dot(u_xlat12.xyz, u_xlat12.xyz);
        u_xlat19.x = u_xlat19.x + 9.99999975e-05;
        u_xlat26 = u_xlat26 / u_xlat19.x;
        u_xlat24 = u_xlat24 + u_xlat26;
    }
    u_xlat0.x = u_xlat24 * _AOParams.y;
    u_xlat0.x = u_xlat0.x * _AOParams.x;
    u_xlat0.x = u_xlat0.x / _AOParams.w;
    u_xlat0.x = max(abs(u_xlat0.x), 1.1920929e-07);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * 0.600000024;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat16.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD1.xy).x;
    u_xlat16.x = u_xlat16.x * _ZBufferParams.x;
    u_xlat24 = (-unity_OrthoParams.w) * u_xlat16.x + 1.0;
    u_xlat8 = u_xlat8 * u_xlat16.x + _ZBufferParams.y;
    u_xlat8 = u_xlat24 / u_xlat8;
    u_xlat8 = u_xlat8 * _ProjectionParams.z + (-_ProjectionParams.y);
    u_xlat8 = u_xlat8 * _FogParams.x;
    u_xlat8 = u_xlat8 * (-u_xlat8);
    u_xlat8 = exp2(u_xlat8);
    SV_Target0.x = u_xlat8 * u_xlat0.x;
    SV_Target0.yzw = u_xlat1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    return;
}

