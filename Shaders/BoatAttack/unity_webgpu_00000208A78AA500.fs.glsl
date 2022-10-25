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
	vec2 _GlobalMipBias;
	vec4 _ZBufferParams;
	mat4x4 unity_MatrixV;
	vec4 _SSAOParams;
	vec4 _CameraViewTopLeftCorner[2];
	mat4x4 _CameraViewProjections[2];
	vec4 _SourceSize;
	vec4 _ProjectionParams2;
	vec4 _CameraViewXExtent[2];
	vec4 _CameraViewYExtent[2];
	vec4 _SSAOBlueNoiseParams;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _BlueNoiseTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_PointRepeat;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
float u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
bvec4 u_xlatb2;
vec4 u_xlat3;
bvec2 u_xlatb3;
vec3 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
float u_xlat7;
vec3 u_xlat8;
bool u_xlatb8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
vec3 u_xlat13;
float u_xlat16;
float u_xlat17;
vec2 u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat25;
bool u_xlatb25;
float u_xlat26;
bool u_xlatb26;
float u_xlat28;
bool u_xlatb28;
    u_xlat0 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlatb8 = u_xlat0<9.99999975e-06;
    if(u_xlatb8){
        SV_Target0 = vec4(0.0, 0.5, 0.5, 0.5);
        return;
    }
    u_xlat0 = _ZBufferParams.z * u_xlat0 + _ZBufferParams.w;
    u_xlat0 = float(1.0) / u_xlat0;
    u_xlatb8 = _SSAOParams.w<u_xlat0;
    if(u_xlatb8){
        SV_Target0 = vec4(0.0, 0.5, 0.5, 0.5);
        return;
    }
    u_xlat8.x = (-vs_TEXCOORD0.y) + 1.0;
    u_xlat16 = u_xlat0 * _ProjectionParams2.x;
    u_xlat1.xyz = _CameraViewXExtent[0].xyz * vs_TEXCOORD0.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat1.xyz = _CameraViewYExtent[0].xyz * u_xlat8.xxx + u_xlat1.xyz;
    u_xlat8.xyz = vec3(u_xlat16) * u_xlat1.xyz;
    u_xlat9.x = _SourceSize.z * -2.0;
    u_xlat9.y = 0.0;
    u_xlat9.xy = u_xlat9.xy + vs_TEXCOORD0.xy;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat9.xy, _GlobalMipBias.x).x;
    u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
    u_xlat9.z = float(1.0) / u_xlat1.x;
    u_xlat2.x = _SourceSize.z * 2.0;
    u_xlat2.y = float(0.0);
    u_xlat18.y = float(0.0);
    u_xlat3.xy = u_xlat2.xy + vs_TEXCOORD0.xy;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat3.xy, _GlobalMipBias.x).x;
    u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
    u_xlat3.z = float(1.0) / u_xlat1.x;
    u_xlat12.x = 0.0;
    u_xlat12.y = _SourceSize.w * 2.0;
    u_xlat12.xy = u_xlat12.xy + vs_TEXCOORD0.xy;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat12.xy, _GlobalMipBias.x).x;
    u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
    u_xlat12.z = float(1.0) / u_xlat1.x;
    u_xlat13.x = 0.0;
    u_xlat13.y = _SourceSize.w * -2.0;
    u_xlat13.xy = u_xlat13.xy + vs_TEXCOORD0.xy;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat13.xy, _GlobalMipBias.x).x;
    u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
    u_xlat13.z = float(1.0) / u_xlat1.x;
    u_xlat18.x = _SourceSize.z;
    u_xlat2 = u_xlat18.xyxy * vec4(-4.0, 2.0, 4.0, 2.0) + vs_TEXCOORD0.xyxy;
    u_xlat1.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat2.xy, _GlobalMipBias.x).x;
    u_xlat1.x = _ZBufferParams.z * u_xlat1.x + _ZBufferParams.w;
    u_xlat1.x = float(1.0) / u_xlat1.x;
    u_xlat2.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat2.zw, _GlobalMipBias.x).x;
    u_xlat2.x = _ZBufferParams.z * u_xlat2.x + _ZBufferParams.w;
    u_xlat2.x = float(1.0) / u_xlat2.x;
    u_xlat6.x = 2.0;
    u_xlat6.y = _SourceSize.w;
    u_xlat6 = vec4(0.0, 4.0, 0.0, -4.0) * u_xlat6.xyxy + vs_TEXCOORD0.xyxy;
    u_xlat10.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat6.xy, _GlobalMipBias.x).x;
    u_xlat10.x = _ZBufferParams.z * u_xlat10.x + _ZBufferParams.w;
    u_xlat10.x = float(1.0) / u_xlat10.x;
    u_xlat18.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat6.zw, _GlobalMipBias.x).x;
    u_xlat18.x = _ZBufferParams.z * u_xlat18.x + _ZBufferParams.w;
    u_xlat18.x = float(1.0) / u_xlat18.x;
    u_xlat1.x = u_xlat9.z * 2.0 + (-u_xlat1.x);
    u_xlat1.x = (-u_xlat0) + u_xlat1.x;
    u_xlat2.x = u_xlat3.z * 2.0 + (-u_xlat2.x);
    u_xlat2.x = (-u_xlat0) + u_xlat2.x;
    u_xlatb1 = abs(u_xlat1.x)<abs(u_xlat2.x);
    u_xlat2.x = u_xlat13.z * 2.0 + (-u_xlat18.x);
    u_xlat2.y = u_xlat12.z * 2.0 + (-u_xlat10.x);
    u_xlat2.xy = (-vec2(u_xlat0)) + u_xlat2.xy;
    u_xlatb2.x = abs(u_xlat2.x)<abs(u_xlat2.y);
    u_xlat10.xyz = (bool(u_xlatb1)) ? u_xlat9.xyz : u_xlat13.xyz;
    u_xlat5.yzw = (bool(u_xlatb1)) ? u_xlat13.xyz : u_xlat3.xyz;
    u_xlat3.xyz = (bool(u_xlatb1)) ? u_xlat12.xyz : u_xlat3.xyz;
    u_xlat1.yzw = (bool(u_xlatb1)) ? u_xlat9.xyz : u_xlat12.xyz;
    u_xlat10.xy = (u_xlatb2.x) ? u_xlat10.xy : u_xlat3.xy;
    u_xlat5.x = u_xlat10.z;
    u_xlat1.x = u_xlat3.z;
    u_xlat1 = (u_xlatb2.x) ? u_xlat5 : u_xlat1;
    u_xlat17 = (-u_xlat1.z) + 1.0;
    u_xlat1.xw = u_xlat1.wx * _ProjectionParams2.xx;
    u_xlat3.xyz = _CameraViewXExtent[0].zxy * u_xlat1.yyy + _CameraViewTopLeftCorner[0].zxy;
    u_xlat3.xyz = _CameraViewYExtent[0].zxy * vec3(u_xlat17) + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat3.xyz * u_xlat1.xxx + (-u_xlat8.zxy);
    u_xlat2.x = (-u_xlat10.y) + 1.0;
    u_xlat10.xyz = _CameraViewXExtent[0].yzx * u_xlat10.xxx + _CameraViewTopLeftCorner[0].yzx;
    u_xlat2.xyz = _CameraViewYExtent[0].yzx * u_xlat2.xxx + u_xlat10.xyz;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat1.www + (-u_xlat8.yzx);
    u_xlat3.xyz = u_xlat1.xyz * u_xlat2.xyz;
    u_xlat1.xyz = u_xlat1.zxy * u_xlat2.yzx + (-u_xlat3.xyz);
    u_xlat25 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat1.xyz = vec3(u_xlat25) * u_xlat1.xyz;
    u_xlat2.xy = vs_TEXCOORD0.xy + _SSAOBlueNoiseParams.zw;
    u_xlat18.xy = u_xlat2.xy * _SSAOBlueNoiseParams.xy;
    u_xlat25 = texture(sampler2D(_BlueNoiseTexture, sampler_PointRepeat), u_xlat18.xy, _GlobalMipBias.x).w;
    u_xlat18.x = fract(u_xlat25);
    u_xlat3.z = u_xlat18.x * 2.0 + -1.0;
    u_xlat25 = u_xlat25 + 0.9296875;
    u_xlat25 = u_xlat25 * 628.318542;
    u_xlat18.x = (-u_xlat3.z) * u_xlat3.z + 1.0;
    u_xlat18.x = sqrt(u_xlat18.x);
    u_xlat4.x = sin(u_xlat25);
    u_xlat5.x = cos(u_xlat25);
    u_xlat3.x = u_xlat18.x * u_xlat5.x;
    u_xlat3.y = u_xlat18.x * u_xlat4.x;
    u_xlat25 = dot(u_xlat1.xyz, u_xlat3.xyz);
    u_xlatb25 = u_xlat25>=0.0;
    u_xlat25 = (u_xlatb25) ? 1.0 : -1.0;
    u_xlat3.xyz = vec3(u_xlat25) * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _SSAOParams.yyy;
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.100000001, 0.100000001, 0.100000001) + u_xlat8.xyz;
    u_xlat18.xy = u_xlat3.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat18.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat3.xx + u_xlat18.xy;
    u_xlat18.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat3.zz + u_xlat18.xy;
    u_xlat4.x = unity_MatrixV[0].z;
    u_xlat4.y = unity_MatrixV[1].z;
    u_xlat4.z = unity_MatrixV[2].z;
    u_xlat25 = dot(u_xlat4.xyz, u_xlat3.xyz);
    u_xlat3.x = float(1.0) / float((-u_xlat25));
    u_xlat18.xy = u_xlat18.xy * u_xlat3.xx + vec2(1.0, 1.0);
    u_xlat18.xy = u_xlat18.xy * vec2(0.5, 0.5);
    u_xlat18.xy = clamp(u_xlat18.xy, 0.0, 1.0);
    u_xlat3.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat18.xy, _GlobalMipBias.x).x;
    u_xlat11.x = _ZBufferParams.z * u_xlat3.x + _ZBufferParams.w;
    u_xlat11.x = float(1.0) / u_xlat11.x;
    u_xlat25 = (-u_xlat25) + (-u_xlat11.x);
    u_xlatb25 = abs(u_xlat25)<_SSAOParams.y;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlatb3.x = 9.99999975e-06<u_xlat3.x;
    u_xlat3.x = u_xlatb3.x ? 1.0 : float(0.0);
    u_xlat25 = u_xlat25 * u_xlat3.x;
    u_xlat26 = (-u_xlat18.y) + 1.0;
    u_xlat3.x = u_xlat11.x * _ProjectionParams2.x;
    u_xlat11.xyz = _CameraViewXExtent[0].xyz * u_xlat18.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat11.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat26) + u_xlat11.xyz;
    u_xlat3.xyz = u_xlat11.xyz * u_xlat3.xxx + (-u_xlat8.xyz);
    u_xlat18.x = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat18.x = (-u_xlat0) * 0.00400000019 + u_xlat18.x;
    u_xlat18.x = max(u_xlat18.x, 0.0);
    u_xlat26 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat26 = u_xlat26 + 9.99999975e-05;
    u_xlat26 = float(1.0) / float(u_xlat26);
    u_xlat18.x = u_xlat26 * u_xlat18.x;
    u_xlat3 = u_xlat2.xyxy * _SSAOBlueNoiseParams.xyxy + vec4(0.25, 0.25, 0.5, 0.5);
    u_xlat26 = texture(sampler2D(_BlueNoiseTexture, sampler_PointRepeat), u_xlat3.xy, _GlobalMipBias.x).w;
    u_xlat3.xy = vec2(u_xlat26) + vec2(0.33984375, 0.76171875);
    u_xlat26 = fract(u_xlat3.x);
    u_xlat5.z = u_xlat26 * 2.0 + -1.0;
    u_xlat26 = u_xlat3.y * 628.318542;
    u_xlat3.x = (-u_xlat5.z) * u_xlat5.z + 1.0;
    u_xlat3.x = sqrt(u_xlat3.x);
    u_xlat6.x = sin(u_xlat26);
    u_xlat7 = cos(u_xlat26);
    u_xlat5.x = u_xlat3.x * u_xlat7;
    u_xlat5.y = u_xlat3.x * u_xlat6.x;
    u_xlat26 = dot(u_xlat1.xyz, u_xlat5.xyz);
    u_xlatb26 = u_xlat26>=0.0;
    u_xlat26 = (u_xlatb26) ? 1.0 : -1.0;
    u_xlat5.xyz = vec3(u_xlat26) * u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz * _SSAOParams.yyy;
    u_xlat5.xyz = u_xlat5.xyz * vec3(0.15625, 0.15625, 0.15625) + u_xlat8.xyz;
    u_xlat3.xy = u_xlat5.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat3.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat5.xx + u_xlat3.xy;
    u_xlat3.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat5.zz + u_xlat3.xy;
    u_xlat26 = dot(u_xlat4.xyz, u_xlat5.xyz);
    u_xlat28 = float(1.0) / float((-u_xlat26));
    u_xlat3.xy = u_xlat3.xy * vec2(u_xlat28) + vec2(1.0, 1.0);
    u_xlat3.xy = u_xlat3.xy * vec2(0.5, 0.5);
    u_xlat3.xy = clamp(u_xlat3.xy, 0.0, 1.0);
    u_xlat28 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat3.xy, _GlobalMipBias.x).x;
    u_xlat5.x = _ZBufferParams.z * u_xlat28 + _ZBufferParams.w;
    u_xlat5.x = float(1.0) / u_xlat5.x;
    u_xlat26 = (-u_xlat26) + (-u_xlat5.x);
    u_xlatb26 = abs(u_xlat26)<_SSAOParams.y;
    u_xlat26 = u_xlatb26 ? 1.0 : float(0.0);
    u_xlatb28 = 9.99999975e-06<u_xlat28;
    u_xlat28 = u_xlatb28 ? 1.0 : float(0.0);
    u_xlat26 = u_xlat26 * u_xlat28;
    u_xlat11.x = (-u_xlat3.y) + 1.0;
    u_xlat28 = u_xlat5.x * _ProjectionParams2.x;
    u_xlat5.xyz = _CameraViewXExtent[0].xyz * u_xlat3.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat5.xyz = _CameraViewYExtent[0].xyz * u_xlat11.xxx + u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat28) + (-u_xlat8.xyz);
    u_xlat3.x = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat3.x = (-u_xlat0) * 0.00400000019 + u_xlat3.x;
    u_xlat3.x = max(u_xlat3.x, 0.0);
    u_xlat11.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat11.x = u_xlat11.x + 9.99999975e-05;
    u_xlat11.x = float(1.0) / float(u_xlat11.x);
    u_xlat3.x = u_xlat11.x * u_xlat3.x;
    u_xlat26 = u_xlat26 * u_xlat3.x;
    u_xlat25 = u_xlat18.x * u_xlat25 + u_xlat26;
    u_xlat18.x = texture(sampler2D(_BlueNoiseTexture, sampler_PointRepeat), u_xlat3.zw, _GlobalMipBias.x).w;
    u_xlat18.xy = u_xlat18.xx + vec2(0.75390625, 0.133333296);
    u_xlat18.x = fract(u_xlat18.x);
    u_xlat3.z = u_xlat18.x * 2.0 + -1.0;
    u_xlat18.x = u_xlat18.y * 628.318542;
    u_xlat26 = (-u_xlat3.z) * u_xlat3.z + 1.0;
    u_xlat26 = sqrt(u_xlat26);
    u_xlat5.x = sin(u_xlat18.x);
    u_xlat6.x = cos(u_xlat18.x);
    u_xlat3.x = u_xlat26 * u_xlat6.x;
    u_xlat3.y = u_xlat26 * u_xlat5.x;
    u_xlat18.x = dot(u_xlat1.xyz, u_xlat3.xyz);
    u_xlatb18 = u_xlat18.x>=0.0;
    u_xlat18.x = (u_xlatb18) ? 1.0 : -1.0;
    u_xlat3.xyz = u_xlat18.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * _SSAOParams.yyy;
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.324999988, 0.324999988, 0.324999988) + u_xlat8.xyz;
    u_xlat18.xy = u_xlat3.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat18.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat3.xx + u_xlat18.xy;
    u_xlat18.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat3.zz + u_xlat18.xy;
    u_xlat3.x = dot(u_xlat4.xyz, u_xlat3.xyz);
    u_xlat11.x = float(1.0) / float((-u_xlat3.x));
    u_xlat18.xy = u_xlat18.xy * u_xlat11.xx + vec2(1.0, 1.0);
    u_xlat18.xy = u_xlat18.xy * vec2(0.5, 0.5);
    u_xlat18.xy = clamp(u_xlat18.xy, 0.0, 1.0);
    u_xlat11.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat18.xy, _GlobalMipBias.x).x;
    u_xlat19 = _ZBufferParams.z * u_xlat11.x + _ZBufferParams.w;
    u_xlat19 = float(1.0) / u_xlat19;
    u_xlat3.x = (-u_xlat19) + (-u_xlat3.x);
    u_xlatb3.x = abs(u_xlat3.x)<_SSAOParams.y;
    u_xlatb3.y = 9.99999975e-06<u_xlat11.x;
    u_xlat3.x = u_xlatb3.x ? float(1.0) : 0.0;
    u_xlat3.y = u_xlatb3.y ? float(1.0) : 0.0;
