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
	vec4 _ZBufferParams;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	float _Glossiness;
	float _Metallic;
	vec4 _Color1;
	vec4 _Color2;
	float _Edge;
	float _Fade;
	float _Fog;
};
layout(set = 0, binding = 0) uniform highp texture2D _CameraDepthTexture;
layout(set = 0, binding = 1) uniform mediump texture2D _Normal;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Ramp;
layout(set = 0, binding = 5) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec3 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_Ramp;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 11) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
float u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
float u_xlat12;
float u_xlat13;
float u_xlat18;
bool u_xlatb18;
float u_xlat19;
float u_xlat20;
float u_xlat21;
    u_xlat0.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat1.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat2.xy = vs_TEXCOORD5.xy / vs_TEXCOORD5.ww;
    u_xlat19 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat2.xy).x;
    u_xlat19 = _ZBufferParams.z * u_xlat19 + _ZBufferParams.w;
    u_xlat19 = float(1.0) / u_xlat19;
    u_xlat19 = u_xlat19 + (-vs_TEXCOORD5.z);
    u_xlat2.xyz = abs(vec3(u_xlat19)) + (-vec3(_Edge, _Fog, _Fade));
    u_xlat2.xyz = u_xlat2.xyz / (-vec3(_Edge, _Fog, _Fade));
    u_xlat2.xyz = clamp(u_xlat2.xyz, 0.0, 1.0);
    u_xlat19 = (-u_xlat2.y) + 1.0;
    u_xlat3.xyz = _Time.xxx * vec3(0.200000003, 0.100000001, 0.200000003) + vs_TEXCOORD0.zwy;
    u_xlat8.xz = u_xlat3.xy * vec2(0.5, 0.5);
    u_xlat4.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat8.xz).xyw;
    u_xlat4.x = u_xlat4.z * u_xlat4.x;
    u_xlat4.xy = u_xlat4.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat8.x = dot(u_xlat4.xy, u_xlat4.xy);
    u_xlat8.x = min(u_xlat8.x, 1.0);
    u_xlat8.x = (-u_xlat8.x) + 1.0;
    u_xlat4.z = sqrt(u_xlat8.x);
    u_xlat3.xw = vs_TEXCOORD0.xx;
    u_xlat8.xz = u_xlat4.xy * vec2(0.200000003, 0.200000003) + u_xlat3.wz;
    u_xlat3.y = vs_TEXCOORD0.y + _Time.x;
    u_xlat3.xy = u_xlat4.xy + u_xlat3.xy;
    u_xlat3.xy = u_xlat3.xy * vec2(0.200000003, 0.200000003);
    u_xlat3.x = texture(sampler2D(_Noise, sampler_Noise), u_xlat3.xy).x;
    u_xlat8.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat8.xz).x;
    u_xlat8.z = 0.0;
    u_xlat9.xyz = texture(sampler2D(_Ramp, sampler_Ramp), u_xlat8.xz).xyz;
    u_xlat5.xyz = (-u_xlat9.xyz) + _Color2.xyz;
    u_xlat9.xyz = u_xlat2.xxx * u_xlat5.xyz + u_xlat9.xyz;
    u_xlat2.x = u_xlat19 + (-u_xlat3.x);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat20 = u_xlat2.x * -2.0 + 3.0;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat2.x = u_xlat2.x * u_xlat20;
    u_xlat19 = u_xlat19 * u_xlat2.x;
    u_xlat5.xyz = _Color1.xyz + (-_Color2.xyz);
    u_xlat5.xyz = vec3(u_xlat19) * u_xlat5.xyz + _Color2.xyz;
    u_xlat3.xyz = u_xlat9.xyz + u_xlat5.xyz;
    u_xlat19 = (-u_xlat8.x) + 1.0;
    SV_Target0.w = (-u_xlat2.z) + 1.0;
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb2 = unity_ProbeVolumeParams.y==1.0;
        u_xlat8.xyz = vs_TEXCOORD4.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD4.xxx + u_xlat8.xyz;
        u_xlat8.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.zzz + u_xlat8.xyz;
        u_xlat8.xyz = u_xlat8.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb2)) ? u_xlat8.xyz : vs_TEXCOORD4.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat8.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat21 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat8.x, u_xlat21);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat2.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat5.x = dot(vs_TEXCOORD1.xyz, u_xlat4.xyz);
    u_xlat5.y = dot(vs_TEXCOORD2.xyz, u_xlat4.xyz);
    u_xlat5.z = dot(vs_TEXCOORD3.xyz, u_xlat4.xyz);
    u_xlat8.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat8.x = inversesqrt(u_xlat8.x);
    u_xlat8.xyz = u_xlat8.xxx * u_xlat5.xyz;
    u_xlat4.xyz = u_xlat2.xxx * _LightColor0.xyz;
    u_xlat5.xyz = u_xlat3.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat5.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat5.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat2.x = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = u_xlat2.xxx * u_xlat3.xyz;
    u_xlat19 = (-u_xlat19) * _Glossiness + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat18) + _WorldSpaceLightPos0.xyz;
    u_xlat18 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat18 = max(u_xlat18, 0.00100000005);
    u_xlat18 = inversesqrt(u_xlat18);
    u_xlat0.xyz = vec3(u_xlat18) * u_xlat0.xyz;
    u_xlat18 = dot(u_xlat8.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat8.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat7 = dot(u_xlat8.xyz, u_xlat0.xyz);
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
    u_xlat2.x = u_xlat13 * u_xlat13;
    u_xlat2.x = u_xlat2.x * u_xlat2.x;
    u_xlat13 = u_xlat13 * u_xlat2.x;
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
    u_xlat18 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlatb18 = u_xlat18!=0.0;
    u_xlat18 = u_xlatb18 ? 1.0 : float(0.0);
    u_xlat12 = u_xlat18 * u_xlat12;
    u_xlat1.xyz = u_xlat6.xxx * u_xlat4.xyz;
    u_xlat6.xyz = u_xlat4.xyz * vec3(u_xlat12);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat19 = u_xlat0.x * u_xlat0.x;
    u_xlat19 = u_xlat19 * u_xlat19;
    u_xlat0.x = u_xlat0.x * u_xlat19;
    u_xlat2.xyz = (-u_xlat5.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat5.xyz;
    u_xlat0.xyz = u_xlat6.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat3.xyz * u_xlat1.xyz + u_xlat0.xyz;
    return;
}

