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
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _ZBufferParams;
	mat4x4 unity_CameraToWorld;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	vec4 _LightPos;
	vec4 _LightColor;
	mat4x4 unity_WorldToLight;
	vec4 _ShadowMapTexture_TexelSize;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 2) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 3) uniform mediump texture2D _CameraGBufferTexture0;
layout(set = 0, binding = 4) uniform mediump texture2D _CameraGBufferTexture1;
layout(set = 0, binding = 5) uniform mediump texture2D _CameraGBufferTexture2;
layout(set = 0, binding = 6) uniform highp texture2D unity_NHxRoughness;
layout(set = 0, binding = 7) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 10) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 11) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 12) uniform highp  sampler samplerunity_NHxRoughness;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 14) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 15) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
float u_xlat19;
float u_xlat20;
bool u_xlatb20;
vec2 u_xlat22;
float u_xlat27;
float u_xlat28;
bool u_xlatb28;
    u_xlat0.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD1.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat27 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
    u_xlat27 = _ZBufferParams.x * u_xlat27 + _ZBufferParams.y;
    u_xlat27 = float(1.0) / u_xlat27;
    u_xlat2.xyz = vec3(u_xlat27) * u_xlat0.xyz;
    u_xlat3.xyz = u_xlat2.yyy * unity_CameraToWorld[1].xyz;
    u_xlat2.xyw = unity_CameraToWorld[0].xyz * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat2.xyw = unity_CameraToWorld[2].xyz * u_xlat2.zzz + u_xlat2.xyw;
    u_xlat2.xyw = u_xlat2.xyw + unity_CameraToWorld[3].xyz;
    u_xlat3.xyz = u_xlat2.xyw + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.z) * u_xlat27 + u_xlat0.x;
    u_xlat0.x = unity_ShadowFadeCenterAndType.w * u_xlat0.x + u_xlat2.z;
    u_xlat9.xyz = (-u_xlat2.xyw) + _LightPos.xyz;
    u_xlat19 = dot(u_xlat9.xyz, u_xlat9.xyz);
    u_xlat28 = inversesqrt(u_xlat19);
    u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat28);
    u_xlat3.xyz = u_xlat2.yyy * unity_WorldToLight[1].xyw;
    u_xlat3.xyz = unity_WorldToLight[0].xyw * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat3.xyz = unity_WorldToLight[2].xyw * u_xlat2.www + u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz + unity_WorldToLight[3].xyw;
    u_xlat3.xy = u_xlat3.xy / u_xlat3.zz;
    u_xlat28 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat3.xy, -8.0).w;
    u_xlatb20 = u_xlat3.z<0.0;
    u_xlat20 = u_xlatb20 ? 1.0 : float(0.0);
    u_xlat28 = u_xlat28 * u_xlat20;
    u_xlat19 = u_xlat19 * _LightPos.w;
    u_xlat19 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat19)).x;
    u_xlat19 = u_xlat19 * u_xlat28;
    u_xlat0.x = u_xlat0.x * _LightShadowData.z + _LightShadowData.w;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb28 = u_xlat0.x<0.99000001;
    if(u_xlatb28){
        u_xlat3 = u_xlat2.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
        u_xlat3 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat2.xxxx + u_xlat3;
        u_xlat3 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat2.wwww + u_xlat3;
        u_xlat3 = u_xlat3 + unity_WorldToShadow[3 / 4][3 % 4];
        u_xlat3.xyz = u_xlat3.xyz / u_xlat3.www;
        u_xlat4.xy = u_xlat3.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
        u_xlat4.xy = floor(u_xlat4.xy);
        u_xlat3.xy = u_xlat3.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat4.xy);
        u_xlat5 = u_xlat3.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
        u_xlat6.xw = u_xlat5.xz * u_xlat5.xz;
        u_xlat22.xy = u_xlat6.xw * vec2(0.5, 0.5) + (-u_xlat3.xy);
        u_xlat5.xz = (-u_xlat3.xy) + vec2(1.0, 1.0);
        u_xlat7.xy = min(u_xlat3.xy, vec2(0.0, 0.0));
        u_xlat5.xz = (-u_xlat7.xy) * u_xlat7.xy + u_xlat5.xz;
        u_xlat3.xy = max(u_xlat3.xy, vec2(0.0, 0.0));
        u_xlat3.xy = (-u_xlat3.xy) * u_xlat3.xy + u_xlat5.yw;
        u_xlat7.x = u_xlat22.x;
        u_xlat7.y = u_xlat5.x;
        u_xlat7.z = u_xlat3.x;
        u_xlat7.w = u_xlat6.x;
        u_xlat7 = u_xlat7 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat6.x = u_xlat22.y;
        u_xlat6.y = u_xlat5.z;
        u_xlat6.z = u_xlat3.y;
        u_xlat5 = u_xlat6 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat6 = u_xlat7.ywyw + u_xlat7.xzxz;
        u_xlat8 = u_xlat5.yyww + u_xlat5.xxzz;
        u_xlat3.xy = u_xlat7.yw / u_xlat6.zw;
        u_xlat3.xy = u_xlat3.xy + vec2(-1.5, 0.5);
        u_xlat22.xy = u_xlat5.yw / u_xlat8.yw;
        u_xlat22.xy = u_xlat22.xy + vec2(-1.5, 0.5);
        u_xlat5.xy = u_xlat3.xy * _ShadowMapTexture_TexelSize.xx;
        u_xlat5.zw = u_xlat22.xy * _ShadowMapTexture_TexelSize.yy;
        u_xlat6 = u_xlat6 * u_xlat8;
        u_xlat7 = u_xlat4.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat5.xzyz;
        vec3 txVec0 = vec3(u_xlat7.xy,u_xlat3.z);
        u_xlat28 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
        vec3 txVec1 = vec3(u_xlat7.zw,u_xlat3.z);
        u_xlat20 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
        u_xlat20 = u_xlat20 * u_xlat6.y;
        u_xlat28 = u_xlat6.x * u_xlat28 + u_xlat20;
        u_xlat4 = u_xlat4.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat5.xwyw;
        vec3 txVec2 = vec3(u_xlat4.xy,u_xlat3.z);
        u_xlat20 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
        u_xlat28 = u_xlat6.z * u_xlat20 + u_xlat28;
        vec3 txVec3 = vec3(u_xlat4.zw,u_xlat3.z);
        u_xlat20 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
        u_xlat28 = u_xlat6.w * u_xlat20 + u_xlat28;
        u_xlat20 = (-_LightShadowData.x) + 1.0;
        u_xlat28 = u_xlat28 * u_xlat20 + _LightShadowData.x;
    } else {
        u_xlat28 = 1.0;
    }
    u_xlat20 = (-u_xlat28) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat20 + u_xlat28;
    u_xlat0.x = u_xlat0.x * u_xlat19;
    u_xlat3.xyz = u_xlat0.xxx * _LightColor.xyz;
    u_xlat4.xyz = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).xyz;
    u_xlat5 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat2.xyw + (-_WorldSpaceCameraPos.xyz);
    u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat0.x = dot((-u_xlat2.xyz), u_xlat1.xyz);
    u_xlat0.x = u_xlat0.x + u_xlat0.x;
    u_xlat2.xyz = u_xlat1.xyz * (-u_xlat0.xxx) + (-u_xlat2.xyz);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat9.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat9.x = dot(u_xlat2.xyz, u_xlat9.xyz);
    u_xlat9.x = u_xlat9.x * u_xlat9.x;
    u_xlat1.x = u_xlat9.x * u_xlat9.x;
    u_xlat1.y = (-u_xlat5.w) + 1.0;
    u_xlat9.x = texture(sampler2D(unity_NHxRoughness, samplerunity_NHxRoughness), u_xlat1.xy).x;
    u_xlat9.x = u_xlat9.x * 16.0;
    u_xlat9.xyz = u_xlat9.xxx * u_xlat5.xyz + u_xlat4.xyz;
    u_xlat1.xyz = u_xlat0.xxx * u_xlat3.xyz;
    u_xlat0.xyz = u_xlat9.xyz * u_xlat1.xyz;
    u_xlat0.w = 1.0;
    SV_Target0 = exp2((-u_xlat0));
    return;
}

