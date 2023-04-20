#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require

layout(origin_upper_left) in vec4 gl_FragCoord;
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
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex1;
layout(set = 0, binding = 2) uniform mediump texture2D _MainTex2;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex3;
layout(set = 0, binding = 4) uniform mediump texture2D _MainTex4;
layout(set = 0, binding = 5) uniform mediump texture2D _MainTex5;
layout(set = 0, binding = 6) uniform mediump texture2D _MainTex6;
layout(set = 0, binding = 7) uniform mediump texture2D _MainTex7;
layout(location = 0) in highp  vec3 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
uint u_xlatu0;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex0;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex1;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex2;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MainTex3;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MainTex4;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MainTex5;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_MainTex6;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_MainTex7;
void main()
{
    u_xlatu0 = uint(vs_TEXCOORD0.z);
    switch(int(u_xlatu0)){
            case 0:
                u_xlat0 = texture(sampler2D(_MainTex0, sampler_MainTex0), vs_TEXCOORD0.xy);
                break;
                case 1:
                    u_xlat0 = texture(sampler2D(_MainTex1, sampler_MainTex1), vs_TEXCOORD0.xy);
                    break;
                    case 2:
                        u_xlat0 = texture(sampler2D(_MainTex2, sampler_MainTex2), vs_TEXCOORD0.xy);
                        break;
                        case 3:
                            u_xlat0 = texture(sampler2D(_MainTex3, sampler_MainTex3), vs_TEXCOORD0.xy);
                            break;
                            case 4:
                                u_xlat0 = texture(sampler2D(_MainTex4, sampler_MainTex4), vs_TEXCOORD0.xy);
                                break;
                                case 5:
                                    u_xlat0 = texture(sampler2D(_MainTex5, sampler_MainTex5), vs_TEXCOORD0.xy);
                                    break;
                                    case 6:
                                        u_xlat0 = texture(sampler2D(_MainTex6, sampler_MainTex6), vs_TEXCOORD0.xy);
                                        break;
                                        case 7:
                                            u_xlat0 = texture(sampler2D(_MainTex7, sampler_MainTex7), vs_TEXCOORD0.xy);
                                            break;
                                        default:
                                            u_xlat0.x = float(1.0);
                                            u_xlat0.y = float(1.0);
                                            u_xlat0.z = float(1.0);
                                            u_xlat0.w = float(1.0);
                                            break;
                                        }
                                        SV_Target0 = u_xlat0 * vs_COLOR0;
                                        return;
}

