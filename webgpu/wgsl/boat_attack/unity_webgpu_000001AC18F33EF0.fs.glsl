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
	vec4 _RTHandleScale;
	vec4 _BlitTexture_TexelSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(location = 0) in highp  vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec2 u_xlat14;
layout(set = 0, binding = 1) uniform mediump  sampler sampler_LinearClamp;
void main()
{
    u_xlat0.xz = _BlitTexture_TexelSize.xx * vec2(8.0, 6.0);
    u_xlat0.y = float(0.0);
    u_xlat0.w = float(0.0);
    u_xlat1 = (-u_xlat0) + vs_TEXCOORD0.xyxy;
    u_xlat0 = u_xlat0.zwxw + vs_TEXCOORD0.xyxy;
    u_xlat2.xy = _RTHandleScale.xy + (-_BlitTexture_TexelSize.xy);
    u_xlat1 = min(u_xlat1, u_xlat2.xyxy);
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = u_xlat3.xyz * vec3(0.0540540516, 0.0540540516, 0.0540540516);
    u_xlat1.xyz = u_xlat1.xyz * vec3(0.0162162203, 0.0162162203, 0.0162162203) + u_xlat3.xyz;
    u_xlat3.xz = _BlitTexture_TexelSize.xx * vec2(4.0, 2.0);
    u_xlat3.y = float(0.0);
    u_xlat3.w = float(0.0);
    u_xlat4 = (-u_xlat3) + vs_TEXCOORD0.xyxy;
    u_xlat3 = u_xlat3.zwxy + vs_TEXCOORD0.xyxy;
    u_xlat3 = min(u_xlat2.xyxy, u_xlat3);
    u_xlat4 = min(u_xlat2.xyxy, u_xlat4);
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.xy, _GlobalMipBias.x).xyz;
    u_xlat4.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat4.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat5.xyz * vec3(0.121621624, 0.121621624, 0.121621624) + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat4.xyz * vec3(0.194594592, 0.194594592, 0.194594592) + u_xlat1.xyz;
    u_xlat14.xy = min(u_xlat2.xy, vs_TEXCOORD0.xy);
    u_xlat0 = min(u_xlat0, u_xlat2.xyxy);
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat14.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat2.xyz * vec3(0.227027029, 0.227027029, 0.227027029) + u_xlat1.xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat2.xyz * vec3(0.194594592, 0.194594592, 0.194594592) + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat3.xyz * vec3(0.121621624, 0.121621624, 0.121621624) + u_xlat1.xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat2.xyz * vec3(0.0540540516, 0.0540540516, 0.0540540516) + u_xlat1.xyz;
    SV_Target0.xyz = u_xlat0.xyz * vec3(0.0162162203, 0.0162162203, 0.0162162203) + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

