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
	vec4 _Params;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _CameraMotionVectorsTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_CameraMotionVectorsTexture;
void main()
{
vec3 u_xlat0;
bvec3 u_xlatb0;
vec3 u_xlat1;
bvec3 u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
float u_xlat6;
vec2 u_xlat7;
float u_xlat10;
bool u_xlatb10;
float u_xlat11;
bool u_xlatb11;
vec2 u_xlat12;
float u_xlat15;
bool u_xlatb15;
float u_xlat16;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlat0.xy = vs_TEXCOORD0.xy;
    u_xlat0.xy = clamp(u_xlat0.xy, 0.0, 1.0);
    u_xlat0.xy = u_xlat0.xy * vec2(_RenderViewportScaleFactor);
    u_xlat0.xy = texture(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), u_xlat0.xy).xy;
    u_xlat10 = abs(u_xlat0.y);
    u_xlat15 = max(u_xlat10, abs(u_xlat0.x));
    u_xlat15 = float(1.0) / u_xlat15;
    u_xlat1.x = min(u_xlat10, abs(u_xlat0.x));
    u_xlatb10 = u_xlat10<abs(u_xlat0.x);
    u_xlat15 = u_xlat15 * u_xlat1.x;
    u_xlat1.x = u_xlat15 * u_xlat15;
    u_xlat6 = u_xlat1.x * 0.0208350997 + -0.0851330012;
    u_xlat6 = u_xlat1.x * u_xlat6 + 0.180141002;
    u_xlat6 = u_xlat1.x * u_xlat6 + -0.330299497;
    u_xlat1.x = u_xlat1.x * u_xlat6 + 0.999866009;
    u_xlat6 = u_xlat15 * u_xlat1.x;
    u_xlat6 = u_xlat6 * -2.0 + 1.57079637;
    u_xlat10 = u_xlatb10 ? u_xlat6 : float(0.0);
    u_xlat10 = u_xlat15 * u_xlat1.x + u_xlat10;
    u_xlatb15 = (-u_xlat0.y)<u_xlat0.y;
    u_xlat15 = u_xlatb15 ? -3.14159274 : float(0.0);
    u_xlat10 = u_xlat15 + u_xlat10;
    u_xlat15 = min((-u_xlat0.y), u_xlat0.x);
    u_xlatb15 = u_xlat15<(-u_xlat15);
    u_xlat1.x = max((-u_xlat0.y), u_xlat0.x);
    u_xlat0.xy = u_xlat0.xy * vec2(1.0, -1.0);
    u_xlat2 = u_xlat0.xyxy * _Params.xxyy;
    u_xlatb0.x = u_xlat1.x>=(-u_xlat1.x);
    u_xlatb0.x = u_xlatb0.x && u_xlatb15;
    u_xlat0.x = (u_xlatb0.x) ? (-u_xlat10) : u_xlat10;
    u_xlat0.x = u_xlat0.x * 0.318309873 + 1.0;
    u_xlat0.xyz = u_xlat0.xxx * vec3(3.0, 3.0, 3.0) + vec3(-3.0, -2.0, -4.0);
    u_xlat0.xyz = abs(u_xlat0.xyz) * vec3(1.0, -1.0, -1.0) + vec3(-1.0, 2.0, 2.0);
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD1.xy).xyz;
    u_xlat3.xyz = max(abs(u_xlat1.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat3.xyz = log2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.416666657, 0.416666657, 0.416666657);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat3.xyz = u_xlat3.xyz * vec3(1.05499995, 1.05499995, 1.05499995) + vec3(-0.0549999997, -0.0549999997, -0.0549999997);
    u_xlat4.xyz = u_xlat1.xyz * vec3(12.9200001, 12.9200001, 12.9200001);
    u_xlatb1.xyz = greaterThanEqual(vec4(0.00313080009, 0.00313080009, 0.00313080009, 0.0), u_xlat1.xyzx).xyz;
    u_xlat1.x = (u_xlatb1.x) ? u_xlat4.x : u_xlat3.x;
    u_xlat1.y = (u_xlatb1.y) ? u_xlat4.y : u_xlat3.y;
    u_xlat1.z = (u_xlatb1.z) ? u_xlat4.z : u_xlat3.z;
    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
    u_xlat15 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat2.xy = u_xlat2.zw * vec2(0.25, 0.25);
    u_xlat16 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat16 = sqrt(u_xlat16);
    u_xlat16 = min(u_xlat16, 1.0);
    u_xlat15 = sqrt(u_xlat15);
    u_xlat15 = clamp(u_xlat15, 0.0, 1.0);
    u_xlat0.xyz = vec3(u_xlat15) * u_xlat0.xyz + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat0.xyz + vec3(0.0549999997, 0.0549999997, 0.0549999997);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.947867334, 0.947867334, 0.947867334);
    u_xlat1.xyz = max(abs(u_xlat1.xyz), vec3(1.1920929e-07, 1.1920929e-07, 1.1920929e-07));
    u_xlat1.xyz = log2(u_xlat1.xyz);
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.4000001, 2.4000001, 2.4000001);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz * vec3(0.0773993805, 0.0773993805, 0.0773993805);
    u_xlatb0.xyz = greaterThanEqual(vec4(0.0404499993, 0.0404499993, 0.0404499993, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.x = (u_xlatb0.x) ? u_xlat2.x : u_xlat1.x;
    u_xlat0.y = (u_xlatb0.y) ? u_xlat2.y : u_xlat1.y;
    u_xlat0.z = (u_xlatb0.z) ? u_xlat2.z : u_xlat1.z;
    u_xlat15 = _MainTex_TexelSize.w * _Params.y;
    u_xlat15 = u_xlat15 / _MainTex_TexelSize.z;
    u_xlat1.y = floor(u_xlat15);
    u_xlat1.x = _Params.y;
    u_xlat1.xy = _MainTex_TexelSize.zw / u_xlat1.xy;
    u_xlat2.xy = hlslcc_FragCoord.xy / u_xlat1.xy;
    u_xlat2.xy = floor(u_xlat2.xy);
    u_xlat2.xy = u_xlat2.xy + vec2(0.5, 0.5);
    u_xlat12.xy = u_xlat1.xy * u_xlat2.xy;
    u_xlat2.xy = (-u_xlat2.xy) * u_xlat1.xy + hlslcc_FragCoord.xy;
    u_xlat15 = min(u_xlat1.y, u_xlat1.x);
    u_xlat15 = u_xlat15 * 0.707106769;
    u_xlat1.xy = u_xlat12.xy / _MainTex_TexelSize.zw;
    u_xlat1.xy = clamp(u_xlat1.xy, 0.0, 1.0);
    u_xlat1.xy = u_xlat1.xy * vec2(_RenderViewportScaleFactor);
    u_xlat1.xy = texture(sampler2D(_CameraMotionVectorsTexture, sampler_CameraMotionVectorsTexture), u_xlat1.xy).xy;
    u_xlat1.xy = u_xlat1.xy * vec2(1.0, -1.0);
    u_xlat11 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat12.x = inversesqrt(u_xlat11);
    u_xlatb11 = u_xlat11!=0.0;
    u_xlat3.xy = u_xlat1.xy * u_xlat12.xx;
    u_xlat3.z = (-u_xlat3.y);
    u_xlat1.x = dot(u_xlat3.xz, u_xlat2.xy);
    u_xlat1.y = dot(u_xlat3.yx, u_xlat2.xy);
    u_xlat2.x = u_xlat16 * u_xlat15;
    u_xlat15 = u_xlat15 * u_xlat16 + -2.0;
    u_xlat7.xy = (-u_xlat2.xx) * vec2(0.375, -0.0625) + u_xlat1.xy;
    u_xlat3.xyz = u_xlat2.xxx * vec3(0.5, 0.25, -0.125);
    u_xlat4.x = u_xlat3.x;
    u_xlat4.y = 0.0;
    u_xlat3.xw = (-u_xlat2.xx) * vec2(0.25, 0.125) + u_xlat4.xy;
    u_xlat3.xw = (-u_xlat3.xw) + u_xlat4.xy;
    u_xlat16 = dot(u_xlat3.xw, u_xlat3.xw);
    u_xlat16 = sqrt(u_xlat16);
    u_xlat4.xy = u_xlat3.xw / vec2(u_xlat16);
    u_xlat4.z = (-u_xlat4.x);
    u_xlat16 = dot(u_xlat7.xy, u_xlat4.yz);
    u_xlat7.xy = (-u_xlat2.xx) * vec2(0.375, 0.0625) + u_xlat1.xy;
    u_xlat3.xw = u_xlat1.xy + vec2(1.0, -0.0);
    u_xlat1.x = u_xlat2.x * -0.25 + u_xlat1.x;
    u_xlat6 = dot((-u_xlat3.yz), (-u_xlat3.yz));
    u_xlat6 = sqrt(u_xlat6);
    u_xlat4.xy = (-u_xlat3.yz) / vec2(u_xlat6);
    u_xlat4.z = (-u_xlat4.x);
    u_xlat6 = dot(u_xlat7.xy, u_xlat4.yz);
    u_xlat6 = max(u_xlat16, u_xlat6);
    u_xlat1.x = max((-u_xlat1.x), u_xlat6);
    u_xlat6 = u_xlat15 / abs(u_xlat15);
    u_xlat16 = u_xlat6 * u_xlat3.x;
    u_xlat6 = (-u_xlat6) * u_xlat3.w;
    u_xlat15 = -abs(u_xlat15) * 0.5 + abs(u_xlat16);
    u_xlat15 = max(u_xlat15, abs(u_xlat6));
    u_xlat15 = min(u_xlat15, u_xlat1.x);
    u_xlat15 = clamp(u_xlat15, 0.0, 1.0);
    u_xlat15 = (-u_xlat15) + 1.0;
    u_xlat15 = u_xlatb11 ? u_xlat15 : float(0.0);
    SV_Target0.xyz = vec3(u_xlat15) + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

