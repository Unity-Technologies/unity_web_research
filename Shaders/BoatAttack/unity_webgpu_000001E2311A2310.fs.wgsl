struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_678 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_75 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_131 : f32;
  var u_xlatb8 : bool;
  var u_xlatb24 : bool;
  var x_190 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu8 : u32;
  var u_xlati8 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_831 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_53 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_61.w, x_61.x, x_61.y, x_61.z));
  let x_69 : f32 = u_xlat1.x;
  let x_72 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_69 >= x_72);
  let x_74 : bool = u_xlatb0;
  if (x_74) {
    let x_79 : f32 = u_xlat1.x;
    x_75 = x_79;
  } else {
    x_75 = 0.0f;
  }
  let x_82 : f32 = x_75;
  u_xlat0.x = x_82;
  let x_87 : f32 = u_xlat0.w;
  let x_89 : f32 = x_57.x_BaseColor.w;
  let x_92 : f32 = x_57.x_Cutoff;
  u_xlat8.x = ((x_87 * x_89) + -(x_92));
  let x_98 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_98);
  let x_102 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_102);
  let x_104 : f32 = u_xlat24;
  let x_106 : f32 = u_xlat16;
  u_xlat16 = (abs(x_104) + abs(x_106));
  let x_109 : f32 = u_xlat16;
  u_xlat16 = max(x_109, 0.0001f);
  let x_113 : f32 = u_xlat8.x;
  let x_114 : f32 = u_xlat16;
  u_xlat8.x = (x_113 / x_114);
  let x_118 : f32 = u_xlat8.x;
  u_xlat8.x = (x_118 + 0.5f);
  let x_123 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_123, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb16;
  if (x_130) {
    let x_135 : f32 = u_xlat8.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat8.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat8.x;
  u_xlatb8 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb8;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_44.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_44.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb24 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb24;
  if (x_189) {
    let x_194 : f32 = u_xlat8.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat8.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat8.x = x_201;
  let x_204 : f32 = u_xlat8.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat8.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat8.x;
  u_xlatb8 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb8;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat8;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_237 : vec3<f32> = vs_TEXCOORD1;
  let x_244 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres0;
  let x_247 : vec3<f32> = (x_237 + -(vec3<f32>(x_244.x, x_244.y, x_244.z)));
  let x_248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_253 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres1;
  let x_256 : vec3<f32> = (x_251 + -(vec3<f32>(x_253.x, x_253.y, x_253.z)));
  let x_257 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_260 : vec3<f32> = vs_TEXCOORD1;
  let x_263 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_260 + -(vec3<f32>(x_263.x, x_263.y, x_263.z)));
  let x_268 : vec3<f32> = vs_TEXCOORD1;
  let x_270 : vec4<f32> = x_242.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_268 + -(vec3<f32>(x_270.x, x_270.y, x_270.z)));
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_274.x, x_274.y, x_274.z), vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_280 : vec4<f32> = u_xlat4;
  let x_282 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_287 : vec3<f32> = u_xlat5;
  let x_288 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_287, x_288);
  let x_291 : vec3<f32> = u_xlat6;
  let x_292 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_291, x_292);
  let x_298 : vec4<f32> = u_xlat3;
  let x_301 : vec4<f32> = x_242.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_298 < x_301);
  let x_304 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_304);
  let x_308 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_308);
  let x_312 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_312);
  let x_316 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_316);
  let x_320 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_320);
  let x_326 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_326);
  let x_330 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_330);
  let x_333 : vec4<f32> = u_xlat3;
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec3<f32> = (vec3<f32>(x_333.x, x_333.y, x_333.z) + vec3<f32>(x_335.y, x_335.z, x_335.w));
  let x_338 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = max(vec3<f32>(x_340.x, x_340.y, x_340.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_344 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_344.x, x_343.x, x_343.y, x_343.z);
  let x_346 : vec4<f32> = u_xlat4;
  u_xlat8.x = dot(x_346, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_354 : f32 = u_xlat8.x;
  u_xlat8.x = (-(x_354) + 4.0f);
  let x_361 : f32 = u_xlat8.x;
  u_xlatu8 = u32(x_361);
  let x_365 : u32 = u_xlatu8;
  u_xlati8 = (bitcast<i32>(x_365) << bitcast<u32>(2i));
  let x_368 : vec3<f32> = vs_TEXCOORD1;
  let x_370 : i32 = u_xlati8;
  let x_373 : i32 = u_xlati8;
  let x_377 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_370 + 1i) / 4i)][((x_373 + 1i) % 4i)];
  let x_379 : vec3<f32> = (vec3<f32>(x_368.y, x_368.y, x_368.y) * vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : i32 = u_xlati8;
  let x_384 : i32 = u_xlati8;
  let x_387 : vec4<f32> = x_242.x_MainLightWorldToShadow[(x_382 / 4i)][(x_384 % 4i)];
  let x_389 : vec3<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = ((vec3<f32>(x_387.x, x_387.y, x_387.z) * vec3<f32>(x_389.x, x_389.x, x_389.x)) + vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : i32 = u_xlati8;
  let x_400 : i32 = u_xlati8;
  let x_404 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_397 + 2i) / 4i)][((x_400 + 2i) % 4i)];
  let x_406 : vec3<f32> = vs_TEXCOORD1;
  let x_409 : vec4<f32> = u_xlat3;
  let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.z, x_406.z, x_406.z)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
  let x_414 : vec4<f32> = u_xlat3;
  let x_416 : i32 = u_xlati8;
  let x_419 : i32 = u_xlati8;
  let x_423 : vec4<f32> = x_242.x_MainLightWorldToShadow[((x_416 + 3i) / 4i)][((x_419 + 3i) % 4i)];
  let x_425 : vec3<f32> = (vec3<f32>(x_414.x, x_414.y, x_414.z) + vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_426 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_425.x, x_425.y, x_425.z, x_426.w);
  let x_429 : f32 = vs_TEXCOORD1.y;
  let x_432 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat8.x = (x_429 * x_432);
  let x_436 : f32 = x_44.unity_MatrixV[0i].z;
  let x_438 : f32 = vs_TEXCOORD1.x;
  let x_441 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_436 * x_438) + x_441);
  let x_445 : f32 = x_44.unity_MatrixV[2i].z;
  let x_447 : f32 = vs_TEXCOORD1.z;
  let x_450 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_445 * x_447) + x_450);
  let x_454 : f32 = u_xlat8.x;
  let x_456 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat8.x = (x_454 + x_456);
  let x_460 : f32 = u_xlat8.x;
  let x_464 : f32 = x_44.x_ProjectionParams.y;
  u_xlat8.x = (-(x_460) + -(x_464));
  let x_469 : f32 = u_xlat8.x;
  u_xlat8.x = max(x_469, 0.0f);
  let x_473 : f32 = u_xlat8.x;
  let x_476 : f32 = x_44.unity_FogParams.x;
  u_xlat8.x = (x_473 * x_476);
  let x_485 : vec2<f32> = vs_TEXCOORD7;
  let x_487 : f32 = x_44.x_GlobalMipBias.x;
  let x_488 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_485, x_487);
  let x_489 : vec3<f32> = vec3<f32>(x_488.x, x_488.y, x_488.z);
  let x_490 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_489.x, x_489.y, x_489.z, x_490.w);
  let x_493 : vec4<f32> = u_xlat3;
  let x_494 : vec2<f32> = vec2<f32>(x_493.x, x_493.y);
  let x_496 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_494.x, x_494.y, x_496);
  let x_508 : vec3<f32> = txVec0;
  let x_510 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_508.xy, x_508.z);
  u_xlat24 = x_510;
  let x_513 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat24;
  let x_519 : f32 = x_242.x_MainLightShadowParams.x;
  let x_522 : f32 = u_xlat1.x;
  u_xlat24 = ((x_517 * x_519) + x_522);
  let x_526 : f32 = u_xlat3.z;
  u_xlatb1 = (0.0f >= x_526);
  let x_530 : f32 = u_xlat3.z;
  u_xlatb26 = (x_530 >= 1.0f);
  let x_532 : bool = u_xlatb1;
  let x_533 : bool = u_xlatb26;
  u_xlatb1 = (x_532 | x_533);
  let x_535 : bool = u_xlatb1;
  let x_536 : f32 = u_xlat24;
  u_xlat24 = select(x_536, 1.0f, x_535);
  let x_538 : vec3<f32> = vs_TEXCOORD1;
  let x_541 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_543 : vec3<f32> = (x_538 + -(x_541));
  let x_544 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
  let x_546 : vec4<f32> = u_xlat3;
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_546.x, x_546.y, x_546.z), vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = x_242.x_MainLightShadowParams.z;
  let x_558 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_553 * x_555) + x_558);
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_562, 0.0f, 1.0f);
  let x_566 : f32 = u_xlat24;
  u_xlat26 = (-(x_566) + 1.0f);
  let x_570 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat26;
  let x_573 : f32 = u_xlat24;
  u_xlat24 = ((x_570 * x_571) + x_573);
  let x_575 : f32 = u_xlat24;
  let x_577 : f32 = x_184.unity_LightData.z;
  u_xlat24 = (x_575 * x_577);
  let x_579 : f32 = u_xlat24;
  let x_582 : vec4<f32> = x_44.x_MainLightColor;
  let x_584 : vec3<f32> = (vec3<f32>(x_579, x_579, x_579) * vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec3<f32> = u_xlat2;
  let x_589 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat24 = dot(x_587, vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : f32 = u_xlat24;
  u_xlat24 = clamp(x_592, 0.0f, 1.0f);
  let x_594 : f32 = u_xlat24;
  let x_596 : vec4<f32> = u_xlat3;
  let x_598 : vec3<f32> = (vec3<f32>(x_594, x_594, x_594) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_599 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
  let x_601 : vec4<f32> = u_xlat1;
  let x_603 : vec4<f32> = u_xlat3;
  let x_605 : vec3<f32> = (vec3<f32>(x_601.y, x_601.z, x_601.w) * vec3<f32>(x_603.x, x_603.y, x_603.z));
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.x, x_608.x) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_616 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_618 : f32 = x_184.unity_LightData.y;
  u_xlat24 = min(x_616, x_618);
  let x_621 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_621));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_633 : u32 = u_xlatu_loop_1;
    let x_634 : u32 = u_xlatu24;
    if ((x_633 < x_634)) {
    } else {
      break;
    }
    let x_637 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_637 >> 2u);
    let x_640 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_640 & 3u));
    let x_643 : u32 = u_xlatu26;
    let x_646 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_643)];
    let x_656 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_661 : vec4<u32> = indexable[x_656];
    u_xlat26 = dot(x_646, bitcast<vec4<f32>>(x_661));
    let x_665 : f32 = u_xlat26;
    u_xlati26 = i32(x_665);
    let x_667 : vec3<f32> = vs_TEXCOORD1;
    let x_679 : i32 = u_xlati26;
    let x_681 : vec4<f32> = x_678.x_AdditionalLightsPosition[x_679];
    let x_684 : i32 = u_xlati26;
    let x_686 : vec4<f32> = x_678.x_AdditionalLightsPosition[x_684];
    u_xlat6 = ((-(x_667) * vec3<f32>(x_681.w, x_681.w, x_681.w)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
    let x_690 : vec3<f32> = u_xlat6;
    let x_691 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_690, x_691);
    let x_693 : f32 = u_xlat27;
    u_xlat27 = max(x_693, 6.10351562e-05f);
    let x_697 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_697);
    let x_699 : f32 = u_xlat28;
    let x_701 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_699, x_699, x_699) * x_701);
    let x_703 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_703);
    let x_705 : f32 = u_xlat27;
    let x_706 : i32 = u_xlati26;
    let x_708 : f32 = x_678.x_AdditionalLightsAttenuation[x_706].x;
    u_xlat27 = (x_705 * x_708);
    let x_710 : f32 = u_xlat27;
    let x_712 : f32 = u_xlat27;
    u_xlat27 = ((-(x_710) * x_712) + 1.0f);
    let x_715 : f32 = u_xlat27;
    u_xlat27 = max(x_715, 0.0f);
    let x_717 : f32 = u_xlat27;
    let x_718 : f32 = u_xlat27;
    u_xlat27 = (x_717 * x_718);
    let x_720 : f32 = u_xlat27;
    let x_721 : f32 = u_xlat28;
    u_xlat27 = (x_720 * x_721);
    let x_723 : i32 = u_xlati26;
    let x_725 : vec4<f32> = x_678.x_AdditionalLightsSpotDir[x_723];
    let x_727 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), x_727);
    let x_729 : f32 = u_xlat28;
    let x_730 : i32 = u_xlati26;
    let x_732 : f32 = x_678.x_AdditionalLightsAttenuation[x_730].z;
    let x_734 : i32 = u_xlati26;
    let x_736 : f32 = x_678.x_AdditionalLightsAttenuation[x_734].w;
    u_xlat28 = ((x_729 * x_732) + x_736);
    let x_738 : f32 = u_xlat28;
    u_xlat28 = clamp(x_738, 0.0f, 1.0f);
    let x_740 : f32 = u_xlat28;
    let x_741 : f32 = u_xlat28;
    u_xlat28 = (x_740 * x_741);
    let x_743 : f32 = u_xlat27;
    let x_744 : f32 = u_xlat28;
    u_xlat27 = (x_743 * x_744);
    let x_747 : f32 = u_xlat27;
    let x_749 : i32 = u_xlati26;
    let x_751 : vec4<f32> = x_678.x_AdditionalLightsColor[x_749];
    u_xlat7 = (vec3<f32>(x_747, x_747, x_747) * vec3<f32>(x_751.x, x_751.y, x_751.z));
    let x_754 : vec3<f32> = u_xlat2;
    let x_755 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_754, x_755);
    let x_757 : f32 = u_xlat26;
    u_xlat26 = clamp(x_757, 0.0f, 1.0f);
    let x_759 : f32 = u_xlat26;
    let x_761 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_759, x_759, x_759) * x_761);
    let x_763 : vec4<f32> = u_xlat1;
    let x_765 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_763.y, x_763.z, x_763.w) * x_765);
    let x_767 : vec3<f32> = u_xlat6;
    let x_768 : vec4<f32> = u_xlat0;
    let x_771 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_767 * vec3<f32>(x_768.x, x_768.x, x_768.x)) + x_771);

    continuing {
      let x_773 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_773 + bitcast<u32>(1i));
    }
  }
  let x_775 : vec4<f32> = u_xlat4;
  let x_777 : vec4<f32> = u_xlat1;
  let x_780 : vec4<f32> = u_xlat3;
  let x_782 : vec3<f32> = ((vec3<f32>(x_775.x, x_775.y, x_775.z) * vec3<f32>(x_777.y, x_777.z, x_777.w)) + vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
  let x_785 : vec3<f32> = u_xlat5;
  let x_786 : vec4<f32> = u_xlat1;
  let x_788 : vec3<f32> = (x_785 + vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_792 : f32 = u_xlat8.x;
  let x_794 : f32 = u_xlat8.x;
  u_xlat8.x = (x_792 * -(x_794));
  let x_799 : f32 = u_xlat8.x;
  u_xlat8.x = exp2(x_799);
  let x_802 : vec4<f32> = u_xlat1;
  let x_805 : vec4<f32> = x_44.unity_FogColor;
  let x_808 : vec3<f32> = (vec3<f32>(x_802.x, x_802.y, x_802.z) + -(vec3<f32>(x_805.x, x_805.y, x_805.z)));
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_813 : vec3<f32> = u_xlat8;
  let x_815 : vec4<f32> = u_xlat1;
  let x_819 : vec4<f32> = x_44.unity_FogColor;
  let x_821 : vec3<f32> = ((vec3<f32>(x_813.x, x_813.x, x_813.x) * vec3<f32>(x_815.x, x_815.y, x_815.z)) + vec3<f32>(x_819.x, x_819.y, x_819.z));
  let x_822 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_821.x, x_821.y, x_821.z, x_822.w);
  let x_825 : f32 = x_57.x_Surface;
  u_xlatb8 = (x_825 == 1.0f);
  let x_827 : bool = u_xlatb8;
  let x_828 : bool = u_xlatb16;
  u_xlatb8 = (x_827 | x_828);
  let x_830 : bool = u_xlatb8;
  if (x_830) {
    let x_835 : f32 = u_xlat0.x;
    x_831 = x_835;
  } else {
    x_831 = 1.0f;
  }
  let x_837 : f32 = x_831;
  SV_Target0.w = x_837;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

