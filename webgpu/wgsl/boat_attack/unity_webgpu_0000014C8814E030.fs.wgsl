diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

var<private> u_xlat1 : vec2<f32>;

@group(0) @binding(4) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicGlossMap : sampler;

var<private> u_xlat2 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_54 : UnityPerMaterial;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> u_xlat53 : vec2<f32>;

var<private> u_xlat78 : f32;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

var<private> u_xlat29 : vec3<f32>;

var<private> u_xlatb29 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat55 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_313 : UnityPerDraw;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat79 : f32;

var<private> u_xlat28 : vec3<f32>;

var<private> u_xlat27 : vec3<f32>;

var<private> u_xlat82 : f32;

var<private> u_xlatb83 : bool;

@group(1) @binding(4) var<uniform> x_484 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(15) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat83 : f32;

var<private> u_xlatb6 : bool;

var<private> u_xlat58 : vec2<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat60 : vec2<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec4<f32>;

var<private> u_xlat14 : vec4<f32>;

var<private> u_xlat32 : vec3<f32>;

var<private> u_xlat33 : vec3<f32>;

var<private> u_xlat15 : vec4<f32>;

var<private> u_xlat16 : vec4<f32>;

var<private> u_xlat34 : vec2<f32>;

var<private> u_xlat66 : vec2<f32>;

var<private> u_xlat61 : vec2<f32>;

var<private> u_xlat17 : vec4<f32>;

var<private> u_xlat18 : vec4<f32>;

var<private> u_xlat19 : vec4<f32>;

var<private> u_xlat86 : f32;

var<private> u_xlat84 : f32;

var<private> u_xlatb32 : vec2<bool>;

@group(1) @binding(5) var<uniform> x_1833 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat85 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatu27 : u32;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu6 : u32;

var<private> u_xlati59 : i32;

var<private> u_xlati6 : i32;

@group(1) @binding(1) var<uniform> x_2332 : AdditionalLights;

var<private> u_xlat59 : f32;

var<private> u_xlati86 : i32;

var<private> u_xlatb87 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat88 : f32;

var<private> u_xlat87 : f32;

var<private> u_xlatb86 : bool;

@group(0) @binding(6) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlat64 : vec2<f32>;

var<private> u_xlat20 : vec4<f32>;

var<private> u_xlat89 : f32;

var<private> u_xlat39 : vec3<f32>;

var<private> u_xlat21 : vec4<f32>;

var<private> u_xlat22 : vec4<f32>;

var<private> u_xlat40 : vec2<f32>;

var<private> u_xlat72 : vec2<f32>;

var<private> u_xlat67 : vec2<f32>;

var<private> u_xlat23 : vec4<f32>;

var<private> u_xlat24 : vec4<f32>;

var<private> u_xlat25 : vec4<f32>;

var<private> u_xlatb88 : bool;

var<private> u_xlati87 : i32;

var<private> u_xlati88 : i32;

var<private> u_xlati11 : i32;

var<private> u_xlat37 : vec3<f32>;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu83 : u32;

