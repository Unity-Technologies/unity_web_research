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
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_OcclusionMaskSelector;
	mat4x4 unity_ObjectToWorld;
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
	float _Cutoff;
	float _Cutoff2;
	float _EdgeSizeBot;
	float _EdgeSizeTop;
	vec4 _Color;
	vec4 _EdgeColor1;
	vec4 _EdgeColor2;
	vec4 _bounds;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicSmooth;
layout(set = 0, binding = 2) uniform mediump texture2D _Noise;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 4) uniform mediump texture2D _Normal;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 6) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 7) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec3 vs_TEXCOORD4;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec3 u_xlat8;
vec3 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec3 u_xlat13;
vec3 u_xlat14;
bvec3 u_xlatb14;
vec3 u_xlat15;
bvec3 u_xlatb16;
float u_xlat18;
float u_xlat19;
float u_xlat21;
float u_xlat22;
float u_xlat35;
float u_xlat36;
float u_xlat37;
float u_xlat38;
float u_xlat51;
float u_xlat52;
bool u_xlatb52;
float u_xlat53;
bool u_xlatb53;
float u_xlat54;
bool u_xlatb54;
float u_xlat55;
bool u_xlatb55;
float u_xlat56;
layout(set = 0, binding = 8) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 9) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_Noise;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_Normal;
layout(set = 0, binding = 13) uniform mediump  sampler sampler_MetallicSmooth;
void main()
{
    u_xlat0.x = vs_TEXCOORD1.w;
    u_xlat0.y = vs_TEXCOORD2.w;
    u_xlat0.z = vs_TEXCOORD3.w;
    u_xlat1.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat51 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat51 = inversesqrt(u_xlat51);
    u_xlat2.xyz = vec3(u_xlat51) * u_xlat1.xyz;
    u_xlat3.xy = texture(sampler2D(_MetallicSmooth, sampler_MetallicSmooth), vs_TEXCOORD0.xy).xw;
    u_xlat4 = u_xlat0.zyxy + (-unity_ObjectToWorld[3].zyxy);
    u_xlat5.xyw = u_xlat4.wxz * vec3(6.0, 0.200000003, 0.200000003);
    u_xlat52 = _Cutoff + _Cutoff;
    u_xlat6.x = u_xlat4.w * 2.0 + u_xlat52;
    u_xlat6.z = u_xlat4.y * 4.0 + _Cutoff;
    u_xlat52 = _bounds.y + 0.200000003;
    u_xlat6.yw = u_xlat5.yw;
    u_xlat53 = texture(sampler2D(_Noise, sampler_Noise), u_xlat6.xy).x;
    u_xlat37 = texture(sampler2D(_Noise, sampler_Noise), u_xlat6.zw).x;
    u_xlat53 = dot(vec2(u_xlat53), vec2(u_xlat37));
    u_xlat5.y = 0.0;
    u_xlat37 = texture(sampler2D(_Noise, sampler_Noise), u_xlat5.xy).x;
    u_xlat54 = u_xlat52 * 0.5;
    u_xlat52 = _Cutoff * u_xlat52 + (-u_xlat54);
    u_xlatb54 = u_xlat4.w>=u_xlat52;
    u_xlat4.x = u_xlatb54 ? 1.0 : float(0.0);
    u_xlat21 = u_xlat52 + (-_EdgeSizeBot);
    u_xlat38 = u_xlat52 + (-u_xlat21);
    u_xlat21 = (-u_xlat21) + u_xlat4.w;
    u_xlat38 = float(1.0) / u_xlat38;
    u_xlat21 = u_xlat38 * u_xlat21;
    u_xlat21 = clamp(u_xlat21, 0.0, 1.0);
    u_xlat38 = u_xlat21 * -2.0 + 3.0;
    u_xlat21 = u_xlat21 * u_xlat21;
    u_xlat5.x = u_xlat21 * u_xlat38;
    u_xlat22 = u_xlat52 + _EdgeSizeTop;
    u_xlat52 = u_xlat52 + (-u_xlat22);
    u_xlat55 = u_xlat4.w + (-u_xlat22);
    u_xlat52 = float(1.0) / u_xlat52;
    u_xlat52 = u_xlat52 * u_xlat55;
    u_xlat52 = clamp(u_xlat52, 0.0, 1.0);
    u_xlat55 = u_xlat52 * -2.0 + 3.0;
    u_xlat52 = u_xlat52 * u_xlat52;
    u_xlat52 = u_xlat52 * u_xlat55;
    u_xlat5.xyz = u_xlat5.xxx * _EdgeColor1.xyz;
    u_xlat54 = (u_xlatb54) ? 0.0 : 1.0;
    u_xlat5.xyz = vec3(u_xlat54) * u_xlat5.xyz;
    u_xlat6.xyz = _EdgeColor1.xyz + (-_EdgeColor2.xyz);
    u_xlat6.xyz = vec3(u_xlat52) * u_xlat6.xyz + _EdgeColor2.xyz;
    u_xlat7.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat8.xyz = u_xlat7.xyz * _Color.xyz;
    u_xlat9.xyz = u_xlat5.xyz * vec3(0.5, 0.5, 0.5);
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat37) + u_xlat9.xyz;
    u_xlat5.xyz = u_xlat6.xyz * u_xlat4.xxx + u_xlat5.xyz;
    u_xlat6.xyz = texture(sampler2D(_Normal, sampler_Normal), vs_TEXCOORD0.xy).xyw;
    u_xlat6.x = u_xlat6.z * u_xlat6.x;
    u_xlat6.xy = u_xlat6.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat37 = dot(u_xlat6.xy, u_xlat6.xy);
    u_xlat37 = min(u_xlat37, 1.0);
    u_xlat37 = (-u_xlat37) + 1.0;
    u_xlat6.z = sqrt(u_xlat37);
    u_xlat3.xy = u_xlat3.xy * vec2(_Metallic, _Glossiness);
    u_xlat37 = (-u_xlat38) * u_xlat21 + 1.0;
    u_xlat3.x = u_xlat37 * u_xlat3.x;
    u_xlat52 = u_xlat53 * u_xlat52 + u_xlat54;
    u_xlat52 = u_xlat52 + (-_Cutoff);
    u_xlat52 = u_xlat52 + (-_Cutoff2);
    u_xlatb52 = u_xlat52<0.0;
    if(((int(u_xlatb52) * int(0xffffffffu)))!=0){discard;}
    u_xlatb52 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb52){
        u_xlatb53 = unity_ProbeVolumeParams.y==1.0;
        u_xlat4.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat4.xyz;
        u_xlat4.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat4.xyz;
        u_xlat4.xyz = u_xlat4.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat4.xyz = (bool(u_xlatb53)) ? u_xlat4.xyz : u_xlat0.xyz;
        u_xlat4.xyz = u_xlat4.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat4.yzw = u_xlat4.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat53 = u_xlat4.y * 0.25 + 0.75;
        u_xlat54 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat4.x = max(u_xlat53, u_xlat54);
        u_xlat4 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat4.xzw);
    } else {
        u_xlat4.x = float(1.0);
        u_xlat4.y = float(1.0);
        u_xlat4.z = float(1.0);
        u_xlat4.w = float(1.0);
    }
    u_xlat53 = dot(u_xlat4, unity_OcclusionMaskSelector);
    u_xlat53 = clamp(u_xlat53, 0.0, 1.0);
    u_xlat4.x = dot(vs_TEXCOORD1.xyz, u_xlat6.xyz);
    u_xlat4.y = dot(vs_TEXCOORD2.xyz, u_xlat6.xyz);
    u_xlat4.z = dot(vs_TEXCOORD3.xyz, u_xlat6.xyz);
    u_xlat54 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat54 = inversesqrt(u_xlat54);
    u_xlat4.xyz = vec3(u_xlat54) * u_xlat4.xyz;
    u_xlat54 = (-u_xlat3.y) * u_xlat37 + 1.0;
    u_xlat56 = dot((-u_xlat2.xyz), u_xlat4.xyz);
    u_xlat56 = u_xlat56 + u_xlat56;
    u_xlat6.xyz = u_xlat4.xyz * (-vec3(u_xlat56)) + (-u_xlat2.xyz);
    u_xlat9.xyz = vec3(u_xlat53) * _LightColor0.xyz;
    if(u_xlatb52){
        u_xlatb52 = unity_ProbeVolumeParams.y==1.0;
        u_xlat10.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat10.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat10.xyz;
        u_xlat10.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat10.xyz;
        u_xlat10.xyz = u_xlat10.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat10.xyz = (bool(u_xlatb52)) ? u_xlat10.xyz : u_xlat0.xyz;
        u_xlat10.xyz = u_xlat10.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat10.yzw = u_xlat10.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat52 = u_xlat10.y * 0.25;
        u_xlat53 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat56 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat52 = max(u_xlat52, u_xlat53);
        u_xlat10.x = min(u_xlat56, u_xlat52);
        u_xlat11 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat10.xzw);
        u_xlat12.xyz = u_xlat10.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat12 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat12.xyz);
        u_xlat10.xyz = u_xlat10.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat10 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat10.xyz);
        u_xlat4.w = 1.0;
        u_xlat11.x = dot(u_xlat11, u_xlat4);
        u_xlat11.y = dot(u_xlat12, u_xlat4);
        u_xlat11.z = dot(u_xlat10, u_xlat4);
    } else {
        u_xlat4.w = 1.0;
        u_xlat11.x = dot(unity_SHAr, u_xlat4);
        u_xlat11.y = dot(unity_SHAg, u_xlat4);
        u_xlat11.z = dot(unity_SHAb, u_xlat4);
    }
    u_xlat10.xyz = u_xlat11.xyz + vs_TEXCOORD4.xyz;
    u_xlat10.xyz = max(u_xlat10.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb52 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb52){
        u_xlat52 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat52 = inversesqrt(u_xlat52);
        u_xlat11.xyz = vec3(u_xlat52) * u_xlat6.xyz;
        u_xlat12.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat12.xyz = u_xlat12.xyz / u_xlat11.xyz;
        u_xlat13.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat13.xyz = u_xlat13.xyz / u_xlat11.xyz;
        u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat11.xyzx).xyz;
        {
            vec4 hlslcc_movcTemp = u_xlat12;
            hlslcc_movcTemp.x = (u_xlatb14.x) ? u_xlat12.x : u_xlat13.x;
            hlslcc_movcTemp.y = (u_xlatb14.y) ? u_xlat12.y : u_xlat13.y;
            hlslcc_movcTemp.z = (u_xlatb14.z) ? u_xlat12.z : u_xlat13.z;
            u_xlat12 = hlslcc_movcTemp;
        }
        u_xlat52 = min(u_xlat12.y, u_xlat12.x);
        u_xlat52 = min(u_xlat12.z, u_xlat52);
        u_xlat12.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat11.xyz = u_xlat11.xyz * vec3(u_xlat52) + u_xlat12.xyz;
    } else {
        u_xlat11.xyz = u_xlat6.xyz;
    }
    u_xlat52 = (-u_xlat54) * 0.699999988 + 1.70000005;
    u_xlat52 = u_xlat52 * u_xlat54;
    u_xlat52 = u_xlat52 * 6.0;
    u_xlat11 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat11.xyz, u_xlat52);
    u_xlat53 = u_xlat11.w + -1.0;
    u_xlat53 = unity_SpecCube0_HDR.w * u_xlat53 + 1.0;
    u_xlat53 = log2(u_xlat53);
    u_xlat53 = u_xlat53 * unity_SpecCube0_HDR.y;
    u_xlat53 = exp2(u_xlat53);
    u_xlat53 = u_xlat53 * unity_SpecCube0_HDR.x;
    u_xlat12.xyz = u_xlat11.xyz * vec3(u_xlat53);
    u_xlatb55 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb55){
        u_xlatb55 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb55){
            u_xlat55 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat55 = inversesqrt(u_xlat55);
            u_xlat13.xyz = vec3(u_xlat55) * u_xlat6.xyz;
            u_xlat14.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat14.xyz = u_xlat14.xyz / u_xlat13.xyz;
            u_xlat15.xyz = (-u_xlat0.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat15.xyz = u_xlat15.xyz / u_xlat13.xyz;
            u_xlatb16.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat13.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat14;
                hlslcc_movcTemp.x = (u_xlatb16.x) ? u_xlat14.x : u_xlat15.x;
                hlslcc_movcTemp.y = (u_xlatb16.y) ? u_xlat14.y : u_xlat15.y;
                hlslcc_movcTemp.z = (u_xlatb16.z) ? u_xlat14.z : u_xlat15.z;
                u_xlat14 = hlslcc_movcTemp;
            }
            u_xlat55 = min(u_xlat14.y, u_xlat14.x);
            u_xlat55 = min(u_xlat14.z, u_xlat55);
            u_xlat0.xyz = u_xlat0.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat6.xyz = u_xlat13.xyz * vec3(u_xlat55) + u_xlat0.xyz;
        }
        u_xlat6 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat52);
        u_xlat0.x = u_xlat6.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat0.xyz = u_xlat6.xyz * u_xlat0.xxx;
        u_xlat6.xyz = vec3(u_xlat53) * u_xlat11.xyz + (-u_xlat0.xyz);
        u_xlat12.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat0.xyz;
    }
    u_xlat0.xyz = u_xlat7.xyz * _Color.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat3.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat52 = (-u_xlat3.x) * 0.959999979 + 0.959999979;
    u_xlat6.xyz = vec3(u_xlat52) * u_xlat8.xyz;
    u_xlat1.xyz = u_xlat1.xyz * vec3(u_xlat51) + _WorldSpaceLightPos0.xyz;
    u_xlat51 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat51 = max(u_xlat51, 0.00100000005);
    u_xlat51 = inversesqrt(u_xlat51);
    u_xlat1.xyz = vec3(u_xlat51) * u_xlat1.xyz;
    u_xlat51 = dot(u_xlat4.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat4.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat19 = dot(u_xlat4.xyz, u_xlat1.xyz);
    u_xlat19 = clamp(u_xlat19, 0.0, 1.0);
    u_xlat1.x = dot(_WorldSpaceLightPos0.xyz, u_xlat1.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat18 = u_xlat1.x * u_xlat1.x;
    u_xlat18 = dot(vec2(u_xlat18), vec2(u_xlat54));
    u_xlat18 = u_xlat18 + -0.5;
    u_xlat35 = (-u_xlat2.x) + 1.0;
    u_xlat36 = u_xlat35 * u_xlat35;
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat35 = u_xlat35 * u_xlat36;
    u_xlat35 = u_xlat18 * u_xlat35 + 1.0;
    u_xlat36 = -abs(u_xlat51) + 1.0;
    u_xlat53 = u_xlat36 * u_xlat36;
    u_xlat53 = u_xlat53 * u_xlat53;
    u_xlat36 = u_xlat36 * u_xlat53;
    u_xlat18 = u_xlat18 * u_xlat36 + 1.0;
    u_xlat18 = u_xlat18 * u_xlat35;
    u_xlat18 = u_xlat2.x * u_xlat18;
    u_xlat35 = u_xlat54 * u_xlat54;
    u_xlat35 = max(u_xlat35, 0.00200000009);
    u_xlat53 = (-u_xlat35) + 1.0;
    u_xlat3.x = abs(u_xlat51) * u_xlat53 + u_xlat35;
    u_xlat53 = u_xlat2.x * u_xlat53 + u_xlat35;
    u_xlat51 = abs(u_xlat51) * u_xlat53;
    u_xlat51 = u_xlat2.x * u_xlat3.x + u_xlat51;
    u_xlat51 = u_xlat51 + 9.99999975e-06;
    u_xlat51 = 0.5 / u_xlat51;
    u_xlat53 = u_xlat35 * u_xlat35;
    u_xlat3.x = u_xlat19 * u_xlat53 + (-u_xlat19);
    u_xlat19 = u_xlat3.x * u_xlat19 + 1.0;
    u_xlat53 = u_xlat53 * 0.318309873;
    u_xlat19 = u_xlat19 * u_xlat19 + 1.00000001e-07;
    u_xlat19 = u_xlat53 / u_xlat19;
    u_xlat51 = u_xlat51 * u_xlat19;
    u_xlat51 = u_xlat2.x * u_xlat51;
    u_xlat51 = u_xlat51 * 3.14159274;
    u_xlat51 = max(u_xlat51, 0.0);
    u_xlat35 = u_xlat35 * u_xlat35 + 1.0;
    u_xlat35 = float(1.0) / u_xlat35;
    u_xlat2.x = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb2 = u_xlat2.x!=0.0;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat51 = u_xlat51 * u_xlat2.x;
    u_xlat52 = u_xlat3.y * u_xlat37 + (-u_xlat52);
    u_xlat52 = u_xlat52 + 1.0;
    u_xlat52 = clamp(u_xlat52, 0.0, 1.0);
    u_xlat2.xyw = u_xlat9.xyz * vec3(u_xlat18) + u_xlat10.xyz;
    u_xlat3.xyz = u_xlat9.xyz * vec3(u_xlat51);
    u_xlat51 = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat51 * u_xlat51;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat51 = u_xlat51 * u_xlat1.x;
    u_xlat4.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat51) + u_xlat0.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat4.xyz;
    u_xlat2.xyw = u_xlat6.xyz * u_xlat2.xyw + u_xlat3.xyz;
    u_xlat1.xyz = u_xlat12.xyz * vec3(u_xlat35);
    u_xlat3.xyz = (-u_xlat0.xyz) + vec3(u_xlat52);
    u_xlat0.xyz = vec3(u_xlat36) * u_xlat3.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + u_xlat2.xyw;
    SV_Target0.xyz = u_xlat5.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

