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
	vec4 unity_OcclusionMaskSelector;
	vec4 unity_FogColor;
	vec4 unity_FogParams;
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
	vec4 _VeinColor;
	vec4 _BrainColor;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Occlusion;
layout(set = 0, binding = 2) uniform mediump texture2D _Metallic;
layout(set = 0, binding = 3) uniform mediump texture2D _NormalMap;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD5;
layout(location = 2) in highp vec4 vs_TEXCOORD1;
layout(location = 3) in highp vec4 vs_TEXCOORD2;
layout(location = 4) in highp vec4 vs_TEXCOORD3;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_Metallic;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_NormalMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Occlusion;
void main()
{
vec4 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bvec3 u_xlatb12;
vec3 u_xlat13;
bvec3 u_xlatb14;
float u_xlat16;
float u_xlat17;
float u_xlat19;
bool u_xlatb19;
float u_xlat31;
float u_xlat32;
float u_xlat45;
float u_xlat46;
float u_xlat47;
bool u_xlatb47;
float u_xlat48;
    u_xlat0.x = vs_TEXCOORD1.w;
    u_xlat0.y = vs_TEXCOORD2.w;
    u_xlat0.z = vs_TEXCOORD3.w;
    u_xlat1.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat45 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat2.xyz = vec3(u_xlat45) * u_xlat1.xyz;
    u_xlat3.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat46 = texture(sampler2D(_Occlusion, sampler_Occlusion), vs_TEXCOORD0.xy).x;
    u_xlat4 = texture(sampler2D(_Metallic, sampler_Metallic), vs_TEXCOORD0.xy);
    u_xlat5.xyz = texture(sampler2D(_NormalMap, sampler_NormalMap), vs_TEXCOORD0.xy).xyw;
    u_xlat5.x = u_xlat5.z * u_xlat5.x;
    u_xlat5.xy = u_xlat5.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat47 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat47 = min(u_xlat47, 1.0);
    u_xlat47 = (-u_xlat47) + 1.0;
    u_xlat5.z = sqrt(u_xlat47);
    u_xlat47 = fract(_Time.y);
    u_xlat47 = u_xlat47 + -0.0399999991;
    u_xlat47 = (-u_xlat47) + vs_TEXCOORD0.y;
    u_xlat47 = u_xlat47 * 12.5;
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat48 = u_xlat47 * -2.0 + 3.0;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat47 = u_xlat47 * u_xlat48;
    u_xlat47 = u_xlat47 * 3.1400001;
    u_xlat47 = sin(u_xlat47);
    u_xlat47 = max(u_xlat47, 0.0);
    u_xlat48 = _Time.y * 0.200000003;
    u_xlat48 = fract(u_xlat48);
    u_xlat48 = u_xlat48 * 3.1400001;
    u_xlat48 = sin(u_xlat48);
    u_xlat6.xyz = (-u_xlat4.yzw) + vec3(1.0, 1.0, 1.0);
    u_xlat7.xyz = u_xlat6.xxx * _BrainColor.xyz;
    u_xlat6.xyw = u_xlat6.yyy * _VeinColor.xyz;
    u_xlat6.xyw = vec3(u_xlat47) * u_xlat6.xyw;
    u_xlat6.xyw = u_xlat7.xyz * vec3(u_xlat48) + u_xlat6.xyw;
    u_xlatb47 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb47){
        u_xlatb47 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb47)) ? u_xlat7.xyz : u_xlat0.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat47 = u_xlat7.y * 0.25 + 0.75;
        u_xlat48 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat7.x = max(u_xlat47, u_xlat48);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
        u_xlat7.w = float(1.0);
    }
    u_xlat47 = dot(u_xlat7, unity_OcclusionMaskSelector);
    u_xlat47 = clamp(u_xlat47, 0.0, 1.0);
    u_xlat7.x = dot(vs_TEXCOORD1.xyz, u_xlat5.xyz);
    u_xlat7.y = dot(vs_TEXCOORD2.xyz, u_xlat5.xyz);
    u_xlat7.z = dot(vs_TEXCOORD3.xyz, u_xlat5.xyz);
    u_xlat48 = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlat48 = inversesqrt(u_xlat48);
    u_xlat5.xyz = vec3(u_xlat48) * u_xlat7.xyz;
    u_xlat48 = dot((-u_xlat2.xyz), u_xlat5.xyz);
    u_xlat48 = u_xlat48 + u_xlat48;
    u_xlat7.xyz = u_xlat5.xyz * (-vec3(u_xlat48)) + (-u_xlat2.xyz);
    u_xlat8.xyz = vec3(u_xlat47) * _LightColor0.xyz;
    u_xlatb47 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb47){
        u_xlat47 = dot(u_xlat7.xyz, u_xlat7.xyz);
        u_xlat47 = inversesqrt(u_xlat47);
        u_xlat9.xyz = vec3(u_xlat47) * u_xlat7.xyz;
        u_xlat10.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat9.xyz;
        u_xlat11.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat9.xyz;
        u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat9.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat10;
            hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
            hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
            hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
            u_xlat10 = hlslcc_movcTemp;
        }
        u_xlat47 = min(u_xlat10.y, u_xlat10.x);
        u_xlat47 = min(u_xlat10.z, u_xlat47);
        u_xlat10.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat9.xyz = u_xlat9.xyz * vec3(u_xlat47) + u_xlat10.xyz;
    } else {
        u_xlat9.xyz = u_xlat7.xyz;
    }
    u_xlat47 = (-u_xlat6.z) * 0.699999988 + 1.70000005;
    u_xlat47 = u_xlat47 * u_xlat6.z;
    u_xlat47 = u_xlat47 * 6.0;
    u_xlat9 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat9.xyz, u_xlat47);
    u_xlat48 = u_xlat9.w + -1.0;
    u_xlat48 = unity_SpecCube0_HDR.w * u_xlat48 + 1.0;
    u_xlat48 = log2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.y;
    u_xlat48 = exp2(u_xlat48);
    u_xlat48 = u_xlat48 * unity_SpecCube0_HDR.x;
    u_xlat10.xyz = u_xlat9.xyz * vec3(u_xlat48);
    u_xlatb19 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb19){
        u_xlatb19 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb19){
            u_xlat19 = dot(u_xlat7.xyz, u_xlat7.xyz);
            u_xlat19 = inversesqrt(u_xlat19);
            u_xlat11.xyz = vec3(u_xlat19) * u_xlat7.xyz;
            u_xlat12.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat12.xyz = u_xlat12.xyz / u_xlat11.xyz;
            u_xlat13.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat11.xyz;
            u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat11.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat12;
                hlslcc_movcTemp.x = (u_xlatb14.x) ? u_xlat12.x : u_xlat13.x;
                hlslcc_movcTemp.y = (u_xlatb14.y) ? u_xlat12.y : u_xlat13.y;
                hlslcc_movcTemp.z = (u_xlatb14.z) ? u_xlat12.z : u_xlat13.z;
                u_xlat12 = hlslcc_movcTemp;
            }
            u_xlat19 = min(u_xlat12.y, u_xlat12.x);
            u_xlat19 = min(u_xlat12.z, u_xlat19);
            u_xlat0.xyz = u_xlat0.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat7.xyz = u_xlat11.xyz * vec3(u_xlat19) + u_xlat0.xyz;
        }
        u_xlat7 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat7.xyz, u_xlat47);
        u_xlat0.x = u_xlat7.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat0.xyz = u_xlat7.xyz * u_xlat0.xxx;
        u_xlat7.xyz = vec3(u_xlat48) * u_xlat9.xyz + (-u_xlat0.xyz);
        u_xlat10.xyz = unity_SpecCube0_BoxMin.www * u_xlat7.xyz + u_xlat0.xyz;
    }
    u_xlat0.xyz = vec3(u_xlat46) * u_xlat10.xyz;
    u_xlat7.xyz = u_xlat3.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat7.xyz = u_xlat4.xxx * u_xlat7.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat46 = (-u_xlat4.x) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = vec3(u_xlat46) * u_xlat3.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat45) + _WorldSpaceLightPos0.xyz;
    u_xlat45 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat45 = max(u_xlat45, 0.00100000005);
    u_xlat45 = inversesqrt(u_xlat45);
    u_xlat1.xyz = vec3(u_xlat45) * u_xlat1.xyz;
    u_xlat45 = dot(u_xlat5.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat5.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat17 = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat17 = clamp(u_xlat17, 0.0, 1.0);
    u_xlat1.x = dot(_WorldSpaceLightPos0.xyz, u_xlat1.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat16 = u_xlat1.x * u_xlat1.x;
    u_xlat16 = dot(vec2(u_xlat16), u_xlat6.zz);
    u_xlat16 = u_xlat16 + -0.5;
    u_xlat31 = (-u_xlat2.x) + 1.0;
    u_xlat32 = u_xlat31 * u_xlat31;
    u_xlat32 = u_xlat32 * u_xlat32;
    u_xlat31 = u_xlat31 * u_xlat32;
    u_xlat31 = u_xlat16 * u_xlat31 + 1.0;
    u_xlat32 = -abs(u_xlat45) + 1.0;
    u_xlat47 = u_xlat32 * u_xlat32;
    u_xlat47 = u_xlat47 * u_xlat47;
    u_xlat32 = u_xlat32 * u_xlat47;
    u_xlat16 = u_xlat16 * u_xlat32 + 1.0;
    u_xlat16 = u_xlat16 * u_xlat31;
    u_xlat16 = u_xlat2.x * u_xlat16;
    u_xlat31 = u_xlat6.z * u_xlat6.z;
    u_xlat31 = max(u_xlat31, 0.00200000009);
    u_xlat47 = (-u_xlat31) + 1.0;
    u_xlat48 = abs(u_xlat45) * u_xlat47 + u_xlat31;
    u_xlat47 = u_xlat2.x * u_xlat47 + u_xlat31;
    u_xlat45 = abs(u_xlat45) * u_xlat47;
    u_xlat45 = u_xlat2.x * u_xlat48 + u_xlat45;
    u_xlat45 = u_xlat45 + 9.99999975e-06;
    u_xlat45 = 0.5 / u_xlat45;
    u_xlat47 = u_xlat31 * u_xlat31;
    u_xlat48 = u_xlat17 * u_xlat47 + (-u_xlat17);
    u_xlat17 = u_xlat48 * u_xlat17 + 1.0;
    u_xlat47 = u_xlat47 * 0.318309873;
    u_xlat17 = u_xlat17 * u_xlat17 + 1.00000001e-07;
    u_xlat17 = u_xlat47 / u_xlat17;
    u_xlat45 = u_xlat45 * u_xlat17;
    u_xlat45 = u_xlat2.x * u_xlat45;
    u_xlat45 = u_xlat45 * 3.14159274;
    u_xlat45 = max(u_xlat45, 0.0);
    u_xlat31 = u_xlat31 * u_xlat31 + 1.0;
    u_xlat1.z = float(1.0) / u_xlat31;
    u_xlat2.x = dot(u_xlat7.xyz, u_xlat7.xyz);
    u_xlatb2 = u_xlat2.x!=0.0;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat45 = u_xlat45 * u_xlat2.x;
    u_xlat46 = (-u_xlat46) + u_xlat4.w;
    u_xlat46 = u_xlat46 + 1.0;
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat2.xyw = vec3(u_xlat16) * u_xlat8.xyz;
    u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat45);
    u_xlat0.w = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat0.w * u_xlat0.w;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat0 = u_xlat0 * u_xlat1.zzzx;
    u_xlat5.xyz = (-u_xlat7.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * u_xlat0.www + u_xlat7.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xyz;
    u_xlat2.xyw = u_xlat3.xyz * u_xlat2.xyw + u_xlat4.xyz;
    u_xlat1.xyz = (-u_xlat7.xyz) + vec3(u_xlat46);
    u_xlat1.xyz = vec3(u_xlat32) * u_xlat1.xyz + u_xlat7.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat1.xyz + u_xlat2.xyw;
    u_xlat0.xyz = u_xlat6.xyw + u_xlat0.xyz;
    u_xlat45 = vs_TEXCOORD5 / _ProjectionParams.y;
    u_xlat45 = (-u_xlat45) + 1.0;
    u_xlat45 = u_xlat45 * _ProjectionParams.z;
    u_xlat45 = max(u_xlat45, 0.0);
    u_xlat45 = u_xlat45 * unity_FogParams.x;
    u_xlat45 = u_xlat45 * (-u_xlat45);
    u_xlat45 = exp2(u_xlat45);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat45) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

