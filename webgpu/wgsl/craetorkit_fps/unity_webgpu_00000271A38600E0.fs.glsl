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
	vec4 _Time;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 _LightPositionRange;
	vec4 _LightProjectionParams;
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
	float _NormalSacle;
	float _MovementSpeed;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Normal;
layout(set = 0, binding = 2) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 3) uniform highp textureCube _LightTexture0;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform highp textureCube _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp float vs_TEXCOORD8;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD4;
layout(location = 6) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Normal;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
float u_xlat11;
vec3 u_xlat12;
bool u_xlatb12;
float u_xlat20;
float u_xlat22;
float u_xlat30;
bool u_xlatb30;
float u_xlat31;
bool u_xlatb31;
float u_xlat32;
float u_xlat33;
    u_xlat0.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat1.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat2.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat31 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat31 = inversesqrt(u_xlat31);
    u_xlat3.xyz = vec3(u_xlat31) * u_xlat2.xyz;
    u_xlat4 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat4.xyz = u_xlat4.xyz * _Color.xyz;
    u_xlat5.xyz = u_xlat4.xyz * vs_COLOR0.xyz;
    u_xlat6.x = _Time.x * _MovementSpeed + vs_TEXCOORD0.z;
    u_xlat6.y = (-_Time.x) * _MovementSpeed + vs_TEXCOORD0.w;
    u_xlat6.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat6.xy).xyw;
    u_xlat6.x = u_xlat6.z * u_xlat6.x;
    u_xlat6.xy = u_xlat6.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat6.xy = u_xlat6.xy * vec2(_NormalSacle);
    u_xlat31 = dot(u_xlat6.xy, u_xlat6.xy);
    u_xlat31 = min(u_xlat31, 1.0);
    u_xlat31 = (-u_xlat31) + 1.0;
    u_xlat6.z = sqrt(u_xlat31);
    u_xlat31 = (-vs_COLOR0.w) + 1.0;
    u_xlat31 = u_xlat4.w * _Color.w + (-u_xlat31);
    u_xlatb31 = u_xlat31<0.0;
    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
    u_xlat7.xyz = vs_TEXCOORD4.yyy * unity_WorldToLight[1].xyz;
    u_xlat7.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD4.xxx + u_xlat7.xyz;
    u_xlat7.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD4.zzz + u_xlat7.xyz;
    u_xlat7.xyz = u_xlat7.xyz + unity_WorldToLight[3].xyz;
    u_xlat8.x = unity_MatrixV[0].z;
    u_xlat8.y = unity_MatrixV[1].z;
    u_xlat8.z = unity_MatrixV[2].z;
    u_xlat31 = dot(u_xlat2.xyz, u_xlat8.xyz);
    u_xlat2.xyz = vs_TEXCOORD4.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = (-u_xlat31) + u_xlat2.x;
    u_xlat31 = unity_ShadowFadeCenterAndType.w * u_xlat2.x + u_xlat31;
    u_xlat31 = u_xlat31 * _LightShadowData.z + _LightShadowData.w;
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb2 = unity_ProbeVolumeParams.y==1.0;
        u_xlat12.xyz = vs_TEXCOORD4.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat12.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD4.xxx + u_xlat12.xyz;
        u_xlat12.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.zzz + u_xlat12.xyz;
        u_xlat12.xyz = u_xlat12.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb2)) ? u_xlat12.xyz : vs_TEXCOORD4.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat12.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat33 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat12.x, u_xlat33);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat2.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb12 = u_xlat31<0.99000001;
    if(u_xlatb12){
        u_xlat12.xyz = vs_TEXCOORD4.xyz + (-_LightPositionRange.xyz);
        u_xlat33 = max(abs(u_xlat12.y), abs(u_xlat12.x));
        u_xlat33 = max(abs(u_xlat12.z), u_xlat33);
        u_xlat33 = u_xlat33 + (-_LightProjectionParams.z);
        u_xlat33 = max(u_xlat33, 9.99999975e-06);
        u_xlat33 = u_xlat33 * _LightProjectionParams.w;
        u_xlat33 = _LightProjectionParams.y / u_xlat33;
        u_xlat33 = u_xlat33 + (-_LightProjectionParams.x);
        u_xlat33 = (-u_xlat33) + 1.0;
        u_xlat8.xyz = u_xlat12.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
        vec4 txVec0 = vec4(u_xlat8.xyz,u_xlat33);
        u_xlat8.x = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0);
        u_xlat9.xyz = u_xlat12.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
        vec4 txVec1 = vec4(u_xlat9.xyz,u_xlat33);
        u_xlat8.y = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1);
        u_xlat9.xyz = u_xlat12.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
        vec4 txVec2 = vec4(u_xlat9.xyz,u_xlat33);
        u_xlat8.z = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2);
        u_xlat12.xyz = u_xlat12.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
        vec4 txVec3 = vec4(u_xlat12.xyz,u_xlat33);
        u_xlat8.w = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3);
        u_xlat12.x = dot(u_xlat8, vec4(0.25, 0.25, 0.25, 0.25));
        u_xlat22 = (-_LightShadowData.x) + 1.0;
        u_xlat12.x = u_xlat12.x * u_xlat22 + _LightShadowData.x;
    } else {
        u_xlat12.x = 1.0;
    }
    u_xlat2.x = (-u_xlat12.x) + u_xlat2.x;
    u_xlat31 = u_xlat31 * u_xlat2.x + u_xlat12.x;
    u_xlat2.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat2.x = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), u_xlat2.xx).x;
    u_xlat12.x = texture(samplerCube(_LightTexture0, sampler_LightTexture0), u_xlat7.xyz).w;
    u_xlat2.x = u_xlat12.x * u_xlat2.x;
    u_xlat31 = u_xlat31 * u_xlat2.x;
    u_xlat2.x = dot(vs_TEXCOORD1.xyz, u_xlat6.xyz);
    u_xlat2.y = dot(vs_TEXCOORD2.xyz, u_xlat6.xyz);
    u_xlat2.z = dot(vs_TEXCOORD3.xyz, u_xlat6.xyz);
    u_xlat32 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat32 = inversesqrt(u_xlat32);
    u_xlat2.xyz = vec3(u_xlat32) * u_xlat2.xyz;
    u_xlat6.xyz = vec3(u_xlat31) * _LightColor0.xyz;
    u_xlat4.xyz = u_xlat4.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat31 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat5.xyz = vec3(u_xlat31) * u_xlat5.xyz;
    u_xlat31 = (-_Glossiness) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + u_xlat3.xyz;
    u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat30 = max(u_xlat30, 0.00100000005);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat30 = dot(u_xlat2.xyz, u_xlat3.xyz);
    u_xlat32 = dot(u_xlat2.xyz, u_xlat1.xyz);
    u_xlat32 = clamp(u_xlat32, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat10.x = u_xlat0.x * u_xlat0.x;
    u_xlat10.x = dot(u_xlat10.xx, vec2(u_xlat31));
    u_xlat10.x = u_xlat10.x + -0.5;
    u_xlat20 = (-u_xlat32) + 1.0;
    u_xlat1.x = u_xlat20 * u_xlat20;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat20 = u_xlat20 * u_xlat1.x;
    u_xlat20 = u_xlat10.x * u_xlat20 + 1.0;
    u_xlat1.x = -abs(u_xlat30) + 1.0;
    u_xlat11 = u_xlat1.x * u_xlat1.x;
    u_xlat11 = u_xlat11 * u_xlat11;
    u_xlat1.x = u_xlat1.x * u_xlat11;
    u_xlat10.x = u_xlat10.x * u_xlat1.x + 1.0;
    u_xlat10.x = u_xlat10.x * u_xlat20;
    u_xlat20 = u_xlat31 * u_xlat31;
    u_xlat20 = max(u_xlat20, 0.00200000009);
    u_xlat1.x = (-u_xlat20) + 1.0;
    u_xlat11 = abs(u_xlat30) * u_xlat1.x + u_xlat20;
    u_xlat1.x = u_xlat32 * u_xlat1.x + u_xlat20;
    u_xlat30 = abs(u_xlat30) * u_xlat1.x;
    u_xlat30 = u_xlat32 * u_xlat11 + u_xlat30;
    u_xlat30 = u_xlat30 + 9.99999975e-06;
    u_xlat30 = 0.5 / u_xlat30;
    u_xlat20 = u_xlat20 * u_xlat20;
    u_xlat1.x = u_xlat2.x * u_xlat20 + (-u_xlat2.x);
    u_xlat1.x = u_xlat1.x * u_xlat2.x + 1.0;
    u_xlat20 = u_xlat20 * 0.318309873;
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.00000001e-07;
    u_xlat20 = u_xlat20 / u_xlat1.x;
    u_xlat10.y = u_xlat20 * u_xlat30;
    u_xlat10.xy = vec2(u_xlat32) * u_xlat10.xy;
    u_xlat20 = u_xlat10.y * 3.14159274;
    u_xlat20 = max(u_xlat20, 0.0);
    u_xlat30 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb30 = u_xlat30!=0.0;
    u_xlat30 = u_xlatb30 ? 1.0 : float(0.0);
    u_xlat20 = u_xlat30 * u_xlat20;
    u_xlat1.xyz = u_xlat10.xxx * u_xlat6.xyz;
    u_xlat10.xyz = u_xlat6.xyz * vec3(u_xlat20);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat31 = u_xlat0.x * u_xlat0.x;
    u_xlat31 = u_xlat31 * u_xlat31;
    u_xlat0.x = u_xlat0.x * u_xlat31;
    u_xlat2.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat10.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat5.xyz * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat30 = vs_TEXCOORD8 / _ProjectionParams.y;
    u_xlat30 = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat30 * _ProjectionParams.z;
    u_xlat30 = max(u_xlat30, 0.0);
    u_xlat30 = u_xlat30 * unity_FogParams.x;
    u_xlat30 = u_xlat30 * (-u_xlat30);
    u_xlat30 = exp2(u_xlat30);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat30);
    SV_Target0.w = 1.0;
    return;
}