fn main_1() {
  var x_194 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var x_1917 : f32;
  var x_1929 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_2470 : f32;
  var x_2480 : f32;
  var txVec30 : vec3<f32>;
  var txVec31 : vec3<f32>;
  var txVec32 : vec3<f32>;
  var txVec33 : vec3<f32>;
  var txVec34 : vec3<f32>;
  var txVec35 : vec3<f32>;
  var txVec36 : vec3<f32>;
  var txVec37 : vec3<f32>;
  var txVec38 : vec3<f32>;
  var txVec39 : vec3<f32>;
  var txVec40 : vec3<f32>;
  var txVec41 : vec3<f32>;
  var txVec42 : vec3<f32>;
  var txVec43 : vec3<f32>;
  var txVec44 : vec3<f32>;
  var txVec45 : vec3<f32>;
  var txVec46 : vec3<f32>;
  var txVec47 : vec3<f32>;
  var txVec48 : vec3<f32>;
  var txVec49 : vec3<f32>;
  var txVec50 : vec3<f32>;
  var txVec51 : vec3<f32>;
  var txVec52 : vec3<f32>;
  var txVec53 : vec3<f32>;
  var txVec54 : vec3<f32>;
  var txVec55 : vec3<f32>;
  var txVec56 : vec3<f32>;
  var txVec57 : vec3<f32>;
  var txVec58 : vec3<f32>;
  var txVec59 : vec3<f32>;
  var x_4063 : f32;
  var x_4076 : f32;
  var x_4134 : f32;
  var x_4145 : vec3<f32>;
  var x_4348 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_44 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : f32 = x_28.x_GlobalMipBias.x;
  let x_47 : vec4<f32> = textureSampleBias(x_MetallicGlossMap, sampler_MetallicGlossMap, x_44, x_46);
  u_xlat1 = vec2<f32>(x_47.x, x_47.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_54.x_BaseColor;
  u_xlat2 = (vec4<f32>(x_50.w, x_50.x, x_50.y, x_50.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_68 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : f32 = x_28.x_GlobalMipBias.x;
  let x_71 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_68, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.w);
  let x_75 : f32 = u_xlat3.x;
  let x_78 : f32 = u_xlat3.z;
  u_xlat3.x = (x_75 * x_78);
  let x_82 : vec3<f32> = u_xlat3;
  u_xlat53 = ((vec2<f32>(x_82.x, x_82.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_91 : vec2<f32> = u_xlat53;
  let x_92 : vec2<f32> = u_xlat53;
  u_xlat78 = dot(x_91, x_92);
  let x_94 : f32 = u_xlat78;
  u_xlat78 = min(x_94, 1.0f);
  let x_97 : f32 = u_xlat78;
  u_xlat78 = (-(x_97) + 1.0f);
  let x_100 : f32 = u_xlat78;
  u_xlat78 = sqrt(x_100);
  let x_102 : f32 = u_xlat78;
  u_xlat78 = max(x_102, 0.0000000000000001f);
  let x_105 : vec2<f32> = u_xlat53;
  let x_108 : f32 = x_54.x_BumpScale;
  let x_110 : f32 = x_54.x_BumpScale;
  let x_111 : vec2<f32> = vec2<f32>(x_108, x_110);
  u_xlat53 = (x_105 * vec2<f32>(x_111.x, x_111.y));
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_123 : f32 = x_28.x_GlobalMipBias.x;
  let x_124 : vec4<f32> = textureSampleBias(x_OcclusionMap, sampler_OcclusionMap, x_121, x_123);
  u_xlat3.x = x_124.y;
  let x_131 : f32 = x_54.x_OcclusionStrength;
  u_xlat29.x = (-(x_131) + 1.0f);
  let x_136 : f32 = u_xlat3.x;
  let x_138 : f32 = x_54.x_OcclusionStrength;
  let x_141 : f32 = u_xlat29.x;
  u_xlat3.x = ((x_136 * x_138) + x_141);
  let x_150 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb29 = (x_150 == 0.0f);
  let x_156 : vec3<f32> = vs_TEXCOORD1;
  let x_161 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_162 : vec3<f32> = (-(x_156) + x_161);
  let x_163 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_162.x, x_162.y, x_162.z, x_163.w);
  let x_166 : vec4<f32> = u_xlat4;
  let x_168 : vec4<f32> = u_xlat4;
  u_xlat55 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat55;
  u_xlat55 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat55;
  let x_175 : vec4<f32> = u_xlat4;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_183 : f32 = x_28.unity_MatrixV[0i].z;
  u_xlat5.x = x_183;
  let x_187 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat5.y = x_187;
  let x_190 : f32 = x_28.unity_MatrixV[2i].z;
  u_xlat5.z = x_190;
  let x_192 : bool = u_xlatb29;
  if (x_192) {
    let x_197 : vec4<f32> = u_xlat4;
    x_194 = vec3<f32>(x_197.x, x_197.y, x_197.z);
  } else {
    let x_200 : vec3<f32> = u_xlat5;
    x_194 = x_200;
  }
  let x_201 : vec3<f32> = x_194;
  u_xlat29 = x_201;
  let x_203 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec4<f32> = vs_TEXCOORD3;
  let x_209 : vec3<f32> = (vec3<f32>(x_203.z, x_203.x, x_203.y) * vec3<f32>(x_207.y, x_207.z, x_207.x));
  let x_210 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_212 : vec3<f32> = vs_TEXCOORD2;
  let x_214 : vec4<f32> = vs_TEXCOORD3;
  let x_217 : vec4<f32> = u_xlat4;
  let x_220 : vec3<f32> = ((vec3<f32>(x_212.y, x_212.z, x_212.x) * vec3<f32>(x_214.z, x_214.x, x_214.y)) + -(vec3<f32>(x_217.x, x_217.y, x_217.z)));
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = vs_TEXCOORD3;
  let x_227 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225.w, x_225.w, x_225.w));
  let x_228 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_230 : vec2<f32> = u_xlat53;
  let x_232 : vec4<f32> = u_xlat4;
  let x_234 : vec3<f32> = (vec3<f32>(x_230.y, x_230.y, x_230.y) * vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_237 : vec2<f32> = u_xlat53;
  let x_239 : vec4<f32> = vs_TEXCOORD3;
  let x_242 : vec4<f32> = u_xlat4;
  let x_244 : vec3<f32> = ((vec3<f32>(x_237.x, x_237.x, x_237.x) * vec3<f32>(x_239.x, x_239.y, x_239.z)) + vec3<f32>(x_242.x, x_242.y, x_242.z));
  let x_245 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_244.x, x_244.y, x_244.z, x_245.w);
  let x_247 : f32 = u_xlat78;
  let x_249 : vec3<f32> = vs_TEXCOORD2;
  let x_251 : vec4<f32> = u_xlat4;
  let x_253 : vec3<f32> = ((vec3<f32>(x_247, x_247, x_247) * x_249) + vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_256 : vec4<f32> = u_xlat4;
  let x_258 : vec4<f32> = u_xlat4;
  u_xlat78 = dot(vec3<f32>(x_256.x, x_256.y, x_256.z), vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : f32 = u_xlat78;
  u_xlat78 = inverseSqrt(x_261);
  let x_263 : f32 = u_xlat78;
  let x_265 : vec4<f32> = u_xlat4;
  let x_267 : vec3<f32> = (vec3<f32>(x_263, x_263, x_263) * vec3<f32>(x_265.x, x_265.y, x_265.z));
  let x_268 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
  let x_272 : f32 = vs_TEXCOORD1.y;
  let x_274 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat78 = (x_272 * x_274);
  let x_277 : f32 = x_28.unity_MatrixV[0i].z;
  let x_279 : f32 = vs_TEXCOORD1.x;
  let x_281 : f32 = u_xlat78;
  u_xlat78 = ((x_277 * x_279) + x_281);
  let x_284 : f32 = x_28.unity_MatrixV[2i].z;
  let x_286 : f32 = vs_TEXCOORD1.z;
  let x_288 : f32 = u_xlat78;
  u_xlat78 = ((x_284 * x_286) + x_288);
  let x_290 : f32 = u_xlat78;
  let x_293 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat78 = (x_290 + x_293);
  let x_295 : f32 = u_xlat78;
  let x_299 : f32 = x_28.x_ProjectionParams.y;
  u_xlat78 = (-(x_295) + -(x_299));
  let x_302 : f32 = u_xlat78;
  u_xlat78 = max(x_302, 0.0f);
  let x_304 : f32 = u_xlat78;
  let x_307 : f32 = x_28.unity_FogParams.x;
  u_xlat78 = (x_304 * x_307);
  u_xlat4.w = 1.0f;
  let x_316 : vec4<f32> = x_313.unity_SHAr;
  let x_317 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_316, x_317);
  let x_322 : vec4<f32> = x_313.unity_SHAg;
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_322, x_323);
  let x_328 : vec4<f32> = x_313.unity_SHAb;
  let x_329 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_328, x_329);
  let x_333 : vec4<f32> = u_xlat4;
  let x_335 : vec4<f32> = u_xlat4;
  u_xlat6 = (vec4<f32>(x_333.y, x_333.z, x_333.z, x_333.x) * vec4<f32>(x_335.x, x_335.y, x_335.z, x_335.z));
  let x_341 : vec4<f32> = x_313.unity_SHBr;
  let x_342 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_341, x_342);
  let x_347 : vec4<f32> = x_313.unity_SHBg;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_347, x_348);
  let x_353 : vec4<f32> = x_313.unity_SHBb;
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_353, x_354);
  let x_358 : f32 = u_xlat4.y;
  let x_360 : f32 = u_xlat4.y;
  u_xlat53.x = (x_358 * x_360);
  let x_364 : f32 = u_xlat4.x;
  let x_366 : f32 = u_xlat4.x;
  let x_369 : f32 = u_xlat53.x;
  u_xlat53.x = ((x_364 * x_366) + -(x_369));
  let x_375 : vec4<f32> = x_313.unity_SHC;
  let x_377 : vec2<f32> = u_xlat53;
  let x_380 : vec4<f32> = u_xlat7;
  let x_382 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_377.x, x_377.x, x_377.x)) + vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_383 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec3<f32> = u_xlat5;
  let x_386 : vec4<f32> = u_xlat6;
  u_xlat5 = (x_385 + vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec3<f32> = u_xlat5;
  u_xlat5 = max(x_389, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_393 : f32 = u_xlat1.x;
  u_xlat53.x = ((-(x_393) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_401 : f32 = u_xlat1.y;
  let x_403 : f32 = x_54.x_Smoothness;
  let x_406 : f32 = u_xlat53.x;
  u_xlat79 = ((x_401 * x_403) + -(x_406));
  let x_410 : vec2<f32> = u_xlat53;
  let x_412 : vec4<f32> = u_xlat2;
  u_xlat28 = (vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.y, x_412.z, x_412.w));
  let x_415 : vec4<f32> = u_xlat0;
  let x_418 : vec4<f32> = x_54.x_BaseColor;
  let x_423 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_418.x, x_418.y, x_418.z)) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_424 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  let x_426 : vec2<f32> = u_xlat1;
  let x_428 : vec4<f32> = u_xlat0;
  let x_433 : vec3<f32> = ((vec3<f32>(x_426.x, x_426.x, x_426.x) * vec3<f32>(x_428.x, x_428.y, x_428.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_434 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_437 : f32 = u_xlat1.y;
  let x_440 : f32 = x_54.x_Smoothness;
  u_xlat1.x = ((-(x_437) * x_440) + 1.0f);
  let x_446 : f32 = u_xlat1.x;
  let x_448 : f32 = u_xlat1.x;
  u_xlat27.x = (x_446 * x_448);
  let x_452 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_452, 0.0078125f);
  let x_457 : f32 = u_xlat27.x;
  let x_459 : f32 = u_xlat27.x;
  u_xlat53.x = (x_457 * x_459);
  let x_462 : f32 = u_xlat79;
  u_xlat79 = (x_462 + 1.0f);
  let x_464 : f32 = u_xlat79;
  u_xlat79 = clamp(x_464, 0.0f, 1.0f);
  let x_468 : f32 = u_xlat27.x;
  u_xlat82 = ((x_468 * 4.0f) + 2.0f);
  let x_473 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_473, 1.0f);
  let x_486 : f32 = x_484.x_MainLightShadowParams.y;
  u_xlatb83 = (0.0f < x_486);
  let x_488 : bool = u_xlatb83;
  if (x_488) {
    let x_492 : f32 = x_484.x_MainLightShadowParams.y;
    u_xlatb83 = (x_492 == 1.0f);
    let x_494 : bool = u_xlatb83;
    if (x_494) {
      let x_498 : vec4<f32> = vs_TEXCOORD6;
      let x_501 : vec4<f32> = x_484.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_501);
      let x_504 : vec4<f32> = u_xlat6;
      let x_505 : vec2<f32> = vec2<f32>(x_504.x, x_504.y);
      let x_507 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_505.x, x_505.y, x_507);
      let x_519 : vec3<f32> = txVec0;
      let x_521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_519.xy, x_519.z);
      u_xlat7.x = x_521;
      let x_524 : vec4<f32> = u_xlat6;
      let x_525 : vec2<f32> = vec2<f32>(x_524.z, x_524.w);
      let x_527 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_525.x, x_525.y, x_527);
      let x_534 : vec3<f32> = txVec1;
      let x_536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_534.xy, x_534.z);
      u_xlat7.y = x_536;
      let x_538 : vec4<f32> = vs_TEXCOORD6;
      let x_541 : vec4<f32> = x_484.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_538.x, x_538.y, x_538.x, x_538.y) + x_541);
      let x_544 : vec4<f32> = u_xlat6;
      let x_545 : vec2<f32> = vec2<f32>(x_544.x, x_544.y);
      let x_547 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_545.x, x_545.y, x_547);
      let x_554 : vec3<f32> = txVec2;
      let x_556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_554.xy, x_554.z);
      u_xlat7.z = x_556;
      let x_559 : vec4<f32> = u_xlat6;
      let x_560 : vec2<f32> = vec2<f32>(x_559.z, x_559.w);
      let x_562 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_560.x, x_560.y, x_562);
      let x_569 : vec3<f32> = txVec3;
      let x_571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_569.xy, x_569.z);
      u_xlat7.w = x_571;
      let x_574 : vec4<f32> = u_xlat7;
      u_xlat83 = dot(x_574, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_581 : f32 = x_484.x_MainLightShadowParams.y;
      u_xlatb6 = (x_581 == 2.0f);
      let x_583 : bool = u_xlatb6;
      if (x_583) {
        let x_586 : vec4<f32> = vs_TEXCOORD6;
        let x_589 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_594 : vec2<f32> = ((vec2<f32>(x_586.x, x_586.y) * vec2<f32>(x_589.z, x_589.w)) + vec2<f32>(0.5f, 0.5f));
        let x_595 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_594.x, x_594.y, x_595.z, x_595.w);
        let x_597 : vec4<f32> = u_xlat6;
        let x_599 : vec2<f32> = floor(vec2<f32>(x_597.x, x_597.y));
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
        let x_603 : vec4<f32> = vs_TEXCOORD6;
        let x_606 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_603.x, x_603.y) * vec2<f32>(x_606.z, x_606.w)) + -(vec2<f32>(x_609.x, x_609.y)));
        let x_613 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_613.x, x_613.x, x_613.y, x_613.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_618 : vec4<f32> = u_xlat7;
        let x_620 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_618.x, x_618.x, x_618.z, x_618.z) * vec4<f32>(x_620.x, x_620.x, x_620.z, x_620.z));
        let x_623 : vec4<f32> = u_xlat8;
        let x_627 : vec2<f32> = (vec2<f32>(x_623.y, x_623.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
        let x_628 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_627.x, x_628.y, x_627.y, x_628.w);
        let x_630 : vec4<f32> = u_xlat8;
        let x_633 : vec2<f32> = u_xlat58;
        let x_635 : vec2<f32> = ((vec2<f32>(x_630.x, x_630.z) * vec2<f32>(0.5f, 0.5f)) + -(x_633));
        let x_636 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_639 : vec2<f32> = u_xlat58;
        u_xlat60 = (-(x_639) + vec2<f32>(1.0f, 1.0f));
        let x_644 : vec2<f32> = u_xlat58;
        let x_646 : vec2<f32> = min(x_644, vec2<f32>(0.0f, 0.0f));
        let x_647 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat9;
        let x_652 : vec4<f32> = u_xlat9;
        let x_655 : vec2<f32> = u_xlat60;
        let x_656 : vec2<f32> = ((-(vec2<f32>(x_649.x, x_649.y)) * vec2<f32>(x_652.x, x_652.y)) + x_655);
        let x_657 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_659 : vec2<f32> = u_xlat58;
        u_xlat58 = max(x_659, vec2<f32>(0.0f, 0.0f));
        let x_661 : vec2<f32> = u_xlat58;
        let x_663 : vec2<f32> = u_xlat58;
        let x_665 : vec4<f32> = u_xlat7;
        u_xlat58 = ((-(x_661) * x_663) + vec2<f32>(x_665.y, x_665.w));
        let x_668 : vec4<f32> = u_xlat9;
        let x_670 : vec2<f32> = (vec2<f32>(x_668.x, x_668.y) + vec2<f32>(1.0f, 1.0f));
        let x_671 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
        let x_673 : vec2<f32> = u_xlat58;
        u_xlat58 = (x_673 + vec2<f32>(1.0f, 1.0f));
        let x_676 : vec4<f32> = u_xlat8;
        let x_680 : vec2<f32> = (vec2<f32>(x_676.x, x_676.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_681 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
        let x_683 : vec2<f32> = u_xlat60;
        let x_684 : vec2<f32> = (x_683 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_685 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
        let x_687 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_690 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
        let x_693 : vec2<f32> = u_xlat58;
        let x_694 : vec2<f32> = (x_693 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_695 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_694.x, x_694.y, x_695.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat58 = (vec2<f32>(x_697.y, x_697.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
        let x_701 : f32 = u_xlat9.x;
        u_xlat10.z = x_701;
        let x_704 : f32 = u_xlat58.x;
        u_xlat10.w = x_704;
        let x_707 : f32 = u_xlat11.x;
        u_xlat8.z = x_707;
        let x_710 : f32 = u_xlat7.x;
        u_xlat8.w = x_710;
        let x_713 : vec4<f32> = u_xlat8;
        let x_715 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_713.z, x_713.w, x_713.x, x_713.z) + vec4<f32>(x_715.z, x_715.w, x_715.x, x_715.z));
        let x_719 : f32 = u_xlat10.y;
        u_xlat9.z = x_719;
        let x_722 : f32 = u_xlat58.y;
        u_xlat9.w = x_722;
        let x_725 : f32 = u_xlat8.y;
        u_xlat11.z = x_725;
        let x_728 : f32 = u_xlat7.z;
        u_xlat11.w = x_728;
        let x_730 : vec4<f32> = u_xlat9;
        let x_732 : vec4<f32> = u_xlat11;
        let x_734 : vec3<f32> = (vec3<f32>(x_730.z, x_730.y, x_730.w) + vec3<f32>(x_732.z, x_732.y, x_732.w));
        let x_735 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
        let x_737 : vec4<f32> = u_xlat8;
        let x_739 : vec4<f32> = u_xlat12;
        let x_741 : vec3<f32> = (vec3<f32>(x_737.x, x_737.z, x_737.w) / vec3<f32>(x_739.z, x_739.w, x_739.y));
        let x_742 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
        let x_744 : vec4<f32> = u_xlat8;
        let x_750 : vec3<f32> = (vec3<f32>(x_744.x, x_744.y, x_744.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_751 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
        let x_753 : vec4<f32> = u_xlat11;
        let x_755 : vec4<f32> = u_xlat7;
        let x_757 : vec3<f32> = (vec3<f32>(x_753.z, x_753.y, x_753.w) / vec3<f32>(x_755.x, x_755.y, x_755.z));
        let x_758 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
        let x_760 : vec4<f32> = u_xlat9;
        let x_762 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_763 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
        let x_765 : vec4<f32> = u_xlat8;
        let x_768 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_770 : vec3<f32> = (vec3<f32>(x_765.y, x_765.x, x_765.z) * vec3<f32>(x_768.x, x_768.x, x_768.x));
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat9;
        let x_776 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_778 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(x_776.y, x_776.y, x_776.y));
        let x_779 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
        let x_782 : f32 = u_xlat9.x;
        u_xlat8.w = x_782;
        let x_784 : vec4<f32> = u_xlat6;
        let x_787 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_790 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_784.x, x_784.y, x_784.x, x_784.y) * vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.y)) + vec4<f32>(x_790.y, x_790.w, x_790.x, x_790.w));
        let x_793 : vec4<f32> = u_xlat6;
        let x_796 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat58 = ((vec2<f32>(x_793.x, x_793.y) * vec2<f32>(x_796.x, x_796.y)) + vec2<f32>(x_799.z, x_799.w));
        let x_803 : f32 = u_xlat8.y;
        u_xlat9.w = x_803;
        let x_805 : vec4<f32> = u_xlat9;
        let x_806 : vec2<f32> = vec2<f32>(x_805.y, x_805.z);
        let x_807 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_807.x, x_806.x, x_807.z, x_806.y);
        let x_809 : vec4<f32> = u_xlat6;
        let x_812 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_809.x, x_809.y, x_809.x, x_809.y) * vec4<f32>(x_812.x, x_812.y, x_812.x, x_812.y)) + vec4<f32>(x_815.x, x_815.y, x_815.z, x_815.y));
        let x_818 : vec4<f32> = u_xlat6;
        let x_821 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_824 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_818.x, x_818.y, x_818.x, x_818.y) * vec4<f32>(x_821.x, x_821.y, x_821.x, x_821.y)) + vec4<f32>(x_824.w, x_824.y, x_824.w, x_824.z));
        let x_827 : vec4<f32> = u_xlat6;
        let x_830 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_833 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_827.x, x_827.y, x_827.x, x_827.y) * vec4<f32>(x_830.x, x_830.y, x_830.x, x_830.y)) + vec4<f32>(x_833.x, x_833.w, x_833.z, x_833.w));
        let x_837 : vec4<f32> = u_xlat7;
        let x_839 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_837.x, x_837.x, x_837.x, x_837.y) * vec4<f32>(x_839.z, x_839.w, x_839.y, x_839.z));
        let x_843 : vec4<f32> = u_xlat7;
        let x_845 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_843.y, x_843.y, x_843.z, x_843.z) * x_845);
        let x_848 : f32 = u_xlat7.z;
        let x_850 : f32 = u_xlat12.y;
        u_xlat6.x = (x_848 * x_850);
        let x_854 : vec4<f32> = u_xlat10;
        let x_855 : vec2<f32> = vec2<f32>(x_854.x, x_854.y);
        let x_857 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_865 : vec3<f32> = txVec4;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_865.xy, x_865.z);
        u_xlat32.x = x_867;
        let x_870 : vec4<f32> = u_xlat10;
        let x_871 : vec2<f32> = vec2<f32>(x_870.z, x_870.w);
        let x_873 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec5;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_880.xy, x_880.z);
        u_xlat7.x = x_882;
        let x_885 : f32 = u_xlat7.x;
        let x_887 : f32 = u_xlat13.y;
        u_xlat7.x = (x_885 * x_887);
        let x_891 : f32 = u_xlat13.x;
        let x_893 : f32 = u_xlat32.x;
        let x_896 : f32 = u_xlat7.x;
        u_xlat32.x = ((x_891 * x_893) + x_896);
        let x_900 : vec2<f32> = u_xlat58;
        let x_902 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_900.x, x_900.y, x_902);
        let x_909 : vec3<f32> = txVec6;
        let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_909.xy, x_909.z);
        u_xlat58.x = x_911;
        let x_914 : f32 = u_xlat13.z;
        let x_916 : f32 = u_xlat58.x;
        let x_919 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_914 * x_916) + x_919);
        let x_923 : vec4<f32> = u_xlat9;
        let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
        let x_926 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_924.x, x_924.y, x_926);
        let x_933 : vec3<f32> = txVec7;
        let x_935 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_933.xy, x_933.z);
        u_xlat58.x = x_935;
        let x_938 : f32 = u_xlat13.w;
        let x_940 : f32 = u_xlat58.x;
        let x_943 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_938 * x_940) + x_943);
        let x_947 : vec4<f32> = u_xlat11;
        let x_948 : vec2<f32> = vec2<f32>(x_947.x, x_947.y);
        let x_950 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_948.x, x_948.y, x_950);
        let x_957 : vec3<f32> = txVec8;
        let x_959 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_957.xy, x_957.z);
        u_xlat58.x = x_959;
        let x_962 : f32 = u_xlat14.x;
        let x_964 : f32 = u_xlat58.x;
        let x_967 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_962 * x_964) + x_967);
        let x_971 : vec4<f32> = u_xlat11;
        let x_972 : vec2<f32> = vec2<f32>(x_971.z, x_971.w);
        let x_974 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_972.x, x_972.y, x_974);
        let x_981 : vec3<f32> = txVec9;
        let x_983 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_981.xy, x_981.z);
        u_xlat58.x = x_983;
        let x_986 : f32 = u_xlat14.y;
        let x_988 : f32 = u_xlat58.x;
        let x_991 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_986 * x_988) + x_991);
        let x_995 : vec4<f32> = u_xlat9;
        let x_996 : vec2<f32> = vec2<f32>(x_995.z, x_995.w);
        let x_998 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_996.x, x_996.y, x_998);
        let x_1005 : vec3<f32> = txVec10;
        let x_1007 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1005.xy, x_1005.z);
        u_xlat58.x = x_1007;
        let x_1010 : f32 = u_xlat14.z;
        let x_1012 : f32 = u_xlat58.x;
        let x_1015 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1010 * x_1012) + x_1015);
        let x_1019 : vec4<f32> = u_xlat8;
        let x_1020 : vec2<f32> = vec2<f32>(x_1019.x, x_1019.y);
        let x_1022 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_1020.x, x_1020.y, x_1022);
        let x_1029 : vec3<f32> = txVec11;
        let x_1031 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1029.xy, x_1029.z);
        u_xlat58.x = x_1031;
        let x_1034 : f32 = u_xlat14.w;
        let x_1036 : f32 = u_xlat58.x;
        let x_1039 : f32 = u_xlat32.x;
        u_xlat32.x = ((x_1034 * x_1036) + x_1039);
        let x_1043 : vec4<f32> = u_xlat8;
        let x_1044 : vec2<f32> = vec2<f32>(x_1043.z, x_1043.w);
        let x_1046 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_1044.x, x_1044.y, x_1046);
        let x_1053 : vec3<f32> = txVec12;
        let x_1055 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1053.xy, x_1053.z);
        u_xlat58.x = x_1055;
        let x_1058 : f32 = u_xlat6.x;
        let x_1060 : f32 = u_xlat58.x;
        let x_1063 : f32 = u_xlat32.x;
        u_xlat83 = ((x_1058 * x_1060) + x_1063);
      } else {
        let x_1066 : vec4<f32> = vs_TEXCOORD6;
        let x_1069 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1072 : vec2<f32> = ((vec2<f32>(x_1066.x, x_1066.y) * vec2<f32>(x_1069.z, x_1069.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1073 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat6;
        let x_1077 : vec2<f32> = floor(vec2<f32>(x_1075.x, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1077.x, x_1077.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = vs_TEXCOORD6;
        let x_1083 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat6;
        u_xlat58 = ((vec2<f32>(x_1080.x, x_1080.y) * vec2<f32>(x_1083.z, x_1083.w)) + -(vec2<f32>(x_1086.x, x_1086.y)));
        let x_1090 : vec2<f32> = u_xlat58;
        u_xlat7 = (vec4<f32>(x_1090.x, x_1090.x, x_1090.y, x_1090.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1093 : vec4<f32> = u_xlat7;
        let x_1095 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1093.x, x_1093.x, x_1093.z, x_1093.z) * vec4<f32>(x_1095.x, x_1095.x, x_1095.z, x_1095.z));
        let x_1098 : vec4<f32> = u_xlat8;
        let x_1102 : vec2<f32> = (vec2<f32>(x_1098.y, x_1098.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
        let x_1103 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1105 : vec4<f32> = u_xlat8;
        let x_1108 : vec2<f32> = u_xlat58;
        let x_1110 : vec2<f32> = ((vec2<f32>(x_1105.x, x_1105.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1108));
        let x_1111 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1110.x, x_1111.y, x_1110.y, x_1111.w);
        let x_1113 : vec2<f32> = u_xlat58;
        let x_1115 : vec2<f32> = (-(x_1113) + vec2<f32>(1.0f, 1.0f));
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
        let x_1118 : vec2<f32> = u_xlat58;
        u_xlat60 = min(x_1118, vec2<f32>(0.0f, 0.0f));
        let x_1120 : vec2<f32> = u_xlat60;
        let x_1122 : vec2<f32> = u_xlat60;
        let x_1124 : vec4<f32> = u_xlat8;
        let x_1126 : vec2<f32> = ((-(x_1120) * x_1122) + vec2<f32>(x_1124.x, x_1124.y));
        let x_1127 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1126.x, x_1126.y, x_1127.z, x_1127.w);
        let x_1129 : vec2<f32> = u_xlat58;
        u_xlat60 = max(x_1129, vec2<f32>(0.0f, 0.0f));
        let x_1132 : vec2<f32> = u_xlat60;
        let x_1134 : vec2<f32> = u_xlat60;
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1138 : vec2<f32> = ((-(x_1132) * x_1134) + vec2<f32>(x_1136.y, x_1136.w));
        let x_1139 : vec3<f32> = u_xlat33;
        u_xlat33 = vec3<f32>(x_1138.x, x_1139.y, x_1138.y);
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1143 : vec2<f32> = (vec2<f32>(x_1141.x, x_1141.y) + vec2<f32>(2.0f, 2.0f));
        let x_1144 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec3<f32> = u_xlat33;
        let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.z) + vec2<f32>(2.0f, 2.0f));
        let x_1149 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1149.x, x_1148.x, x_1149.z, x_1148.y);
        let x_1152 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1152 * 0.08163200318813323975f);
        let x_1156 : vec4<f32> = u_xlat7;
        let x_1159 : vec3<f32> = (vec3<f32>(x_1156.z, x_1156.x, x_1156.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1165 : vec2<f32> = (vec2<f32>(x_1162.x, x_1162.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
        let x_1166 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1165.x, x_1165.y, x_1166.z, x_1166.w);
        let x_1169 : f32 = u_xlat11.y;
        u_xlat10.x = x_1169;
        let x_1171 : vec2<f32> = u_xlat58;
        let x_1178 : vec2<f32> = ((vec2<f32>(x_1171.x, x_1171.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1179 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1179.x, x_1178.x, x_1179.z, x_1178.y);
        let x_1181 : vec2<f32> = u_xlat58;
        let x_1185 : vec2<f32> = ((vec2<f32>(x_1181.x, x_1181.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1186 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1185.x, x_1186.y, x_1185.y, x_1186.w);
        let x_1189 : f32 = u_xlat7.x;
        u_xlat8.y = x_1189;
        let x_1192 : f32 = u_xlat9.y;
        u_xlat8.w = x_1192;
        let x_1194 : vec4<f32> = u_xlat8;
        let x_1195 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1194 + x_1195);
        let x_1197 : vec2<f32> = u_xlat58;
        let x_1200 : vec2<f32> = ((vec2<f32>(x_1197.y, x_1197.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1201.x, x_1200.x, x_1201.z, x_1200.y);
        let x_1203 : vec2<f32> = u_xlat58;
        let x_1206 : vec2<f32> = ((vec2<f32>(x_1203.y, x_1203.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
        let x_1207 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1206.x, x_1207.y, x_1206.y, x_1207.w);
        let x_1210 : f32 = u_xlat7.y;
        u_xlat9.y = x_1210;
        let x_1212 : vec4<f32> = u_xlat9;
        let x_1213 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1212 + x_1213);
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1216 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1215 / x_1216);
        let x_1218 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1218 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1224 : vec4<f32> = u_xlat9;
        let x_1225 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1224 / x_1225);
        let x_1227 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1227 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1229 : vec4<f32> = u_xlat8;
        let x_1232 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1229.w, x_1229.x, x_1229.y, x_1229.z) * vec4<f32>(x_1232.x, x_1232.x, x_1232.x, x_1232.x));
        let x_1235 : vec4<f32> = u_xlat9;
        let x_1238 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1235.x, x_1235.w, x_1235.y, x_1235.z) * vec4<f32>(x_1238.y, x_1238.y, x_1238.y, x_1238.y));
        let x_1241 : vec4<f32> = u_xlat8;
        let x_1242 : vec3<f32> = vec3<f32>(x_1241.y, x_1241.z, x_1241.w);
        let x_1243 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1242.x, x_1243.y, x_1242.y, x_1242.z);
        let x_1246 : f32 = u_xlat9.x;
        u_xlat11.y = x_1246;
        let x_1248 : vec4<f32> = u_xlat6;
        let x_1251 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1257 : vec4<f32> = u_xlat6;
        let x_1260 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1263 : vec4<f32> = u_xlat11;
        u_xlat58 = ((vec2<f32>(x_1257.x, x_1257.y) * vec2<f32>(x_1260.x, x_1260.y)) + vec2<f32>(x_1263.w, x_1263.y));
        let x_1267 : f32 = u_xlat11.y;
        u_xlat8.y = x_1267;
        let x_1270 : f32 = u_xlat9.z;
        u_xlat11.y = x_1270;
        let x_1272 : vec4<f32> = u_xlat6;
        let x_1275 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1278 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1272.x, x_1272.y, x_1272.x, x_1272.y) * vec4<f32>(x_1275.x, x_1275.y, x_1275.x, x_1275.y)) + vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1278.y));
        let x_1281 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1287 : vec4<f32> = u_xlat11;
        let x_1289 : vec2<f32> = ((vec2<f32>(x_1281.x, x_1281.y) * vec2<f32>(x_1284.x, x_1284.y)) + vec2<f32>(x_1287.w, x_1287.y));
        let x_1290 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1289.x, x_1289.y, x_1290.z, x_1290.w);
        let x_1293 : f32 = u_xlat11.y;
        u_xlat8.z = x_1293;
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1299 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1296.x, x_1296.y, x_1296.x, x_1296.y) * vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y)) + vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.z));
        let x_1306 : f32 = u_xlat9.w;
        u_xlat11.y = x_1306;
        let x_1309 : vec4<f32> = u_xlat6;
        let x_1312 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1309.x, x_1309.y, x_1309.x, x_1309.y) * vec4<f32>(x_1312.x, x_1312.y, x_1312.x, x_1312.y)) + vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1315.y));
        let x_1319 : vec4<f32> = u_xlat6;
        let x_1322 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1325 : vec4<f32> = u_xlat11;
        u_xlat34 = ((vec2<f32>(x_1319.x, x_1319.y) * vec2<f32>(x_1322.x, x_1322.y)) + vec2<f32>(x_1325.w, x_1325.y));
        let x_1329 : f32 = u_xlat11.y;
        u_xlat8.w = x_1329;
        let x_1332 : vec4<f32> = u_xlat6;
        let x_1335 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1338 : vec4<f32> = u_xlat8;
        u_xlat66 = ((vec2<f32>(x_1332.x, x_1332.y) * vec2<f32>(x_1335.x, x_1335.y)) + vec2<f32>(x_1338.x, x_1338.w));
        let x_1341 : vec4<f32> = u_xlat11;
        let x_1342 : vec3<f32> = vec3<f32>(x_1341.x, x_1341.z, x_1341.w);
        let x_1343 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1342.x, x_1343.y, x_1342.y, x_1342.z);
        let x_1345 : vec4<f32> = u_xlat6;
        let x_1348 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1351 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1345.x, x_1345.y, x_1345.x, x_1345.y) * vec4<f32>(x_1348.x, x_1348.y, x_1348.x, x_1348.y)) + vec4<f32>(x_1351.x, x_1351.y, x_1351.z, x_1351.y));
        let x_1355 : vec4<f32> = u_xlat6;
        let x_1358 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1361 : vec4<f32> = u_xlat9;
        u_xlat61 = ((vec2<f32>(x_1355.x, x_1355.y) * vec2<f32>(x_1358.x, x_1358.y)) + vec2<f32>(x_1361.w, x_1361.y));
        let x_1365 : f32 = u_xlat8.x;
        u_xlat9.x = x_1365;
        let x_1367 : vec4<f32> = u_xlat6;
        let x_1370 : vec4<f32> = x_484.x_MainLightShadowmapSize;
        let x_1373 : vec4<f32> = u_xlat9;
        let x_1375 : vec2<f32> = ((vec2<f32>(x_1367.x, x_1367.y) * vec2<f32>(x_1370.x, x_1370.y)) + vec2<f32>(x_1373.x, x_1373.y));
        let x_1376 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1375.x, x_1375.y, x_1376.z, x_1376.w);
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1379.x, x_1379.x, x_1379.x, x_1379.x) * x_1381);
        let x_1384 : vec4<f32> = u_xlat7;
        let x_1386 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1384.y, x_1384.y, x_1384.y, x_1384.y) * x_1386);
        let x_1389 : vec4<f32> = u_xlat7;
        let x_1391 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1389.z, x_1389.z, x_1389.z, x_1389.z) * x_1391);
        let x_1393 : vec4<f32> = u_xlat7;
        let x_1395 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1393.w, x_1393.w, x_1393.w, x_1393.w) * x_1395);
        let x_1398 : vec4<f32> = u_xlat12;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.x, x_1398.y);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec13;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1408.xy, x_1408.z);
        u_xlat8.x = x_1410;
        let x_1413 : vec4<f32> = u_xlat12;
        let x_1414 : vec2<f32> = vec2<f32>(x_1413.z, x_1413.w);
        let x_1416 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1424 : vec3<f32> = txVec14;
        let x_1426 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1424.xy, x_1424.z);
        u_xlat86 = x_1426;
        let x_1427 : f32 = u_xlat86;
        let x_1429 : f32 = u_xlat17.y;
        u_xlat86 = (x_1427 * x_1429);
        let x_1432 : f32 = u_xlat17.x;
        let x_1434 : f32 = u_xlat8.x;
        let x_1436 : f32 = u_xlat86;
        u_xlat8.x = ((x_1432 * x_1434) + x_1436);
        let x_1440 : vec2<f32> = u_xlat58;
        let x_1442 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1440.x, x_1440.y, x_1442);
        let x_1449 : vec3<f32> = txVec15;
        let x_1451 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1449.xy, x_1449.z);
        u_xlat58.x = x_1451;
        let x_1454 : f32 = u_xlat17.z;
        let x_1456 : f32 = u_xlat58.x;
        let x_1459 : f32 = u_xlat8.x;
        u_xlat58.x = ((x_1454 * x_1456) + x_1459);
        let x_1463 : vec4<f32> = u_xlat15;
        let x_1464 : vec2<f32> = vec2<f32>(x_1463.x, x_1463.y);
        let x_1466 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1464.x, x_1464.y, x_1466);
        let x_1474 : vec3<f32> = txVec16;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1474.xy, x_1474.z);
        u_xlat84 = x_1476;
        let x_1478 : f32 = u_xlat17.w;
        let x_1479 : f32 = u_xlat84;
        let x_1482 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1478 * x_1479) + x_1482);
        let x_1486 : vec4<f32> = u_xlat13;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.x, x_1486.y);
        let x_1489 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec17;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1496.xy, x_1496.z);
        u_xlat84 = x_1498;
        let x_1500 : f32 = u_xlat18.x;
        let x_1501 : f32 = u_xlat84;
        let x_1504 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1500 * x_1501) + x_1504);
        let x_1508 : vec4<f32> = u_xlat13;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.z, x_1508.w);
        let x_1511 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec18;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1518.xy, x_1518.z);
        u_xlat84 = x_1520;
        let x_1522 : f32 = u_xlat18.y;
        let x_1523 : f32 = u_xlat84;
        let x_1526 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1522 * x_1523) + x_1526);
        let x_1530 : vec4<f32> = u_xlat14;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.x, x_1530.y);
        let x_1533 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec19;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1540.xy, x_1540.z);
        u_xlat84 = x_1542;
        let x_1544 : f32 = u_xlat18.z;
        let x_1545 : f32 = u_xlat84;
        let x_1548 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1544 * x_1545) + x_1548);
        let x_1552 : vec4<f32> = u_xlat15;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.z, x_1552.w);
        let x_1555 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec20;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1562.xy, x_1562.z);
        u_xlat84 = x_1564;
        let x_1566 : f32 = u_xlat18.w;
        let x_1567 : f32 = u_xlat84;
        let x_1570 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1566 * x_1567) + x_1570);
        let x_1574 : vec4<f32> = u_xlat16;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
        let x_1577 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec21;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1584.xy, x_1584.z);
        u_xlat84 = x_1586;
        let x_1588 : f32 = u_xlat19.x;
        let x_1589 : f32 = u_xlat84;
        let x_1592 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1588 * x_1589) + x_1592);
        let x_1596 : vec4<f32> = u_xlat16;
        let x_1597 : vec2<f32> = vec2<f32>(x_1596.z, x_1596.w);
        let x_1599 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1597.x, x_1597.y, x_1599);
        let x_1606 : vec3<f32> = txVec22;
        let x_1608 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1606.xy, x_1606.z);
        u_xlat84 = x_1608;
        let x_1610 : f32 = u_xlat19.y;
        let x_1611 : f32 = u_xlat84;
        let x_1614 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1610 * x_1611) + x_1614);
        let x_1618 : vec2<f32> = u_xlat34;
        let x_1620 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1618.x, x_1618.y, x_1620);
        let x_1627 : vec3<f32> = txVec23;
        let x_1629 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1627.xy, x_1627.z);
        u_xlat84 = x_1629;
        let x_1631 : f32 = u_xlat19.z;
        let x_1632 : f32 = u_xlat84;
        let x_1635 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1631 * x_1632) + x_1635);
        let x_1639 : vec2<f32> = u_xlat66;
        let x_1641 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec24;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1648.xy, x_1648.z);
        u_xlat84 = x_1650;
        let x_1652 : f32 = u_xlat19.w;
        let x_1653 : f32 = u_xlat84;
        let x_1656 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1652 * x_1653) + x_1656);
        let x_1660 : vec4<f32> = u_xlat11;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.x, x_1660.y);
        let x_1663 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec25;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1670.xy, x_1670.z);
        u_xlat84 = x_1672;
        let x_1674 : f32 = u_xlat7.x;
        let x_1675 : f32 = u_xlat84;
        let x_1678 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1674 * x_1675) + x_1678);
        let x_1682 : vec4<f32> = u_xlat11;
        let x_1683 : vec2<f32> = vec2<f32>(x_1682.z, x_1682.w);
        let x_1685 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1683.x, x_1683.y, x_1685);
        let x_1692 : vec3<f32> = txVec26;
        let x_1694 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1692.xy, x_1692.z);
        u_xlat84 = x_1694;
        let x_1696 : f32 = u_xlat7.y;
        let x_1697 : f32 = u_xlat84;
        let x_1700 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1696 * x_1697) + x_1700);
        let x_1704 : vec2<f32> = u_xlat61;
        let x_1706 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec27;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1713.xy, x_1713.z);
        u_xlat84 = x_1715;
        let x_1717 : f32 = u_xlat7.z;
        let x_1718 : f32 = u_xlat84;
        let x_1721 : f32 = u_xlat58.x;
        u_xlat58.x = ((x_1717 * x_1718) + x_1721);
        let x_1725 : vec4<f32> = u_xlat6;
        let x_1726 : vec2<f32> = vec2<f32>(x_1725.x, x_1725.y);
        let x_1728 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1726.x, x_1726.y, x_1728);
        let x_1735 : vec3<f32> = txVec28;
        let x_1737 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1735.xy, x_1735.z);
        u_xlat6.x = x_1737;
        let x_1740 : f32 = u_xlat7.w;
        let x_1742 : f32 = u_xlat6.x;
        let x_1745 : f32 = u_xlat58.x;
        u_xlat83 = ((x_1740 * x_1742) + x_1745);
      }
    }
  } else {
    let x_1749 : vec4<f32> = vs_TEXCOORD6;
    let x_1750 : vec2<f32> = vec2<f32>(x_1749.x, x_1749.y);
    let x_1752 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1750.x, x_1750.y, x_1752);
    let x_1759 : vec3<f32> = txVec29;
    let x_1761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_1759.xy, x_1759.z);
    u_xlat83 = x_1761;
  }
  let x_1763 : f32 = x_484.x_MainLightShadowParams.x;
  u_xlat6.x = (-(x_1763) + 1.0f);
  let x_1767 : f32 = u_xlat83;
  let x_1769 : f32 = x_484.x_MainLightShadowParams.x;
  let x_1772 : f32 = u_xlat6.x;
  u_xlat83 = ((x_1767 * x_1769) + x_1772);
  let x_1775 : f32 = vs_TEXCOORD6.z;
  u_xlatb6 = (0.0f >= x_1775);
  let x_1781 : f32 = vs_TEXCOORD6.z;
  u_xlatb32.x = (x_1781 >= 1.0f);
  let x_1785 : bool = u_xlatb32.x;
  let x_1786 : bool = u_xlatb6;
  u_xlatb6 = (x_1785 | x_1786);
  let x_1788 : bool = u_xlatb6;
  let x_1789 : f32 = u_xlat83;
  u_xlat83 = select(x_1789, 1.0f, x_1788);
  let x_1791 : vec3<f32> = vs_TEXCOORD1;
  let x_1793 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_1795 : vec3<f32> = (x_1791 + -(x_1793));
  let x_1796 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1798 : vec4<f32> = u_xlat6;
  let x_1800 : vec4<f32> = u_xlat6;
  u_xlat6.x = dot(vec3<f32>(x_1798.x, x_1798.y, x_1798.z), vec3<f32>(x_1800.x, x_1800.y, x_1800.z));
  let x_1805 : f32 = u_xlat6.x;
  let x_1807 : f32 = x_484.x_MainLightShadowParams.z;
  let x_1810 : f32 = x_484.x_MainLightShadowParams.w;
  u_xlat32.x = ((x_1805 * x_1807) + x_1810);
  let x_1814 : f32 = u_xlat32.x;
  u_xlat32.x = clamp(x_1814, 0.0f, 1.0f);
  let x_1817 : f32 = u_xlat83;
  u_xlat58.x = (-(x_1817) + 1.0f);
  let x_1822 : f32 = u_xlat32.x;
  let x_1824 : f32 = u_xlat58.x;
  let x_1826 : f32 = u_xlat83;
  u_xlat83 = ((x_1822 * x_1824) + x_1826);
  let x_1835 : f32 = x_1833.x_MainLightCookieTextureFormat;
  u_xlatb32.x = !((x_1835 == -1.0f));
  let x_1839 : bool = u_xlatb32.x;
  if (x_1839) {
    let x_1842 : vec3<f32> = vs_TEXCOORD1;
    let x_1845 : vec4<f32> = x_1833.x_MainLightWorldToLight[1i];
    let x_1847 : vec2<f32> = (vec2<f32>(x_1842.y, x_1842.y) * vec2<f32>(x_1845.x, x_1845.y));
    let x_1848 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1847.x, x_1847.y, x_1848.z);
    let x_1851 : vec4<f32> = x_1833.x_MainLightWorldToLight[0i];
    let x_1853 : vec3<f32> = vs_TEXCOORD1;
    let x_1856 : vec3<f32> = u_xlat32;
    let x_1858 : vec2<f32> = ((vec2<f32>(x_1851.x, x_1851.y) * vec2<f32>(x_1853.x, x_1853.x)) + vec2<f32>(x_1856.x, x_1856.y));
    let x_1859 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1858.x, x_1858.y, x_1859.z);
    let x_1862 : vec4<f32> = x_1833.x_MainLightWorldToLight[2i];
    let x_1864 : vec3<f32> = vs_TEXCOORD1;
    let x_1867 : vec3<f32> = u_xlat32;
    let x_1869 : vec2<f32> = ((vec2<f32>(x_1862.x, x_1862.y) * vec2<f32>(x_1864.z, x_1864.z)) + vec2<f32>(x_1867.x, x_1867.y));
    let x_1870 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1869.x, x_1869.y, x_1870.z);
    let x_1872 : vec3<f32> = u_xlat32;
    let x_1875 : vec4<f32> = x_1833.x_MainLightWorldToLight[3i];
    let x_1877 : vec2<f32> = (vec2<f32>(x_1872.x, x_1872.y) + vec2<f32>(x_1875.x, x_1875.y));
    let x_1878 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1877.x, x_1877.y, x_1878.z);
    let x_1880 : vec3<f32> = u_xlat32;
    let x_1883 : vec2<f32> = ((vec2<f32>(x_1880.x, x_1880.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1884 : vec3<f32> = u_xlat32;
    u_xlat32 = vec3<f32>(x_1883.x, x_1883.y, x_1884.z);
    let x_1891 : vec3<f32> = u_xlat32;
    let x_1894 : f32 = x_28.x_GlobalMipBias.x;
    let x_1895 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1891.x, x_1891.y), x_1894);
    u_xlat7 = x_1895;
    let x_1897 : f32 = x_1833.x_MainLightCookieTextureFormat;
    let x_1899 : f32 = x_1833.x_MainLightCookieTextureFormat;
    let x_1901 : f32 = x_1833.x_MainLightCookieTextureFormat;
    let x_1903 : f32 = x_1833.x_MainLightCookieTextureFormat;
    let x_1904 : vec4<f32> = vec4<f32>(x_1897, x_1899, x_1901, x_1903);
    let x_1912 : vec4<bool> = (vec4<f32>(x_1904.x, x_1904.y, x_1904.z, x_1904.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb32 = vec2<bool>(x_1912.x, x_1912.y);
    let x_1915 : bool = u_xlatb32.y;
    if (x_1915) {
      let x_1921 : f32 = u_xlat7.w;
      x_1917 = x_1921;
    } else {
      let x_1924 : f32 = u_xlat7.x;
      x_1917 = x_1924;
    }
    let x_1925 : f32 = x_1917;
    u_xlat58.x = x_1925;
    let x_1928 : bool = u_xlatb32.x;
    if (x_1928) {
      let x_1932 : vec4<f32> = u_xlat7;
      x_1929 = vec3<f32>(x_1932.x, x_1932.y, x_1932.z);
    } else {
      let x_1935 : vec2<f32> = u_xlat58;
      x_1929 = vec3<f32>(x_1935.x, x_1935.x, x_1935.x);
    }
    let x_1937 : vec3<f32> = x_1929;
    u_xlat32 = x_1937;
  } else {
    u_xlat32.x = 1.0f;
    u_xlat32.y = 1.0f;
    u_xlat32.z = 1.0f;
  }
  let x_1942 : vec3<f32> = u_xlat32;
  let x_1944 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat32 = (x_1942 * vec3<f32>(x_1944.x, x_1944.y, x_1944.z));
  let x_1947 : vec3<f32> = u_xlat29;
  let x_1949 : vec4<f32> = u_xlat4;
  u_xlat7.x = dot(-(x_1947), vec3<f32>(x_1949.x, x_1949.y, x_1949.z));
  let x_1954 : f32 = u_xlat7.x;
  let x_1956 : f32 = u_xlat7.x;
  u_xlat7.x = (x_1954 + x_1956);
  let x_1959 : vec4<f32> = u_xlat4;
  let x_1961 : vec4<f32> = u_xlat7;
  let x_1965 : vec3<f32> = u_xlat29;
  let x_1967 : vec3<f32> = ((vec3<f32>(x_1959.x, x_1959.y, x_1959.z) * -(vec3<f32>(x_1961.x, x_1961.x, x_1961.x))) + -(x_1965));
  let x_1968 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1967.x, x_1967.y, x_1967.z, x_1968.w);
  let x_1971 : vec4<f32> = u_xlat4;
  let x_1973 : vec3<f32> = u_xlat29;
  u_xlat85 = dot(vec3<f32>(x_1971.x, x_1971.y, x_1971.z), x_1973);
  let x_1975 : f32 = u_xlat85;
  u_xlat85 = clamp(x_1975, 0.0f, 1.0f);
  let x_1977 : f32 = u_xlat85;
  u_xlat85 = (-(x_1977) + 1.0f);
  let x_1980 : f32 = u_xlat85;
  let x_1981 : f32 = u_xlat85;
  u_xlat85 = (x_1980 * x_1981);
  let x_1983 : f32 = u_xlat85;
  let x_1984 : f32 = u_xlat85;
  u_xlat85 = (x_1983 * x_1984);
  let x_1987 : f32 = u_xlat1.x;
  u_xlat8.x = ((-(x_1987) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1995 : f32 = u_xlat1.x;
  let x_1997 : f32 = u_xlat8.x;
  u_xlat1.x = (x_1995 * x_1997);
  let x_2001 : f32 = u_xlat1.x;
  u_xlat1.x = (x_2001 * 6.0f);
  let x_2013 : vec4<f32> = u_xlat7;
  let x_2016 : f32 = u_xlat1.x;
  let x_2017 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2013.x, x_2013.y, x_2013.z), x_2016);
  u_xlat8 = x_2017;
  let x_2019 : f32 = u_xlat8.w;
  u_xlat1.x = (x_2019 + -1.0f);
  let x_2023 : f32 = x_313.unity_SpecCube0_HDR.w;
  let x_2025 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_2023 * x_2025) + 1.0f);
  let x_2030 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_2030, 0.0f);
  let x_2034 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_2034);
  let x_2038 : f32 = u_xlat1.x;
  let x_2040 : f32 = x_313.unity_SpecCube0_HDR.y;
  u_xlat1.x = (x_2038 * x_2040);
  let x_2044 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2044);
  let x_2048 : f32 = u_xlat1.x;
  let x_2050 : f32 = x_313.unity_SpecCube0_HDR.x;
  u_xlat1.x = (x_2048 * x_2050);
  let x_2053 : vec4<f32> = u_xlat8;
  let x_2055 : vec2<f32> = u_xlat1;
  let x_2057 : vec3<f32> = (vec3<f32>(x_2053.x, x_2053.y, x_2053.z) * vec3<f32>(x_2055.x, x_2055.x, x_2055.x));
  let x_2058 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2057.x, x_2057.y, x_2057.z, x_2058.w);
  let x_2060 : vec3<f32> = u_xlat27;
  let x_2062 : vec3<f32> = u_xlat27;
  u_xlat1 = ((vec2<f32>(x_2060.x, x_2060.x) * vec2<f32>(x_2062.x, x_2062.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2068 : f32 = u_xlat1.y;
  u_xlat27.x = (1.0f / x_2068);
  let x_2071 : vec4<f32> = u_xlat0;
  let x_2074 : f32 = u_xlat79;
  let x_2076 : vec3<f32> = (-(vec3<f32>(x_2071.x, x_2071.y, x_2071.z)) + vec3<f32>(x_2074, x_2074, x_2074));
  let x_2077 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2076.x, x_2076.y, x_2076.z, x_2077.w);
  let x_2079 : f32 = u_xlat85;
  let x_2081 : vec4<f32> = u_xlat8;
  let x_2084 : vec4<f32> = u_xlat0;
  let x_2086 : vec3<f32> = ((vec3<f32>(x_2079, x_2079, x_2079) * vec3<f32>(x_2081.x, x_2081.y, x_2081.z)) + vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
  let x_2087 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  let x_2089 : vec3<f32> = u_xlat27;
  let x_2091 : vec4<f32> = u_xlat8;
  let x_2093 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.x, x_2089.x) * vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2094 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
  let x_2096 : vec4<f32> = u_xlat7;
  let x_2098 : vec4<f32> = u_xlat8;
  let x_2100 : vec3<f32> = (vec3<f32>(x_2096.x, x_2096.y, x_2096.z) * vec3<f32>(x_2098.x, x_2098.y, x_2098.z));
  let x_2101 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2100.x, x_2100.y, x_2100.z, x_2101.w);
  let x_2103 : vec3<f32> = u_xlat5;
  let x_2104 : vec3<f32> = u_xlat28;
  let x_2106 : vec4<f32> = u_xlat7;
  u_xlat5 = ((x_2103 * x_2104) + vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : f32 = u_xlat83;
  let x_2111 : f32 = x_313.unity_LightData.z;
  u_xlat27.x = (x_2109 * x_2111);
  let x_2114 : vec4<f32> = u_xlat4;
  let x_2117 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat79 = dot(vec3<f32>(x_2114.x, x_2114.y, x_2114.z), vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2120, 0.0f, 1.0f);
  let x_2122 : f32 = u_xlat79;
  let x_2124 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2122 * x_2124);
  let x_2127 : vec3<f32> = u_xlat27;
  let x_2129 : vec3<f32> = u_xlat32;
  u_xlat32 = (vec3<f32>(x_2127.x, x_2127.x, x_2127.x) * x_2129);
  let x_2131 : vec3<f32> = u_xlat29;
  let x_2133 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2135 : vec3<f32> = (x_2131 + vec3<f32>(x_2133.x, x_2133.y, x_2133.z));
  let x_2136 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2135.x, x_2135.y, x_2135.z, x_2136.w);
  let x_2138 : vec4<f32> = u_xlat7;
  let x_2140 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2138.x, x_2138.y, x_2138.z), vec3<f32>(x_2140.x, x_2140.y, x_2140.z));
  let x_2145 : f32 = u_xlat27.x;
  u_xlat27.x = max(x_2145, 1.17549435e-38f);
  let x_2150 : f32 = u_xlat27.x;
  u_xlat27.x = inverseSqrt(x_2150);
  let x_2153 : vec3<f32> = u_xlat27;
  let x_2155 : vec4<f32> = u_xlat7;
  let x_2157 : vec3<f32> = (vec3<f32>(x_2153.x, x_2153.x, x_2153.x) * vec3<f32>(x_2155.x, x_2155.y, x_2155.z));
  let x_2158 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
  let x_2160 : vec4<f32> = u_xlat4;
  let x_2162 : vec4<f32> = u_xlat7;
  u_xlat27.x = dot(vec3<f32>(x_2160.x, x_2160.y, x_2160.z), vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
  let x_2167 : f32 = u_xlat27.x;
  u_xlat27.x = clamp(x_2167, 0.0f, 1.0f);
  let x_2171 : vec4<f32> = x_28.x_MainLightPosition;
  let x_2173 : vec4<f32> = u_xlat7;
  u_xlat27.z = dot(vec3<f32>(x_2171.x, x_2171.y, x_2171.z), vec3<f32>(x_2173.x, x_2173.y, x_2173.z));
  let x_2178 : f32 = u_xlat27.z;
  u_xlat27.z = clamp(x_2178, 0.0f, 1.0f);
  let x_2181 : vec3<f32> = u_xlat27;
  let x_2183 : vec3<f32> = u_xlat27;
  let x_2185 : vec2<f32> = (vec2<f32>(x_2181.x, x_2181.z) * vec2<f32>(x_2183.x, x_2183.z));
  let x_2186 : vec3<f32> = u_xlat27;
  u_xlat27 = vec3<f32>(x_2185.x, x_2186.y, x_2185.y);
  let x_2189 : f32 = u_xlat27.x;
  let x_2191 : f32 = u_xlat1.x;
  u_xlat27.x = ((x_2189 * x_2191) + 1.00001001358032226562f);
  let x_2197 : f32 = u_xlat27.x;
  let x_2199 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2197 * x_2199);
  let x_2203 : f32 = u_xlat27.z;
  u_xlat79 = max(x_2203, 0.10000000149011611938f);
  let x_2206 : f32 = u_xlat79;
  let x_2208 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2206 * x_2208);
  let x_2211 : f32 = u_xlat82;
  let x_2213 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2211 * x_2213);
  let x_2217 : f32 = u_xlat53.x;
  let x_2219 : f32 = u_xlat27.x;
  u_xlat27.x = (x_2217 / x_2219);
  let x_2222 : vec4<f32> = u_xlat0;
  let x_2224 : vec3<f32> = u_xlat27;
  let x_2227 : vec3<f32> = u_xlat28;
  let x_2228 : vec3<f32> = ((vec3<f32>(x_2222.x, x_2222.y, x_2222.z) * vec3<f32>(x_2224.x, x_2224.x, x_2224.x)) + x_2227);
  let x_2229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2228.x, x_2228.y, x_2228.z, x_2229.w);
  let x_2231 : vec3<f32> = u_xlat32;
  let x_2232 : vec4<f32> = u_xlat7;
  u_xlat32 = (x_2231 * vec3<f32>(x_2232.x, x_2232.y, x_2232.z));
  let x_2236 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_2238 : f32 = x_313.unity_LightData.y;
  u_xlat27.x = min(x_2236, x_2238);
  let x_2244 : f32 = u_xlat27.x;
  u_xlatu27 = bitcast<u32>(i32(x_2244));
  let x_2248 : f32 = u_xlat6.x;
  let x_2251 : f32 = x_484.x_AdditionalShadowFadeParams.x;
  let x_2254 : f32 = x_484.x_AdditionalShadowFadeParams.y;
  u_xlat79 = ((x_2248 * x_2251) + x_2254);
  let x_2256 : f32 = u_xlat79;
  u_xlat79 = clamp(x_2256, 0.0f, 1.0f);
  let x_2260 : f32 = x_1833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2262 : f32 = x_1833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2264 : f32 = x_1833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2266 : f32 = x_1833.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2267 : vec4<f32> = vec4<f32>(x_2260, x_2262, x_2264, x_2266);
  let x_2273 : vec4<bool> = (vec4<f32>(x_2267.x, x_2267.y, x_2267.z, x_2267.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2273.x, x_2273.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2285 : u32 = u_xlatu_loop_1;
    let x_2286 : u32 = u_xlatu27;
    if ((x_2285 < x_2286)) {
    } else {
      break;
    }
    let x_2289 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_2289 >> 2u);
    let x_2293 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2293 & 3u));
    let x_2296 : u32 = u_xlatu6;
    let x_2299 : vec4<f32> = x_313.unity_LightIndices[bitcast<i32>(x_2296)];
    let x_2309 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2314 : vec4<u32> = indexable[x_2309];
    u_xlat6.x = dot(x_2299, bitcast<vec4<f32>>(x_2314));
    let x_2320 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_2320);
    let x_2322 : vec3<f32> = vs_TEXCOORD1;
    let x_2333 : i32 = u_xlati6;
    let x_2335 : vec4<f32> = x_2332.x_AdditionalLightsPosition[x_2333];
    let x_2338 : i32 = u_xlati6;
    let x_2340 : vec4<f32> = x_2332.x_AdditionalLightsPosition[x_2338];
    let x_2342 : vec3<f32> = ((-(x_2322) * vec3<f32>(x_2335.w, x_2335.w, x_2335.w)) + vec3<f32>(x_2340.x, x_2340.y, x_2340.z));
    let x_2343 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2342.x, x_2342.y, x_2342.z, x_2343.w);
    let x_2346 : vec4<f32> = u_xlat9;
    let x_2348 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_2346.x, x_2346.y, x_2346.z), vec3<f32>(x_2348.x, x_2348.y, x_2348.z));
    let x_2351 : f32 = u_xlat59;
    u_xlat59 = max(x_2351, 0.00006103515625f);
    let x_2354 : f32 = u_xlat59;
    u_xlat85 = inverseSqrt(x_2354);
    let x_2356 : f32 = u_xlat85;
    let x_2358 : vec4<f32> = u_xlat9;
    let x_2360 : vec3<f32> = (vec3<f32>(x_2356, x_2356, x_2356) * vec3<f32>(x_2358.x, x_2358.y, x_2358.z));
    let x_2361 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2360.x, x_2360.y, x_2360.z, x_2361.w);
    let x_2363 : f32 = u_xlat59;
    u_xlat86 = (1.0f / x_2363);
    let x_2365 : f32 = u_xlat59;
    let x_2366 : i32 = u_xlati6;
    let x_2368 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2366].x;
    u_xlat59 = (x_2365 * x_2368);
    let x_2370 : f32 = u_xlat59;
    let x_2372 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2370) * x_2372) + 1.0f);
    let x_2375 : f32 = u_xlat59;
    u_xlat59 = max(x_2375, 0.0f);
    let x_2377 : f32 = u_xlat59;
    let x_2378 : f32 = u_xlat59;
    u_xlat59 = (x_2377 * x_2378);
    let x_2380 : f32 = u_xlat59;
    let x_2381 : f32 = u_xlat86;
    u_xlat59 = (x_2380 * x_2381);
    let x_2383 : i32 = u_xlati6;
    let x_2385 : vec4<f32> = x_2332.x_AdditionalLightsSpotDir[x_2383];
    let x_2387 : vec4<f32> = u_xlat10;
    u_xlat86 = dot(vec3<f32>(x_2385.x, x_2385.y, x_2385.z), vec3<f32>(x_2387.x, x_2387.y, x_2387.z));
    let x_2390 : f32 = u_xlat86;
    let x_2391 : i32 = u_xlati6;
    let x_2393 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2391].z;
    let x_2395 : i32 = u_xlati6;
    let x_2397 : f32 = x_2332.x_AdditionalLightsAttenuation[x_2395].w;
    u_xlat86 = ((x_2390 * x_2393) + x_2397);
    let x_2399 : f32 = u_xlat86;
    u_xlat86 = clamp(x_2399, 0.0f, 1.0f);
    let x_2401 : f32 = u_xlat86;
    let x_2402 : f32 = u_xlat86;
    u_xlat86 = (x_2401 * x_2402);
    let x_2404 : f32 = u_xlat59;
    let x_2405 : f32 = u_xlat86;
    u_xlat59 = (x_2404 * x_2405);
    let x_2409 : i32 = u_xlati6;
    let x_2411 : f32 = x_484.x_AdditionalShadowParams[x_2409].w;
    u_xlati86 = i32(x_2411);
    let x_2414 : i32 = u_xlati86;
    u_xlatb87 = (x_2414 >= 0i);
    let x_2416 : bool = u_xlatb87;
    if (x_2416) {
      let x_2420 : i32 = u_xlati6;
      let x_2422 : f32 = x_484.x_AdditionalShadowParams[x_2420].z;
      u_xlatb87 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_2422, x_2422, x_2422, x_2422))));
      let x_2426 : bool = u_xlatb87;
      if (x_2426) {
        let x_2431 : vec4<f32> = u_xlat10;
        let x_2434 : vec4<f32> = u_xlat10;
        let x_2437 : vec4<bool> = (abs(vec4<f32>(x_2431.z, x_2431.z, x_2431.y, x_2431.z)) >= abs(vec4<f32>(x_2434.x, x_2434.y, x_2434.x, x_2434.x)));
        let x_2439 : vec3<bool> = vec3<bool>(x_2437.x, x_2437.y, x_2437.z);
        let x_2440 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2439.x, x_2439.y, x_2439.z, x_2440.w);
        let x_2443 : bool = u_xlatb11.y;
        let x_2445 : bool = u_xlatb11.x;
        u_xlatb87 = (x_2443 & x_2445);
        let x_2447 : vec4<f32> = u_xlat10;
        let x_2450 : vec4<bool> = (-(vec4<f32>(x_2447.z, x_2447.y, x_2447.z, x_2447.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_2451 : vec3<bool> = vec3<bool>(x_2450.x, x_2450.y, x_2450.w);
        let x_2452 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_2451.x, x_2451.y, x_2452.z, x_2451.z);
        let x_2455 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_2455);
        let x_2460 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_2460);
        let x_2466 : bool = u_xlatb11.w;
        u_xlat88 = select(0.0f, 1.0f, x_2466);
        let x_2469 : bool = u_xlatb11.z;
        if (x_2469) {
          let x_2474 : f32 = u_xlat11.y;
          x_2470 = x_2474;
        } else {
          let x_2476 : f32 = u_xlat88;
          x_2470 = x_2476;
        }
        let x_2477 : f32 = x_2470;
        u_xlat88 = x_2477;
        let x_2479 : bool = u_xlatb87;
        if (x_2479) {
          let x_2484 : f32 = u_xlat11.x;
          x_2480 = x_2484;
        } else {
          let x_2486 : f32 = u_xlat88;
          x_2480 = x_2486;
        }
        let x_2487 : f32 = x_2480;
        u_xlat87 = x_2487;
        let x_2488 : i32 = u_xlati6;
        let x_2490 : f32 = x_484.x_AdditionalShadowParams[x_2488].w;
        u_xlat88 = trunc(x_2490);
        let x_2492 : f32 = u_xlat87;
        let x_2493 : f32 = u_xlat88;
        u_xlat87 = (x_2492 + x_2493);
        let x_2495 : f32 = u_xlat87;
        u_xlati86 = i32(x_2495);
      }
      let x_2497 : i32 = u_xlati86;
      u_xlati86 = (x_2497 << bitcast<u32>(2i));
      let x_2499 : vec3<f32> = vs_TEXCOORD1;
      let x_2502 : i32 = u_xlati86;
      let x_2505 : i32 = u_xlati86;
      let x_2509 : vec4<f32> = x_484.x_AdditionalLightsWorldToShadow[((x_2502 + 1i) / 4i)][((x_2505 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_2499.y, x_2499.y, x_2499.y, x_2499.y) * x_2509);
      let x_2511 : i32 = u_xlati86;
      let x_2513 : i32 = u_xlati86;
      let x_2516 : vec4<f32> = x_484.x_AdditionalLightsWorldToShadow[(x_2511 / 4i)][(x_2513 % 4i)];
      let x_2517 : vec3<f32> = vs_TEXCOORD1;
      let x_2520 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2516 * vec4<f32>(x_2517.x, x_2517.x, x_2517.x, x_2517.x)) + x_2520);
      let x_2522 : i32 = u_xlati86;
      let x_2525 : i32 = u_xlati86;
      let x_2529 : vec4<f32> = x_484.x_AdditionalLightsWorldToShadow[((x_2522 + 2i) / 4i)][((x_2525 + 2i) % 4i)];
      let x_2530 : vec3<f32> = vs_TEXCOORD1;
      let x_2533 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_2529 * vec4<f32>(x_2530.z, x_2530.z, x_2530.z, x_2530.z)) + x_2533);
      let x_2535 : vec4<f32> = u_xlat11;
      let x_2536 : i32 = u_xlati86;
      let x_2539 : i32 = u_xlati86;
      let x_2543 : vec4<f32> = x_484.x_AdditionalLightsWorldToShadow[((x_2536 + 3i) / 4i)][((x_2539 + 3i) % 4i)];
      u_xlat11 = (x_2535 + x_2543);
      let x_2545 : vec4<f32> = u_xlat11;
      let x_2547 : vec4<f32> = u_xlat11;
      let x_2549 : vec3<f32> = (vec3<f32>(x_2545.x, x_2545.y, x_2545.z) / vec3<f32>(x_2547.w, x_2547.w, x_2547.w));
      let x_2550 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2549.x, x_2549.y, x_2549.z, x_2550.w);
      let x_2553 : i32 = u_xlati6;
      let x_2555 : f32 = x_484.x_AdditionalShadowParams[x_2553].y;
      u_xlatb86 = (0.0f < x_2555);
      let x_2557 : bool = u_xlatb86;
      if (x_2557) {
        let x_2560 : i32 = u_xlati6;
        let x_2562 : f32 = x_484.x_AdditionalShadowParams[x_2560].y;
        u_xlatb86 = (1.0f == x_2562);
        let x_2564 : bool = u_xlatb86;
        if (x_2564) {
          let x_2567 : vec4<f32> = u_xlat11;
          let x_2570 : vec4<f32> = x_484.x_AdditionalShadowOffset0;
          u_xlat12 = (vec4<f32>(x_2567.x, x_2567.y, x_2567.x, x_2567.y) + x_2570);
          let x_2573 : vec4<f32> = u_xlat12;
          let x_2574 : vec2<f32> = vec2<f32>(x_2573.x, x_2573.y);
          let x_2576 : f32 = u_xlat11.z;
          txVec30 = vec3<f32>(x_2574.x, x_2574.y, x_2576);
          let x_2584 : vec3<f32> = txVec30;
          let x_2586 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2584.xy, x_2584.z);
          u_xlat13.x = x_2586;
          let x_2589 : vec4<f32> = u_xlat12;
          let x_2590 : vec2<f32> = vec2<f32>(x_2589.z, x_2589.w);
          let x_2592 : f32 = u_xlat11.z;
          txVec31 = vec3<f32>(x_2590.x, x_2590.y, x_2592);
          let x_2599 : vec3<f32> = txVec31;
          let x_2601 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2599.xy, x_2599.z);
          u_xlat13.y = x_2601;
          let x_2603 : vec4<f32> = u_xlat11;
          let x_2607 : vec4<f32> = x_484.x_AdditionalShadowOffset1;
          u_xlat12 = (vec4<f32>(x_2603.x, x_2603.y, x_2603.x, x_2603.y) + x_2607);
          let x_2610 : vec4<f32> = u_xlat12;
          let x_2611 : vec2<f32> = vec2<f32>(x_2610.x, x_2610.y);
          let x_2613 : f32 = u_xlat11.z;
          txVec32 = vec3<f32>(x_2611.x, x_2611.y, x_2613);
          let x_2620 : vec3<f32> = txVec32;
          let x_2622 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2620.xy, x_2620.z);
          u_xlat13.z = x_2622;
          let x_2625 : vec4<f32> = u_xlat12;
          let x_2626 : vec2<f32> = vec2<f32>(x_2625.z, x_2625.w);
          let x_2628 : f32 = u_xlat11.z;
          txVec33 = vec3<f32>(x_2626.x, x_2626.y, x_2628);
          let x_2635 : vec3<f32> = txVec33;
          let x_2637 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2635.xy, x_2635.z);
          u_xlat13.w = x_2637;
          let x_2639 : vec4<f32> = u_xlat13;
          u_xlat86 = dot(x_2639, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
        } else {
          let x_2642 : i32 = u_xlati6;
          let x_2644 : f32 = x_484.x_AdditionalShadowParams[x_2642].y;
          u_xlatb87 = (2.0f == x_2644);
          let x_2646 : bool = u_xlatb87;
          if (x_2646) {
            let x_2649 : vec4<f32> = u_xlat11;
            let x_2653 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2656 : vec2<f32> = ((vec2<f32>(x_2649.x, x_2649.y) * vec2<f32>(x_2653.z, x_2653.w)) + vec2<f32>(0.5f, 0.5f));
            let x_2657 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2656.x, x_2656.y, x_2657.z, x_2657.w);
            let x_2659 : vec4<f32> = u_xlat12;
            let x_2661 : vec2<f32> = floor(vec2<f32>(x_2659.x, x_2659.y));
            let x_2662 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_2661.x, x_2661.y, x_2662.z, x_2662.w);
            let x_2665 : vec4<f32> = u_xlat11;
            let x_2668 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2671 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_2665.x, x_2665.y) * vec2<f32>(x_2668.z, x_2668.w)) + -(vec2<f32>(x_2671.x, x_2671.y)));
            let x_2675 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_2675.x, x_2675.x, x_2675.y, x_2675.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_2678 : vec4<f32> = u_xlat13;
            let x_2680 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_2678.x, x_2678.x, x_2678.z, x_2678.z) * vec4<f32>(x_2680.x, x_2680.x, x_2680.z, x_2680.z));
            let x_2683 : vec4<f32> = u_xlat14;
            let x_2685 : vec2<f32> = (vec2<f32>(x_2683.y, x_2683.w) * vec2<f32>(0.07999999821186065674f, 0.07999999821186065674f));
            let x_2686 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2685.x, x_2686.y, x_2685.y, x_2686.w);
            let x_2688 : vec4<f32> = u_xlat14;
            let x_2691 : vec2<f32> = u_xlat64;
            let x_2693 : vec2<f32> = ((vec2<f32>(x_2688.x, x_2688.z) * vec2<f32>(0.5f, 0.5f)) + -(x_2691));
            let x_2694 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2693.x, x_2693.y, x_2694.z, x_2694.w);
            let x_2696 : vec2<f32> = u_xlat64;
            u_xlat66 = (-(x_2696) + vec2<f32>(1.0f, 1.0f));
            let x_2699 : vec2<f32> = u_xlat64;
            let x_2700 : vec2<f32> = min(x_2699, vec2<f32>(0.0f, 0.0f));
            let x_2701 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2700.x, x_2700.y, x_2701.z, x_2701.w);
            let x_2703 : vec4<f32> = u_xlat15;
            let x_2706 : vec4<f32> = u_xlat15;
            let x_2709 : vec2<f32> = u_xlat66;
            let x_2710 : vec2<f32> = ((-(vec2<f32>(x_2703.x, x_2703.y)) * vec2<f32>(x_2706.x, x_2706.y)) + x_2709);
            let x_2711 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2710.x, x_2710.y, x_2711.z, x_2711.w);
            let x_2713 : vec2<f32> = u_xlat64;
            u_xlat64 = max(x_2713, vec2<f32>(0.0f, 0.0f));
            let x_2715 : vec2<f32> = u_xlat64;
            let x_2717 : vec2<f32> = u_xlat64;
            let x_2719 : vec4<f32> = u_xlat13;
            u_xlat64 = ((-(x_2715) * x_2717) + vec2<f32>(x_2719.y, x_2719.w));
            let x_2722 : vec4<f32> = u_xlat15;
            let x_2724 : vec2<f32> = (vec2<f32>(x_2722.x, x_2722.y) + vec2<f32>(1.0f, 1.0f));
            let x_2725 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2724.x, x_2724.y, x_2725.z, x_2725.w);
            let x_2727 : vec2<f32> = u_xlat64;
            u_xlat64 = (x_2727 + vec2<f32>(1.0f, 1.0f));
            let x_2729 : vec4<f32> = u_xlat14;
            let x_2731 : vec2<f32> = (vec2<f32>(x_2729.x, x_2729.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2732 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_2731.x, x_2731.y, x_2732.z, x_2732.w);
            let x_2734 : vec2<f32> = u_xlat66;
            let x_2735 : vec2<f32> = (x_2734 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2736 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2735.x, x_2735.y, x_2736.z, x_2736.w);
            let x_2738 : vec4<f32> = u_xlat15;
            let x_2740 : vec2<f32> = (vec2<f32>(x_2738.x, x_2738.y) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2741 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2740.x, x_2740.y, x_2741.z, x_2741.w);
            let x_2743 : vec2<f32> = u_xlat64;
            let x_2744 : vec2<f32> = (x_2743 * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2745 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
            let x_2747 : vec4<f32> = u_xlat13;
            u_xlat64 = (vec2<f32>(x_2747.y, x_2747.w) * vec2<f32>(0.15999999642372131348f, 0.15999999642372131348f));
            let x_2751 : f32 = u_xlat15.x;
            u_xlat16.z = x_2751;
            let x_2754 : f32 = u_xlat64.x;
            u_xlat16.w = x_2754;
            let x_2757 : f32 = u_xlat17.x;
            u_xlat14.z = x_2757;
            let x_2760 : f32 = u_xlat13.x;
            u_xlat14.w = x_2760;
            let x_2762 : vec4<f32> = u_xlat14;
            let x_2764 : vec4<f32> = u_xlat16;
            u_xlat18 = (vec4<f32>(x_2762.z, x_2762.w, x_2762.x, x_2762.z) + vec4<f32>(x_2764.z, x_2764.w, x_2764.x, x_2764.z));
            let x_2768 : f32 = u_xlat16.y;
            u_xlat15.z = x_2768;
            let x_2771 : f32 = u_xlat64.y;
            u_xlat15.w = x_2771;
            let x_2774 : f32 = u_xlat14.y;
            u_xlat17.z = x_2774;
            let x_2777 : f32 = u_xlat13.z;
            u_xlat17.w = x_2777;
            let x_2779 : vec4<f32> = u_xlat15;
            let x_2781 : vec4<f32> = u_xlat17;
            let x_2783 : vec3<f32> = (vec3<f32>(x_2779.z, x_2779.y, x_2779.w) + vec3<f32>(x_2781.z, x_2781.y, x_2781.w));
            let x_2784 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_2783.x, x_2783.y, x_2783.z, x_2784.w);
            let x_2786 : vec4<f32> = u_xlat14;
            let x_2788 : vec4<f32> = u_xlat18;
            let x_2790 : vec3<f32> = (vec3<f32>(x_2786.x, x_2786.z, x_2786.w) / vec3<f32>(x_2788.z, x_2788.w, x_2788.y));
            let x_2791 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2790.x, x_2790.y, x_2790.z, x_2791.w);
            let x_2793 : vec4<f32> = u_xlat14;
            let x_2795 : vec3<f32> = (vec3<f32>(x_2793.x, x_2793.y, x_2793.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2796 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2795.x, x_2795.y, x_2795.z, x_2796.w);
            let x_2798 : vec4<f32> = u_xlat17;
            let x_2800 : vec4<f32> = u_xlat13;
            let x_2802 : vec3<f32> = (vec3<f32>(x_2798.z, x_2798.y, x_2798.w) / vec3<f32>(x_2800.x, x_2800.y, x_2800.z));
            let x_2803 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2802.x, x_2802.y, x_2802.z, x_2803.w);
            let x_2805 : vec4<f32> = u_xlat15;
            let x_2807 : vec3<f32> = (vec3<f32>(x_2805.x, x_2805.y, x_2805.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
            let x_2808 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2807.x, x_2807.y, x_2807.z, x_2808.w);
            let x_2810 : vec4<f32> = u_xlat14;
            let x_2813 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2815 : vec3<f32> = (vec3<f32>(x_2810.y, x_2810.x, x_2810.z) * vec3<f32>(x_2813.x, x_2813.x, x_2813.x));
            let x_2816 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
            let x_2818 : vec4<f32> = u_xlat15;
            let x_2821 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2823 : vec3<f32> = (vec3<f32>(x_2818.x, x_2818.y, x_2818.z) * vec3<f32>(x_2821.y, x_2821.y, x_2821.y));
            let x_2824 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_2823.x, x_2823.y, x_2823.z, x_2824.w);
            let x_2827 : f32 = u_xlat15.x;
            u_xlat14.w = x_2827;
            let x_2829 : vec4<f32> = u_xlat12;
            let x_2832 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2835 : vec4<f32> = u_xlat14;
            u_xlat16 = ((vec4<f32>(x_2829.x, x_2829.y, x_2829.x, x_2829.y) * vec4<f32>(x_2832.x, x_2832.y, x_2832.x, x_2832.y)) + vec4<f32>(x_2835.y, x_2835.w, x_2835.x, x_2835.w));
            let x_2838 : vec4<f32> = u_xlat12;
            let x_2841 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2844 : vec4<f32> = u_xlat14;
            u_xlat64 = ((vec2<f32>(x_2838.x, x_2838.y) * vec2<f32>(x_2841.x, x_2841.y)) + vec2<f32>(x_2844.z, x_2844.w));
            let x_2848 : f32 = u_xlat14.y;
            u_xlat15.w = x_2848;
            let x_2850 : vec4<f32> = u_xlat15;
            let x_2851 : vec2<f32> = vec2<f32>(x_2850.y, x_2850.z);
            let x_2852 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_2852.x, x_2851.x, x_2852.z, x_2851.y);
            let x_2854 : vec4<f32> = u_xlat12;
            let x_2857 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2860 : vec4<f32> = u_xlat14;
            u_xlat17 = ((vec4<f32>(x_2854.x, x_2854.y, x_2854.x, x_2854.y) * vec4<f32>(x_2857.x, x_2857.y, x_2857.x, x_2857.y)) + vec4<f32>(x_2860.x, x_2860.y, x_2860.z, x_2860.y));
            let x_2863 : vec4<f32> = u_xlat12;
            let x_2866 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2869 : vec4<f32> = u_xlat15;
            u_xlat15 = ((vec4<f32>(x_2863.x, x_2863.y, x_2863.x, x_2863.y) * vec4<f32>(x_2866.x, x_2866.y, x_2866.x, x_2866.y)) + vec4<f32>(x_2869.w, x_2869.y, x_2869.w, x_2869.z));
            let x_2872 : vec4<f32> = u_xlat12;
            let x_2875 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_2878 : vec4<f32> = u_xlat14;
            u_xlat14 = ((vec4<f32>(x_2872.x, x_2872.y, x_2872.x, x_2872.y) * vec4<f32>(x_2875.x, x_2875.y, x_2875.x, x_2875.y)) + vec4<f32>(x_2878.x, x_2878.w, x_2878.z, x_2878.w));
            let x_2881 : vec4<f32> = u_xlat13;
            let x_2883 : vec4<f32> = u_xlat18;
            u_xlat19 = (vec4<f32>(x_2881.x, x_2881.x, x_2881.x, x_2881.y) * vec4<f32>(x_2883.z, x_2883.w, x_2883.y, x_2883.z));
            let x_2887 : vec4<f32> = u_xlat13;
            let x_2889 : vec4<f32> = u_xlat18;
            u_xlat20 = (vec4<f32>(x_2887.y, x_2887.y, x_2887.z, x_2887.z) * x_2889);
            let x_2892 : f32 = u_xlat13.z;
            let x_2894 : f32 = u_xlat18.y;
            u_xlat87 = (x_2892 * x_2894);
            let x_2897 : vec4<f32> = u_xlat16;
            let x_2898 : vec2<f32> = vec2<f32>(x_2897.x, x_2897.y);
            let x_2900 : f32 = u_xlat11.z;
            txVec34 = vec3<f32>(x_2898.x, x_2898.y, x_2900);
            let x_2907 : vec3<f32> = txVec34;
            let x_2909 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2907.xy, x_2907.z);
            u_xlat88 = x_2909;
            let x_2911 : vec4<f32> = u_xlat16;
            let x_2912 : vec2<f32> = vec2<f32>(x_2911.z, x_2911.w);
            let x_2914 : f32 = u_xlat11.z;
            txVec35 = vec3<f32>(x_2912.x, x_2912.y, x_2914);
            let x_2922 : vec3<f32> = txVec35;
            let x_2924 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2922.xy, x_2922.z);
            u_xlat89 = x_2924;
            let x_2925 : f32 = u_xlat89;
            let x_2927 : f32 = u_xlat19.y;
            u_xlat89 = (x_2925 * x_2927);
            let x_2930 : f32 = u_xlat19.x;
            let x_2931 : f32 = u_xlat88;
            let x_2933 : f32 = u_xlat89;
            u_xlat88 = ((x_2930 * x_2931) + x_2933);
            let x_2936 : vec2<f32> = u_xlat64;
            let x_2938 : f32 = u_xlat11.z;
            txVec36 = vec3<f32>(x_2936.x, x_2936.y, x_2938);
            let x_2945 : vec3<f32> = txVec36;
            let x_2947 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2945.xy, x_2945.z);
            u_xlat89 = x_2947;
            let x_2949 : f32 = u_xlat19.z;
            let x_2950 : f32 = u_xlat89;
            let x_2952 : f32 = u_xlat88;
            u_xlat88 = ((x_2949 * x_2950) + x_2952);
            let x_2955 : vec4<f32> = u_xlat15;
            let x_2956 : vec2<f32> = vec2<f32>(x_2955.x, x_2955.y);
            let x_2958 : f32 = u_xlat11.z;
            txVec37 = vec3<f32>(x_2956.x, x_2956.y, x_2958);
            let x_2965 : vec3<f32> = txVec37;
            let x_2967 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2965.xy, x_2965.z);
            u_xlat89 = x_2967;
            let x_2969 : f32 = u_xlat19.w;
            let x_2970 : f32 = u_xlat89;
            let x_2972 : f32 = u_xlat88;
            u_xlat88 = ((x_2969 * x_2970) + x_2972);
            let x_2975 : vec4<f32> = u_xlat17;
            let x_2976 : vec2<f32> = vec2<f32>(x_2975.x, x_2975.y);
            let x_2978 : f32 = u_xlat11.z;
            txVec38 = vec3<f32>(x_2976.x, x_2976.y, x_2978);
            let x_2985 : vec3<f32> = txVec38;
            let x_2987 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_2985.xy, x_2985.z);
            u_xlat89 = x_2987;
            let x_2989 : f32 = u_xlat20.x;
            let x_2990 : f32 = u_xlat89;
            let x_2992 : f32 = u_xlat88;
            u_xlat88 = ((x_2989 * x_2990) + x_2992);
            let x_2995 : vec4<f32> = u_xlat17;
            let x_2996 : vec2<f32> = vec2<f32>(x_2995.z, x_2995.w);
            let x_2998 : f32 = u_xlat11.z;
            txVec39 = vec3<f32>(x_2996.x, x_2996.y, x_2998);
            let x_3005 : vec3<f32> = txVec39;
            let x_3007 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3005.xy, x_3005.z);
            u_xlat89 = x_3007;
            let x_3009 : f32 = u_xlat20.y;
            let x_3010 : f32 = u_xlat89;
            let x_3012 : f32 = u_xlat88;
            u_xlat88 = ((x_3009 * x_3010) + x_3012);
            let x_3015 : vec4<f32> = u_xlat15;
            let x_3016 : vec2<f32> = vec2<f32>(x_3015.z, x_3015.w);
            let x_3018 : f32 = u_xlat11.z;
            txVec40 = vec3<f32>(x_3016.x, x_3016.y, x_3018);
            let x_3025 : vec3<f32> = txVec40;
            let x_3027 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3025.xy, x_3025.z);
            u_xlat89 = x_3027;
            let x_3029 : f32 = u_xlat20.z;
            let x_3030 : f32 = u_xlat89;
            let x_3032 : f32 = u_xlat88;
            u_xlat88 = ((x_3029 * x_3030) + x_3032);
            let x_3035 : vec4<f32> = u_xlat14;
            let x_3036 : vec2<f32> = vec2<f32>(x_3035.x, x_3035.y);
            let x_3038 : f32 = u_xlat11.z;
            txVec41 = vec3<f32>(x_3036.x, x_3036.y, x_3038);
            let x_3045 : vec3<f32> = txVec41;
            let x_3047 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3045.xy, x_3045.z);
            u_xlat89 = x_3047;
            let x_3049 : f32 = u_xlat20.w;
            let x_3050 : f32 = u_xlat89;
            let x_3052 : f32 = u_xlat88;
            u_xlat88 = ((x_3049 * x_3050) + x_3052);
            let x_3055 : vec4<f32> = u_xlat14;
            let x_3056 : vec2<f32> = vec2<f32>(x_3055.z, x_3055.w);
            let x_3058 : f32 = u_xlat11.z;
            txVec42 = vec3<f32>(x_3056.x, x_3056.y, x_3058);
            let x_3065 : vec3<f32> = txVec42;
            let x_3067 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3065.xy, x_3065.z);
            u_xlat89 = x_3067;
            let x_3068 : f32 = u_xlat87;
            let x_3069 : f32 = u_xlat89;
            let x_3071 : f32 = u_xlat88;
            u_xlat86 = ((x_3068 * x_3069) + x_3071);
          } else {
            let x_3074 : vec4<f32> = u_xlat11;
            let x_3077 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3080 : vec2<f32> = ((vec2<f32>(x_3074.x, x_3074.y) * vec2<f32>(x_3077.z, x_3077.w)) + vec2<f32>(0.5f, 0.5f));
            let x_3081 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3080.x, x_3080.y, x_3081.z, x_3081.w);
            let x_3083 : vec4<f32> = u_xlat12;
            let x_3085 : vec2<f32> = floor(vec2<f32>(x_3083.x, x_3083.y));
            let x_3086 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3085.x, x_3085.y, x_3086.z, x_3086.w);
            let x_3088 : vec4<f32> = u_xlat11;
            let x_3091 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3094 : vec4<f32> = u_xlat12;
            u_xlat64 = ((vec2<f32>(x_3088.x, x_3088.y) * vec2<f32>(x_3091.z, x_3091.w)) + -(vec2<f32>(x_3094.x, x_3094.y)));
            let x_3098 : vec2<f32> = u_xlat64;
            u_xlat13 = (vec4<f32>(x_3098.x, x_3098.x, x_3098.y, x_3098.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
            let x_3101 : vec4<f32> = u_xlat13;
            let x_3103 : vec4<f32> = u_xlat13;
            u_xlat14 = (vec4<f32>(x_3101.x, x_3101.x, x_3101.z, x_3101.z) * vec4<f32>(x_3103.x, x_3103.x, x_3103.z, x_3103.z));
            let x_3106 : vec4<f32> = u_xlat14;
            let x_3108 : vec2<f32> = (vec2<f32>(x_3106.y, x_3106.w) * vec2<f32>(0.04081600159406661987f, 0.04081600159406661987f));
            let x_3109 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3109.x, x_3108.x, x_3109.z, x_3108.y);
            let x_3111 : vec4<f32> = u_xlat14;
            let x_3114 : vec2<f32> = u_xlat64;
            let x_3116 : vec2<f32> = ((vec2<f32>(x_3111.x, x_3111.z) * vec2<f32>(0.5f, 0.5f)) + -(x_3114));
            let x_3117 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3116.x, x_3117.y, x_3116.y, x_3117.w);
            let x_3119 : vec2<f32> = u_xlat64;
            let x_3121 : vec2<f32> = (-(x_3119) + vec2<f32>(1.0f, 1.0f));
            let x_3122 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3121.x, x_3121.y, x_3122.z, x_3122.w);
            let x_3124 : vec2<f32> = u_xlat64;
            u_xlat66 = min(x_3124, vec2<f32>(0.0f, 0.0f));
            let x_3126 : vec2<f32> = u_xlat66;
            let x_3128 : vec2<f32> = u_xlat66;
            let x_3130 : vec4<f32> = u_xlat14;
            let x_3132 : vec2<f32> = ((-(x_3126) * x_3128) + vec2<f32>(x_3130.x, x_3130.y));
            let x_3133 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3132.x, x_3132.y, x_3133.z, x_3133.w);
            let x_3135 : vec2<f32> = u_xlat64;
            u_xlat66 = max(x_3135, vec2<f32>(0.0f, 0.0f));
            let x_3138 : vec2<f32> = u_xlat66;
            let x_3140 : vec2<f32> = u_xlat66;
            let x_3142 : vec4<f32> = u_xlat13;
            let x_3144 : vec2<f32> = ((-(x_3138) * x_3140) + vec2<f32>(x_3142.y, x_3142.w));
            let x_3145 : vec3<f32> = u_xlat39;
            u_xlat39 = vec3<f32>(x_3144.x, x_3145.y, x_3144.y);
            let x_3147 : vec4<f32> = u_xlat14;
            let x_3149 : vec2<f32> = (vec2<f32>(x_3147.x, x_3147.y) + vec2<f32>(2.0f, 2.0f));
            let x_3150 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3149.x, x_3149.y, x_3150.z, x_3150.w);
            let x_3152 : vec3<f32> = u_xlat39;
            let x_3154 : vec2<f32> = (vec2<f32>(x_3152.x, x_3152.z) + vec2<f32>(2.0f, 2.0f));
            let x_3155 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3155.x, x_3154.x, x_3155.z, x_3154.y);
            let x_3158 : f32 = u_xlat13.y;
            u_xlat16.z = (x_3158 * 0.08163200318813323975f);
            let x_3161 : vec4<f32> = u_xlat13;
            let x_3163 : vec3<f32> = (vec3<f32>(x_3161.z, x_3161.x, x_3161.w) * vec3<f32>(0.08163200318813323975f, 0.08163200318813323975f, 0.08163200318813323975f));
            let x_3164 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3163.x, x_3163.y, x_3163.z, x_3164.w);
            let x_3166 : vec4<f32> = u_xlat14;
            let x_3168 : vec2<f32> = (vec2<f32>(x_3166.x, x_3166.y) * vec2<f32>(0.08163200318813323975f, 0.08163200318813323975f));
            let x_3169 : vec4<f32> = u_xlat13;
            u_xlat13 = vec4<f32>(x_3168.x, x_3168.y, x_3169.z, x_3169.w);
            let x_3172 : f32 = u_xlat17.y;
            u_xlat16.x = x_3172;
            let x_3174 : vec2<f32> = u_xlat64;
            let x_3177 : vec2<f32> = ((vec2<f32>(x_3174.x, x_3174.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3178 : vec4<f32> = u_xlat16;
            u_xlat16 = vec4<f32>(x_3178.x, x_3177.x, x_3178.z, x_3177.y);
            let x_3180 : vec2<f32> = u_xlat64;
            let x_3183 : vec2<f32> = ((vec2<f32>(x_3180.x, x_3180.x) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3184 : vec4<f32> = u_xlat14;
            u_xlat14 = vec4<f32>(x_3183.x, x_3184.y, x_3183.y, x_3184.w);
            let x_3187 : f32 = u_xlat13.x;
            u_xlat14.y = x_3187;
            let x_3190 : f32 = u_xlat15.y;
            u_xlat14.w = x_3190;
            let x_3192 : vec4<f32> = u_xlat14;
            let x_3193 : vec4<f32> = u_xlat16;
            u_xlat16 = (x_3192 + x_3193);
            let x_3195 : vec2<f32> = u_xlat64;
            let x_3198 : vec2<f32> = ((vec2<f32>(x_3195.y, x_3195.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.16326400637626647949f, 0.08163200318813323975f));
            let x_3199 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3199.x, x_3198.x, x_3199.z, x_3198.y);
            let x_3201 : vec2<f32> = u_xlat64;
            let x_3204 : vec2<f32> = ((vec2<f32>(x_3201.y, x_3201.y) * vec2<f32>(-0.08163200318813323975f, 0.08163200318813323975f)) + vec2<f32>(0.08163200318813323975f, 0.16326400637626647949f));
            let x_3205 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3204.x, x_3205.y, x_3204.y, x_3205.w);
            let x_3208 : f32 = u_xlat13.y;
            u_xlat15.y = x_3208;
            let x_3210 : vec4<f32> = u_xlat15;
            let x_3211 : vec4<f32> = u_xlat17;
            u_xlat13 = (x_3210 + x_3211);
            let x_3213 : vec4<f32> = u_xlat14;
            let x_3214 : vec4<f32> = u_xlat16;
            u_xlat14 = (x_3213 / x_3214);
            let x_3216 : vec4<f32> = u_xlat14;
            u_xlat14 = (x_3216 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3218 : vec4<f32> = u_xlat15;
            let x_3219 : vec4<f32> = u_xlat13;
            u_xlat15 = (x_3218 / x_3219);
            let x_3221 : vec4<f32> = u_xlat15;
            u_xlat15 = (x_3221 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
            let x_3223 : vec4<f32> = u_xlat14;
            let x_3226 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            u_xlat14 = (vec4<f32>(x_3223.w, x_3223.x, x_3223.y, x_3223.z) * vec4<f32>(x_3226.x, x_3226.x, x_3226.x, x_3226.x));
            let x_3229 : vec4<f32> = u_xlat15;
            let x_3232 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            u_xlat15 = (vec4<f32>(x_3229.x, x_3229.w, x_3229.y, x_3229.z) * vec4<f32>(x_3232.y, x_3232.y, x_3232.y, x_3232.y));
            let x_3235 : vec4<f32> = u_xlat14;
            let x_3236 : vec3<f32> = vec3<f32>(x_3235.y, x_3235.z, x_3235.w);
            let x_3237 : vec4<f32> = u_xlat17;
            u_xlat17 = vec4<f32>(x_3236.x, x_3237.y, x_3236.y, x_3236.z);
            let x_3240 : f32 = u_xlat15.x;
            u_xlat17.y = x_3240;
            let x_3242 : vec4<f32> = u_xlat12;
            let x_3245 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3248 : vec4<f32> = u_xlat17;
            u_xlat18 = ((vec4<f32>(x_3242.x, x_3242.y, x_3242.x, x_3242.y) * vec4<f32>(x_3245.x, x_3245.y, x_3245.x, x_3245.y)) + vec4<f32>(x_3248.x, x_3248.y, x_3248.z, x_3248.y));
            let x_3251 : vec4<f32> = u_xlat12;
            let x_3254 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3257 : vec4<f32> = u_xlat17;
            u_xlat64 = ((vec2<f32>(x_3251.x, x_3251.y) * vec2<f32>(x_3254.x, x_3254.y)) + vec2<f32>(x_3257.w, x_3257.y));
            let x_3261 : f32 = u_xlat17.y;
            u_xlat14.y = x_3261;
            let x_3264 : f32 = u_xlat15.z;
            u_xlat17.y = x_3264;
            let x_3266 : vec4<f32> = u_xlat12;
            let x_3269 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3272 : vec4<f32> = u_xlat17;
            u_xlat19 = ((vec4<f32>(x_3266.x, x_3266.y, x_3266.x, x_3266.y) * vec4<f32>(x_3269.x, x_3269.y, x_3269.x, x_3269.y)) + vec4<f32>(x_3272.x, x_3272.y, x_3272.z, x_3272.y));
            let x_3275 : vec4<f32> = u_xlat12;
            let x_3278 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3281 : vec4<f32> = u_xlat17;
            let x_3283 : vec2<f32> = ((vec2<f32>(x_3275.x, x_3275.y) * vec2<f32>(x_3278.x, x_3278.y)) + vec2<f32>(x_3281.w, x_3281.y));
            let x_3284 : vec4<f32> = u_xlat20;
            u_xlat20 = vec4<f32>(x_3283.x, x_3283.y, x_3284.z, x_3284.w);
            let x_3287 : f32 = u_xlat17.y;
            u_xlat14.z = x_3287;
            let x_3290 : vec4<f32> = u_xlat12;
            let x_3293 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3296 : vec4<f32> = u_xlat14;
            u_xlat21 = ((vec4<f32>(x_3290.x, x_3290.y, x_3290.x, x_3290.y) * vec4<f32>(x_3293.x, x_3293.y, x_3293.x, x_3293.y)) + vec4<f32>(x_3296.x, x_3296.y, x_3296.x, x_3296.z));
            let x_3300 : f32 = u_xlat15.w;
            u_xlat17.y = x_3300;
            let x_3303 : vec4<f32> = u_xlat12;
            let x_3306 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3309 : vec4<f32> = u_xlat17;
            u_xlat22 = ((vec4<f32>(x_3303.x, x_3303.y, x_3303.x, x_3303.y) * vec4<f32>(x_3306.x, x_3306.y, x_3306.x, x_3306.y)) + vec4<f32>(x_3309.x, x_3309.y, x_3309.z, x_3309.y));
            let x_3313 : vec4<f32> = u_xlat12;
            let x_3316 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3319 : vec4<f32> = u_xlat17;
            u_xlat40 = ((vec2<f32>(x_3313.x, x_3313.y) * vec2<f32>(x_3316.x, x_3316.y)) + vec2<f32>(x_3319.w, x_3319.y));
            let x_3323 : f32 = u_xlat17.y;
            u_xlat14.w = x_3323;
            let x_3326 : vec4<f32> = u_xlat12;
            let x_3329 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3332 : vec4<f32> = u_xlat14;
            u_xlat72 = ((vec2<f32>(x_3326.x, x_3326.y) * vec2<f32>(x_3329.x, x_3329.y)) + vec2<f32>(x_3332.x, x_3332.w));
            let x_3335 : vec4<f32> = u_xlat17;
            let x_3336 : vec3<f32> = vec3<f32>(x_3335.x, x_3335.z, x_3335.w);
            let x_3337 : vec4<f32> = u_xlat15;
            u_xlat15 = vec4<f32>(x_3336.x, x_3337.y, x_3336.y, x_3336.z);
            let x_3339 : vec4<f32> = u_xlat12;
            let x_3342 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3345 : vec4<f32> = u_xlat15;
            u_xlat17 = ((vec4<f32>(x_3339.x, x_3339.y, x_3339.x, x_3339.y) * vec4<f32>(x_3342.x, x_3342.y, x_3342.x, x_3342.y)) + vec4<f32>(x_3345.x, x_3345.y, x_3345.z, x_3345.y));
            let x_3349 : vec4<f32> = u_xlat12;
            let x_3352 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3355 : vec4<f32> = u_xlat15;
            u_xlat67 = ((vec2<f32>(x_3349.x, x_3349.y) * vec2<f32>(x_3352.x, x_3352.y)) + vec2<f32>(x_3355.w, x_3355.y));
            let x_3359 : f32 = u_xlat14.x;
            u_xlat15.x = x_3359;
            let x_3361 : vec4<f32> = u_xlat12;
            let x_3364 : vec4<f32> = x_484.x_AdditionalShadowmapSize;
            let x_3367 : vec4<f32> = u_xlat15;
            let x_3369 : vec2<f32> = ((vec2<f32>(x_3361.x, x_3361.y) * vec2<f32>(x_3364.x, x_3364.y)) + vec2<f32>(x_3367.x, x_3367.y));
            let x_3370 : vec4<f32> = u_xlat12;
            u_xlat12 = vec4<f32>(x_3369.x, x_3369.y, x_3370.z, x_3370.w);
            let x_3373 : vec4<f32> = u_xlat13;
            let x_3375 : vec4<f32> = u_xlat16;
            u_xlat23 = (vec4<f32>(x_3373.x, x_3373.x, x_3373.x, x_3373.x) * x_3375);
            let x_3378 : vec4<f32> = u_xlat13;
            let x_3380 : vec4<f32> = u_xlat16;
            u_xlat24 = (vec4<f32>(x_3378.y, x_3378.y, x_3378.y, x_3378.y) * x_3380);
            let x_3383 : vec4<f32> = u_xlat13;
            let x_3385 : vec4<f32> = u_xlat16;
            u_xlat25 = (vec4<f32>(x_3383.z, x_3383.z, x_3383.z, x_3383.z) * x_3385);
            let x_3387 : vec4<f32> = u_xlat13;
            let x_3389 : vec4<f32> = u_xlat16;
            u_xlat13 = (vec4<f32>(x_3387.w, x_3387.w, x_3387.w, x_3387.w) * x_3389);
            let x_3392 : vec4<f32> = u_xlat18;
            let x_3393 : vec2<f32> = vec2<f32>(x_3392.x, x_3392.y);
            let x_3395 : f32 = u_xlat11.z;
            txVec43 = vec3<f32>(x_3393.x, x_3393.y, x_3395);
            let x_3402 : vec3<f32> = txVec43;
            let x_3404 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3402.xy, x_3402.z);
            u_xlat87 = x_3404;
            let x_3406 : vec4<f32> = u_xlat18;
            let x_3407 : vec2<f32> = vec2<f32>(x_3406.z, x_3406.w);
            let x_3409 : f32 = u_xlat11.z;
            txVec44 = vec3<f32>(x_3407.x, x_3407.y, x_3409);
            let x_3416 : vec3<f32> = txVec44;
            let x_3418 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3416.xy, x_3416.z);
            u_xlat88 = x_3418;
            let x_3419 : f32 = u_xlat88;
            let x_3421 : f32 = u_xlat23.y;
            u_xlat88 = (x_3419 * x_3421);
            let x_3424 : f32 = u_xlat23.x;
            let x_3425 : f32 = u_xlat87;
            let x_3427 : f32 = u_xlat88;
            u_xlat87 = ((x_3424 * x_3425) + x_3427);
            let x_3430 : vec2<f32> = u_xlat64;
            let x_3432 : f32 = u_xlat11.z;
            txVec45 = vec3<f32>(x_3430.x, x_3430.y, x_3432);
            let x_3439 : vec3<f32> = txVec45;
            let x_3441 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3439.xy, x_3439.z);
            u_xlat88 = x_3441;
            let x_3443 : f32 = u_xlat23.z;
            let x_3444 : f32 = u_xlat88;
            let x_3446 : f32 = u_xlat87;
            u_xlat87 = ((x_3443 * x_3444) + x_3446);
            let x_3449 : vec4<f32> = u_xlat21;
            let x_3450 : vec2<f32> = vec2<f32>(x_3449.x, x_3449.y);
            let x_3452 : f32 = u_xlat11.z;
            txVec46 = vec3<f32>(x_3450.x, x_3450.y, x_3452);
            let x_3459 : vec3<f32> = txVec46;
            let x_3461 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3459.xy, x_3459.z);
            u_xlat88 = x_3461;
            let x_3463 : f32 = u_xlat23.w;
            let x_3464 : f32 = u_xlat88;
            let x_3466 : f32 = u_xlat87;
            u_xlat87 = ((x_3463 * x_3464) + x_3466);
            let x_3469 : vec4<f32> = u_xlat19;
            let x_3470 : vec2<f32> = vec2<f32>(x_3469.x, x_3469.y);
            let x_3472 : f32 = u_xlat11.z;
            txVec47 = vec3<f32>(x_3470.x, x_3470.y, x_3472);
            let x_3479 : vec3<f32> = txVec47;
            let x_3481 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3479.xy, x_3479.z);
            u_xlat88 = x_3481;
            let x_3483 : f32 = u_xlat24.x;
            let x_3484 : f32 = u_xlat88;
            let x_3486 : f32 = u_xlat87;
            u_xlat87 = ((x_3483 * x_3484) + x_3486);
            let x_3489 : vec4<f32> = u_xlat19;
            let x_3490 : vec2<f32> = vec2<f32>(x_3489.z, x_3489.w);
            let x_3492 : f32 = u_xlat11.z;
            txVec48 = vec3<f32>(x_3490.x, x_3490.y, x_3492);
            let x_3499 : vec3<f32> = txVec48;
            let x_3501 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3499.xy, x_3499.z);
            u_xlat88 = x_3501;
            let x_3503 : f32 = u_xlat24.y;
            let x_3504 : f32 = u_xlat88;
            let x_3506 : f32 = u_xlat87;
            u_xlat87 = ((x_3503 * x_3504) + x_3506);
            let x_3509 : vec4<f32> = u_xlat20;
            let x_3510 : vec2<f32> = vec2<f32>(x_3509.x, x_3509.y);
            let x_3512 : f32 = u_xlat11.z;
            txVec49 = vec3<f32>(x_3510.x, x_3510.y, x_3512);
            let x_3519 : vec3<f32> = txVec49;
            let x_3521 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3519.xy, x_3519.z);
            u_xlat88 = x_3521;
            let x_3523 : f32 = u_xlat24.z;
            let x_3524 : f32 = u_xlat88;
            let x_3526 : f32 = u_xlat87;
            u_xlat87 = ((x_3523 * x_3524) + x_3526);
            let x_3529 : vec4<f32> = u_xlat21;
            let x_3530 : vec2<f32> = vec2<f32>(x_3529.z, x_3529.w);
            let x_3532 : f32 = u_xlat11.z;
            txVec50 = vec3<f32>(x_3530.x, x_3530.y, x_3532);
            let x_3539 : vec3<f32> = txVec50;
            let x_3541 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3539.xy, x_3539.z);
            u_xlat88 = x_3541;
            let x_3543 : f32 = u_xlat24.w;
            let x_3544 : f32 = u_xlat88;
            let x_3546 : f32 = u_xlat87;
            u_xlat87 = ((x_3543 * x_3544) + x_3546);
            let x_3549 : vec4<f32> = u_xlat22;
            let x_3550 : vec2<f32> = vec2<f32>(x_3549.x, x_3549.y);
            let x_3552 : f32 = u_xlat11.z;
            txVec51 = vec3<f32>(x_3550.x, x_3550.y, x_3552);
            let x_3559 : vec3<f32> = txVec51;
            let x_3561 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3559.xy, x_3559.z);
            u_xlat88 = x_3561;
            let x_3563 : f32 = u_xlat25.x;
            let x_3564 : f32 = u_xlat88;
            let x_3566 : f32 = u_xlat87;
            u_xlat87 = ((x_3563 * x_3564) + x_3566);
            let x_3569 : vec4<f32> = u_xlat22;
            let x_3570 : vec2<f32> = vec2<f32>(x_3569.z, x_3569.w);
            let x_3572 : f32 = u_xlat11.z;
            txVec52 = vec3<f32>(x_3570.x, x_3570.y, x_3572);
            let x_3579 : vec3<f32> = txVec52;
            let x_3581 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3579.xy, x_3579.z);
            u_xlat88 = x_3581;
            let x_3583 : f32 = u_xlat25.y;
            let x_3584 : f32 = u_xlat88;
            let x_3586 : f32 = u_xlat87;
            u_xlat87 = ((x_3583 * x_3584) + x_3586);
            let x_3589 : vec2<f32> = u_xlat40;
            let x_3591 : f32 = u_xlat11.z;
            txVec53 = vec3<f32>(x_3589.x, x_3589.y, x_3591);
            let x_3598 : vec3<f32> = txVec53;
            let x_3600 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3598.xy, x_3598.z);
            u_xlat88 = x_3600;
            let x_3602 : f32 = u_xlat25.z;
            let x_3603 : f32 = u_xlat88;
            let x_3605 : f32 = u_xlat87;
            u_xlat87 = ((x_3602 * x_3603) + x_3605);
            let x_3608 : vec2<f32> = u_xlat72;
            let x_3610 : f32 = u_xlat11.z;
            txVec54 = vec3<f32>(x_3608.x, x_3608.y, x_3610);
            let x_3617 : vec3<f32> = txVec54;
            let x_3619 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3617.xy, x_3617.z);
            u_xlat88 = x_3619;
            let x_3621 : f32 = u_xlat25.w;
            let x_3622 : f32 = u_xlat88;
            let x_3624 : f32 = u_xlat87;
            u_xlat87 = ((x_3621 * x_3622) + x_3624);
            let x_3627 : vec4<f32> = u_xlat17;
            let x_3628 : vec2<f32> = vec2<f32>(x_3627.x, x_3627.y);
            let x_3630 : f32 = u_xlat11.z;
            txVec55 = vec3<f32>(x_3628.x, x_3628.y, x_3630);
            let x_3637 : vec3<f32> = txVec55;
            let x_3639 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3637.xy, x_3637.z);
            u_xlat88 = x_3639;
            let x_3641 : f32 = u_xlat13.x;
            let x_3642 : f32 = u_xlat88;
            let x_3644 : f32 = u_xlat87;
            u_xlat87 = ((x_3641 * x_3642) + x_3644);
            let x_3647 : vec4<f32> = u_xlat17;
            let x_3648 : vec2<f32> = vec2<f32>(x_3647.z, x_3647.w);
            let x_3650 : f32 = u_xlat11.z;
            txVec56 = vec3<f32>(x_3648.x, x_3648.y, x_3650);
            let x_3657 : vec3<f32> = txVec56;
            let x_3659 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3657.xy, x_3657.z);
            u_xlat88 = x_3659;
            let x_3661 : f32 = u_xlat13.y;
            let x_3662 : f32 = u_xlat88;
            let x_3664 : f32 = u_xlat87;
            u_xlat87 = ((x_3661 * x_3662) + x_3664);
            let x_3667 : vec2<f32> = u_xlat67;
            let x_3669 : f32 = u_xlat11.z;
            txVec57 = vec3<f32>(x_3667.x, x_3667.y, x_3669);
            let x_3676 : vec3<f32> = txVec57;
            let x_3678 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3676.xy, x_3676.z);
            u_xlat88 = x_3678;
            let x_3680 : f32 = u_xlat13.z;
            let x_3681 : f32 = u_xlat88;
            let x_3683 : f32 = u_xlat87;
            u_xlat87 = ((x_3680 * x_3681) + x_3683);
            let x_3686 : vec4<f32> = u_xlat12;
            let x_3687 : vec2<f32> = vec2<f32>(x_3686.x, x_3686.y);
            let x_3689 : f32 = u_xlat11.z;
            txVec58 = vec3<f32>(x_3687.x, x_3687.y, x_3689);
            let x_3696 : vec3<f32> = txVec58;
            let x_3698 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3696.xy, x_3696.z);
            u_xlat88 = x_3698;
            let x_3700 : f32 = u_xlat13.w;
            let x_3701 : f32 = u_xlat88;
            let x_3703 : f32 = u_xlat87;
            u_xlat86 = ((x_3700 * x_3701) + x_3703);
          }
        }
      } else {
        let x_3707 : vec4<f32> = u_xlat11;
        let x_3708 : vec2<f32> = vec2<f32>(x_3707.x, x_3707.y);
        let x_3710 : f32 = u_xlat11.z;
        txVec59 = vec3<f32>(x_3708.x, x_3708.y, x_3710);
        let x_3717 : vec3<f32> = txVec59;
        let x_3719 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_3717.xy, x_3717.z);
        u_xlat86 = x_3719;
      }
      let x_3720 : i32 = u_xlati6;
      let x_3722 : f32 = x_484.x_AdditionalShadowParams[x_3720].x;
      u_xlat87 = (1.0f + -(x_3722));
      let x_3725 : f32 = u_xlat86;
      let x_3726 : i32 = u_xlati6;
      let x_3728 : f32 = x_484.x_AdditionalShadowParams[x_3726].x;
      let x_3730 : f32 = u_xlat87;
      u_xlat86 = ((x_3725 * x_3728) + x_3730);
      let x_3733 : f32 = u_xlat11.z;
      u_xlatb87 = (0.0f >= x_3733);
      let x_3737 : f32 = u_xlat11.z;
      u_xlatb88 = (x_3737 >= 1.0f);
      let x_3739 : bool = u_xlatb87;
      let x_3740 : bool = u_xlatb88;
      u_xlatb87 = (x_3739 | x_3740);
      let x_3742 : bool = u_xlatb87;
      let x_3743 : f32 = u_xlat86;
      u_xlat86 = select(x_3743, 1.0f, x_3742);
    } else {
      u_xlat86 = 1.0f;
    }
    let x_3746 : f32 = u_xlat86;
    u_xlat87 = (-(x_3746) + 1.0f);
    let x_3749 : f32 = u_xlat79;
    let x_3750 : f32 = u_xlat87;
    let x_3752 : f32 = u_xlat86;
    u_xlat86 = ((x_3749 * x_3750) + x_3752);
    let x_3755 : i32 = u_xlati6;
    u_xlati87 = (1i << bitcast<u32>((x_3755 & 31i)));
    let x_3759 : i32 = u_xlati87;
    let x_3762 : f32 = x_1833.x_AdditionalLightsCookieEnableBits;
    u_xlati87 = bitcast<i32>((bitcast<u32>(x_3759) & bitcast<u32>(x_3762)));
    let x_3766 : i32 = u_xlati87;
    if ((x_3766 != 0i)) {
      let x_3770 : i32 = u_xlati6;
      let x_3772 : f32 = x_1833.x_AdditionalLightsLightTypes[x_3770].el;
      u_xlati87 = i32(x_3772);
      let x_3775 : i32 = u_xlati87;
      u_xlati88 = select(1i, 0i, (x_3775 != 0i));
      let x_3779 : i32 = u_xlati6;
      u_xlati11 = (x_3779 << bitcast<u32>(2i));
      let x_3781 : i32 = u_xlati88;
      if ((x_3781 != 0i)) {
        let x_3786 : vec3<f32> = vs_TEXCOORD1;
        let x_3788 : i32 = u_xlati11;
        let x_3791 : i32 = u_xlati11;
        let x_3795 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3788 + 1i) / 4i)][((x_3791 + 1i) % 4i)];
        u_xlat37 = (vec3<f32>(x_3786.y, x_3786.y, x_3786.y) * vec3<f32>(x_3795.x, x_3795.y, x_3795.w));
        let x_3798 : i32 = u_xlati11;
        let x_3800 : i32 = u_xlati11;
        let x_3803 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[(x_3798 / 4i)][(x_3800 % 4i)];
        let x_3805 : vec3<f32> = vs_TEXCOORD1;
        let x_3808 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3803.x, x_3803.y, x_3803.w) * vec3<f32>(x_3805.x, x_3805.x, x_3805.x)) + x_3808);
        let x_3810 : i32 = u_xlati11;
        let x_3813 : i32 = u_xlati11;
        let x_3817 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3810 + 2i) / 4i)][((x_3813 + 2i) % 4i)];
        let x_3819 : vec3<f32> = vs_TEXCOORD1;
        let x_3822 : vec3<f32> = u_xlat37;
        u_xlat37 = ((vec3<f32>(x_3817.x, x_3817.y, x_3817.w) * vec3<f32>(x_3819.z, x_3819.z, x_3819.z)) + x_3822);
        let x_3824 : vec3<f32> = u_xlat37;
        let x_3825 : i32 = u_xlati11;
        let x_3828 : i32 = u_xlati11;
        let x_3832 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3825 + 3i) / 4i)][((x_3828 + 3i) % 4i)];
        u_xlat37 = (x_3824 + vec3<f32>(x_3832.x, x_3832.y, x_3832.w));
        let x_3835 : vec3<f32> = u_xlat37;
        let x_3837 : vec3<f32> = u_xlat37;
        let x_3839 : vec2<f32> = (vec2<f32>(x_3835.x, x_3835.y) / vec2<f32>(x_3837.z, x_3837.z));
        let x_3840 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3839.x, x_3839.y, x_3840.z);
        let x_3842 : vec3<f32> = u_xlat37;
        let x_3845 : vec2<f32> = ((vec2<f32>(x_3842.x, x_3842.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_3846 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3845.x, x_3845.y, x_3846.z);
        let x_3848 : vec3<f32> = u_xlat37;
        let x_3852 : vec2<f32> = clamp(vec2<f32>(x_3848.x, x_3848.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_3853 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3852.x, x_3852.y, x_3853.z);
        let x_3855 : i32 = u_xlati6;
        let x_3857 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_3855];
        let x_3859 : vec3<f32> = u_xlat37;
        let x_3862 : i32 = u_xlati6;
        let x_3864 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_3862];
        let x_3866 : vec2<f32> = ((vec2<f32>(x_3857.x, x_3857.y) * vec2<f32>(x_3859.x, x_3859.y)) + vec2<f32>(x_3864.z, x_3864.w));
        let x_3867 : vec3<f32> = u_xlat37;
        u_xlat37 = vec3<f32>(x_3866.x, x_3866.y, x_3867.z);
      } else {
        let x_3870 : i32 = u_xlati87;
        u_xlatb87 = (x_3870 == 1i);
        let x_3872 : bool = u_xlatb87;
        u_xlati87 = select(0i, 1i, x_3872);
        let x_3874 : i32 = u_xlati87;
        if ((x_3874 != 0i)) {
          let x_3878 : vec3<f32> = vs_TEXCOORD1;
          let x_3880 : i32 = u_xlati11;
          let x_3883 : i32 = u_xlati11;
          let x_3887 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3880 + 1i) / 4i)][((x_3883 + 1i) % 4i)];
          let x_3889 : vec2<f32> = (vec2<f32>(x_3878.y, x_3878.y) * vec2<f32>(x_3887.x, x_3887.y));
          let x_3890 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3889.x, x_3889.y, x_3890.z, x_3890.w);
          let x_3892 : i32 = u_xlati11;
          let x_3894 : i32 = u_xlati11;
          let x_3897 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[(x_3892 / 4i)][(x_3894 % 4i)];
          let x_3899 : vec3<f32> = vs_TEXCOORD1;
          let x_3902 : vec4<f32> = u_xlat12;
          let x_3904 : vec2<f32> = ((vec2<f32>(x_3897.x, x_3897.y) * vec2<f32>(x_3899.x, x_3899.x)) + vec2<f32>(x_3902.x, x_3902.y));
          let x_3905 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3904.x, x_3904.y, x_3905.z, x_3905.w);
          let x_3907 : i32 = u_xlati11;
          let x_3910 : i32 = u_xlati11;
          let x_3914 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3907 + 2i) / 4i)][((x_3910 + 2i) % 4i)];
          let x_3916 : vec3<f32> = vs_TEXCOORD1;
          let x_3919 : vec4<f32> = u_xlat12;
          let x_3921 : vec2<f32> = ((vec2<f32>(x_3914.x, x_3914.y) * vec2<f32>(x_3916.z, x_3916.z)) + vec2<f32>(x_3919.x, x_3919.y));
          let x_3922 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3921.x, x_3921.y, x_3922.z, x_3922.w);
          let x_3924 : vec4<f32> = u_xlat12;
          let x_3926 : i32 = u_xlati11;
          let x_3929 : i32 = u_xlati11;
          let x_3933 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3926 + 3i) / 4i)][((x_3929 + 3i) % 4i)];
          let x_3935 : vec2<f32> = (vec2<f32>(x_3924.x, x_3924.y) + vec2<f32>(x_3933.x, x_3933.y));
          let x_3936 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3935.x, x_3935.y, x_3936.z, x_3936.w);
          let x_3938 : vec4<f32> = u_xlat12;
          let x_3941 : vec2<f32> = ((vec2<f32>(x_3938.x, x_3938.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3942 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3941.x, x_3941.y, x_3942.z, x_3942.w);
          let x_3944 : vec4<f32> = u_xlat12;
          let x_3946 : vec2<f32> = fract(vec2<f32>(x_3944.x, x_3944.y));
          let x_3947 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_3946.x, x_3946.y, x_3947.z, x_3947.w);
          let x_3949 : i32 = u_xlati6;
          let x_3951 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_3949];
          let x_3953 : vec4<f32> = u_xlat12;
          let x_3956 : i32 = u_xlati6;
          let x_3958 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_3956];
          let x_3960 : vec2<f32> = ((vec2<f32>(x_3951.x, x_3951.y) * vec2<f32>(x_3953.x, x_3953.y)) + vec2<f32>(x_3958.z, x_3958.w));
          let x_3961 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_3960.x, x_3960.y, x_3961.z);
        } else {
          let x_3964 : vec3<f32> = vs_TEXCOORD1;
          let x_3966 : i32 = u_xlati11;
          let x_3969 : i32 = u_xlati11;
          let x_3973 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3966 + 1i) / 4i)][((x_3969 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_3964.y, x_3964.y, x_3964.y, x_3964.y) * x_3973);
          let x_3975 : i32 = u_xlati11;
          let x_3977 : i32 = u_xlati11;
          let x_3980 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[(x_3975 / 4i)][(x_3977 % 4i)];
          let x_3981 : vec3<f32> = vs_TEXCOORD1;
          let x_3984 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3980 * vec4<f32>(x_3981.x, x_3981.x, x_3981.x, x_3981.x)) + x_3984);
          let x_3986 : i32 = u_xlati11;
          let x_3989 : i32 = u_xlati11;
          let x_3993 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_3986 + 2i) / 4i)][((x_3989 + 2i) % 4i)];
          let x_3994 : vec3<f32> = vs_TEXCOORD1;
          let x_3997 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_3993 * vec4<f32>(x_3994.z, x_3994.z, x_3994.z, x_3994.z)) + x_3997);
          let x_3999 : vec4<f32> = u_xlat12;
          let x_4000 : i32 = u_xlati11;
          let x_4003 : i32 = u_xlati11;
          let x_4007 : vec4<f32> = x_1833.x_AdditionalLightsWorldToLights[((x_4000 + 3i) / 4i)][((x_4003 + 3i) % 4i)];
          u_xlat12 = (x_3999 + x_4007);
          let x_4009 : vec4<f32> = u_xlat12;
          let x_4011 : vec4<f32> = u_xlat12;
          let x_4013 : vec3<f32> = (vec3<f32>(x_4009.x, x_4009.y, x_4009.z) / vec3<f32>(x_4011.w, x_4011.w, x_4011.w));
          let x_4014 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4013.x, x_4013.y, x_4013.z, x_4014.w);
          let x_4016 : vec4<f32> = u_xlat12;
          let x_4018 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(vec3<f32>(x_4016.x, x_4016.y, x_4016.z), vec3<f32>(x_4018.x, x_4018.y, x_4018.z));
          let x_4021 : f32 = u_xlat87;
          u_xlat87 = inverseSqrt(x_4021);
          let x_4023 : f32 = u_xlat87;
          let x_4025 : vec4<f32> = u_xlat12;
          let x_4027 : vec3<f32> = (vec3<f32>(x_4023, x_4023, x_4023) * vec3<f32>(x_4025.x, x_4025.y, x_4025.z));
          let x_4028 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_4027.x, x_4027.y, x_4027.z, x_4028.w);
          let x_4030 : vec4<f32> = u_xlat12;
          u_xlat87 = dot(abs(vec3<f32>(x_4030.x, x_4030.y, x_4030.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_4035 : f32 = u_xlat87;
          u_xlat87 = max(x_4035, 0.00000099999999747524f);
          let x_4038 : f32 = u_xlat87;
          u_xlat87 = (1.0f / x_4038);
          let x_4040 : f32 = u_xlat87;
          let x_4042 : vec4<f32> = u_xlat12;
          let x_4044 : vec3<f32> = (vec3<f32>(x_4040, x_4040, x_4040) * vec3<f32>(x_4042.z, x_4042.x, x_4042.y));
          let x_4045 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_4044.x, x_4044.y, x_4044.z, x_4045.w);
          let x_4048 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_4048);
          let x_4052 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_4052, 0.0f, 1.0f);
          let x_4055 : vec4<f32> = u_xlat13;
          let x_4057 : vec4<bool> = (vec4<f32>(x_4055.y, x_4055.y, x_4055.y, x_4055.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_4058 : vec2<bool> = vec2<bool>(x_4057.x, x_4057.w);
          let x_4059 : vec4<bool> = u_xlatb11;
          u_xlatb11 = vec4<bool>(x_4058.x, x_4059.y, x_4059.z, x_4058.y);
          let x_4062 : bool = u_xlatb11.x;
          if (x_4062) {
            let x_4067 : f32 = u_xlat13.x;
            x_4063 = x_4067;
          } else {
            let x_4070 : f32 = u_xlat13.x;
            x_4063 = -(x_4070);
          }
          let x_4072 : f32 = x_4063;
          u_xlat11.x = x_4072;
          let x_4075 : bool = u_xlatb11.w;
          if (x_4075) {
            let x_4080 : f32 = u_xlat13.x;
            x_4076 = x_4080;
          } else {
            let x_4083 : f32 = u_xlat13.x;
            x_4076 = -(x_4083);
          }
          let x_4085 : f32 = x_4076;
          u_xlat11.w = x_4085;
          let x_4087 : vec4<f32> = u_xlat12;
          let x_4089 : f32 = u_xlat87;
          let x_4092 : vec4<f32> = u_xlat11;
          let x_4094 : vec2<f32> = ((vec2<f32>(x_4087.x, x_4087.y) * vec2<f32>(x_4089, x_4089)) + vec2<f32>(x_4092.x, x_4092.w));
          let x_4095 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4094.x, x_4095.y, x_4095.z, x_4094.y);
          let x_4097 : vec4<f32> = u_xlat11;
          let x_4100 : vec2<f32> = ((vec2<f32>(x_4097.x, x_4097.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_4101 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4100.x, x_4101.y, x_4101.z, x_4100.y);
          let x_4103 : vec4<f32> = u_xlat11;
          let x_4107 : vec2<f32> = clamp(vec2<f32>(x_4103.x, x_4103.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_4108 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_4107.x, x_4108.y, x_4108.z, x_4107.y);
          let x_4110 : i32 = u_xlati6;
          let x_4112 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_4110];
          let x_4114 : vec4<f32> = u_xlat11;
          let x_4117 : i32 = u_xlati6;
          let x_4119 : vec4<f32> = x_1833.x_AdditionalLightsCookieAtlasUVRects[x_4117];
          let x_4121 : vec2<f32> = ((vec2<f32>(x_4112.x, x_4112.y) * vec2<f32>(x_4114.x, x_4114.w)) + vec2<f32>(x_4119.z, x_4119.w));
          let x_4122 : vec3<f32> = u_xlat37;
          u_xlat37 = vec3<f32>(x_4121.x, x_4121.y, x_4122.z);
        }
      }
      let x_4129 : vec3<f32> = u_xlat37;
      let x_4131 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_4129.x, x_4129.y), 0.0f);
      u_xlat11 = x_4131;
      let x_4133 : bool = u_xlatb7.y;
      if (x_4133) {
        let x_4138 : f32 = u_xlat11.w;
        x_4134 = x_4138;
      } else {
        let x_4141 : f32 = u_xlat11.x;
        x_4134 = x_4141;
      }
      let x_4142 : f32 = x_4134;
      u_xlat87 = x_4142;
      let x_4144 : bool = u_xlatb7.x;
      if (x_4144) {
        let x_4148 : vec4<f32> = u_xlat11;
        x_4145 = vec3<f32>(x_4148.x, x_4148.y, x_4148.z);
      } else {
        let x_4151 : f32 = u_xlat87;
        x_4145 = vec3<f32>(x_4151, x_4151, x_4151);
      }
      let x_4153 : vec3<f32> = x_4145;
      let x_4154 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_4153.x, x_4153.y, x_4153.z, x_4154.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_4160 : vec4<f32> = u_xlat11;
    let x_4162 : i32 = u_xlati6;
    let x_4164 : vec4<f32> = x_2332.x_AdditionalLightsColor[x_4162];
    let x_4166 : vec3<f32> = (vec3<f32>(x_4160.x, x_4160.y, x_4160.z) * vec3<f32>(x_4164.x, x_4164.y, x_4164.z));
    let x_4167 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4166.x, x_4166.y, x_4166.z, x_4167.w);
    let x_4169 : f32 = u_xlat59;
    let x_4170 : f32 = u_xlat86;
    u_xlat6.x = (x_4169 * x_4170);
    let x_4173 : vec4<f32> = u_xlat4;
    let x_4175 : vec4<f32> = u_xlat10;
    u_xlat59 = dot(vec3<f32>(x_4173.x, x_4173.y, x_4173.z), vec3<f32>(x_4175.x, x_4175.y, x_4175.z));
    let x_4178 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4178, 0.0f, 1.0f);
    let x_4181 : f32 = u_xlat6.x;
    let x_4182 : f32 = u_xlat59;
    u_xlat6.x = (x_4181 * x_4182);
    let x_4185 : vec4<f32> = u_xlat6;
    let x_4187 : vec4<f32> = u_xlat11;
    let x_4189 : vec3<f32> = (vec3<f32>(x_4185.x, x_4185.x, x_4185.x) * vec3<f32>(x_4187.x, x_4187.y, x_4187.z));
    let x_4190 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_4189.x, x_4189.y, x_4189.z, x_4190.w);
    let x_4192 : vec4<f32> = u_xlat9;
    let x_4194 : f32 = u_xlat85;
    let x_4197 : vec3<f32> = u_xlat29;
    let x_4198 : vec3<f32> = ((vec3<f32>(x_4192.x, x_4192.y, x_4192.z) * vec3<f32>(x_4194, x_4194, x_4194)) + x_4197);
    let x_4199 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4198.x, x_4198.y, x_4198.z, x_4199.w);
    let x_4201 : vec4<f32> = u_xlat9;
    let x_4203 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4201.x, x_4201.y, x_4201.z), vec3<f32>(x_4203.x, x_4203.y, x_4203.z));
    let x_4208 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_4208, 1.17549435e-38f);
    let x_4212 : f32 = u_xlat6.x;
    u_xlat6.x = inverseSqrt(x_4212);
    let x_4215 : vec4<f32> = u_xlat6;
    let x_4217 : vec4<f32> = u_xlat9;
    let x_4219 : vec3<f32> = (vec3<f32>(x_4215.x, x_4215.x, x_4215.x) * vec3<f32>(x_4217.x, x_4217.y, x_4217.z));
    let x_4220 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4219.x, x_4219.y, x_4219.z, x_4220.w);
    let x_4222 : vec4<f32> = u_xlat4;
    let x_4224 : vec4<f32> = u_xlat9;
    u_xlat6.x = dot(vec3<f32>(x_4222.x, x_4222.y, x_4222.z), vec3<f32>(x_4224.x, x_4224.y, x_4224.z));
    let x_4229 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_4229, 0.0f, 1.0f);
    let x_4232 : vec4<f32> = u_xlat10;
    let x_4234 : vec4<f32> = u_xlat9;
    u_xlat59 = dot(vec3<f32>(x_4232.x, x_4232.y, x_4232.z), vec3<f32>(x_4234.x, x_4234.y, x_4234.z));
    let x_4237 : f32 = u_xlat59;
    u_xlat59 = clamp(x_4237, 0.0f, 1.0f);
    let x_4240 : f32 = u_xlat6.x;
    let x_4242 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4240 * x_4242);
    let x_4246 : f32 = u_xlat6.x;
    let x_4248 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_4246 * x_4248) + 1.00001001358032226562f);
    let x_4252 : f32 = u_xlat59;
    let x_4253 : f32 = u_xlat59;
    u_xlat59 = (x_4252 * x_4253);
    let x_4256 : f32 = u_xlat6.x;
    let x_4258 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4256 * x_4258);
    let x_4261 : f32 = u_xlat59;
    u_xlat59 = max(x_4261, 0.10000000149011611938f);
    let x_4264 : f32 = u_xlat6.x;
    let x_4265 : f32 = u_xlat59;
    u_xlat6.x = (x_4264 * x_4265);
    let x_4268 : f32 = u_xlat82;
    let x_4270 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4268 * x_4270);
    let x_4274 : f32 = u_xlat53.x;
    let x_4276 : f32 = u_xlat6.x;
    u_xlat6.x = (x_4274 / x_4276);
    let x_4279 : vec4<f32> = u_xlat0;
    let x_4281 : vec4<f32> = u_xlat6;
    let x_4284 : vec3<f32> = u_xlat28;
    let x_4285 : vec3<f32> = ((vec3<f32>(x_4279.x, x_4279.y, x_4279.z) * vec3<f32>(x_4281.x, x_4281.x, x_4281.x)) + x_4284);
    let x_4286 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_4285.x, x_4285.y, x_4285.z, x_4286.w);
    let x_4288 : vec4<f32> = u_xlat9;
    let x_4290 : vec4<f32> = u_xlat11;
    let x_4293 : vec4<f32> = u_xlat8;
    let x_4295 : vec3<f32> = ((vec3<f32>(x_4288.x, x_4288.y, x_4288.z) * vec3<f32>(x_4290.x, x_4290.y, x_4290.z)) + vec3<f32>(x_4293.x, x_4293.y, x_4293.z));
    let x_4296 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_4295.x, x_4295.y, x_4295.z, x_4296.w);

    continuing {
      let x_4298 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_4298 + bitcast<u32>(1i));
    }
  }
  let x_4300 : vec3<f32> = u_xlat5;
  let x_4301 : vec3<f32> = u_xlat3;
  let x_4304 : vec3<f32> = u_xlat32;
  let x_4305 : vec3<f32> = ((x_4300 * vec3<f32>(x_4301.x, x_4301.x, x_4301.x)) + x_4304);
  let x_4306 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4305.x, x_4305.y, x_4305.z, x_4306.w);
  let x_4308 : vec4<f32> = u_xlat8;
  let x_4310 : vec4<f32> = u_xlat0;
  let x_4312 : vec3<f32> = (vec3<f32>(x_4308.x, x_4308.y, x_4308.z) + vec3<f32>(x_4310.x, x_4310.y, x_4310.z));
  let x_4313 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4312.x, x_4312.y, x_4312.z, x_4313.w);
  let x_4315 : f32 = u_xlat78;
  let x_4316 : f32 = u_xlat78;
  u_xlat78 = (x_4315 * -(x_4316));
  let x_4319 : f32 = u_xlat78;
  u_xlat78 = exp2(x_4319);
  let x_4321 : vec4<f32> = u_xlat0;
  let x_4324 : vec4<f32> = x_28.unity_FogColor;
  let x_4327 : vec3<f32> = (vec3<f32>(x_4321.x, x_4321.y, x_4321.z) + -(vec3<f32>(x_4324.x, x_4324.y, x_4324.z)));
  let x_4328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_4327.x, x_4327.y, x_4327.z, x_4328.w);
  let x_4332 : f32 = u_xlat78;
  let x_4334 : vec4<f32> = u_xlat0;
  let x_4338 : vec4<f32> = x_28.unity_FogColor;
  let x_4340 : vec3<f32> = ((vec3<f32>(x_4332, x_4332, x_4332) * vec3<f32>(x_4334.x, x_4334.y, x_4334.z)) + vec3<f32>(x_4338.x, x_4338.y, x_4338.z));
  let x_4341 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_4340.x, x_4340.y, x_4340.z, x_4341.w);
  let x_4345 : f32 = x_54.x_Surface;
  u_xlatb0 = (x_4345 == 1.0f);
  let x_4347 : bool = u_xlatb0;
  if (x_4347) {
    let x_4352 : f32 = u_xlat2.x;
    x_4348 = x_4352;
  } else {
    x_4348 = 1.0f;
  }
  let x_4354 : f32 = x_4348;
  SV_Target0.w = x_4354;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


