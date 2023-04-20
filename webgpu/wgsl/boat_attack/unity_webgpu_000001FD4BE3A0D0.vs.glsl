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
	vec4 _TimeParameters;
	mat4x4 unity_MatrixVP;
	mat4x4 _PrevViewProjMatrix;
	mat4x4 _NonJitteredViewProjMatrix;
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
layout(location = 0) in highp vec3 in_POSITION0;
layout(location = 1) in highp vec3 in_NORMAL0;
layout(location = 2) in highp vec4 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_COLOR0;
layout(location = 4) in highp vec3 in_TEXCOORD4;
layout(location = 0) out highp vec3 vs_CLIP_POSITION_NO_JITTER0;
layout(location = 1) out highp vec3 vs_PREVIOUS_CLIP_POSITION_NO_JITTER0;
layout(location = 2) out highp vec4 vs_INTERP0;
highp vec3 vs_INTERP1;
vec4 u_xlat0;
bool u_xlatb0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec2 u_xlat14;
float u_xlat22;
float u_xlat23;
void main()
{
    u_xlat0.x = dot(in_NORMAL0.xyz, unity_WorldToObject[0].xyz);
    u_xlat0.y = dot(in_NORMAL0.xyz, unity_WorldToObject[1].xyz);
    u_xlat0.z = dot(in_NORMAL0.xyz, unity_WorldToObject[2].xyz);
    u_xlat7.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat7.x = max(u_xlat7.x, 1.17549435e-38);
    u_xlat7.x = inversesqrt(u_xlat7.x);
    u_xlat0.xy = u_xlat7.xx * u_xlat0.xz;
    u_xlat14.xy = unity_ObjectToWorld[3].xz * vec2(2.0, 0.25);
    u_xlat14.x = u_xlat14.y + u_xlat14.x;
    u_xlat14.x = u_xlat14.x + _TimeParameters.x;
    u_xlat14.x = sin(u_xlat14.x);
    u_xlat14.x = u_xlat14.x + 1.0;
    u_xlat14.xy = u_xlat14.xx * vec2(-0.0500000007, -0.174999997);
    u_xlat1.x = dot(in_POSITION0.xyz, in_POSITION0.xyz);
    u_xlat1.x = sqrt(u_xlat1.x);
    u_xlat8.xyz = in_POSITION0.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat8.xyz = unity_ObjectToWorld[0].xyz * in_POSITION0.xxx + u_xlat8.xyz;
    u_xlat8.xyz = unity_ObjectToWorld[2].xyz * in_POSITION0.zzz + u_xlat8.xyz;
    u_xlat8.xyz = u_xlat8.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat2.x = in_POSITION0.y * 0.0500000007 + 1.0;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.x = u_xlat2.x * u_xlat2.x + (-u_xlat2.x);
    u_xlat2.xz = u_xlat14.xy * u_xlat2.xx;
    u_xlat2.y = 0.0;
    u_xlat8.xyz = u_xlat8.xyz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat8.yyy * unity_WorldToObject[1].xyz;
    u_xlat2.xyz = unity_WorldToObject[0].xyz * u_xlat8.xxx + u_xlat2.xyz;
    u_xlat8.xyz = unity_WorldToObject[2].xyz * u_xlat8.zzz + u_xlat2.xyz;
    u_xlat8.xyz = u_xlat8.xyz + unity_WorldToObject[3].xyz;
    u_xlat2.x = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat2.x = inversesqrt(u_xlat2.x);
    u_xlat8.xyz = u_xlat8.xyz * u_xlat2.xxx;
    u_xlat1.xyz = u_xlat8.xyz * u_xlat1.xxx;
    u_xlat2.x = unity_ObjectToWorld[0].y;
    u_xlat2.y = unity_ObjectToWorld[1].y;
    u_xlat2.z = unity_ObjectToWorld[2].y;
    u_xlat2.w = unity_ObjectToWorld[3].y;
    u_xlat22 = dot(u_xlat2, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat9.xz = in_COLOR0.xy * vec2(0.100000001, 3.29999995);
    u_xlat22 = in_COLOR0.y * 4.5 + u_xlat22;
    u_xlat9.y = dot(u_xlat1.xyz, vec3(u_xlat22));
    u_xlat3 = u_xlat9.yyzz + _TimeParameters.xxxx;
    u_xlat3 = u_xlat3 * vec4(3.95000005, 1.38600004, 0.75, 0.386000007) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat3 = u_xlat3 * vec4(0.25, 0.25, 0.25, 0.25) + vec4(0.5, 0.5, 0.5, 0.5);
    u_xlat3 = fract(u_xlat3);
    u_xlat3 = u_xlat3 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
    u_xlat4 = abs(u_xlat3) * abs(u_xlat3);
    u_xlat3 = -abs(u_xlat3) * vec4(2.0, 2.0, 2.0, 2.0) + vec4(3.0, 3.0, 3.0, 3.0);
    u_xlat3 = u_xlat4 * u_xlat3 + vec4(-0.5, -0.5, -0.5, -0.5);
    u_xlat2.xzw = u_xlat3.ywy + u_xlat3.xzx;
    u_xlat3.xz = u_xlat0.xy * u_xlat9.xx;
    u_xlat3.y = in_COLOR0.z * -0.349999994 + 0.349999994;
    u_xlat1.xyz = u_xlat2.xzw * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat2.xyz = u_xlat1.yyy * unity_ObjectToWorld[1].xyz;
    u_xlat2.xyz = unity_ObjectToWorld[0].xyz * u_xlat1.xxx + u_xlat2.xyz;
    u_xlat2.xyz = unity_ObjectToWorld[2].xyz * u_xlat1.zzz + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat2.xyz + unity_ObjectToWorld[3].xyz;
    u_xlat4 = u_xlat2.yyyy * unity_MatrixVP[1];
    u_xlat4 = unity_MatrixVP[0] * u_xlat2.xxxx + u_xlat4;
    u_xlat4 = unity_MatrixVP[2] * u_xlat2.zzzz + u_xlat4;
    u_xlat4 = u_xlat4 + unity_MatrixVP[3];
    gl_Position.z = (-unity_MotionVectorsParams.z) * u_xlat4.w + u_xlat4.z;
    u_xlatb0 = unity_MotionVectorsParams.y!=0.0;
    if(u_xlatb0){
        u_xlatb0 = unity_MotionVectorsParams.x==1.0;
        if(u_xlatb0){
            u_xlat0.x = dot(in_TEXCOORD4.xyz, in_TEXCOORD4.xyz);
            u_xlat0.x = sqrt(u_xlat0.x);
            u_xlat5.xyz = in_TEXCOORD4.yyy * unity_ObjectToWorld[1].xyz;
            u_xlat5.xyz = unity_ObjectToWorld[0].xyz * in_TEXCOORD4.xxx + u_xlat5.xyz;
            u_xlat5.xyz = unity_ObjectToWorld[2].xyz * in_TEXCOORD4.zzz + u_xlat5.xyz;
            u_xlat5.xyz = u_xlat5.xyz + unity_ObjectToWorld[3].xyz;
            u_xlat7.x = in_TEXCOORD4.y * 0.0500000007 + 1.0;
            u_xlat7.x = u_xlat7.x * u_xlat7.x;
            u_xlat7.x = u_xlat7.x * u_xlat7.x + (-u_xlat7.x);
            u_xlat6.xz = u_xlat14.xy * u_xlat7.xx;
            u_xlat6.y = 0.0;
            u_xlat7.xyz = u_xlat5.xyz + u_xlat6.xyz;
            u_xlat5.xyz = u_xlat7.yyy * unity_WorldToObject[1].xyz;
            u_xlat5.xyz = unity_WorldToObject[0].xyz * u_xlat7.xxx + u_xlat5.xyz;
            u_xlat7.xyz = unity_WorldToObject[2].xyz * u_xlat7.zzz + u_xlat5.xyz;
            u_xlat7.xyz = u_xlat7.xyz + unity_WorldToObject[3].xyz;
            u_xlat23 = dot(u_xlat7.xyz, u_xlat7.xyz);
            u_xlat23 = inversesqrt(u_xlat23);
            u_xlat7.xyz = u_xlat7.xyz * vec3(u_xlat23);
            u_xlat0.xyz = u_xlat7.xyz * u_xlat0.xxx;
            u_xlat5.x = dot(u_xlat0.xyz, vec3(u_xlat22));
            u_xlat5.y = in_COLOR0.y * 3.29999995;
            u_xlat5 = u_xlat5.xxyy + _TimeParameters.xxxx;
            u_xlat5 = u_xlat5 * vec4(3.95000005, 1.38600004, 0.75, 0.386000007) + vec4(-1.0, -1.0, -1.0, -1.0);
            u_xlat5 = u_xlat5 * vec4(0.25, 0.25, 0.25, 0.25) + vec4(0.5, 0.5, 0.5, 0.5);
            u_xlat5 = fract(u_xlat5);
            u_xlat5 = u_xlat5 * vec4(2.0, 2.0, 2.0, 2.0) + vec4(-1.0, -1.0, -1.0, -1.0);
            u_xlat6 = abs(u_xlat5) * abs(u_xlat5);
            u_xlat5 = -abs(u_xlat5) * vec4(2.0, 2.0, 2.0, 2.0) + vec4(3.0, 3.0, 3.0, 3.0);
            u_xlat5 = u_xlat6 * u_xlat5 + vec4(-0.5, -0.5, -0.5, -0.5);
            u_xlat5.xyz = u_xlat5.ywy + u_xlat5.xzx;
            u_xlat1.xyz = u_xlat5.xyz * u_xlat3.xyz + u_xlat0.xyz;
        }
        u_xlat0.xyz = u_xlat2.yyy * _NonJitteredViewProjMatrix[1].xyw;
        u_xlat0.xyz = _NonJitteredViewProjMatrix[0].xyw * u_xlat2.xxx + u_xlat0.xyz;
        u_xlat0.xyz = _NonJitteredViewProjMatrix[2].xyw * u_xlat2.zzz + u_xlat0.xyz;
        vs_CLIP_POSITION_NO_JITTER0.xyz = u_xlat0.xyz + _NonJitteredViewProjMatrix[3].xyw;
        u_xlat0 = u_xlat1.yyyy * unity_MatrixPreviousM[1];
        u_xlat0 = unity_MatrixPreviousM[0] * u_xlat1.xxxx + u_xlat0;
        u_xlat0 = unity_MatrixPreviousM[2] * u_xlat1.zzzz + u_xlat0;
        u_xlat0 = u_xlat0 + unity_MatrixPreviousM[3];
        u_xlat1.xyz = u_xlat0.yyy * _PrevViewProjMatrix[1].xyw;
        u_xlat1.xyz = _PrevViewProjMatrix[0].xyw * u_xlat0.xxx + u_xlat1.xyz;
        u_xlat0.xyz = _PrevViewProjMatrix[2].xyw * u_xlat0.zzz + u_xlat1.xyz;
        vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.xyz = _PrevViewProjMatrix[3].xyw * u_xlat0.www + u_xlat0.xyz;
    } else {
        vs_CLIP_POSITION_NO_JITTER0.xyz = vec3(0.0, 0.0, 0.0);
        vs_PREVIOUS_CLIP_POSITION_NO_JITTER0.xyz = vec3(0.0, 0.0, 0.0);
    }
    gl_Position.xyw = u_xlat4.xyw;
    vs_INTERP0 = in_TEXCOORD0;
    vs_INTERP1.xyz = u_xlat2.xyz;
    return;
}

