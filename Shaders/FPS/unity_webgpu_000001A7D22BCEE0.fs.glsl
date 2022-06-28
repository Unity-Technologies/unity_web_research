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
	vec3 _WorldSpaceCameraPos;
	vec4 _LightPositionRange;
	vec4 _LightProjectionParams;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _Color;
	float _BumpScale;
	float _GlossMapScale;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 3) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 4) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform highp textureCube _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
float u_xlat8;
vec3 u_xlat10;
float u_xlat11;
float u_xlat18;
float u_xlat19;
float u_xlat25;
bool u_xlatb25;
float u_xlat26;
bool u_xlatb26;
float u_xlat27;
bool u_xlatb27;
float u_xlat28;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 12) uniform highp  sampler sampler_LightTexture0;
void main()
{
    u_xlat0.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat1.xyz = _Color.xyz * u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat0.xzw = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_BumpScale);
    u_xlat25 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat25 = min(u_xlat25, 1.0);
    u_xlat25 = (-u_xlat25) + 1.0;
    u_xlat25 = sqrt(u_xlat25);
    u_xlat10.xyz = u_xlat2.yyy * vs_TEXCOORD3.xyz;
    u_xlat2.xyz = vs_TEXCOORD2.xyz * u_xlat2.xxx + u_xlat10.xyz;
    u_xlat2.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat25) + u_xlat2.xyz;
    u_xlat25 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat2.xyz = vec3(u_xlat25) * u_xlat2.xyz;
    u_xlat25 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat3.xyz = vec3(u_xlat25) * vs_TEXCOORD1.xyz;
    u_xlat4.xyz = vs_TEXCOORD5.yyy * unity_WorldToLight[1].xyz;
    u_xlat4.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD5.xxx + u_xlat4.xyz;
    u_xlat4.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD5.zzz + u_xlat4.xyz;
    u_xlat4.xyz = u_xlat4.xyz + unity_WorldToLight[3].xyz;
    u_xlat5.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat6.x = unity_MatrixV[0].z;
    u_xlat6.y = unity_MatrixV[1].z;
    u_xlat6.z = unity_MatrixV[2].z;
    u_xlat25 = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.xyz = vs_TEXCOORD5.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat26 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat26 = sqrt(u_xlat26);
    u_xlat26 = (-u_xlat25) + u_xlat26;
    u_xlat25 = unity_ShadowFadeCenterAndType.w * u_xlat26 + u_xlat25;
    u_xlat25 = u_xlat25 * _LightShadowData.z + _LightShadowData.w;
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlatb26 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb26){
        u_xlatb26 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb26)) ? u_xlat5.xyz : vs_TEXCOORD5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat26 = u_xlat5.y * 0.25 + 0.75;
        u_xlat27 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat26, u_xlat27);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat26 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat26 = clamp(u_xlat26, 0.0, 1.0);
    u_xlatb27 = u_xlat25<0.99000001;
    if(u_xlatb27){
        u_xlat5.xyz = vs_TEXCOORD5.xyz + (-_LightPositionRange.xyz);
        u_xlat27 = max(abs(u_xlat5.y), abs(u_xlat5.x));
        u_xlat27 = max(abs(u_xlat5.z), u_xlat27);
        u_xlat27 = u_xlat27 + (-_LightProjectionParams.z);
        u_xlat27 = max(u_xlat27, 9.99999975e-06);
        u_xlat27 = u_xlat27 * _LightProjectionParams.w;
        u_xlat27 = _LightProjectionParams.y / u_xlat27;
        u_xlat27 = u_xlat27 + (-_LightProjectionParams.x);
        u_xlat27 = (-u_xlat27) + 1.0;
        u_xlat6.xyz = u_xlat5.xyz + vec3(0.0078125, 0.0078125, 0.0078125);
        vec4 txVec0 = vec4(u_xlat6.xyz,u_xlat27);
        u_xlat6.x = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0);
        u_xlat7.xyz = u_xlat5.xyz + vec3(-0.0078125, -0.0078125, 0.0078125);
        vec4 txVec1 = vec4(u_xlat7.xyz,u_xlat27);
        u_xlat6.y = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1);
        u_xlat7.xyz = u_xlat5.xyz + vec3(-0.0078125, 0.0078125, -0.0078125);
        vec4 txVec2 = vec4(u_xlat7.xyz,u_xlat27);
        u_xlat6.z = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2);
        u_xlat5.xyz = u_xlat5.xyz + vec3(0.0078125, -0.0078125, -0.0078125);
        vec4 txVec3 = vec4(u_xlat5.xyz,u_xlat27);
        u_xlat6.w = texture(samplerCubeShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3);
        u_xlat27 = dot(u_xlat6, vec4(0.25, 0.25, 0.25, 0.25));
        u_xlat28 = (-_LightShadowData.x) + 1.0;
        u_xlat27 = u_xlat27 * u_xlat28 + _LightShadowData.x;
    } else {
        u_xlat27 = 1.0;
    }
    u_xlat26 = u_xlat26 + (-u_xlat27);
    u_xlat25 = u_xlat25 * u_xlat26 + u_xlat27;
    u_xlat26 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat26 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), vec2(u_xlat26)).x;
    u_xlat25 = u_xlat25 * u_xlat26;
    u_xlat4.x = vs_TEXCOORD2.w;
    u_xlat4.y = vs_TEXCOORD3.w;
    u_xlat4.z = vs_TEXCOORD4.w;
    u_xlat26 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat26 = inversesqrt(u_xlat26);
    u_xlat5.xyz = vec3(u_xlat26) * u_xlat4.xyz;
    u_xlat6.xyz = vec3(u_xlat25) * _LightColor0.xyz;
    u_xlat8 = (-u_xlat0.y) * _GlossMapScale + 1.0;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat26) + (-u_xlat3.xyz);
    u_xlat25 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat25 = max(u_xlat25, 0.00100000005);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat4.xyz = vec3(u_xlat25) * u_xlat4.xyz;
    u_xlat25 = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat26 = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat26 = clamp(u_xlat26, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat10.x = dot(u_xlat5.xyz, u_xlat4.xyz);
    u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
    u_xlat18 = u_xlat10.x * u_xlat10.x;
    u_xlat18 = dot(vec2(u_xlat18), vec2(u_xlat8));
    u_xlat18 = u_xlat18 + -0.5;
    u_xlat3.x = (-u_xlat26) + 1.0;
    u_xlat11 = u_xlat3.x * u_xlat3.x;
    u_xlat11 = u_xlat11 * u_xlat11;
    u_xlat3.x = u_xlat3.x * u_xlat11;
    u_xlat3.x = u_xlat18 * u_xlat3.x + 1.0;
    u_xlat11 = -abs(u_xlat25) + 1.0;
    u_xlat19 = u_xlat11 * u_xlat11;
    u_xlat19 = u_xlat19 * u_xlat19;
    u_xlat11 = u_xlat11 * u_xlat19;
    u_xlat18 = u_xlat18 * u_xlat11 + 1.0;
    u_xlat18 = u_xlat18 * u_xlat3.x;
    u_xlat18 = u_xlat26 * u_xlat18;
    u_xlat8 = u_xlat8 * u_xlat8;
    u_xlat8 = max(u_xlat8, 0.00200000009);
    u_xlat3.x = (-u_xlat8) + 1.0;
    u_xlat11 = abs(u_xlat25) * u_xlat3.x + u_xlat8;
    u_xlat3.x = u_xlat26 * u_xlat3.x + u_xlat8;
    u_xlat25 = abs(u_xlat25) * u_xlat3.x;
    u_xlat25 = u_xlat26 * u_xlat11 + u_xlat25;
    u_xlat25 = u_xlat25 + 9.99999975e-06;
    u_xlat25 = 0.5 / u_xlat25;
    u_xlat8 = u_xlat8 * u_xlat8;
    u_xlat3.x = u_xlat2.x * u_xlat8 + (-u_xlat2.x);
    u_xlat2.x = u_xlat3.x * u_xlat2.x + 1.0;
    u_xlat8 = u_xlat8 * 0.318309873;
    u_xlat2.x = u_xlat2.x * u_xlat2.x + 1.00000001e-07;
    u_xlat8 = u_xlat8 / u_xlat2.x;
    u_xlat8 = u_xlat8 * u_xlat25;
    u_xlat8 = u_xlat26 * u_xlat8;
    u_xlat8 = u_xlat8 * 3.14159274;
    u_xlat8 = max(u_xlat8, 0.0);
    u_xlat25 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlatb25 = u_xlat25!=0.0;
    u_xlat25 = u_xlatb25 ? 1.0 : float(0.0);
    u_xlat8 = u_xlat8 * u_xlat25;
    u_xlat2.xzw = vec3(u_xlat18) * u_xlat6.xyz;
    u_xlat3.xyz = u_xlat6.xyz * vec3(u_xlat8);
    u_xlat8 = (-u_xlat10.x) + 1.0;
    u_xlat25 = u_xlat8 * u_xlat8;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat8 = u_xlat8 * u_xlat25;
    u_xlat4.xyz = (-u_xlat1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat1.xyz = u_xlat4.xyz * vec3(u_xlat8) + u_xlat1.xyz;
    u_xlat1.xyz = u_xlat1.xyz * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat0.xzw * u_xlat2.xzw + u_xlat1.xyz;
    SV_Target0.w = 1.0;
    return;
}

