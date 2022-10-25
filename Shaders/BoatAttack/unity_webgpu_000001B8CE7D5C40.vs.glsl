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
	vec4 _TextureInfo[16];
};
layout(set = 0, binding = 8) uniform mediump texture2D _ShaderInfoTex;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_TEXCOORD1;
layout(location = 4) in highp vec4 in_TEXCOORD2;
layout(location = 5) in highp vec4 in_TEXCOORD3;
layout(location = 6) in highp vec4 in_TEXCOORD4;
layout(location = 7) in highp vec4 in_TEXCOORD5;
layout(location = 8) in highp float in_TEXCOORD6;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec4 vs_TEXCOORD0;
layout(location = 2) flat out highp vec4 vs_TEXCOORD1;
layout(location = 3) flat out highp vec2 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_ShaderInfoTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bvec4 u_xlatb1;
vec4 u_xlat2;
bvec2 u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
bvec4 u_xlatb4;
vec4 u_xlat5;
bvec4 u_xlatb5;
vec2 u_xlat6;
bvec3 u_xlatb6;
vec2 u_xlat7;
float u_xlat8;
vec2 u_xlat9;
vec3 u_xlat12;
vec2 u_xlat14;
vec2 u_xlat15;
int u_xlati16;
bool u_xlatb16;
float u_xlat21;
uint u_xlatu21;
float u_xlat23;
uint u_xlatu23;
bool u_xlatb23;
    u_xlat0 = in_TEXCOORD2.xxzz * vec4(255.0, 8160.0, 255.0, 8160.0);
    u_xlatb1 = greaterThanEqual(u_xlat0.yyww, (-u_xlat0.yyww));
    u_xlat1.x = (u_xlatb1.x) ? float(32.0) : float(-32.0);
    u_xlat1.y = (u_xlatb1.y) ? float(0.03125) : float(-0.03125);
    u_xlat1.z = (u_xlatb1.z) ? float(32.0) : float(-32.0);
    u_xlat1.w = (u_xlatb1.w) ? float(0.03125) : float(-0.03125);
    u_xlat0.xy = u_xlat0.xz * u_xlat1.yw;
    u_xlat0.xy = fract(u_xlat0.xy);
    u_xlat0.xy = u_xlat0.xy * u_xlat1.xz;
    u_xlat14.xy = in_TEXCOORD2.xz * vec2(255.0, 255.0) + (-u_xlat0.xy);
    u_xlat1.x = in_TEXCOORD1.x * 8160.0 + u_xlat0.x;
    u_xlat0.xz = u_xlat14.xy * vec2(0.09375, 0.03125);
    u_xlat1.y = in_TEXCOORD1.y * 2040.0 + u_xlat0.x;
    u_xlat2 = u_xlat1.xyxy + vec4(0.5, 0.5, 0.5, 1.5);
    u_xlat2 = u_xlat2 * _ShaderInfoTex_TexelSize.xyxy;
    u_xlat0.xw = u_xlat1.xy + vec2(0.5, 2.5);
    u_xlat0.xw = u_xlat0.xw * _ShaderInfoTex_TexelSize.xy;
    u_xlat1 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat2.xy, 0.0);
    u_xlat2 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat2.zw, 0.0);
    u_xlat3 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat0.xw, 0.0);
    u_xlat0.x = in_TEXCOORD3.x * 255.0;
    u_xlat0.x = roundEven(u_xlat0.x);
    u_xlatb4 = equal(u_xlat0.xxxx, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat5.x = u_xlatb4.x ? float(1.0) : 0.0;
    u_xlat5.y = u_xlatb4.y ? float(1.0) : 0.0;
    u_xlat5.z = u_xlatb4.z ? float(1.0) : 0.0;
    u_xlat5.w = u_xlatb4.w ? float(1.0) : 0.0;
;
    u_xlat0.xw = u_xlat5.zz + u_xlat5.wy;
    u_xlat0.x = u_xlat5.y + u_xlat0.x;
    u_xlat0.x = u_xlat5.x + u_xlat0.x;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat15.x = dot(u_xlat1, in_POSITION0);
    u_xlat15.y = dot(u_xlat2, in_POSITION0);
    u_xlat1.x = dot(u_xlat3, in_POSITION0);
    u_xlat2 = u_xlat15.yyyy * unity_ObjectToWorld[1];
    u_xlat2 = unity_ObjectToWorld[0] * u_xlat15.xxxx + u_xlat2;
    u_xlat2 = unity_ObjectToWorld[2] * u_xlat1.xxxx + u_xlat2;
    u_xlat2 = u_xlat2 + unity_ObjectToWorld[3];
    u_xlat3 = u_xlat2.yyyy * unity_MatrixVP[1];
    u_xlat3 = unity_MatrixVP[0] * u_xlat2.xxxx + u_xlat3;
    u_xlat3 = unity_MatrixVP[2] * u_xlat2.zzzz + u_xlat3;
    gl_Position = unity_MatrixVP[3] * u_xlat2.wwww + u_xlat3;
    u_xlat1.y = 0.0;
    u_xlat2.x = float(0.0);
    u_xlat2.y = float(0.0);
    u_xlati16 = int(0);
    while(true){
        u_xlatb23 = u_xlat2.y>=7.0;
        u_xlati16 = 0;
        if(u_xlatb23){break;}
        u_xlat23 = u_xlat2.y + u_xlat2.y;
        u_xlatu23 = uint(u_xlat23);
        u_xlatb23 = in_TEXCOORD6==_TextureInfo[int(u_xlatu23)].x;
        if(u_xlatb23){
            u_xlat2.x = u_xlat2.y;
            u_xlati16 = int(0xFFFFFFFFu);
            break;
        }
        u_xlat1.x = u_xlat2.y + 1.0;
        u_xlat2.xy = u_xlat1.yx;
        u_xlatb16 = u_xlatb23;
    }
    u_xlat1.x = (u_xlati16 != 0) ? u_xlat2.x : 7.0;
    u_xlat2.x = u_xlatb4.w ? float(2.0) : 0.0;
    u_xlat2.y = u_xlatb4.x ? float(4.0) : 0.0;
;
    u_xlat0.x = u_xlat0.x + u_xlat2.x;
    u_xlat0.x = u_xlat0.w * 3.0 + u_xlat0.x;
    vs_TEXCOORD1.x = u_xlat2.y + u_xlat0.x;
    u_xlat0.x = dot(in_TEXCOORD4.zw, vec2(65025.0, 255.0));
    u_xlatb2.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), in_TEXCOORD3.zwzz).xy;
    u_xlat21 = u_xlatb2.x ? 1.0 : float(0.0);
    u_xlat8 = (u_xlatb2.x) ? 3.0 : 2.0;
    vs_TEXCOORD1.w = (u_xlatb2.y) ? u_xlat8 : u_xlat21;
    if(u_xlatb4.y){
        u_xlat21 = u_xlat1.x + u_xlat1.x;
        u_xlatu21 = uint(u_xlat21);
        vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _TextureInfo[int(u_xlatu21)].yz;
    } else {
        vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    }
    u_xlat3.x = in_TEXCOORD4.x * 8160.0 + u_xlat0.y;
    u_xlat3.y = in_TEXCOORD4.y * 2040.0 + u_xlat0.z;
    u_xlat7.xy = u_xlat3.xy + vec2(0.5, 0.5);
    u_xlat7.xy = u_xlat7.xy * _ShaderInfoTex_TexelSize.xy;
    u_xlat3 = in_TEXCOORD2.wwyy * vec4(255.0, 8160.0, 255.0, 8160.0);
    u_xlatb5 = greaterThanEqual(u_xlat3.yyww, (-u_xlat3.yyww));
    u_xlat5.x = (u_xlatb5.x) ? float(32.0) : float(-32.0);
    u_xlat5.y = (u_xlatb5.y) ? float(0.03125) : float(-0.03125);
    u_xlat5.z = (u_xlatb5.z) ? float(32.0) : float(-32.0);
    u_xlat5.w = (u_xlatb5.w) ? float(0.03125) : float(-0.03125);
    u_xlat2.xzw = u_xlat3.xzx * u_xlat5.ywy;
    u_xlat2.xzw = fract(u_xlat2.xzw);
    u_xlat2.xzw = u_xlat2.xzw * u_xlat5.xzx;
    u_xlat3.xyz = in_TEXCOORD2.wyw * vec3(255.0, 255.0, 255.0) + (-u_xlat2.xzw);
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.03125, 0.03125, 0.125);
    u_xlat4.x = in_TEXCOORD4.z * 8160.0 + u_xlat2.w;
    u_xlat4.yz = in_TEXCOORD4.ww * vec2(2040.0, 2040.0) + u_xlat3.xz;
    u_xlat2.xw = u_xlat4.xy + vec2(0.5, 0.5);
    u_xlat2.xw = u_xlat2.xw * _ShaderInfoTex_TexelSize.xy;
    if(u_xlatb2.y){
        u_xlat5 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat2.xw, 0.0).wxyz;
        vs_COLOR0.xyz = u_xlat5.yzw;
    } else {
        u_xlat3.xzw = in_COLOR0.xyz * vec3(0.0849710032, 0.0849710032, 0.0849710032) + vec3(-0.000163029006, -0.000163029006, -0.000163029006);
        u_xlat12.xyz = in_COLOR0.xyz * vec3(0.265884995, 0.265884995, 0.265884995) + vec3(0.736584008, 0.736584008, 0.736584008);
        u_xlat12.xyz = in_COLOR0.xyz * u_xlat12.xyz + vec3(-0.00980184041, -0.00980184041, -0.00980184041);
        u_xlat12.xyz = in_COLOR0.xyz * u_xlat12.xyz + vec3(0.00319697009, 0.00319697009, 0.00319697009);
        u_xlatb6.xyz = lessThan(in_COLOR0.xyzx, vec4(0.0725490004, 0.0725490004, 0.0725490004, 0.0)).xyz;
        vs_COLOR0.x = (u_xlatb6.x) ? u_xlat3.x : u_xlat12.x;
        vs_COLOR0.y = (u_xlatb6.y) ? u_xlat3.z : u_xlat12.y;
        vs_COLOR0.z = (u_xlatb6.z) ? u_xlat3.w : u_xlat12.z;
        u_xlat5.x = in_COLOR0.w;
    }
    u_xlat6.x = in_TEXCOORD1.z * 8160.0 + u_xlat2.z;
    u_xlat6.y = in_TEXCOORD1.w * 2040.0 + u_xlat3.y;
    u_xlat9.xy = u_xlat6.xy + vec2(0.5, 0.5);
    u_xlat9.xy = u_xlat9.xy * _ShaderInfoTex_TexelSize.xy;
    u_xlat7.x = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat7.xy, 0.0).w;
    vs_COLOR0.w = u_xlat7.x * u_xlat5.x;
    vs_TEXCOORD1.z = (u_xlatb4.w) ? u_xlat7.x : u_xlat0.x;
    vs_TEXCOORD3.xy = (u_xlatb4.w) ? u_xlat4.xz : u_xlat2.xw;
    u_xlat0 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat9.xy, 0.0);
    vs_TEXCOORD0.zw = u_xlat15.xy * u_xlat0.xy + u_xlat0.zw;
    vs_TEXCOORD4.x = (u_xlatb4.w) ? in_TEXCOORD3.y : in_TEXCOORD5.x;
    vs_TEXCOORD1.y = u_xlat1.x;
    vs_TEXCOORD4.yzw = in_TEXCOORD5.yzw;
    return;
}

