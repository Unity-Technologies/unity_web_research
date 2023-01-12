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
	mat4x4 unity_CameraInvProjection;
	mat4x4 unity_CameraToWorld;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 _ShadowMapTexture_TexelSize;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 3) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
float u_xlat16;
vec2 u_xlat17;
float u_xlat24;
    u_xlat0.x = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), vs_TEXCOORD0.xy).x;
    u_xlat0.z = (-u_xlat0.x) + 1.0;
    u_xlat0.xy = vs_TEXCOORD0.zw;
    u_xlat0.xyz = u_xlat0.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat1 = u_xlat0.yyyy * unity_CameraInvProjection[1];
    u_xlat1 = unity_CameraInvProjection[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_CameraInvProjection[2] * u_xlat0.zzzz + u_xlat1;
    u_xlat0 = u_xlat0 + unity_CameraInvProjection[3];
    u_xlat0.xyz = u_xlat0.xyz / u_xlat0.www;
    u_xlat1 = u_xlat0.yyyy * unity_CameraToWorld[1];
    u_xlat1 = unity_CameraToWorld[0] * u_xlat0.xxxx + u_xlat1;
    u_xlat0 = unity_CameraToWorld[2] * (-u_xlat0.zzzz) + u_xlat1;
    u_xlat0 = u_xlat0 + unity_CameraToWorld[3];
    u_xlat1.xyz = u_xlat0.yyy * unity_WorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat1.xyz = unity_WorldToShadow[0 / 4][0 % 4].xyz * u_xlat0.xxx + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToShadow[2 / 4][2 % 4].xyz * u_xlat0.zzz + u_xlat1.xyz;
    u_xlat0.xyz = unity_WorldToShadow[3 / 4][3 % 4].xyz * u_xlat0.www + u_xlat0.xyz;
    u_xlat1.xy = u_xlat0.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
    u_xlat1.xy = floor(u_xlat1.xy);
    u_xlat0.xy = u_xlat0.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat1.xy);
    u_xlat17.xy = (-u_xlat0.xy) + vec2(1.0, 1.0);
    u_xlat2.xy = min(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat17.xy = (-u_xlat2.xy) * u_xlat2.xy + u_xlat17.xy;
    u_xlat17.xy = u_xlat17.xy + vec2(2.0, 2.0);
    u_xlat2.xy = u_xlat17.xy * vec2(0.0816320032, 0.0816320032);
    u_xlat3.y = u_xlat2.x;
    u_xlat17.xy = max(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat4 = u_xlat0.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
    u_xlat17.xy = (-u_xlat17.xy) * u_xlat17.xy + u_xlat4.yw;
    u_xlat4 = u_xlat4.xxzz * u_xlat4.xxzz;
    u_xlat17.xy = u_xlat17.xy + vec2(2.0, 2.0);
    u_xlat5.z = u_xlat17.x * 0.0816320032;
    u_xlat6.z = u_xlat17.y * 0.0816320032;
    u_xlat17.xy = u_xlat4.xz * vec2(0.5, 0.5) + (-u_xlat0.xy);
    u_xlat3.zw = u_xlat4.wy * vec2(0.0408160016, 0.0408160016);
    u_xlat6.xy = u_xlat17.yx * vec2(0.0816320032, 0.0816320032);
    u_xlat5.x = u_xlat6.y;
    u_xlat2.w = u_xlat3.z;
    u_xlat5.yw = u_xlat0.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
    u_xlat3.xz = u_xlat0.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
    u_xlat4 = u_xlat3 + u_xlat5;
    u_xlat3 = u_xlat3 / u_xlat4;
    u_xlat3 = u_xlat3 + vec4(-3.5, -1.5, 0.5, 2.5);
    u_xlat3 = u_xlat3.wxyz * _ShadowMapTexture_TexelSize.xxxx;
    u_xlat5.xzw = u_xlat3.yzw;
    u_xlat6.yw = u_xlat0.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
    u_xlat2.xz = u_xlat0.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
    u_xlat6 = u_xlat2 + u_xlat6;
    u_xlat2 = u_xlat2 / u_xlat6;
    u_xlat2 = u_xlat2 + vec4(-3.5, -1.5, 0.5, 2.5);
    u_xlat2 = u_xlat2.xwyz * _ShadowMapTexture_TexelSize.yyyy;
    u_xlat5.y = u_xlat2.x;
    u_xlat7 = u_xlat1.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat5.xyzy;
    vec3 txVec0 = vec3(u_xlat7.zw,u_xlat0.z);
    u_xlat0.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
    vec3 txVec1 = vec3(u_xlat7.xy,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
    u_xlat7 = u_xlat4 * u_xlat6.xxxx;
    u_xlat0.x = u_xlat0.x * u_xlat7.y;
    u_xlat0.x = u_xlat7.x * u_xlat8.x + u_xlat0.x;
    u_xlat8.xz = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat5.wy;
    u_xlat3.y = u_xlat5.y;
    u_xlat17.xy = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xy;
    vec3 txVec2 = vec3(u_xlat17.xy,u_xlat0.z);
    u_xlat17.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
    vec3 txVec3 = vec3(u_xlat8.xz,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
    u_xlat0.x = u_xlat7.z * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat7.w * u_xlat17.x + u_xlat0.x;
    u_xlat5.y = u_xlat2.z;
    u_xlat7 = u_xlat1.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat5.xyzy;
    vec3 txVec4 = vec3(u_xlat7.xy,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec4, 0.0);
    vec3 txVec5 = vec3(u_xlat7.zw,u_xlat0.z);
    u_xlat24 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec5, 0.0);
    u_xlat7 = u_xlat4 * u_xlat6.yyyy;
    u_xlat0.x = u_xlat7.x * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat7.y * u_xlat24 + u_xlat0.x;
    u_xlat8.xz = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat5.wy;
    u_xlat3.z = u_xlat5.y;
    u_xlat17.xy = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xz;
    vec3 txVec6 = vec3(u_xlat17.xy,u_xlat0.z);
    u_xlat17.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec6, 0.0);
    vec3 txVec7 = vec3(u_xlat8.xz,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec7, 0.0);
    u_xlat0.x = u_xlat7.z * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat7.w * u_xlat17.x + u_xlat0.x;
    u_xlat5.y = u_xlat2.w;
    u_xlat7 = u_xlat1.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat5.xyzy;
    vec3 txVec8 = vec3(u_xlat7.xy,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec8, 0.0);
    vec3 txVec9 = vec3(u_xlat7.zw,u_xlat0.z);
    u_xlat24 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec9, 0.0);
    u_xlat7 = u_xlat4 * u_xlat6.zzzz;
    u_xlat4 = u_xlat4 * u_xlat6.wwww;
    u_xlat0.x = u_xlat7.x * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat7.y * u_xlat24 + u_xlat0.x;
    u_xlat8.xz = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat5.wy;
    u_xlat2.xzw = u_xlat5.xzw;
    u_xlat3.w = u_xlat5.y;
    u_xlat17.xy = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xw;
    vec3 txVec10 = vec3(u_xlat17.xy,u_xlat0.z);
    u_xlat17.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec10, 0.0);
    vec3 txVec11 = vec3(u_xlat8.xz,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec11, 0.0);
    u_xlat0.x = u_xlat7.z * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat7.w * u_xlat17.x + u_xlat0.x;
    u_xlat5 = u_xlat1.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat2.xyzy;
    u_xlat8.xz = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat2.wy;
    u_xlat3.y = u_xlat2.y;
    u_xlat1.xy = u_xlat1.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xy;
    vec3 txVec12 = vec3(u_xlat1.xy,u_xlat0.z);
    u_xlat1.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec12, 0.0);
    vec3 txVec13 = vec3(u_xlat8.xz,u_xlat0.z);
    u_xlat8.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec13, 0.0);
    vec3 txVec14 = vec3(u_xlat5.xy,u_xlat0.z);
    u_xlat24 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec14, 0.0);
    vec3 txVec15 = vec3(u_xlat5.zw,u_xlat0.z);
    u_xlat16 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec15, 0.0);
    u_xlat0.x = u_xlat4.x * u_xlat24 + u_xlat0.x;
    u_xlat0.x = u_xlat4.y * u_xlat16 + u_xlat0.x;
    u_xlat0.x = u_xlat4.z * u_xlat8.x + u_xlat0.x;
    u_xlat0.x = u_xlat4.w * u_xlat1.x + u_xlat0.x;
    u_xlat8.x = (-_LightShadowData.x) + 1.0;
    SV_Target0 = u_xlat0.xxxx * u_xlat8.xxxx + _LightShadowData.xxxx;
    return;
}

