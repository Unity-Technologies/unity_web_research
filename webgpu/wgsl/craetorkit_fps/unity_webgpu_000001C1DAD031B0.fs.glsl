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
layout(set = 0, binding = 6) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform highp  sampler sampler_CameraDepthTexture;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 10) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_CameraGBufferTexture0;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_CameraGBufferTexture1;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_CameraGBufferTexture2;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
float u_xlat11;
float u_xlat20;
float u_xlat21;
float u_xlat22;
bool u_xlatb22;
vec2 u_xlat25;
float u_xlat30;
bool u_xlatb30;
float u_xlat31;
float u_xlat33;
bool u_xlatb33;
    u_xlat0.x = _ProjectionParams.z / vs_TEXCOORD1.z;
    u_xlat0.xyz = u_xlat0.xxx * vs_TEXCOORD1.xyz;
    u_xlat1.xy = vs_TEXCOORD0.xy / vs_TEXCOORD0.ww;
    u_xlat30 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat1.xy).x;
    u_xlat30 = _ZBufferParams.x * u_xlat30 + _ZBufferParams.y;
    u_xlat30 = float(1.0) / u_xlat30;
    u_xlat2.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat3.xyz = u_xlat2.yyy * unity_CameraToWorld[1].xyz;
    u_xlat2.xyw = unity_CameraToWorld[0].xyz * u_xlat2.xxx + u_xlat3.xyz;
    u_xlat2.xyw = unity_CameraToWorld[2].xyz * u_xlat2.zzz + u_xlat2.xyw;
    u_xlat2.xyw = u_xlat2.xyw + unity_CameraToWorld[3].xyz;
    u_xlat3.xyz = u_xlat2.xyw + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat0.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat0.x = sqrt(u_xlat0.x);
    u_xlat0.x = (-u_xlat0.z) * u_xlat30 + u_xlat0.x;
    u_xlat0.x = unity_ShadowFadeCenterAndType.w * u_xlat0.x + u_xlat2.z;
    u_xlat10.xyz = (-u_xlat2.xyw) + _LightPos.xyz;
    u_xlat21 = dot(u_xlat10.xyz, u_xlat10.xyz);
    u_xlat31 = inversesqrt(u_xlat21);
    u_xlat3.xyz = u_xlat10.xyz * vec3(u_xlat31);
    u_xlat4.xyz = u_xlat2.yyy * unity_WorldToLight[1].xyw;
    u_xlat4.xyz = unity_WorldToLight[0].xyw * u_xlat2.xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToLight[2].xyw * u_xlat2.www + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + unity_WorldToLight[3].xyw;
    u_xlat4.xy = u_xlat4.xy / u_xlat4.zz;
    u_xlat22 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat4.xy, -8.0).w;
    u_xlatb33 = u_xlat4.z<0.0;
    u_xlat33 = u_xlatb33 ? 1.0 : float(0.0);
    u_xlat22 = u_xlat22 * u_xlat33;
    u_xlat21 = u_xlat21 * _LightPos.w;
    u_xlat21 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat21)).x;
    u_xlat21 = u_xlat21 * u_xlat22;
    u_xlat0.x = u_xlat0.x * _LightShadowData.z + _LightShadowData.w;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlatb22 = u_xlat0.x<0.99000001;
    if(u_xlatb22){
        u_xlat4 = u_xlat2.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
        u_xlat4 = unity_WorldToShadow[0 / 4][0 % 4] * u_xlat2.xxxx + u_xlat4;
        u_xlat4 = unity_WorldToShadow[2 / 4][2 % 4] * u_xlat2.wwww + u_xlat4;
        u_xlat4 = u_xlat4 + unity_WorldToShadow[3 / 4][3 % 4];
        u_xlat4.xyz = u_xlat4.xyz / u_xlat4.www;
        u_xlat5.xy = u_xlat4.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
        u_xlat5.xy = floor(u_xlat5.xy);
        u_xlat4.xy = u_xlat4.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat5.xy);
        u_xlat6 = u_xlat4.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
        u_xlat7.xw = u_xlat6.xz * u_xlat6.xz;
        u_xlat25.xy = u_xlat7.xw * vec2(0.5, 0.5) + (-u_xlat4.xy);
        u_xlat6.xz = (-u_xlat4.xy) + vec2(1.0, 1.0);
        u_xlat8.xy = min(u_xlat4.xy, vec2(0.0, 0.0));
        u_xlat6.xz = (-u_xlat8.xy) * u_xlat8.xy + u_xlat6.xz;
        u_xlat4.xy = max(u_xlat4.xy, vec2(0.0, 0.0));
        u_xlat4.xy = (-u_xlat4.xy) * u_xlat4.xy + u_xlat6.yw;
        u_xlat8.x = u_xlat25.x;
        u_xlat8.y = u_xlat6.x;
        u_xlat8.z = u_xlat4.x;
        u_xlat8.w = u_xlat7.x;
        u_xlat8 = u_xlat8 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat7.x = u_xlat25.y;
        u_xlat7.y = u_xlat6.z;
        u_xlat7.z = u_xlat4.y;
        u_xlat6 = u_xlat7 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat7 = u_xlat8.ywyw + u_xlat8.xzxz;
        u_xlat9 = u_xlat6.yyww + u_xlat6.xxzz;
        u_xlat4.xy = u_xlat8.yw / u_xlat7.zw;
        u_xlat4.xy = u_xlat4.xy + vec2(-1.5, 0.5);
        u_xlat25.xy = u_xlat6.yw / u_xlat9.yw;
        u_xlat25.xy = u_xlat25.xy + vec2(-1.5, 0.5);
        u_xlat6.xy = u_xlat4.xy * _ShadowMapTexture_TexelSize.xx;
        u_xlat6.zw = u_xlat25.xy * _ShadowMapTexture_TexelSize.yy;
        u_xlat7 = u_xlat7 * u_xlat9;
        u_xlat8 = u_xlat5.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat6.xzyz;
        vec3 txVec0 = vec3(u_xlat8.xy,u_xlat4.z);
        u_xlat22 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
        vec3 txVec1 = vec3(u_xlat8.zw,u_xlat4.z);
        u_xlat33 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
        u_xlat33 = u_xlat33 * u_xlat7.y;
        u_xlat22 = u_xlat7.x * u_xlat22 + u_xlat33;
        u_xlat5 = u_xlat5.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat6.xwyw;
        vec3 txVec2 = vec3(u_xlat5.xy,u_xlat4.z);
        u_xlat33 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
        u_xlat22 = u_xlat7.z * u_xlat33 + u_xlat22;
        vec3 txVec3 = vec3(u_xlat5.zw,u_xlat4.z);
        u_xlat33 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
        u_xlat22 = u_xlat7.w * u_xlat33 + u_xlat22;
        u_xlat33 = (-_LightShadowData.x) + 1.0;
        u_xlat22 = u_xlat22 * u_xlat33 + _LightShadowData.x;
    } else {
        u_xlat22 = 1.0;
    }
    u_xlat33 = (-u_xlat22) + 1.0;
    u_xlat0.x = u_xlat0.x * u_xlat33 + u_xlat22;
    u_xlat0.x = u_xlat0.x * u_xlat21;
    u_xlat4.xyz = u_xlat0.xxx * _LightColor.xyz;
    u_xlat5.xyz = texture(sampler2D(_CameraGBufferTexture0, sampler_CameraGBufferTexture0), u_xlat1.xy).xyz;
    u_xlat6 = texture(sampler2D(_CameraGBufferTexture1, sampler_CameraGBufferTexture1), u_xlat1.xy);
    u_xlat1.xyz = texture(sampler2D(_CameraGBufferTexture2, sampler_CameraGBufferTexture2), u_xlat1.xy).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(2.0, 2.0, 2.0) + vec3(-1.0, -1.0, -1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat2.xyz = u_xlat2.xyw + (-_WorldSpaceCameraPos.xyz);
    u_xlat0.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat0.x = inversesqrt(u_xlat0.x);
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat7 = (-u_xlat6.wxyz) + vec4(1.0, 1.0, 1.0, 1.0);
    u_xlat0.xyz = u_xlat10.xyz * vec3(u_xlat31) + (-u_xlat2.xyz);
    u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat30 = max(u_xlat30, 0.00100000005);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat30 = dot(u_xlat1.xyz, (-u_xlat2.xyz));
    u_xlat31 = dot(u_xlat1.xyz, u_xlat3.xyz);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat1.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat3.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat10.x = u_xlat0.x * u_xlat0.x;
    u_xlat10.x = dot(u_xlat10.xx, u_xlat7.xx);
    u_xlat10.x = u_xlat10.x + -0.5;
    u_xlat20 = (-u_xlat31) + 1.0;
    u_xlat11 = u_xlat20 * u_xlat20;
    u_xlat11 = u_xlat11 * u_xlat11;
    u_xlat20 = u_xlat20 * u_xlat11;
    u_xlat20 = u_xlat10.x * u_xlat20 + 1.0;
    u_xlat11 = -abs(u_xlat30) + 1.0;
    u_xlat21 = u_xlat11 * u_xlat11;
    u_xlat21 = u_xlat21 * u_xlat21;
    u_xlat11 = u_xlat11 * u_xlat21;
    u_xlat10.x = u_xlat10.x * u_xlat11 + 1.0;
    u_xlat10.x = u_xlat10.x * u_xlat20;
    u_xlat20 = u_xlat7.x * u_xlat7.x;
    u_xlat20 = max(u_xlat20, 0.00200000009);
    u_xlat11 = (-u_xlat20) + 1.0;
    u_xlat21 = abs(u_xlat30) * u_xlat11 + u_xlat20;
    u_xlat11 = u_xlat31 * u_xlat11 + u_xlat20;
    u_xlat30 = abs(u_xlat30) * u_xlat11;
    u_xlat30 = u_xlat31 * u_xlat21 + u_xlat30;
    u_xlat30 = u_xlat30 + 9.99999975e-06;
    u_xlat30 = 0.5 / u_xlat30;
    u_xlat20 = u_xlat20 * u_xlat20;
    u_xlat11 = u_xlat1.x * u_xlat20 + (-u_xlat1.x);
    u_xlat1.x = u_xlat11 * u_xlat1.x + 1.0;
    u_xlat20 = u_xlat20 * 0.318309873;
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.00000001e-07;
    u_xlat20 = u_xlat20 / u_xlat1.x;
    u_xlat10.y = u_xlat20 * u_xlat30;
    u_xlat10.xy = vec2(u_xlat31) * u_xlat10.xy;
    u_xlat20 = u_xlat10.y * 3.14159274;
    u_xlat20 = max(u_xlat20, 0.0);
    u_xlat30 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb30 = u_xlat30!=0.0;
    u_xlat30 = u_xlatb30 ? 1.0 : float(0.0);
    u_xlat20 = u_xlat30 * u_xlat20;
    u_xlat1.xyz = u_xlat10.xxx * u_xlat4.xyz;
    u_xlat10.xyz = u_xlat4.xyz * vec3(u_xlat20);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat31 = u_xlat0.x * u_xlat0.x;
    u_xlat31 = u_xlat31 * u_xlat31;
    u_xlat0.x = u_xlat0.x * u_xlat31;
    u_xlat2.xyz = u_xlat7.yzw * u_xlat0.xxx + u_xlat6.xyz;
    u_xlat0.xyz = u_xlat10.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat5.xyz * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

