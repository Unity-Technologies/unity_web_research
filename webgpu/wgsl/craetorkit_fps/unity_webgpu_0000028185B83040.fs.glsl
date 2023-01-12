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
	vec4 _MainTex_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _AreaTex;
layout(set = 0, binding = 2) uniform mediump texture2D _SearchTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
bvec2 u_xlatb0;
vec4 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec2 u_xlat4;
bool u_xlatb8;
vec2 u_xlat9;
bool u_xlatb9;
float u_xlat12;
bool u_xlatb12;
bool u_xlatb13;
    u_xlat0.xy = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xy;
    u_xlatb0.xy = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat0.yxyy).xy;
    if(u_xlatb0.x){
        u_xlat1.xy = vs_TEXCOORD2.xy;
        u_xlat1.z = 1.0;
        u_xlat2.x = 0.0;
        while(true){
            u_xlatb0.x = vs_TEXCOORD4.x<u_xlat1.x;
            u_xlatb8 = 0.828100026<u_xlat1.z;
            u_xlatb0.x = u_xlatb8 && u_xlatb0.x;
            u_xlatb8 = u_xlat2.x==0.0;
            u_xlatb0.x = u_xlatb8 && u_xlatb0.x;
            if(!u_xlatb0.x){break;}
            u_xlat2.xy = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy, 0.0).xy;
            u_xlat1.xy = _MainTex_TexelSize.xy * vec2(-2.0, -0.0) + u_xlat1.xy;
            u_xlat1.z = u_xlat2.y;
        }
        u_xlat2.yz = u_xlat1.xz;
        u_xlat0.xz = u_xlat2.xz * vec2(0.5, -2.0) + vec2(0.0078125, 2.03125);
        u_xlat0.x = textureLod(sampler2D(_SearchTex, sampler_MainTex), u_xlat0.xz, 0.0).w;
        u_xlat0.x = u_xlat0.x * -2.00787401 + 3.25;
        u_xlat1.x = _MainTex_TexelSize.x * u_xlat0.x + u_xlat2.y;
        u_xlat1.y = vs_TEXCOORD3.y;
        u_xlat0.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat1.xy, 0.0).x;
        u_xlat2.xy = vs_TEXCOORD2.zw;
        u_xlat2.z = 1.0;
        u_xlat3.x = 0.0;
        while(true){
            u_xlatb12 = u_xlat2.x<vs_TEXCOORD4.y;
            u_xlatb13 = 0.828100026<u_xlat2.z;
            u_xlatb12 = u_xlatb12 && u_xlatb13;
            u_xlatb13 = u_xlat3.x==0.0;
            u_xlatb12 = u_xlatb12 && u_xlatb13;
            if(!u_xlatb12){break;}
            u_xlat3.xy = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy, 0.0).xy;
            u_xlat2.xy = _MainTex_TexelSize.xy * vec2(2.0, 0.0) + u_xlat2.xy;
            u_xlat2.z = u_xlat3.y;
        }
        u_xlat3.yz = u_xlat2.xz;
        u_xlat2.xy = u_xlat3.xz * vec2(0.5, -2.0) + vec2(0.5234375, 2.03125);
        u_xlat12 = textureLod(sampler2D(_SearchTex, sampler_MainTex), u_xlat2.xy, 0.0).w;
        u_xlat12 = u_xlat12 * -2.00787401 + 3.25;
        u_xlat1.z = (-_MainTex_TexelSize.x) * u_xlat12 + u_xlat3.y;
        u_xlat1.xw = _MainTex_TexelSize.zz * u_xlat1.xz + (-vs_TEXCOORD1.xx);
        u_xlat1.xw = roundEven(u_xlat1.xw);
        u_xlat1.xw = sqrt(abs(u_xlat1.xw));
        u_xlat0.z = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat1.zy, 0.0, ivec2(1, 0)).x;
        u_xlat0.xz = u_xlat0.xz * vec2(4.0, 4.0);
        u_xlat0.xz = roundEven(u_xlat0.xz);
        u_xlat0.xz = u_xlat0.xz * vec2(16.0, 16.0) + u_xlat1.xw;
        u_xlat0.xz = u_xlat0.xz * vec2(0.00625000009, 0.0017857143) + vec2(0.00312500005, 0.000892857148);
        u_xlat0.xz = textureLod(sampler2D(_AreaTex, sampler_MainTex), u_xlat0.xz, 0.0).xy;
        SV_Target0.xy = u_xlat0.xz;
    } else {
        SV_Target0.xy = vec2(0.0, 0.0);
    }
    if(u_xlatb0.y){
        u_xlat0.xy = vs_TEXCOORD3.xy;
        u_xlat0.z = 1.0;
        u_xlat1.x = 0.0;
        while(true){
            u_xlatb12 = vs_TEXCOORD4.z<u_xlat0.y;
            u_xlatb13 = 0.828100026<u_xlat0.z;
            u_xlatb12 = u_xlatb12 && u_xlatb13;
            u_xlatb13 = u_xlat1.x==0.0;
            u_xlatb12 = u_xlatb12 && u_xlatb13;
            if(!u_xlatb12){break;}
            u_xlat1.xy = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.xy, 0.0).yx;
            u_xlat0.xy = _MainTex_TexelSize.xy * vec2(-0.0, -2.0) + u_xlat0.xy;
            u_xlat0.z = u_xlat1.y;
        }
        u_xlat1.yz = u_xlat0.yz;
        u_xlat0.xy = u_xlat1.xz * vec2(0.5, -2.0) + vec2(0.0078125, 2.03125);
        u_xlat0.x = textureLod(sampler2D(_SearchTex, sampler_MainTex), u_xlat0.xy, 0.0).w;
        u_xlat0.x = u_xlat0.x * -2.00787401 + 3.25;
        u_xlat0.x = _MainTex_TexelSize.y * u_xlat0.x + u_xlat1.y;
        u_xlat0.y = vs_TEXCOORD2.x;
        u_xlat1.x = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat0.yx, 0.0).y;
        u_xlat2.xy = vs_TEXCOORD3.zw;
        u_xlat2.z = 1.0;
        u_xlat3.x = 0.0;
        while(true){
            u_xlatb12 = u_xlat2.y<vs_TEXCOORD4.w;
            u_xlatb9 = 0.828100026<u_xlat2.z;
            u_xlatb12 = u_xlatb12 && u_xlatb9;
            u_xlatb9 = u_xlat3.x==0.0;
            u_xlatb12 = u_xlatb12 && u_xlatb9;
            if(!u_xlatb12){break;}
            u_xlat3.xy = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat2.xy, 0.0).yx;
            u_xlat2.xy = _MainTex_TexelSize.xy * vec2(0.0, 2.0) + u_xlat2.xy;
            u_xlat2.z = u_xlat3.y;
        }
        u_xlat3.yz = u_xlat2.yz;
        u_xlat9.xy = u_xlat3.xz * vec2(0.5, -2.0) + vec2(0.5234375, 2.03125);
        u_xlat12 = textureLod(sampler2D(_SearchTex, sampler_MainTex), u_xlat9.xy, 0.0).w;
        u_xlat12 = u_xlat12 * -2.00787401 + 3.25;
        u_xlat0.z = (-_MainTex_TexelSize.y) * u_xlat12 + u_xlat3.y;
        u_xlat0.xw = _MainTex_TexelSize.ww * u_xlat0.xz + (-vs_TEXCOORD1.yy);
        u_xlat0.xw = roundEven(u_xlat0.xw);
        u_xlat0.xw = sqrt(abs(u_xlat0.xw));
        u_xlat1.y = textureLodOffset(sampler2D(_MainTex, sampler_MainTex), u_xlat0.yz, 0.0, ivec2(0, 1)).y;
        u_xlat4.xy = u_xlat1.xy * vec2(4.0, 4.0);
        u_xlat4.xy = roundEven(u_xlat4.xy);
        u_xlat0.xy = u_xlat4.xy * vec2(16.0, 16.0) + u_xlat0.xw;
        u_xlat0.xy = u_xlat0.xy * vec2(0.00625000009, 0.0017857143) + vec2(0.00312500005, 0.000892857148);
        u_xlat0.xy = textureLod(sampler2D(_AreaTex, sampler_MainTex), u_xlat0.xy, 0.0).xy;
        SV_Target0.zw = u_xlat0.xy;
    } else {
        SV_Target0.zw = vec2(0.0, 0.0);
    }
    return;
}

