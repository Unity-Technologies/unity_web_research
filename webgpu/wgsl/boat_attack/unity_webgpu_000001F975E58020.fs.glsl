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
const uvec4 ImmCB_0[] = uvec4[4] (
	uvec4(0x3F800000, 0x0, 0x0, 0x0),
	uvec4(0x0, 0x3F800000, 0x0, 0x0),
	uvec4(0x0, 0x0, 0x3F800000, 0x0),
	uvec4(0x0, 0x0, 0x0, 0x3F800000));
layout(set = 1, binding = 0, std140) uniform PGlobals {
	vec2 _GlobalMipBias;
	vec4 _MainLightPosition;
	vec4 _MainLightColor;
	vec4 _AdditionalLightsCount;
	vec3 _WorldSpaceCameraPos;
	vec4 _ProjectionParams;
	vec4 unity_FogParams;
	vec4 unity_FogColor;
	mat4x4 unity_MatrixV;
};
layout(set = 1, binding = 1, std140) uniform AdditionalLights {
	vec4 _AdditionalLightsPosition[32];
	vec4 _AdditionalLightsColor[32];
	vec4 _AdditionalLightsAttenuation[32];
	vec4 _AdditionalLightsSpotDir[32];
	vec4 _AdditionalLightsOcclusionProbes[32];
	float _AdditionalLightsLayerMasks[32];
};
layout(set = 1, binding = 2, std140) uniform UnityPerDraw {
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
layout(set = 1, binding = 3, std140) uniform LightShadows {
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
	vec4 _AdditionalShadowOffset0;
	vec4 _AdditionalShadowOffset1;
	vec4 _AdditionalShadowFadeParams;
	vec4 _AdditionalShadowmapSize;
	vec4 _AdditionalShadowParams[32];
	mat4x4 _AdditionalLightsWorldToShadow[32];
};
layout(set = 0, binding = 0) uniform mediump textureCube unity_SpecCube0;
layout(set = 0, binding = 1) uniform mediump texture2D _MainTex;
layout(set = 0, binding = 2) uniform mediump texture2D _MetallicTex;
layout(set = 0, binding = 3) uniform mediump texture2D _TerrainHolesTexture;
layout(set = 0, binding = 4) uniform mediump texture2D _MainLightShadowmapTexture;
layout(set = 0, binding = 5) uniform mediump texture2D _AdditionalLightsShadowmapTexture;
layout(location = 0) in highp  vec4 vs_TEXCOORD0;
layout(location = 1) in highp  vec4 vs_TEXCOORD3;
layout(location = 2) in highp  vec4 vs_TEXCOORD4;
layout(location = 3) in highp  vec4 vs_TEXCOORD5;
layout(location = 4) in highp  vec3 vs_TEXCOORD7;
layout(location = 0) out highp vec4 SV_Target0;
vec4 u_xlat0;
bool u_xlatb0;
vec4 u_xlat1;
vec4 u_xlat2;
vec3 u_xlat3;
bvec4 u_xlatb3;
vec4 u_xlat4;
vec4 u_xlat5;
vec4 u_xlat6;
vec4 u_xlat7;
vec3 u_xlat8;
int u_xlati8;
float u_xlat9;
vec4 u_xlat10;
int u_xlati10;
vec4 u_xlat11;
bvec3 u_xlatb11;
vec3 u_xlat13;
int u_xlati13;
uint u_xlatu13;
vec3 u_xlat15;
vec3 u_xlat16;
vec3 u_xlat17;
vec3 u_xlat19;
vec3 u_xlat21;
float u_xlat22;
bvec3 u_xlatb22;
float u_xlat25;
bool u_xlatb25;
float u_xlat34;
bool u_xlatb34;
float u_xlat36;
uint u_xlatu36;
float u_xlat37;
bool u_xlatb37;
float u_xlat38;
uint u_xlatu38;
float u_xlat42;
int u_xlati42;
uint u_xlatu42;
bool u_xlatb42;
float u_xlat44;
layout(set = 0, binding = 6) uniform mediump  sampler samplerunity_SpecCube0;
layout(set = 0, binding = 7) uniform mediump  sampler sampler_MainTex;
layout(set = 0, binding = 8) uniform mediump  sampler sampler_MetallicTex;
layout(set = 0, binding = 9) uniform mediump  sampler sampler_TerrainHolesTexture;
layout(set = 0, binding = 10) uniform mediump  samplerShadow sampler_LinearClampCompare;
void main()
{
    u_xlat0.x = texture(sampler2D(_TerrainHolesTexture, sampler_TerrainHolesTexture), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlatb0 = u_xlat0.x==0.0;
    if(((int(u_xlatb0) * int(0xffffffffu)))!=0){discard;}
    u_xlat0 = texture(sampler2D(_MainTex, sampler_MainTex), vs_TEXCOORD0.xy, _GlobalMipBias.x);
    u_xlat1.x = texture(sampler2D(_MetallicTex, sampler_MetallicTex), vs_TEXCOORD0.xy, _GlobalMipBias.x).x;
    u_xlat13.x = dot(vs_TEXCOORD3.xyz, vs_TEXCOORD3.xyz);
    u_xlat13.x = inversesqrt(u_xlat13.x);
    u_xlat2.xyz = u_xlat13.xxx * vs_TEXCOORD3.xyz;
    u_xlat13.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres0.xyz);
    u_xlat3.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres1.xyz);
    u_xlat4.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres2.xyz);
    u_xlat5.xyz = vs_TEXCOORD7.xyz + (-_CascadeShadowSplitSpheres3.xyz);
    u_xlat6.x = dot(u_xlat13.xyz, u_xlat13.xyz);
    u_xlat6.y = dot(u_xlat3.xyz, u_xlat3.xyz);
    u_xlat6.z = dot(u_xlat4.xyz, u_xlat4.xyz);
    u_xlat6.w = dot(u_xlat5.xyz, u_xlat5.xyz);
    u_xlatb3 = lessThan(u_xlat6, _CascadeShadowSplitSphereRadii);
    u_xlat4.x = u_xlatb3.x ? float(1.0) : 0.0;
    u_xlat4.y = u_xlatb3.y ? float(1.0) : 0.0;
    u_xlat4.z = u_xlatb3.z ? float(1.0) : 0.0;
    u_xlat4.w = u_xlatb3.w ? float(1.0) : 0.0;
