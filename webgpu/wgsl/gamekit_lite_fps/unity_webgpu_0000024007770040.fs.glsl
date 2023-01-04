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
	mat4x4 unity_CameraInvProjection;
	mat4x4 unity_CameraToWorld;
	vec4 unity_ShadowSplitSpheres[4];
	vec4 unity_ShadowSplitSqRadii;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 _ShadowMapTexture_TexelSize;
};
layout(set = 0, binding = 1) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 2) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bvec4 u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec2 u_xlat10;
float u_xlat18;
float u_xlat27;
layout(set = 0, binding = 3) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 4) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
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
    u_xlat1.xyz = u_xlat0.xyz + (-unity_ShadowSplitSpheres[0].xyz);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-unity_ShadowSplitSpheres[1].xyz);
    u_xlat1.y = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-unity_ShadowSplitSpheres[2].xyz);
    u_xlat1.z = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.xyz = u_xlat0.xyz + (-unity_ShadowSplitSpheres[3].xyz);
    u_xlat1.w = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlatb1 = lessThan(u_xlat1, unity_ShadowSplitSqRadii);
    u_xlat2.x = (u_xlatb1.x) ? float(-1.0) : float(-0.0);
    u_xlat2.y = (u_xlatb1.y) ? float(-1.0) : float(-0.0);
    u_xlat2.z = (u_xlatb1.z) ? float(-1.0) : float(-0.0);
    u_xlat1.x = u_xlatb1.x ? float(1.0) : 0.0;
    u_xlat1.y = u_xlatb1.y ? float(1.0) : 0.0;
    u_xlat1.z = u_xlatb1.z ? float(1.0) : 0.0;
    u_xlat1.w = u_xlatb1.w ? float(1.0) : 0.0;
