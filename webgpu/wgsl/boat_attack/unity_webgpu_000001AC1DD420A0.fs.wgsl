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
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_BaseColor : vec4<f32>,
  /* @offset(32) */
  x_SpecColor : vec4<f32>,
  /* @offset(48) */
  x_EmissionColor : vec4<f32>,
  /* @offset(64) */
  x_Cutoff : f32,
  /* @offset(68) */
  x_Surface : f32,
}

alias Arr = array<mat4x4<f32>, 5u>;

alias Arr_1 = array<vec4<f32>, 32u>;

alias Arr_2 = array<mat4x4<f32>, 32u>;

alias Arr_3 = array<vec4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
  x_AdditionalShadowParams : Arr_3,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_2,
}

alias Arr_4 = array<vec4<f32>, 2u>;

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
  unity_LightIndices : Arr_4,
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

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_3,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_3,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_3,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_3,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_3,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb1 : bool;

var<private> u_xlat10 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat29 : f32;

var<private> u_xlat3 : vec4<f32>;

@group(1) @binding(4) var<uniform> x_154 : LightShadows;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu3 : u32;

var<private> u_xlati3 : i32;

var<private> u_xlat12 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_339 : UnityPerDraw;

var<private> u_xlat28 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlatb12 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat31 : f32;

var<private> u_xlatu31 : u32;

var<private> u_xlatu6 : u32;

var<private> u_xlati15 : i32;

var<private> u_xlati6 : i32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_663 : AdditionalLights;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat16 : vec3<f32>;

var<private> u_xlati16 : i32;

var<private> u_xlatb25 : bool;

var<private> u_xlatb8 : vec4<bool>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat34 : f32;

var<private> u_xlat25 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb34 : bool;

var<private> u_xlat33 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb9 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlatu32 : u32;

