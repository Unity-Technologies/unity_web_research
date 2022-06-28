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
	mat4x4 unity_WorldToLight;
	float _Glossiness;
	float _Metallic;
	vec4 _Color;
};
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform highp texture2D _LightTexture0;
layout(set = 0, binding = 3) uniform highp texture2D _LightTextureB0;
layout(set = 0, binding = 4) uniform highp texture3D unity_ProbeVolumeSH;
layout(set = 0, binding = 5) uniform highp texture2D _ShadowMapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec3 vs_TEXCOORD1;
layout(location = 2) in highp vec3 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_COLOR0;
layout(location = 0) out highp vec4 SV_Target0;
vec3 u_xlat0;
vec3 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec3 u_xlat3;
vec3 u_xlat4;
vec3 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec3 u_xlat12;
float u_xlat13;
vec3 u_xlat14;
bool u_xlatb14;
float u_xlat24;
float u_xlat26;
vec2 u_xlat31;
float u_xlat36;
bool u_xlatb36;
float u_xlat37;
float u_xlat38;
float u_xlat39;
layout(set = 0, binding = 6) uniform highp  sampler samplerunity_ProbeVolumeSH;
layout(set = 0, binding = 7) uniform highp  samplerShadow sampler_ShadowMapTexture;
layout(set = 0, binding = 8) uniform highp  sampler sampler_LightTexture0;
layout(set = 0, binding = 9) uniform highp  sampler sampler_LightTextureB0;
layout(set = 0, binding = 10) uniform mediump  sampler sampler_MainTex;
void main()
{
    u_xlat0.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceLightPos0.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat1.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlat2.xyz = (-vs_TEXCOORD2.xyz) + _WorldSpaceCameraPos.xyz;
    u_xlat37 = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat3.xyz = vec3(u_xlat37) * u_xlat2.xyz;
    u_xlat4.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy).xyz;
    u_xlat4.xyz = u_xlat4.xyz * _Color.xyz;
    u_xlat5.xyz = u_xlat4.xyz * vs_COLOR0.xyz;
    u_xlat6 = vs_TEXCOORD2.yyyy * unity_WorldToLight[1];
    u_xlat6 = unity_WorldToLight[0] * vs_TEXCOORD2.xxxx + u_xlat6;
    u_xlat6 = unity_WorldToLight[2] * vs_TEXCOORD2.zzzz + u_xlat6;
    u_xlat6 = u_xlat6 + unity_WorldToLight[3];
    u_xlat7.x = unity_MatrixV[0].z;
    u_xlat7.y = unity_MatrixV[1].z;
    u_xlat7.z = unity_MatrixV[2].z;
    u_xlat37 = dot(u_xlat2.xyz, u_xlat7.xyz);
    u_xlat2.xyz = vs_TEXCOORD2.xyz + (-unity_ShadowFadeCenterAndType.xyz);
    u_xlat2.x = dot(u_xlat2.xyz, u_xlat2.xyz);
    u_xlat2.x = sqrt(u_xlat2.x);
    u_xlat2.x = (-u_xlat37) + u_xlat2.x;
    u_xlat37 = unity_ShadowFadeCenterAndType.w * u_xlat2.x + u_xlat37;
    u_xlat37 = u_xlat37 * _LightShadowData.z + _LightShadowData.w;
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlatb2 = unity_ProbeVolumeParams.x==1.0;
    if(u_xlatb2){
        u_xlatb2 = unity_ProbeVolumeParams.y==1.0;
        u_xlat14.xyz = vs_TEXCOORD2.yyy * unity_ProbeVolumeWorldToObject[1].xyz;
        u_xlat14.xyz = unity_ProbeVolumeWorldToObject[0].xyz * vs_TEXCOORD2.xxx + u_xlat14.xyz;
        u_xlat14.xyz = unity_ProbeVolumeWorldToObject[2].xyz * vs_TEXCOORD2.zzz + u_xlat14.xyz;
        u_xlat14.xyz = u_xlat14.xyz + unity_ProbeVolumeWorldToObject[3].xyz;
        u_xlat2.xyz = (bool(u_xlatb2)) ? u_xlat14.xyz : vs_TEXCOORD2.xyz;
        u_xlat2.xyz = u_xlat2.xyz + (-unity_ProbeVolumeMin.xyz);
        u_xlat2.yzw = u_xlat2.xyz * unity_ProbeVolumeSizeInv.xyz;
        u_xlat14.x = u_xlat2.y * 0.25 + 0.75;
        u_xlat39 = unity_ProbeVolumeParams.z * 0.5 + 0.75;
        u_xlat2.x = max(u_xlat14.x, u_xlat39);
        u_xlat2 = texture(sampler3D(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH), u_xlat2.xzw);
    } else {
        u_xlat2.x = float(1.0);
        u_xlat2.y = float(1.0);
        u_xlat2.z = float(1.0);
        u_xlat2.w = float(1.0);
    }
    u_xlat2.x = dot(u_xlat2, unity_OcclusionMaskSelector);
    u_xlat2.x = clamp(u_xlat2.x, 0.0, 1.0);
    u_xlatb14 = u_xlat37<0.99000001;
    if(u_xlatb14){
        u_xlat7 = vs_TEXCOORD2.yyyy * unity_WorldToShadow[1 / 4][1 % 4];
        u_xlat7 = unity_WorldToShadow[0 / 4][0 % 4] * vs_TEXCOORD2.xxxx + u_xlat7;
        u_xlat7 = unity_WorldToShadow[2 / 4][2 % 4] * vs_TEXCOORD2.zzzz + u_xlat7;
        u_xlat7 = u_xlat7 + unity_WorldToShadow[3 / 4][3 % 4];
        u_xlat14.xyz = u_xlat7.xyz / u_xlat7.www;
        u_xlat7.xy = u_xlat14.xy * _ShadowMapTexture_TexelSize.zw + vec2(0.5, 0.5);
        u_xlat7.xy = floor(u_xlat7.xy);
        u_xlat14.xy = u_xlat14.xy * _ShadowMapTexture_TexelSize.zw + (-u_xlat7.xy);
        u_xlat8 = u_xlat14.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
        u_xlat9.xw = u_xlat8.xz * u_xlat8.xz;
        u_xlat31.xy = u_xlat9.xw * vec2(0.5, 0.5) + (-u_xlat14.xy);
        u_xlat8.xz = (-u_xlat14.xy) + vec2(1.0, 1.0);
        u_xlat10.xy = min(u_xlat14.xy, vec2(0.0, 0.0));
        u_xlat8.xz = (-u_xlat10.xy) * u_xlat10.xy + u_xlat8.xz;
        u_xlat14.xy = max(u_xlat14.xy, vec2(0.0, 0.0));
        u_xlat14.xy = (-u_xlat14.xy) * u_xlat14.xy + u_xlat8.yw;
        u_xlat10.x = u_xlat31.x;
        u_xlat10.y = u_xlat8.x;
        u_xlat10.z = u_xlat14.x;
        u_xlat10.w = u_xlat9.x;
        u_xlat10 = u_xlat10 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat9.x = u_xlat31.y;
        u_xlat9.y = u_xlat8.z;
        u_xlat9.z = u_xlat14.y;
        u_xlat8 = u_xlat9 * vec4(0.444440007, 0.444440007, 0.444440007, 0.222220004);
        u_xlat9 = u_xlat10.ywyw + u_xlat10.xzxz;
        u_xlat11 = u_xlat8.yyww + u_xlat8.xxzz;
        u_xlat14.xy = u_xlat10.yw / u_xlat9.zw;
        u_xlat14.xy = u_xlat14.xy + vec2(-1.5, 0.5);
        u_xlat31.xy = u_xlat8.yw / u_xlat11.yw;
        u_xlat31.xy = u_xlat31.xy + vec2(-1.5, 0.5);
        u_xlat8.xy = u_xlat14.xy * _ShadowMapTexture_TexelSize.xx;
        u_xlat8.zw = u_xlat31.xy * _ShadowMapTexture_TexelSize.yy;
        u_xlat9 = u_xlat9 * u_xlat11;
        u_xlat10 = u_xlat7.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat8.xzyz;
        vec3 txVec0 = vec3(u_xlat10.xy,u_xlat14.z);
        u_xlat14.x = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec0, 0.0);
        vec3 txVec1 = vec3(u_xlat10.zw,u_xlat14.z);
        u_xlat26 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec1, 0.0);
        u_xlat26 = u_xlat26 * u_xlat9.y;
        u_xlat14.x = u_xlat9.x * u_xlat14.x + u_xlat26;
        u_xlat7 = u_xlat7.xyxy * _ShadowMapTexture_TexelSize.xyxy + u_xlat8.xwyw;
        vec3 txVec2 = vec3(u_xlat7.xy,u_xlat14.z);
        u_xlat26 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec2, 0.0);
        u_xlat14.x = u_xlat9.z * u_xlat26 + u_xlat14.x;
        vec3 txVec3 = vec3(u_xlat7.zw,u_xlat14.z);
        u_xlat26 = textureLod(sampler2DShadow(_ShadowMapTexture, sampler_ShadowMapTexture), txVec3, 0.0);
        u_xlat14.x = u_xlat9.w * u_xlat26 + u_xlat14.x;
        u_xlat26 = (-_LightShadowData.x) + 1.0;
        u_xlat14.x = u_xlat14.x * u_xlat26 + _LightShadowData.x;
    } else {
        u_xlat14.x = 1.0;
    }
    u_xlat2.x = (-u_xlat14.x) + u_xlat2.x;
    u_xlat37 = u_xlat37 * u_xlat2.x + u_xlat14.x;
    u_xlatb2 = 0.0<u_xlat6.z;
    u_xlat2.x = u_xlatb2 ? 1.0 : float(0.0);
    u_xlat14.xy = u_xlat6.xy / u_xlat6.ww;
    u_xlat14.xy = u_xlat14.xy + vec2(0.5, 0.5);
    u_xlat14.x = texture(sampler2D(_LightTexture0, sampler_LightTexture0), u_xlat14.xy).w;
    u_xlat2.x = u_xlat14.x * u_xlat2.x;
    u_xlat14.x = dot(u_xlat6.xyz, u_xlat6.xyz);
    u_xlat14.x = texture(sampler2D(_LightTextureB0, sampler_LightTextureB0), u_xlat14.xx).x;
    u_xlat2.x = u_xlat14.x * u_xlat2.x;
    u_xlat37 = u_xlat37 * u_xlat2.x;
    u_xlat2.xyz = vec3(u_xlat37) * _LightColor0.xyz;
    u_xlat37 = dot(vs_TEXCOORD1.xyz, vs_TEXCOORD1.xyz);
    u_xlat37 = inversesqrt(u_xlat37);
    u_xlat6.xyz = vec3(u_xlat37) * vs_TEXCOORD1.xyz;
    u_xlat4.xyz = u_xlat4.xyz * vs_COLOR0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat4.xyz = vec3(vec3(_Metallic, _Metallic, _Metallic)) * u_xlat4.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat37 = (-_Metallic) * 0.959999979 + 0.959999979;
    u_xlat5.xyz = vec3(u_xlat37) * u_xlat5.xyz;
    u_xlat37 = (-_Glossiness) + 1.0;
    u_xlat0.xyz = u_xlat0.xyz * vec3(u_xlat36) + u_xlat3.xyz;
    u_xlat36 = dot(u_xlat0.xyz, u_xlat0.xyz);
    u_xlat36 = max(u_xlat36, 0.00100000005);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat0.xyz = vec3(u_xlat36) * u_xlat0.xyz;
    u_xlat36 = dot(u_xlat6.xyz, u_xlat3.xyz);
    u_xlat38 = dot(u_xlat6.xyz, u_xlat1.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat3.x = dot(u_xlat6.xyz, u_xlat0.xyz);
    u_xlat3.x = clamp(u_xlat3.x, 0.0, 1.0);
    u_xlat0.x = dot(u_xlat1.xyz, u_xlat0.xyz);
    u_xlat0.x = clamp(u_xlat0.x, 0.0, 1.0);
    u_xlat12.x = u_xlat0.x * u_xlat0.x;
    u_xlat12.x = dot(u_xlat12.xx, vec2(u_xlat37));
    u_xlat12.x = u_xlat12.x + -0.5;
    u_xlat24 = (-u_xlat38) + 1.0;
    u_xlat1.x = u_xlat24 * u_xlat24;
    u_xlat1.x = u_xlat1.x * u_xlat1.x;
    u_xlat24 = u_xlat24 * u_xlat1.x;
    u_xlat24 = u_xlat12.x * u_xlat24 + 1.0;
    u_xlat1.x = -abs(u_xlat36) + 1.0;
    u_xlat13 = u_xlat1.x * u_xlat1.x;
    u_xlat13 = u_xlat13 * u_xlat13;
    u_xlat1.x = u_xlat1.x * u_xlat13;
    u_xlat12.x = u_xlat12.x * u_xlat1.x + 1.0;
    u_xlat12.x = u_xlat12.x * u_xlat24;
    u_xlat24 = u_xlat37 * u_xlat37;
    u_xlat24 = max(u_xlat24, 0.00200000009);
    u_xlat1.x = (-u_xlat24) + 1.0;
    u_xlat13 = abs(u_xlat36) * u_xlat1.x + u_xlat24;
    u_xlat1.x = u_xlat38 * u_xlat1.x + u_xlat24;
    u_xlat36 = abs(u_xlat36) * u_xlat1.x;
    u_xlat36 = u_xlat38 * u_xlat13 + u_xlat36;
    u_xlat36 = u_xlat36 + 9.99999975e-06;
    u_xlat36 = 0.5 / u_xlat36;
    u_xlat24 = u_xlat24 * u_xlat24;
    u_xlat1.x = u_xlat3.x * u_xlat24 + (-u_xlat3.x);
    u_xlat1.x = u_xlat1.x * u_xlat3.x + 1.0;
    u_xlat24 = u_xlat24 * 0.318309873;
    u_xlat1.x = u_xlat1.x * u_xlat1.x + 1.00000001e-07;
    u_xlat24 = u_xlat24 / u_xlat1.x;
    u_xlat12.y = u_xlat24 * u_xlat36;
    u_xlat12.xy = vec2(u_xlat38) * u_xlat12.xy;
    u_xlat24 = u_xlat12.y * 3.14159274;
    u_xlat24 = max(u_xlat24, 0.0);
    u_xlat36 = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlatb36 = u_xlat36!=0.0;
    u_xlat36 = u_xlatb36 ? 1.0 : float(0.0);
    u_xlat24 = u_xlat36 * u_xlat24;
    u_xlat1.xyz = u_xlat12.xxx * u_xlat2.xyz;
    u_xlat12.xyz = u_xlat2.xyz * vec3(u_xlat24);
    u_xlat0.x = (-u_xlat0.x) + 1.0;
    u_xlat37 = u_xlat0.x * u_xlat0.x;
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat0.x = u_xlat0.x * u_xlat37;
    u_xlat2.xyz = (-u_xlat4.xyz) + vec3(1.0, 1.0, 1.0);
    u_xlat2.xyz = u_xlat2.xyz * u_xlat0.xxx + u_xlat4.xyz;
    u_xlat0.xyz = u_xlat12.xyz * u_xlat2.xyz;
    SV_Target0.xyz = u_xlat5.xyz * u_xlat1.xyz + u_xlat0.xyz;
    SV_Target0.w = 1.0;
    return;
}

