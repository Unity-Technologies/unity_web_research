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
	float _Phase;
	vec3 _NoiseParameters;
};
layout(location = 0) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec2 u_xlat7;
float u_xlat9;
float u_xlat10;
vec3 u_xlat11;
vec2 u_xlat14;
vec2 u_xlat16;
float u_xlat21;
float u_xlat23;
float u_xlat25;
    u_xlat0.y = fract(_Phase);
    u_xlat1 = vs_TEXCOORD1.xyxy * vec4(128.0, 128.0, 128.0, 128.0) + u_xlat0.yyyy;
    u_xlat2 = u_xlat1.zwzw + vec4(-2.0, -2.0, -1.0, -2.0);
    u_xlat2.x = dot(u_xlat2.xy, _NoiseParameters.xxyz.yz);
    u_xlat2.y = dot(u_xlat2.zw, _NoiseParameters.xxyz.yz);
    u_xlat2.xy = sin(u_xlat2.xy);
    u_xlat2.xy = u_xlat2.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat2.xy = fract(u_xlat2.xy);
    u_xlat2.x = u_xlat2.y * 2.0 + u_xlat2.x;
    u_xlat0.x = float(0.0);
    u_xlat0.z = float(-2.0);
    u_xlat0.w = float(-1.0);
    u_xlat3 = vs_TEXCOORD1.xyxy * vec4(128.0, 128.0, 128.0, 128.0) + u_xlat0.xyyx;
    u_xlat4 = u_xlat0.yzyw + u_xlat3.xyxy;
    u_xlat5 = u_xlat0.zywy + u_xlat3.zwzw;
    u_xlat21 = dot(u_xlat4.xy, _NoiseParameters.xxyz.yz);
    u_xlat16.x = dot(u_xlat4.zw, _NoiseParameters.xxyz.yz);
    u_xlat16.x = sin(u_xlat16.x);
    u_xlat16.x = u_xlat16.x * _NoiseParameters.xxyz.w;
    u_xlat21 = sin(u_xlat21);
    u_xlat21 = u_xlat21 * _NoiseParameters.xxyz.w;
    u_xlat21 = fract(u_xlat21);
    u_xlat2.x = u_xlat21 + u_xlat2.x;
    u_xlat4 = u_xlat1.zwzw + vec4(-2.0, -1.0, -1.0, -1.0);
    u_xlat23 = dot(u_xlat4.xy, _NoiseParameters.xxyz.yz);
    u_xlat4.x = dot(u_xlat4.zw, _NoiseParameters.xxyz.yz);
    u_xlat4.x = sin(u_xlat4.x);
    u_xlat4.x = u_xlat4.x * _NoiseParameters.xxyz.w;
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat23 = sin(u_xlat23);
    u_xlat16.y = u_xlat23 * _NoiseParameters.xxyz.w;
    u_xlat2.zw = fract(u_xlat16.xy);
    u_xlat2.x = u_xlat2.w * 2.0 + u_xlat2.x;
    u_xlat2.w = u_xlat4.x * 2.0 + u_xlat2.w;
    u_xlat2.x = u_xlat4.x * -12.0 + u_xlat2.x;
    u_xlat2.x = u_xlat2.z * 2.0 + u_xlat2.x;
    u_xlat11.x = dot(u_xlat5.xy, _NoiseParameters.xxyz.yz);
    u_xlat11.y = dot(u_xlat5.zw, _NoiseParameters.xxyz.yz);
    u_xlat11.xy = sin(u_xlat11.xy);
    u_xlat11.xy = u_xlat11.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat11.xy = fract(u_xlat11.xy);
    u_xlat2.x = u_xlat2.x + u_xlat11.x;
    u_xlat2.x = u_xlat11.y * 2.0 + u_xlat2.x;
    u_xlat25 = dot(u_xlat1.zw, _NoiseParameters.xxyz.yz);
    u_xlat25 = sin(u_xlat25);
    u_xlat25 = u_xlat25 * _NoiseParameters.xxyz.w;
    u_xlat11.z = fract(u_xlat25);
    u_xlat9 = u_xlat21 * 2.0 + u_xlat2.y;
    u_xlat5 = u_xlat1.zwzw + vec4(1.0, -2.0, 1.0, -1.0);
    u_xlat5.x = dot(u_xlat5.xy, _NoiseParameters.xxyz.yz);
    u_xlat5.y = dot(u_xlat5.zw, _NoiseParameters.xxyz.yz);
    u_xlat5.xy = sin(u_xlat5.xy);
    u_xlat5.xy = u_xlat5.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat5.xy = fract(u_xlat5.xy);
    u_xlat9 = u_xlat9 + u_xlat5.x;
    u_xlat21 = u_xlat5.x * 2.0 + u_xlat21;
    u_xlat9 = u_xlat4.x * 2.0 + u_xlat9;
    u_xlat4.x = u_xlat2.z * 2.0 + u_xlat4.x;
    u_xlat4.x = u_xlat5.y + u_xlat4.x;
    u_xlat4.x = u_xlat11.y * 2.0 + u_xlat4.x;
    u_xlat4.x = u_xlat11.z * -12.0 + u_xlat4.x;
    u_xlat9 = u_xlat2.z * -12.0 + u_xlat9;
    u_xlat2.y = u_xlat5.y * 2.0 + u_xlat9;
    u_xlat2.xy = u_xlat11.zy + u_xlat2.xy;
    u_xlat9 = u_xlat11.z * 2.0 + u_xlat2.y;
    u_xlat0.x = float(1.0);
    u_xlat0.z = float(2.0);
    u_xlat6 = u_xlat0.xyzy + u_xlat3.zwzw;
    u_xlat3 = u_xlat0.yxyz + u_xlat3.xyxy;
    u_xlat0.x = dot(u_xlat6.xy, _NoiseParameters.xxyz.yz);
    u_xlat0.y = dot(u_xlat6.zw, _NoiseParameters.xxyz.yz);
    u_xlat0.xy = sin(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat14.x = u_xlat0.x + u_xlat9;
    u_xlat14.x = u_xlat14.x * 0.0833333358;
    u_xlat14.x = u_xlat2.x * 0.0416666679 + u_xlat14.x;
    u_xlat6 = u_xlat1.zwzw + vec4(2.0, -2.0, 2.0, -1.0);
    u_xlat2.x = dot(u_xlat6.xy, _NoiseParameters.xxyz.yz);
    u_xlat2.y = dot(u_xlat6.zw, _NoiseParameters.xxyz.yz);
    u_xlat2.xy = sin(u_xlat2.xy);
    u_xlat2.xy = u_xlat2.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat2.xy = fract(u_xlat2.xy);
    u_xlat21 = u_xlat21 + u_xlat2.x;
    u_xlat21 = u_xlat2.z * 2.0 + u_xlat21;
    u_xlat2.x = u_xlat5.y * 2.0 + u_xlat2.z;
    u_xlat21 = u_xlat5.y * -12.0 + u_xlat21;
    u_xlat21 = u_xlat2.y * 2.0 + u_xlat21;
    u_xlat2.xw = u_xlat2.yz + u_xlat2.xw;
    u_xlat2.x = u_xlat11.z * 2.0 + u_xlat2.x;
    u_xlat2.x = u_xlat0.x * -12.0 + u_xlat2.x;
    u_xlat2.x = u_xlat0.y * 2.0 + u_xlat2.x;
    u_xlat21 = u_xlat11.z + u_xlat21;
    u_xlat21 = u_xlat0.x * 2.0 + u_xlat21;
    u_xlat21 = u_xlat0.y + u_xlat21;
    u_xlat14.x = u_xlat21 * 0.0416666679 + u_xlat14.x;
    u_xlat21 = u_xlat11.x * 2.0 + u_xlat2.w;
    u_xlat9 = u_xlat11.y * 2.0 + u_xlat11.x;
    u_xlat9 = u_xlat11.z + u_xlat9;
    u_xlat21 = u_xlat11.y * -12.0 + u_xlat21;
    u_xlat16.x = u_xlat11.z * 2.0 + u_xlat11.y;
    u_xlat16.x = u_xlat0.x + u_xlat16.x;
    u_xlat21 = u_xlat11.z * 2.0 + u_xlat21;
    u_xlat23 = u_xlat0.x * 2.0 + u_xlat11.z;
    u_xlat0.x = u_xlat0.x * 2.0 + u_xlat4.x;
    u_xlat7.x = u_xlat0.y + u_xlat23;
    u_xlat4 = u_xlat1.zwzw + vec4(-2.0, 1.0, -1.0, 1.0);
    u_xlat23 = dot(u_xlat4.xy, _NoiseParameters.xxyz.yz);
    u_xlat4.x = dot(u_xlat4.zw, _NoiseParameters.xxyz.yz);
    u_xlat4.x = sin(u_xlat4.x);
    u_xlat4.x = u_xlat4.x * _NoiseParameters.xxyz.w;
    u_xlat4.x = fract(u_xlat4.x);
    u_xlat23 = sin(u_xlat23);
    u_xlat23 = u_xlat23 * _NoiseParameters.xxyz.w;
    u_xlat23 = fract(u_xlat23);
    u_xlat21 = u_xlat21 + u_xlat23;
    u_xlat9 = u_xlat23 * 2.0 + u_xlat9;
    u_xlat9 = u_xlat4.x * -12.0 + u_xlat9;
    u_xlat21 = u_xlat4.x * 2.0 + u_xlat21;
    u_xlat23 = dot(u_xlat3.xy, _NoiseParameters.xxyz.yz);
    u_xlat3.x = dot(u_xlat3.zw, _NoiseParameters.xxyz.yz);
    u_xlat3.x = sin(u_xlat3.x);
    u_xlat3.x = u_xlat3.x * _NoiseParameters.xxyz.w;
    u_xlat23 = sin(u_xlat23);
    u_xlat23 = u_xlat23 * _NoiseParameters.xxyz.w;
    u_xlat23 = fract(u_xlat23);
    u_xlat21 = u_xlat21 + u_xlat23;
    u_xlat14.x = u_xlat21 * 0.0833333358 + u_xlat14.x;
    u_xlat0.x = u_xlat0.x + u_xlat4.x;
    u_xlat21 = u_xlat4.x * 2.0 + u_xlat16.x;
    u_xlat21 = u_xlat23 * -12.0 + u_xlat21;
    u_xlat0.x = u_xlat23 * 2.0 + u_xlat0.x;
    u_xlat4 = u_xlat1.zwzw + vec4(1.0, 1.0, 2.0, 1.0);
    u_xlat16.x = dot(u_xlat4.xy, _NoiseParameters.xxyz.yz);
    u_xlat10 = dot(u_xlat4.zw, _NoiseParameters.xxyz.yz);
    u_xlat10 = sin(u_xlat10);
    u_xlat3.y = u_xlat10 * _NoiseParameters.xxyz.w;
    u_xlat3.xy = fract(u_xlat3.xy);
    u_xlat16.x = sin(u_xlat16.x);
    u_xlat16.x = u_xlat16.x * _NoiseParameters.xxyz.w;
    u_xlat16.x = fract(u_xlat16.x);
    u_xlat0.x = u_xlat0.x + u_xlat16.x;
    u_xlat0.x = u_xlat0.x * 0.166666672 + u_xlat14.x;
    u_xlat14.x = u_xlat23 + u_xlat2.x;
    u_xlat14.x = u_xlat16.x * 2.0 + u_xlat14.x;
    u_xlat14.x = u_xlat3.y + u_xlat14.x;
    u_xlat0.x = u_xlat14.x * 0.0833333358 + u_xlat0.x;
    u_xlat14.x = u_xlat23 * 2.0 + u_xlat9;
    u_xlat7.x = u_xlat23 * 2.0 + u_xlat7.x;
    u_xlat7.x = u_xlat16.x * -12.0 + u_xlat7.x;
    u_xlat14.y = u_xlat16.x * 2.0 + u_xlat21;
    u_xlat7.x = u_xlat3.y * 2.0 + u_xlat7.x;
    u_xlat2 = u_xlat1.zwzw + vec4(-2.0, 2.0, -1.0, 2.0);
    u_xlat1 = u_xlat1 + vec4(1.0, 2.0, 2.0, 2.0);
    u_xlat2.x = dot(u_xlat2.xy, _NoiseParameters.xxyz.yz);
    u_xlat2.y = dot(u_xlat2.zw, _NoiseParameters.xxyz.yz);
    u_xlat2.xy = sin(u_xlat2.xy);
    u_xlat2.xy = u_xlat2.xy * vec2(_NoiseParameters.z, _NoiseParameters.z);
    u_xlat2.xy = fract(u_xlat2.xy);
    u_xlat14.xy = u_xlat14.xy + u_xlat2.xy;
    u_xlat7.y = u_xlat2.y * 2.0 + u_xlat14.x;
    u_xlat21 = u_xlat3.x * 2.0 + u_xlat14.y;
    u_xlat7.xy = u_xlat3.xx + u_xlat7.xy;
    u_xlat0.x = u_xlat7.y * 0.0416666679 + u_xlat0.x;
    u_xlat14.x = dot(u_xlat1.xy, _NoiseParameters.xxyz.yz);
    u_xlat1.x = dot(u_xlat1.zw, _NoiseParameters.xxyz.yz);
    u_xlat1.x = sin(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * _NoiseParameters.xxyz.w;
    u_xlat1.x = fract(u_xlat1.x);
    u_xlat14.x = sin(u_xlat14.x);
    u_xlat14.x = u_xlat14.x * _NoiseParameters.xxyz.w;
    u_xlat14.x = fract(u_xlat14.x);
    u_xlat21 = u_xlat14.x + u_xlat21;
    u_xlat7.x = u_xlat14.x * 2.0 + u_xlat7.x;
    u_xlat7.x = u_xlat1.x + u_xlat7.x;
    u_xlat0.x = u_xlat21 * 0.0833333358 + u_xlat0.x;
    u_xlat0.x = u_xlat7.x * 0.0416666679 + u_xlat0.x;
    SV_Target0.xyz = u_xlat0.xxx * vec3(0.0625, 0.0625, 0.0625);
    SV_Target0.w = 1.0;
    return;
}