;
    u_xlat3.x = u_xlat3.y * u_xlat3.x;
    u_xlat26 = (-u_xlat18.y) + 1.0;
    u_xlat11.x = u_xlat19 * _ProjectionParams2.x;
    u_xlat5.xyz = _CameraViewXExtent[0].xyz * u_xlat18.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat5.xyz = _CameraViewYExtent[0].xyz * vec3(u_xlat26) + u_xlat5.xyz;
    u_xlat11.xyz = u_xlat5.xyz * u_xlat11.xxx + (-u_xlat8.xyz);
    u_xlat18.x = dot(u_xlat11.xyz, u_xlat1.xyz);
    u_xlat18.x = (-u_xlat0) * 0.00400000019 + u_xlat18.x;
    u_xlat18.x = max(u_xlat18.x, 0.0);
    u_xlat26 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat26 = u_xlat26 + 9.99999975e-05;
    u_xlat26 = float(1.0) / float(u_xlat26);
    u_xlat18.x = u_xlat26 * u_xlat18.x;
    u_xlat25 = u_xlat18.x * u_xlat3.x + u_xlat25;
    u_xlat2.xy = u_xlat2.xy * _SSAOBlueNoiseParams.xy + vec2(0.75, 0.75);
    u_xlat2.x = texture(sampler2D(_BlueNoiseTexture, sampler_PointRepeat), u_xlat2.xy, _GlobalMipBias.x).w;
    u_xlat2.xy = u_xlat2.xx + vec2(0.56640625, 0.015625);
    u_xlat2.x = fract(u_xlat2.x);
    u_xlat3.z = u_xlat2.x * 2.0 + -1.0;
    u_xlat2.x = u_xlat2.y * 628.318542;
    u_xlat10.x = (-u_xlat3.z) * u_xlat3.z + 1.0;
    u_xlat10.x = sqrt(u_xlat10.x);
    u_xlat5.x = cos(u_xlat2.x);
    u_xlat2.x = sin(u_xlat2.x);
    u_xlat3.x = u_xlat10.x * u_xlat5.x;
    u_xlat3.y = u_xlat2.x * u_xlat10.x;
    u_xlat2.x = dot(u_xlat1.xyz, u_xlat3.xyz);
    u_xlatb2.x = u_xlat2.x>=0.0;
    u_xlat2.x = (u_xlatb2.x) ? 1.0 : -1.0;
    u_xlat2.xyz = u_xlat2.xxx * u_xlat3.xyz;
    u_xlat2.xyz = u_xlat2.xyz * _SSAOParams.yyy;
    u_xlat2.xyz = u_xlat2.xyz * vec3(0.606249988, 0.606249988, 0.606249988) + u_xlat8.xyz;
    u_xlat3.xy = u_xlat2.yy * _CameraViewProjections[1 / 4][1 % 4].xy;
    u_xlat3.xy = _CameraViewProjections[0 / 4][0 % 4].xy * u_xlat2.xx + u_xlat3.xy;
    u_xlat3.xy = _CameraViewProjections[2 / 4][2 % 4].xy * u_xlat2.zz + u_xlat3.xy;
    u_xlat2.x = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat10.x = float(1.0) / float((-u_xlat2.x));
    u_xlat10.xy = u_xlat3.xy * u_xlat10.xx + vec2(1.0, 1.0);
    u_xlat10.xy = u_xlat10.xy * vec2(0.5, 0.5);
    u_xlat10.xy = clamp(u_xlat10.xy, 0.0, 1.0);
    u_xlat26 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat10.xy, _GlobalMipBias.x).x;
    u_xlat3.x = _ZBufferParams.z * u_xlat26 + _ZBufferParams.w;
    u_xlat3.x = float(1.0) / u_xlat3.x;
    u_xlat2.x = (-u_xlat2.x) + (-u_xlat3.x);
    u_xlatb2.x = abs(u_xlat2.x)<_SSAOParams.y;
    u_xlatb2.w = 9.99999975e-06<u_xlat26;
    u_xlat2.x = u_xlatb2.x ? float(1.0) : 0.0;
    u_xlat2.w = u_xlatb2.w ? float(1.0) : 0.0;