;
    u_xlat2.xyz = u_xlat2.xyz + u_xlat1.yzw;
    u_xlat1.yzw = max(u_xlat2.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat2.xyz = u_xlat0.yyy * unity_WorldToShadow[5 / 4][5 % 4].xyz;
    u_xlat2.xyz = unity_WorldToShadow[4 / 4][4 % 4].xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat2.xyz = unity_WorldToShadow[6 / 4][6 % 4].xyz * u_xlat0.zzz + u_xlat2.xyz;
    u_xlat2.xyz = unity_WorldToShadow[7 / 4][7 % 4].xyz * u_xlat0.www + u_xlat2.xyz;
    u_xlat2.xyz = u_xlat1.yyy * u_xlat2.xyz;
    u_xlat3.xyz = u_xlat0.yyy * unity_WorldToShadow[1 / 4][1 % 4].xyz;
    u_xlat3.xyz = unity_WorldToShadow[0 / 4][0 % 4].xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToShadow[2 / 4][2 % 4].xyz * u_xlat0.zzz + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToShadow[3 / 4][3 % 4].xyz * u_xlat0.www + u_xlat3.xyz;
    u_xlat2.xyz = u_xlat3.xyz * u_xlat1.xxx + u_xlat2.xyz;
    u_xlat1.x = dot(u_xlat1, vec4(1.0, 1.0, 1.0, 1.0));
    u_xlat3.xyz = u_xlat0.yyy * unity_WorldToShadow[9 / 4][9 % 4].xyz;
    u_xlat3.xyz = unity_WorldToShadow[8 / 4][8 % 4].xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToShadow[10 / 4][10 % 4].xyz * u_xlat0.zzz + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToShadow[11 / 4][11 % 4].xyz * u_xlat0.www + u_xlat3.xyz;
    u_xlat2.xyz = u_xlat3.xyz * u_xlat1.zzz + u_xlat2.xyz;
    u_xlat3.xyz = u_xlat0.yyy * unity_WorldToShadow[13 / 4][13 % 4].xyz;
    u_xlat3.xyz = unity_WorldToShadow[12 / 4][12 % 4].xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat0.xyz = unity_WorldToShadow[14 / 4][14 % 4].xyz * u_xlat0.zzz + u_xlat3.xyz;
    u_xlat0.xyz = unity_WorldToShadow[15 / 4][15 % 4].xyz * u_xlat0.www + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.www + u_xlat2.xyz;
    u_xlat10.xy = u_xlat0.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
    u_xlat10.xy = floor(u_xlat10.xy);
    u_xlat0.xy = u_xlat0.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat10.xy);
    u_xlat18 = (-u_xlat1.x) + u_xlat0.z;
    u_xlat18 = u_xlat18 + 1.0;
    u_xlat1.xw = (-u_xlat0.xy) + vec2(1.0, 1.0);
    u_xlat2.xy = min(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat1.xw = (-u_xlat2.xy) * u_xlat2.xy + u_xlat1.xw;
    u_xlat1.xw = u_xlat1.xw + vec2(2.0, 2.0);
    u_xlat2.xy = u_xlat1.xw * vec2(0.0816320032, 0.0816320032);
    u_xlat3.y = u_xlat2.x;
    u_xlat1.xw = max(u_xlat0.xy, vec2(0.0, 0.0));
    u_xlat4 = u_xlat0.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
    u_xlat1.xw = (-u_xlat1.xw) * u_xlat1.xw + u_xlat4.yw;
    u_xlat4 = u_xlat4.xxzz * u_xlat4.xxzz;
    u_xlat1.xw = u_xlat1.xw + vec2(2.0, 2.0);
    u_xlat5.z = u_xlat1.x * 0.0816320032;
    u_xlat6.z = u_xlat1.w * 0.0816320032;
    u_xlat5.yw = u_xlat0.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
    u_xlat1.xw = u_xlat4.xz * vec2(0.5, 0.5) + (-u_xlat0.xy);
    u_xlat4.xy = u_xlat4.yw * vec2(0.0408160016, 0.0408160016);
    u_xlat6.xy = u_xlat1.wx * vec2(0.0816320032, 0.0816320032);
    u_xlat5.x = u_xlat6.y;
    u_xlat3.xz = u_xlat0.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
    u_xlat3.w = u_xlat4.x;
    u_xlat2.w = u_xlat4.y;
    u_xlat4 = u_xlat3 + u_xlat5;
    u_xlat3 = u_xlat3 / u_xlat4;
    u_xlat3 = u_xlat3 + vec4(-3.5, -1.5, 0.5, 2.5);
    u_xlat3 = u_xlat3.wxyz * _ShadowMapTexture_TexelSize.xxxx;
    u_xlat6.yw = u_xlat0.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
    u_xlat2.xz = u_xlat0.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
    u_xlat5 = u_xlat2 + u_xlat6;
    u_xlat2 = u_xlat2 / u_xlat5;
    u_xlat2 = u_xlat2 + vec4(-3.5, -1.5, 0.5, 2.5);
    u_xlat2 = u_xlat2.xwyz * _ShadowMapTexture_TexelSize.yyyy;
    u_xlat6 = u_xlat4 * u_xlat5.xxxx;
    u_xlat7.xzw = u_xlat3.yzw;
    u_xlat7.y = u_xlat2.x;
    u_xlat8 = u_xlat10.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat7.xyzy;
    vec3 txVec0 = vec3(u_xlat8.xy,u_xlat18);
    u_xlat0.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
    vec3 txVec1 = vec3(u_xlat8.zw,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
    u_xlat9.x = u_xlat9.x * u_xlat6.y;
    u_xlat0.x = u_xlat6.x * u_xlat0.x + u_xlat9.x;
    u_xlat9.xz = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat7.wy;
    u_xlat3.y = u_xlat7.y;
    u_xlat1.xw = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xy;
    vec3 txVec2 = vec3(u_xlat1.xw,u_xlat18);
    u_xlat1.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
    vec3 txVec3 = vec3(u_xlat9.xz,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
    u_xlat0.x = u_xlat6.z * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat6.w * u_xlat1.x + u_xlat0.x;
    u_xlat6 = u_xlat4 * u_xlat5.yyyy;
    u_xlat7.y = u_xlat2.z;
    u_xlat8 = u_xlat10.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat7.xyzy;
    vec3 txVec4 = vec3(u_xlat8.xy,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec4, 0.0);
    vec3 txVec5 = vec3(u_xlat8.zw,u_xlat18);
    u_xlat27 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec5, 0.0);
    u_xlat0.x = u_xlat6.x * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat6.y * u_xlat27 + u_xlat0.x;
    u_xlat9.xz = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat7.wy;
    u_xlat3.z = u_xlat7.y;
    u_xlat1.xw = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xz;
    vec3 txVec6 = vec3(u_xlat1.xw,u_xlat18);
    u_xlat1.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec6, 0.0);
    vec3 txVec7 = vec3(u_xlat9.xz,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec7, 0.0);
    u_xlat0.x = u_xlat6.z * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat6.w * u_xlat1.x + u_xlat0.x;
    u_xlat6 = u_xlat4 * u_xlat5.zzzz;
    u_xlat4 = u_xlat4 * u_xlat5.wwww;
    u_xlat7.y = u_xlat2.w;
    u_xlat5 = u_xlat10.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat7.xyzy;
    vec3 txVec8 = vec3(u_xlat5.xy,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec8, 0.0);
    vec3 txVec9 = vec3(u_xlat5.zw,u_xlat18);
    u_xlat27 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec9, 0.0);
    u_xlat0.x = u_xlat6.x * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat6.y * u_xlat27 + u_xlat0.x;
    u_xlat9.xz = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat7.wy;
    u_xlat2.xzw = u_xlat7.xzw;
    u_xlat3.w = u_xlat7.y;
    u_xlat1.xw = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xw;
    vec3 txVec10 = vec3(u_xlat1.xw,u_xlat18);
    u_xlat1.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec10, 0.0);
    vec3 txVec11 = vec3(u_xlat9.xz,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec11, 0.0);
    u_xlat0.x = u_xlat6.z * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat6.w * u_xlat1.x + u_xlat0.x;
    u_xlat5 = u_xlat10.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat2.xyzy;
    u_xlat9.xz = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat2.wy;
    u_xlat3.y = u_xlat2.y;
    u_xlat1.xy = u_xlat10.xy * _ShadowMapTexture_TexelSize.xy + u_xlat3.xy;
    vec3 txVec12 = vec3(u_xlat1.xy,u_xlat18);
    u_xlat1.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec12, 0.0);
    vec3 txVec13 = vec3(u_xlat9.xz,u_xlat18);
    u_xlat9.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec13, 0.0);
    vec3 txVec14 = vec3(u_xlat5.xy,u_xlat18);
    u_xlat27 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec14, 0.0);
    vec3 txVec15 = vec3(u_xlat5.zw,u_xlat18);
    u_xlat18 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec15, 0.0);
    u_xlat0.x = u_xlat4.x * u_xlat27 + u_xlat0.x;
    u_xlat0.x = u_xlat4.y * u_xlat18 + u_xlat0.x;
    u_xlat0.x = u_xlat4.z * u_xlat9.x + u_xlat0.x;
    u_xlat0.x = u_xlat4.w * u_xlat1.x + u_xlat0.x;
    u_xlat9.x = (-_LightShadowData.x) + 1.0;
    SV_Target0 = u_xlat0.xxxx * u_xlat9.xxxx + _LightShadowData.xxxx;
    return;
}

