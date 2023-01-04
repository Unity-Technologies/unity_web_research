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
layout(set = 1, binding = 1, std140) uniform TemporalAAData {
	vec4 _BlitTexture_TexelSize;
	vec4 _TaaMotionVectorTex_TexelSize;
	vec4 _TaaAccumulationTex_TexelSize;
	float _TaaFrameInfluence;
};
layout(set = 0, binding = 0) uniform mediump texture2D _BlitTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _TaaMotionVectorTex;
layout(set = 0, binding = 2) uniform mediump texture2D _TaaAccumulationTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 3) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec2 u_xlat7;
float u_xlat21;
    u_xlat0.xy = texture(sampler2D(_TaaMotionVectorTex, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xy;
    u_xlat0.xy = (-u_xlat0.xy) + vs_TEXCOORD0.xy;
    u_xlat0.xyz = texture(sampler2D(_TaaAccumulationTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat21 = dot(u_xlat0.xz, vec2(0.5, -0.5));
    u_xlat1.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat0.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat1.x = dot(u_xlat0.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat1.z = u_xlat21 + 0.501960814;
    u_xlat0 = _BlitTexture_TexelSize.xyxy * vec4(0.0, -1.0, -1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat0.zw, _GlobalMipBias.x).xyz;
    u_xlat21 = dot(u_xlat2.xz, vec2(0.5, -0.5));
    u_xlat3.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat2.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat3.x = dot(u_xlat2.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat3.z = u_xlat21 + 0.501960814;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat21 = dot(u_xlat2.xz, vec2(0.5, -0.5));
    u_xlat4.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat2.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat4.x = dot(u_xlat2.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat4.z = u_xlat21 + 0.501960814;
    u_xlat2.xyz = min(u_xlat3.xyz, u_xlat4.xyz);
    u_xlat3.xyz = max(u_xlat3.xyz, u_xlat4.xyz);
    u_xlat21 = dot(u_xlat0.xz, vec2(0.5, -0.5));
    u_xlat5.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat0.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat5.x = dot(u_xlat0.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat5.z = u_xlat21 + 0.501960814;
    u_xlat0.xyz = min(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat2.xyz = max(u_xlat3.xyz, u_xlat5.xyz);
    u_xlat3 = _BlitTexture_TexelSize.xyxy * vec4(1.0, 0.0, 0.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.xy, _GlobalMipBias.x).xyz;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat3.zw, _GlobalMipBias.x).xyz;
    u_xlat21 = dot(u_xlat5.xz, vec2(0.5, -0.5));
    u_xlat6.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat5.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat6.x = dot(u_xlat5.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat6.z = u_xlat21 + 0.501960814;
    u_xlat0.xyz = min(u_xlat0.xyz, u_xlat6.xyz);
    u_xlat2.xyz = max(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat21 = dot(u_xlat3.xz, vec2(0.5, -0.5));
    u_xlat5.y = u_xlat21 + 0.501960814;
    u_xlat21 = dot(u_xlat3.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat5.x = dot(u_xlat3.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat5.z = u_xlat21 + 0.501960814;
    u_xlat0.xyz = min(u_xlat0.xyz, u_xlat5.xyz);
    u_xlat2.xyz = max(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat0.xyz = max(u_xlat0.xyz, u_xlat1.xyz);
    u_xlat0.xyz = min(u_xlat2.xyz, u_xlat0.xyz);
    u_xlat21 = u_xlat0.x + 1.0;
    u_xlat21 = float(1.0) / float(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat21 = u_xlat4.x + 1.0;
    u_xlat21 = float(1.0) / float(u_xlat21);
    u_xlat1.xyz = u_xlat4.xyz * vec3(u_xlat21) + (-u_xlat0.xyz);
    u_xlat0.xyz = vec3(_TaaFrameInfluence) * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat21 = (-u_xlat0.x) + 1.0;
    u_xlat21 = float(1.0) / float(u_xlat21);
    u_xlat7.xy = u_xlat0.zy * vec2(u_xlat21) + vec2(-0.501960814, -0.501960814);
    u_xlat1.x = u_xlat0.x * u_xlat21 + (-u_xlat7.y);
    u_xlat0.xz = u_xlat0.xx * vec2(u_xlat21) + u_xlat7.yx;
    SV_Target0.z = (-u_xlat7.x) + u_xlat1.x;
    SV_Target0.x = (-u_xlat7.x) + u_xlat0.x;
    SV_Target0.y = u_xlat0.z;
    SV_Target0.w = 1.0;
    return;
}

