#version 440
#extension GL_ARB_explicit_attrib_location : require
#extension GL_ARB_shading_language_420pack : require
#extension GL_EXT_samplerless_texture_functions : require

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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	vec4 _ScaledScreenParams;
	int unity_StereoEyeIndex;
	vec4 _FlareData0;
	vec4 _FlareData2;
	vec4 _FlareData3;
	vec4 _FlareOcclusionIndex;
};
layout(set = 0, binding = 2) uniform mediump texture2DArray _FlareOcclusionTex;
layout(location = 0) out highp vec2 vs_TEXCOORD0;
layout(location = 1) out highp float vs_TEXCOORD1;
vec2 u_xlat0;
uvec4 u_xlatu0;
bool u_xlatb0;
vec2 u_xlat1;
vec2 u_xlat2;
int u_xlati2;
uvec3 u_xlatu2;
bvec2 u_xlatb2;
vec2 u_xlat3;
int u_xlati4;
bvec2 u_xlatb4;
float u_xlat6;
int u_xlati6;
void main()
{
    u_xlat0.x = _ScaledScreenParams.y / _ScaledScreenParams.x;
    u_xlatu2.x = uint(gl_VertexIndex) >> (1u & uint(0x1F));
    u_xlati4 = int(uint(gl_VertexIndex) & 1u);
    u_xlati6 = (-u_xlati4) + (-int(u_xlatu2.x));
    u_xlati6 = u_xlati6 + 1;
    u_xlatu2.z = uint(u_xlati6) & 1u;
    u_xlat1.xy = vec2(u_xlatu2.xz);
    u_xlat3.xy = u_xlat1.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlati2 = u_xlati4 + int(u_xlatu2.x);
    u_xlatu2.x = uint(u_xlati2) & 1u;
    u_xlat2.x = float(u_xlatu2.x);
    vs_TEXCOORD0.y = (-u_xlat2.x) + 1.0;
    vs_TEXCOORD0.x = (-u_xlat1.x) + 1.0;
    u_xlat2.xy = u_xlat3.xy * _FlareData2.zw;
    u_xlat6 = u_xlat2.y * _FlareData0.y;
    u_xlat6 = u_xlat2.x * _FlareData0.x + (-u_xlat6);
    u_xlat1.y = dot(u_xlat2.yx, _FlareData0.xy);
    u_xlat1.x = u_xlat0.x * u_xlat6;
    u_xlat0.xy = u_xlat1.xy + _FlareData2.xy;
    gl_Position.xy = u_xlat0.xy + _FlareData0.zw;
    u_xlatb0 = _FlareData3.x<0.0;
    u_xlatb2.xy = lessThan(_FlareData2.xyxx, vec4(-1.0, -1.0, 0.0, 0.0)).xy;
    u_xlatb2.x = u_xlatb2.y || u_xlatb2.x;
    u_xlatb4.xy = lessThan(vec4(1.0, 1.0, 1.0, 1.0), _FlareData2.xyxy).xy;
    u_xlatb4.x = u_xlatb4.y || u_xlatb4.x;
    u_xlatb2.x = u_xlatb4.x || u_xlatb2.x;
    u_xlatb0 = u_xlatb2.x && u_xlatb0;
    if(u_xlatb0){
        vs_TEXCOORD1 = 0.0;
    } else {
        u_xlatu0.x = uint(_FlareOcclusionIndex.x);
        u_xlatu0.y = uint(0u);
        u_xlatu0.w = uint(0u);
        u_xlatu0.z =  uint(unity_StereoEyeIndex);
        u_xlat0.x = texelFetch(_FlareOcclusionTex, ivec3(u_xlatu0.xyz), int(u_xlatu0.w)).x;
        vs_TEXCOORD1 = u_xlat0.x;
    }
    gl_Position.zw = vec2(1.0, 1.0);
    return;
}

