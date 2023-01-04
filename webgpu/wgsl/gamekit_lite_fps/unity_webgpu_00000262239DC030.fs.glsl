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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_MatrixV;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	float _Glossiness;
	float _Metallic;
	float _Cutoff;
	float _Cutoff2;
	float _EdgeSizeBot;
	float _EdgeSizeTop;
	vec4 _Color;
	vec4 _bounds;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Normal;
layout(set = 0, binding = 5) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
float u_xlat9;
float u_xlat10;
vec3 u_xlat11;
float u_xlat16;
float u_xlat17;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
float u_xlat26;
bool u_xlatb26;
float u_xlat27;
layout(set = 0, binding = 7) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_MetallicSmooth;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat1.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat2.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.xy).xw;
    u_xlat3.xyz = vs_TEXCOORD4.zyx + (-unity_ObjectToWorld[3].zyx);
    u_xlat4.yw = u_xlat3.xz * vec2(0.200000003, 0.200000003);
    u_xlat25 = _Cutoff + _Cutoff;
    u_xlat4.x = u_xlat3.y * 2.0 + u_xlat25;
    u_xlat5.x = u_xlat3.y * 4.0 + _Cutoff;
    u_xlat25 = _bounds.y + 0.200000003;
    u_xlat18 = texture(sampler2D(_Noise, sampler_Noise), u_xlat4.xy).x;
    u_xlat5.y = u_xlat4.w;
    u_xlat26 = texture(sampler2D(_Noise, sampler_Noise), u_xlat5.xy).x;
    u_xlat18 = dot(vec2(u_xlat18), vec2(u_xlat26));
    u_xlat26 = u_xlat25 * 0.5;
    u_xlat25 = _Cutoff * u_xlat25 + (-u_xlat26);
    u_xlatb26 = u_xlat3.y>=u_xlat25;
    u_xlat3.x = u_xlat25 + (-_EdgeSizeBot);
    u_xlat19 = u_xlat25 + (-u_xlat3.x);
    u_xlat3.x = (-u_xlat3.x) + u_xlat3.y;
    u_xlat19 = float(1.0) / u_xlat19;
    u_xlat3.x = u_xlat19 * u_xlat3.x;
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat19 = u_xlat3.x * -2.0 + 3.0;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat27 = u_xlat25 + _EdgeSizeTop;
    u_xlat25 = u_xlat25 + (-u_xlat27);
    u_xlat11.x = (-u_xlat27) + u_xlat3.y;
    u_xlat25 = float(1.0) / u_xlat25;
    u_xlat25 = u_xlat25 * u_xlat11.x;
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlat11.x = u_xlat25 * -2.0 + 3.0;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat25 = u_xlat25 * u_xlat11.x;
    u_xlat4.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat5.xyz = u_xlat4.xyz * _Color.xyz;
    u_xlat6.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.xy).xyw;
    u_xlat6.x = u_xlat6.z * u_xlat6.x;
    u_xlat6.xy = u_xlat6.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat11.x = dot(u_xlat6.xy, u_xlat6.xy);
    u_xlat11.x = min(u_xlat11.x, 1.0);
    u_xlat11.x = (-u_xlat11.x) + 1.0;
    u_xlat6.z = sqrt(u_xlat11.x);
    u_xlat2.xy = u_xlat2.xy * vec2(_Metallic, _Glossiness);
    u_xlat3.x = (-u_xlat19) * u_xlat3.x + 1.0;
    u_xlat2.x = u_xlat2.x * u_xlat3.x;
    u_xlat26 = (u_xlatb26) ? 0.0 : 1.0;
    u_xlat25 = u_xlat18 * u_xlat25 + u_xlat26;
    u_xlat25 = u_xlat25 + (-_Cutoff);
    u_xlat25 = u_xlat25 + (-_Cutoff2);
    u_xlatb25 = u_xlat25<0.0;
    if(((int(u_xlatb25) * int(0xffffffffu)))!=0){discard;}
    u_xlat7.x = unity_MatrixV[0].z;
    u_xlat7.y = unity_MatrixV[1].z;
    u_xlat7.z = unity_MatrixV[2].z;
    u_xlat25 = dot(u_xlat0.xyz, u_xlat7.xyz);
    u_xlat11.xyz = vs_TEXCOORD4.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat18 = dot(u_xlat11.xyz, u_xlat11.xyz);
    u_xlat18 = sqrt(u_xlat18);
    u_xlat18 = (-u_xlat25) + u_xlat18;
    u_xlat25 = unity_ShadowFadeCenterAndType.w * u_xlat18 + u_xlat25;
    u_xlat25 = u_xlat25 * _LightShadowData.z + _LightShadowData.w;
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlatb18 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb18){
        u_xlatb18 = unity_ProbeVolumeParams.y==1.0;
        u_xlat11.xyz = vs_TEXCOORD4.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat11.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD4.xxx + u_xlat11.xyz;
        u_xlat11.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.zzz + u_xlat11.xyz;
        u_xlat11.xyz = u_xlat11.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat11.xyz = (bool(u_xlatb18)) ? u_xlat11.xyz : vs_TEXCOORD4.xyz;
        u_xlat11.xyz = u_xlat11.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat11.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat18 = u_xlat7.y * 0.25 + 0.75;
        u_xlat26 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat7.x = max(u_xlat26, u_xlat18);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
        u_xlat7.w = float(1.0);
    }
    u_xlat18 = dot(u_xlat7, unity_OcclusionMaskSelector);
    u_xlat18 = clamp(u_xlat18, 0.0, 1.0);
    u_xlat11.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
    u_xlat26 = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat11.xy).x;
    u_xlat18 = (-u_xlat26) + u_xlat18;
    u_xlat25 = u_xlat25 * u_xlat18 + u_xlat26;
    u_xlat7.x = dot(vs_TEXCOORD1.xyz, u_xlat6.xyz);
    u_xlat7.y = dot(vs_TEXCOORD2.xyz, u_xlat6.xyz);
    u_xlat7.z = dot(vs_TEXCOORD3.xyz, u_xlat6.xyz);
    u_xlat18 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat11.xyz = vec3(u_xlat18) * u_xlat7.xyz;
    u_xlat6.xyz = vec3(u_xlat25) * _LightColor0.xyz;
    u_xlat4.xyz = u_xlat4.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = u_xlat2.xxx * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat25 = (-u_xlat2.x) * 0.959999979 + 0.959999979;
    u_xlat2.xzw = vec3(u_xlat25) * u_xlat5.xyz;
    u_xlat25 = (-u_xlat2.y) * u_xlat3.x + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat24) + _WorldSpaceLightPos0.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = max(u_xlat24, 0.00100000005);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat0.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat24 = dot(u_xlat11.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat11.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat9 = dot(u_xlat11.xyz, u_xlat0.xyz);
    u_xlat9 = clamp(u_xlat9, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat8.x = u_xlat0.x * u_xlat0.x;
    u_xlat8.x = dot(u_xlat8.xx, vec2(u_xlat25));
    u_xlat8.x = u_xlat8.x + -0.5;
    u_xlat16 = (-u_xlat1.x) + 1.0;
    u_xlat17 = u_xlat16 * u_xlat16;
    u_xlat17 = u_xlat17 * u_xlat17;
    u_xlat16 = u_xlat16 * u_xlat17;
    u_xlat16 = u_xlat8.x * u_xlat16 + 1.0;
    u_xlat17 = -abs(u_xlat24) + 1.0;
    u_xlat10 = u_xlat17 * u_xlat17;
    u_xlat10 = u_xlat10 * u_xlat10;
    u_xlat17 = u_xlat17 * u_xlat10;
    u_xlat8.x = u_xlat8.x * u_xlat17 + 1.0;
    u_xlat8.x = u_xlat8.x * u_xlat16;
    u_xlat16 = u_xlat25 * u_xlat25;
    u_xlat16 = max(u_xlat16, 0.00200000009);
    u_xlat17 = (-u_xlat16) + 1.0;
    u_xlat25 = abs(u_xlat24) * u_xlat17 + u_xlat16;
    u_xlat17 = u_xlat1.x * u_xlat17 + u_xlat16;
    u_xlat24 = abs(u_xlat24) * u_xlat17;
    u_xlat24 = u_xlat1.x * u_xlat25 + u_xlat24;
    u_xlat24 = u_xlat24 + 9.99999975e-06;
    u_xlat24 = 0.5 / u_xlat24;
    u_xlat16 = u_xlat16 * u_xlat16;
    u_xlat17 = u_xlat9 * u_xlat16 + (-u_xlat9);
    u_xlat9 = u_xlat17 * u_xlat9 + 1.0;
    u_xlat16 = u_xlat16 * 0.318309873;
    u_xlat9 = u_xlat9 * u_xlat9 + 1.00000001e-07;
    u_xlat16 = u_xlat16 / u_xlat9;
    u_xlat8.y = u_xlat16 * u_xlat24;
    u_xlat8.xy = u_xlat1.xx * u_xlat8.xy;
    u_xlat16 = u_xlat8.y * 3.14159274;
    u_xlat16 = max(u_xlat16, 0.0);
    u_xlat24 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb24 = u_xlat24!=0.0;
    u_xlat24 = u_xlatb24 ? 1.0 : float(0.0);
    u_xlat16 = u_xlat24 * u_xlat16;
    u_xlat1.xyz = u_xlat8.xxx * u_xlat6.xyz;
    u_xlat8.xyz = u_xlat6.xyz * vec3(u_xlat16);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat25 = u_xlat0.x * u_xlat0.x;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat0.x = u_xlat0.x * u_xlat25;
    u_xlat3.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat8.xyz * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat2.xzw * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

