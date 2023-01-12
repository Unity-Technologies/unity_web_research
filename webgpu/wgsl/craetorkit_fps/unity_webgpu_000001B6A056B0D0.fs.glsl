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
	vec4 unity_FogParams;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	mat4x4 unity_WorldToLight;
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
	float _NormalSacle;
	float _MovementSpeed;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _Normal;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture3D unity_ProbeVolumeSH;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp float vs_TEXCOORD8;
layout(location = 3) in highp vec3 vs_TEXCOORD2;
layout(location = 4) in highp vec3 vs_TEXCOORD3;
layout(location = 5) in highp vec3 vs_TEXCOORD4;
layout(location = 6) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 4) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_Normal;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec3 u_xlat2;
vec4 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec3 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
float u_xlat9;
float u_xlat10;
float u_xlat16;
float u_xlat24;
bool u_xlatb24;
float u_xlat25;
bool u_xlatb25;
float u_xlat26;
    u_xlat0.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat1.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat2.xyz = (-vs_TEXCOORD4.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat25 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat25 = inversesqrt(u_xlat25);
    u_xlat2.xyz = vec3(u_xlat25) * u_xlat2.xyz;
    u_xlat3 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy);
    u_xlat3.xyz = u_xlat3.xyz * _Color.xyz;
    u_xlat4.xyz = u_xlat3.xyz * vs_COLOR0.xyz;
    u_xlat5.x = _Time.x * _MovementSpeed + vs_TEXCOORD0.z;
    u_xlat5.y = (-_Time.x) * _MovementSpeed + vs_TEXCOORD0.w;
    u_xlat5.xyz = texture(sampler2D(_Normal, sampler_Normal), u_xlat5.xy).xyw;
    u_xlat5.x = u_xlat5.z * u_xlat5.x;
    u_xlat5.xy = u_xlat5.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat5.xy = u_xlat5.xy * vec2(_NormalSacle);
    u_xlat25 = dot(u_xlat5.xy, u_xlat5.xy);
    u_xlat25 = min(u_xlat25, 1.0);
    u_xlat25 = (-u_xlat25) + 1.0;
    u_xlat5.z = sqrt(u_xlat25);
    u_xlat25 = (-vs_COLOR0.w) + 1.0;
    u_xlat25 = u_xlat3.w * _Color.w + (-u_xlat25);
    u_xlatb25 = u_xlat25<0.0;
    if(((int(u_xlatb25) * int(0xffffffffu)))!=0){discard;}
    u_xlat6.xyz = vs_TEXCOORD4.yyy * unity_WorldToLight[1].xyz;
    u_xlat6.xyz = unity_WorldToLight[0].xyz * vs_TEXCOORD4.xxx + u_xlat6.xyz;
    u_xlat6.xyz = unity_WorldToLight[2].xyz * vs_TEXCOORD4.zzz + u_xlat6.xyz;
    u_xlat6.xyz = u_xlat6.xyz + unity_WorldToLight[3].xyz;
    u_xlatb25 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb25){
        u_xlatb25 = unity_ProbeVolumeParams.y==1.0;
        u_xlat7.xyz = vs_TEXCOORD4.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD4.xxx + u_xlat7.xyz;
        u_xlat7.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD4.zzz + u_xlat7.xyz;
        u_xlat7.xyz = u_xlat7.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat7.xyz = (bool(u_xlatb25)) ? u_xlat7.xyz : vs_TEXCOORD4.xyz;
        u_xlat7.xyz = u_xlat7.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat7.yzw = u_xlat7.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat25 = u_xlat7.y * 0.25 + 0.75;
        u_xlat26 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat7.x = max(u_xlat25, u_xlat26);
        u_xlat7 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat7.xzw);
    } else {
        u_xlat7.x = float(1.0);
        u_xlat7.y = float(1.0);
        u_xlat7.z = float(1.0);
        u_xlat7.w = float(1.0);
    }
    u_xlat25 = dot(u_xlat7, unity_OcclusionMaskSelector);
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlat26 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat26 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), vec2(u_xlat26)).x;
    u_xlat25 = u_xlat25 * u_xlat26;
    u_xlat6.x = dot(vs_TEXCOORD1.xyz, u_xlat5.xyz);
    u_xlat6.y = dot(vs_TEXCOORD2.xyz, u_xlat5.xyz);
    u_xlat6.z = dot(vs_TEXCOORD3.xyz, u_xlat5.xyz);
    u_xlat26 = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat26 = inversesqrt(u_xlat26);
    u_xlat5.xyz = vec3(u_xlat26) * u_xlat6.xyz;
    u_xlat6.xyz = vec3(u_xlat25) * _LightColor0.xyz;
    u_xlat3.xyz = u_xlat3.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat3.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat3.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat25 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat4.xyz = vec3(u_xlat25) * u_xlat4.xyz;
    u_xlat25 = (-_Glossiness) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat24) + u_xlat2.xyz;
    u_xlat24 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat24 = max(u_xlat24, 0.00100000005);
    u_xlat24 = inversesqrt(u_xlat24);
    u_xlat0.xyz = vec3(u_xlat24) * u_xlat0.xyz;
    u_xlat24 = dot(u_xlat5.xyz, u_xlat2.xyz);
    u_xlat2.x = dot(u_xlat5.xyz, u_xlat1.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat10 = dot(u_xlat5.xyz, u_xlat0.xyz);
    u_xlat10 = clamp(u_xlat10, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat8.x = u_xlat0.x * u_xlat0.x;
    u_xlat8.x = dot(u_xlat8.xx, vec2(u_xlat25));
    u_xlat8.x = u_xlat8.x + -0.5;
    u_xlat16 = (-u_xlat2.x) + 1.0;
    u_xlat1.x = u_xlat16 * u_xlat16;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat16 = u_xlat16 * u_xlat1.x;
    u_xlat16 = u_xlat8.x * u_xlat16 + 1.0;
    u_xlat1.x = -abs(u_xlat24) + 1.0;
    u_xlat9 = u_xlat1.x * u_xlat1.x;
    u_xlat9 = u_xlat9 * u_xlat9;
    u_xlat1.x = u_xlat1.x * u_xlat9;
    u_xlat8.x = u_xlat8.x * u_xlat1.x + 1.0;
    u_xlat8.x = u_xlat8.x * u_xlat16;
    u_xlat16 = u_xlat25 * u_xlat25;
    u_xlat16 = max(u_xlat16, 0.00200000009);
    u_xlat1.x = (-u_xlat16) + 1.0;
    u_xlat9 = abs(u_xlat24) * u_xlat1.x + u_xlat16;
    u_xlat1.x = u_xlat2.x * u_xlat1.x + u_xlat16;
    u_xlat24 = abs(u_xlat24) * u_xlat1.x;
    u_xlat24 = u_xlat2.x * u_xlat9 + u_xlat24;
    u_xlat24 = u_xlat24 + 9.99999975e-06;
    u_xlat24 = 0.5 / u_xlat24;
    u_xlat16 = u_xlat16 * u_xlat16;
    u_xlat1.x = u_xlat10 * u_xlat16 + (-u_xlat10);
    u_xlat1.x = u_xlat1.x * u_xlat10 + 1.0;
    u_xlat16 = u_xlat16 * 0.318309873;
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.00000001e-07;
    u_xlat16 = u_xlat16 / u_xlat1.x;
    u_xlat8.y = u_xlat16 * u_xlat24;
    u_xlat8.xy = u_xlat2.xx * u_xlat8.xy;
    u_xlat16 = u_xlat8.y * 3.14159274;
    u_xlat16 = max(u_xlat16, 0.0);
    u_xlat24 = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlatb24 = u_xlat24!=0.0;
    u_xlat24 = u_xlatb24 ? 1.0 : float(0.0);
    u_xlat16 = u_xlat24 * u_xlat16;
    u_xlat1.xyz = u_xlat8.xxx * u_xlat6.xyz;
    u_xlat8.xyz = u_xlat6.xyz * vec3(u_xlat16);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat25 = u_xlat0.x * u_xlat0.x;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat0.x = u_xlat0.x * u_xlat25;
    u_xlat2.xyz = (-u_xlat3.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat3.xyz;
    u_xlat0.xyz = u_xlat8.xyz * u_xlat2.xyz;
    u_xlat0.xyz = u_xlat4.xyz * u_xlat1.xyz + u_xlat0.xyz;
    u_xlat24 = vs_TEXCOORD8 / _ProjectionParams.y;
    u_xlat24 = (-u_xlat24) + 1.0;
    u_xlat24 = u_xlat24 * _ProjectionParams.z;
    u_xlat24 = max(u_xlat24, 0.0);
    u_xlat24 = u_xlat24 * unity_FogParams.x;
    u_xlat24 = u_xlat24 * (-u_xlat24);
    u_xlat24 = exp2(u_xlat24);
    SV_Target0.xyz = u_xlat0.xyz * vec3(u_xlat24);
    SV_Target0.w = 1.0;
    return;
}

