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
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
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
	vec4 _Color;
};
layout(set = 0, binding = 1) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 2) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 3) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec3 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec3 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
bvec3 u_xlatb9;
vec3 u_xlat10;
bvec3 u_xlatb11;
vec3 u_xlat12;
float u_xlat13;
float u_xlat16;
float u_xlat24;
float u_xlat25;
float u_xlat36;
float u_xlat37;
float u_xlat38;
bool u_xlatb38;
float u_xlat39;
bool u_xlatb39;
float u_xlat40;
float u_xlat41;
bool u_xlatb41;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_ShadowMapTexture;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD1.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat1.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlat37 = dot(vs_TEXCOORD0.xyz, u_xlat1.xyz);
    u_xlat37 = log2(u_xlat37);
    u_xlat37 = u_xlat37 * 0.100000001;
    u_xlat37 = exp2(u_xlat37);
    u_xlat37 = (-u_xlat37) + 1.0;
    u_xlat37 = max(u_xlat37, 0.0);
    u_xlat2.xyz = vec3(u_xlat37) * _Color.xyz;
    u_xlat37 = _Time.x * 200.0;
    u_xlat37 = sin(u_xlat37);
    u_xlat37 = u_xlat37 + 1.0;
    u_xlat37 = u_xlat37 * 0.5;
    u_xlat3.xyz = vec3(u_xlat37) * u_xlat2.xyz;
    u_xlat4.x = unity_MatrixV[0].z;
    u_xlat4.y = unity_MatrixV[1].z;
    u_xlat4.z = unity_MatrixV[2].z;
    u_xlat38 = dot(u_xlat0.xyz, u_xlat4.xyz);
    u_xlat4.xyz = vs_TEXCOORD1.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat39 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat39 = sqrt(u_xlat39);
    u_xlat39 = (-u_xlat38) + u_xlat39;
    u_xlat38 = unity_ShadowFadeCenterAndType.w * u_xlat39 + u_xlat38;
    u_xlat38 = u_xlat38 * _LightShadowData.z + _LightShadowData.w;
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlatb39 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb39){
        u_xlatb39 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD1.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.xxx + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD1.zzz + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat4.xyz = (bool(u_xlatb39)) ? u_xlat4.xyz : vs_TEXCOORD1.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat39 = u_xlat4.y * 0.25 + 0.75;
        u_xlat16 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat39, u_xlat16);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat39 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat39 = clamp(u_xlat39, 0.0, 1.0);
    u_xlat4.xy = vs_TEXCOORD4.xy / vs_TEXCOORD4.ww;
    u_xlat4.x = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat4.xy).x;
    u_xlat39 = u_xlat39 + (-u_xlat4.x);
    u_xlat38 = u_xlat38 * u_xlat39 + u_xlat4.x;
    u_xlat39 = (-_Glossiness) + 1.0;
    u_xlat4.x = dot((-u_xlat1.xyz), vs_TEXCOORD0.xyz);
    u_xlat4.x = u_xlat4.x + u_xlat4.x;
    u_xlat4.xyz = vs_TEXCOORD0.xyz * (-u_xlat4.xxx) + (-u_xlat1.xyz);
    u_xlat5.xyz = vec3(u_xlat38) * _LightColor0.xyz;
    u_xlatb38 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb38){
        u_xlat38 = dot(u_xlat4.xyz, u_xlat4.xyz);
        u_xlat38 = inversesqrt(u_xlat38);
        u_xlat6.xyz = vec3(u_xlat38) * u_xlat4.xyz;
        u_xlat7.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat7.xyz = u_xlat7.xyz / u_xlat6.xyz;
        u_xlat8.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat8.xyz = u_xlat8.xyz / u_xlat6.xyz;
        u_xlatb9.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat6.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat7;
            hlslcc_movcTemp.x = (u_xlatb9.x) ? u_xlat7.x : u_xlat8.x;
            hlslcc_movcTemp.y = (u_xlatb9.y) ? u_xlat7.y : u_xlat8.y;
            hlslcc_movcTemp.z = (u_xlatb9.z) ? u_xlat7.z : u_xlat8.z;
            u_xlat7 = hlslcc_movcTemp;
        }
        u_xlat38 = min(u_xlat7.y, u_xlat7.x);
        u_xlat38 = min(u_xlat7.z, u_xlat38);
        u_xlat7.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat6.xyz = u_xlat6.xyz * vec3(u_xlat38) + u_xlat7.xyz;
    } else {
        u_xlat6.xyz = u_xlat4.xyz;
    }
    u_xlat38 = (-u_xlat39) * 0.699999988 + 1.70000005;
    u_xlat38 = u_xlat38 * u_xlat39;
    u_xlat38 = u_xlat38 * 6.0;
    u_xlat6 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat38);
    u_xlat40 = u_xlat6.w + -1.0;
    u_xlat40 = unity_SpecCube0_HDR.w * u_xlat40 + 1.0;
    u_xlat40 = log2(u_xlat40);
    u_xlat40 = u_xlat40 * unity_SpecCube0_HDR.y;
    u_xlat40 = exp2(u_xlat40);
    u_xlat40 = u_xlat40 * unity_SpecCube0_HDR.x;
    u_xlat7.xyz = u_xlat6.xyz * vec3(u_xlat40);
    u_xlatb41 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb41){
        u_xlatb41 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb41){
            u_xlat41 = dot(u_xlat4.xyz, u_xlat4.xyz);
            u_xlat41 = inversesqrt(u_xlat41);
            u_xlat8.xyz = u_xlat4.xyz * vec3(u_xlat41);
            u_xlat9.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat9.xyz = u_xlat9.xyz / u_xlat8.xyz;
            u_xlat10.xyz = (-vs_TEXCOORD1.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
            u_xlatb11.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat9;
                hlslcc_movcTemp.x = (u_xlatb11.x) ? u_xlat9.x : u_xlat10.x;
                hlslcc_movcTemp.y = (u_xlatb11.y) ? u_xlat9.y : u_xlat10.y;
                hlslcc_movcTemp.z = (u_xlatb11.z) ? u_xlat9.z : u_xlat10.z;
                u_xlat9 = hlslcc_movcTemp;
            }
            u_xlat41 = min(u_xlat9.y, u_xlat9.x);
            u_xlat41 = min(u_xlat9.z, u_xlat41);
            u_xlat9.xyz = vs_TEXCOORD1.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat41) + u_xlat9.xyz;
        }
        u_xlat8 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat4.xyz, u_xlat38);
        u_xlat38 = u_xlat8.w + -1.0;
        u_xlat38 = unity_SpecCube1_HDR.w * u_xlat38 + 1.0;
        u_xlat38 = log2(u_xlat38);
        u_xlat38 = u_xlat38 * unity_SpecCube1_HDR.y;
        u_xlat38 = exp2(u_xlat38);
        u_xlat38 = u_xlat38 * unity_SpecCube1_HDR.x;
        u_xlat4.xyz = u_xlat8.xyz * vec3(u_xlat38);
        u_xlat6.xyz = vec3(u_xlat40) * u_xlat6.xyz + (-u_xlat4.xyz);
        u_xlat7.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat4.xyz;
    }
    u_xlat38 = dot(vs_TEXCOORD0.xyz, vs_TEXCOORD0.xyz);
    u_xlat38 = inversesqrt(u_xlat38);
    u_xlat4.xyz = vec3(u_xlat38) * vs_TEXCOORD0.xyz;
    u_xlat2.xyz = u_xlat2.xyz * vec3(u_xlat37) + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat2.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat2.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat37 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = vec3(u_xlat37) * u_xlat3.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat36) + _WorldSpaceLightPos0.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = max(u_xlat36, 0.00100000005);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat0.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlat36 = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat4.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat13 = dot(u_xlat4.xyz, u_xlat0.xyz);
    u_xlat13 = clamp(u_xlat13, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat12.x = u_xlat0.x * u_xlat0.x;
    u_xlat12.x = dot(u_xlat12.xx, vec2(u_xlat39));
    u_xlat12.x = u_xlat12.x + -0.5;
    u_xlat24 = (-u_xlat1.x) + 1.0;
    u_xlat25 = u_xlat24 * u_xlat24;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat24 = u_xlat24 * u_xlat25;
    u_xlat24 = u_xlat12.x * u_xlat24 + 1.0;
    u_xlat25 = -abs(u_xlat36) + 1.0;
    u_xlat38 = u_xlat25 * u_xlat25;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat25 = u_xlat25 * u_xlat38;
    u_xlat12.x = u_xlat12.x * u_xlat25 + 1.0;
    u_xlat12.x = u_xlat12.x * u_xlat24;
    u_xlat24 = u_xlat39 * u_xlat39;
    u_xlat24 = max(u_xlat24, 0.00200000009);
    u_xlat38 = (-u_xlat24) + 1.0;
    u_xlat39 = abs(u_xlat36) * u_xlat38 + u_xlat24;
    u_xlat38 = u_xlat1.x * u_xlat38 + u_xlat24;
    u_xlat36 = abs(u_xlat36) * u_xlat38;
    u_xlat36 = u_xlat1.x * u_xlat39 + u_xlat36;
    u_xlat36 = u_xlat36 + 9.99999975e-06;
    u_xlat36 = 0.5 / u_xlat36;
    u_xlat38 = u_xlat24 * u_xlat24;
    u_xlat39 = u_xlat13 * u_xlat38 + (-u_xlat13);
    u_xlat13 = u_xlat39 * u_xlat13 + 1.0;
    u_xlat38 = u_xlat38 * 0.318309873;
    u_xlat13 = u_xlat13 * u_xlat13 + 1.00000001e-07;
    u_xlat13 = u_xlat38 / u_xlat13;
    u_xlat12.z = u_xlat36 * u_xlat13;
    u_xlat12.xz = u_xlat1.xx * u_xlat12.xz;
    u_xlat36 = u_xlat12.z * 3.14159274;
    u_xlat36 = max(u_xlat36, 0.0);
    u_xlat24 = u_xlat24 * u_xlat24 + 1.0;
    u_xlat24 = float(1.0) / u_xlat24;
    u_xlat1.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlatb1 = u_xlat1.x!=0.0;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat36 = u_xlat36 * u_xlat1.x;
    u_xlat1.x = (-u_xlat37) + _Glossiness;
    u_xlat1.x = u_xlat1.x + 1.0;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat4.xyz = u_xlat12.xxx * u_xlat5.xyz;
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat36);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat12.x = u_xlat0.x * u_xlat0.x;
    u_xlat12.x = u_xlat12.x * u_xlat12.x;
    u_xlat0.x = u_xlat0.x * u_xlat12.x;
    u_xlat6.xyz = (-u_xlat2.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyw = u_xlat6.xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyw = u_xlat0.xyw * u_xlat5.xyz;
    u_xlat0.xyw = u_xlat3.xyz * u_xlat4.xyz + u_xlat0.xyw;
    u_xlat3.xyz = u_xlat7.xyz * vec3(u_xlat24);
    u_xlat1.xyw = (-u_xlat2.xyz) + u_xlat1.xxx;
    u_xlat1.xyz = vec3(u_xlat25) * u_xlat1.xyw + u_xlat2.xyz;
    SV_Target0.xyz = u_xlat3.xyz * u_xlat1.xyz + u_xlat0.xyw;
    SV_Target0.w = 1.0;
    return;
}

