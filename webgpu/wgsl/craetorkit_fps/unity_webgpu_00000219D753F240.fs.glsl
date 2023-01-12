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
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
	vec4 _AmbientColor;
	float _NormalSacle;
	float _MovementSpeed;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Normal;
layout(set = 0, binding = 2) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 3) uniform mediump textureCube unity_SpecCube1;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_COLOR0;
layout(location = 5) in highp float vs_TEXCOORD6;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 5) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_Normal;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec3 u_xlat7;
vec4 u_xlat8;
vec3 u_xlat9;
vec3 u_xlat10;
vec3 u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat12;
bvec3 u_xlatb13;
float u_xlat15;
float u_xlat16;
float u_xlat29;
float u_xlat30;
float u_xlat42;
float u_xlat43;
bool u_xlatb43;
float u_xlat44;
float u_xlat45;
float u_xlat46;
bool u_xlatb46;
    u_xlat0.x = vs_TEXCOORD1.w;
    u_xlat0.y = vs_TEXCOORD2.w;
    u_xlat0.z = vs_TEXCOORD3.w;
    u_xlat1.xyz = (-u_xlat0.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat42 = dot(u_xlat1.xyz, u_xlat1.xyz);
    u_xlat42 = inversesqrt(u_xlat42);
    u_xlat2.xyz = vec3(u_xlat42) * u_xlat1.xyz;
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat3.xyz = u_xlat3.xyz * _Color.xyz;
    u_xlat4.xyz = u_xlat3.xyz * vs_COLOR0.xyz;
    u_xlat5.x = _Time.x * _MovementSpeed + vs_TEXCOORD0.z;
    u_xlat5.y = (-_Time.x) * _MovementSpeed + vs_TEXCOORD0.w;
    u_xlat5.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat5.xy).xyw;
    u_xlat5.x = u_xlat5.z * u_xlat5.x;
    u_xlat5.xy = u_xlat5.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat5.xy = u_xlat5.xy * vec2(_NormalSacle);
    u_xlat43 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat43 = min(u_xlat43, 1.0);
    u_xlat43 = (-u_xlat43) + 1.0;
    u_xlat5.z = sqrt(u_xlat43);
    u_xlat43 = (-vs_COLOR0.w) + 1.0;
    u_xlat43 = u_xlat3.w * _Color.w + (-u_xlat43);
    u_xlatb43 = u_xlat43<0.0;
    if(((int(u_xlatb43) * int(0xffffffffu)))!=0){discard;}
    u_xlatb43 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb43){
        u_xlatb43 = unity_ProbeVolumeParams.y==1.0;
        u_xlat6.xyz = vs_TEXCOORD2.www * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD1.www + u_xlat6.xyz;
        u_xlat6.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD3.www + u_xlat6.xyz;
        u_xlat6.xyz = u_xlat6.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat6.xyz = (bool(u_xlatb43)) ? u_xlat6.xyz : u_xlat0.xyz;
        u_xlat6.xyz = u_xlat6.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat6.yzw = u_xlat6.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat43 = u_xlat6.y * 0.25 + 0.75;
        u_xlat44 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat6.x = max(u_xlat43, u_xlat44);
        u_xlat6 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat6.xzw);
    } else {
        u_xlat6.x = float(1.0);
        u_xlat6.y = float(1.0);
        u_xlat6.z = float(1.0);
        u_xlat6.w = float(1.0);
    }
    u_xlat43 = dot(u_xlat6, unity_OcclusionMaskSelector);
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat6.x = dot(vs_TEXCOORD1.xyz, u_xlat5.xyz);
    u_xlat6.y = dot(vs_TEXCOORD2.xyz, u_xlat5.xyz);
    u_xlat6.z = dot(vs_TEXCOORD3.xyz, u_xlat5.xyz);
    u_xlat44 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat44 = inversesqrt(u_xlat44);
    u_xlat5.xyz = vec3(u_xlat44) * u_xlat6.xyz;
    u_xlat44 = (-_Glossiness) + 1.0;
    u_xlat45 = dot((-u_xlat2.xyz), u_xlat5.xyz);
    u_xlat45 = u_xlat45 + u_xlat45;
    u_xlat6.xyz = u_xlat5.xyz * (-vec3(u_xlat45)) + (-u_xlat2.xyz);
    u_xlat7.xyz = vec3(u_xlat43) * _LightColor0.xyz;
    u_xlatb43 = 0.0<unity_SpecCube0_ProbePosition.w;
    if(u_xlatb43){
        u_xlat43 = dot(u_xlat6.xyz, u_xlat6.xyz);
        u_xlat43 = inversesqrt(u_xlat43);
        u_xlat8.xyz = vec3(u_xlat43) * u_xlat6.xyz;
        u_xlat9.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMax.xyz;
        u_xlat9.xyz = u_xlat9.xyz / u_xlat8.xyz;
        u_xlat10.xyz = (-u_xlat0.xyz) + unity_SpecCube0_BoxMin.xyz;
        u_xlat10.xyz = u_xlat10.xyz / u_xlat8.xyz;
        u_xlatb11.xyz = lessThan(vec4(0.0, 0.0, 0.0, 0.0), u_xlat8.xyzx).xyz;
        {
            vec3 hlslcc_movcTemp = u_xlat9;
            hlslcc_movcTemp.x = (u_xlatb11.x) ? u_xlat9.x : u_xlat10.x;
            hlslcc_movcTemp.y = (u_xlatb11.y) ? u_xlat9.y : u_xlat10.y;
            hlslcc_movcTemp.z = (u_xlatb11.z) ? u_xlat9.z : u_xlat10.z;
            u_xlat9 = hlslcc_movcTemp;
        }
        u_xlat43 = min(u_xlat9.y, u_xlat9.x);
        u_xlat43 = min(u_xlat9.z, u_xlat43);
        u_xlat9.xyz = u_xlat0.xyz + (-unity_SpecCube0_ProbePosition.xyz);
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat43) + u_xlat9.xyz;
    } else {
        u_xlat8.xyz = u_xlat6.xyz;
    }
    u_xlat43 = (-u_xlat44) * 0.699999988 + 1.70000005;
    u_xlat43 = u_xlat43 * u_xlat44;
    u_xlat43 = u_xlat43 * 6.0;
    u_xlat8 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat8.xyz, u_xlat43);
    u_xlat45 = u_xlat8.w + -1.0;
    u_xlat45 = unity_SpecCube0_HDR.w * u_xlat45 + 1.0;
    u_xlat45 = log2(u_xlat45);
    u_xlat45 = u_xlat45 * unity_SpecCube0_HDR.y;
    u_xlat45 = exp2(u_xlat45);
    u_xlat45 = u_xlat45 * unity_SpecCube0_HDR.x;
    u_xlat9.xyz = u_xlat8.xyz * vec3(u_xlat45);
    u_xlatb46 = unity_SpecCube0_BoxMin.w<0.999989986;
    if(u_xlatb46){
        u_xlatb46 = 0.0<unity_SpecCube1_ProbePosition.w;
        if(u_xlatb46){
            u_xlat46 = dot(u_xlat6.xyz, u_xlat6.xyz);
            u_xlat46 = inversesqrt(u_xlat46);
            u_xlat10.xyz = vec3(u_xlat46) * u_xlat6.xyz;
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
            u_xlat46 = min(u_xlat11.y, u_xlat11.x);
            u_xlat46 = min(u_xlat11.z, u_xlat46);
            u_xlat0.xyz = u_xlat0.xyz + (-unity_SpecCube1_ProbePosition.xyz);
            u_xlat6.xyz = u_xlat10.xyz * vec3(u_xlat46) + u_xlat0.xyz;
        }
        u_xlat6 = textureLod(samplerCube(unity_SpecCube1, samplerunity_SpecCube0), u_xlat6.xyz, u_xlat43);
        u_xlat0.x = u_xlat6.w + -1.0;
        u_xlat0.x = unity_SpecCube1_HDR.w * u_xlat0.x + 1.0;
        u_xlat0.x = log2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.y;
        u_xlat0.x = exp2(u_xlat0.x);
        u_xlat0.x = u_xlat0.x * unity_SpecCube1_HDR.x;
        u_xlat0.xyz = u_xlat6.xyz * u_xlat0.xxx;
        u_xlat6.xyz = vec3(u_xlat45) * u_xlat8.xyz + (-u_xlat0.xyz);
        u_xlat9.xyz = unity_SpecCube0_BoxMin.www * u_xlat6.xyz + u_xlat0.xyz;
    }
    u_xlat0.xyz = u_xlat3.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat43 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat3.xyz = vec3(u_xlat43) * u_xlat4.xyz;
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
    u_xlat15 = dot(vec2(u_xlat15), vec2(u_xlat44));
    u_xlat15 = u_xlat15 + -0.5;
    u_xlat29 = (-u_xlat2.x) + 1.0;
    u_xlat30 = u_xlat29 * u_xlat29;
    u_xlat30 = u_xlat30 * u_xlat30;
    u_xlat29 = u_xlat29 * u_xlat30;
    u_xlat29 = u_xlat15 * u_xlat29 + 1.0;
    u_xlat30 = -abs(u_xlat42) + 1.0;
    u_xlat45 = u_xlat30 * u_xlat30;
    u_xlat45 = u_xlat45 * u_xlat45;
    u_xlat30 = u_xlat30 * u_xlat45;
    u_xlat15 = u_xlat15 * u_xlat30 + 1.0;
    u_xlat15 = u_xlat15 * u_xlat29;
    u_xlat15 = u_xlat2.x * u_xlat15;
    u_xlat29 = u_xlat44 * u_xlat44;
    u_xlat29 = max(u_xlat29, 0.00200000009);
    u_xlat44 = (-u_xlat29) + 1.0;
    u_xlat45 = abs(u_xlat42) * u_xlat44 + u_xlat29;
    u_xlat44 = u_xlat2.x * u_xlat44 + u_xlat29;
    u_xlat42 = abs(u_xlat42) * u_xlat44;
    u_xlat42 = u_xlat2.x * u_xlat45 + u_xlat42;
    u_xlat42 = u_xlat42 + 9.99999975e-06;
    u_xlat42 = 0.5 / u_xlat42;
    u_xlat44 = u_xlat29 * u_xlat29;
    u_xlat45 = u_xlat16 * u_xlat44 + (-u_xlat16);
    u_xlat16 = u_xlat45 * u_xlat16 + 1.0;
    u_xlat44 = u_xlat44 * 0.318309873;
    u_xlat16 = u_xlat16 * u_xlat16 + 1.00000001e-07;
    u_xlat16 = u_xlat44 / u_xlat16;
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
    u_xlat43 = (-u_xlat43) + _Glossiness;
    u_xlat43 = u_xlat43 + 1.0;
    u_xlat43 = clamp(u_xlat43, 0.0, 1.0);
    u_xlat2.xyw = vec3(u_xlat15) * u_xlat7.xyz;
    u_xlat4.xyz = u_xlat7.xyz * vec3(u_xlat42);
    u_xlat42 = (-u_xlat1.x) + 1.0;
    u_xlat1.x = u_xlat42 * u_xlat42;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat42 = u_xlat42 * u_xlat1.x;
    u_xlat5.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat5.xyz = u_xlat5.xyz * vec3(u_xlat42) + u_xlat0.xyz;
    u_xlat4.xyz = u_xlat4.xyz * u_xlat5.xyz;
    u_xlat2.xyw = u_xlat3.xyz * u_xlat2.xyw + u_xlat4.xyz;
    u_xlat1.xyz = u_xlat9.xyz * vec3(u_xlat29);
    u_xlat3.xyz = (-u_xlat0.xyz) + vec3(u_xlat43);
    u_xlat0.xyz = vec3(u_xlat30) * u_xlat3.xyz + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + u_xlat2.xyw;
    u_xlat0.xyz = u_xlat0.xyz + _AmbientColor.xyz;
    u_xlat42 = vs_TEXCOORD6 / _ProjectionParams.y;
    u_xlat42 = (-u_xlat42) + 1.0;
    u_xlat42 = u_xlat42 * _ProjectionParams.z;
    u_xlat42 = max(u_xlat42, 0.0);
    u_xlat42 = u_xlat42 * unity_FogParams.x;
    u_xlat42 = u_xlat42 * (-u_xlat42);
    u_xlat42 = exp2(u_xlat42);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat42) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

