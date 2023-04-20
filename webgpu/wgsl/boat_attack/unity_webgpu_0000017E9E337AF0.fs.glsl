#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#ifdef GL_ARB_derivative_control
#extension GL_ARB_derivative_control : enable
#endif

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
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	vec4 _ZBufferParams;
	vec4 _RTHandleScale;
	mat4x4 unity_MatrixV;
	vec4 _CameraDepthTexture_TexelSize;
	vec4 _SSAOParams;
	vec4 _CameraViewTopLeftCorner[2];
	mat4x4 _CameraViewProjections[2];
	vec4 _ProjectionParams2;
	vec4 _CameraViewXExtent[2];
	vec4 _CameraViewYExtent[2];
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec2 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
bool u_xlatb4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
float u_xlat8;
vec3 u_xlat9;
float u_xlat12;
vec2 u_xlat16;
vec2 u_xlat19;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
float u_xlat26;
bool u_xlatb26;
float u_xlat27;
layout(set = 0, binding = 1) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
    u_xlat0.xy = (-_CameraDepthTexture_TexelSize.xy) * vec2(0.5, 0.5) + vec2(1.0, 1.0);
    u_xlat16.xy = min(u_xlat0.xy, vs_TEXCOORD0.xy);
    u_xlat16.xy = u_xlat16.xy * _RTHandleScale.xy;
    u_xlat16.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat16.xy, _GlobalMipBias.x).x;
    u_xlatb24 = u_xlat16.x<9.99999975e-06;
    if(u_xlatb24){
        SV_Target0 = vec4(0.0, 0.5, 0.5, 0.5);
        return;
    }
    u_xlat16.x = _ZBufferParams.z * u_xlat16.x + _ZBufferParams.w;
    u_xlat16.x = float(1.0) / u_xlat16.x;
    u_xlatb24 = _SSAOParams.w<u_xlat16.x;
    if(u_xlatb24){
        SV_Target0 = vec4(0.0, 0.5, 0.5, 0.5);
        return;
    }
    u_xlat24 = (-vs_TEXCOORD0.y) + 1.0;
    u_xlat1.x = u_xlat16.x * _ProjectionParams2.x;
    u_xlat9.xyz = _CameraViewXExtent[0].xyz * vs_TEXCOORD0.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat9.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat24) + u_xlat9.xyz;
    u_xlat1.xyz = u_xlat1.xxx * u_xlat9.xyz;
    u_xlat2.xyz = dFdyCoarse(u_xlat1.zxy);
    u_xlat3.xyz = dFdxCoarse(u_xlat1.yzx);
    u_xlat4.xyz = u_xlat2.xyz * u_xlat3.xyz;
    u_xlat2.xyz = u_xlat2.zxy * u_xlat3.yzx + (-u_xlat4.xyz);
    u_xlat24 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat2.xyz = vec3(u_xlat24) * u_xlat2.xyz;
    u_xlat3.xy = vs_TEXCOORD0.xy * _ScaledScreenParams.xy;
    u_xlat19.xy = u_xlat3.xy * _SSAOParams.zz;
    u_xlat24 = dot(u_xlat19.xy, vec2(0.0671105608, 0.00583714992));
    u_xlat24 = fract(u_xlat24);
    u_xlat24 = u_xlat24 * 52.9829178;
    u_xlat24 = fract(u_xlat24);
    u_xlat25 = fract(u_xlat24);
    u_xlat4.z = u_xlat25 * 2.0 + -1.0;
    u_xlat24 = u_xlat24 + 0.9296875;
    u_xlat24 = u_xlat24 * 6.28318548;
    u_xlat25 = (-u_xlat4.z) * u_xlat4.z + 1.0;
    u_xlat25 = sqrt(u_xlat25);
    u_xlat5.x = sin(u_xlat24);
    u_xlat6.x = cos(u_xlat24);
    u_xlat4.x = u_xlat25 * u_xlat6.x;
    u_xlat4.y = u_xlat25 * u_xlat5.x;
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat24 = dot((-u_xlat2.xyz), u_xlat4.xyz);
    u_xlatb24 = u_xlat24>=0.0;
    u_xlat4.xyz = (bool(u_xlatb24)) ? (-u_xlat4.xyz) : u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz * _SSAOParams.yyy + u_xlat1.xyz;
    u_xlat19.xy = u_xlat4.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat19.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat4.xx + u_xlat19.xy;
    u_xlat19.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat4.zz + u_xlat19.xy;
    u_xlat5.x = unity_MatrixV[0].z;
    u_xlat5.y = unity_MatrixV[1].z;
    u_xlat5.z = unity_MatrixV[2].z;
    u_xlat24 = dot(u_xlat5.xyz, u_xlat4.xyz);
    u_xlat25 = float(1.0) / float((-u_xlat24));
    u_xlat19.xy = u_xlat19.xy * vec2(u_xlat25) + vec2(1.0, 1.0);
    u_xlat19.xy = u_xlat19.xy * vec2(0.5, 0.5);
    u_xlat19.xy = clamp(u_xlat19.xy, 0.0, 1.0);
    u_xlat4.xy = min(u_xlat0.xy, u_xlat19.xy);
    u_xlat4.xy = u_xlat4.xy * _RTHandleScale.xy;
    u_xlat25 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat4.xy, _GlobalMipBias.x).x;
    u_xlat26 = _ZBufferParams.z * u_xlat25 + _ZBufferParams.w;
    u_xlat26 = float(1.0) / u_xlat26;
    u_xlat24 = (-u_xlat24) + (-u_xlat26);
    u_xlatb24 = abs(u_xlat24)<_SSAOParams.y;
    u_xlat24 = u_xlatb24 ? 1.0 : float(0.0);
    u_xlatb25 = 9.99999975e-06<u_xlat25;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlat24 = u_xlat24 * u_xlat25;
    u_xlat25 = (-u_xlat19.y) + 1.0;
    u_xlat26 = u_xlat26 * _ProjectionParams2.x;
    u_xlat4.xyz = _CameraViewXExtent[0].xyz * u_xlat19.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat4.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat25) + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat26) + (-u_xlat1.xyz);
    u_xlat25 = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat25 = (-u_xlat16.x) * 0.00400000019 + u_xlat25;
    u_xlat25 = max(u_xlat25, 0.0);
    u_xlat26 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat26 = u_xlat26 + 9.99999975e-05;
    u_xlat26 = float(1.0) / float(u_xlat26);
    u_xlat25 = u_xlat25 * u_xlat26;
    u_xlat4 = u_xlat3.xyxy * _SSAOParams.zzzz + vec4(2.08299994, 4.8670001, 4.16599989, 9.73400021);
    u_xlat26 = dot(u_xlat4.xy, vec2(0.0671105608, 0.00583714992));
    u_xlat26 = fract(u_xlat26);
    u_xlat26 = u_xlat26 * 52.9829178;
    u_xlat26 = fract(u_xlat26);
    u_xlat19.xy = vec2(u_xlat26) + vec2(0.33984375, 0.76171875);
    u_xlat26 = fract(u_xlat19.x);
    u_xlat6.z = u_xlat26 * 2.0 + -1.0;
    u_xlat26 = u_xlat19.y * 6.28318548;
    u_xlat19.x = (-u_xlat6.z) * u_xlat6.z + 1.0;
    u_xlat19.x = sqrt(u_xlat19.x);
    u_xlat4.x = sin(u_xlat26);
    u_xlat7 = cos(u_xlat26);
    u_xlat6.x = u_xlat19.x * u_xlat7;
    u_xlat6.y = u_xlat19.x * u_xlat4.x;
    u_xlat6.xyz = u_xlat6.xyz * vec3(0.707106769, 0.707106769, 0.707106769);
    u_xlat26 = dot((-u_xlat2.xyz), u_xlat6.xyz);
    u_xlatb26 = u_xlat26>=0.0;
    u_xlat6.xyz = (bool(u_xlatb26)) ? (-u_xlat6.xyz) : u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz * _SSAOParams.yyy + u_xlat1.xyz;
    u_xlat19.xy = u_xlat6.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat19.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat6.xx + u_xlat19.xy;
    u_xlat19.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat6.zz + u_xlat19.xy;
    u_xlat26 = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat4.x = float(1.0) / float((-u_xlat26));
    u_xlat19.xy = u_xlat19.xy * u_xlat4.xx + vec2(1.0, 1.0);
    u_xlat19.xy = u_xlat19.xy * vec2(0.5, 0.5);
    u_xlat19.xy = clamp(u_xlat19.xy, 0.0, 1.0);
    u_xlat4.xy = min(u_xlat0.xy, u_xlat19.xy);
    u_xlat4.xy = u_xlat4.xy * _RTHandleScale.xy;
    u_xlat4.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat4.xy, _GlobalMipBias.x).x;
    u_xlat12 = _ZBufferParams.z * u_xlat4.x + _ZBufferParams.w;
    u_xlat12 = float(1.0) / u_xlat12;
    u_xlat26 = (-u_xlat26) + (-u_xlat12);
    u_xlatb26 = abs(u_xlat26)<_SSAOParams.y;
    u_xlat26 = u_xlatb26 ? 1.0 : float(0.0);
    u_xlatb4 = 9.99999975e-06<u_xlat4.x;
    u_xlat4.x = u_xlatb4 ? 1.0 : float(0.0);
    u_xlat26 = u_xlat26 * u_xlat4.x;
    u_xlat27 = (-u_xlat19.y) + 1.0;
    u_xlat4.x = u_xlat12 * _ProjectionParams2.x;
    u_xlat6.xyz = _CameraViewXExtent[0].xyz * u_xlat19.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat6.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat27) + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat4.xxx + (-u_xlat1.xyz);
    u_xlat19.x = dot(u_xlat6.xyz, u_xlat2.xyz);
    u_xlat19.x = (-u_xlat16.x) * 0.00400000019 + u_xlat19.x;
    u_xlat19.x = max(u_xlat19.x, 0.0);
    u_xlat27 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat27 = u_xlat27 + 9.99999975e-05;
    u_xlat27 = float(1.0) / float(u_xlat27);
    u_xlat19.x = u_xlat27 * u_xlat19.x;
    u_xlat26 = u_xlat26 * u_xlat19.x;
    u_xlat24 = u_xlat25 * u_xlat24 + u_xlat26;
    u_xlat25 = dot(u_xlat4.zw, vec2(0.0671105608, 0.00583714992));
    u_xlat25 = fract(u_xlat25);
    u_xlat25 = u_xlat25 * 52.9829178;
    u_xlat25 = fract(u_xlat25);
    u_xlat19.xy = vec2(u_xlat25) + vec2(0.75390625, 0.133333296);
    u_xlat25 = fract(u_xlat19.x);
    u_xlat4.z = u_xlat25 * 2.0 + -1.0;
    u_xlat25 = u_xlat19.y * 6.28318548;
    u_xlat26 = (-u_xlat4.z) * u_xlat4.z + 1.0;
    u_xlat26 = sqrt(u_xlat26);
    u_xlat6.x = sin(u_xlat25);
    u_xlat7 = cos(u_xlat25);
    u_xlat4.x = u_xlat26 * u_xlat7;
    u_xlat4.y = u_xlat26 * u_xlat6.x;
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.866025388, 0.866025388, 0.866025388);
    u_xlat25 = dot((-u_xlat2.xyz), u_xlat4.xyz);
    u_xlatb25 = u_xlat25>=0.0;
    u_xlat4.xyz = (bool(u_xlatb25)) ? (-u_xlat4.xyz) : u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz * _SSAOParams.yyy + u_xlat1.xyz;
    u_xlat19.xy = u_xlat4.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat19.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat4.xx + u_xlat19.xy;
    u_xlat19.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat4.zz + u_xlat19.xy;
    u_xlat25 = dot(u_xlat5.xyz, u_xlat4.xyz);
    u_xlat26 = float(1.0) / float((-u_xlat25));
    u_xlat19.xy = u_xlat19.xy * vec2(u_xlat26) + vec2(1.0, 1.0);
    u_xlat19.xy = u_xlat19.xy * vec2(0.5, 0.5);
    u_xlat19.xy = clamp(u_xlat19.xy, 0.0, 1.0);
    u_xlat4.xy = min(u_xlat0.xy, u_xlat19.xy);
    u_xlat4.xy = u_xlat4.xy * _RTHandleScale.xy;
    u_xlat26 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat4.xy, _GlobalMipBias.x).x;
    u_xlat4.x = _ZBufferParams.z * u_xlat26 + _ZBufferParams.w;
    u_xlat4.x = float(1.0) / u_xlat4.x;
    u_xlat25 = (-u_xlat25) + (-u_xlat4.x);
    u_xlatb25 = abs(u_xlat25)<_SSAOParams.y;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlatb26 = 9.99999975e-06<u_xlat26;
    u_xlat26 = u_xlatb26 ? 1.0 : float(0.0);
    u_xlat25 = u_xlat25 * u_xlat26;
    u_xlat26 = (-u_xlat19.y) + 1.0;
    u_xlat27 = u_xlat4.x * _ProjectionParams2.x;
    u_xlat4.xyz = _CameraViewXExtent[0].xyz * u_xlat19.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat4.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat26) + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat27) + (-u_xlat1.xyz);
    u_xlat26 = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat26 = (-u_xlat16.x) * 0.00400000019 + u_xlat26;
    u_xlat26 = max(u_xlat26, 0.0);
    u_xlat19.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat19.x = u_xlat19.x + 9.99999975e-05;
    u_xlat19.x = float(1.0) / float(u_xlat19.x);
    u_xlat26 = u_xlat26 * u_xlat19.x;
    u_xlat24 = u_xlat26 * u_xlat25 + u_xlat24;
    u_xlat3.xy = u_xlat3.xy * _SSAOParams.zz + vec2(6.2489996, 14.6009998);
    u_xlat25 = dot(u_xlat3.xy, vec2(0.0671105608, 0.00583714992));
    u_xlat25 = fract(u_xlat25);
    u_xlat25 = u_xlat25 * 52.9829178;
    u_xlat25 = fract(u_xlat25);
    u_xlat3.xy = vec2(u_xlat25) + vec2(0.56640625, 0.015625);
    u_xlat25 = fract(u_xlat3.x);
    u_xlat4.z = u_xlat25 * 2.0 + -1.0;
    u_xlat25 = u_xlat3.y * 6.28318548;
    u_xlat26 = (-u_xlat4.z) * u_xlat4.z + 1.0;
    u_xlat26 = sqrt(u_xlat26);
    u_xlat3.x = sin(u_xlat25);
    u_xlat6.x = cos(u_xlat25);
    u_xlat4.x = u_xlat26 * u_xlat6.x;
    u_xlat4.y = u_xlat26 * u_xlat3.x;
    u_xlat25 = dot((-u_xlat2.xyz), u_xlat4.xyz);
    u_xlatb25 = u_xlat25>=0.0;
    u_xlat3.xyz = (bool(u_xlatb25)) ? (-u_xlat4.xyz) : u_xlat4.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _SSAOParams.yyy + u_xlat1.xyz;
    u_xlat4.xy = u_xlat3.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat4.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat3.xx + u_xlat4.xy;
    u_xlat4.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat3.zz + u_xlat4.xy;
    u_xlat25 = dot(u_xlat5.xyz, u_xlat3.xyz);
    u_xlat26 = float(1.0) / float((-u_xlat25));
    u_xlat3.xy = u_xlat4.xy * vec2(u_xlat26) + vec2(1.0, 1.0);
    u_xlat3.xy = u_xlat3.xy * vec2(0.5, 0.5);
    u_xlat3.xy = clamp(u_xlat3.xy, 0.0, 1.0);
    u_xlat0.xy = min(u_xlat0.xy, u_xlat3.xy);
    u_xlat0.xy = u_xlat0.xy * _RTHandleScale.xy;
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat0.xy, _GlobalMipBias.x).x;
    u_xlat8 = _ZBufferParams.z * u_xlat0.x + _ZBufferParams.w;
    u_xlat8 = float(1.0) / u_xlat8;
    u_xlat25 = (-u_xlat8) + (-u_xlat25);
    u_xlatb25 = abs(u_xlat25)<_SSAOParams.y;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlatb0 = 9.99999975e-06<u_xlat0.x;
    u_xlat0.x = u_xlatb0 ? 1.0 : float(0.0);
    u_xlat0.x = u_xlat0.x * u_xlat25;
    u_xlat25 = (-u_xlat3.y) + 1.0;
    u_xlat8 = u_xlat8 * _ProjectionParams2.x;
    u_xlat3.xyz = _CameraViewXExtent[0].xyz * u_xlat3.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat3.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat25) + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat3.xyz * vec3(u_xlat8) + (-u_xlat1.xyz);
    u_xlat8 = dot(u_xlat1.xyz, u_xlat2.xyz);
    u_xlat8 = (-u_xlat16.x) * 0.00400000019 + u_xlat8;
    u_xlat8 = max(u_xlat8, 0.0);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = u_xlat1.x + 9.99999975e-05;
    u_xlat1.x = float(1.0) / float(u_xlat1.x);
    u_xlat8 = u_xlat8 * u_xlat1.x;
    u_xlat0.x = u_xlat8 * u_xlat0.x + u_xlat24;
    u_xlat0.x = u_xlat0.x * _SSAOParams.y;
    u_xlat8 = float(1.0) / float(_SSAOParams.w);
    u_xlat8 = (-u_xlat16.x) * u_xlat8 + 1.0;
    u_xlat8 = u_xlat8 * u_xlat8;
    u_xlat0.x = u_xlat0.x * _SSAOParams.x;
    u_xlat0.x = u_xlat8 * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * 0.25;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat0.x = u_xlat0.x * 0.600000024;
    SV_Target0.x = exp2(u_xlat0.x);
    SV_Target0.yzw = u_xlat2.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    return;
}
