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
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
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
	vec4 _Color2;
};
layout(set = 0, binding = 0) uniform mediump texture2D _Gradient;
layout(set = 0, binding = 1) uniform mediump texture2D _ShadowMapTexture;
layout(set = 0, binding = 2) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 3) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp float vs_TEXCOORD3;
layout(location = 2) in highp vec3 vs_TEXCOORD1;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_ShadowMapTexture;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Gradient;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
bvec3 u_xlatb8;
vec3 u_xlat9;
bvec3 u_xlatb10;
vec3 u_xlat11;
float u_xlat12;
vec3 u_xlat13;
bool u_xlatb13;
float u_xlat22;
float u_xlat23;
vec2 u_xlat24;
float u_xlat33;
float u_xlat34;
bool u_xlatb34;
float u_xlat36;
float u_xlat37;
bool u_xlatb37;
    u_xlat0.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat33 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat1.xyz = vec3(u_xlat33) * u_xlat0.xyz;
    u_xlat34 = vs_TEXCOORD3 + -1.0;
    u_xlat34 = u_xlat34 * -9.99999809;
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlat2.xy = (-vec2(u_xlat34)) + vs_TEXCOORD0.xy;
    u_xlat34 = texture(sampler2D(_Gradient, sampler_Gradient), u_xlat2.xy).x;
    u_xlat2.x = texture(sampler2D(_Gradient, sampler_Gradient), vs_TEXCOORD0.xy).z;
    u_xlat34 = u_xlat34 * -2.0 + 1.0;
    u_xlat34 = (-u_xlat2.x) + u_xlat34;
    u_xlatb34 = u_xlat34<0.0;
    if(((int(u_xlatb34) * int(0xffffffffu)))!=0){discard;}
    u_xlat2.x = unity_MatrixV[0].z;
    u_xlat2.y = unity_MatrixV[1].z;
    u_xlat2.z = unity_MatrixV[2].z;
    u_xlat34 = dot(u_xlat0.xyz, u_xlat2.xyz);
    u_xlat2.xyz = vs_TEXCOORD2.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = (-u_xlat34) + u_xlat2.x;
    u_xlat34 = unity_ShadowFadeCenterAndType.w * u_xlat2.x + u_xlat34;
    u_xlat34 = u_xlat34 * _LightShadowData.z + _LightShadowData.w;
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb13 = unity_ProbeVolumeParams.y==1.0;
        u_xlat3.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat3.xyz;
        u_xlat3.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat3.xyz;
        u_xlat3.xyz = u_xlat3.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat13.xyz = (bool(u_xlatb13)) ? u_xlat3.xyz : vs_TEXCOORD2.xyz;
        u_xlat13.xyz = u_xlat13.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat3.yzw = u_xlat13.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat13.x = u_xlat3.y * 0.25 + 0.75;
        u_xlat24.x = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat3.x = max(u_xlat24.x, u_xlat13.x);
        u_xlat3 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat3.xzw);
    } else {
        u_xlat3.x = float(1.0);
        u_xlat3.y = float(1.0);
        u_xlat3.z = float(1.0);
        u_xlat3.w = float(1.0);
    }
    u_xlat13.x = dot(u_xlat3, unity_OcclusionMaskSelector);
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat24.xy = vs_TEXCOORD6.xy / vs_TEXCOORD6.ww;
    u_xlat24.x = texture(sampler2D(_ShadowMapTexture, sampler_ShadowMapTexture), u_xlat24.xy).x;
    u_xlat13.x = (-u_xlat24.x) + u_xlat13.x;
    u_xlat34 = u_xlat34 * u_xlat13.x + u_xlat24.x;
    u_xlat13.x = (-_Glossiness) + 1.0;
    u_xlat24.x = dot((-u_xlat1.xyz), vs_TEXCOORD1.xyz);
    u_xlat24.x = u_xlat24.x + u_xlat24.x;
    u_xlat3.xyz = vs_TEXCOORD1.xyz * (-u_xlat24.xxx) + (-u_xlat1.xyz);
    u_xlat4.xyz = vec3(u_xlat34) * _LightColor0.xyz;
    if(u_xlatb2){
        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
        u_xlat2.xzw = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat2.xzw = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat2.xzw;
        u_xlat2.xzw = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat2.xzw;
        u_xlat2.xzw = u_xlat2.xzw + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xzw = (bool(u_xlatb34)) ? u_xlat2.xzw : vs_TEXCOORD2.xyz;
        u_xlat2.xzw = u_xlat2.xzw + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat2.xzw * unity_ProbeVolumeSizeInv.xyz;
        u_xlat34 = u_xlat5.y * 0.25;
        u_xlat2.x = unity_ProbeVolumeParams.z * 0.5;
        u_xlat24.x = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat34 = max(u_xlat34, u_xlat2.x);
        u_xlat5.x = min(u_xlat24.x, u_xlat34);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
        u_xlat2.xzw = u_xlat5.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat2.xzw = u_xlat5.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
        u_xlat8.xyz = vs_TEXCOORD1.xyz;
        u_xlat8.w = 1.0;
        u_xlat6.x = dot(u_xlat6, u_xlat8);
        u_xlat6.y = dot(u_xlat7, u_xlat8);
        u_xlat6.z = dot(u_xlat5, u_xlat8);
    } else {
        u_xlat5.xyz = vs_TEXCOORD1.xyz;
        u_xlat5.w = 1.0;
        u_xlat6.x = dot(unity_SHAr, u_xlat5);
        u_xlat6.y = dot(unity_SHAg, u_xlat5);
        u_xlat6.z = dot(unity_SHAb, u_xlat5);
    }
    u_xlat2.xzw = u_xlat6.xyz + vs_TEXCOORD4.xyz;
    u_xlat2.xzw = max(u_xlat2.xzw, vec3(0.0, 0.0, 0.0));
    u_xlatb34 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb34){
        u_xlat34 = dot(u_xlat3.xyz, u_xlat3.xyz);
        u_xlat34 = inversesqrt(u_xlat34);
        u_xlat5.xyz = vec3(u_xlat34) * u_xlat3.xyz;
        u_xlat6.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat6.xyz = u_xlat6.xyz / u_xlat5.xyz;
        u_xlat7.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat7.xyz = u_xlat7.xyz / u_xlat5.xyz;
        u_xlatb8.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat5.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat6;
            hlslcc_movcTemp.x = (u_xlatb8.x) ? u_xlat6.x : u_xlat7.x;
            hlslcc_movcTemp.y = (u_xlatb8.y) ? u_xlat6.y : u_xlat7.y;
            hlslcc_movcTemp.z = (u_xlatb8.z) ? u_xlat6.z : u_xlat7.z;
            u_xlat6 = hlslcc_movcTemp;
        }
        u_xlat34 = min(u_xlat6.y, u_xlat6.x);
        u_xlat34 = min(u_xlat6.z, u_xlat34);
        u_xlat6.xyz = vs_TEXCOORD2.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat34) + u_xlat6.xyz;
    } else {
        u_xlat5.xyz = u_xlat3.xyz;
    }
    u_xlat34 = (-u_xlat13.x) * 0.699999988 + 1.70000005;
    u_xlat34 = u_xlat34 * u_xlat13.x;
    u_xlat34 = u_xlat34 * 6.0;
    u_xlat5 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat5.xyz, u_xlat34);
    u_xlat36 = u_xlat5.w + -1.0;
    u_xlat36 = unity_SpecCube0_HDR.w * u_xlat36 + 1.0;
    u_xlat36 = log2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.y;
    u_xlat36 = exp2(u_xlat36);
    u_xlat36 = u_xlat36 * unity_SpecCube0_HDR.x;
    u_xlat6.xyz = u_xlat5.xyz * vec3(u_xlat36);
    u_xlatb37 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb37){
        u_xlatb37 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb37){
            u_xlat37 = dot(u_xlat3.xyz, u_xlat3.xyz);
            u_xlat37 = inversesqrt(u_xlat37);
            u_xlat7.xyz = u_xlat3.xyz * vec3(u_xlat37);
            u_xlat8.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat8.xyz = u_xlat8.xyz / u_xlat7.xyz;
            u_xlat9.xyz = (-vs_TEXCOORD2.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat9.xyz = u_xlat9.xyz / u_xlat7.xyz;
            u_xlatb10.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat7.xyzx).xyz;
            {
                vec4 hlslcc_movcTemp = u_xlat8;
                hlslcc_movcTemp.x = (u_xlatb10.x) ? u_xlat8.x : u_xlat9.x;
                hlslcc_movcTemp.y = (u_xlatb10.y) ? u_xlat8.y : u_xlat9.y;
                hlslcc_movcTemp.z = (u_xlatb10.z) ? u_xlat8.z : u_xlat9.z;
                u_xlat8 = hlslcc_movcTemp;
            }
            u_xlat37 = min(u_xlat8.y, u_xlat8.x);
            u_xlat37 = min(u_xlat8.z, u_xlat37);
            u_xlat8.xyz = vs_TEXCOORD2.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat3.xyz = u_xlat7.xyz * vec3(u_xlat37) + u_xlat8.xyz;
        }
        u_xlat7 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat3.xyz, u_xlat34);
        u_xlat34 = u_xlat7.w + -1.0;
        u_xlat34 = unity_SpecCube1_HDR.w * u_xlat34 + 1.0;
        u_xlat34 = log2(u_xlat34);
        u_xlat34 = u_xlat34 * unity_SpecCube1_HDR.y;
        u_xlat34 = exp2(u_xlat34);
        u_xlat34 = u_xlat34 * unity_SpecCube1_HDR.x;
        u_xlat3.xyz = u_xlat7.xyz * vec3(u_xlat34);
        u_xlat5.xyz = vec3(u_xlat36) * u_xlat5.xyz + (-u_xlat3.xyz);
        u_xlat6.xyz = unity_SpecCube0_BoxMin.www * u_xlat5.xyz + u_xlat3.xyz;
    }
    u_xlat34 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat34 = inversesqrt(u_xlat34);
    u_xlat3.xyz = vec3(u_xlat34) * vs_TEXCOORD1.xyz;
    u_xlat5.xyz = _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat5.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat5.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat34 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat7.xyz = vec3(u_xlat34) * _Color.xyz;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat33) + _WorldSpaceLightPos0.xyz;
    u_xlat33 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat33 = max(u_xlat33, 0.00100000005);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat0.xyz = vec3(u_xlat33) * u_xlat0.xyz;
    u_xlat33 = dot(u_xlat3.xyz, u_xlat1.xyz);
    u_xlat1.x = dot(u_xlat3.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat12 = dot(u_xlat3.xyz, u_xlat0.xyz);
    u_xlat12 = clamp(u_xlat12, 0.0, 1.0);
    u_xlat0.x = dot(_WorldSpaceLightPos0.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat11.x = u_xlat0.x * u_xlat0.x;
    u_xlat11.x = dot(u_xlat11.xx, u_xlat13.xx);
    u_xlat11.x = u_xlat11.x + -0.5;
    u_xlat22 = (-u_xlat1.x) + 1.0;
    u_xlat23 = u_xlat22 * u_xlat22;
    u_xlat23 = u_xlat23 * u_xlat23;
    u_xlat22 = u_xlat22 * u_xlat23;
    u_xlat22 = u_xlat11.x * u_xlat22 + 1.0;
    u_xlat23 = -abs(u_xlat33) + 1.0;
    u_xlat3.x = u_xlat23 * u_xlat23;
    u_xlat3.x = u_xlat3.x * u_xlat3.x;
    u_xlat23 = u_xlat23 * u_xlat3.x;
    u_xlat11.x = u_xlat11.x * u_xlat23 + 1.0;
    u_xlat11.x = u_xlat11.x * u_xlat22;
    u_xlat22 = u_xlat13.x * u_xlat13.x;
    u_xlat22 = max(u_xlat22, 0.00200000009);
    u_xlat13.x = (-u_xlat22) + 1.0;
    u_xlat3.x = abs(u_xlat33) * u_xlat13.x + u_xlat22;
    u_xlat13.x = u_xlat1.x * u_xlat13.x + u_xlat22;
    u_xlat33 = abs(u_xlat33) * u_xlat13.x;
    u_xlat33 = u_xlat1.x * u_xlat3.x + u_xlat33;
    u_xlat33 = u_xlat33 + 9.99999975e-06;
    u_xlat33 = 0.5 / u_xlat33;
    u_xlat13.x = u_xlat22 * u_xlat22;
    u_xlat3.x = u_xlat12 * u_xlat13.x + (-u_xlat12);
    u_xlat12 = u_xlat3.x * u_xlat12 + 1.0;
    u_xlat13.x = u_xlat13.x * 0.318309873;
    u_xlat12 = u_xlat12 * u_xlat12 + 1.00000001e-07;
    u_xlat12 = u_xlat13.x / u_xlat12;
    u_xlat11.z = u_xlat33 * u_xlat12;
    u_xlat11.xz = u_xlat1.xx * u_xlat11.xz;
    u_xlat33 = u_xlat11.z * 3.14159274;
    u_xlat33 = max(u_xlat33, 0.0);
    u_xlat22 = u_xlat22 * u_xlat22 + 1.0;
    u_xlat22 = float(1.0) / u_xlat22;
    u_xlat1.x = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlatb1 = u_xlat1.x!=0.0;
    u_xlat1.x = u_xlatb1 ? 1.0 : float(0.0);
    u_xlat33 = u_xlat33 * u_xlat1.x;
    u_xlat1.x = (-u_xlat34) + _Glossiness;
    u_xlat1.x = u_xlat1.x + 1.0;
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat2.xyz = u_xlat4.xyz * u_xlat11.xxx + u_xlat2.xzw;
    u_xlat3.xyz = u_xlat4.xyz * vec3(u_xlat33);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat11.x = u_xlat0.x * u_xlat0.x;
    u_xlat11.x = u_xlat11.x * u_xlat11.x;
    u_xlat0.x = u_xlat0.x * u_xlat11.x;
    u_xlat4.xyz = (-u_xlat5.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyw = u_xlat4.xyz * u_xlat0.xxx + u_xlat5.xyz;
    u_xlat0.xyw = u_xlat0.xyw * u_xlat3.xyz;
    u_xlat0.xyw = u_xlat7.xyz * u_xlat2.xyz + u_xlat0.xyw;
    u_xlat2.xyz = u_xlat6.xyz * vec3(u_xlat22);
    u_xlat1.xyw = (-u_xlat5.xyz) + u_xlat1.xxx;
    u_xlat1.xyz = vec3(u_xlat23) * u_xlat1.xyw + u_xlat5.xyz;
    u_xlat0.xyz = u_xlat2.xyz * u_xlat1.xyz + u_xlat0.xyw;
    SV_Target0.xyz = u_xlat0.xyz + _Color2.xyz;
    SV_Target0.w = 1.0;
    return;
}

