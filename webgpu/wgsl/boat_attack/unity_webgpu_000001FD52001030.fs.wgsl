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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_40 : UnityPerMaterial;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat25 : f32;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat26 : f32;

@group(1) @binding(4) var<uniform> x_152 : LightShadows;

var<private> u_xlatb26 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat11 : f32;

@group(1) @binding(2) var<uniform> x_218 : UnityPerDraw;

var<private> u_xlatu25 : u32;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatu28 : u32;

var<private> u_xlati5 : i32;

var<private> u_xlat28 : f32;

var<private> u_xlati28 : i32;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_326 : AdditionalLights;

var<private> u_xlat29 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb14 : vec3<bool>;

var<private> u_xlatb7 : vec3<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat14 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb22 : bool;

var<private> u_xlat8 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb8 : bool;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu27 : u32;

var<private> u_xlatb28 : bool;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_475 : f32;
  var x_486 : f32;
  var txVec1 : vec3<f32>;
  var x_603 : f32;
  var x_675 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_36 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_40.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_36.w, x_36.x, x_36.y, x_36.z) * vec4<f32>(x_44.w, x_44.x, x_44.y, x_44.z));
  let x_51 : vec3<f32> = vs_TEXCOORD2;
  let x_52 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_51, x_52);
  let x_57 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_57);
  let x_60 : vec3<f32> = u_xlat1;
  let x_62 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62);
  let x_71 : vec2<f32> = vs_TEXCOORD7;
  let x_73 : f32 = x_27.x_GlobalMipBias.x;
  let x_74 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_71, x_73);
  u_xlat2 = x_74;
  let x_80 : vec2<f32> = vs_TEXCOORD7;
  let x_82 : f32 = x_27.x_GlobalMipBias.x;
  let x_83 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_80, x_82);
  u_xlat3 = vec3<f32>(x_83.x, x_83.y, x_83.z);
  let x_85 : vec4<f32> = u_xlat2;
  let x_89 : vec3<f32> = (vec3<f32>(x_85.x, x_85.y, x_85.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_93 : vec3<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat25 = dot(x_93, vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : f32 = u_xlat25;
  u_xlat25 = (x_97 + 0.5f);
  let x_100 : f32 = u_xlat25;
  let x_102 : vec3<f32> = u_xlat3;
  let x_103 : vec3<f32> = (vec3<f32>(x_100, x_100, x_100) * x_102);
  let x_104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_103.x, x_103.y, x_103.z, x_104.w);
  let x_108 : f32 = u_xlat2.w;
  u_xlat25 = max(x_108, 0.00009999999747378752f);
  let x_111 : vec4<f32> = u_xlat2;
  let x_113 : f32 = u_xlat25;
  let x_115 : vec3<f32> = (vec3<f32>(x_111.x, x_111.y, x_111.z) / vec3<f32>(x_113, x_113, x_113));
  let x_116 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_122 : vec4<f32> = vs_TEXCOORD6;
  let x_123 : vec2<f32> = vec2<f32>(x_122.x, x_122.y);
  let x_127 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_123.x, x_123.y, x_127);
  let x_139 : vec3<f32> = txVec0;
  let x_142 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_139.xy, x_139.z);
  u_xlat25 = x_142;
  let x_155 : f32 = x_152.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_155) + 1.0f);
  let x_159 : f32 = u_xlat25;
  let x_161 : f32 = x_152.x_MainLightShadowParams.x;
  let x_163 : f32 = u_xlat26;
  u_xlat25 = ((x_159 * x_161) + x_163);
  let x_169 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_169);
  let x_173 : f32 = vs_TEXCOORD6.z;
  u_xlatb3 = (x_173 >= 1.0f);
  let x_175 : bool = u_xlatb26;
  let x_176 : bool = u_xlatb3;
  u_xlatb26 = (x_175 | x_176);
  let x_178 : bool = u_xlatb26;
  let x_179 : f32 = u_xlat25;
  u_xlat25 = select(x_179, 1.0f, x_178);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_186 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat3 = (x_182 + -(x_186));
  let x_189 : vec3<f32> = u_xlat3;
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat26 = dot(x_189, x_190);
  let x_192 : f32 = u_xlat26;
  let x_194 : f32 = x_152.x_MainLightShadowParams.z;
  let x_197 : f32 = x_152.x_MainLightShadowParams.w;
  u_xlat3.x = ((x_192 * x_194) + x_197);
  let x_201 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_201, 0.0f, 1.0f);
  let x_205 : f32 = u_xlat25;
  u_xlat11 = (-(x_205) + 1.0f);
  let x_209 : f32 = u_xlat3.x;
  let x_210 : f32 = u_xlat11;
  let x_212 : f32 = u_xlat25;
  u_xlat25 = ((x_209 * x_210) + x_212);
  let x_214 : f32 = u_xlat25;
  let x_221 : f32 = x_218.unity_LightData.z;
  u_xlat25 = (x_214 * x_221);
  let x_223 : f32 = u_xlat25;
  let x_227 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat3 = (vec3<f32>(x_223, x_223, x_223) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = u_xlat1;
  let x_232 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat25 = dot(x_230, vec3<f32>(x_232.x, x_232.y, x_232.z));
  let x_235 : f32 = u_xlat25;
  u_xlat25 = clamp(x_235, 0.0f, 1.0f);
  let x_237 : f32 = u_xlat25;
  let x_239 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_237, x_237, x_237) * x_239);
  let x_241 : vec4<f32> = u_xlat0;
  let x_243 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_241.y, x_241.z, x_241.w) * x_243);
  let x_247 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_250 : f32 = x_218.unity_LightData.y;
  u_xlat25 = min(x_247, x_250);
  let x_254 : f32 = u_xlat25;
  u_xlatu25 = bitcast<u32>(i32(x_254));
  let x_257 : f32 = u_xlat26;
  let x_260 : f32 = x_152.x_AdditionalShadowFadeParams.x;
  let x_263 : f32 = x_152.x_AdditionalShadowFadeParams.y;
  u_xlat26 = ((x_257 * x_260) + x_263);
  let x_265 : f32 = u_xlat26;
  u_xlat26 = clamp(x_265, 0.0f, 1.0f);
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_278 : u32 = u_xlatu_loop_1;
    let x_279 : u32 = u_xlatu25;
    if ((x_278 < x_279)) {
    } else {
      break;
    }
    let x_282 : u32 = u_xlatu_loop_1;
    u_xlatu28 = (x_282 >> 2u);
    let x_286 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_286 & 3u));
    let x_291 : u32 = u_xlatu28;
    let x_294 : vec4<f32> = x_218.unity_LightIndices[bitcast<i32>(x_291)];
    let x_304 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_309 : vec4<u32> = indexable[x_304];
    u_xlat28 = dot(x_294, bitcast<vec4<f32>>(x_309));
    let x_313 : f32 = u_xlat28;
    u_xlati28 = i32(x_313);
    let x_316 : vec3<f32> = vs_TEXCOORD1;
    let x_327 : i32 = u_xlati28;
    let x_329 : vec4<f32> = x_326.x_AdditionalLightsPosition[x_327];
    let x_332 : i32 = u_xlati28;
    let x_334 : vec4<f32> = x_326.x_AdditionalLightsPosition[x_332];
    u_xlat5 = ((-(x_316) * vec3<f32>(x_329.w, x_329.w, x_329.w)) + vec3<f32>(x_334.x, x_334.y, x_334.z));
    let x_338 : vec3<f32> = u_xlat5;
    let x_339 : vec3<f32> = u_xlat5;
    u_xlat29 = dot(x_338, x_339);
    let x_341 : f32 = u_xlat29;
    u_xlat29 = max(x_341, 0.00006103515625f);
    let x_345 : f32 = u_xlat29;
    u_xlat6.x = inverseSqrt(x_345);
    let x_348 : vec3<f32> = u_xlat5;
    let x_349 : vec4<f32> = u_xlat6;
    u_xlat5 = (x_348 * vec3<f32>(x_349.x, x_349.x, x_349.x));
    let x_352 : f32 = u_xlat29;
    u_xlat6.x = (1.0f / x_352);
    let x_355 : f32 = u_xlat29;
    let x_356 : i32 = u_xlati28;
    let x_358 : f32 = x_326.x_AdditionalLightsAttenuation[x_356].x;
    u_xlat29 = (x_355 * x_358);
    let x_360 : f32 = u_xlat29;
    let x_362 : f32 = u_xlat29;
    u_xlat29 = ((-(x_360) * x_362) + 1.0f);
    let x_365 : f32 = u_xlat29;
    u_xlat29 = max(x_365, 0.0f);
    let x_367 : f32 = u_xlat29;
    let x_368 : f32 = u_xlat29;
    u_xlat29 = (x_367 * x_368);
    let x_370 : f32 = u_xlat29;
    let x_372 : f32 = u_xlat6.x;
    u_xlat29 = (x_370 * x_372);
    let x_374 : i32 = u_xlati28;
    let x_376 : vec4<f32> = x_326.x_AdditionalLightsSpotDir[x_374];
    let x_378 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), x_378);
    let x_382 : f32 = u_xlat6.x;
    let x_383 : i32 = u_xlati28;
    let x_385 : f32 = x_326.x_AdditionalLightsAttenuation[x_383].z;
    let x_387 : i32 = u_xlati28;
    let x_389 : f32 = x_326.x_AdditionalLightsAttenuation[x_387].w;
    u_xlat6.x = ((x_382 * x_385) + x_389);
    let x_393 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_393, 0.0f, 1.0f);
    let x_397 : f32 = u_xlat6.x;
    let x_399 : f32 = u_xlat6.x;
    u_xlat6.x = (x_397 * x_399);
    let x_402 : f32 = u_xlat29;
    let x_404 : f32 = u_xlat6.x;
    u_xlat29 = (x_402 * x_404);
    let x_408 : i32 = u_xlati28;
    let x_410 : f32 = x_152.x_AdditionalShadowParams[x_408].w;
    u_xlati6 = i32(x_410);
    let x_415 : i32 = u_xlati6;
    u_xlatb14.x = (x_415 >= 0i);
    let x_419 : bool = u_xlatb14.x;
    if (x_419) {
      let x_423 : i32 = u_xlati28;
      let x_425 : f32 = x_152.x_AdditionalShadowParams[x_423].z;
      u_xlatb14.x = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_425, x_425, x_425, x_425))));
      let x_432 : bool = u_xlatb14.x;
      if (x_432) {
        let x_435 : vec3<f32> = u_xlat5;
        let x_438 : vec3<f32> = u_xlat5;
        let x_441 : vec4<bool> = (abs(vec4<f32>(x_435.z, x_435.z, x_435.y, x_435.y)) >= abs(vec4<f32>(x_438.x, x_438.y, x_438.x, x_438.x)));
        u_xlatb14 = vec3<bool>(x_441.x, x_441.y, x_441.z);
        let x_444 : bool = u_xlatb14.y;
        let x_446 : bool = u_xlatb14.x;
        u_xlatb14.x = (x_444 & x_446);
        let x_450 : vec3<f32> = u_xlat5;
        let x_453 : vec4<bool> = (-(vec4<f32>(x_450.z, x_450.y, x_450.x, x_450.z)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        u_xlatb7 = vec3<bool>(x_453.x, x_453.y, x_453.z);
        let x_457 : bool = u_xlatb7.x;
        u_xlat7.x = select(4.0f, 5.0f, x_457);
        let x_463 : bool = u_xlatb7.y;
        u_xlat7.y = select(2.0f, 3.0f, x_463);
        let x_470 : bool = u_xlatb7.z;
        u_xlat22 = select(0.0f, 1.0f, x_470);
        let x_473 : bool = u_xlatb14.z;
        if (x_473) {
          let x_479 : f32 = u_xlat7.y;
          x_475 = x_479;
        } else {
          let x_481 : f32 = u_xlat22;
          x_475 = x_481;
        }
        let x_482 : f32 = x_475;
        u_xlat22 = x_482;
        let x_485 : bool = u_xlatb14.x;
        if (x_485) {
          let x_490 : f32 = u_xlat7.x;
          x_486 = x_490;
        } else {
          let x_492 : f32 = u_xlat22;
          x_486 = x_492;
        }
        let x_493 : f32 = x_486;
        u_xlat14 = x_493;
        let x_494 : i32 = u_xlati28;
        let x_496 : f32 = x_152.x_AdditionalShadowParams[x_494].w;
        u_xlat22 = trunc(x_496);
        let x_498 : f32 = u_xlat14;
        let x_499 : f32 = u_xlat22;
        u_xlat14 = (x_498 + x_499);
        let x_501 : f32 = u_xlat14;
        u_xlati6 = i32(x_501);
      }
      let x_503 : i32 = u_xlati6;
      u_xlati6 = (x_503 << bitcast<u32>(2i));
      let x_505 : vec3<f32> = vs_TEXCOORD1;
      let x_508 : i32 = u_xlati6;
      let x_511 : i32 = u_xlati6;
      let x_515 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_508 + 1i) / 4i)][((x_511 + 1i) % 4i)];
      u_xlat7 = (vec4<f32>(x_505.y, x_505.y, x_505.y, x_505.y) * x_515);
      let x_517 : i32 = u_xlati6;
      let x_519 : i32 = u_xlati6;
      let x_522 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[(x_517 / 4i)][(x_519 % 4i)];
      let x_523 : vec3<f32> = vs_TEXCOORD1;
      let x_526 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_522 * vec4<f32>(x_523.x, x_523.x, x_523.x, x_523.x)) + x_526);
      let x_528 : i32 = u_xlati6;
      let x_531 : i32 = u_xlati6;
      let x_535 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_528 + 2i) / 4i)][((x_531 + 2i) % 4i)];
      let x_536 : vec3<f32> = vs_TEXCOORD1;
      let x_539 : vec4<f32> = u_xlat7;
      u_xlat7 = ((x_535 * vec4<f32>(x_536.z, x_536.z, x_536.z, x_536.z)) + x_539);
      let x_541 : vec4<f32> = u_xlat7;
      let x_542 : i32 = u_xlati6;
      let x_545 : i32 = u_xlati6;
      let x_549 : vec4<f32> = x_152.x_AdditionalLightsWorldToShadow[((x_542 + 3i) / 4i)][((x_545 + 3i) % 4i)];
      u_xlat6 = (x_541 + x_549);
      let x_551 : vec4<f32> = u_xlat6;
      let x_553 : vec4<f32> = u_xlat6;
      let x_555 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) / vec3<f32>(x_553.w, x_553.w, x_553.w));
      let x_556 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
      let x_559 : vec4<f32> = u_xlat6;
      let x_560 : vec2<f32> = vec2<f32>(x_559.x, x_559.y);
      let x_562 : f32 = u_xlat6.z;
      txVec1 = vec3<f32>(x_560.x, x_560.y, x_562);
      let x_570 : vec3<f32> = txVec1;
      let x_572 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_570.xy, x_570.z);
      u_xlat6.x = x_572;
      let x_574 : i32 = u_xlati28;
      let x_576 : f32 = x_152.x_AdditionalShadowParams[x_574].x;
      u_xlat14 = (1.0f + -(x_576));
      let x_580 : f32 = u_xlat6.x;
      let x_581 : i32 = u_xlati28;
      let x_583 : f32 = x_152.x_AdditionalShadowParams[x_581].x;
      let x_585 : f32 = u_xlat14;
      u_xlat6.x = ((x_580 * x_583) + x_585);
      let x_589 : f32 = u_xlat6.z;
      u_xlatb14.x = (0.0f >= x_589);
      let x_594 : f32 = u_xlat6.z;
      u_xlatb22 = (x_594 >= 1.0f);
      let x_596 : bool = u_xlatb22;
      let x_598 : bool = u_xlatb14.x;
      u_xlatb14.x = (x_596 | x_598);
      let x_602 : bool = u_xlatb14.x;
      if (x_602) {
        x_603 = 1.0f;
      } else {
        let x_608 : f32 = u_xlat6.x;
        x_603 = x_608;
      }
      let x_609 : f32 = x_603;
      u_xlat6.x = x_609;
    } else {
      u_xlat6.x = 1.0f;
    }
    let x_614 : f32 = u_xlat6.x;
    u_xlat14 = (-(x_614) + 1.0f);
    let x_617 : f32 = u_xlat26;
    let x_618 : f32 = u_xlat14;
    let x_621 : f32 = u_xlat6.x;
    u_xlat6.x = ((x_617 * x_618) + x_621);
    let x_624 : f32 = u_xlat29;
    let x_626 : f32 = u_xlat6.x;
    u_xlat29 = (x_624 * x_626);
    let x_628 : f32 = u_xlat29;
    let x_630 : i32 = u_xlati28;
    let x_632 : vec4<f32> = x_326.x_AdditionalLightsColor[x_630];
    let x_634 : vec3<f32> = (vec3<f32>(x_628, x_628, x_628) * vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
    let x_637 : vec3<f32> = u_xlat1;
    let x_638 : vec3<f32> = u_xlat5;
    u_xlat28 = dot(x_637, x_638);
    let x_640 : f32 = u_xlat28;
    u_xlat28 = clamp(x_640, 0.0f, 1.0f);
    let x_642 : f32 = u_xlat28;
    let x_644 : vec4<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_642, x_642, x_642) * vec3<f32>(x_644.x, x_644.y, x_644.z));
    let x_647 : vec3<f32> = u_xlat5;
    let x_648 : vec4<f32> = u_xlat0;
    let x_651 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_647 * vec3<f32>(x_648.y, x_648.z, x_648.w)) + x_651);

    continuing {
      let x_653 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_653 + bitcast<u32>(1i));
    }
  }
  let x_656 : vec4<f32> = u_xlat2;
  let x_658 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = u_xlat3;
  u_xlat8 = ((vec3<f32>(x_656.x, x_656.y, x_656.z) * vec3<f32>(x_658.y, x_658.z, x_658.w)) + x_661);
  let x_665 : vec3<f32> = u_xlat4;
  let x_666 : vec3<f32> = u_xlat8;
  let x_667 : vec3<f32> = (x_665 + x_666);
  let x_668 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_672 : f32 = x_40.x_Surface;
  u_xlatb8 = (x_672 == 1.0f);
  let x_674 : bool = u_xlatb8;
  if (x_674) {
    let x_679 : f32 = u_xlat0.x;
    x_675 = x_679;
  } else {
    x_675 = 1.0f;
  }
  let x_681 : f32 = x_675;
  SV_Target0.w = x_681;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