fn main_1() {
  var x_84 : f32;
  var x_97 : f32;
  var x_109 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_823 : f32;
  var x_833 : f32;
  var txVec1 : vec3<f32>;
  var x_944 : f32;
  var x_1079 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_54 : f32 = x_28.unity_OrthoParams.w;
  u_xlatb1 = (x_54 == 0.0f);
  let x_61 : vec3<f32> = vs_TEXCOORD1;
  let x_66 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_61) + x_66);
  let x_69 : vec3<f32> = u_xlat10;
  let x_70 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_69, x_70);
  let x_75 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat10;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_78 * vec3<f32>(x_79.x, x_79.x, x_79.x));
  let x_82 : bool = u_xlatb1;
  if (x_82) {
    let x_88 : f32 = u_xlat10.x;
    x_84 = x_88;
  } else {
    let x_93 : f32 = x_28.unity_MatrixV[0i].z;
    x_84 = x_93;
  }
  let x_94 : f32 = x_84;
  u_xlat2.x = x_94;
  let x_96 : bool = u_xlatb1;
  if (x_96) {
    let x_102 : f32 = u_xlat10.y;
    x_97 = x_102;
  } else {
    let x_105 : f32 = x_28.unity_MatrixV[1i].z;
    x_97 = x_105;
  }
  let x_106 : f32 = x_97;
  u_xlat2.y = x_106;
  let x_108 : bool = u_xlatb1;
  if (x_108) {
    let x_113 : f32 = u_xlat10.z;
    x_109 = x_113;
  } else {
    let x_117 : f32 = x_28.unity_MatrixV[2i].z;
    x_109 = x_117;
  }
  let x_118 : f32 = x_109;
  u_xlat2.z = x_118;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  let x_123 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_122, x_123);
  let x_127 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_127);
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = vs_TEXCOORD2;
  let x_133 : vec3<f32> = (vec3<f32>(x_130.x, x_130.x, x_130.x) * x_132);
  let x_134 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec3<f32> = u_xlat2;
  let x_138 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_137, x_138);
  let x_140 : f32 = u_xlat29;
  u_xlat29 = max(x_140, 0.00006103515625f);
  let x_143 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_143);
  let x_146 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_146 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_184 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_182 + -(vec3<f32>(x_184.x, x_184.y, x_184.z)));
  let x_188 : vec4<f32> = u_xlat3;
  let x_190 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_188.x, x_188.y, x_188.z), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat4;
  let x_196 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_200 : vec4<f32> = u_xlat5;
  let x_202 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_200.x, x_200.y, x_200.z), vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_206 : vec3<f32> = u_xlat6;
  let x_207 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_206, x_207);
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_213 < x_215);
  let x_218 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_218);
  let x_223 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_223);
  let x_227 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_227);
  let x_231 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_231);
  let x_235 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_235);
  let x_241 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_241);
  let x_245 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_245);
  let x_248 : vec4<f32> = u_xlat3;
  let x_250 : vec4<f32> = u_xlat4;
  let x_252 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + vec3<f32>(x_250.y, x_250.z, x_250.w));
  let x_253 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_255 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = max(vec3<f32>(x_255.x, x_255.y, x_255.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_259.x, x_258.x, x_258.y, x_258.z);
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat3.x = dot(x_261, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_269 : f32 = u_xlat3.x;
  u_xlat3.x = (-(x_269) + 4.0f);
  let x_276 : f32 = u_xlat3.x;
  u_xlatu3 = u32(x_276);
  let x_280 : u32 = u_xlatu3;
  u_xlati3 = (bitcast<i32>(x_280) << bitcast<u32>(2i));
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_286 : i32 = u_xlati3;
  let x_289 : i32 = u_xlati3;
  let x_293 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_286 + 1i) / 4i)][((x_289 + 1i) % 4i)];
  u_xlat12 = (vec3<f32>(x_284.y, x_284.y, x_284.y) * vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_296 : i32 = u_xlati3;
  let x_298 : i32 = u_xlati3;
  let x_301 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_296 / 4i)][(x_298 % 4i)];
  let x_303 : vec3<f32> = vs_TEXCOORD1;
  let x_306 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_301.x, x_301.y, x_301.z) * vec3<f32>(x_303.x, x_303.x, x_303.x)) + x_306);
  let x_308 : i32 = u_xlati3;
  let x_311 : i32 = u_xlati3;
  let x_315 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_308 + 2i) / 4i)][((x_311 + 2i) % 4i)];
  let x_317 : vec3<f32> = vs_TEXCOORD1;
  let x_320 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.z, x_317.z, x_317.z)) + x_320);
  let x_322 : vec3<f32> = u_xlat12;
  let x_323 : i32 = u_xlati3;
  let x_326 : i32 = u_xlati3;
  let x_330 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_323 + 3i) / 4i)][((x_326 + 3i) % 4i)];
  let x_332 : vec3<f32> = (x_322 + vec3<f32>(x_330.x, x_330.y, x_330.z));
  let x_333 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  u_xlat1.w = 1.0f;
  let x_342 : vec4<f32> = x_339.unity_SHAr;
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat4.x = dot(x_342, x_343);
  let x_348 : vec4<f32> = x_339.unity_SHAg;
  let x_349 : vec4<f32> = u_xlat1;
  u_xlat4.y = dot(x_348, x_349);
  let x_354 : vec4<f32> = x_339.unity_SHAb;
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat4.z = dot(x_354, x_355);
  let x_358 : vec4<f32> = u_xlat1;
  let x_360 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_358.y, x_358.z, x_358.z, x_358.x) * vec4<f32>(x_360.x, x_360.y, x_360.z, x_360.z));
  let x_365 : vec4<f32> = x_339.unity_SHBr;
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_365, x_366);
  let x_371 : vec4<f32> = x_339.unity_SHBg;
  let x_372 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_371, x_372);
  let x_377 : vec4<f32> = x_339.unity_SHBb;
  let x_378 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_377, x_378);
  let x_383 : f32 = u_xlat1.y;
  let x_385 : f32 = u_xlat1.y;
  u_xlat28 = (x_383 * x_385);
  let x_388 : f32 = u_xlat1.x;
  let x_390 : f32 = u_xlat1.x;
  let x_392 : f32 = u_xlat28;
  u_xlat28 = ((x_388 * x_390) + -(x_392));
  let x_397 : vec4<f32> = x_339.unity_SHC;
  let x_399 : f32 = u_xlat28;
  let x_402 : vec3<f32> = u_xlat6;
  let x_403 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_403.x, x_403.y, x_403.z, x_404.w);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec4<f32> = u_xlat5;
  let x_410 : vec3<f32> = (vec3<f32>(x_406.x, x_406.y, x_406.z) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_415 : vec4<f32> = u_xlat3;
  let x_416 : vec2<f32> = vec2<f32>(x_415.x, x_415.y);
  let x_418 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_416.x, x_416.y, x_418);
  let x_430 : vec3<f32> = txVec0;
  let x_432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_430.xy, x_430.z);
  u_xlat28 = x_432;
  let x_435 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_435) + 1.0f);
  let x_439 : f32 = u_xlat28;
  let x_441 : f32 = x_154.x_MainLightShadowParams.x;
  let x_444 : f32 = u_xlat3.x;
  u_xlat28 = ((x_439 * x_441) + x_444);
  let x_447 : f32 = u_xlat3.z;
  u_xlatb3.x = (0.0f >= x_447);
  let x_452 : f32 = u_xlat3.z;
  u_xlatb12 = (x_452 >= 1.0f);
  let x_454 : bool = u_xlatb12;
  let x_456 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_454 | x_456);
  let x_460 : bool = u_xlatb3.x;
  let x_461 : f32 = u_xlat28;
  u_xlat28 = select(x_461, 1.0f, x_460);
  let x_463 : vec3<f32> = vs_TEXCOORD1;
  let x_465 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_467 : vec3<f32> = (x_463 + -(x_465));
  let x_468 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat3;
  let x_472 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_470.x, x_470.y, x_470.z), vec3<f32>(x_472.x, x_472.y, x_472.z));
  let x_477 : f32 = u_xlat3.x;
  let x_479 : f32 = x_154.x_MainLightShadowParams.z;
  let x_482 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat12.x = ((x_477 * x_479) + x_482);
  let x_486 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_486, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat28;
  u_xlat21 = (-(x_490) + 1.0f);
  let x_494 : f32 = u_xlat12.x;
  let x_495 : f32 = u_xlat21;
  let x_497 : f32 = u_xlat28;
  u_xlat28 = ((x_494 * x_495) + x_497);
  let x_499 : f32 = u_xlat28;
  let x_501 : f32 = x_339.unity_LightData.z;
  u_xlat28 = (x_499 * x_501);
  let x_503 : f32 = u_xlat28;
  let x_506 : vec4<f32> = x_28.x_MainLightColor;
  u_xlat12 = (vec3<f32>(x_503, x_503, x_503) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat1;
  let x_512 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), vec3<f32>(x_512.x, x_512.y, x_512.z));
  let x_515 : f32 = u_xlat28;
  u_xlat28 = clamp(x_515, 0.0f, 1.0f);
  let x_517 : f32 = u_xlat28;
  let x_519 : vec3<f32> = u_xlat12;
  let x_520 : vec3<f32> = (vec3<f32>(x_517, x_517, x_517) * x_519);
  let x_521 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_524 : f32 = u_xlat0.x;
  u_xlat28 = ((x_524 * 10.0f) + 1.0f);
  let x_528 : f32 = u_xlat28;
  u_xlat28 = exp2(x_528);
  let x_530 : vec3<f32> = u_xlat2;
  let x_531 : f32 = u_xlat29;
  let x_535 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat6 = ((x_530 * vec3<f32>(x_531, x_531, x_531)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec3<f32> = u_xlat6;
  let x_539 : vec3<f32> = u_xlat6;
  u_xlat4.w = dot(x_538, x_539);
  let x_542 : vec4<f32> = u_xlat4;
  u_xlat4 = max(x_542, vec4<f32>(0.0f, 0.0f, 0.0f, 1.17549435e-38f));
  let x_548 : f32 = u_xlat4.w;
  u_xlat31 = inverseSqrt(x_548);
  let x_550 : f32 = u_xlat31;
  let x_552 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_550, x_550, x_550) * x_552);
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), x_556);
  let x_558 : f32 = u_xlat31;
  u_xlat31 = clamp(x_558, 0.0f, 1.0f);
  let x_560 : f32 = u_xlat31;
  u_xlat31 = log2(x_560);
  let x_562 : f32 = u_xlat28;
  let x_563 : f32 = u_xlat31;
  u_xlat31 = (x_562 * x_563);
  let x_565 : f32 = u_xlat31;
  u_xlat31 = exp2(x_565);
  let x_567 : f32 = u_xlat31;
  let x_570 : vec4<f32> = x_41.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_567, x_567, x_567) * vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_573 : vec3<f32> = u_xlat12;
  let x_574 : vec3<f32> = u_xlat6;
  u_xlat12 = (x_573 * x_574);
  let x_576 : vec4<f32> = u_xlat5;
  let x_578 : vec4<f32> = u_xlat0;
  let x_581 : vec3<f32> = u_xlat12;
  u_xlat12 = ((vec3<f32>(x_576.x, x_576.y, x_576.z) * vec3<f32>(x_578.y, x_578.z, x_578.w)) + x_581);
  let x_584 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_586 : f32 = x_339.unity_LightData.y;
  u_xlat31 = min(x_584, x_586);
  let x_589 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_589));
  let x_593 : f32 = u_xlat3.x;
  let x_596 : f32 = x_154.x_AdditionalShadowFadeParams.x;
  let x_599 : f32 = x_154.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_593 * x_596) + x_599);
  let x_603 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_603, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_616 : u32 = u_xlatu_loop_1;
    let x_617 : u32 = u_xlatu31;
    if ((x_616 < x_617)) {
    } else {
      break;
    }
    let x_620 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_620 >> 2u);
    let x_623 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_623 & 3u));
    let x_626 : u32 = u_xlatu6;
    let x_629 : vec4<f32> = x_339.unity_LightIndices[bitcast<i32>(x_626)];
    let x_639 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_644 : vec4<u32> = indexable[x_639];
    u_xlat6.x = dot(x_629, bitcast<vec4<f32>>(x_644));
    let x_650 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_650);
    let x_653 : vec3<f32> = vs_TEXCOORD1;
    let x_664 : i32 = u_xlati6;
    let x_666 : vec4<f32> = x_663.x_AdditionalLightsPosition[x_664];
    let x_669 : i32 = u_xlati6;
    let x_671 : vec4<f32> = x_663.x_AdditionalLightsPosition[x_669];
    u_xlat15 = ((-(x_653) * vec3<f32>(x_666.w, x_666.w, x_666.w)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
    let x_675 : vec3<f32> = u_xlat15;
    let x_676 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_675, x_676);
    let x_680 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_680, 0.00006103515625f);
    let x_685 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_685);
    let x_688 : vec3<f32> = u_xlat15;
    let x_689 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_688 * vec3<f32>(x_689.x, x_689.x, x_689.x));
    let x_693 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_693);
    let x_697 : f32 = u_xlat7.x;
    let x_698 : i32 = u_xlati6;
    let x_700 : f32 = x_663.x_AdditionalLightsAttenuation[x_698].x;
    u_xlat7.x = (x_697 * x_700);
    let x_704 : f32 = u_xlat7.x;
    let x_707 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_704) * x_707) + 1.0f);
    let x_712 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_712, 0.0f);
    let x_716 : f32 = u_xlat7.x;
    let x_718 : f32 = u_xlat7.x;
    u_xlat7.x = (x_716 * x_718);
    let x_722 : f32 = u_xlat7.x;
    let x_724 : f32 = u_xlat16.x;
    u_xlat7.x = (x_722 * x_724);
    let x_727 : i32 = u_xlati6;
    let x_729 : vec4<f32> = x_663.x_AdditionalLightsSpotDir[x_727];
    let x_731 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_729.x, x_729.y, x_729.z), x_731);
    let x_735 : f32 = u_xlat16.x;
    let x_736 : i32 = u_xlati6;
    let x_738 : f32 = x_663.x_AdditionalLightsAttenuation[x_736].z;
    let x_740 : i32 = u_xlati6;
    let x_742 : f32 = x_663.x_AdditionalLightsAttenuation[x_740].w;
    u_xlat16.x = ((x_735 * x_738) + x_742);
    let x_746 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_746, 0.0f, 1.0f);
    let x_750 : f32 = u_xlat16.x;
    let x_752 : f32 = u_xlat16.x;
    u_xlat16.x = (x_750 * x_752);
    let x_756 : f32 = u_xlat16.x;
    let x_758 : f32 = u_xlat7.x;
    u_xlat7.x = (x_756 * x_758);
    let x_763 : i32 = u_xlati6;
    let x_765 : f32 = x_154.x_AdditionalShadowParams[x_763].w;
    u_xlati16 = i32(x_765);
    let x_768 : i32 = u_xlati16;
    u_xlatb25 = (x_768 >= 0i);
    let x_770 : bool = u_xlatb25;
    if (x_770) {
      let x_774 : i32 = u_xlati6;
      let x_776 : f32 = x_154.x_AdditionalShadowParams[x_774].z;
      u_xlatb25 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_776, x_776, x_776, x_776))));
      let x_780 : bool = u_xlatb25;
      if (x_780) {
        let x_784 : vec3<f32> = u_xlat15;
        let x_787 : vec3<f32> = u_xlat15;
        let x_790 : vec4<bool> = (abs(vec4<f32>(x_784.z, x_784.z, x_784.y, x_784.z)) >= abs(vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.x)));
        let x_792 : vec3<bool> = vec3<bool>(x_790.x, x_790.y, x_790.z);
        let x_793 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_792.x, x_792.y, x_792.z, x_793.w);
        let x_796 : bool = u_xlatb8.y;
        let x_798 : bool = u_xlatb8.x;
        u_xlatb25 = (x_796 & x_798);
        let x_800 : vec3<f32> = u_xlat15;
        let x_803 : vec4<bool> = (-(vec4<f32>(x_800.z, x_800.y, x_800.z, x_800.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_804 : vec3<bool> = vec3<bool>(x_803.x, x_803.y, x_803.w);
        let x_805 : vec4<bool> = u_xlatb8;
        u_xlatb8 = vec4<bool>(x_804.x, x_804.y, x_805.z, x_804.z);
        let x_809 : bool = u_xlatb8.x;
        u_xlat8.x = select(4.0f, 5.0f, x_809);
        let x_814 : bool = u_xlatb8.y;
        u_xlat8.y = select(2.0f, 3.0f, x_814);
        let x_819 : bool = u_xlatb8.w;
        u_xlat34 = select(0.0f, 1.0f, x_819);
        let x_822 : bool = u_xlatb8.z;
        if (x_822) {
          let x_827 : f32 = u_xlat8.y;
          x_823 = x_827;
        } else {
          let x_829 : f32 = u_xlat34;
          x_823 = x_829;
        }
        let x_830 : f32 = x_823;
        u_xlat34 = x_830;
        let x_832 : bool = u_xlatb25;
        if (x_832) {
          let x_837 : f32 = u_xlat8.x;
          x_833 = x_837;
        } else {
          let x_839 : f32 = u_xlat34;
          x_833 = x_839;
        }
        let x_840 : f32 = x_833;
        u_xlat25 = x_840;
        let x_841 : i32 = u_xlati6;
        let x_843 : f32 = x_154.x_AdditionalShadowParams[x_841].w;
        u_xlat34 = trunc(x_843);
        let x_845 : f32 = u_xlat25;
        let x_846 : f32 = u_xlat34;
        u_xlat25 = (x_845 + x_846);
        let x_848 : f32 = u_xlat25;
        u_xlati16 = i32(x_848);
      }
      let x_850 : i32 = u_xlati16;
      u_xlati16 = (x_850 << bitcast<u32>(2i));
      let x_852 : vec3<f32> = vs_TEXCOORD1;
      let x_855 : i32 = u_xlati16;
      let x_858 : i32 = u_xlati16;
      let x_862 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_855 + 1i) / 4i)][((x_858 + 1i) % 4i)];
      u_xlat8 = (vec4<f32>(x_852.y, x_852.y, x_852.y, x_852.y) * x_862);
      let x_864 : i32 = u_xlati16;
      let x_866 : i32 = u_xlati16;
      let x_869 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[(x_864 / 4i)][(x_866 % 4i)];
      let x_870 : vec3<f32> = vs_TEXCOORD1;
      let x_873 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_869 * vec4<f32>(x_870.x, x_870.x, x_870.x, x_870.x)) + x_873);
      let x_875 : i32 = u_xlati16;
      let x_878 : i32 = u_xlati16;
      let x_882 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_875 + 2i) / 4i)][((x_878 + 2i) % 4i)];
      let x_883 : vec3<f32> = vs_TEXCOORD1;
      let x_886 : vec4<f32> = u_xlat8;
      u_xlat8 = ((x_882 * vec4<f32>(x_883.z, x_883.z, x_883.z, x_883.z)) + x_886);
      let x_888 : vec4<f32> = u_xlat8;
      let x_889 : i32 = u_xlati16;
      let x_892 : i32 = u_xlati16;
      let x_896 : vec4<f32> = x_154.x_AdditionalLightsWorldToShadow[((x_889 + 3i) / 4i)][((x_892 + 3i) % 4i)];
      u_xlat8 = (x_888 + x_896);
      let x_898 : vec4<f32> = u_xlat8;
      let x_900 : vec4<f32> = u_xlat8;
      u_xlat16 = (vec3<f32>(x_898.x, x_898.y, x_898.z) / vec3<f32>(x_900.w, x_900.w, x_900.w));
      let x_904 : vec3<f32> = u_xlat16;
      let x_905 : vec2<f32> = vec2<f32>(x_904.x, x_904.y);
      let x_907 : f32 = u_xlat16.z;
      txVec1 = vec3<f32>(x_905.x, x_905.y, x_907);
      let x_915 : vec3<f32> = txVec1;
      let x_917 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_915.xy, x_915.z);
      u_xlat16.x = x_917;
      let x_919 : i32 = u_xlati6;
      let x_921 : f32 = x_154.x_AdditionalShadowParams[x_919].x;
      u_xlat25 = (1.0f + -(x_921));
      let x_925 : f32 = u_xlat16.x;
      let x_926 : i32 = u_xlati6;
      let x_928 : f32 = x_154.x_AdditionalShadowParams[x_926].x;
      let x_930 : f32 = u_xlat25;
      u_xlat16.x = ((x_925 * x_928) + x_930);
      let x_934 : f32 = u_xlat16.z;
      u_xlatb25 = (0.0f >= x_934);
      let x_938 : f32 = u_xlat16.z;
      u_xlatb34 = (x_938 >= 1.0f);
      let x_940 : bool = u_xlatb34;
      let x_941 : bool = u_xlatb25;
      u_xlatb25 = (x_940 | x_941);
      let x_943 : bool = u_xlatb25;
      if (x_943) {
        x_944 = 1.0f;
      } else {
        let x_949 : f32 = u_xlat16.x;
        x_944 = x_949;
      }
      let x_950 : f32 = x_944;
      u_xlat16.x = x_950;
    } else {
      u_xlat16.x = 1.0f;
    }
    let x_955 : f32 = u_xlat16.x;
    u_xlat25 = (-(x_955) + 1.0f);
    let x_959 : f32 = u_xlat3.x;
    let x_960 : f32 = u_xlat25;
    let x_963 : f32 = u_xlat16.x;
    u_xlat16.x = ((x_959 * x_960) + x_963);
    let x_967 : f32 = u_xlat16.x;
    let x_969 : f32 = u_xlat7.x;
    u_xlat7.x = (x_967 * x_969);
    let x_972 : vec3<f32> = u_xlat7;
    let x_974 : i32 = u_xlati6;
    let x_976 : vec4<f32> = x_663.x_AdditionalLightsColor[x_974];
    u_xlat7 = (vec3<f32>(x_972.x, x_972.x, x_972.x) * vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec4<f32> = u_xlat1;
    let x_981 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_979.x, x_979.y, x_979.z), x_981);
    let x_985 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_985, 0.0f, 1.0f);
    let x_988 : vec3<f32> = u_xlat6;
    let x_990 : vec3<f32> = u_xlat7;
    let x_991 : vec3<f32> = (vec3<f32>(x_988.x, x_988.x, x_988.x) * x_990);
    let x_992 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
    let x_994 : vec3<f32> = u_xlat2;
    let x_995 : f32 = u_xlat29;
    let x_998 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_994 * vec3<f32>(x_995, x_995, x_995)) + x_998);
    let x_1001 : vec3<f32> = u_xlat6;
    let x_1002 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_1001, x_1002);
    let x_1004 : f32 = u_xlat33;
    u_xlat33 = max(x_1004, 1.17549435e-38f);
    let x_1006 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_1006);
    let x_1008 : f32 = u_xlat33;
    let x_1010 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_1008, x_1008, x_1008) * x_1010);
    let x_1012 : vec4<f32> = u_xlat1;
    let x_1014 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_1012.x, x_1012.y, x_1012.z), x_1014);
    let x_1018 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1018, 0.0f, 1.0f);
    let x_1022 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_1022);
    let x_1025 : f32 = u_xlat28;
    let x_1027 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1025 * x_1027);
    let x_1031 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_1031);
    let x_1034 : vec3<f32> = u_xlat6;
    let x_1037 : vec4<f32> = x_41.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_1034.x, x_1034.x, x_1034.x) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec3<f32> = u_xlat6;
    let x_1041 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_1040 * x_1041);
    let x_1043 : vec4<f32> = u_xlat8;
    let x_1045 : vec4<f32> = u_xlat0;
    let x_1048 : vec3<f32> = u_xlat6;
    u_xlat6 = ((vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(x_1045.y, x_1045.z, x_1045.w)) + x_1048);
    let x_1050 : vec4<f32> = u_xlat5;
    let x_1052 : vec3<f32> = u_xlat6;
    let x_1053 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) + x_1052);
    let x_1054 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);

    continuing {
      let x_1056 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1056 + bitcast<u32>(1i));
    }
  }
  let x_1059 : vec4<f32> = u_xlat4;
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1064 : vec3<f32> = u_xlat12;
  u_xlat9 = ((vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(x_1061.y, x_1061.z, x_1061.w)) + x_1064);
  let x_1068 : vec4<f32> = u_xlat5;
  let x_1070 : vec3<f32> = u_xlat9;
  let x_1071 : vec3<f32> = (vec3<f32>(x_1068.x, x_1068.y, x_1068.z) + x_1070);
  let x_1072 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
  let x_1076 : f32 = x_41.x_Surface;
  u_xlatb9 = (x_1076 == 1.0f);
  let x_1078 : bool = u_xlatb9;
  if (x_1078) {
    let x_1083 : f32 = u_xlat0.x;
    x_1079 = x_1083;
  } else {
    x_1079 = 1.0f;
  }
  let x_1085 : f32 = x_1079;
  SV_Target0.w = x_1085;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


