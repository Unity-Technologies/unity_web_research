diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(8) */
  x_AlphaToMaskAvailable : f32,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
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
  x_AdditionalLightsWorldToShadow : Arr_3,
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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> u_xlatb0 : bool;

var<private> u_xlat8 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat24 : f32;

var<private> u_xlatb16 : bool;

var<private> u_xlatb8 : bool;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_156 : UnityPerDraw;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(4) var<uniform> x_262 : LightShadows;

var<private> u_xlatb24 : bool;

var<private> u_xlatb1 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat26 : f32;

var<private> u_xlatu8 : u32;

var<private> u_xlatu26 : u32;

var<private> u_xlati27 : i32;

var<private> u_xlati26 : i32;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_438 : AdditionalLights;

var<private> u_xlat27 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb7 : vec4<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb30 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu1 : u32;

var<private> u_xlatb26 : bool;

fn main_1() {
  var x_60 : f32;
  var x_110 : f32;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_573 : f32;
  var x_583 : f32;
  var txVec1 : vec3<f32>;
  var x_759 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_41.x_BaseColor.w;
  let x_77 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.00009999999747378752f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.00009999999747378752f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  u_xlat2.w = 1.0f;
  let x_159 : vec4<f32> = x_156.unity_SHAr;
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_159, x_160);
  let x_165 : vec4<f32> = x_156.unity_SHAg;
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_165, x_166);
  let x_172 : vec4<f32> = x_156.unity_SHAb;
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_172, x_173);
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_177.y, x_177.z, x_177.z, x_177.x) * vec4<f32>(x_179.x, x_179.y, x_179.z, x_179.z));
  let x_185 : vec4<f32> = x_156.unity_SHBr;
  let x_186 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_156.unity_SHBg;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_156.unity_SHBb;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_197, x_198);
  let x_202 : f32 = u_xlat2.y;
  let x_204 : f32 = u_xlat2.y;
  u_xlat8 = (x_202 * x_204);
  let x_207 : f32 = u_xlat2.x;
  let x_209 : f32 = u_xlat2.x;
  let x_211 : f32 = u_xlat8;
  u_xlat8 = ((x_207 * x_209) + -(x_211));
  let x_216 : vec4<f32> = x_156.unity_SHC;
  let x_218 : f32 = u_xlat8;
  let x_221 : vec3<f32> = u_xlat5;
  let x_222 : vec3<f32> = ((vec3<f32>(x_216.x, x_216.y, x_216.z) * vec3<f32>(x_218, x_218, x_218)) + x_221);
  let x_223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec3<f32> = u_xlat3;
  let x_226 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_225 + vec3<f32>(x_226.x, x_226.y, x_226.z));
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_229, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_236 : vec4<f32> = vs_TEXCOORD6;
  let x_237 : vec2<f32> = vec2<f32>(x_236.x, x_236.y);
  let x_240 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_237.x, x_237.y, x_240);
  let x_252 : vec3<f32> = txVec0;
  let x_254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_252.xy, x_252.z);
  u_xlat8 = x_254;
  let x_265 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_265) + 1.0f);
  let x_268 : f32 = u_xlat8;
  let x_270 : f32 = x_262.x_MainLightShadowParams.x;
  let x_272 : f32 = u_xlat24;
  u_xlat8 = ((x_268 * x_270) + x_272);
  let x_276 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_276);
  let x_280 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_280 >= 1.0f);
  let x_282 : bool = u_xlatb24;
  let x_283 : bool = u_xlatb1;
  u_xlatb24 = (x_282 | x_283);
  let x_285 : bool = u_xlatb24;
  let x_286 : f32 = u_xlat8;
  u_xlat8 = select(x_286, 1.0f, x_285);
  let x_289 : vec3<f32> = vs_TEXCOORD1;
  let x_293 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  let x_295 : vec3<f32> = (x_289 + -(x_293));
  let x_296 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
  let x_298 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat24 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_303 : f32 = u_xlat24;
  let x_305 : f32 = x_262.x_MainLightShadowParams.z;
  let x_308 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_303 * x_305) + x_308);
  let x_312 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_312, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat8;
  u_xlat26 = (-(x_316) + 1.0f);
  let x_320 : f32 = u_xlat1.x;
  let x_321 : f32 = u_xlat26;
  let x_323 : f32 = u_xlat8;
  u_xlat8 = ((x_320 * x_321) + x_323);
  let x_325 : f32 = u_xlat8;
  let x_327 : f32 = x_156.unity_LightData.z;
  u_xlat8 = (x_325 * x_327);
  let x_329 : f32 = u_xlat8;
  let x_333 : vec4<f32> = x_27.x_MainLightColor;
  let x_335 : vec3<f32> = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_333.x, x_333.y, x_333.z));
  let x_336 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
  let x_338 : vec4<f32> = u_xlat2;
  let x_342 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : f32 = u_xlat8;
  u_xlat8 = clamp(x_345, 0.0f, 1.0f);
  let x_347 : f32 = u_xlat8;
  let x_349 : vec4<f32> = u_xlat4;
  let x_351 : vec3<f32> = (vec3<f32>(x_347, x_347, x_347) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_351.x, x_351.y, x_351.z, x_352.w);
  let x_354 : vec4<f32> = u_xlat1;
  let x_356 : vec4<f32> = u_xlat4;
  let x_358 : vec3<f32> = (vec3<f32>(x_354.y, x_354.z, x_354.w) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_364 : f32 = x_156.unity_LightData.y;
  u_xlat8 = min(x_362, x_364);
  let x_368 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_368));
  let x_371 : f32 = u_xlat24;
  let x_374 : f32 = x_262.x_AdditionalShadowFadeParams.x;
  let x_377 : f32 = x_262.x_AdditionalShadowFadeParams.y;
  u_xlat24 = ((x_371 * x_374) + x_377);
  let x_379 : f32 = u_xlat24;
  u_xlat24 = clamp(x_379, 0.0f, 1.0f);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_391 : u32 = u_xlatu_loop_1;
    let x_392 : u32 = u_xlatu8;
    if ((x_391 < x_392)) {
    } else {
      break;
    }
    let x_395 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_395 >> 2u);
    let x_399 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_399 & 3u));
    let x_403 : u32 = u_xlatu26;
    let x_406 : vec4<f32> = x_156.unity_LightIndices[bitcast<i32>(x_403)];
    let x_416 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_421 : vec4<u32> = indexable[x_416];
    u_xlat26 = dot(x_406, bitcast<vec4<f32>>(x_421));
    let x_425 : f32 = u_xlat26;
    u_xlati26 = i32(x_425);
    let x_428 : vec3<f32> = vs_TEXCOORD1;
    let x_439 : i32 = u_xlati26;
    let x_441 : vec4<f32> = x_438.x_AdditionalLightsPosition[x_439];
    let x_444 : i32 = u_xlati26;
    let x_446 : vec4<f32> = x_438.x_AdditionalLightsPosition[x_444];
    u_xlat6 = ((-(x_428) * vec3<f32>(x_441.w, x_441.w, x_441.w)) + vec3<f32>(x_446.x, x_446.y, x_446.z));
    let x_450 : vec3<f32> = u_xlat6;
    let x_451 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_450, x_451);
    let x_453 : f32 = u_xlat27;
    u_xlat27 = max(x_453, 0.00006103515625f);
    let x_457 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_457);
    let x_459 : f32 = u_xlat28;
    let x_461 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_459, x_459, x_459) * x_461);
    let x_463 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_463);
    let x_465 : f32 = u_xlat27;
    let x_466 : i32 = u_xlati26;
    let x_468 : f32 = x_438.x_AdditionalLightsAttenuation[x_466].x;
    u_xlat27 = (x_465 * x_468);
    let x_470 : f32 = u_xlat27;
    let x_472 : f32 = u_xlat27;
    u_xlat27 = ((-(x_470) * x_472) + 1.0f);
    let x_475 : f32 = u_xlat27;
    u_xlat27 = max(x_475, 0.0f);
    let x_477 : f32 = u_xlat27;
    let x_478 : f32 = u_xlat27;
    u_xlat27 = (x_477 * x_478);
    let x_480 : f32 = u_xlat27;
    let x_481 : f32 = u_xlat28;
    u_xlat27 = (x_480 * x_481);
    let x_483 : i32 = u_xlati26;
    let x_485 : vec4<f32> = x_438.x_AdditionalLightsSpotDir[x_483];
    let x_487 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_485.x, x_485.y, x_485.z), x_487);
    let x_489 : f32 = u_xlat28;
    let x_490 : i32 = u_xlati26;
    let x_492 : f32 = x_438.x_AdditionalLightsAttenuation[x_490].z;
    let x_494 : i32 = u_xlati26;
    let x_496 : f32 = x_438.x_AdditionalLightsAttenuation[x_494].w;
    u_xlat28 = ((x_489 * x_492) + x_496);
    let x_498 : f32 = u_xlat28;
    u_xlat28 = clamp(x_498, 0.0f, 1.0f);
    let x_500 : f32 = u_xlat28;
    let x_501 : f32 = u_xlat28;
    u_xlat28 = (x_500 * x_501);
    let x_503 : f32 = u_xlat27;
    let x_504 : f32 = u_xlat28;
    u_xlat27 = (x_503 * x_504);
    let x_508 : i32 = u_xlati26;
    let x_510 : f32 = x_262.x_AdditionalShadowParams[x_508].w;
    u_xlati28 = i32(x_510);
    let x_513 : i32 = u_xlati28;
    u_xlatb29 = (x_513 >= 0i);
    let x_515 : bool = u_xlatb29;
    if (x_515) {
      let x_519 : i32 = u_xlati26;
      let x_521 : f32 = x_262.x_AdditionalShadowParams[x_519].z;
      u_xlatb29 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_521, x_521, x_521, x_521))));
      let x_526 : bool = u_xlatb29;
      if (x_526) {
        let x_531 : vec3<f32> = u_xlat6;
        let x_534 : vec3<f32> = u_xlat6;
        let x_537 : vec4<bool> = (abs(vec4<f32>(x_531.z, x_531.z, x_531.y, x_531.z)) >= abs(vec4<f32>(x_534.x, x_534.y, x_534.x, x_534.x)));
        let x_539 : vec3<bool> = vec3<bool>(x_537.x, x_537.y, x_537.z);
        let x_540 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_539.x, x_539.y, x_539.z, x_540.w);
        let x_543 : bool = u_xlatb7.y;
        let x_545 : bool = u_xlatb7.x;
        u_xlatb29 = (x_543 & x_545);
        let x_547 : vec3<f32> = u_xlat6;
        let x_550 : vec4<bool> = (-(vec4<f32>(x_547.z, x_547.y, x_547.z, x_547.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_551 : vec3<bool> = vec3<bool>(x_550.x, x_550.y, x_550.w);
        let x_552 : vec4<bool> = u_xlatb7;
        u_xlatb7 = vec4<bool>(x_551.x, x_551.y, x_552.z, x_551.z);
        let x_556 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_556);
        let x_562 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_562);
        let x_569 : bool = u_xlatb7.w;
        u_xlat30 = select(0.0f, 1.0f, x_569);
        let x_572 : bool = u_xlatb7.z;
        if (x_572) {
          let x_577 : f32 = u_xlat7.y;
          x_573 = x_577;
        } else {
          let x_579 : f32 = u_xlat30;
          x_573 = x_579;
        }
        let x_580 : f32 = x_573;
        u_xlat30 = x_580;
        let x_582 : bool = u_xlatb29;
        if (x_582) {
          let x_587 : f32 = u_xlat7.x;
          x_583 = x_587;
        } else {
          let x_589 : f32 = u_xlat30;
          x_583 = x_589;
        }
        let x_590 : f32 = x_583;
        u_xlat29 = x_590;
        let x_591 : i32 = u_xlati26;
        let x_593 : f32 = x_262.x_AdditionalShadowParams[x_591].w;
        u_xlat30 = trunc(x_593);
        let x_595 : f32 = u_xlat29;
        let x_596 : f32 = u_xlat30;
        u_xlat29 = (x_595 + x_596);
        let x_598 : f32 = u_xlat29;
        u_xlati28 = i32(x_598);
      }
      let x_600 : i32 = u_xlati28;
      u_xlati28 = (x_600 << bitcast<u32>(2i));
      let x_602 : vec3<f32> = vs_TEXCOORD1;
      let x_605 : i32 = u_xlati28;
      let x_608 : i32 = u_xlati28;
      let x_612 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_605 + 1i) / 4i)][((x_608 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_602.y, x_602.y, x_602.y, x_602.y) * x_612);
      let x_614 : i32 = u_xlati28;
      let x_616 : i32 = u_xlati28;
      let x_619 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[(x_614 / 4i)][(x_616 % 4i)];
      let x_620 : vec3<f32> = vs_TEXCOORD1;
      let x_623 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_619 * vec4<f32>(x_620.x, x_620.x, x_620.x, x_620.x)) + x_623);
      let x_625 : i32 = u_xlati28;
      let x_628 : i32 = u_xlati28;
      let x_632 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_625 + 2i) / 4i)][((x_628 + 2i) % 4i)];
      let x_633 : vec3<f32> = vs_TEXCOORD1;
      let x_636 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_632 * vec4<f32>(x_633.z, x_633.z, x_633.z, x_633.z)) + x_636);
      let x_638 : vec4<f32> = u_xlat7;
      let x_639 : i32 = u_xlati28;
      let x_642 : i32 = u_xlati28;
      let x_646 : vec4<f32> = x_262.x_AdditionalLightsWorldToShadow[((x_639 + 3i) / 4i)][((x_642 + 3i) % 4i)];
      u_xlat7 = (x_638 + x_646);
      let x_648 : vec4<f32> = u_xlat7;
      let x_650 : vec4<f32> = u_xlat7;
      let x_652 : vec3<f32> = (vec3<f32>(x_648.x, x_648.y, x_648.z) / vec3<f32>(x_650.w, x_650.w, x_650.w));
      let x_653 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
      let x_656 : vec4<f32> = u_xlat7;
      let x_657 : vec2<f32> = vec2<f32>(x_656.x, x_656.y);
      let x_659 : f32 = u_xlat7.z;
      txVec1 = vec3<f32>(x_657.x, x_657.y, x_659);
      let x_667 : vec3<f32> = txVec1;
      let x_669 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_667.xy, x_667.z);
      u_xlat28 = x_669;
      let x_670 : i32 = u_xlati26;
      let x_672 : f32 = x_262.x_AdditionalShadowParams[x_670].x;
      u_xlat29 = (1.0f + -(x_672));
      let x_675 : f32 = u_xlat28;
      let x_676 : i32 = u_xlati26;
      let x_678 : f32 = x_262.x_AdditionalShadowParams[x_676].x;
      let x_680 : f32 = u_xlat29;
      u_xlat28 = ((x_675 * x_678) + x_680);
      let x_683 : f32 = u_xlat7.z;
      u_xlatb29 = (0.0f >= x_683);
      let x_687 : f32 = u_xlat7.z;
      u_xlatb30 = (x_687 >= 1.0f);
      let x_689 : bool = u_xlatb29;
      let x_690 : bool = u_xlatb30;
      u_xlatb29 = (x_689 | x_690);
      let x_692 : bool = u_xlatb29;
      let x_693 : f32 = u_xlat28;
      u_xlat28 = select(x_693, 1.0f, x_692);
    } else {
      u_xlat28 = 1.0f;
    }
    let x_696 : f32 = u_xlat28;
    u_xlat29 = (-(x_696) + 1.0f);
    let x_699 : f32 = u_xlat24;
    let x_700 : f32 = u_xlat29;
    let x_702 : f32 = u_xlat28;
    u_xlat28 = ((x_699 * x_700) + x_702);
    let x_704 : f32 = u_xlat27;
    let x_705 : f32 = u_xlat28;
    u_xlat27 = (x_704 * x_705);
    let x_707 : f32 = u_xlat27;
    let x_709 : i32 = u_xlati26;
    let x_711 : vec4<f32> = x_438.x_AdditionalLightsColor[x_709];
    let x_713 : vec3<f32> = (vec3<f32>(x_707, x_707, x_707) * vec3<f32>(x_711.x, x_711.y, x_711.z));
    let x_714 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_716 : vec4<f32> = u_xlat2;
    let x_718 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_716.x, x_716.y, x_716.z), x_718);
    let x_720 : f32 = u_xlat26;
    u_xlat26 = clamp(x_720, 0.0f, 1.0f);
    let x_722 : f32 = u_xlat26;
    let x_724 : vec4<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_722, x_722, x_722) * vec3<f32>(x_724.x, x_724.y, x_724.z));
    let x_727 : vec3<f32> = u_xlat6;
    let x_728 : vec4<f32> = u_xlat1;
    let x_731 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_727 * vec3<f32>(x_728.y, x_728.z, x_728.w)) + x_731);

    continuing {
      let x_733 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_733 + bitcast<u32>(1i));
    }
  }
  let x_735 : vec3<f32> = u_xlat3;
  let x_736 : vec4<f32> = u_xlat1;
  let x_739 : vec4<f32> = u_xlat4;
  let x_741 : vec3<f32> = ((x_735 * vec3<f32>(x_736.y, x_736.z, x_736.w)) + vec3<f32>(x_739.x, x_739.y, x_739.z));
  let x_742 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_746 : vec3<f32> = u_xlat5;
  let x_747 : vec4<f32> = u_xlat1;
  let x_749 : vec3<f32> = (x_746 + vec3<f32>(x_747.x, x_747.y, x_747.z));
  let x_750 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_753 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_753 == 1.0f);
  let x_755 : bool = u_xlatb8;
  let x_756 : bool = u_xlatb16;
  u_xlatb8 = (x_755 | x_756);
  let x_758 : bool = u_xlatb8;
  if (x_758) {
    let x_763 : f32 = u_xlat0.x;
    x_759 = x_763;
  } else {
    x_759 = 1.0f;
  }
  let x_765 : f32 = x_759;
  SV_Target0.w = x_765;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


