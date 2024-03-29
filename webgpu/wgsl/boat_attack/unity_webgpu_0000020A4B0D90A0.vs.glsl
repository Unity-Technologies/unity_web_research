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
layout(set = 1, binding = 0, std140) uniform VGlobals {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 _MainTex0_ST;
	vec4 _MainTex1_ST;
	vec4 _MainTex2_ST;
	vec4 _MainTex3_ST;
	vec4 _MainTex4_ST;
	vec4 _MainTex5_ST;
	vec4 _MainTex6_ST;
	vec4 _MainTex7_ST;
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec3 in_TEXCOORD0;
layout(location = 2) in highp vec4 in_COLOR0;
layout(location = 0) out highp vec3 vs_TEXCOORD0;
layout(location = 1) out highp vec4 vs_COLOR0;
vec4 u_xlat0;
uint u_xlatu0;
vec4 u_xlat1;
void main()
{
    u_xlat0 = in_POSITION0.yyyy * unity_ObjectToWorld[1];
    u_xlat0 = unity_ObjectToWorld[0] * in_POSITION0.xxxx + u_xlat0;
    u_xlat0 = unity_ObjectToWorld[2] * in_POSITION0.zzzz + u_xlat0;
    u_xlat0 = u_xlat0 + unity_ObjectToWorld[3];
    u_xlat1 = u_xlat0.yyyy * unity_MatrixVP[1];
    u_xlat1 = unity_MatrixVP[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat1 = unity_MatrixVP[2] * u_xlat0.zzzz + u_xlat1;
    gl_Position = unity_MatrixVP[3] * u_xlat0.wwww + u_xlat1;
    u_xlatu0 = uint(in_TEXCOORD0.z);
    switch(int(u_xlatu0)){
            case 0:
                u_xlat0.xy = in_TEXCOORD0.xy * _MainTex0_ST.xy + _MainTex0_ST.zw;
                break;
                case 1:
                    u_xlat0.xy = in_TEXCOORD0.xy * _MainTex1_ST.xy + _MainTex1_ST.zw;
                    break;
                    case 2:
                        u_xlat0.xy = in_TEXCOORD0.xy * _MainTex2_ST.xy + _MainTex2_ST.zw;
                        break;
                        case 3:
                            u_xlat0.xy = in_TEXCOORD0.xy * _MainTex3_ST.xy + _MainTex3_ST.zw;
                            break;
                            case 4:
                                u_xlat0.xy = in_TEXCOORD0.xy * _MainTex4_ST.xy + _MainTex4_ST.zw;
                                break;
                                case 5:
                                    u_xlat0.xy = in_TEXCOORD0.xy * _MainTex5_ST.xy + _MainTex5_ST.zw;
                                    break;
                                    case 6:
                                        u_xlat0.xy = in_TEXCOORD0.xy * _MainTex6_ST.xy + _MainTex6_ST.zw;
                                        break;
                                        case 7:
                                            u_xlat0.xy = in_TEXCOORD0.xy * _MainTex7_ST.xy + _MainTex7_ST.zw;
                                            break;
                                        default:
                                            u_xlat0.x = float(0.0);
                                            u_xlat0.y = float(0.0);
                                            break;
                                        }
                                        vs_TEXCOORD0.xy = u_xlat0.xy;
                                        vs_COLOR0 = in_COLOR0;
                                        vs_TEXCOORD0.z = in_TEXCOORD0.z;
                                        return;
}

