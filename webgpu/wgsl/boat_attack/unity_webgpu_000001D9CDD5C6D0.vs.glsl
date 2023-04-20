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
layout(set = 0, binding = 8) uniform highp texture2D _ShaderInfoTex;
layout(location = 0) in highp vec4 in_POSITION0;
layout(location = 1) in highp vec4 in_COLOR0;
layout(location = 2) in highp vec2 in_TEXCOORD0;
layout(location = 3) in highp vec4 in_TEXCOORD1;
layout(location = 4) in highp vec4 in_TEXCOORD2;
layout(location = 5) in highp vec4 in_TEXCOORD3;
layout(location = 6) in highp vec4 in_TEXCOORD4;
layout(location = 7) in highp vec4 in_TEXCOORD5;
layout(location = 8) in highp vec4 in_TEXCOORD6;
layout(location = 9) in highp float in_TEXCOORD7;
layout(location = 0) out highp vec4 vs_COLOR0;
layout(location = 1) out highp vec4 vs_TEXCOORD0;
layout(location = 2) flat out highp vec4 vs_TEXCOORD1;
layout(location = 3) flat out highp vec2 vs_TEXCOORD3;
layout(location = 4) out highp vec4 vs_TEXCOORD4;
vec4 u_xlat0;
vec4 u_xlat1;
int u_xlati1;
bvec4 u_xlatb1;
vec4 u_xlat2;
bvec2 u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
bvec4 u_xlatb6;
vec4 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
uint u_xlatu9;
vec3 u_xlat10;
vec3 u_xlat11;
float u_xlat16;
float u_xlat18;
uint u_xlatu18;
bool u_xlatb18;
vec2 u_xlat20;
layout(set = 0, binding = 11) uniform highp  sampler sampler_ShaderInfoTex;
void main()
{
    u_xlat0 = in_TEXCOORD2.xzwy * vec4(255.0, 255.0, 255.0, 255.0);
    u_xlat0 = roundEven(u_xlat0);
    u_xlat1 = u_xlat0 * vec4(32.0, 32.0, 32.0, 32.0);
    u_xlatb1 = greaterThanEqual(u_xlat1, (-u_xlat1));
    u_xlat2.x = (u_xlatb1.x) ? float(32.0) : float(-32.0);
    u_xlat2.y = (u_xlatb1.x) ? float(0.03125) : float(-0.03125);
    u_xlat2.z = (u_xlatb1.y) ? float(32.0) : float(-32.0);
    u_xlat2.w = (u_xlatb1.y) ? float(0.03125) : float(-0.03125);
    u_xlat1.xy = u_xlat0.xy * u_xlat2.yw;
    u_xlat1.xy = fract(u_xlat1.xy);
    u_xlat10.xz = u_xlat1.xy * u_xlat2.xz;
    u_xlat0.xy = (-u_xlat2.xz) * u_xlat1.xy + u_xlat0.xy;
    u_xlat1.x = in_TEXCOORD1.x * 8160.0 + u_xlat10.x;
    u_xlat0.xy = u_xlat0.xy * vec2(0.09375, 0.03125);
    u_xlat1.y = in_TEXCOORD1.y * 2040.0 + u_xlat0.x;
    u_xlat3 = u_xlat1.xyxy + vec4(0.5, 0.5, 0.5, 1.5);
    u_xlat3 = u_xlat3 * _ShaderInfoTex_TexelSize.xyxy;
    u_xlat1.xy = u_xlat1.xy + vec2(0.5, 2.5);
    u_xlat1.xy = u_xlat1.xy * _ShaderInfoTex_TexelSize.xy;
    u_xlat4 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat3.xy, 0.0);
    u_xlat3 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat3.zw, 0.0);
    u_xlat5 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat1.xy, 0.0);
    u_xlat0.x = in_TEXCOORD3.x * 255.0;
    u_xlat0.x = roundEven(u_xlat0.x);
    u_xlatb6 = equal(u_xlat0.xxxx, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat7.x = u_xlatb6.x ? float(1.0) : 0.0;
    u_xlat7.y = u_xlatb6.y ? float(1.0) : 0.0;
    u_xlat7.z = u_xlatb6.z ? float(1.0) : 0.0;
    u_xlat7.w = u_xlatb6.w ? float(1.0) : 0.0;
;
    u_xlat1.xy = u_xlat7.zz + u_xlat7.wy;
    u_xlat0.x = u_xlat7.y + u_xlat1.x;
    u_xlat0.x = u_xlat7.x + u_xlat0.x;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat20.x = dot(u_xlat4, in_POSITION0);
    u_xlat20.y = dot(u_xlat3, in_POSITION0);
    u_xlat1.x = dot(u_xlat5, in_POSITION0);
    u_xlat3 = u_xlat20.yyyy * unity_ObjectToWorld[1];
    u_xlat3 = unity_ObjectToWorld[0] * u_xlat20.xxxx + u_xlat3;
    u_xlat3 = unity_ObjectToWorld[2] * u_xlat1.xxxx + u_xlat3;
    u_xlat3 = u_xlat3 + unity_ObjectToWorld[3];
    u_xlat5 = u_xlat3.yyyy * unity_MatrixVP[1];
    u_xlat5 = unity_MatrixVP[0] * u_xlat3.xxxx + u_xlat5;
    u_xlat5 = unity_MatrixVP[2] * u_xlat3.zzzz + u_xlat5;
    gl_Position = unity_MatrixVP[3] * u_xlat3.wwww + u_xlat5;
    u_xlat2.y = 0.0;
    u_xlat3.x = float(0.0);
    u_xlat3.y = float(0.0);
    u_xlati1 = 0;
    while(true){
        u_xlatb18 = u_xlat3.y>=7.0;
        u_xlati1 = 0;
        if(u_xlatb18){break;}
        u_xlat18 = u_xlat3.y + u_xlat3.y;
        u_xlatu18 = uint(u_xlat18);
        u_xlatb18 = in_TEXCOORD7==_TextureInfo[int(u_xlatu18)].x;
        if(u_xlatb18){
            u_xlat3.x = u_xlat3.y;
            u_xlati1 = int(0xFFFFFFFFu);
            break;
        }
        u_xlat2.x = u_xlat3.y + 1.0;
        u_xlat3.xy = u_xlat2.yx;
        u_xlatb1.x = u_xlatb18;
    }
    u_xlat1.x = (u_xlati1 != 0) ? u_xlat3.x : 7.0;
    u_xlat2.x = u_xlatb6.w ? float(2.0) : 0.0;
    u_xlat2.y = u_xlatb6.x ? float(4.0) : 0.0;
;
    u_xlat0.x = u_xlat0.x + u_xlat2.x;
    u_xlat0.x = u_xlat1.y * 3.0 + u_xlat0.x;
    vs_TEXCOORD1.x = u_xlat2.y + u_xlat0.x;
    u_xlat0.x = dot(in_TEXCOORD5.xy, vec2(65025.0, 255.0));
    u_xlatb2.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), in_TEXCOORD3.zwzz).xy;
    u_xlat9.x = u_xlatb2.x ? 1.0 : float(0.0);
    u_xlat2.x = (u_xlatb2.x) ? 3.0 : 2.0;
    vs_TEXCOORD1.w = (u_xlatb2.y) ? u_xlat2.x : u_xlat9.x;
    if(u_xlatb6.y){
        u_xlat9.x = u_xlat1.x + u_xlat1.x;
        u_xlatu9 = uint(u_xlat9.x);
        vs_TEXCOORD0.xy = in_TEXCOORD0.xy * _TextureInfo[int(u_xlatu9)].yz;
    } else {
        vs_TEXCOORD0.xy = in_TEXCOORD0.xy;
    }
    u_xlat3.x = in_TEXCOORD4.x * 8160.0 + u_xlat10.z;
    u_xlat3.y = in_TEXCOORD4.y * 2040.0 + u_xlat0.y;
    u_xlat2.xz = u_xlat3.xy + vec2(0.5, 0.5);
    u_xlat2.xz = u_xlat2.xz * _ShaderInfoTex_TexelSize.xy;
    u_xlat3.x = (u_xlatb1.z) ? float(32.0) : float(-32.0);
    u_xlat3.y = (u_xlatb1.z) ? float(0.03125) : float(-0.03125);
    u_xlat3.z = (u_xlatb1.w) ? float(32.0) : float(-32.0);
    u_xlat3.w = (u_xlatb1.w) ? float(0.03125) : float(-0.03125);
    u_xlat9.xyz = u_xlat0.zwz * u_xlat3.ywy;
    u_xlat9.xyz = fract(u_xlat9.xyz);
    u_xlat11.xz = u_xlat9.yz * u_xlat3.zx;
    u_xlat8.xyz = (-u_xlat3.xzx) * u_xlat9.xyz + u_xlat0.zwz;
    u_xlat8.xyz = u_xlat8.xyz * vec3(0.03125, 0.03125, 0.125);
    u_xlat5.x = in_TEXCOORD4.z * 8160.0 + u_xlat11.z;
    u_xlat5.yz = in_TEXCOORD4.ww * vec2(2040.0, 2040.0) + u_xlat8.xz;
    u_xlat8.xz = u_xlat5.xy + vec2(0.5, 0.5);
    u_xlat8.xz = u_xlat8.xz * _ShaderInfoTex_TexelSize.xy;
    if(u_xlatb2.y){
        u_xlat7 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat8.xz, 0.0).wxyz;
        vs_COLOR0.xyz = u_xlat7.yzw;
    } else {
        u_xlat9.xyz = in_COLOR0.xyz * vec3(0.0849710032, 0.0849710032, 0.0849710032) + vec3(-0.000163029006, -0.000163029006, -0.000163029006);
        u_xlat3.xzw = in_COLOR0.xyz * vec3(0.265884995, 0.265884995, 0.265884995) + vec3(0.736584008, 0.736584008, 0.736584008);
        u_xlat3.xzw = in_COLOR0.xyz * u_xlat3.xzw + vec3(-0.00980184041, -0.00980184041, -0.00980184041);
        u_xlat3.xzw = in_COLOR0.xyz * u_xlat3.xzw + vec3(0.00319697009, 0.00319697009, 0.00319697009);
        u_xlatb6.xyz = lessThan(in_COLOR0.xyzx, vec4(0.0725490004, 0.0725490004, 0.0725490004, 0.0)).xyz;
        vs_COLOR0.x = (u_xlatb6.x) ? u_xlat9.x : u_xlat3.x;
        vs_COLOR0.y = (u_xlatb6.y) ? u_xlat9.y : u_xlat3.z;
        vs_COLOR0.z = (u_xlatb6.z) ? u_xlat9.z : u_xlat3.w;
        u_xlat7.x = in_COLOR0.w;
    }
    u_xlat3.x = in_TEXCOORD1.z * 8160.0 + u_xlat11.x;
    u_xlat3.y = in_TEXCOORD1.w * 2040.0 + u_xlat8.y;
    u_xlat9.xy = u_xlat3.xy + vec2(0.5, 0.5);
    u_xlat9.xy = u_xlat9.xy * _ShaderInfoTex_TexelSize.xy;
    u_xlat16 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat2.xz, 0.0).w;
    vs_COLOR0.w = u_xlat16 * u_xlat7.x;
    vs_TEXCOORD1.z = (u_xlatb6.w) ? u_xlat16 : u_xlat0.x;
    vs_TEXCOORD3.xy = (u_xlatb6.w) ? u_xlat5.xz : u_xlat8.xz;
    u_xlat0 = textureLod(sampler2D(_ShaderInfoTex, sampler_ShaderInfoTex), u_xlat9.xy, 0.0);
    vs_TEXCOORD0.zw = u_xlat20.xy * u_xlat0.xy + u_xlat0.zw;
    vs_TEXCOORD4.x = (u_xlatb6.w) ? in_TEXCOORD3.y : in_TEXCOORD6.x;
    vs_TEXCOORD1.y = u_xlat1.x;
    vs_TEXCOORD4.yzw = in_TEXCOORD6.yzw;
    return;
}

