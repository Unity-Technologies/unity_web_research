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
};
layout(set = 1, binding = 1, std140) uniform MainLightShadows {
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
layout(set = 0, binding = 0) uniform mediump texture2D unity_Lightmap;
layout(set = 0, binding = 1) uniform mediump texture2D unity_LightmapInd;
layout(set = 0, binding = 2) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 3) uniform mediump texture2D _MainTex;
layout(location = 0) in highp vec2 vs_TEXCOORD0;
layout(location = 1) in highp vec2 vs_TEXCOORD1;
layout(location = 2) in highp vec4 vs_TEXCOORD2;
layout(location = 3) in highp vec4 vs_TEXCOORD3;
layout(location = 4) in highp vec4 vs_TEXCOORD4;
layout(location = 5) in highp vec3 vs_TEXCOORD5;
layout(location = 0) out highp vec4 SV_Target0;
layout(location = 1) out highp vec4 SV_Target1;
layout(location = 2) out highp vec4 SV_Target2;
layout(location = 3) out highp vec4 SV_Target3;
layout(set = 0, binding = 4) uniform mediump  sampler samplerunity_Lightmap;
layout(set = 0, binding = 5) uniform mediump  samplerShadow sampler_MainLightShadowmapTexture;
layout(set = 0, binding = 6) uniform mediump  sampler sampler_MainTex;
void main()
{
vec4 u_xlat0;
vec4 u_xlat1;
bool u_xlatb1;
vec4 u_xlat2;
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
float u_xlat16;
bool u_xlatb16;
vec3 u_xlat17;
vec2 u_xlat18;
vec2 u_xlat31;
vec2 u_xlat33;
vec2 u_xlat34;
vec2 u_xlat39;
float u_xlat45;
bool u_xlatb45;
float u_xlat46;
float u_xlat48;
    u_xlat0 = texture(sampler2D(unity_LightmapInd, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x);
    u_xlat1.xyz = texture(sampler2D(unity_Lightmap, samplerunity_Lightmap), vs_TEXCOORD1.xy, _GlobalMipBias.x).xyz;
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.5, -0.5, -0.5);
    u_xlat0.x = dot(vs_TEXCOORD5.xyz, u_xlat0.xyz);
    u_xlat0.x = u_xlat0.x + 0.5;
    u_xlat0.xyz = u_xlat0.xxx * u_xlat1.xyz;
    u_xlat45 = max(u_xlat0.w, 9.99999975e-05);
    u_xlat0.xyz = u_xlat0.xyz / vec3(u_xlat45);
    u_xlatb45 = 0.0<_MainLightShadowParams.y;
    if(u_xlatb45){
        u_xlatb45 = _MainLightShadowParams.y==1.0;
        if(u_xlatb45){
            u_xlat1 = vs_TEXCOORD4.xyxy + _MainLightShadowOffset0;
            vec3 txVec0 = vec3(u_xlat1.xy,vs_TEXCOORD4.z);
            u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec0, 0.0);
            vec3 txVec1 = vec3(u_xlat1.zw,vs_TEXCOORD4.z);
            u_xlat2.y = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec1, 0.0);
            u_xlat1 = vs_TEXCOORD4.xyxy + _MainLightShadowOffset1;
            vec3 txVec2 = vec3(u_xlat1.xy,vs_TEXCOORD4.z);
            u_xlat2.z = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec2, 0.0);
            vec3 txVec3 = vec3(u_xlat1.zw,vs_TEXCOORD4.z);
            u_xlat2.w = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec3, 0.0);
            u_xlat45 = dot(u_xlat2, vec4(0.25, 0.25, 0.25, 0.25));
        } else {
            u_xlatb1 = _MainLightShadowParams.y==2.0;
            if(u_xlatb1){
                u_xlat1.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat1.xy = floor(u_xlat1.xy);
                u_xlat31.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + (-u_xlat1.xy);
                u_xlat2 = u_xlat31.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat3 = u_xlat2.xxzz * u_xlat2.xxzz;
                u_xlat2.xz = u_xlat3.yw * vec2(0.0799999982, 0.0799999982);
                u_xlat3.xy = u_xlat3.xz * vec2(0.5, 0.5) + (-u_xlat31.xy);
                u_xlat33.xy = (-u_xlat31.xy) + vec2(1.0, 1.0);
                u_xlat4.xy = min(u_xlat31.xy, vec2(0.0, 0.0));
                u_xlat4.xy = (-u_xlat4.xy) * u_xlat4.xy + u_xlat33.xy;
                u_xlat31.xy = max(u_xlat31.xy, vec2(0.0, 0.0));
                u_xlat31.xy = (-u_xlat31.xy) * u_xlat31.xy + u_xlat2.yw;
                u_xlat4.xy = u_xlat4.xy + vec2(1.0, 1.0);
                u_xlat31.xy = u_xlat31.xy + vec2(1.0, 1.0);
                u_xlat5.xy = u_xlat3.xy * vec2(0.159999996, 0.159999996);
                u_xlat3.xy = u_xlat33.xy * vec2(0.159999996, 0.159999996);
                u_xlat4.xy = u_xlat4.xy * vec2(0.159999996, 0.159999996);
                u_xlat6.xy = u_xlat31.xy * vec2(0.159999996, 0.159999996);
                u_xlat31.xy = u_xlat2.yw * vec2(0.159999996, 0.159999996);
                u_xlat5.z = u_xlat4.x;
                u_xlat5.w = u_xlat31.x;
                u_xlat3.z = u_xlat6.x;
                u_xlat3.w = u_xlat2.x;
                u_xlat7 = u_xlat3.zwxz + u_xlat5.zwxz;
                u_xlat4.z = u_xlat5.y;
                u_xlat4.w = u_xlat31.y;
                u_xlat6.z = u_xlat3.y;
                u_xlat6.w = u_xlat2.z;
                u_xlat2.xyz = u_xlat4.zyw + u_xlat6.zyw;
                u_xlat3.xyz = u_xlat3.xzw / u_xlat7.zwy;
                u_xlat3.xyz = u_xlat3.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat4.xyz = u_xlat6.zyw / u_xlat2.xyz;
                u_xlat4.xyz = u_xlat4.xyz + vec3(-2.5, -0.5, 1.5);
                u_xlat3.xyz = u_xlat3.yxz * _MainLightShadowmapSize.xxx;
                u_xlat4.xyz = u_xlat4.xyz * _MainLightShadowmapSize.yyy;
                u_xlat3.w = u_xlat4.x;
                u_xlat5 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat3.ywxw;
                u_xlat31.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat3.zw;
                u_xlat4.w = u_xlat3.y;
                u_xlat3.yw = u_xlat4.yz;
                u_xlat6 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat3.xyzy;
                u_xlat4 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.wywz;
                u_xlat3 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat3.xwzw;
                u_xlat8 = u_xlat2.xxxy * u_xlat7.zwyz;
                u_xlat9 = u_xlat2.yyzz * u_xlat7;
                u_xlat1.x = u_xlat2.z * u_xlat7.y;
                vec3 txVec4 = vec3(u_xlat5.xy,vs_TEXCOORD4.z);
                u_xlat16 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec4, 0.0);
                vec3 txVec5 = vec3(u_xlat5.zw,vs_TEXCOORD4.z);
                u_xlat2.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec5, 0.0);
                u_xlat2.x = u_xlat2.x * u_xlat8.y;
                u_xlat16 = u_xlat8.x * u_xlat16 + u_xlat2.x;
                vec3 txVec6 = vec3(u_xlat31.xy,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec6, 0.0);
                u_xlat16 = u_xlat8.z * u_xlat31.x + u_xlat16;
                vec3 txVec7 = vec3(u_xlat4.xy,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec7, 0.0);
                u_xlat16 = u_xlat8.w * u_xlat31.x + u_xlat16;
                vec3 txVec8 = vec3(u_xlat6.xy,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec8, 0.0);
                u_xlat16 = u_xlat9.x * u_xlat31.x + u_xlat16;
                vec3 txVec9 = vec3(u_xlat6.zw,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec9, 0.0);
                u_xlat16 = u_xlat9.y * u_xlat31.x + u_xlat16;
                vec3 txVec10 = vec3(u_xlat4.zw,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec10, 0.0);
                u_xlat16 = u_xlat9.z * u_xlat31.x + u_xlat16;
                vec3 txVec11 = vec3(u_xlat3.xy,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec11, 0.0);
                u_xlat16 = u_xlat9.w * u_xlat31.x + u_xlat16;
                vec3 txVec12 = vec3(u_xlat3.zw,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec12, 0.0);
                u_xlat45 = u_xlat1.x * u_xlat31.x + u_xlat16;
            } else {
                u_xlat1.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + vec2(0.5, 0.5);
                u_xlat1.xy = floor(u_xlat1.xy);
                u_xlat31.xy = vs_TEXCOORD4.xy * _MainLightShadowmapSize.zw + (-u_xlat1.xy);
                u_xlat2 = u_xlat31.xxyy + vec4(0.5, 1.0, 0.5, 1.0);
                u_xlat3 = u_xlat2.xxzz * u_xlat2.xxzz;
                u_xlat4.yw = u_xlat3.yw * vec2(0.0408160016, 0.0408160016);
                u_xlat2.xz = u_xlat3.xz * vec2(0.5, 0.5) + (-u_xlat31.xy);
                u_xlat3.xy = (-u_xlat31.xy) + vec2(1.0, 1.0);
                u_xlat33.xy = min(u_xlat31.xy, vec2(0.0, 0.0));
                u_xlat3.xy = (-u_xlat33.xy) * u_xlat33.xy + u_xlat3.xy;
                u_xlat33.xy = max(u_xlat31.xy, vec2(0.0, 0.0));
                u_xlat17.xz = (-u_xlat33.xy) * u_xlat33.xy + u_xlat2.yw;
                u_xlat3.xy = u_xlat3.xy + vec2(2.0, 2.0);
                u_xlat2.yw = u_xlat17.xz + vec2(2.0, 2.0);
                u_xlat5.z = u_xlat2.y * 0.0816320032;
                u_xlat6.xyz = u_xlat2.zxw * vec3(0.0816320032, 0.0816320032, 0.0816320032);
                u_xlat2.xy = u_xlat3.xy * vec2(0.0816320032, 0.0816320032);
                u_xlat5.x = u_xlat6.y;
                u_xlat5.yw = u_xlat31.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat3.xz = u_xlat31.xx * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat3.y = u_xlat2.x;
                u_xlat3.w = u_xlat4.y;
                u_xlat5 = u_xlat3 + u_xlat5;
                u_xlat6.yw = u_xlat31.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.163264006, 0.0816320032);
                u_xlat4.xz = u_xlat31.yy * vec2(-0.0816320032, 0.0816320032) + vec2(0.0816320032, 0.163264006);
                u_xlat4.y = u_xlat2.y;
                u_xlat2 = u_xlat4 + u_xlat6;
                u_xlat3 = u_xlat3 / u_xlat5;
                u_xlat3 = u_xlat3 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat4 = u_xlat4 / u_xlat2;
                u_xlat4 = u_xlat4 + vec4(-3.5, -1.5, 0.5, 2.5);
                u_xlat3 = u_xlat3.wxyz * _MainLightShadowmapSize.xxxx;
                u_xlat4 = u_xlat4.xwyz * _MainLightShadowmapSize.yyyy;
                u_xlat6.xzw = u_xlat3.yzw;
                u_xlat6.y = u_xlat4.x;
                u_xlat7 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyzy;
                u_xlat31.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat6.wy;
                u_xlat3.y = u_xlat6.y;
                u_xlat6.y = u_xlat4.z;
                u_xlat8 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyzy;
                u_xlat9.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat6.wy;
                u_xlat3.z = u_xlat6.y;
                u_xlat10 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat3.xyxz;
                u_xlat6.y = u_xlat4.w;
                u_xlat11 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat6.xyzy;
                u_xlat18.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat6.wy;
                u_xlat3.w = u_xlat6.y;
                u_xlat39.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat3.xw;
                u_xlat4.xzw = u_xlat6.xzw;
                u_xlat6 = u_xlat1.xyxy * _MainLightShadowmapSize.xyxy + u_xlat4.xyzy;
                u_xlat34.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat4.wy;
                u_xlat4.x = u_xlat3.x;
                u_xlat1.xy = u_xlat1.xy * _MainLightShadowmapSize.xy + u_xlat4.xy;
                u_xlat12 = u_xlat2.xxxx * u_xlat5;
                u_xlat13 = u_xlat2.yyyy * u_xlat5;
                u_xlat14 = u_xlat2.zzzz * u_xlat5;
                u_xlat2 = u_xlat2.wwww * u_xlat5;
                vec3 txVec13 = vec3(u_xlat7.xy,vs_TEXCOORD4.z);
                u_xlat3.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec13, 0.0);
                vec3 txVec14 = vec3(u_xlat7.zw,vs_TEXCOORD4.z);
                u_xlat48 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec14, 0.0);
                u_xlat48 = u_xlat48 * u_xlat12.y;
                u_xlat3.x = u_xlat12.x * u_xlat3.x + u_xlat48;
                vec3 txVec15 = vec3(u_xlat31.xy,vs_TEXCOORD4.z);
                u_xlat31.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec15, 0.0);
                u_xlat31.x = u_xlat12.z * u_xlat31.x + u_xlat3.x;
                vec3 txVec16 = vec3(u_xlat10.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec16, 0.0);
                u_xlat31.x = u_xlat12.w * u_xlat46 + u_xlat31.x;
                vec3 txVec17 = vec3(u_xlat8.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec17, 0.0);
                u_xlat31.x = u_xlat13.x * u_xlat46 + u_xlat31.x;
                vec3 txVec18 = vec3(u_xlat8.zw,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec18, 0.0);
                u_xlat31.x = u_xlat13.y * u_xlat46 + u_xlat31.x;
                vec3 txVec19 = vec3(u_xlat9.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec19, 0.0);
                u_xlat31.x = u_xlat13.z * u_xlat46 + u_xlat31.x;
                vec3 txVec20 = vec3(u_xlat10.zw,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec20, 0.0);
                u_xlat31.x = u_xlat13.w * u_xlat46 + u_xlat31.x;
                vec3 txVec21 = vec3(u_xlat11.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec21, 0.0);
                u_xlat31.x = u_xlat14.x * u_xlat46 + u_xlat31.x;
                vec3 txVec22 = vec3(u_xlat11.zw,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec22, 0.0);
                u_xlat31.x = u_xlat14.y * u_xlat46 + u_xlat31.x;
                vec3 txVec23 = vec3(u_xlat18.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec23, 0.0);
                u_xlat31.x = u_xlat14.z * u_xlat46 + u_xlat31.x;
                vec3 txVec24 = vec3(u_xlat39.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec24, 0.0);
                u_xlat31.x = u_xlat14.w * u_xlat46 + u_xlat31.x;
                vec3 txVec25 = vec3(u_xlat6.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec25, 0.0);
                u_xlat31.x = u_xlat2.x * u_xlat46 + u_xlat31.x;
                vec3 txVec26 = vec3(u_xlat6.zw,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec26, 0.0);
                u_xlat31.x = u_xlat2.y * u_xlat46 + u_xlat31.x;
                vec3 txVec27 = vec3(u_xlat34.xy,vs_TEXCOORD4.z);
                u_xlat46 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec27, 0.0);
                u_xlat31.x = u_xlat2.z * u_xlat46 + u_xlat31.x;
                vec3 txVec28 = vec3(u_xlat1.xy,vs_TEXCOORD4.z);
                u_xlat1.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec28, 0.0);
                u_xlat45 = u_xlat2.w * u_xlat1.x + u_xlat31.x;
            }
        }
    } else {
        vec3 txVec29 = vec3(vs_TEXCOORD4.xy,vs_TEXCOORD4.z);
        u_xlat45 = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture), txVec29, 0.0);
    }
    u_xlat1.x = (-_MainLightShadowParams.x) + 1.0;
    u_xlat45 = u_xlat45 * _MainLightShadowParams.x + u_xlat1.x;
    u_xlatb1 = 0.0>=vs_TEXCOORD4.z;
    u_xlatb16 = vs_TEXCOORD4.z>=1.0;
    u_xlatb1 = u_xlatb16 || u_xlatb1;
    u_xlat45 = (u_xlatb1) ? 1.0 : u_xlat45;
    u_xlat0.xyz = vs_TEXCOORD3.xyz * vec3(u_xlat45) + u_xlat0.xyz;
    u_xlat1.xyz = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).xyz;
    u_xlat1.xyz = u_xlat1.xyz * vs_TEXCOORD2.xyz;
    SV_Target3.xyz = u_xlat0.xyz * u_xlat1.xyz;
    SV_Target0 = vec4(0.0, 0.0, 0.0, 0.0);
    SV_Target1 = vec4(0.0, 0.0, 0.0, 1.0);
    SV_Target2.xyz = vs_TEXCOORD5.xyz;
    SV_Target2.w = 0.0;
    SV_Target3.w = 1.0;
    return;
}

