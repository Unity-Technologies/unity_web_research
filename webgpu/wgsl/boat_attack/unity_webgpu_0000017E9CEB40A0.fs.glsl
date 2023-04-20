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
	vec4 _DebugArrowColor;
	vec4 _DebugLocator01Color;
	vec4 _DebugLocator02Color;
};
layout(set = 0, binding = 0) uniform mediump texture2D _NumbersTex;
layout(location = 0) in highp  vec4 vs_COLOR0;
layout(location = 1) in highp  vec2 vs_TEXCOORD0;
highp  vec4 phase0_Input0_3;
layout(location = 2) in highp  vec2 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
ivec2 u_xlati1;
bool u_xlatb1;
vec4 u_xlat2;
vec2 u_xlat3;
ivec2 u_xlati3;
bool u_xlatb3;
float u_xlat6;
ivec2 u_xlati6;
bool u_xlatb6;
ivec2 u_xlati7;
float u_xlat9;
int u_xlati9;
bool u_xlatb9;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_NumbersTex;
void main()
{
    phase0_Input0_3 = vec4(vs_TEXCOORD0, vs_TEXCOORD2);
    u_xlatb0 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(vs_COLOR0.z);
    if(u_xlatb0){
        u_xlat0.xyz = phase0_Input0_3.xzz * vec3(4.0, 100.0, 10.0);
        u_xlat3.xy = fract(u_xlat0.yz);
        u_xlat3.xy = u_xlat3.xy * vec2(10.0, 10.0);
        u_xlat3.xy = floor(u_xlat3.xy);
        u_xlati3.xy = ivec2(u_xlat3.xy);
        u_xlatb3 = u_xlati3.x>=5;
        u_xlati3.x = u_xlatb3 ? 1 : int(0);
        u_xlati7.x = u_xlati3.x + u_xlati3.y;
        u_xlatb3 = u_xlati7.x>=10;
        u_xlati1.x = u_xlati7.x + int(0xFFFFFFF6u);
        u_xlati1.y = int(1);
        u_xlati7.y = int(0);
        u_xlati3.xy = (bool(u_xlatb3)) ? u_xlati1.xy : u_xlati7.xy;
        u_xlat9 = fract(phase0_Input0_3.z);
        u_xlat9 = u_xlat9 * 10.0;
        u_xlat9 = floor(u_xlat9);
        u_xlati9 = int(u_xlat9);
        u_xlati7.x = u_xlati3.y + u_xlati9;
        u_xlatb6 = u_xlati7.x>=10;
        u_xlati1.x = u_xlati7.x + int(0xFFFFFFF6u);
        u_xlati1.y = int(1);
        u_xlati7.y = int(0);
        u_xlati6.xy = (bool(u_xlatb6)) ? u_xlati1.xy : u_xlati7.xy;
        u_xlatb1 = 0.25>=phase0_Input0_3.x;
        if(u_xlatb1){
            u_xlat1.x = floor(phase0_Input0_3.z);
            u_xlati1.x = int(u_xlat1.x);
            u_xlati9 = u_xlati6.y + u_xlati1.x;
            u_xlat0.x = u_xlat0.x;
            u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
            u_xlat9 = float(u_xlati9);
            u_xlat0.x = u_xlat9 + u_xlat0.x;
            u_xlat1.x = u_xlat0.x * 0.0625;
            u_xlat1.y = phase0_Input0_3.y;
            u_xlat0.x = texture(sampler2D(_NumbersTex, sampler_NumbersTex), u_xlat1.xy).x;
        } else {
            u_xlatb9 = 0.5>=phase0_Input0_3.x;
            if(u_xlatb9){
                u_xlat9 = phase0_Input0_3.x * 4.0 + -1.0;
                u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
                u_xlat9 = u_xlat9 + 10.0;
                u_xlat1.x = u_xlat9 * 0.0625;
                u_xlat1.y = phase0_Input0_3.y;
                u_xlat0.x = texture(sampler2D(_NumbersTex, sampler_NumbersTex), u_xlat1.xy).x;
            } else {
                u_xlatb9 = 0.75>=phase0_Input0_3.x;
                if(u_xlatb9){
                    u_xlat9 = phase0_Input0_3.x * 4.0 + -2.0;
                    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
                    u_xlat6 = float(u_xlati6.x);
                    u_xlat6 = u_xlat6 + u_xlat9;
                    u_xlat1.x = u_xlat6 * 0.0625;
                    u_xlat1.y = phase0_Input0_3.y;
                    u_xlat0.x = texture(sampler2D(_NumbersTex, sampler_NumbersTex), u_xlat1.xy).x;
                } else {
                    u_xlat6 = phase0_Input0_3.x * 4.0 + -3.0;
                    u_xlat6 = clamp(u_xlat6, 0.0, 1.0);
                    u_xlat3.x = float(u_xlati3.x);
                    u_xlat3.x = u_xlat3.x + u_xlat6;
                    u_xlat1.x = u_xlat3.x * 0.0625;
                    u_xlat1.y = phase0_Input0_3.y;
                    u_xlat0.x = texture(sampler2D(_NumbersTex, sampler_NumbersTex), u_xlat1.xy).x;
                }
            }
        }
        u_xlatb3 = 0.0<phase0_Input0_3.w;
        u_xlat1 = u_xlat0.xxxx * vec4(0.0, 1.0, 0.0, 0.0) + vec4(0.0, 0.0, 0.0, 1.0);
        u_xlat2 = u_xlat0.xxxx * vec4(0.0, -1.0, -1.0, 0.0) + vec4(1.0, 1.0, 1.0, 1.0);
        SV_Target0 = (bool(u_xlatb3)) ? u_xlat1 : u_xlat2;
        return;
    } else {
        u_xlatb0 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(vs_COLOR0.y);
        if(u_xlatb0){
            SV_Target0 = _DebugArrowColor;
            return;
        } else {
            u_xlatb0 = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(vs_COLOR0.x);
            if(u_xlatb0){
                SV_Target0 = _DebugLocator02Color;
                return;
            } else {
                SV_Target0 = _DebugLocator01Color;
                return;
            }
        }
    }
    return;
}

