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
	vec4 unity_OcclusionMaskSelector;
	mat4x4 unity_WorldToShadow[4];
	vec4 _LightShadowData;
	vec4 unity_ShadowFadeCenterAndType;
	mat4x4 unity_MatrixV;
	vec4 unity_ProbeVolumeParams;
	mat4x4 unity_ProbeVolumeWorldToObject;
	vec3 unity_ProbeVolumeSizeInv;
	vec3 unity_ProbeVolumeMin;
	vec4 _LightColor0;
	vec4 _ShadowMapTexture_TexelSize;
	vec4 _Color;
	float _BumpScale;
	float _Metallic;
	float _Glossiness;
	mat4x4 unity_WorldToLight;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _BumpMap;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec4 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_BumpMap;
layout(set = 0, binding = 10) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 11) uniform highp  sampler sampler_LightTextureB0;
void main()
{
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec3 u_xlat13;
float u_xlat14;
float u_xlat24;
float u_xlat25;
vec2 u_xlat28;
float u_xlat33;
float u_xlat34;
bool u_xlatb34;
float u_xlat35;
bool u_xlatb35;
float u_xlat36;
    u_xlat0.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat1.xyz = u_xlat0.xyz * _Color.xyz;
    u_xlat0.xyz = _Color.xyz * u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat33 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat1.xyz = vec3(u_xlat33) * u_xlat1.xyz;
    u_xlat2.xyz = texture(sampler2D(_BumpMap, sampler_BumpMap), vs_TEXCOORD0.xy).xyw;
    u_xlat2.x = u_xlat2.z * u_xlat2.x;
    u_xlat2.xy = u_xlat2.xy * vec2(2.0, 2.0) + vec2(-1.0, -1.0);
    u_xlat2.xy = u_xlat2.xy * vec2(_BumpScale);
    u_xlat33 = dot(u_xlat2.xy, u_xlat2.xy);
    u_xlat33 = min(u_xlat33, 1.0);
    u_xlat33 = (-u_xlat33) + 1.0;
    u_xlat33 = sqrt(u_xlat33);
    u_xlat13.xyz = u_xlat2.yyy * vs_TEXCOORD3.xyz;
    u_xlat2.xyz = vs_TEXCOORD2.xyz * u_xlat2.xxx + u_xlat13.xyz;
    u_xlat2.xyz = vs_TEXCOORD4.xyz * vec3(u_xlat33) + u_xlat2.xyz;
    u_xlat33 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat2.xyz = vec3(u_xlat33) * u_xlat2.xyz;
    u_xlat33 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat33 = inversesqrt(u_xlat33);
    u_xlat3.xyz = vec3(u_xlat33) * vs_TEXCOORD1.xyz;
    u_xlat4 = vs_TEXCOORD5.yyyy * unity_WorldToLight[1];
    u_xlat4 = unity_WorldToLight[0] * vs_TEXCOORD5.xxxx + u_xlat4;
    u_xlat4 = unity_WorldToLight[2] * vs_TEXCOORD5.zzzz + u_xlat4;
    u_xlat4 = u_xlat4 + unity_WorldToLight[3];
    u_xlat5.xyz = (-vs_TEXCOORD5.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat6.x = unity_MatrixV[0].z;
    u_xlat6.y = unity_MatrixV[1].z;
    u_xlat6.z = unity_MatrixV[2].z;
    u_xlat33 = dot(u_xlat5.xyz, u_xlat6.xyz);
    u_xlat5.xyz = vs_TEXCOORD5.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat34 = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlat34 = sqrt(u_xlat34);
    u_xlat34 = (-u_xlat33) + u_xlat34;
    u_xlat33 = unity_ShadowFadeCenterAndType.w * u_xlat34 + u_xlat33;
    u_xlat33 = u_xlat33 * _LightShadowData.z + _LightShadowData.w;
    u_xlat33 = clamp(u_xlat33, 0.0, 1.0);
    u_xlatb34 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb34){
        u_xlatb34 = unity_ProbeVolumeParams.y==1.0;
        u_xlat5.xyz = vs_TEXCOORD5.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD5.xxx + u_xlat5.xyz;
        u_xlat5.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD5.zzz + u_xlat5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat5.xyz = (bool(u_xlatb34)) ? u_xlat5.xyz : vs_TEXCOORD5.xyz;
        u_xlat5.xyz = u_xlat5.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat5.yzw = u_xlat5.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat34 = u_xlat5.y * 0.25 + 0.75;
        u_xlat35 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat5.x = max(u_xlat34, u_xlat35);
        u_xlat5 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat5.xzw);
    } else {
        u_xlat5.x = float(1.0);
        u_xlat5.y = float(1.0);
        u_xlat5.z = float(1.0);
        u_xlat5.w = float(1.0);
    }
    u_xlat34 = dot(u_xlat5, unity_OcclusionMaskSelector);
    u_xlat34 = clamp(u_xlat34, 0.0, 1.0);
    u_xlatb35 = u_xlat33<0.99000001;
    if(u_xlatb35){
        u_xlat5 = vs_TEXCOORD5.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
        u_xlat5 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD5.xxxx + u_xlat5;
        u_xlat5 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD5.zzzz + u_xlat5;
        u_xlat5 = u_xlat5 + unity_WorldToShadow[3 / 4][3 % 4];
        u_xlat5.xyz = u_xlat5.xyz / u_xlat5.www;
        u_xlat6.xy = u_xlat5.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
        u_xlat6.xy = floor(u_xlat6.xy);
        u_xlat5.xy = u_xlat5.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat6.xy);
        u_xlat7 = u_xlat5.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
        u_xlat8.xw = u_xlat7.xz * u_xlat7.xz;
        u_xlat28.xy = u_xlat8.xw * vec2(0.5, 0.5) + (-u_xlat5.xy);
        u_xlat7.xz = (-u_xlat5.xy) + vec2(1.0, 1.0);
        u_xlat9.xy = min(u_xlat5.xy, vec2(0.0, 0.0));
        u_xlat7.xz = (-u_xlat9.xy) * u_xlat9.xy + u_xlat7.xz;
        u_xlat5.xy = max(u_xlat5.xy, vec2(0.0, 0.0));
        u_xlat5.xy = (-u_xlat5.xy) * u_xlat5.xy + u_xlat7.yw;
        u_xlat9.x = u_xlat28.x;
        u_xlat9.y = u_xlat7.x;
        u_xlat9.z = u_xlat5.x;
        u_xlat9.w = u_xlat8.x;
        u_xlat9 = u_xlat9 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat8.x = u_xlat28.y;
        u_xlat8.y = u_xlat7.z;
        u_xlat8.z = u_xlat5.y;
        u_xlat7 = u_xlat8 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat8 = u_xlat9.ywyw + u_xlat9.xzxz;
        u_xlat10 = u_xlat7.yyww + u_xlat7.xxzz;
        u_xlat5.xy = u_xlat9.yw / u_xlat8.zw;
        u_xlat5.xy = u_xlat5.xy + vec2(-1.5, 0.5);
        u_xlat28.xy = u_xlat7.yw / u_xlat10.yw;
        u_xlat28.xy = u_xlat28.xy + vec2(-1.5, 0.5);
        u_xlat7.xy = u_xlat5.xy * _ShadowMapTexture_TexelSize.xx;
        u_xlat7.zw = u_xlat28.xy * _ShadowMapTexture_TexelSize.yy;
        u_xlat8 = u_xlat8 * u_xlat10;
        u_xlat9 = u_xlat6.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat7.xzyz;
        vec3 txVec0 = vec3(u_xlat9.xy,u_xlat5.z);
        u_xlat35 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
        vec3 txVec1 = vec3(u_xlat9.zw,u_xlat5.z);
        u_xlat36 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
        u_xlat36 = u_xlat36 * u_xlat8.y;
        u_xlat35 = u_xlat8.x * u_xlat35 + u_xlat36;
        u_xlat6 = u_xlat6.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat7.xwyw;
        vec3 txVec2 = vec3(u_xlat6.xy,u_xlat5.z);
        u_xlat36 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
        u_xlat35 = u_xlat8.z * u_xlat36 + u_xlat35;
        vec3 txVec3 = vec3(u_xlat6.zw,u_xlat5.z);
        u_xlat36 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
        u_xlat35 = u_xlat8.w * u_xlat36 + u_xlat35;
        u_xlat36 = (-_LightShadowData.x) + 1.0;
        u_xlat35 = u_xlat35 * u_xlat36 + _LightShadowData.x;
    } else {
        u_xlat35 = 1.0;
    }
    u_xlat34 = u_xlat34 + (-u_xlat35);
    u_xlat33 = u_xlat33 * u_xlat34 + u_xlat35;
    u_xlatb34 = 0.0<u_xlat4.z;
    u_xlat34 = u_xlatb34 ? 1.0 : float(0.0);
    u_xlat5.xy = u_xlat4.xy / u_xlat4.ww;
    u_xlat5.xy = u_xlat5.xy + vec2(0.5, 0.5);
    u_xlat35 = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat5.xy).w;
    u_xlat34 = u_xlat34 * u_xlat35;
    u_xlat35 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat35 = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), vec2(u_xlat35)).x;
    u_xlat34 = u_xlat34 * u_xlat35;
    u_xlat33 = u_xlat33 * u_xlat34;
    u_xlat4.x = vs_TEXCOORD2.w;
    u_xlat4.y = vs_TEXCOORD3.w;
    u_xlat4.z = vs_TEXCOORD4.w;
    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat34 = inversesqrt(u_xlat34);
    u_xlat5.xyz = vec3(u_xlat34) * u_xlat4.xyz;
    u_xlat6.xyz = vec3(u_xlat33) * _LightColor0.xyz;
    u_xlat33 = (-_Glossiness) + 1.0;
    u_xlat4.xyz = u_xlat4.xyz * vec3(u_xlat34) + (-u_xlat3.xyz);
    u_xlat34 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat34 = max(u_xlat34, 0.00100000005);
    u_xlat34 = inversesqrt(u_xlat34);
    u_xlat4.xyz = vec3(u_xlat34) * u_xlat4.xyz;
    u_xlat34 = dot(u_xlat2.xyz, (-u_xlat3.xyz));
    u_xlat35 = dot(u_xlat2.xyz, u_xlat5.xyz);
    u_xlat35 = clamp(u_xlat35, 0.0, 1.0);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat4.xyz);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlat13.x = dot(u_xlat5.xyz, u_xlat4.xyz);
    u_xlat13.x = clamp(u_xlat13.x, 0.0, 1.0);
    u_xlat24 = u_xlat13.x * u_xlat13.x;
    u_xlat24 = dot(vec2(u_xlat24), vec2(u_xlat33));
    u_xlat24 = u_xlat24 + -0.5;
    u_xlat3.x = (-u_xlat35) + 1.0;
    u_xlat14 = u_xlat3.x * u_xlat3.x;
    u_xlat14 = u_xlat14 * u_xlat14;
    u_xlat3.x = u_xlat3.x * u_xlat14;
    u_xlat3.x = u_xlat24 * u_xlat3.x + 1.0;
    u_xlat14 = -abs(u_xlat34) + 1.0;
    u_xlat25 = u_xlat14 * u_xlat14;
    u_xlat25 = u_xlat25 * u_xlat25;
    u_xlat14 = u_xlat14 * u_xlat25;
    u_xlat24 = u_xlat24 * u_xlat14 + 1.0;
    u_xlat24 = u_xlat24 * u_xlat3.x;
    u_xlat24 = u_xlat35 * u_xlat24;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat33 = max(u_xlat33, 0.00200000009);
    u_xlat3.x = (-u_xlat33) + 1.0;
    u_xlat14 = abs(u_xlat34) * u_xlat3.x + u_xlat33;
    u_xlat3.x = u_xlat35 * u_xlat3.x + u_xlat33;
    u_xlat34 = abs(u_xlat34) * u_xlat3.x;
    u_xlat34 = u_xlat35 * u_xlat14 + u_xlat34;
    u_xlat34 = u_xlat34 + 9.99999975e-06;
    u_xlat34 = 0.5 / u_xlat34;
    u_xlat33 = u_xlat33 * u_xlat33;
    u_xlat3.x = u_xlat2.x * u_xlat33 + (-u_xlat2.x);
    u_xlat2.x = u_xlat3.x * u_xlat2.x + 1.0;
    u_xlat33 = u_xlat33 * 0.318309873;
    u_xlat2.x = u_xlat2.x * u_xlat2.x + 1.00000001e-07;
    u_xlat33 = u_xlat33 / u_xlat2.x;
    u_xlat33 = u_xlat33 * u_xlat34;
    u_xlat33 = u_xlat35 * u_xlat33;
    u_xlat33 = u_xlat33 * 3.14159274;
    u_xlat33 = max(u_xlat33, 0.0);
    u_xlat34 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlatb34 = u_xlat34!=0.0;
    u_xlat34 = u_xlatb34 ? 1.0 : float(0.0);
    u_xlat33 = u_xlat33 * u_xlat34;
    u_xlat2.xzw = vec3(u_xlat24) * u_xlat6.xyz;
    u_xlat3.xyz = u_xlat6.xyz * vec3(u_xlat33);
    u_xlat33 = (-u_xlat13.x) + 1.0;
    u_xlat34 = u_xlat33 * u_xlat33;
    u_xlat34 = u_xlat34 * u_xlat34;
    u_xlat33 = u_xlat33 * u_xlat34;
    u_xlat4.xyz = (-u_xlat0.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat0.xyz = u_xlat4.xyz * vec3(u_xlat33) + u_xlat0.xyz;
    u_xlat0.xyz = u_xlat0.xyz * u_xlat3.xyz;
    SV_Target0.xyz = u_xlat1.xyz * u_xlat2.xzw + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

