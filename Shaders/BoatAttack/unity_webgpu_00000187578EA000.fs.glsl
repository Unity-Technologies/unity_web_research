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
	int _DebugVertexAttributeMode;
};
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_COLOR0;
layout(location = 5) in highp vec4 vs_NORMAL0;
layout(location = 6) in highp vec4 vs_TANGENT0;
layout(location = 0) out highp vec4 SV_TARGET0;
void main()
{
    switch(_DebugVertexAttributeMode){
        case 1:
            SV_TARGET0 = vs_TEXCOORD0;
            return;
        case 2:
            SV_TARGET0 = vs_TEXCOORD1;
            return;
        case 3:
            SV_TARGET0 = vs_TEXCOORD2;
            return;
        case 4:
            SV_TARGET0 = vs_TEXCOORD3;
            return;
        case 5:
            SV_TARGET0 = vs_COLOR0;
            return;
        case 6:
            SV_TARGET0 = vs_TANGENT0;
            return;
        case 7:
            SV_TARGET0 = vs_NORMAL0;
            return;
        default:
            SV_TARGET0 = vec4(0.0, 0.0, 0.0, 1.0);
            return;
    }
    return;
}

