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
	vec4 _ProjectionParams;
	vec4 _WorldSpaceLightPos0;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
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
	vec4 _Color;
	float _BumpScale;
	float _GlossMapScale;
	float _OcclusionStrength;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MetallicGlossMap;
layout(set = 0, binding = 2) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 3) uniform mediump texture2D _OcclusionMap;
layout(set = 0, binding = 4) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 5) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 6) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 7) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 8) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 11) uniform mediump  sampler sampler_MetallicGlossMap;
layout(set = 0, binding = 12) uniform mediump  sampler sampler_OcclusionMap;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec4 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
vec3 u_xlat12;
bvec3 u_xlatb12;
vec3 u_xlat13;
bvec3 u_xlatb14;
vec3 u_xlat15;
float u_xlat18;
float u_xlat19;
vec3 u_xlat21;
vec3 u_xlat23;
vec2 u_xlat30;
float u_xlat33;
float u_xlat45;
bool u_xlatb45;
float u_xlat46;
bool u_xlatb46;
float u_xlat47;
float u_xlat48;
bool u_xlatb48;
float u_xlat49;
float u_xlat50;
    u_xlat0.xy = texture(sampler2D(_MetallicGlossMap, sampler_MetallicGlossMap), vs_TEXCOORD0.xy).xw;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat2.xyz = u_xlat1.xyz * _Color.xyz;
    u_xlat1.xyz = _Color.xyz * u_xlat1.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat1.xyz = u_xlat0.xxx * u_xlat1.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat0.x = (-u_xlat0.x) * 0.959999979 + 0.959999979;
    u_xlat2.xyz = u_xlat0.xxx * u_xlat2.xyz;
    u_xlat3.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat3.x = u_xlat3.z * u_xlat3.x;
    u_xlat30.xy = u_xlat3.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat30.xy = u_xlat30.xy * vec2(_BumpScale);
    u_xlat46 = dot(u_xlat30.xy, u_xlat30.xy);
    u_xlat46 = min(u_xlat46, 1.0);
    u_xlat46 = (-u_xlat46) + 1.0;
    u_xlat46 = sqrt(u_xlat46);
    u_xlat3.xyz = u_xlat30.yyy * vs_TEXCOORD3.xyz;
    u_xlat3.xyz = vs_TEXCOORD2.xyz * u_xlat30.xxx + u_xlat3.xyz;
    u_xlat3.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat46) + u_xlat3.xyz;
    u_xlat30.x = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat30.x = inversesqrt(u_xlat30.x);
    u_xlat3.xyz = u_xlat30.xxx * u_xlat3.xyz;
    u_xlat30.x = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat30.x = inversesqrt(u_xlat30.x);
    u_xlat4.xyz = u_xlat30.xxx * vs_TEXCOORD1.xyz;
    u_xlatb45 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb45){
        u_xlatb46 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat21.x = vs_TEXCOORD2.w;
        u_xlat21.y = vs_TEXCOORD3.w;
        u_xlat21.z = vs_TEXCOORD4.w;
        u_xlat5.xyz = (bool(u_xlatb46)) ? u_xlat5.xyz : u_xlat21.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat46 = u_xlat5.y * 0.25 + 0.75;
        u_xlat47 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat46, u_xlat47);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat46 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat47 = texture(sampler2D(_OcclusionMap, sampler_OcclusionMap), vs_TEXCOORD0.xy).y;
    u_xlat49 = (-_OcclusionStrength) + 1.0;
    u_xlat47 = u_xlat47 * _OcclusionStrength + u_xlat49;
    u_xlat49 = (-u_xlat0.y) * _GlossMapScale + 1.0;
    u_xlat5.x = dot(u_xlat4.xyz, u_xlat3.xyz);
    u_xlat5.x = u_xlat5.x + u_xlat5.x;
    u_xlat5.xyz = u_xlat3.xyz * (-u_xlat5.xxx) + u_xlat4.xyz;
    u_xlat6.xyz = vec3(u_xlat46) * _LightColor0.xyz;
    if(u_xlatb45){
        u_xlatb45 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD3.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.www + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.www + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat23.x = vs_TEXCOORD2.w;
        u_xlat23.y = vs_TEXCOORD3.w;
        u_xlat23.z = vs_TEXCOORD4.w;
        u_xlat7.xyz = (bool(u_xlatb45)) ? u_xlat7.xyz : u_xlat23.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat45 = u_xlat7.y * 0.25;
        u_xlat46 = unity_ProbeVolumeParams.z * 0.5;
        u_xlat50 = (-unity_ProbeVolumeParams.z) * 0.5 + 0.25;
        u_xlat45 = max(u_xlat45, u_xlat46);
        u_xlat7.x = min(u_xlat50, u_xlat45);
        u_xlat8 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
        u_xlat9.xyz = u_xlat7.xzw + vec3(0.25, 0.0, 0.0);
        u_xlat9 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat9.xyz);
        u_xlat7.xyz = u_xlat7.xzw + vec3(0.5, 0.0, 0.0);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xyz);
        u_xlat3.w = 1.0;
        u_xlat8.x = dot(u_xlat8, u_xlat3);
        u_xlat8.y = dot(u_xlat9, u_xlat3);
        u_xlat8.z = dot(u_xlat7, u_xlat3);
    } else {
        u_xlat3.w = 1.0;
        u_xlat8.x = dot(unity_SHAr, u_xlat3);
        u_xlat8.y = dot(unity_SHAg, u_xlat3);
        u_xlat8.z = dot(unity_SHAb, u_xlat3);
    }
    u_xlat7.xyz = u_xlat8.xyz + vs_TEXCOORD5.xyz;
    u_xlat7.xyz = max(u_xlat7.xyz, vec3(0.0, 0.0, 0.0));
    u_xlatb45 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb45){
        u_xlat45 = dot(u_xlat5.xyz, u_xlat5.xyz);
        u_xlat45 = inversesqrt(u_xlat45);
        u_xlat8.xyz = vec3(u_xlat45) * u_xlat5.xyz;
        u_xlat9.x = vs_TEXCOORD2.w;
        u_xlat9.y = vs_TEXCOORD3.w;
        u_xlat9.z = vs_TEXCOORD4.w;
        u_xlat10.xyz = (-u_xlat9.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
        u_xlat11.xyz = (-u_xlat9.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat11.xyz = u_xlat11.xyz / u_xlat8.xyz;
        u_xlatb12.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat10;
            hlslcc_movcTemp.x = (u_xlatb12.x) ? u_xlat10.x : u_xlat11.x;
            hlslcc_movcTemp.y = (u_xlatb12.y) ? u_xlat10.y : u_xlat11.y;
            hlslcc_movcTemp.z = (u_xlatb12.z) ? u_xlat10.z : u_xlat11.z;
            u_xlat10 = hlslcc_movcTemp;
        }
        u_xlat45 = min(u_xlat10.y, u_xlat10.x);
        u_xlat45 = min(u_xlat10.z, u_xlat45);
        u_xlat9.xyz = u_xlat9.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat45) + u_xlat9.xyz;
    } else {
        u_xlat8.xyz = u_xlat5.xyz;
    }
    u_xlat45 = (-u_xlat49) * 0.699999988 + 1.70000005;
    u_xlat45 = u_xlat45 * u_xlat49;
    u_xlat45 = u_xlat45 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat45);
    u_xlat46 = u_xlat8.w + -1.0;
    u_xlat46 = unity_SpecCube0_HDR.w * u_xlat46 + 1.0;
    u_xlat46 = log2(u_xlat46);
    u_xlat46 = u_xlat46 * unity_SpecCube0_HDR.y;
    u_xlat46 = exp2(u_xlat46);
    u_xlat46 = u_xlat46 * unity_SpecCube0_HDR.x;
    u_xlat9.xyz = u_xlat8.xyz * vec3(u_xlat46);
    u_xlatb48 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb48){
        u_xlatb48 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb48){
            u_xlat48 = dot(u_xlat5.xyz, u_xlat5.xyz);
            u_xlat48 = inversesqrt(u_xlat48);
            u_xlat10.xyz = vec3(u_xlat48) * u_xlat5.xyz;
            u_xlat11.x = vs_TEXCOORD2.w;
            u_xlat11.y = vs_TEXCOORD3.w;
            u_xlat11.z = vs_TEXCOORD4.w;
            u_xlat12.xyz = (-u_xlat11.xyz) + unity_SpecCube1_BoxMax.xyz;
            u_xlat12.xyz = u_xlat12.xyz / u_xlat10.xyz;
            u_xlat13.xyz = (-u_xlat11.xyz) + unity_SpecCube1_BoxMin.xyz;
            u_xlat13.xyz = u_xlat13.xyz / u_xlat10.xyz;
            u_xlatb14.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat10.xyzx).xyz;
            {
                vec3 hlslcc_movcTemp = u_xlat12;
                hlslcc_movcTemp.x = (u_xlatb14.x) ? u_xlat12.x : u_xlat13.x;
                hlslcc_movcTemp.y = (u_xlatb14.y) ? u_xlat12.y : u_xlat13.y;
                hlslcc_movcTemp.z = (u_xlatb14.z) ? u_xlat12.z : u_xlat13.z;
                u_xlat12 = hlslcc_movcTemp;
            }
            u_xlat48 = min(u_xlat12.y, u_xlat12.x);
            u_xlat48 = min(u_xlat12.z, u_xlat48);
            u_xlat11.xyz = u_xlat11.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat5.xyz = u_xlat10.xyz * vec3(u_xlat48) + u_xlat11.xyz;
        }
        u_xlat5 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat5.xyz, u_xlat45);
        u_xlat45 = u_xlat5.w + -1.0;
        u_xlat45 = unity_SpecCube1_HDR.w * u_xlat45 + 1.0;
        u_xlat45 = log2(u_xlat45);
        u_xlat45 = u_xlat45 * unity_SpecCube1_HDR.y;
        u_xlat45 = exp2(u_xlat45);
        u_xlat45 = u_xlat45 * unity_SpecCube1_HDR.x;
        u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat45);
        u_xlat8.xyz = vec3(u_xlat46) * u_xlat8.xyz + (-u_xlat5.xyz);
        u_xlat9.xyz = unity_SpecCube0_BoxMin.www * u_xlat8.xyz + u_xlat5.xyz;
    }
    u_xlat5.xyz = vec3(u_xlat47) * u_xlat9.xyz;
    u_xlat8.xyz = (-vs_TEXCOORD1.xyz) * u_xlat30.xxx + _WorldSpaceLightPos0.xyz;
    u_xlat30.x = dot(u_xlat8.xyz, u_xlat8.xyz);
    u_xlat30.x = max(u_xlat30.x, 0.00100000005);
    u_xlat30.x = inversesqrt(u_xlat30.x);
    u_xlat8.xyz = u_xlat30.xxx * u_xlat8.xyz;
    u_xlat30.x = dot(u_xlat3.xyz, (-u_xlat4.xyz));
    u_xlat45 = dot(u_xlat3.xyz, _WorldSpaceLightPos0.xyz);
    u_xlat45 = clamp(u_xlat45, 0.0, 1.0);
    u_xlat46 = dot(u_xlat3.xyz, u_xlat8.xyz);
    u_xlat46 = clamp(u_xlat46, 0.0, 1.0);
    u_xlat3.x = dot(_WorldSpaceLightPos0.xyz, u_xlat8.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat18 = u_xlat3.x * u_xlat3.x;
    u_xlat18 = dot(vec2(u_xlat18), vec2(u_xlat49));
    u_xlat18 = u_xlat18 + -0.5;
    u_xlat33 = (-u_xlat45) + 1.0;
    u_xlat48 = u_xlat33 * u_xlat33;
    u_xlat48 = u_xlat48 * u_xlat48;
    u_xlat33 = u_xlat33 * u_xlat48;
    u_xlat33 = u_xlat18 * u_xlat33 + 1.0;
    u_xlat48 = -abs(u_xlat30.x) + 1.0;
    u_xlat4.x = u_xlat48 * u_xlat48;
    u_xlat4.x = u_xlat4.x * u_xlat4.x;
    u_xlat48 = u_xlat48 * u_xlat4.x;
    u_xlat18 = u_xlat18 * u_xlat48 + 1.0;
    u_xlat18 = u_xlat18 * u_xlat33;
    u_xlat18 = u_xlat45 * u_xlat18;
    u_xlat33 = u_xlat49 * u_xlat49;
    u_xlat33 = max(u_xlat33, 0.00200000009);
    u_xlat4.x = (-u_xlat33) + 1.0;
    u_xlat19 = abs(u_xlat30.x) * u_xlat4.x + u_xlat33;
    u_xlat4.x = u_xlat45 * u_xlat4.x + u_xlat33;
    u_xlat30.x = abs(u_xlat30.x) * u_xlat4.x;
    u_xlat30.x = u_xlat45 * u_xlat19 + u_xlat30.x;
    u_xlat30.x = u_xlat30.x + 9.99999975e-06;
    u_xlat30.x = 0.5 / u_xlat30.x;
    u_xlat4.x = u_xlat33 * u_xlat33;
    u_xlat19 = u_xlat46 * u_xlat4.x + (-u_xlat46);
    u_xlat46 = u_xlat19 * u_xlat46 + 1.0;
    u_xlat4.x = u_xlat4.x * 0.318309873;
    u_xlat46 = u_xlat46 * u_xlat46 + 1.00000001e-07;
    u_xlat46 = u_xlat4.x / u_xlat46;
    u_xlat30.x = u_xlat30.x * u_xlat46;
    u_xlat30.x = u_xlat45 * u_xlat30.x;
    u_xlat30.x = u_xlat30.x * 3.14159274;
    u_xlat30.x = max(u_xlat30.x, 0.0);
    u_xlat45 = u_xlat33 * u_xlat33 + 1.0;
    u_xlat45 = float(1.0) / u_xlat45;
    u_xlat46 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlatb46 = u_xlat46!=0.0;
    u_xlat46 = u_xlatb46 ? 1.0 : float(0.0);
    u_xlat30.x = u_xlat30.x * u_xlat46;
    u_xlat0.x = u_xlat0.y * _GlossMapScale + (-u_xlat0.x);
    u_xlat0.x = u_xlat0.x + 1.0;
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat4.xyz = vec3(u_xlat18) * u_xlat6.xyz;
    u_xlat4.xyz = u_xlat7.xyz * vec3(u_xlat47) + u_xlat4.xyz;
    u_xlat6.xyz = u_xlat6.xyz * u_xlat30.xxx;
    u_xlat15.x = (-u_xlat3.x) + 1.0;
    u_xlat30.x = u_xlat15.x * u_xlat15.x;
    u_xlat30.x = u_xlat30.x * u_xlat30.x;
    u_xlat15.x = u_xlat15.x * u_xlat30.x;
    u_xlat3.xyz = (-u_xlat1.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat3.xyz = u_xlat3.xyz * u_xlat15.xxx + u_xlat1.xyz;
    u_xlat3.xyz = u_xlat3.xyz * u_xlat6.xyz;
    u_xlat2.xyz = u_xlat2.xyz * u_xlat4.xyz + u_xlat3.xyz;
    u_xlat15.xyz = u_xlat5.xyz * vec3(u_xlat45);
    u_xlat3.xyz = (-u_xlat1.xyz) + u_xlat0.xxx;
    u_xlat1.xyz = vec3(u_xlat48) * u_xlat3.xyz + u_xlat1.xyz;
    u_xlat0.xyz = u_xlat15.xyz * u_xlat1.xyz + u_xlat2.xyz;
    u_xlat45 = vs_TEXCOORD1.w / _ProjectionParams.y;
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

