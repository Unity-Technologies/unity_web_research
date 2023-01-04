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
	vec4 _ScaledScreenParams;
	vec2 _GlobalMipBias;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	uint _RenderingLayerMaxInt;
	float _RenderingLayerRcpMaxInt;
	vec4 _TimeParameters;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ScreenParams;
	vec4 unity_OrthoParams;
	mat4x4 unity_MatrixV;
	vec4 _BA_CloudData;
};
layout(set = 1, binding = 1, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(set = 1, binding = 2, std140) uniform UnityPerMaterial {
	vec4 _Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_TexelSize;
	vec4 Color_7eff2e7fc27440719d0a871a39dabdd3;
	float Vector1_2a375228e8d3437382814520b0cd8644;
	float Vector1_5f4b185241524942830132fc71554a33;
	float Vector1_2d1f70e8efb04843b1f8184ae06925e0;
	float Vector1_33982692;
	float Vector1_10DA9AB3;
	vec2 Vector2_65050940ec244ae3bf42db206c2dccca;
	vec4 Texture2D_4B382D9C_TexelSize;
	vec4 Texture2D_3DC46A50_TexelSize;
	mat4x4 _BA_SkyboxMatrix;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0;
layout(set = 0, binding = 1) uniform mediump texture2D Texture2D_4B382D9C;
layout(set = 0, binding = 2) uniform mediump texture2D Texture2D_3DC46A50;
layout(location = 0) in highp vec3 vs_INTERP0;
layout(location = 1) in highp vec3 vs_INTERP1;
layout(location = 2) in highp vec4 vs_INTERP2;
layout(location = 3) in highp vec4 vs_INTERP3;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0;
layout(set = 0, binding = 4) uniform mediump  sampler samplerTexture2D_4B382D9C;
layout(set = 0, binding = 5) uniform mediump  sampler samplerTexture2D_3DC46A50;
void main()
{
vec3 u_xlat0;
uint u_xlatu0;
bvec2 u_xlatb0;
vec4 u_xlat1;
bvec3 u_xlatb1;
vec3 u_xlat2;
bvec3 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec2 u_xlat12;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
bool u_xlatb19;
vec4 hlslcc_FragCoord = vec4(gl_FragCoord.xyz, 1.0/gl_FragCoord.w);
    u_xlatb0.x = 0.0<vs_INTERP2.w;
    u_xlatb0.y = unity_WorldTransformParams.w>=0.0;
    u_xlat0.x = (u_xlatb0.x) ? float(1.0) : float(-1.0);
    u_xlat0.y = (u_xlatb0.y) ? float(1.0) : float(-1.0);
    u_xlat0.x = u_xlat0.y * u_xlat0.x;
    u_xlat6.xyz = vs_INTERP1.yzx * vs_INTERP2.xyz;
    u_xlat6.xyz = vs_INTERP1.xyz * vs_INTERP2.yzx + (-u_xlat6.xyz);
    u_xlat0.xyz = u_xlat6.xyz * u_xlat0.xxx;
    u_xlat18 = dot(vs_INTERP1.xyz, vs_INTERP1.xyz);
    u_xlat18 = sqrt(u_xlat18);
    u_xlat18 = float(1.0) / u_xlat18;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * vs_INTERP1.yzx;
    u_xlat2.xyz = vec3(u_xlat18) * vs_INTERP2.xyz;
    u_xlat3.xyz = u_xlat0.xyz * u_xlat1.xyz;
    u_xlat3.xyz = u_xlat0.xzy * u_xlat1.zyx + (-u_xlat3.yxz);
    u_xlat18 = dot(u_xlat2.yxz, u_xlat3.xyz);
    u_xlatb18 = u_xlat18<0.0;
    u_xlat18 = (u_xlatb18) ? -1.0 : 1.0;
    u_xlat19 = u_xlat0.x * u_xlat2.x;
    u_xlat3.z = u_xlat2.z * u_xlat0.y + (-u_xlat19);
    u_xlat0.y = dot(u_xlat0.yzx, _MainLightPosition.xyz);
    u_xlat19 = u_xlat1.z * u_xlat2.z;
    u_xlat3.y = u_xlat1.y * u_xlat2.x + (-u_xlat19);
    u_xlat0.z = dot(u_xlat1.zxy, _MainLightPosition.xyz);
    u_xlat0.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat3.xyz;
    u_xlat18 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat18 = max(u_xlat18, 1.17549435e-37);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat1.xyz * u_xlat1.xyz;
    u_xlatb1.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat1.xyzx).xyz;
    u_xlat3 = texture(sampler2D(Texture2D_4B382D9C, samplerTexture2D_4B382D9C), vs_INTERP3.xy, _GlobalMipBias.x);
    u_xlat1.x = (u_xlatb1.x) ? u_xlat3.z : u_xlat3.x;
    u_xlat1.y = (u_xlatb1.y) ? u_xlat3.y : u_xlat3.w;
    u_xlat1.xy = u_xlat2.xy * u_xlat1.xy;
    u_xlat18 = u_xlat1.y + u_xlat1.x;
    u_xlat4 = texture(sampler2D(Texture2D_3DC46A50, samplerTexture2D_3DC46A50), vs_INTERP3.xy, _GlobalMipBias.x);
    u_xlat1.x = (u_xlatb1.z) ? u_xlat4.y : u_xlat4.x;
    u_xlat1.y = u_xlat1.x * u_xlat2.z + u_xlat18;
    u_xlat1.x = float(1.0);
    u_xlat1.z = float(1.0);
    u_xlat1.w = float(1.0);
    u_xlat18 = dot(u_xlat1.yzz, u_xlat1.yzz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat1.yzy * u_xlat1.zzy;
    u_xlat18 = u_xlat1.z * u_xlat1.z + (-u_xlat2.z);
    u_xlat5.x = dot(unity_SHBr, u_xlat2.xxyy);
    u_xlat5.y = dot(unity_SHBg, u_xlat2.xxyy);
    u_xlat5.z = dot(unity_SHBb, u_xlat2.xxyy);
    u_xlat2.xyz = unity_SHC.xyz * vec3(u_xlat18) + u_xlat5.xyz;
    u_xlat5.x = dot(unity_SHAr.yxzw, u_xlat1.yzzw);
    u_xlat5.y = dot(unity_SHAg.yxzw, u_xlat1.yzzw);
    u_xlat5.z = dot(unity_SHAb, u_xlat1);
    u_xlat1.xyz = u_xlat2.xyz + u_xlat5.xyz;
    u_xlat1.xyz = max(u_xlat1.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.xyz = u_xlat1.xyz * vec3(vec3(Vector1_5f4b185241524942830132fc71554a33, Vector1_5f4b185241524942830132fc71554a33, Vector1_5f4b185241524942830132fc71554a33));
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlatb2.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat0.xyzx).xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat0.xyz;
    u_xlat2.x = (u_xlatb2.x) ? u_xlat3.z : u_xlat3.x;
    u_xlat2.y = (u_xlatb2.y) ? u_xlat3.y : u_xlat3.w;
    u_xlat18 = (u_xlatb2.z) ? u_xlat4.y : u_xlat4.x;
    u_xlat0.xy = u_xlat0.xy * u_xlat2.xy;
    u_xlat0.x = u_xlat0.y + u_xlat0.x;
    u_xlat0.x = u_xlat18 * u_xlat0.z + u_xlat0.x;
    u_xlat0.x = log2(u_xlat0.x);
    u_xlat6.x = Vector1_2a375228e8d3437382814520b0cd8644 * 0.5;
    u_xlat6.x = max(u_xlat6.x, 0.00100000005);
    u_xlat0.x = u_xlat0.x * u_xlat6.x;
    u_xlat0.x = exp2(u_xlat0.x);
    u_xlat6.xyz = (-vs_INTERP0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat19 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat19 = inversesqrt(u_xlat19);
    u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat19);
    u_xlatb19 = unity_OrthoParams.w==0.0;
    u_xlat2.x = (u_xlatb19) ? u_xlat6.x : unity_MatrixV[0].z;
    u_xlat2.y = (u_xlatb19) ? u_xlat6.y : unity_MatrixV[1].z;
    u_xlat2.z = (u_xlatb19) ? u_xlat6.z : unity_MatrixV[2].z;
    u_xlat6.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat6.x = inversesqrt(u_xlat6.x);
    u_xlat6.xyz = u_xlat6.xxx * u_xlat2.xyz;
    u_xlat6.x = dot(u_xlat6.xyz, (-_MainLightPosition.xyz));
    u_xlat6.x = clamp(u_xlat6.x, 0.0, 1.0);
    u_xlat6.x = log2(u_xlat6.x);
    u_xlat6.x = u_xlat6.x * 150.0;
    u_xlat6.x = exp2(u_xlat6.x);
    u_xlat6.x = u_xlat6.x + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat6.x;
    u_xlat0.xyz = _MainLightColor.xyz * u_xlat0.xxx + u_xlat1.xyz;
    SV_Target0.xyz = u_xlat0.xyz * Color_7eff2e7fc27440719d0a871a39dabdd3.xyz;
    u_xlatb0.x = _ProjectionParams.x<0.0;
    u_xlat6.x = (-hlslcc_FragCoord.y) + _ScaledScreenParams.y;
    u_xlat0.y = (u_xlatb0.x) ? u_xlat6.x : hlslcc_FragCoord.y;
    u_xlat0.x = hlslcc_FragCoord.x;
    u_xlat0.xy = u_xlat0.xy / _ScaledScreenParams.xy;
    u_xlat0.z = (-u_xlat0.y) + 1.0;
    u_xlat0.xy = u_xlat0.xz * _ScreenParams.xy;
    u_xlat0.xy = floor(u_xlat0.xy);
    u_xlat12.x = dot(unity_ObjectToWorld[3].xyz, unity_ObjectToWorld[3].xyz);
    u_xlat12.x = sqrt(u_xlat12.x);
    u_xlat1.xy = _TimeParameters.xx * vec2(0.0179999992, 0.319999993);
    u_xlat12.xy = u_xlat12.xx * vec2(0.32100001, 0.32100001) + u_xlat1.xy;
    u_xlat12.xy = fract(u_xlat12.xy);
    u_xlat12.x = dot(u_xlat12.xx, vec2(12.9898005, 78.2330017));
    u_xlat12.y = dot(u_xlat12.yy, vec2(12.9898005, 78.2330017));
    u_xlat12.xy = sin(u_xlat12.xy);
    u_xlat12.xy = u_xlat12.xy * vec2(43758.5469, 43758.5469);
    u_xlat12.xy = fract(u_xlat12.xy);
    u_xlat1.xy = u_xlat12.xy * _ScreenParams.xy;
    u_xlat0.xy = u_xlat0.xy + u_xlat1.xy;
    u_xlat0.xy = u_xlat0.xy * vec2(0.00390625, 0.00390625);
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat0.x = texture(sampler2D(_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0), u_xlat0.xy, _GlobalMipBias.x).y;
    u_xlat0.x = u_xlat0.x * 0.300000012 + 0.800000012;
    u_xlat0.x = (-u_xlat0.x) * _BA_CloudData.w + 1.0;
    u_xlat0.x = (-u_xlat0.x) + u_xlat4.z;
    u_xlat6.x = (-u_xlat4.w) + 1.0;
    u_xlat6.x = log2(u_xlat6.x);
    u_xlat6.x = u_xlat6.x * Vector1_2a375228e8d3437382814520b0cd8644;
    u_xlat6.x = exp2(u_xlat6.x);
    u_xlat6.x = (-u_xlat6.x) + 1.0;
    u_xlat0.x = u_xlat0.x * 10.0;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat12.x = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat12.x;
    SV_Target0.w = min(u_xlat0.x, u_xlat6.x);
    u_xlatu0 = _RenderingLayerMaxInt & floatBitsToUint(unity_RenderingLayer.x);
    u_xlat0.x = float(u_xlatu0);
    SV_Target1.x = u_xlat0.x * _RenderingLayerRcpMaxInt;
    SV_Target1.x = clamp(SV_Target1.x, 0.0, 1.0);
    SV_Target1.yzw = vec3(0.0, 0.0, 0.0);
    return;
}

