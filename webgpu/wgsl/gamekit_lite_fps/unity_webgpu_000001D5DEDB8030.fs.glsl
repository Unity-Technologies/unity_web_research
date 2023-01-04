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
	vec4 _Time;
	vec3 _WorldSpaceCameraPos;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
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
layout(set = 0, binding = 1) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 2) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec3 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
float u_xlat12;
float u_xlat13;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat20;
bool u_xlatb20;
float u_xlat21;
layout(set = 0, binding = 3) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 4) uniform highp  sampler sampler_LightTexture0;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat19 = dot(vs_TEXCOORD0.xyz, u_xlat1.xyz);
    u_xlat19 = log2(u_xlat19);
    u_xlat19 = u_xlat19 * 0.100000001;
    u_xlat19 = exp2(u_xlat19);
    u_xlat19 = (-u_xlat19) + 1.0;
    u_xlat19 = max(u_xlat19, 0.0);
    u_xlat2.xyz = vec3(u_xlat19) * _Color.xyz;
    u_xlat19 = _Time.x * 200.0;
    u_xlat19 = sin(u_xlat19);
    u_xlat19 = u_xlat19 + 1.0;
    u_xlat19 = u_xlat19 * 0.5;
    u_xlat3.xyz = vec3(u_xlat19) * u_xlat2.xyz;
    u_xlat4.xy = vs_TEXCOORD1.yy * unity_WorldToLight[1].xy;
    u_xlat4.xy = unity_WorldToLight[0].xy * vs_TEXCOORD1.xx + u_xlat4.xy;
    u_xlat4.xy = unity_WorldToLight[2].xy * vs_TEXCOORD1.zz + u_xlat4.xy;
    u_xlat4.xy = u_xlat4.xy + unity_WorldToLight[3].xy;
    u_xlatb20 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb20){
        u_xlatb20 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb20)) ? u_xlat5.xyz : vs_TEXCOORD1.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat20 = u_xlat5.y * 0.25 + 0.75;
        u_xlat21 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat20, u_xlat21);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat20 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat20 = clamp(u_xlat20, 0.0, 1.0);
    u_xlat21 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat4.xy).w;
    u_xlat20 = u_xlat20 * u_xlat21;
    u_xlat4.xyz = vec3(u_xlat20) * _LightColor0.xyz;
    u_xlat20 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat20 = inversesqrt(u_xlat20);
    u_xlat5.xyz = vec3(u_xlat20) * vs_TEXCOORD0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat19) + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat19 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = vec3(u_xlat19) * u_xlat3.xyz;
    u_xlat19 = (-_Glossiness) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18) + _WorldSpaceLightPos0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = max(u_xlat18, 0.00100000005);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat18 = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat5.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7 = dot(u_xlat5.xyz, u_xlat0.xyz);
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
    u_xlat18 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlatb18 = u_xlat18!=0.0;
    u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
    u_xlat12 = u_xlat18 * u_xlat12;
    u_xlat1.xyz = u_xlat6.xxx * u_xlat4.xyz;
    u_xlat6.xyz = u_xlat4.xyz * vec3(u_xlat12);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat19 = u_xlat0.x * u_xlat0.x;
    u_xlat19 = u_xlat19 * u_xlat19;
    u_xlat0.x = u_xlat0.x * u_xlat19;
    u_xlat4.xyz = (-u_xlat2.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat4.xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat6.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat3.xyz * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

