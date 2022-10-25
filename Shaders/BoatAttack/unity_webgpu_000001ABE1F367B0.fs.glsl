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
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform mediump texture2D _TaaMotionVectorTex;
layout(set = 0, binding = 3) uniform mediump texture2D _TaaAccumulationTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform mediump  sampler sampler_PointClamp;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_LinearClamp;
void main()
{
vec3 u_xlat0;
bvec2 u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
bool u_xlatb3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec2 u_xlat8;
vec2 u_xlat16;
bool u_xlatb16;
float u_xlat24;
bool u_xlatb24;
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_PointClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat0.x = min(u_xlat0.x, 1.0);
    u_xlat1 = _BlitTexture_TexelSize.xyxy * vec4(1.0, 0.0, 0.0, 1.0) + vs_TEXCOORD0.xyxy;
    u_xlat8.x = texture(sampler2D(_CameraDepthTexture, sampler_PointClamp), u_xlat1.xy, _GlobalMipBias.x).x;
    u_xlat8.x = (-u_xlat8.x) + 1.0;
    u_xlatb16 = u_xlat8.x<u_xlat0.x;
    u_xlat0.x = min(u_xlat8.x, u_xlat0.x);
    u_xlat8.x = u_xlatb16 ? 1.0 : float(0.0);
    u_xlat2 = _BlitTexture_TexelSize.xyxy * vec4(0.0, -1.0, -1.0, 0.0) + vs_TEXCOORD0.xyxy;
    u_xlat16.x = texture(sampler2D(_CameraDepthTexture, sampler_PointClamp), u_xlat2.xy, _GlobalMipBias.x).x;
    u_xlat16.x = (-u_xlat16.x) + 1.0;
    u_xlatb24 = u_xlat16.x<u_xlat0.x;
    u_xlat0.x = min(u_xlat16.x, u_xlat0.x);
    u_xlat8.x = (u_xlatb24) ? 0.0 : u_xlat8.x;
    u_xlat8.y = u_xlatb24 ? -1.0 : float(0.0);
    u_xlat24 = texture(sampler2D(_CameraDepthTexture, sampler_PointClamp), u_xlat2.zw, _GlobalMipBias.x).x;
    u_xlat24 = (-u_xlat24) + 1.0;
    u_xlatb3 = u_xlat24<u_xlat0.x;
    u_xlat0.x = min(u_xlat24, u_xlat0.x);
    u_xlat8.xy = (bool(u_xlatb3)) ? vec2(-1.0, 0.0) : u_xlat8.xy;
    u_xlat24 = texture(sampler2D(_CameraDepthTexture, sampler_PointClamp), u_xlat1.zw, _GlobalMipBias.x).x;
    u_xlat24 = (-u_xlat24) + 1.0;
    u_xlatb0.x = u_xlat24<u_xlat0.x;
    u_xlat3.xy = (u_xlatb0.x) ? vec2(0.0, 1.0) : u_xlat8.xy;
    u_xlat0.xy = _TaaMotionVectorTex_TexelSize.xy * u_xlat3.xy + vs_TEXCOORD0.xy;
    u_xlat0.xy = texture(sampler2D(_TaaMotionVectorTex, sampler_LinearClamp), u_xlat0.xy, _GlobalMipBias.x).xy;
    u_xlat16.xy = (-u_xlat0.xy) + vs_TEXCOORD0.xy;
    u_xlat3.xyz = texture(sampler2D(_TaaAccumulationTex, sampler_LinearClamp), u_xlat16.xy, _GlobalMipBias.x).xyz;
    u_xlat16.x = dot(u_xlat3.xz, vec2(0.5, -0.5));
    u_xlat4.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat3.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat4.x = dot(u_xlat3.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat4.z = u_xlat16.x + 0.501960814;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.xy, _GlobalMipBias.x).xyz;
    u_xlat2.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat2.zw, _GlobalMipBias.x).xyz;
    u_xlat16.x = dot(u_xlat3.xz, vec2(0.5, -0.5));
    u_xlat5.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat3.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat5.x = dot(u_xlat3.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat5.z = u_xlat16.x + 0.501960814;
    u_xlat3.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat16.x = dot(u_xlat3.xz, vec2(0.5, -0.5));
    u_xlat6.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat3.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat6.x = dot(u_xlat3.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat6.z = u_xlat16.x + 0.501960814;
    u_xlat3.xyz = min(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.xyz = max(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat16.x = dot(u_xlat2.xz, vec2(0.5, -0.5));
    u_xlat7.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat2.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat7.x = dot(u_xlat2.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat7.z = u_xlat16.x + 0.501960814;
    u_xlat2.xyz = min(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat3.xyz = max(u_xlat5.xyz, u_xlat7.xyz);
    u_xlat5.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = texture(sampler2D(_BlitTexture, sampler_LinearClamp), u_xlat1.zw, _GlobalMipBias.x).xyz;
    u_xlat16.x = dot(u_xlat5.xz, vec2(0.5, -0.5));
    u_xlat7.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat5.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat7.x = dot(u_xlat5.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat7.z = u_xlat16.x + 0.501960814;
    u_xlat2.xyz = min(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat3.xyz = max(u_xlat3.xyz, u_xlat7.xyz);
    u_xlat16.x = dot(u_xlat1.xz, vec2(0.5, -0.5));
    u_xlat5.y = u_xlat16.x + 0.501960814;
    u_xlat16.x = dot(u_xlat1.xzy, vec3(-0.25, -0.25, 0.5));
    u_xlat5.x = dot(u_xlat1.xzy, vec3(0.25, 0.25, 0.5));
    u_xlat5.z = u_xlat16.x + 0.501960814;
    u_xlat1.xyz = min(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat2.xyz = max(u_xlat3.xyz, u_xlat5.xyz);
    u_xlat1.xyz = max(u_xlat1.xyz, u_xlat4.xyz);
    u_xlat1.xyz = min(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat16.x = u_xlat1.x + 1.0;
    u_xlat16.x = float(1.0) / float(u_xlat16.x);
    u_xlat1.xyz = u_xlat16.xxx * u_xlat1.xyz;
    u_xlat16.x = u_xlat6.x + 1.0;
    u_xlat16.x = float(1.0) / float(u_xlat16.x);
    u_xlat2.xyz = u_xlat6.xyz * u_xlat16.xxx + (-u_xlat1.xyz);
    u_xlat16.xy = vs_TEXCOORD0.xy + vec2(-0.5, -0.5);
    u_xlat0.xy = (-u_xlat0.xy) + u_xlat16.xy;
    u_xlatb0.xy = lessThan(vec4(0.5, 0.5, 0.0, 0.0), abs(u_xlat0.xyxx)).xy;
    u_xlatb0.x = u_xlatb0.y || u_xlatb0.x;
    u_xlat0.x = (u_xlatb0.x) ? 1.0 : _TaaFrameInfluence;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat2.xyz + u_xlat1.xyz;
    u_xlat24 = (-u_xlat0.x) + 1.0;
    u_xlat24 = float(1.0) / float(u_xlat24);
    u_xlat8.xy = u_xlat0.zy * vec2(u_xlat24) + vec2(-0.501960814, -0.501960814);
    u_xlat1.x = u_xlat0.x * u_xlat24 + (-u_xlat8.y);
    u_xlat0.xz = u_xlat0.xx * vec2(u_xlat24) + u_xlat8.yx;
    SV_Target0.z = (-u_xlat8.x) + u_xlat1.x;
    SV_Target0.x = (-u_xlat8.x) + u_xlat0.x;
    SV_Target0.y = u_xlat0.z;
    SV_Target0.w = 1.0;
    return;
}

