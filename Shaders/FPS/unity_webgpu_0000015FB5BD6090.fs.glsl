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
layout(set = 0, binding = 0, std140) uniform PGlobals {
	vec4 _ScreenParams;
	vec4 _MainTex_TexelSize;
	vec2 _VelocityTex_TexelSize;
	vec2 _NeighborMaxTex_TexelSize;
	float _MaxBlurRadius;
	float _LoopCount;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _VelocityTex;
layout(set = 0, binding = 3) uniform mediump texture2D _NeighborMaxTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
float u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
bvec2 u_xlatb7;
vec3 u_xlat8;
float u_xlat13;
float u_xlat19;
vec2 u_xlat21;
float u_xlat22;
float u_xlat25;
float u_xlat28;
bool u_xlatb28;
float u_xlat29;
bool u_xlatb29;
float u_xlat31;
float u_xlat34;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_VelocityTex;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_NeighborMaxTex;
void main()
{
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat1.xy = vs_TEXCOORD0.xy + vec2(2.0, 0.0);
    u_xlat1.xy = u_xlat1.xy * _ScreenParams.xy;
    u_xlat1.xy = floor(u_xlat1.xy);
    u_xlat1.x = dot(vec2(0.0671105608, 0.00583714992), u_xlat1.xy);
    u_xlat1.x = fract(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * 52.9829178;
    u_xlat1.x = fract(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * 6.28318548;
    u_xlat2.x = cos(u_xlat1.x);
    u_xlat1.x = sin(u_xlat1.x);
    u_xlat2.y = u_xlat1.x;
    u_xlat1.xy = u_xlat2.xy * vec2(_NeighborMaxTex_TexelSize.x, _NeighborMaxTex_TexelSize.y);
    u_xlat1.xy = u_xlat1.xy * vec2(0.25, 0.25) + vs_TEXCOORD0.xy;
    u_xlat1.xy = texture(sampler2D(_NeighborMaxTex, sampler_NeighborMaxTex), u_xlat1.xy).xy;
    u_xlat19 = dot(u_xlat1.xy, u_xlat1.xy);
    u_xlat19 = sqrt(u_xlat19);
    u_xlatb28 = u_xlat19<2.0;
    if(u_xlatb28){
        SV_Target0 = u_xlat0;
        return;
    }
    u_xlat2.xyz = textureLod(sampler2D(_VelocityTex, sampler_VelocityTex), vs_TEXCOORD0.xy, 0.0).xyz;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_MaxBlurRadius);
    u_xlat28 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat28 = sqrt(u_xlat28);
    u_xlat3.xy = max(vec2(u_xlat28), vec2(0.5, 1.0));
    u_xlat28 = float(1.0) / u_xlat2.z;
    u_xlat29 = u_xlat3.x + u_xlat3.x;
    u_xlatb29 = u_xlat19<u_xlat29;
    u_xlat3.x = u_xlat19 / u_xlat3.x;
    u_xlat2.xy = u_xlat2.xy * u_xlat3.xx;
    u_xlat2.xy = (bool(u_xlatb29)) ? u_xlat2.xy : u_xlat1.xy;
    u_xlat29 = u_xlat19 * 0.5;
    u_xlat29 = min(u_xlat29, _LoopCount);
    u_xlat29 = floor(u_xlat29);
    u_xlat3.x = float(1.0) / u_xlat29;
    u_xlat21.xy = vs_TEXCOORD0.xy * _ScreenParams.xy;
    u_xlat21.xy = floor(u_xlat21.xy);
    u_xlat21.x = dot(vec2(0.0671105608, 0.00583714992), u_xlat21.xy);
    u_xlat3.z = fract(u_xlat21.x);
    u_xlat21.xy = u_xlat3.zx * vec2(52.9829178, 0.25);
    u_xlat21.x = fract(u_xlat21.x);
    u_xlat21.x = u_xlat21.x + -0.5;
    u_xlat4 = (-u_xlat3.x) * 0.5 + 1.0;
    u_xlat5.w = 1.0;
    u_xlat6.x = float(0.0);
    u_xlat6.y = float(0.0);
    u_xlat6.z = float(0.0);
    u_xlat6.w = float(0.0);
    u_xlat13 = u_xlat4;
    u_xlat22 = 0.0;
    u_xlat31 = u_xlat3.y;
    while(true){
        u_xlatb7.x = u_xlat21.y>=u_xlat13;
        if(u_xlatb7.x){break;}
        u_xlat7.xy = vec2(u_xlat22) * vec2(0.25, 0.5);
        u_xlat7.xy = fract(u_xlat7.xy);
        u_xlatb7.xy = lessThan(vec4(0.499000013, 0.499000013, 0.0, 0.0), u_xlat7.xyxx).xy;
        u_xlat7.xz = (u_xlatb7.x) ? u_xlat2.xy : u_xlat1.xy;
        u_xlat34 = (u_xlatb7.y) ? (-u_xlat13) : u_xlat13;
        u_xlat34 = u_xlat21.x * u_xlat3.x + u_xlat34;
        u_xlat7.xz = vec2(u_xlat34) * u_xlat7.xz;
        u_xlat8.xy = u_xlat7.xz * _MainTex_TexelSize.xy + vs_TEXCOORD0.xy;
        u_xlat7.xz = u_xlat7.xz * _VelocityTex_TexelSize.xy + vs_TEXCOORD0.xy;
        u_xlat5.xyz = textureLod(sampler2D(_MainTex, sampler_MainTex), u_xlat8.xy, 0.0).xyz;
        u_xlat8.xyz = textureLod(sampler2D(_VelocityTex, sampler_VelocityTex), u_xlat7.xz, 0.0).xyz;
        u_xlat7.xz = u_xlat8.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
        u_xlat7.xz = u_xlat7.xz * vec2(_MaxBlurRadius);
        u_xlat8.x = u_xlat2.z + (-u_xlat8.z);
        u_xlat8.x = u_xlat28 * u_xlat8.x;
        u_xlat8.x = u_xlat8.x * 20.0;
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat7.x = dot(u_xlat7.xz, u_xlat7.xz);
        u_xlat7.x = sqrt(u_xlat7.x);
        u_xlat7.x = (-u_xlat31) + u_xlat7.x;
        u_xlat7.x = u_xlat8.x * u_xlat7.x + u_xlat31;
        u_xlat25 = (-u_xlat19) * abs(u_xlat34) + u_xlat7.x;
        u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
        u_xlat25 = u_xlat25 / u_xlat7.x;
        u_xlat34 = (-u_xlat13) + 1.20000005;
        u_xlat25 = u_xlat34 * u_xlat25;
        u_xlat6 = u_xlat5 * vec4(u_xlat25) + u_xlat6;
        u_xlat31 = max(u_xlat31, u_xlat7.x);
        u_xlat5.x = (-u_xlat3.x) + u_xlat13;
        u_xlat13 = (u_xlatb7.y) ? u_xlat5.x : u_xlat13;
        u_xlat22 = u_xlat22 + 1.0;
    }
    u_xlat1.x = dot(vec2(u_xlat31), vec2(u_xlat29));
    u_xlat1.x = 1.20000005 / u_xlat1.x;
    u_xlat2.xyz = u_xlat0.xyz;
    u_xlat2.w = 1.0;
    u_xlat1 = u_xlat2 * u_xlat1.xxxx + u_xlat6;
    SV_Target0.xyz = u_xlat1.xyz / u_xlat1.www;
    SV_Target0.w = u_xlat0.w;
    return;
}

