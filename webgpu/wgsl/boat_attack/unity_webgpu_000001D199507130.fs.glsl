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
	vec2 _GlobalMipBias;
	vec4 unity_FogColor;
};
layout(set = 1, binding = 1, std140) uniform UnityPerDraw {
	mat4x4 unity_ObjectToWorld;
	mat4x4 unity_WorldToObject;
	vec4 unity_LODFade;
	vec4 unity_WorldTransformParams;
	vec4 unity_RenderingLayer;
	vec4 unity_LightData;
	vec4 unity_LightIndices[2];
	vec4 unity_ProbesOcclusion;
	vec4 unity_SpecCube0_HDR;
	vec4 unity_SpecCube1_HDR;
	vec4 unity_SpecCube0_BoxMax;
	vec4 unity_SpecCube0_BoxMin;
	vec4 unity_SpecCube0_ProbePosition;
	vec4 unity_SpecCube1_BoxMax;
	vec4 unity_SpecCube1_BoxMin;
	vec4 unity_SpecCube1_ProbePosition;
	vec4 unity_LightmapST;
	vec4 unity_DynamicLightmapST;
	vec4 unity_SHAr;
	vec4 unity_SHAg;
	vec4 unity_SHAb;
	vec4 unity_SHBr;
	vec4 unity_SHBg;
	vec4 unity_SHBb;
	vec4 unity_SHC;
	vec4 unity_RendererBounds_Min;
	vec4 unity_RendererBounds_Max;
	mat4x4 unity_MatrixPreviousM;
	mat4x4 unity_MatrixPreviousMI;
	vec4 unity_MotionVectorsParams;
	vec4 unity_SpriteColor;
	vec4 unity_SpriteProps;
};
layout(set = 1, binding = 2, std140) uniform MainLightShadows {
	mat4x4 _MainLightWorldToShadow[5];
	vec4 _CascadeShadowSplitSpheres0;
	vec4 _CascadeShadowSplitSpheres1;
	vec4 _CascadeShadowSplitSpheres2;
	vec4 _CascadeShadowSplitSpheres3;
	vec4 _CascadeShadowSplitSphereRadii;
	vec4 _MainLightShadowOffset0;
	vec4 _MainLightShadowOffset1;
	vec4 _MainLightShadowParams;
	vec4 _MainLightShadowmapSize;
};
layout(set = 0, binding = 0) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 1) uniform mediump texture2D _MainLightShadowmapTexture;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec4 vs_TEXCOORD3;
layout(location = 2) in highp vec4 vs_TEXCOORD4;
layout(location = 3) in highp vec4 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(set = 0, binding = 2) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 3) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
vec4 u_xlat2;
bool u_xlatb2;
vec4 u_xlat3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec4 u_xlat8;
vec4 u_xlat9;
vec4 u_xlat10;
vec4 u_xlat11;
vec4 u_xlat12;
vec4 u_xlat13;
vec4 u_xlat14;
vec4 u_xlat15;
float u_xlat18;
bool u_xlatb18;
vec3 u_xlat19;
vec2 u_xlat20;
vec2 u_xlat34;
vec2 u_xlat36;
vec2 u_xlat37;
vec2 u_xlat42;
float u_xlat48;
bool u_xlatb48;
float u_xlat50;
float u_xlat52;
    u_xlat0.xyz = vs_TEXCOORD5.xyz;
    u_xlat0.w = 1.0;
    u_xlat1.x = dot(unity_SHAr, u_xlat0);
    u_xlat1.y = dot(unity_SHAg, u_xlat0);
    u_xlat1.z = dot(unity_SHAb, u_xlat0);
    u_xlat0 = vs_TEXCOORD5.yzzx * vs_TEXCOORD5.xyzz;
    u_xlat2.x = dot(unity_SHBr, u_xlat0);
    u_xlat2.y = dot(unity_SHBg, u_xlat0);
    u_xlat2.z = dot(unity_SHBb, u_xlat0);
    u_xlat0.x = vs_TEXCOORD5.y * vs_TEXCOORD5.y;
    u_xlat0.x = vs_TEXCOORD5.x * vs_TEXCOORD5.x + (-u_xlat0.x);
    u_xlat0.xyz = unity_SHC.xyz * u_xlat0.xxx + u_xlat2.xyz;
    u_xlat0.xyz = u_xlat0.xyz + u_xlat1.xyz;
    u_xlat0.xyz = max(u_xlat0.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat1 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlatb48 = 0.0<_MainLightShadowParams.y;
    if(u_xlatb48){
        u_xlatb48 = _MainLightShadowParams.y==1.0;
        if(u_xlatb48){
            u_xlat2 = vs_TEXCOORD4.xyxy + _MainLightShadowOffset0;
            vec3 txVec0 = vec3(u_xlat2.xy,vs_TEXCOORD4.z);
            u_xlat3.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
            vec3 txVec1 = vec3(u_xlat2.zw,vs_TEXCOORD4.z);
            u_xlat3.y = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec1, 0.0);
            u_xlat2 = vs_TEXCOORD4.xyxy + _MainLightShadowOffset1;
            vec3 txVec2 = vec3(u_xlat2.xy,vs_TEXCOORD4.z);
            u_xlat3.z = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec2, 0.0);
            vec3 txVec3 = vec3(u_xlat2.zw,vs_TEXCOORD4.z);
            u_xlat3.w = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec3, 0.0);
            u_xlat48 = dot(u_xlat3, vec4(0.25, 0.25, 0.25, 0.25));
        } else {
            u_xlatb2 = _MainLightShadowParams.y==2.0;
            if(u_xlatb2){
                u_xlat2.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat2.xy = floor(u_xlat2.xy);
                u_xlat34.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + (-u_xlat2.xy);
                u_xlat3 = u_xlat34.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat4 = u_xlat3.xxzz * u_xlat3.xxzz;
                u_xlat3.xz = u_xlat4.yw * vec2(0.0799999982, 0.0799999982);
                u_xlat4.xy = u_xlat4.xz * vec2(0.5, 0.5) + (-u_xlat34.xy);
                u_xlat36.xy = (-u_xlat34.xy) + vec2(1.0, 1.0);
                u_xlat5.xy = min(u_xlat34.xy, vec2(0.0, 0.0));
                u_xlat5.xy = (-u_xlat5.xy) * u_xlat5.xy + u_xlat36.xy;
                u_xlat34.xy = max(u_xlat34.xy, vec2(0.0, 0.0));
                u_xlat34.xy = (-u_xlat34.xy) * u_xlat34.xy + u_xlat3.yw;
                u_xlat5.xy = u_xlat5.xy + vec2(1.0, 1.0);
                u_xlat34.xy = u_xlat34.xy + vec2(1.0, 1.0);
                u_xlat6.xy = u_xlat4.xy * vec2(0.159999996, 0.159999996);
                u_xlat4.xy = u_xlat36.xy * vec2(0.159999996, 0.159999996);
                u_xlat5.xy = u_xlat5.xy * vec2(0.159999996, 0.159999996);
                u_xlat7.xy = u_xlat34.xy * vec2(0.159999996, 0.159999996);
                u_xlat34.xy = u_xlat3.yw * vec2(0.159999996, 0.159999996);
                u_xlat6.z = u_xlat5.x;
                u_xlat6.w = u_xlat34.x;
                u_xlat4.z = u_xlat7.x;
                u_xlat4.w = u_xlat3.x;
                u_xlat8 = u_xlat4.zwxz + u_xlat6.zwxz;
                u_xlat5.z = u_xlat6.y;
                u_xlat5.w = u_xlat34.y;
                u_xlat7.z = u_xlat4.y;
                u_xlat7.w = u_xlat3.z;
                u_xlat3.xyz = u_xlat5.zyw + u_xlat7.zyw;
                u_xlat4.xyz = u_xlat4.xzw / u_xlat8.zwy;
                u_xlat4.xyz = u_xlat4.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat5.xyz = u_xlat7.zyw / u_xlat3.xyz;
                u_xlat5.xyz = u_xlat5.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat4.xyz = u_xlat4.yxz * _MainLightShadowmapSize.xxx;
                u_xlat5.xyz = u_xlat5.xyz * _MainLightShadowmapSize.yyy;
                u_xlat4.w = u_xlat5.x;
                u_xlat6 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.ywxw;
                u_xlat34.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat4.zw;
                u_xlat5.w = u_xlat4.y;
                u_xlat4.yw = u_xlat5.yz;
                u_xlat7 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.xyzy;
                u_xlat5 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat5.wywz;
                u_xlat4 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.xwzw;
                u_xlat9 = u_xlat3.xxxy * u_xlat8.zwyz;
                u_xlat10 = u_xlat3.yyzz * u_xlat8;
                u_xlat2.x = u_xlat3.z * u_xlat8.y;
                vec3 txVec4 = vec3(u_xlat6.xy,vs_TEXCOORD4.z);
                u_xlat18 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec4, 0.0);
                vec3 txVec5 = vec3(u_xlat6.zw,vs_TEXCOORD4.z);
                u_xlat3.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec5, 0.0);
                u_xlat3.x = u_xlat3.x * u_xlat9.y;
                u_xlat18 = u_xlat9.x * u_xlat18 + u_xlat3.x;
                vec3 txVec6 = vec3(u_xlat34.xy,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec6, 0.0);
                u_xlat18 = u_xlat9.z * u_xlat34.x + u_xlat18;
                vec3 txVec7 = vec3(u_xlat5.xy,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec7, 0.0);
                u_xlat18 = u_xlat9.w * u_xlat34.x + u_xlat18;
                vec3 txVec8 = vec3(u_xlat7.xy,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec8, 0.0);
                u_xlat18 = u_xlat10.x * u_xlat34.x + u_xlat18;
                vec3 txVec9 = vec3(u_xlat7.zw,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec9, 0.0);
                u_xlat18 = u_xlat10.y * u_xlat34.x + u_xlat18;
                vec3 txVec10 = vec3(u_xlat5.zw,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec10, 0.0);
                u_xlat18 = u_xlat10.z * u_xlat34.x + u_xlat18;
                vec3 txVec11 = vec3(u_xlat4.xy,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec11, 0.0);
                u_xlat18 = u_xlat10.w * u_xlat34.x + u_xlat18;
                vec3 txVec12 = vec3(u_xlat4.zw,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec12, 0.0);
                u_xlat48 = u_xlat2.x * u_xlat34.x + u_xlat18;
            } else {
                u_xlat2.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat2.xy = floor(u_xlat2.xy);
                u_xlat34.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + (-u_xlat2.xy);
                u_xlat3 = u_xlat34.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat4 = u_xlat3.xxzz * u_xlat3.xxzz;
                u_xlat5.yw = u_xlat4.yw * vec2(0.0408160016, 0.0408160016);
                u_xlat3.xz = u_xlat4.xz * vec2(0.5, 0.5) + (-u_xlat34.xy);
                u_xlat4.xy = (-u_xlat34.xy) + vec2(1.0, 1.0);
                u_xlat36.xy = min(u_xlat34.xy, vec2(0.0, 0.0));
                u_xlat4.xy = (-u_xlat36.xy) * u_xlat36.xy + u_xlat4.xy;
                u_xlat36.xy = max(u_xlat34.xy, vec2(0.0, 0.0));
                u_xlat19.xz = (-u_xlat36.xy) * u_xlat36.xy + u_xlat3.yw;
                u_xlat4.xy = u_xlat4.xy + vec2(2.0, 2.0);
                u_xlat3.yw = u_xlat19.xz + vec2(2.0, 2.0);
                u_xlat6.z = u_xlat3.y * 0.0816320032;
                u_xlat7.xyz = u_xlat3.zxw * vec3(0.0816320032, 0.0816320032, 0.0816320032);
                u_xlat3.xy = u_xlat4.xy * vec2(0.0816320032, 0.0816320032);
                u_xlat6.x = u_xlat7.y;
                u_xlat6.yw = u_xlat34.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat4.xz = u_xlat34.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat4.y = u_xlat3.x;
                u_xlat4.w = u_xlat5.y;
                u_xlat6 = u_xlat4 + u_xlat6;
                u_xlat7.yw = u_xlat34.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat5.xz = u_xlat34.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat5.y = u_xlat3.y;
                u_xlat3 = u_xlat5 + u_xlat7;
                u_xlat4 = u_xlat4 / u_xlat6;
                u_xlat4 = u_xlat4 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat5 = u_xlat5 / u_xlat3;
                u_xlat5 = u_xlat5 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat4 = u_xlat4.wxyz * _MainLightShadowmapSize.xxxx;
                u_xlat5 = u_xlat5.xwyz * _MainLightShadowmapSize.yyyy;
                u_xlat7.xzw = u_xlat4.yzw;
                u_xlat7.y = u_xlat5.x;
                u_xlat8 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat34.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat7.wy;
                u_xlat4.y = u_xlat7.y;
                u_xlat7.y = u_xlat5.z;
                u_xlat9 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat10.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat7.wy;
                u_xlat4.z = u_xlat7.y;
                u_xlat11 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.xyxz;
                u_xlat7.y = u_xlat5.w;
                u_xlat12 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat7.xyzy;
                u_xlat20.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat7.wy;
                u_xlat4.w = u_xlat7.y;
                u_xlat42.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat4.xw;
                u_xlat5.xzw = u_xlat7.xzw;
                u_xlat7 = u_xlat2.xyxy * _MainLightShadowmapSize.xyxy + u_xlat5.xyzy;
                u_xlat37.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat5.wy;
                u_xlat5.x = u_xlat4.x;
                u_xlat2.xy = u_xlat2.xy * _MainLightShadowmapSize.xy + u_xlat5.xy;
                u_xlat13 = u_xlat3.xxxx * u_xlat6;
                u_xlat14 = u_xlat3.yyyy * u_xlat6;
                u_xlat15 = u_xlat3.zzzz * u_xlat6;
                u_xlat3 = u_xlat3.wwww * u_xlat6;
                vec3 txVec13 = vec3(u_xlat8.xy,vs_TEXCOORD4.z);
                u_xlat4.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec13, 0.0);
                vec3 txVec14 = vec3(u_xlat8.zw,vs_TEXCOORD4.z);
                u_xlat52 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec14, 0.0);
                u_xlat52 = u_xlat52 * u_xlat13.y;
                u_xlat4.x = u_xlat13.x * u_xlat4.x + u_xlat52;
                vec3 txVec15 = vec3(u_xlat34.xy,vs_TEXCOORD4.z);
                u_xlat34.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec15, 0.0);
                u_xlat34.x = u_xlat13.z * u_xlat34.x + u_xlat4.x;
                vec3 txVec16 = vec3(u_xlat11.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec16, 0.0);
                u_xlat34.x = u_xlat13.w * u_xlat50 + u_xlat34.x;
                vec3 txVec17 = vec3(u_xlat9.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec17, 0.0);
                u_xlat34.x = u_xlat14.x * u_xlat50 + u_xlat34.x;
                vec3 txVec18 = vec3(u_xlat9.zw,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec18, 0.0);
                u_xlat34.x = u_xlat14.y * u_xlat50 + u_xlat34.x;
                vec3 txVec19 = vec3(u_xlat10.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec19, 0.0);
                u_xlat34.x = u_xlat14.z * u_xlat50 + u_xlat34.x;
                vec3 txVec20 = vec3(u_xlat11.zw,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec20, 0.0);
                u_xlat34.x = u_xlat14.w * u_xlat50 + u_xlat34.x;
                vec3 txVec21 = vec3(u_xlat12.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec21, 0.0);
                u_xlat34.x = u_xlat15.x * u_xlat50 + u_xlat34.x;
                vec3 txVec22 = vec3(u_xlat12.zw,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec22, 0.0);
                u_xlat34.x = u_xlat15.y * u_xlat50 + u_xlat34.x;
                vec3 txVec23 = vec3(u_xlat20.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec23, 0.0);
                u_xlat34.x = u_xlat15.z * u_xlat50 + u_xlat34.x;
                vec3 txVec24 = vec3(u_xlat42.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec24, 0.0);
                u_xlat34.x = u_xlat15.w * u_xlat50 + u_xlat34.x;
                vec3 txVec25 = vec3(u_xlat7.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec25, 0.0);
                u_xlat34.x = u_xlat3.x * u_xlat50 + u_xlat34.x;
                vec3 txVec26 = vec3(u_xlat7.zw,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec26, 0.0);
                u_xlat34.x = u_xlat3.y * u_xlat50 + u_xlat34.x;
                vec3 txVec27 = vec3(u_xlat37.xy,vs_TEXCOORD4.z);
                u_xlat50 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec27, 0.0);
                u_xlat34.x = u_xlat3.z * u_xlat50 + u_xlat34.x;
                vec3 txVec28 = vec3(u_xlat2.xy,vs_TEXCOORD4.z);
                u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec28, 0.0);
                u_xlat48 = u_xlat3.w * u_xlat2.x + u_xlat34.x;
            }
        }
    } else {
        vec3 txVec29 = vec3(vs_TEXCOORD4.xy,vs_TEXCOORD4.z);
        u_xlat48 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec29, 0.0);
    }
    u_xlat2.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat48 = u_xlat48 * _MainLightShadowParams.x + u_xlat2.x;
    u_xlatb2 = 0.0>=vs_TEXCOORD4.z;
    u_xlatb18 = vs_TEXCOORD4.z>=1.0;
    u_xlatb2 = u_xlatb18 || u_xlatb2;
    u_xlat48 = (u_xlatb2) ? 1.0 : u_xlat48;
    u_xlat0.xyz = vs_TEXCOORD3.xyz * vec3(u_xlat48) + u_xlat0.xyz;
    u_xlat48 = vs_TEXCOORD3.w * (-vs_TEXCOORD3.w);
    u_xlat48 = exp2(u_xlat48);
    u_xlat0.xyz = u_xlat1.xyz * u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat48) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = u_xlat1.w;
    return;
}

