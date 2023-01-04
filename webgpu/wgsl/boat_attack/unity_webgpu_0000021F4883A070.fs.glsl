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
	vec2 _GlobalMipBias;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_PointClamp;
void main()
{
vec3 u_xlat0;
bvec2 u_xlatb0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec2 u_xlat6;
float u_xlat12;
vec2 u_xlat14;
bvec2 u_xlatb14;
float u_xlat18;
bool u_xlatb18;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = log2(abs(u_xlat0.xyz));
    u_xlat0.xyz = u_xlat0.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat0.xyz = exp2(u_xlat0.xyz);
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = log2(abs(u_xlat1.xyz));
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat1.xyz = exp2(u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-u_xlat1.xyz);
    u_xlat18 = max(abs(u_xlat2.y), abs(u_xlat2.x));
    u_xlat2.x = max(abs(u_xlat2.z), u_xlat18);
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD1.zw, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = log2(abs(u_xlat3.xyz));
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat3.xyz = exp2(u_xlat3.xyz);
    u_xlat4.xyz = u_xlat0.xyz + (-u_xlat3.xyz);
    u_xlat18 = max(abs(u_xlat4.y), abs(u_xlat4.x));
    u_xlat2.y = max(abs(u_xlat4.z), u_xlat18);
    u_xlatb14.xy = greaterThanEqual(u_xlat2.xyxy, vec4(0.100000001, 0.100000001, 0.100000001, 0.100000001)).xy;
    u_xlat14.x = u_xlatb14.x ? float(1.0) : 0.0;
    u_xlat14.y = u_xlatb14.y ? float(1.0) : 0.0;
;
    u_xlat18 = dot(u_xlat14.xy, vec2(1.0, 1.0));
    u_xlatb18 = u_xlat18==0.0;
    if(((int(u_xlatb18) * int(0xffffffffu)))!=0){discard;}
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD2.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = log2(abs(u_xlat4.xyz));
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat4.xyz = exp2(u_xlat4.xyz);
    u_xlat4.xyz = u_xlat0.xyz + (-u_xlat4.xyz);
    u_xlat18 = max(abs(u_xlat4.y), abs(u_xlat4.x));
    u_xlat4.x = max(abs(u_xlat4.z), u_xlat18);
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD2.zw, _GlobalMipBias.x).xyz;
    u_xlat5.xyz = log2(abs(u_xlat5.xyz));
    u_xlat5.xyz = u_xlat5.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat5.xyz = exp2(u_xlat5.xyz);
    u_xlat0.xyz = u_xlat0.xyz + (-u_xlat5.xyz);
    u_xlat0.x = max(abs(u_xlat0.y), abs(u_xlat0.x));
    u_xlat4.y = max(abs(u_xlat0.z), u_xlat0.x);
    u_xlat0.xy = max(u_xlat2.xy, u_xlat4.xy);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD3.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = log2(abs(u_xlat4.xyz));
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat4.xyz = exp2(u_xlat4.xyz);
    u_xlat1.xyz = u_xlat1.xyz + (-u_xlat4.xyz);
    u_xlat12 = max(abs(u_xlat1.y), abs(u_xlat1.x));
    u_xlat1.x = max(abs(u_xlat1.z), u_xlat12);
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_PointClamp), vs_TEXCOORD3.zw, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = log2(abs(u_xlat4.xyz));
    u_xlat4.xyz = u_xlat4.xyz * vec3(0.454545468, 0.454545468, 0.454545468);
    u_xlat4.xyz = exp2(u_xlat4.xyz);
    u_xlat3.xyz = u_xlat3.xyz + (-u_xlat4.xyz);
    u_xlat12 = max(abs(u_xlat3.y), abs(u_xlat3.x));
    u_xlat1.y = max(abs(u_xlat3.z), u_xlat12);
    u_xlat0.xy = max(u_xlat0.xy, u_xlat1.xy);
    u_xlat0.x = max(u_xlat0.y, u_xlat0.x);
    u_xlat6.xy = u_xlat2.xy + u_xlat2.xy;
    u_xlatb0.xy = greaterThanEqual(u_xlat6.xyxx, u_xlat0.xxxx).xy;
    u_xlat0.x = u_xlatb0.x ? float(1.0) : 0.0;
    u_xlat0.y = u_xlatb0.y ? float(1.0) : 0.0;
;
    u_xlat0.xy = u_xlat0.xy * u_xlat14.xy;
    SV_Target0.xy = u_xlat0.xy;
    SV_Target0.zw = vec2(0.0, 0.0);
    return;
}

