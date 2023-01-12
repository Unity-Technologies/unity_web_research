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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_FogParams;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	mat4x4 unity_WorldToLight;
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Gradient;
layout(set = 0, binding = 1) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD3;
layout(location = 2) in highp vec3 vs_TEXCOORD1;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp float vs_TEXCOORD6;
layout(location = 5) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 6) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Gradient;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
float u_xlat12;
float u_xlat13;
float u_xlat14;
bool u_xlatb14;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
bool u_xlatb19;
float u_xlat20;
    u_xlat0.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat19 = vs_TEXCOORD3 + -1.0;
    u_xlat19 = u_xlat19 * -9.99999809;
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat2.xy = (-vec2(u_xlat19)) + vs_TEXCOORD0.xy;
    u_xlat19 = texture(sampler2D(_Gradient, sampler_Gradient), u_xlat2.xy).x;
    u_xlat2.x = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD0.xy).z;
    u_xlat19 = u_xlat19 * -2.0 + 1.0;
    u_xlat19 = (-u_xlat2.x) + u_xlat19;
    u_xlatb19 = u_xlat19<0.0;
    if(((int(u_xlatb19) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.xy = vs_TEXCOORD2.yy * unity_WorldToLight[1].xy;
    u_xlat2.xy = unity_WorldToLight[0].xy * vs_TEXCOORD2.xx + u_xlat2.xy;
    u_xlat2.xy = unity_WorldToLight[2].xy * vs_TEXCOORD2.zz + u_xlat2.xy;
    u_xlat2.xy = u_xlat2.xy + unity_WorldToLight[3].xy;
    u_xlat3.x = unity_MatrixV[0].z;
    u_xlat3.y = unity_MatrixV[1].z;
    u_xlat3.z = unity_MatrixV[2].z;
    u_xlat19 = dot(u_xlat0.xyz, u_xlat3.xyz);
    u_xlat3.xyz = vs_TEXCOORD2.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat14 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat14 = sqrt(u_xlat14);
    u_xlat14 = (-u_xlat19) + u_xlat14;
    u_xlat19 = unity_ShadowFadeCenterAndType.w * u_xlat14 + u_xlat19;
    u_xlat19 = u_xlat19 * _LightShadowData.z + _LightShadowData.w;
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlatb14 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb14){
        u_xlatb14 = unity_ProbeVolumeParams.y==1.0;
        u_xlat3.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat3.xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat3.xyz;
        u_xlat3.xyz = u_xlat3.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat3.xyz = (bool(u_xlatb14)) ? u_xlat3.xyz : vs_TEXCOORD2.xyz;
        u_xlat3.xyz = u_xlat3.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat3.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat14 = u_xlat3.y * 0.25 + 0.75;
        u_xlat20 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat3.x = max(u_xlat20, u_xlat14);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
        u_xlat3.w = float(1.0);
    }
    u_xlat14 = dot(u_xlat3, unity_OcclusionMaskSelector);
    u_xlat14 = clamp(u_xlat14, 0.0, 1.0);
    u_xlat3.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
    u_xlat20 = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat3.xy).x;
    u_xlat14 = (-u_xlat20) + u_xlat14;
    u_xlat19 = u_xlat19 * u_xlat14 + u_xlat20;
    u_xlat2.x = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat2.xy).w;
    u_xlat19 = u_xlat19 * u_xlat2.x;
    u_xlat2.xyz = vec3(u_xlat19) * _LightColor0.xyz;
    u_xlat19 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat19 = inversesqrt(u_xlat19);
    u_xlat3.xyz = vec3(u_xlat19) * vs_TEXCOORD1.xyz;
    u_xlat4.xyz = _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat19 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat5.xyz = vec3(u_xlat19) * _Color.xyz;
    u_xlat19 = (-_Glossiness) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18) + _WorldSpaceLightPos0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = max(u_xlat18, 0.00100000005);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat18 = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat3.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7 = dot(u_xlat3.xyz, u_xlat0.xyz);
    u_xlat7 = clamp(u_xlat7, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat6.x = u_xlat0.x * u_xlat0.x;
    u_xlat6.x = dot(u_xlat6.xx, vec2(u_xlat19));
    u_xlat6.x = u_xlat6.x + -0.5;
    u_xlat12 = (-u_xlat1.x) + 1.0;
    u_xlat13 = u_xlat12 * u_xlat12;
    u_xlat13 = u_xlat13 * u_xlat13;
    u_xlat12 = u_xlat12 * u_xlat13;
    u_xlat12 = u_xlat6.x * u_xlat12 + 1.0;
    u_xlat13 = -abs(u_xlat18) + 1.0;
    u_xlat20 = u_xlat13 * u_xlat13;
    u_xlat20 = u_xlat20 * u_xlat20;
    u_xlat13 = u_xlat13 * u_xlat20;
    u_xlat6.x = u_xlat6.x * u_xlat13 + 1.0;
    u_xlat6.x = u_xlat6.x * u_xlat12;
    u_xlat12 = u_xlat19 * u_xlat19;
    u_xlat12 = max(u_xlat12, 0.00200000009);
    u_xlat13 = (-u_xlat12) + 1.0;
    u_xlat19 = abs(u_xlat18) * u_xlat13 + u_xlat12;
    u_xlat13 = u_xlat1.x * u_xlat13 + u_xlat12;
    u_xlat18 = abs(u_xlat18) * u_xlat13;
    u_xlat18 = u_xlat1.x * u_xlat19 + u_xlat18;
    u_xlat18 = u_xlat18 + 9.99999975e-06;
    u_xlat18 = 0.5 / u_xlat18;
    u_xlat12 = u_xlat12 * u_xlat12;
    u_xlat13 = u_xlat7 * u_xlat12 + (-u_xlat7);
    u_xlat7 = u_xlat13 * u_xlat7 + 1.0;
    u_xlat12 = u_xlat12 * 0.318309873;
    u_xlat7 = u_xlat7 * u_xlat7 + 1.00000001e-07;
    u_xlat12 = u_xlat12 / u_xlat7;
    u_xlat6.y = u_xlat12 * u_xlat18;
    u_xlat6.xy = u_xlat1.xx * u_xlat6.xy;
    u_xlat12 = u_xlat6.y * 3.14159274;
    u_xlat12 = max(u_xlat12, 0.0);
    u_xlat18 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb18 = u_xlat18!=0.0;
    u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
    u_xlat12 = u_xlat18 * u_xlat12;
    u_xlat1.xyz = u_xlat6.xxx * u_xlat2.xyz;
    u_xlat6.xyz = u_xlat2.xyz * vec3(u_xlat12);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat19 = u_xlat0.x * u_xlat0.x;
    u_xlat19 = u_xlat19 * u_xlat19;
    u_xlat0.x = u_xlat0.x * u_xlat19;
    u_xlat2.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat6.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat18 = vs_TEXCOORD6 / _ProjectionParams.y;
    u_xlat18 = (-u_xlat18) + 1.0;
    u_xlat18 = u_xlat18 * _ProjectionParams.z;
    u_xlat18 = max(u_xlat18, 0.0);
    u_xlat18 = u_xlat18 * unity_FogParams.x;
    u_xlat18 = u_xlat18 * (-u_xlat18);
    u_xlat18 = exp2(u_xlat18);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat18);
    SV_Target0.w = 1.0;
    return;
}

