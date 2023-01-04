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
	vec4 _WorldSpaceLightPos0;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	float _FaceUVSpeedX;
	float _FaceUVSpeedY;
	vec4 _FaceColor;
	float _OutlineSoftness;
	float _OutlineUVSpeedX;
	float _OutlineUVSpeedY;
	vec4 _OutlineColor;
	float _OutlineWidth;
	float _ScaleRatioA;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _FaceTex;
layout(set = 0, binding = 3) uniform mediump texture2D _OutlineTex;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec2 vs_TEXCOORD5;
layout(location = 3) in highp vec4 vs_TEXCOORD2;
layout(location = 4) in highp vec4 vs_TEXCOORD3;
layout(location = 5) in highp vec4 vs_TEXCOORD4;
layout(location = 6) in highp vec4 vs_COLOR0;
layout(location = 7) in highp vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec3 u_xlat7;
bool u_xlatb7;
vec3 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
float u_xlat12;
float u_xlat13;
float u_xlat18;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_FaceTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_OutlineTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.x = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).w;
    u_xlat0.x = (-u_xlat0.x) + 0.5;
    u_xlat0.x = u_xlat0.x + (-vs_TEXCOORD5.x);
    u_xlat0.x = u_xlat0.x * vs_TEXCOORD5.y + 0.5;
    u_xlat6.x = _OutlineWidth * _ScaleRatioA;
    u_xlat6.y = _OutlineSoftness * _ScaleRatioA;
    u_xlat6.xz = u_xlat6.xy * vs_TEXCOORD5.yy;
    u_xlat1 = vs_COLOR0 * _FaceColor;
    u_xlat2.x = vs_COLOR0.w * _OutlineColor.w;
    u_xlat8.xy = vec2(_FaceUVSpeedX, _FaceUVSpeedY) * _Time.yy + vs_TEXCOORD0.zw;
    u_xlat3 = texture(sampler2D(_FaceTex, sampler_FaceTex), u_xlat8.xy);
    u_xlat1 = u_xlat1 * u_xlat3;
    u_xlat8.xy = vec2(_OutlineUVSpeedX, _OutlineUVSpeedY) * _Time.yy + vs_TEXCOORD1.xy;
    u_xlat3 = texture(sampler2D(_OutlineTex, sampler_OutlineTex), u_xlat8.xy);
    u_xlat8.xyz = u_xlat3.xyz * _OutlineColor.xyz;
    u_xlat3.w = u_xlat2.x * u_xlat3.w;
    u_xlat2.x = (-u_xlat6.x) * 0.5 + u_xlat0.x;
    u_xlat18 = u_xlat6.z * 0.5 + u_xlat2.x;
    u_xlat12 = u_xlat6.y * vs_TEXCOORD5.y + 1.0;
    u_xlat12 = u_xlat18 / u_xlat12;
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat12 = (-u_xlat12) + 1.0;
    u_xlat0.x = u_xlat6.x * 0.5 + u_xlat0.x;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat6.x = min(u_xlat6.x, 1.0);
    u_xlat6.x = sqrt(u_xlat6.x);
    u_xlat0.x = u_xlat6.x * u_xlat0.x;
    u_xlat1.xyz = u_xlat1.www * u_xlat1.xyz;
    u_xlat3.xyz = u_xlat8.xyz * u_xlat3.www;
    u_xlat2 = (-u_xlat1) + u_xlat3;
    u_xlat1 = u_xlat0.xxxx * u_xlat2 + u_xlat1;
    u_xlat0 = vec4(u_xlat12) * u_xlat1;
    u_xlat1.x = max(u_xlat0.w, 9.99999975e-05);
    u_xlat0.xyz = u_xlat0.xyz / u_xlat1.xxx;
    u_xlatb1 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb1){
        u_xlatb7 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat9.x = vs_TEXCOORD2.w;
        u_xlat9.y = vs_TEXCOORD3.w;
        u_xlat9.z = vs_TEXCOORD4.w;
        u_xlat7.xyz = (bool(u_xlatb7)) ? u_xlat2.xyz : u_xlat9.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat7.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat13 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat13, u_xlat7.x);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat7.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat7.x = clamp(u_xlat7.x, 0.0, 1.0);
    u_xlat2.x = vs_TEXCOORD2.z;
    u_xlat2.y = vs_TEXCOORD3.z;
    u_xlat2.z = vs_TEXCOORD4.z;
    u_xlat13 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat13 = inversesqrt(u_xlat13);
    u_xlat2.xyz = vec3(u_xlat13) * u_xlat2.xyz;
    u_xlat7.xyz = u_xlat7.xxx * _LightColor0.xyz;
    if(u_xlatb1){
        u_xlatb1 = unity_ProbeVolumeParams.y==1.0;
        u_xlat3.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat3.xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat3.xyz;
        u_xlat3.xyz = u_xlat3.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat10.x = vs_TEXCOORD2.w;
        u_xlat10.y = vs_TEXCOORD3.w;
        u_xlat10.z = vs_TEXCOORD4.w;
        u_xlat3.xyz = (bool(u_xlatb1)) ? u_xlat3.xyz : u_xlat10.xyz;
        u_xlat3.xyz = u_xlat3.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat3.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat1.x = u_xlat3.y * 0.25;
        u_xlat9.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat4.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat1.x = max(u_xlat1.x, u_xlat9.x);
        u_xlat3.x = min(u_xlat4.x, u_xlat1.x);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
        u_xlat5.xyz = u_xlat3.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xyz);
        u_xlat3.xyz = u_xlat3.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xyz);
        u_xlat2.w = 1.0;
        u_xlat4.x = dot(u_xlat4, u_xlat2);
        u_xlat4.y = dot(u_xlat5, u_xlat2);
        u_xlat4.z = dot(u_xlat3, u_xlat2);
    } else {
        u_xlat2.w = 1.0;
        u_xlat4.x = dot(unity_SHAr, u_xlat2);
        u_xlat4.y = dot(unity_SHAg, u_xlat2);
        u_xlat4.z = dot(unity_SHAb, u_xlat2);
    }
    u_xlat3.xyz = u_xlat4.xyz + vs_TEXCOORD7.xyz;
    u_xlat3.xyz = max(u_xlat3.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1.x = dot(u_xlat2.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat7.xyz = u_xlat0.xyz * u_xlat7.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat7.xyz * u_xlat1.xxx + u_xlat0.xyz;
    SV_Target0.w = u_xlat0.w;
    return;
}

