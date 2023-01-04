#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

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
layout(set = 1, binding = 2, std140) uniform VGlobals {
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	mat4x4 unity_MatrixVP;
	float _Exposure;
	vec3 _GroundColor;
	vec3 _SkyTint;
	float _AtmosphereThickness;
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
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec3 vs_TEXCOORD1;
layout(location = 2) out highp vec3 vs_TEXCOORD2;
layout(location = 3) out highp vec3 vs_TEXCOORD3;
void main()
{
vec3 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
vec3 u_xlat9;
float u_xlat14;
vec2 u_xlat16;
float u_xlat21;
float u_xlat22;
float u_xlat23;
    u_xlat0.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat0.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat0.xyz;
    u_xlat0.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat0.xyz;
    u_xlat1.xyz = u_xlat0.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat2 = u_xlat1.yyyy * unity_MatrixVP[1];
    u_xlat2 = unity_MatrixVP[0] * u_xlat1.xxxx + u_xlat2;
    u_xlat1 = unity_MatrixVP[2] * u_xlat1.zzzz + u_xlat2;
    gl_Position = u_xlat1 + unity_MatrixVP[3];
    u_xlat1 = log2(abs(vec4(_SkyTint.x, _SkyTint.y, _SkyTint.z, _AtmosphereThickness)));
    u_xlat1 = u_xlat1 * vec4(0.454545468, 0.454545468, 0.454545468, 2.5);
    u_xlat1 = exp2(u_xlat1);
    u_xlat1.xyz = (-u_xlat1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.300000012, 0.300000042, 0.300000012) + vec3(0.5, 0.419999987, 0.324999988);
    u_xlat1.xyz = u_xlat1.xyz * u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat1.xyz;
    u_xlat1.xyz = vec3(1.0, 1.0, 1.0) / u_xlat1.xyz;
    u_xlat2.xy = u_xlat1.ww * vec2(0.049999997, 0.0314159282);
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat3.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlatb0 = u_xlat3.y>=0.0;
    if(u_xlatb0){
        u_xlat0.x = u_xlat3.y * u_xlat3.y + 0.0506249666;
        u_xlat0.x = sqrt(u_xlat0.x);
        u_xlat0.x = (-u_xlat0.y) * u_xlat21 + u_xlat0.x;
        u_xlat7 = (-u_xlat3.y) * 1.0 + 1.0;
        u_xlat14 = u_xlat7 * 5.25 + -6.80000019;
        u_xlat14 = u_xlat7 * u_xlat14 + 3.82999992;
        u_xlat14 = u_xlat7 * u_xlat14 + 0.458999991;
        u_xlat7 = u_xlat7 * u_xlat14 + -0.00286999997;
        u_xlat7 = u_xlat7 * 1.44269502;
        u_xlat0.y = exp2(u_xlat7);
        u_xlat0.xyz = u_xlat0.xyx * vec3(0.5, 0.246031836, 20.0);
        u_xlat4.xyz = u_xlat0.xxx * u_xlat3.xyz;
        u_xlat4.xyz = u_xlat4.xyz * vec3(0.5, 0.5, 0.5) + vec3(0.0, 1.00010002, 0.0);
        u_xlat21 = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat21 = sqrt(u_xlat21);
        u_xlat22 = (-u_xlat21) + 1.0;
        u_xlat22 = u_xlat22 * 230.831207;
        u_xlat22 = exp2(u_xlat22);
        u_xlat16.x = dot(_MainLightPosition.xyz, u_xlat4.xyz);
        u_xlat16.x = u_xlat16.x / u_xlat21;
        u_xlat23 = dot(u_xlat3.xyz, u_xlat4.xyz);
        u_xlat21 = u_xlat23 / u_xlat21;
        u_xlat16.x = (-u_xlat16.x) + 1.0;
        u_xlat23 = u_xlat16.x * 5.25 + -6.80000019;
        u_xlat23 = u_xlat16.x * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat16.x * u_xlat23 + 0.458999991;
        u_xlat16.x = u_xlat16.x * u_xlat23 + -0.00286999997;
        u_xlat16.x = u_xlat16.x * 1.44269502;
        u_xlat16.x = exp2(u_xlat16.x);
        u_xlat21 = (-u_xlat21) + 1.0;
        u_xlat23 = u_xlat21 * 5.25 + -6.80000019;
        u_xlat23 = u_xlat21 * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat21 * u_xlat23 + 0.458999991;
        u_xlat21 = u_xlat21 * u_xlat23 + -0.00286999997;
        u_xlat21 = u_xlat21 * 1.44269502;
        u_xlat21 = exp2(u_xlat21);
        u_xlat21 = u_xlat21 * 0.25;
        u_xlat21 = u_xlat16.x * 0.25 + (-u_xlat21);
        u_xlat21 = u_xlat22 * u_xlat21 + u_xlat0.y;
        u_xlat21 = max(u_xlat21, 0.0);
        u_xlat21 = min(u_xlat21, 50.0);
        u_xlat5.xyz = u_xlat1.xyz * u_xlat2.yyy + vec3(0.0125663709, 0.0125663709, 0.0125663709);
        u_xlat6.xyz = (-vec3(u_xlat21)) * u_xlat5.xyz;
        u_xlat6.xyz = u_xlat6.xyz * vec3(1.44269502, 1.44269502, 1.44269502);
        u_xlat6.xyz = exp2(u_xlat6.xyz);
        u_xlat21 = u_xlat0.z * u_xlat22;
        u_xlat4.xyz = u_xlat3.xyz * u_xlat0.xxx + u_xlat4.xyz;
        u_xlat0.x = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat0.x = sqrt(u_xlat0.x);
        u_xlat22 = (-u_xlat0.x) + 1.0;
        u_xlat22 = u_xlat22 * 230.831207;
        u_xlat22 = exp2(u_xlat22);
        u_xlat16.x = dot(_MainLightPosition.xyz, u_xlat4.xyz);
        u_xlat16.x = u_xlat16.x / u_xlat0.x;
        u_xlat23 = dot(u_xlat3.xyz, u_xlat4.xyz);
        u_xlat0.x = u_xlat23 / u_xlat0.x;
        u_xlat16.x = (-u_xlat16.x) + 1.0;
        u_xlat23 = u_xlat16.x * 5.25 + -6.80000019;
        u_xlat23 = u_xlat16.x * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat16.x * u_xlat23 + 0.458999991;
        u_xlat16.x = u_xlat16.x * u_xlat23 + -0.00286999997;
        u_xlat16.x = u_xlat16.x * 1.44269502;
        u_xlat16.x = exp2(u_xlat16.x);
        u_xlat0.x = (-u_xlat0.x) + 1.0;
        u_xlat23 = u_xlat0.x * 5.25 + -6.80000019;
        u_xlat23 = u_xlat0.x * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat0.x * u_xlat23 + 0.458999991;
        u_xlat0.x = u_xlat0.x * u_xlat23 + -0.00286999997;
        u_xlat0.x = u_xlat0.x * 1.44269502;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * 0.25;
        u_xlat0.x = u_xlat16.x * 0.25 + (-u_xlat0.x);
        u_xlat0.x = u_xlat22 * u_xlat0.x + u_xlat0.y;
        u_xlat0.x = max(u_xlat0.x, 0.0);
        u_xlat0.x = min(u_xlat0.x, 50.0);
        u_xlat4.xyz = u_xlat5.xyz * (-u_xlat0.xxx);
        u_xlat4.xyz = u_xlat4.xyz * vec3(1.44269502, 1.44269502, 1.44269502);
        u_xlat4.xyz = exp2(u_xlat4.xyz);
        u_xlat0.x = u_xlat0.z * u_xlat22;
        u_xlat0.xyz = u_xlat0.xxx * u_xlat4.xyz;
        u_xlat0.xyz = u_xlat6.xyz * vec3(u_xlat21) + u_xlat0.xyz;
        u_xlat4.xyz = u_xlat1.xyz * u_xlat2.xxx;
        u_xlat4.xyz = u_xlat0.xyz * u_xlat4.xyz;
        u_xlat0.xyz = u_xlat0.xyz * vec3(0.0199999996, 0.0199999996, 0.0199999996);
    } else {
        u_xlat21 = min(u_xlat3.y, -0.00100000005);
        u_xlat21 = -9.99999975e-05 / u_xlat21;
        u_xlat5.xyz = vec3(u_xlat21) * u_xlat3.xyz + vec3(0.0, 1.00010002, 0.0);
        u_xlat22 = dot((-u_xlat3.xyz), u_xlat5.xyz);
        u_xlat16.x = dot(_MainLightPosition.xyz, u_xlat5.xyz);
        u_xlat22 = (-u_xlat22) + 1.0;
        u_xlat23 = u_xlat22 * 5.25 + -6.80000019;
        u_xlat23 = u_xlat22 * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat22 * u_xlat23 + 0.458999991;
        u_xlat22 = u_xlat22 * u_xlat23 + -0.00286999997;
        u_xlat22 = u_xlat22 * 1.44269502;
        u_xlat22 = exp2(u_xlat22);
        u_xlat16.x = (-u_xlat16.x) + 1.0;
        u_xlat23 = u_xlat16.x * 5.25 + -6.80000019;
        u_xlat23 = u_xlat16.x * u_xlat23 + 3.82999992;
        u_xlat23 = u_xlat16.x * u_xlat23 + 0.458999991;
        u_xlat16.x = u_xlat16.x * u_xlat23 + -0.00286999997;
        u_xlat16.x = u_xlat16.x * 1.44269502;
        u_xlat16.x = exp2(u_xlat16.x);
        u_xlat5.xy = vec2(u_xlat22) * vec2(0.25, 0.249900013);
        u_xlat22 = u_xlat16.x * 0.25 + u_xlat5.x;
        u_xlat16.xy = vec2(u_xlat21) * vec2(0.5, 20.0);
        u_xlat5.xzw = u_xlat16.xxx * u_xlat3.xyz;
        u_xlat5.xzw = u_xlat5.xzw * vec3(0.5, 0.5, 0.5) + vec3(0.0, 1.00010002, 0.0);
        u_xlat21 = dot(u_xlat5.xzw, u_xlat5.xzw);
        u_xlat21 = sqrt(u_xlat21);
        u_xlat21 = (-u_xlat21) + 1.0;
        u_xlat21 = u_xlat21 * 230.831207;
        u_xlat21 = exp2(u_xlat21);
        u_xlat22 = u_xlat21 * u_xlat22 + (-u_xlat5.y);
        u_xlat22 = max(u_xlat22, 0.0);
        u_xlat22 = min(u_xlat22, 50.0);
        u_xlat5.xyz = u_xlat1.xyz * u_xlat2.yyy + vec3(0.0125663709, 0.0125663709, 0.0125663709);
        u_xlat5.xyz = (-vec3(u_xlat22)) * u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz * vec3(1.44269502, 1.44269502, 1.44269502);
        u_xlat0.xyz = exp2(u_xlat5.xyz);
        u_xlat21 = u_xlat16.y * u_xlat21;
        u_xlat9.xyz = vec3(u_xlat21) * u_xlat0.xyz;
        u_xlat1.xyz = u_xlat1.xyz * u_xlat2.xxx + vec3(0.0199999996, 0.0199999996, 0.0199999996);
        u_xlat4.xyz = u_xlat1.xyz * u_xlat9.xyz;
    }
    vs_TEXCOORD0.xyz = (-in_POSITION0.xyz);
    u_xlat1.xyz = vec3(_GroundColor.x, _GroundColor.y, _GroundColor.z) * u_xlat0.xyz + u_xlat4.xyz;
    vs_TEXCOORD1.xyz = u_xlat1.xyz * vec3(_Exposure);
    u_xlat21 = dot(_MainLightPosition.xyz, (-u_xlat3.xyz));
    u_xlat21 = u_xlat21 * u_xlat21;
    u_xlat21 = u_xlat21 * 0.75 + 0.75;
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat4.xyz;
    vs_TEXCOORD2.xyz = u_xlat1.xyz * vec3(_Exposure);
    u_xlat21 = dot(_MainLightColor.xyz, _MainLightColor.xyz);
    u_xlat21 = sqrt(u_xlat21);
    u_xlat21 = max(u_xlat21, 0.25);
    u_xlat21 = min(u_xlat21, 1.0);
    u_xlat0.xyz = u_xlat0.xyz;
    u_xlat0.xyz = clamp(u_xlat0.xyz, 0.0, 1.0);
    u_xlat0.xyz = u_xlat0.xyz * _MainLightColor.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(15.0, 15.0, 15.0);
    vs_TEXCOORD3.xyz = u_xlat0.xyz / vec3(u_xlat21);
    return;
}

