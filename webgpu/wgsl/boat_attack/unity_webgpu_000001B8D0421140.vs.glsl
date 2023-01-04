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
layout(set = 1, binding = 1, std140) uniform VGlobals {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixVP;
	vec4 _ShaderInfoTex_TexelSize;
	vec4 _TextureInfo[8];
	vec4 _Transforms[60];
};
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_TEXCOORD2;
layout(location = 4) in highp vec4 in_TEXCOORD3;
layout(location = 5) in highp vec4 in_TEXCOORD4;
layout(location = 6) in highp vec4 in_TEXCOORD5;
layout(location = 7) in highp float in_TEXCOORD6;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec4 vs_TEXCOORD0;
layout(location = 2) out highp vec4 vs_TEXCOORD1;
layout(location = 3) out highp vec4 vs_TEXCOORD2;
layout(location = 4) out highp vec2 vs_TEXCOORD3;
layout(location = 5) out highp vec4 vs_TEXCOORD4;
void main()
{
vec4 u_xlat0;
int u_xlati0;
vec3 u_xlat1;
ivec2 u_xlati1;
vec3 u_xlat2;
bvec4 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
bvec3 u_xlatb4;
vec4 u_xlat5;
vec2 u_xlat6;
bool u_xlatb6;
vec3 u_xlat7;
int u_xlati7;
uint u_xlatu7;
bvec2 u_xlatb7;
float u_xlat12;
bool u_xlatb12;
vec2 u_xlat13;
vec2 u_xlat16;
float u_xlat19;
    u_xlat0 = in_TEXCOORD2.xzzw * vec4(765.0, 255.0, 8160.0, 255.0);
    u_xlati0 = int(u_xlat0.x);
    u_xlati1.xy = ivec2(u_xlati0) + ivec2(1, 2);
    u_xlat13.x = in_TEXCOORD3.x * 255.0;
    u_xlat13.x = roundEven(u_xlat13.x);
    u_xlatb2 = equal(u_xlat13.xxxx, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat3.x = u_xlatb2.x ? float(1.0) : 0.0;
    u_xlat3.y = u_xlatb2.y ? float(1.0) : 0.0;
    u_xlat3.z = u_xlatb2.z ? float(1.0) : 0.0;
    u_xlat3.w = u_xlatb2.w ? float(1.0) : 0.0;
;
    u_xlat13.xy = u_xlat3.zz + u_xlat3.wy;
    u_xlat13.x = u_xlat3.y + u_xlat13.x;
    u_xlat13.x = u_xlat3.x + u_xlat13.x;
    u_xlat1.z = min(u_xlat13.x, 1.0);
    u_xlat3.z = dot(_Transforms[u_xlati0], in_POSITION0);
    u_xlat3.w = dot(_Transforms[u_xlati1.x], in_POSITION0);
    u_xlat0.x = dot(_Transforms[u_xlati1.y], in_POSITION0);
    u_xlat4 = u_xlat3.wwww * unity_ObjectToWorld[1];
    u_xlat4 = unity_ObjectToWorld[0] * u_xlat3.zzzz + u_xlat4;
    u_xlat4 = unity_ObjectToWorld[2] * u_xlat0.xxxx + u_xlat4;
    u_xlat4 = u_xlat4 + unity_ObjectToWorld[3];
    u_xlat5 = u_xlat4.yyyy * unity_MatrixVP[1];
    u_xlat5 = unity_MatrixVP[0] * u_xlat4.xxxx + u_xlat5;
    u_xlat5 = unity_MatrixVP[2] * u_xlat4.zzzz + u_xlat5;
    gl_Position = unity_MatrixVP[3] * u_xlat4.wwww + u_xlat5;
    u_xlat0.x = (-in_TEXCOORD6) + _TextureInfo[2].x;
    u_xlati1.x = int((0.0<u_xlat0.x) ? 0xFFFFFFFFu : uint(0));
    u_xlati0 = int((u_xlat0.x<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlati0 = (-u_xlati1.x) + u_xlati0;
    u_xlati0 = max((-u_xlati0), u_xlati0);
    u_xlat0.x = float(u_xlati0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat1.x = (-in_TEXCOORD6) + _TextureInfo[4].x;
    u_xlati7 = int((0.0<u_xlat1.x) ? 0xFFFFFFFFu : uint(0));
    u_xlati1.x = int((u_xlat1.x<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlati1.x = (-u_xlati7) + u_xlati1.x;
    u_xlati1.x = max((-u_xlati1.x), u_xlati1.x);
    u_xlat1.x = float(u_xlati1.x);
    u_xlat1.xz = (-u_xlat1.xz) + vec2(1.0, 1.0);
    u_xlat0.x = u_xlat1.x * 2.0 + u_xlat0.x;
    u_xlat1.x = (-in_TEXCOORD6) + _TextureInfo[6].x;
    u_xlati7 = int((0.0<u_xlat1.x) ? 0xFFFFFFFFu : uint(0));
    u_xlati1.x = int((u_xlat1.x<0.0) ? 0xFFFFFFFFu : uint(0));
    u_xlati1.x = (-u_xlati7) + u_xlati1.x;
    u_xlati1.x = max((-u_xlati1.x), u_xlati1.x);
    u_xlat1.x = float(u_xlati1.x);
    u_xlat1.x = (-u_xlat1.x) + 1.0;
    u_xlat0.x = u_xlat1.x * 3.0 + u_xlat0.x;
    u_xlat1.x = u_xlatb2.w ? float(2.0) : 0.0;
    u_xlat1.y = u_xlatb2.x ? float(4.0) : 0.0;
;
    u_xlat1.x = u_xlat1.x + u_xlat1.z;
    u_xlat1.x = u_xlat13.y * 3.0 + u_xlat1.x;
    vs_TEXCOORD1.x = u_xlat1.y + u_xlat1.x;
    u_xlat1.x = dot(in_TEXCOORD4.zw, vec2(65025.0, 255.0));
    u_xlatb7.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), in_TEXCOORD3.zwzz).xy;
    u_xlat19 = u_xlatb7.x ? 1.0 : float(0.0);
    u_xlat7.x = (u_xlatb7.x) ? 3.0 : 2.0;
    vs_TEXCOORD1.w = (u_xlatb7.y) ? u_xlat7.x : u_xlat19;
    if(u_xlatb2.y){
        u_xlat7.x = u_xlat0.x + u_xlat0.x;
        u_xlatu7 = uint(u_xlat7.x);
        u_xlat3.xy = in_TEXCOORD0.xy * _TextureInfo[int(u_xlatu7)].yz;
    } else {
        u_xlat3.xy = in_TEXCOORD0.xy;
    }
    u_xlat7.xyz = in_COLOR0.xyz * vec3(0.0849710032, 0.0849710032, 0.0849710032) + vec3(-0.000163029006, -0.000163029006, -0.000163029006);
    u_xlat2.xyz = in_COLOR0.xyz * vec3(0.265884995, 0.265884995, 0.265884995) + vec3(0.736584008, 0.736584008, 0.736584008);
    u_xlat2.xyz = in_COLOR0.xyz * u_xlat2.xyz + vec3(-0.00980184041, -0.00980184041, -0.00980184041);
    u_xlat2.xyz = in_COLOR0.xyz * u_xlat2.xyz + vec3(0.00319697009, 0.00319697009, 0.00319697009);
    u_xlatb4.xyz = lessThan(in_COLOR0.xyzx, vec4(0.0725490004, 0.0725490004, 0.0725490004, 0.0)).xyz;
    vs_COLOR0.x = (u_xlatb4.x) ? u_xlat7.x : u_xlat2.x;
    vs_COLOR0.y = (u_xlatb4.y) ? u_xlat7.y : u_xlat2.y;
    vs_COLOR0.z = (u_xlatb4.z) ? u_xlat7.z : u_xlat2.z;
    u_xlatb12 = u_xlat0.z>=(-u_xlat0.z);
    u_xlat7.xy = (bool(u_xlatb12)) ? vec2(32.0, 0.03125) : vec2(-32.0, -0.03125);
    u_xlat6.x = u_xlat0.y * u_xlat7.y;
    u_xlat6.x = fract(u_xlat6.x);
    u_xlat6.x = u_xlat6.x * u_xlat7.x;
    u_xlat12 = in_TEXCOORD2.z * 255.0 + (-u_xlat6.x);
    u_xlat7.xy = in_TEXCOORD4.yw * vec2(2040.0, 2040.0);
    u_xlat16.x = in_TEXCOORD4.x * 8160.0 + u_xlat6.x;
    u_xlat16.y = u_xlat12 * 0.03125 + u_xlat7.x;
    u_xlat6.xy = u_xlat16.xy + vec2(0.5, 0.5);
    vs_TEXCOORD2.zw = u_xlat6.xy * _ShaderInfoTex_TexelSize.xy;
    u_xlat6.x = in_TEXCOORD2.w * 8160.0;
    u_xlatb6 = u_xlat6.x>=(-u_xlat6.x);
    u_xlat6.xy = (bool(u_xlatb6)) ? vec2(32.0, 0.03125) : vec2(-32.0, -0.03125);
    u_xlat12 = u_xlat6.y * u_xlat0.w;
    u_xlat12 = fract(u_xlat12);
    u_xlat6.x = u_xlat12 * u_xlat6.x;
    u_xlat12 = in_TEXCOORD2.w * 255.0 + (-u_xlat6.x);
    u_xlat2.x = in_TEXCOORD4.z * 8160.0 + u_xlat6.x;
    u_xlat2.yz = vec2(u_xlat12) * vec2(0.03125, 0.125) + u_xlat7.yy;
    u_xlat6.xy = u_xlat2.xy + vec2(0.5, 0.5);
    u_xlat6.xy = u_xlat6.xy * _ShaderInfoTex_TexelSize.xy;
    vs_TEXCOORD1.z = (u_xlatb2.w) ? 1.0 : u_xlat1.x;
    vs_TEXCOORD3.xy = (u_xlatb2.w) ? u_xlat2.xz : u_xlat6.xy;
    vs_TEXCOORD4.x = (u_xlatb2.w) ? in_TEXCOORD3.y : in_TEXCOORD5.x;
    vs_COLOR0.w = in_COLOR0.w;
    vs_TEXCOORD0 = u_xlat3;
    vs_TEXCOORD1.y = u_xlat0.x;
    vs_TEXCOORD2.x = in_TEXCOORD2.y * 255.0;
    vs_TEXCOORD2.y = 0.0;
    vs_TEXCOORD4.yzw = in_TEXCOORD5.yzw;
    return;
}