;
    u_xlat2.x = u_xlat2.w * u_xlat2.x;
    u_xlat18.x = (-u_xlat10.y) + 1.0;
    u_xlat26 = u_xlat3.x * _ProjectionParams2.x;
    u_xlat3.xyz = _CameraViewXExtent[0].xyz * u_xlat10.xxx + _CameraViewTopLeftCorner[0].xyz;
    u_xlat3.xyz = _CameraViewYExtent[0].xyz * u_xlat18.xxx + u_xlat3.xyz;
    u_xlat8.xyz = u_xlat3.xyz * vec3(u_xlat26) + (-u_xlat8.xyz);
    u_xlat10.x = dot(u_xlat8.xyz, u_xlat1.xyz);
    u_xlat10.x = (-u_xlat0) * 0.00400000019 + u_xlat10.x;
    u_xlat10.x = max(u_xlat10.x, 0.0);
    u_xlat8.x = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat8.x = u_xlat8.x + 9.99999975e-05;
    u_xlat8.x = float(1.0) / float(u_xlat8.x);
    u_xlat8.x = u_xlat8.x * u_xlat10.x;
    u_xlat8.x = u_xlat8.x * u_xlat2.x + u_xlat25;
    u_xlat8.x = u_xlat8.x * _SSAOParams.y;
    u_xlat16 = float(1.0) / float(_SSAOParams.w);
    u_xlat0 = (-u_xlat0) * u_xlat16 + 1.0;
    u_xlat0 = u_xlat0 * u_xlat0;
    u_xlat8.x = u_xlat8.x * _SSAOParams.x;
    u_xlat0 = u_xlat0 * u_xlat8.x;
    u_xlat0 = u_xlat0 * 0.25;
    u_xlat0 = clamp(u_xlat0, 0.0, 1.0);
    u_xlat0 = log2(u_xlat0);
    u_xlat0 = u_xlat0 * 0.600000024;
    SV_Target0.x = exp2(u_xlat0);
    SV_Target0.yzw = u_xlat1.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.5, 0.5, 0.5);
    return;
}
