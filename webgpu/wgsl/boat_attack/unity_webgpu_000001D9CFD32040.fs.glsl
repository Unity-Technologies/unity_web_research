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
	vec4 _SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D_TexelSize;
	vec4 _MainTex_TexelSize;
	vec4 Texture2D_DE8BF47E_TexelSize;
	float Vector1_6E11FCEA;
	float Vector1_A492C01C;
	float Vector1_8B35DE98;
	vec4 Texture2D_C005B064_TexelSize;
	vec4 Texture2D_D7D66558_TexelSize;
	float Vector1_90E376AD;
};
layout(set = 0, binding = 0) uniform mediump texture2D _SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D;
layout(set = 0, binding = 1) uniform mediump texture2D Texture2D_DE8BF47E;
layout(set = 0, binding = 2) uniform mediump texture2D Texture2D_C005B064;
layout(location = 0) in highp  vec4 vs_INTERP0;
layout(location = 1) in highp  vec4 vs_INTERP1;
layout(location = 2) in highp  vec3 vs_INTERP2;
layout(location = 3) in highp  vec3 vs_INTERP3;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
bvec2 u_xlatb5;
vec3 u_xlat6;
float u_xlat11;
float u_xlat15;
float u_xlat16;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D;
layout(set = 0, binding = 4) uniform mediump  sampler samplerTexture2D_DE8BF47E;
layout(set = 0, binding = 5) uniform mediump  sampler samplerTexture2D_C005B064;
void main()
{
    u_xlat0.x = Vector1_A492C01C + -10.0;
    u_xlat0.x = (-u_xlat0.x) + vs_INTERP2.y;
    u_xlat0.x = u_xlat0.x * 0.0500000007;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat5.x = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat5.x;
    u_xlatb5.x = 0.0<vs_INTERP0.w;
    u_xlatb5.y = unity_WorldTransformParams.w>=0.0;
    u_xlat5.x = (u_xlatb5.x) ? float(1.0) : float(-1.0);
    u_xlat5.y = (u_xlatb5.y) ? float(1.0) : float(-1.0);
    u_xlat5.x = u_xlat5.y * u_xlat5.x;
    u_xlat1.xyz = vs_INTERP0.yzx * vs_INTERP3.zxy;
    u_xlat1.xyz = vs_INTERP3.yzx * vs_INTERP0.zxy + (-u_xlat1.xyz);
    u_xlat5.xyz = u_xlat5.xxx * u_xlat1.xyz;
    u_xlat1.x = dot(vs_INTERP3.xyz, vs_INTERP3.xyz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = float(1.0) / u_xlat1.x;
    u_xlat6.xyz = u_xlat5.xyz * u_xlat1.xxx;
    u_xlat2.xyz = texture(sampler2D(Texture2D_DE8BF47E, samplerTexture2D_DE8BF47E), vs_INTERP1.xy, _GlobalMipBias.x).yzw;
    u_xlat2.xyz = u_xlat2.zxy * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat6.xyz = u_xlat6.xyz * u_xlat2.yyy;
    u_xlat3.xyz = u_xlat1.xxx * vs_INTERP0.xyz;
    u_xlat4.xyz = u_xlat1.xxx * vs_INTERP3.xyz;
    u_xlat1.xyz = u_xlat2.xxx * u_xlat3.xyz + u_xlat6.xyz;
    u_xlat1.xyz = u_xlat2.zzz * u_xlat4.xyz + u_xlat1.xyz;
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = max(u_xlat1.x, 1.17549435e-38);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * u_xlat1.y;
    u_xlat6.x = (-Vector1_8B35DE98) * 0.0111109996 + 0.949999988;
    u_xlat0.x = u_xlat0.x * u_xlat1.x + (-u_xlat6.x);
    u_xlat0.x = u_xlat0.x * 10.0;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat1.x = u_xlat0.x * -2.0 + 3.0;
    u_xlat0.x = u_xlat0.x * u_xlat0.x;
    u_xlat0.x = u_xlat0.x * u_xlat1.x;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat1.x = dot(unity_ObjectToWorld[0].xyz, unity_ObjectToWorld[0].xyz);
    u_xlat1.w = dot(unity_ObjectToWorld[1].xyz, unity_ObjectToWorld[1].xyz);
    u_xlat1.xy = sqrt(u_xlat1.xw);
    u_xlat16 = dot(unity_ObjectToWorld[2].xyz, unity_ObjectToWorld[2].xyz);
    u_xlat1.z = sqrt(u_xlat16);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * Vector1_90E376AD;
    u_xlat1.x = u_xlat1.x * 30.0;
    u_xlat1.xy = u_xlat1.xx * vs_INTERP1.xy;
    u_xlat1.xyz = texture(sampler2D(_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D, sampler_SampleTexture2D_a490b3241735d68e9ee2d1f1bbfed8dc_Texture_1_Texture2D), u_xlat1.xy, _GlobalMipBias.x).xyw;
    u_xlat1.x = u_xlat1.x * u_xlat1.z;
    u_xlat1.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat11 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat3.xy = u_xlat1.xy + u_xlat2.xy;
    u_xlat1.x = min(u_xlat11, 1.0);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat1.x = max(u_xlat1.x, 1.00000002e-16);
    u_xlat3.z = u_xlat1.x * u_xlat2.z;
    u_xlat1.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat1.x = max(u_xlat1.x, 6.10351562e-05);
    u_xlat1.x = inversesqrt(u_xlat1.x);
    u_xlat6.xy = vs_INTERP1.xy * vec2(4.0, 4.0);
    u_xlat6.xyz = texture(sampler2D(Texture2D_C005B064, samplerTexture2D_C005B064), u_xlat6.xy, _GlobalMipBias.x).xyw;
    u_xlat6.x = u_xlat6.x * u_xlat6.z;
    u_xlat2.xy = u_xlat6.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6.x = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat6.x = min(u_xlat6.x, 1.0);
    u_xlat6.x = (-u_xlat6.x) + 1.0;
    u_xlat6.x = sqrt(u_xlat6.x);
    u_xlat2.z = max(u_xlat6.x, 1.00000002e-16);
    u_xlat1.xyz = u_xlat3.xyz * u_xlat1.xxx + (-u_xlat2.xyz);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat1.yyy;
    u_xlat0.xyz = u_xlat1.xxx * vs_INTERP0.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat1.zzz * vs_INTERP3.xyz + u_xlat0.xyz;
    u_xlat15 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat15 = inversesqrt(u_xlat15);
    SV_Target0.xyz = vec3(u_xlat15) * u_xlat0.xyz;
    SV_Target0.w = 0.0;
    return;
}

