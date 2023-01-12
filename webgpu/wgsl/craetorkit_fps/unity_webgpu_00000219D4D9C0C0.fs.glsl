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
	mat4x4 unity_CameraProjection;
	vec4 _ProjectionParams;
	vec4 unity_OrthoParams;
	vec4 _ZBufferParams;
	vec4 _ScreenParams;
	float _RenderViewportScaleFactor;
	vec3 _FogParams;
	vec4 _AOParams;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraDepthNormalsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CameraDepthNormalsTexture;
void main()
{
vec3 u_xlat0;
int u_xlati0;
vec3 u_xlat1;
int u_xlati1;
vec3 u_xlat2;
vec3 u_xlat3;
bvec2 u_xlatb3;
vec2 u_xlat4;
vec2 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
vec2 u_xlat8;
float u_xlat9;
vec3 u_xlat10;
vec3 u_xlat14;
int u_xlati14;
bvec2 u_xlatb14;
vec2 u_xlat18;
ivec2 u_xlati18;
bvec2 u_xlatb18;
vec2 u_xlat22;
float u_xlat27;
bool u_xlatb27;
float u_xlat29;
bool u_xlatb29;
float u_xlat30;
int u_xlati30;
bool u_xlatb30;
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1.xyz = texture(sampler2D(_CameraDepthNormalsTexture, sampler_CameraDepthNormalsTexture), u_xlat0.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(3.55539989, 3.55539989, 0.0) + vec3(-1.77769995, -1.77769995, 1.0);
    u_xlat18.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat18.x = 2.0 / u_xlat18.x;
    u_xlat10.xy = u_xlat1.xy * u_xlat18.xx;
    u_xlat10.z = u_xlat18.x + -1.0;
    u_xlat2.xyz = u_xlat10.xyz * vec3(1.0, 1.0, -1.0);
    u_xlat0.x = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat0.xy, 0.0).x;
    u_xlat9 = (-unity_OrthoParams.w) + 1.0;
    u_xlat0.x = u_xlat0.x * _ZBufferParams.x;
    u_xlat18.x = (-unity_OrthoParams.w) * u_xlat0.x + 1.0;
    u_xlat0.x = u_xlat9 * u_xlat0.x + _ZBufferParams.y;
    u_xlat0.x = u_xlat18.x / u_xlat0.x;
    u_xlatb18.xy = lessThan(vs_TEXCOORD0.xyxy, vec4(0.0, 0.0, 0.0, 0.0)).xy;
    u_xlati18.x = int((uint(u_xlatb18.y) * 0xffffffffu) | (uint(u_xlatb18.x) * 0xffffffffu));
    u_xlatb3.xy = lessThan(vec4(1.0, 1.0, 0.0, 0.0), vs_TEXCOORD0.xyxx).xy;
    u_xlati18.y = int((uint(u_xlatb3.y) * 0xffffffffu) | (uint(u_xlatb3.x) * 0xffffffffu));
    u_xlati18.xy = ivec2(uvec2(u_xlati18.xy) & uvec2(1u, 1u));
    u_xlati18.x = u_xlati18.y + u_xlati18.x;
    u_xlat18.x = float(u_xlati18.x);
    u_xlatb27 = 9.99999975e-06>=u_xlat0.x;
    u_xlat27 = u_xlatb27 ? 1.0 : float(0.0);
    u_xlat18.x = u_xlat27 + u_xlat18.x;
    u_xlat18.x = u_xlat18.x * 100000000.0;
    u_xlat3.z = u_xlat0.x * _ProjectionParams.z + u_xlat18.x;
    u_xlat0.xz = vs_TEXCOORD0.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat0.xz = u_xlat0.xz + (-unity_CameraProjection[2].xy);
    u_xlat4.x = unity_CameraProjection[0].x;
    u_xlat4.y = unity_CameraProjection[1].y;
    u_xlat0.xz = u_xlat0.xz / u_xlat4.xy;
    u_xlat27 = (-u_xlat3.z) + 1.0;
    u_xlat27 = unity_OrthoParams.w * u_xlat27 + u_xlat3.z;
    u_xlat3.xy = vec2(u_xlat27) * u_xlat0.xz;
    u_xlati0 = int(_AOParams.w);
    u_xlat18.xy = vs_TEXCOORD0.xy * _AOParams.zz;
    u_xlat18.xy = u_xlat18.xy * _ScreenParams.xy;
    u_xlat18.xy = floor(u_xlat18.xy);
    u_xlat18.x = dot(vec2(0.0671105608, 0.00583714992), u_xlat18.xy);
    u_xlat18.x = fract(u_xlat18.x);
    u_xlat18.x = u_xlat18.x * 52.9829178;
    u_xlat18.x = fract(u_xlat18.x);
    u_xlat5.x = 12.9898005;
    u_xlat27 = 0.0;
    for(int u_xlati_loop_1 = 0 ; u_xlati_loop_1<u_xlati0 ; u_xlati_loop_1++)
    {
        u_xlat29 = float(u_xlati_loop_1);
        u_xlat5.y = vs_TEXCOORD0.x * 1.00000001e-10 + u_xlat29;
        u_xlat30 = u_xlat5.y * 78.2330017;
        u_xlat30 = sin(u_xlat30);
        u_xlat30 = u_xlat30 * 43758.5469;
        u_xlat30 = fract(u_xlat30);
        u_xlat30 = u_xlat18.x + u_xlat30;
        u_xlat30 = fract(u_xlat30);
        u_xlat6.z = u_xlat30 * 2.0 + -1.0;
        u_xlat30 = dot(u_xlat5.xy, vec2(1.0, 78.2330017));
        u_xlat30 = sin(u_xlat30);
        u_xlat30 = u_xlat30 * 43758.5469;
        u_xlat30 = fract(u_xlat30);
        u_xlat30 = u_xlat18.x + u_xlat30;
        u_xlat30 = u_xlat30 * 6.28318548;
        u_xlat7 = sin(u_xlat30);
        u_xlat8.x = cos(u_xlat30);
        u_xlat30 = (-u_xlat6.z) * u_xlat6.z + 1.0;
        u_xlat30 = sqrt(u_xlat30);
        u_xlat8.y = u_xlat7;
        u_xlat6.xy = vec2(u_xlat30) * u_xlat8.xy;
        u_xlat29 = u_xlat29 + 1.0;
        u_xlat29 = u_xlat29 / _AOParams.w;
        u_xlat29 = sqrt(u_xlat29);
        u_xlat29 = u_xlat29 * _AOParams.y;
        u_xlat14.xyz = vec3(u_xlat29) * u_xlat6.xyz;
        u_xlat29 = dot((-u_xlat2.xyz), u_xlat14.xyz);
        u_xlatb29 = u_xlat29>=0.0;
        u_xlat14.xyz = (bool(u_xlatb29)) ? (-u_xlat14.xyz) : u_xlat14.xyz;
        u_xlat14.xyz = u_xlat3.xyz + u_xlat14.xyz;
        u_xlat22.xy = u_xlat14.yy * unity_CameraProjection[1].xy;
        u_xlat22.xy = unity_CameraProjection[0].xy * u_xlat14.xx + u_xlat22.xy;
        u_xlat22.xy = unity_CameraProjection[2].xy * u_xlat14.zz + u_xlat22.xy;
        u_xlat29 = (-u_xlat14.z) + 1.0;
        u_xlat29 = unity_OrthoParams.w * u_xlat29 + u_xlat14.z;
        u_xlat22.xy = u_xlat22.xy / vec2(u_xlat29);
        u_xlat22.xy = u_xlat22.xy + vec2(1.0, 1.0);
        u_xlat14.xy = u_xlat22.xy * vec2(0.5, 0.5);
        u_xlat14.xy = clamp(u_xlat14.xy, 0.0, 1.0);
        u_xlat14.xy = u_xlat14.xy * vec2(_RenderViewportScaleFactor);
        u_xlat29 = textureLod(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat14.xy, 0.0).x;
        u_xlat29 = u_xlat29 * _ZBufferParams.x;
        u_xlat30 = (-unity_OrthoParams.w) * u_xlat29 + 1.0;
        u_xlat29 = u_xlat9 * u_xlat29 + _ZBufferParams.y;
        u_xlat29 = u_xlat30 / u_xlat29;
        u_xlatb14.xy = lessThan(u_xlat22.xyxx, vec4(0.0, 0.0, 0.0, 0.0)).xy;
        u_xlatb30 = u_xlatb14.y || u_xlatb14.x;
        u_xlati30 = u_xlatb30 ? 1 : int(0);
        u_xlatb14.xy = lessThan(vec4(2.0, 2.0, 0.0, 0.0), u_xlat22.xyxx).xy;
        u_xlatb14.x = u_xlatb14.y || u_xlatb14.x;
        u_xlati14 = u_xlatb14.x ? 1 : int(0);
        u_xlati30 = u_xlati30 + u_xlati14;
        u_xlat30 = float(u_xlati30);
        u_xlatb14.x = 9.99999975e-06>=u_xlat29;
        u_xlat14.x = u_xlatb14.x ? 1.0 : float(0.0);
        u_xlat30 = u_xlat30 + u_xlat14.x;
        u_xlat30 = u_xlat30 * 100000000.0;
        u_xlat6.z = u_xlat29 * _ProjectionParams.z + u_xlat30;
        u_xlat22.xy = u_xlat22.xy + (-unity_CameraProjection[2].xy);
        u_xlat22.xy = u_xlat22.xy + vec2(-1.0, -1.0);
        u_xlat22.xy = u_xlat22.xy / u_xlat4.xy;
        u_xlat29 = (-u_xlat6.z) + 1.0;
        u_xlat29 = unity_OrthoParams.w * u_xlat29 + u_xlat6.z;
        u_xlat6.xy = vec2(u_xlat29) * u_xlat22.xy;
        u_xlat14.xyz = (-u_xlat3.xyz) + u_xlat6.xyz;
        u_xlat29 = dot(u_xlat14.xyz, u_xlat2.xyz);
        u_xlat29 = (-u_xlat3.z) * 0.00200000009 + u_xlat29;
        u_xlat29 = max(u_xlat29, 0.0);
        u_xlat30 = dot(u_xlat14.xyz, u_xlat14.xyz);
        u_xlat30 = u_xlat30 + 9.99999975e-05;
        u_xlat29 = u_xlat29 / u_xlat30;
        u_xlat27 = u_xlat27 + u_xlat29;
    }
    u_xlat0.x = u_xlat27 * _AOParams.y;
    u_xlat0.x = u_xlat0.x * _AOParams.x;
    u_xlat0.x = u_xlat0.x / _AOParams.w;
    u_xlat0.x = max(abs(u_xlat0.x), 1.1920929e-07);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * 0.600000024;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat18.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD1.xy).x;
    u_xlat18.x = u_xlat18.x * _ZBufferParams.x;
    u_xlat27 = (-unity_OrthoParams.w) * u_xlat18.x + 1.0;
    u_xlat9 = u_xlat9 * u_xlat18.x + _ZBufferParams.y;
    u_xlat9 = u_xlat27 / u_xlat9;
    u_xlat9 = u_xlat9 * _ProjectionParams.z + (-_ProjectionParams.y);
    u_xlat9 = u_xlat9 * _FogParams.x;
    u_xlat9 = u_xlat9 * (-u_xlat9);
    u_xlat9 = exp2(u_xlat9);
    SV_Target0.x = u_xlat9 * u_xlat0.x;
    SV_Target0.yzw = u_xlat10.xyz * vec3(0.5, 0.5, -0.5) + vec3(0.5, 0.5, 0.5);
    return;
}

