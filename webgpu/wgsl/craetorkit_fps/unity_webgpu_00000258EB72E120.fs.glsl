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
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_SpecCube1_HDR;
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
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 6) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Ramp;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 14) uniform highp  sampler sampler_CameraDepthTexture;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
bool u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat12;
bvec3 u_xlatb13;
float u_xlat15;
float u_xlat16;
vec3 u_xlat17;
float u_xlat29;
float u_xlat30;
float u_xlat31;
float u_xlat42;
float u_xlat43;
float u_xlat44;
bool u_xlatb44;
float u_xlat46;
float u_xlat47;
bool u_xlatb47;
float u_xlat48;
    u_xlat0.x = vs_TEXCOORD1.w;
    u_xlat0.y = vs_TEXCOORD2.w;
    u_xlat0.z = vs_TEXCOORD3.w;
    u_xlat1.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat2.xyz = vec3(u_xlat42) * u_xlat1.xyz;
    u_xlat3.xy = vs_TEXCOORD4.xy / vs_TEXCOORD4.ww;
    u_xlat43 = texture(sampler2D(_CameraDepthTexture, sampler_CameraDepthTexture), u_xlat3.xy).x;
    u_xlat43 = _ZBufferParams.z * u_xlat43 + _ZBufferParams.w;
    u_xlat43 = float(1.0) / u_xlat43;
    u_xlat43 = u_xlat43 + (-vs_TEXCOORD4.z);
    u_xlat3.xyz = abs(vec3(u_xlat43)) + (-vec3(_Edge, _Fog, _Fade));
    u_xlat3.xyz = u_xlat3.xyz / (-vec3(_Edge, _Fog, _Fade));
    u_xlat3.xyz = clamp(u_xlat3.xyz, 0.0, 1.0);
    u_xlat43 = (-u_xlat3.y) + 1.0;
    u_xlat4.xyz = _Time.xxx * vec3(0.200000003, 0.100000001, 0.200000003) + vs_TEXCOORD0.zwy;
    u_xlat17.xz = u_xlat4.xy * vec2(0.5, 0.5);
    u_xlat5.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat17.xz).xyw;
    u_xlat5.x = u_xlat5.z * u_xlat5.x;
    u_xlat5.xy = u_xlat5.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat44 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat44 = min(u_xlat44, 1.0);
    u_xlat44 = (-u_xlat44) + 1.0;
    u_xlat5.z = sqrt(u_xlat44);
    u_xlat4.xw = vs_TEXCOORD0.xx;
    u_xlat17.xz = u_xlat5.xy * vec2(0.200000003, 0.200000003) + u_xlat4.wz;
    u_xlat4.y = vs_TEXCOORD0.y + _Time.x;
    u_xlat4.xy = u_xlat5.xy + u_xlat4.xy;
    u_xlat4.xy = u_xlat4.xy * vec2(0.200000003, 0.200000003);
    u_xlat44 = texture(sampler2D(_Noise, sampler_Noise), u_xlat4.xy).x;
    u_xlat17.x = texture(sampler2D(_MainTex, sampler_MainTex), u_xlat17.xz).x;
    u_xlat17.z = 0.0;
    u_xlat4.xyz = texture(sampler2D(_Ramp, sampler_Ramp), u_xlat17.xz).xyz;
    u_xlat6.xyz = (-u_xlat4.xyz) + _Color2.xyz;
    u_xlat4.xyz = u_xlat3.xxx * u_xlat6.xyz + u_xlat4.xyz;
    u_xlat44 = u_xlat43 + (-u_xlat44);
    u_xlat44 = clamp(u_xlat44, 0.0, 1.0);
    u_xlat3.x = u_xlat44 * -2.0 + 3.0;
    u_xlat44 = u_xlat44 * u_xlat44;
    u_xlat44 = u_xlat44 * u_xlat3.x;
    u_xlat43 = u_xlat43 * u_xlat44;
    u_xlat6.xyz = _Color1.xyz + (-_Color2.xyz);
    u_xlat6.xyz = vec3(u_xlat43) * u_xlat6.xyz + _Color2.xyz;
    u_xlat4.xyz = u_xlat4.xyz + u_xlat6.xyz;
    u_xlat43 = (-u_xlat17.x) + 1.0;
    SV_Target0.w = (-u_xlat3.z) + 1.0;
    u_xlatb44 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb44){
        u_xlatb3 = unity_ProbeVolumeParams.y==1.0;
        u_xlat17.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat17.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat17.xyz;
        u_xlat17.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat17.xyz;
        u_xlat17.xyz = u_xlat17.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat3.xyz = (bool(u_xlatb3)) ? u_xlat17.xyz : u_xlat0.xyz;
        u_xlat3.xyz = u_xlat3.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat3.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat17.x = u_xlat3.y * 0.25 + 0.75;
        u_xlat46 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat3.x = max(u_xlat17.x, u_xlat46);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
        u_xlat3.w = float(1.0);
    }
    u_xlat3.x = dot(u_xlat3, unity_OcclusionMaskSelector);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat6.x = dot(vs_TEXCOORD1.xyz, u_xlat5.xyz);
    u_xlat6.y = dot(vs_TEXCOORD2.xyz, u_xlat5.xyz);
    u_xlat6.z = dot(vs_TEXCOORD3.xyz, u_xlat5.xyz);
    u_xlat17.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat17.x = inversesqrt(u_xlat17.x);
    u_xlat5.xyz = u_xlat17.xxx * u_xlat6.xyz;
    u_xlat17.x = (-u_xlat43) * _Glossiness + 1.0;
    u_xlat31 = dot((-u_xlat2.xyz), u_xlat5.xyz);
    u_xlat31 = u_xlat31 + u_xlat31;
    u_xlat6.xyz = u_xlat5.xyz * (-vec3(u_xlat31)) + (-u_xlat2.xyz);
    u_xlat3.xzw = u_xlat3.xxx * _LightColor0.xyz;
    if(u_xlatb44){
        u_xlatb44 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb44)) ? u_xlat7.xyz : u_xlat0.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat44 = u_xlat7.y * 0.25;
        u_xlat46 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat48 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat44 = max(u_xlat44, u_xlat46);
        u_xlat7.x = min(u_xlat48, u_xlat44);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
        u_xlat9.xyz = u_xlat7.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat9 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat9.xyz);
        u_xlat7.xyz = u_xlat7.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xyz);
        u_xlat5.w = 1.0;
        u_xlat8.x = dot(u_xlat8, u_xlat5);
        u_xlat8.y = dot(u_xlat9, u_xlat5);
        u_xlat8.z = dot(u_xlat7, u_xlat5);
    } else {
        u_xlat5.w = 1.0;
        u_xlat8.x = dot(unity_SHAr, u_xlat5);
        u_xlat8.y = dot(unity_SHAg, u_xlat5);
        u_xlat8.z = dot(unity_SHAb, u_xlat5);
    }
    u_xlat7.xyz = u_xlat8.xyz + vs_TEXCOORD7.xyz;
    u_xlat7.xyz = max(u_xlat7.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb44 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb44){
        u_xlat44 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat44 = inversesqrt(u_xlat44);
        u_xlat8.xyz = vec3(u_xlat44) * u_xlat6.xyz;
        u_xlat9.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat9.xyz = u_xlat9.xyz / u_xlat8.xyz;
        u_xlat10.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
        u_xlatb11.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat9;
            hlslcc_movcTemp.x = (u_xlatb11.x) ? u_xlat9.x : u_xlat10.x;
            hlslcc_movcTemp.y = (u_xlatb11.y) ? u_xlat9.y : u_xlat10.y;
            hlslcc_movcTemp.z = (u_xlatb11.z) ? u_xlat9.z : u_xlat10.z;
            u_xlat9 = hlslcc_movcTemp;
        }
        u_xlat44 = min(u_xlat9.y, u_xlat9.x);
        u_xlat44 = min(u_xlat9.z, u_xlat44);
        u_xlat9.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat44) + u_xlat9.xyz;
    } else {
        u_xlat8.xyz = u_xlat6.xyz;
    }
    u_xlat44 = (-u_xlat17.x) * 0.699999988 + 1.70000005;
    u_xlat44 = u_xlat44 * u_xlat17.x;
    u_xlat44 = u_xlat44 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat44);
    u_xlat46 = u_xlat8.w + -1.0;
    u_xlat46 = unity_SpecCube0_HDR.w * u_xlat46 + 1.0;
    u_xlat46 = log2(u_xlat46);
    u_xlat46 = u_xlat46 * unity_SpecCube0_HDR.y;
    u_xlat46 = exp2(u_xlat46);
    u_xlat46 = u_xlat46 * unity_SpecCube0_HDR.x;
    u_xlat9.xyz = u_xlat8.xyz * vec3(u_xlat46);
    u_xlatb47 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb47){
        u_xlatb47 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb47){
            u_xlat47 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat47 = inversesqrt(u_xlat47);
            u_xlat10.xyz = vec3(u_xlat47) * u_xlat6.xyz;
            u_xlat11.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat11.xyz = u_xlat11.xyz / u_xlat10.xyz;
            u_xlat12.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat12.xyz = u_xlat12.xyz / u_xlat10.xyz;
            u_xlatb13.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat10.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat11;
                hlslcc_movcTemp.x = (u_xlatb13.x) ? u_xlat11.x : u_xlat12.x;
                hlslcc_movcTemp.y = (u_xlatb13.y) ? u_xlat11.y : u_xlat12.y;
                hlslcc_movcTemp.z = (u_xlatb13.z) ? u_xlat11.z : u_xlat12.z;
                u_xlat11 = hlslcc_movcTemp;
            }
            u_xlat47 = min(u_xlat11.y, u_xlat11.x);
            u_xlat47 = min(u_xlat11.z, u_xlat47);
            u_xlat0.xyz = u_xlat0.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat6.xyz = u_xlat10.xyz * vec3(u_xlat47) + u_xlat0.xyz;
        }
        u_xlat6 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat44);
        u_xlat0.x = u_xlat6.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat0.xyz = u_xlat6.xyz * u_xlat0.xxx;
        u_xlat6.xyz = vec3(u_xlat46) * u_xlat8.xyz + (-u_xlat0.xyz);
        u_xlat9.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat0.xyz;
    }
    u_xlat0.xyz = u_xlat4.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat44 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat4.xyz = vec3(u_xlat44) * u_xlat4.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat42) + _WorldSpaceLightPos0.xyz;
    u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat42 = max(u_xlat42, 0.00100000005);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat1.xyz = vec3(u_xlat42) * u_xlat1.xyz;
    u_xlat42 = dot(u_xlat5.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat5.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat16 = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat16 = clamp(u_xlat16, 0.0, 1.0);
    u_xlat1.x = dot(_WorldSpaceLightPos0.xyz, u_xlat1.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat15 = u_xlat1.x * u_xlat1.x;
    u_xlat15 = dot(vec2(u_xlat15), u_xlat17.xx);
    u_xlat15 = u_xlat15 + -0.5;
    u_xlat29 = (-u_xlat2.x) + 1.0;
    u_xlat30 = u_xlat29 * u_xlat29;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat29 = u_xlat29 * u_xlat30;
    u_xlat29 = u_xlat15 * u_xlat29 + 1.0;
    u_xlat30 = -abs(u_xlat42) + 1.0;
    u_xlat46 = u_xlat30 * u_xlat30;
    u_xlat46 = u_xlat46 * u_xlat46;
    u_xlat30 = u_xlat30 * u_xlat46;
    u_xlat15 = u_xlat15 * u_xlat30 + 1.0;
    u_xlat15 = u_xlat15 * u_xlat29;
    u_xlat15 = u_xlat2.x * u_xlat15;
    u_xlat29 = u_xlat17.x * u_xlat17.x;
    u_xlat29 = max(u_xlat29, 0.00200000009);
    u_xlat17.x = (-u_xlat29) + 1.0;
    u_xlat46 = abs(u_xlat42) * u_xlat17.x + u_xlat29;
    u_xlat17.x = u_xlat2.x * u_xlat17.x + u_xlat29;
    u_xlat42 = abs(u_xlat42) * u_xlat17.x;
    u_xlat42 = u_xlat2.x * u_xlat46 + u_xlat42;
    u_xlat42 = u_xlat42 + 9.99999975e-06;
    u_xlat42 = 0.5 / u_xlat42;
    u_xlat17.x = u_xlat29 * u_xlat29;
    u_xlat46 = u_xlat16 * u_xlat17.x + (-u_xlat16);
    u_xlat16 = u_xlat46 * u_xlat16 + 1.0;
    u_xlat17.x = u_xlat17.x * 0.318309873;
    u_xlat16 = u_xlat16 * u_xlat16 + 1.00000001e-07;
    u_xlat16 = u_xlat17.x / u_xlat16;
    u_xlat42 = u_xlat42 * u_xlat16;
    u_xlat42 = u_xlat2.x * u_xlat42;
    u_xlat42 = u_xlat42 * 3.14159274;
    u_xlat42 = max(u_xlat42, 0.0);
    u_xlat29 = u_xlat29 * u_xlat29 + 1.0;
    u_xlat29 = float(1.0) / u_xlat29;
    u_xlat2.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb2 = u_xlat2.x!=0.0;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat42 = u_xlat42 * u_xlat2.x;
    u_xlat43 = u_xlat43 * _Glossiness + (-u_xlat44);
    u_xlat43 = u_xlat43 + 1.0;
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat2.xyw = u_xlat3.xzw * vec3(u_xlat15) + u_xlat7.xyz;
    u_xlat3.xyz = u_xlat3.xzw * vec3(u_xlat42);
    u_xlat42 = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat42 * u_xlat42;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat42 = u_xlat42 * u_xlat1.x;
    u_xlat5.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat42) + u_xlat0.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat5.xyz;
    u_xlat2.xyw = u_xlat4.xyz * u_xlat2.xyw + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat9.xyz * vec3(u_xlat29);
    u_xlat3.xyz = (-u_xlat0.xyz) + vec3(u_xlat43);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat3.xyz + u_xlat0.xyz;
    SV_Target0.xyz = u_xlat1.xyz * u_xlat0.xyz + u_xlat2.xyw;
    return;
}

