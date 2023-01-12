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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Metallic;
layout(set = 0, binding = 2) uniform mediump texture2D _NormalMap;
layout(set = 0, binding = 3) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Metallic;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_NormalMap;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
float u_xlat8;
float u_xlat14;
float u_xlat15;
vec2 u_xlat17;
float u_xlat21;
bool u_xlatb21;
float u_xlat22;
bool u_xlatb22;
float u_xlat23;
    u_xlat0.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat2.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat3.xy = texture(sampler2D(_Metallic, sampler_Metallic), vs_TEXCOORD0.xy).xw;
    u_xlat4.xyz = texture(sampler2D(_NormalMap, sampler_NormalMap), vs_TEXCOORD0.xy).xyw;
    u_xlat4.x = u_xlat4.z * u_xlat4.x;
    u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat22 = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat22 = min(u_xlat22, 1.0);
    u_xlat22 = (-u_xlat22) + 1.0;
    u_xlat4.z = sqrt(u_xlat22);
    u_xlat17.xy = vs_TEXCOORD4.yy * unity_WorldToLight[1].xy;
    u_xlat17.xy = unity_WorldToLight[0].xy * vs_TEXCOORD4.xx + u_xlat17.xy;
    u_xlat17.xy = unity_WorldToLight[2].xy * vs_TEXCOORD4.zz + u_xlat17.xy;
    u_xlat17.xy = u_xlat17.xy + unity_WorldToLight[3].xy;
    u_xlatb22 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb22){
        u_xlatb22 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD4.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD4.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb22)) ? u_xlat5.xyz : vs_TEXCOORD4.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat22 = u_xlat5.y * 0.25 + 0.75;
        u_xlat23 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat22, u_xlat23);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat22 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat22 = clamp(u_xlat22, 0.0, 1.0);
    u_xlat23 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat17.xy).w;
    u_xlat22 = u_xlat22 * u_xlat23;
    u_xlat5.x = dot(vs_TEXCOORD1.xyz, u_xlat4.xyz);
    u_xlat5.y = dot(vs_TEXCOORD2.xyz, u_xlat4.xyz);
    u_xlat5.z = dot(vs_TEXCOORD3.xyz, u_xlat4.xyz);
    u_xlat23 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat23 = inversesqrt(u_xlat23);
    u_xlat4.xyz = vec3(u_xlat23) * u_xlat5.xyz;
    u_xlat5.xyz = vec3(u_xlat22) * _LightColor0.xyz;
    u_xlat6.xyz = u_xlat2.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat6.xyz = u_xlat3.xxx * u_xlat6.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat22 = (-u_xlat3.x) * 0.959999979 + 0.959999979;
    u_xlat2.xyz = vec3(u_xlat22) * u_xlat2.xyz;
    u_xlat22 = (-u_xlat3.y) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat21) + _WorldSpaceLightPos0.xyz;
    u_xlat21 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat21 = max(u_xlat21, 0.00100000005);
    u_xlat21 = inversesqrt(u_xlat21);
    u_xlat0.xyz = vec3(u_xlat21) * u_xlat0.xyz;
    u_xlat21 = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat4.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat8 = dot(u_xlat4.xyz, u_xlat0.xyz);
    u_xlat8 = clamp(u_xlat8, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat7.x = u_xlat0.x * u_xlat0.x;
    u_xlat7.x = dot(u_xlat7.xx, vec2(u_xlat22));
    u_xlat7.x = u_xlat7.x + -0.5;
    u_xlat14 = (-u_xlat1.x) + 1.0;
    u_xlat15 = u_xlat14 * u_xlat14;
    u_xlat15 = u_xlat15 * u_xlat15;
    u_xlat14 = u_xlat14 * u_xlat15;
    u_xlat14 = u_xlat7.x * u_xlat14 + 1.0;
    u_xlat15 = -abs(u_xlat21) + 1.0;
    u_xlat23 = u_xlat15 * u_xlat15;
    u_xlat23 = u_xlat23 * u_xlat23;
    u_xlat15 = u_xlat15 * u_xlat23;
    u_xlat7.x = u_xlat7.x * u_xlat15 + 1.0;
    u_xlat7.x = u_xlat7.x * u_xlat14;
    u_xlat14 = u_xlat22 * u_xlat22;
    u_xlat14 = max(u_xlat14, 0.00200000009);
    u_xlat15 = (-u_xlat14) + 1.0;
    u_xlat22 = abs(u_xlat21) * u_xlat15 + u_xlat14;
    u_xlat15 = u_xlat1.x * u_xlat15 + u_xlat14;
    u_xlat21 = abs(u_xlat21) * u_xlat15;
    u_xlat21 = u_xlat1.x * u_xlat22 + u_xlat21;
    u_xlat21 = u_xlat21 + 9.99999975e-06;
    u_xlat21 = 0.5 / u_xlat21;
    u_xlat14 = u_xlat14 * u_xlat14;
    u_xlat15 = u_xlat8 * u_xlat14 + (-u_xlat8);
    u_xlat8 = u_xlat15 * u_xlat8 + 1.0;
    u_xlat14 = u_xlat14 * 0.318309873;
    u_xlat8 = u_xlat8 * u_xlat8 + 1.00000001e-07;
    u_xlat14 = u_xlat14 / u_xlat8;
    u_xlat7.y = u_xlat14 * u_xlat21;
    u_xlat7.xy = u_xlat1.xx * u_xlat7.xy;
    u_xlat14 = u_xlat7.y * 3.14159274;
    u_xlat14 = max(u_xlat14, 0.0);
    u_xlat21 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlatb21 = u_xlat21!=0.0;
    u_xlat21 = u_xlatb21 ? 1.0 : float(0.0);
    u_xlat14 = u_xlat21 * u_xlat14;
    u_xlat1.xyz = u_xlat7.xxx * u_xlat5.xyz;
    u_xlat7.xyz = u_xlat5.xyz * vec3(u_xlat14);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat22 = u_xlat0.x * u_xlat0.x;
    u_xlat22 = u_xlat22 * u_xlat22;
    u_xlat0.x = u_xlat0.x * u_xlat22;
    u_xlat3.xyz = (-u_xlat6.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz * u_xlat0.xxx + u_xlat6.xyz;
    u_xlat0.xyz = u_xlat7.xyz * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat2.xyz * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

