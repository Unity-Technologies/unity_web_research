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
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
	vec4 _Color2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Gradient;
layout(set = 0, binding = 1) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 2) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 3) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD3;
layout(location = 2) in highp float vs_TEXCOORD5;
layout(location = 3) in highp vec3 vs_TEXCOORD1;
layout(location = 4) in highp vec3 vs_TEXCOORD2;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 5) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_Gradient;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
bvec3 u_xlatb7;
vec3 u_xlat8;
bvec3 u_xlatb9;
vec3 u_xlat10;
float u_xlat11;
vec3 u_xlat12;
float u_xlat20;
float u_xlat21;
float u_xlat30;
float u_xlat31;
bool u_xlatb31;
float u_xlat33;
float u_xlat34;
bool u_xlatb34;
    u_xlat0.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat1.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat31 = vs_TEXCOORD3 + -1.0;
    u_xlat31 = u_xlat31 * -9.99999809;
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat2.xy = (-vec2(u_xlat31)) + vs_TEXCOORD0.xy;
    u_xlat31 = texture(sampler2D(_Gradient, sampler_Gradient), u_xlat2.xy).x;
    u_xlat2.x = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD0.xy).z;
    u_xlat31 = u_xlat31 * -2.0 + 1.0;
    u_xlat31 = (-u_xlat2.x) + u_xlat31;
    u_xlatb31 = u_xlat31<0.0;
    if(((int(u_xlatb31) * int(0xffffffffu)))!=0){discard;}
    u_xlatb31 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb31){
        u_xlatb31 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xyz;
        u_xlat2.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb31)) ? u_xlat2.xyz : vs_TEXCOORD2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat31 = u_xlat2.y * 0.25 + 0.75;
        u_xlat12.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat31, u_xlat12.x);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat31 = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat31 = clamp(u_xlat31, 0.0, 1.0);
    u_xlat2.x = (-_Glossiness) + 1.0;
    u_xlat12.x = dot((-u_xlat1.xyz), vs_TEXCOORD1.xyz);
    u_xlat12.x = u_xlat12.x + u_xlat12.x;
    u_xlat12.xyz = vs_TEXCOORD1.xyz * (-u_xlat12.xxx) + (-u_xlat1.xyz);
    u_xlat3.xyz = vec3(u_xlat31) * _LightColor0.xyz;
    u_xlatb31 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb31){
        u_xlat31 = dot(u_xlat12.xyz, u_xlat12.xyz);
        u_xlat31 = inversesqrt(u_xlat31);
        u_xlat4.xyz = vec3(u_xlat31) * u_xlat12.xyz;
        u_xlat5.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat5.xyz = u_xlat5.xyz / u_xlat4.xyz;
        u_xlat6.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat6.xyz = u_xlat6.xyz / u_xlat4.xyz;
        u_xlatb7.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat4.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat5;
            hlslcc_movcTemp.x = (u_xlatb7.x) ? u_xlat5.x : u_xlat6.x;
            hlslcc_movcTemp.y = (u_xlatb7.y) ? u_xlat5.y : u_xlat6.y;
            hlslcc_movcTemp.z = (u_xlatb7.z) ? u_xlat5.z : u_xlat6.z;
            u_xlat5 = hlslcc_movcTemp;
        }
        u_xlat31 = min(u_xlat5.y, u_xlat5.x);
        u_xlat31 = min(u_xlat5.z, u_xlat31);
        u_xlat5.xyz = vs_TEXCOORD2.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat31) + u_xlat5.xyz;
    } else {
        u_xlat4.xyz = u_xlat12.xyz;
    }
    u_xlat31 = (-u_xlat2.x) * 0.699999988 + 1.70000005;
    u_xlat31 = u_xlat31 * u_xlat2.x;
    u_xlat31 = u_xlat31 * 6.0;
    u_xlat4 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat4.xyz, u_xlat31);
    u_xlat33 = u_xlat4.w + -1.0;
    u_xlat33 = unity_SpecCube0_HDR.w * u_xlat33 + 1.0;
    u_xlat33 = log2(u_xlat33);
    u_xlat33 = u_xlat33 * unity_SpecCube0_HDR.y;
    u_xlat33 = exp2(u_xlat33);
    u_xlat33 = u_xlat33 * unity_SpecCube0_HDR.x;
    u_xlat5.xyz = u_xlat4.xyz * vec3(u_xlat33);
    u_xlatb34 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb34){
        u_xlatb34 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb34){
            u_xlat34 = dot(u_xlat12.xyz, u_xlat12.xyz);
            u_xlat34 = inversesqrt(u_xlat34);
            u_xlat6.xyz = u_xlat12.xyz * vec3(u_xlat34);
            u_xlat7.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat7.xyz = u_xlat7.xyz / u_xlat6.xyz;
            u_xlat8.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat8.xyz = u_xlat8.xyz / u_xlat6.xyz;
            u_xlatb9.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat6.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat7;
                hlslcc_movcTemp.x = (u_xlatb9.x) ? u_xlat7.x : u_xlat8.x;
                hlslcc_movcTemp.y = (u_xlatb9.y) ? u_xlat7.y : u_xlat8.y;
                hlslcc_movcTemp.z = (u_xlatb9.z) ? u_xlat7.z : u_xlat8.z;
                u_xlat7 = hlslcc_movcTemp;
            }
            u_xlat34 = min(u_xlat7.y, u_xlat7.x);
            u_xlat34 = min(u_xlat7.z, u_xlat34);
            u_xlat7.xyz = vs_TEXCOORD2.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat12.xyz = u_xlat6.xyz * vec3(u_xlat34) + u_xlat7.xyz;
        }
        u_xlat6 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat12.xyz, u_xlat31);
        u_xlat31 = u_xlat6.w + -1.0;
        u_xlat31 = unity_SpecCube1_HDR.w * u_xlat31 + 1.0;
        u_xlat31 = log2(u_xlat31);
        u_xlat31 = u_xlat31 * unity_SpecCube1_HDR.y;
        u_xlat31 = exp2(u_xlat31);
        u_xlat31 = u_xlat31 * unity_SpecCube1_HDR.x;
        u_xlat12.xyz = u_xlat6.xyz * vec3(u_xlat31);
        u_xlat4.xyz = vec3(u_xlat33) * u_xlat4.xyz + (-u_xlat12.xyz);
        u_xlat5.xyz = unity_SpecCube0_BoxMin.www * u_xlat4.xyz + u_xlat12.xyz;
    }
    u_xlat31 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat31 = inversesqrt(u_xlat31);
    u_xlat12.xyz = vec3(u_xlat31) * vs_TEXCOORD1.xyz;
    u_xlat4.xyz = _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat31 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat6.xyz = vec3(u_xlat31) * _Color.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat30) + _WorldSpaceLightPos0.xyz;
    u_xlat30 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat30 = max(u_xlat30, 0.00100000005);
    u_xlat30 = inversesqrt(u_xlat30);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat0.xyz;
    u_xlat30 = dot(u_xlat12.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat12.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat11 = dot(u_xlat12.xyz, u_xlat0.xyz);
    u_xlat11 = clamp(u_xlat11, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat10.x = u_xlat0.x * u_xlat0.x;
    u_xlat10.x = dot(u_xlat10.xx, u_xlat2.xx);
    u_xlat10.x = u_xlat10.x + -0.5;
    u_xlat20 = (-u_xlat1.x) + 1.0;
    u_xlat21 = u_xlat20 * u_xlat20;
    u_xlat21 = u_xlat21 * u_xlat21;
    u_xlat20 = u_xlat20 * u_xlat21;
    u_xlat20 = u_xlat10.x * u_xlat20 + 1.0;
    u_xlat21 = -abs(u_xlat30) + 1.0;
    u_xlat12.x = u_xlat21 * u_xlat21;
    u_xlat12.x = u_xlat12.x * u_xlat12.x;
    u_xlat21 = u_xlat21 * u_xlat12.x;
    u_xlat10.x = u_xlat10.x * u_xlat21 + 1.0;
    u_xlat10.x = u_xlat10.x * u_xlat20;
    u_xlat20 = u_xlat2.x * u_xlat2.x;
    u_xlat20 = max(u_xlat20, 0.00200000009);
    u_xlat2.x = (-u_xlat20) + 1.0;
    u_xlat12.x = abs(u_xlat30) * u_xlat2.x + u_xlat20;
    u_xlat2.x = u_xlat1.x * u_xlat2.x + u_xlat20;
    u_xlat30 = abs(u_xlat30) * u_xlat2.x;
    u_xlat30 = u_xlat1.x * u_xlat12.x + u_xlat30;
    u_xlat30 = u_xlat30 + 9.99999975e-06;
    u_xlat30 = 0.5 / u_xlat30;
    u_xlat2.x = u_xlat20 * u_xlat20;
    u_xlat12.x = u_xlat11 * u_xlat2.x + (-u_xlat11);
    u_xlat11 = u_xlat12.x * u_xlat11 + 1.0;
    u_xlat2.x = u_xlat2.x * 0.318309873;
    u_xlat11 = u_xlat11 * u_xlat11 + 1.00000001e-07;
    u_xlat11 = u_xlat2.x / u_xlat11;
    u_xlat10.z = u_xlat30 * u_xlat11;
    u_xlat10.xz = u_xlat1.xx * u_xlat10.xz;
    u_xlat30 = u_xlat10.z * 3.14159274;
    u_xlat30 = max(u_xlat30, 0.0);
    u_xlat20 = u_xlat20 * u_xlat20 + 1.0;
    u_xlat20 = float(1.0) / u_xlat20;
    u_xlat1.x = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb1 = u_xlat1.x!=0.0;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat30 = u_xlat30 * u_xlat1.x;
    u_xlat1.x = (-u_xlat31) + _Glossiness;
    u_xlat1.x = u_xlat1.x + 1.0;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat2.xyz = u_xlat10.xxx * u_xlat3.xyz;
    u_xlat3.xyz = u_xlat3.xyz * vec3(u_xlat30);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat10.x = u_xlat0.x * u_xlat0.x;
    u_xlat10.x = u_xlat10.x * u_xlat10.x;
    u_xlat0.x = u_xlat0.x * u_xlat10.x;
    u_xlat7.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyw = u_xlat7.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat0.xyw = u_xlat0.xyw * u_xlat3.xyz;
    u_xlat0.xyw = u_xlat6.xyz * u_xlat2.xyz + u_xlat0.xyw;
    u_xlat2.xyz = u_xlat5.xyz * vec3(u_xlat20);
    u_xlat1.xyw = (-u_xlat4.xyz) + u_xlat1.xxx;
    u_xlat1.xyz = vec3(u_xlat21) * u_xlat1.xyw + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat1.xyz + u_xlat0.xyw;
    u_xlat0.xyz = u_xlat0.xyz + _Color2.xyz;
    u_xlat30 = vs_TEXCOORD5 / _ProjectionParams.y;
    u_xlat30 = (-u_xlat30) + 1.0;
    u_xlat30 = u_xlat30 * _ProjectionParams.z;
    u_xlat30 = max(u_xlat30, 0.0);
    u_xlat30 = u_xlat30 * unity_FogParams.x;
    u_xlat30 = u_xlat30 * (-u_xlat30);
    u_xlat30 = exp2(u_xlat30);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat30) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