;
    u_xlat13.x = (u_xlatb3.x) ? float(-1.0) : float(-0.0);
    u_xlat13.y = (u_xlatb3.y) ? float(-1.0) : float(-0.0);
    u_xlat13.z = (u_xlatb3.z) ? float(-1.0) : float(-0.0);
    u_xlat13.xyz = u_xlat13.xyz + u_xlat4.yzw;
    u_xlat4.yzw = max(u_xlat13.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat13.x = dot(u_xlat4, vec4(4.0, 3.0, 2.0, 1.0));
    u_xlat13.x = (-u_xlat13.x) + 4.0;
    u_xlatu13 = uint(u_xlat13.x);
    u_xlati13 = int(u_xlatu13) << (2 & int(0x1F));
    u_xlat3.xyz = vs_TEXCOORD7.yyy * _MainLightWorldToShadow[(u_xlati13 + 1) / 4][(u_xlati13 + 1) % 4].xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[u_xlati13 / 4][u_xlati13 % 4].xyz * vs_TEXCOORD7.xxx + u_xlat3.xyz;
    u_xlat3.xyz = _MainLightWorldToShadow[(u_xlati13 + 2) / 4][(u_xlati13 + 2) % 4].xyz * vs_TEXCOORD7.zzz + u_xlat3.xyz;
    u_xlat13.xyz = u_xlat3.xyz + _MainLightWorldToShadow[(u_xlati13 + 3) / 4][(u_xlati13 + 3) % 4].xyz;
    u_xlat3.x = vs_TEXCOORD7.y * unity_MatrixV[1].z;
    u_xlat3.x = unity_MatrixV[0].z * vs_TEXCOORD7.x + u_xlat3.x;
    u_xlat3.x = unity_MatrixV[2].z * vs_TEXCOORD7.z + u_xlat3.x;
    u_xlat3.x = u_xlat3.x + unity_MatrixV[3].z;
    u_xlat3.x = (-u_xlat3.x) + (-_ProjectionParams.y);
    u_xlat3.x = max(u_xlat3.x, 0.0);
    u_xlat3.x = u_xlat3.x * unity_FogParams.x;
    u_xlat2.w = 1.0;
    u_xlat4.x = dot(unity_SHAr, u_xlat2);
    u_xlat4.y = dot(unity_SHAg, u_xlat2);
    u_xlat4.z = dot(unity_SHAb, u_xlat2);
    u_xlat5 = u_xlat2.yzzx * u_xlat2.xyzz;
    u_xlat6.x = dot(unity_SHBr, u_xlat5);
    u_xlat6.y = dot(unity_SHBg, u_xlat5);
    u_xlat6.z = dot(unity_SHBb, u_xlat5);
    u_xlat38 = u_xlat2.y * u_xlat2.y;
    u_xlat38 = u_xlat2.x * u_xlat2.x + (-u_xlat38);
    u_xlat15.xyz = unity_SHC.xyz * vec3(u_xlat38) + u_xlat6.xyz;
    u_xlat15.xyz = u_xlat15.xyz + u_xlat4.xyz;
    u_xlat15.xyz = max(u_xlat15.xyz, vec3(0.0, 0.0, 0.0));
    u_xlat38 = (-u_xlat1.x) * 0.959999979 + 0.959999979;
    u_xlat4.x = (-u_xlat38) + 1.0;
    u_xlat16.xyz = u_xlat0.xyz * vec3(u_xlat38);
    u_xlat0.xyz = u_xlat0.xyz + vec3(-0.0399999991, -0.0399999991, -0.0399999991);
    u_xlat0.xyz = u_xlat1.xxx * u_xlat0.xyz + vec3(0.0399999991, 0.0399999991, 0.0399999991);
    u_xlat1.x = (-u_xlat0.w) + 1.0;
    u_xlat38 = u_xlat1.x * u_xlat1.x;
    u_xlat38 = max(u_xlat38, 0.0078125);
    u_xlat5.x = u_xlat38 * u_xlat38;
    u_xlat36 = u_xlat0.w + u_xlat4.x;
    u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
    u_xlat4.x = u_xlat38 * 4.0 + 2.0;
    vec3 txVec0 = vec3(u_xlat13.xy,u_xlat13.z);
    u_xlat13.x = textureLod(sampler2DShadow(_MainLightShadowmapTexture, sampler_LinearClampCompare), txVec0, 0.0);
    u_xlat25 = (-_MainLightShadowParams.x) + 1.0;
    u_xlat13.x = u_xlat13.x * _MainLightShadowParams.x + u_xlat25;
    u_xlatb25 = 0.0>=u_xlat13.z;
    u_xlatb37 = u_xlat13.z>=1.0;
    u_xlatb25 = u_xlatb37 || u_xlatb25;
    u_xlat13.x = (u_xlatb25) ? 1.0 : u_xlat13.x;
    u_xlat17.xyz = vs_TEXCOORD7.xyz + (-_WorldSpaceCameraPos.xyz);
    u_xlat25 = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat37 = u_xlat25 * _MainLightShadowParams.z + _MainLightShadowParams.w;
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat17.x = (-u_xlat13.x) + 1.0;
    u_xlat13.x = u_xlat37 * u_xlat17.x + u_xlat13.x;
    u_xlat6.x = vs_TEXCOORD3.w;
    u_xlat6.y = vs_TEXCOORD4.w;
    u_xlat6.z = vs_TEXCOORD5.w;
    u_xlat37 = dot((-u_xlat6.xyz), u_xlat2.xyz);
    u_xlat37 = u_xlat37 + u_xlat37;
    u_xlat17.xyz = u_xlat2.xyz * (-vec3(u_xlat37)) + (-u_xlat6.xyz);
    u_xlat37 = dot(u_xlat2.xyz, u_xlat6.xyz);
    u_xlat37 = clamp(u_xlat37, 0.0, 1.0);
    u_xlat37 = (-u_xlat37) + 1.0;
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat37 = u_xlat37 * u_xlat37;
    u_xlat42 = (-u_xlat1.x) * 0.699999988 + 1.70000005;
    u_xlat1.x = u_xlat1.x * u_xlat42;
    u_xlat1.x = u_xlat1.x * 6.0;
    u_xlat7 = textureLod(samplerCube(unity_SpecCube0, samplerunity_SpecCube0), u_xlat17.xyz, u_xlat1.x);
    u_xlat1.x = u_xlat7.w + -1.0;
    u_xlat1.x = unity_SpecCube0_HDR.w * u_xlat1.x + 1.0;
    u_xlat1.x = max(u_xlat1.x, 0.0);
    u_xlat1.x = log2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.y;
    u_xlat1.x = exp2(u_xlat1.x);
    u_xlat1.x = u_xlat1.x * unity_SpecCube0_HDR.x;
    u_xlat17.xyz = u_xlat7.xyz * u_xlat1.xxx;
    u_xlat7.xy = vec2(u_xlat38) * vec2(u_xlat38) + vec2(-1.0, 1.0);
    u_xlat1.x = float(1.0) / u_xlat7.y;
    u_xlat19.xyz = (-u_xlat0.xyz) + vec3(u_xlat36);
    u_xlat19.xyz = vec3(u_xlat37) * u_xlat19.xyz + u_xlat0.xyz;
    u_xlat19.xyz = u_xlat1.xxx * u_xlat19.xyz;
    u_xlat17.xyz = u_xlat17.xyz * u_xlat19.xyz;
    u_xlat15.xyz = u_xlat15.xyz * u_xlat16.xyz + u_xlat17.xyz;
    u_xlat36 = u_xlat13.x * unity_LightData.z;
    u_xlat1.x = dot(u_xlat2.xyz, _MainLightPosition.xyz);
    u_xlat1.x = clamp(u_xlat1.x, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat1.x;
    u_xlat1.xyw = vec3(u_xlat36) * _MainLightColor.xyz;
    u_xlat17.xyz = u_xlat6.xyz + _MainLightPosition.xyz;
    u_xlat36 = dot(u_xlat17.xyz, u_xlat17.xyz);
    u_xlat36 = max(u_xlat36, 1.17549435e-38);
    u_xlat36 = inversesqrt(u_xlat36);
    u_xlat17.xyz = vec3(u_xlat36) * u_xlat17.xyz;
    u_xlat36 = dot(u_xlat2.xyz, u_xlat17.xyz);
    u_xlat36 = clamp(u_xlat36, 0.0, 1.0);
    u_xlat38 = dot(_MainLightPosition.xyz, u_xlat17.xyz);
    u_xlat38 = clamp(u_xlat38, 0.0, 1.0);
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat36 = u_xlat36 * u_xlat7.x + 1.00001001;
    u_xlat38 = u_xlat38 * u_xlat38;
    u_xlat36 = u_xlat36 * u_xlat36;
    u_xlat38 = max(u_xlat38, 0.100000001);
    u_xlat36 = u_xlat36 * u_xlat38;
    u_xlat36 = u_xlat4.x * u_xlat36;
    u_xlat36 = u_xlat5.x / u_xlat36;
    u_xlat17.xyz = u_xlat0.xyz * vec3(u_xlat36) + u_xlat16.xyz;
    u_xlat36 = min(_AdditionalLightsCount.x, unity_LightData.y);
    u_xlatu36 =  uint(int(u_xlat36));
    u_xlat25 = u_xlat25 * _AdditionalShadowFadeParams.x + _AdditionalShadowFadeParams.y;
    u_xlat25 = clamp(u_xlat25, 0.0, 1.0);
    u_xlat19.x = float(0.0);
    u_xlat19.y = float(0.0);
    u_xlat19.z = float(0.0);
    for(uint u_xlatu_loop_1 = 0u ; u_xlatu_loop_1<u_xlatu36 ; u_xlatu_loop_1++)
    {
        u_xlatu42 = u_xlatu_loop_1 >> (2u & uint(0x1F));
        u_xlati8 = int(u_xlatu_loop_1 & 3u);
        u_xlat42 = dot(unity_LightIndices[int(u_xlatu42)], uintBitsToFloat(ImmCB_0[u_xlati8]));
        u_xlati42 = int(u_xlat42);
        u_xlat8.xyz = (-vs_TEXCOORD7.xyz) * _AdditionalLightsPosition[u_xlati42].www + _AdditionalLightsPosition[u_xlati42].xyz;
        u_xlat44 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat44 = max(u_xlat44, 6.10351562e-05);
        u_xlat9 = inversesqrt(u_xlat44);
        u_xlat21.xyz = u_xlat8.xyz * vec3(u_xlat9);
        u_xlat10.x = float(1.0) / float(u_xlat44);
        u_xlat44 = u_xlat44 * _AdditionalLightsAttenuation[u_xlati42].x;
        u_xlat44 = (-u_xlat44) * u_xlat44 + 1.0;
        u_xlat44 = max(u_xlat44, 0.0);
        u_xlat44 = u_xlat44 * u_xlat44;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(_AdditionalLightsSpotDir[u_xlati42].xyz, u_xlat21.xyz);
        u_xlat10.x = u_xlat10.x * _AdditionalLightsAttenuation[u_xlati42].z + _AdditionalLightsAttenuation[u_xlati42].w;
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat10.x = u_xlat10.x * u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlati10 = int(_AdditionalShadowParams[u_xlati42].w);
        u_xlatb22.x = u_xlati10>=0;
        if(u_xlatb22.x){
            u_xlatb22.x = vec4(0.0, 0.0, 0.0, 0.0)!=vec4(_AdditionalShadowParams[u_xlati42].z);
            if(u_xlatb22.x){
                u_xlatb22.xyz = greaterThanEqual(abs(u_xlat21.zzyy), abs(u_xlat21.xyxx)).xyz;
                u_xlatb22.x = u_xlatb22.y && u_xlatb22.x;
                u_xlatb11.xyz = lessThan((-u_xlat21.zyxz), vec4(0.0, 0.0, 0.0, 0.0)).xyz;
                u_xlat11.x = (u_xlatb11.x) ? float(5.0) : float(4.0);
                u_xlat11.y = (u_xlatb11.y) ? float(3.0) : float(2.0);
                u_xlat34 = u_xlatb11.z ? 1.0 : float(0.0);
                u_xlat34 = (u_xlatb22.z) ? u_xlat11.y : u_xlat34;
                u_xlat22 = (u_xlatb22.x) ? u_xlat11.x : u_xlat34;
                u_xlat34 = trunc(_AdditionalShadowParams[u_xlati42].w);
                u_xlat22 = u_xlat22 + u_xlat34;
                u_xlati10 = int(u_xlat22);
            }
            u_xlati10 = u_xlati10 << (2 & int(0x1F));
            u_xlat11 = vs_TEXCOORD7.yyyy * _AdditionalLightsWorldToShadow[(u_xlati10 + 1) / 4][(u_xlati10 + 1) % 4];
            u_xlat11 = _AdditionalLightsWorldToShadow[u_xlati10 / 4][u_xlati10 % 4] * vs_TEXCOORD7.xxxx + u_xlat11;
            u_xlat11 = _AdditionalLightsWorldToShadow[(u_xlati10 + 2) / 4][(u_xlati10 + 2) % 4] * vs_TEXCOORD7.zzzz + u_xlat11;
            u_xlat10 = u_xlat11 + _AdditionalLightsWorldToShadow[(u_xlati10 + 3) / 4][(u_xlati10 + 3) % 4];
            u_xlat10.xyz = u_xlat10.xyz / u_xlat10.www;
            vec3 txVec1 = vec3(u_xlat10.xy,u_xlat10.z);
            u_xlat10.x = textureLod(sampler2DShadow(_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare), txVec1, 0.0);
            u_xlat22 = 1.0 + (-_AdditionalShadowParams[u_xlati42].x);
            u_xlat10.x = u_xlat10.x * _AdditionalShadowParams[u_xlati42].x + u_xlat22;
            u_xlatb22.x = 0.0>=u_xlat10.z;
            u_xlatb34 = u_xlat10.z>=1.0;
            u_xlatb22.x = u_xlatb34 || u_xlatb22.x;
            u_xlat10.x = (u_xlatb22.x) ? 1.0 : u_xlat10.x;
        } else {
            u_xlat10.x = 1.0;
        }
        u_xlat22 = (-u_xlat10.x) + 1.0;
        u_xlat10.x = u_xlat25 * u_xlat22 + u_xlat10.x;
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.x = dot(u_xlat2.xyz, u_xlat21.xyz);
        u_xlat10.x = clamp(u_xlat10.x, 0.0, 1.0);
        u_xlat44 = u_xlat44 * u_xlat10.x;
        u_xlat10.xyz = vec3(u_xlat44) * _AdditionalLightsColor[u_xlati42].xyz;
        u_xlat8.xyz = u_xlat8.xyz * vec3(u_xlat9) + u_xlat6.xyz;
        u_xlat42 = dot(u_xlat8.xyz, u_xlat8.xyz);
        u_xlat42 = max(u_xlat42, 1.17549435e-38);
        u_xlat42 = inversesqrt(u_xlat42);
        u_xlat8.xyz = vec3(u_xlat42) * u_xlat8.xyz;
        u_xlat42 = dot(u_xlat2.xyz, u_xlat8.xyz);
        u_xlat42 = clamp(u_xlat42, 0.0, 1.0);
        u_xlat8.x = dot(u_xlat21.xyz, u_xlat8.xyz);
        u_xlat8.x = clamp(u_xlat8.x, 0.0, 1.0);
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat42 = u_xlat42 * u_xlat7.x + 1.00001001;
        u_xlat8.x = u_xlat8.x * u_xlat8.x;
        u_xlat42 = u_xlat42 * u_xlat42;
        u_xlat8.x = max(u_xlat8.x, 0.100000001);
        u_xlat42 = u_xlat42 * u_xlat8.x;
        u_xlat42 = u_xlat4.x * u_xlat42;
        u_xlat42 = u_xlat5.x / u_xlat42;
        u_xlat8.xyz = u_xlat0.xyz * vec3(u_xlat42) + u_xlat16.xyz;
        u_xlat19.xyz = u_xlat8.xyz * u_xlat10.xyz + u_xlat19.xyz;
    }
    u_xlat0.xyz = u_xlat17.xyz * u_xlat1.xyw + u_xlat15.xyz;
    u_xlat0.xyz = u_xlat19.xyz + u_xlat0.xyz;
    u_xlat36 = u_xlat3.x * (-u_xlat3.x);
    u_xlat36 = exp2(u_xlat36);
    u_xlat0.xyz = u_xlat0.xyz + (-unity_FogColor.xyz);
    SV_Target0.xyz = vec3(u_xlat36) * u_xlat0.xyz + unity_FogColor.xyz;
    SV_Target0.w = 1.0;
    return;
}

