struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_185 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_242 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_704 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_130 : f32;
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
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var x_543 : f32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_826 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat8.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat24;
  let x_104 : f32 = u_xlat16;
  u_xlat16 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat16;
  u_xlat16 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat8.x;
  let x_112 : f32 = u_xlat16;
  u_xlat8.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat8.x;
  u_xlat8.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_121, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb16;
  if (x_129) {
    let x_134 : f32 = u_xlat8.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat8.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat8.x;
  u_xlatb8 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb8;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_158 : vec4<f32> = hlslcc_FragCoord;
  let x_162 : f32 = x_43.x_DitheringTextureInvSize;
  let x_164 : vec2<f32> = (vec2<f32>(x_158.x, x_158.y) * vec2<f32>(x_162, x_162));
  let x_165 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_164.x, x_165.y, x_164.y);
  let x_172 : vec3<f32> = u_xlat8;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat8.x = x_176.w;
  let x_187 : f32 = x_185.unity_LODFade.x;
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
  let x_207 : f32 = x_185.unity_LODFade.x;
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
  let x_434 : vec2<f32> = vs_TEXCOORD7;
  let x_436 : f32 = x_43.x_GlobalMipBias.x;
  let x_437 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_434, x_436);
  let x_438 : vec3<f32> = vec3<f32>(x_437.x, x_437.y, x_437.z);
  let x_439 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_443 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_444 : vec2<f32> = vec2<f32>(x_443.x, x_443.y);
  let x_448 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_444.x, x_444.y));
  let x_449 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_448.x, x_449.y, x_448.y);
  let x_451 : vec3<f32> = u_xlat8;
  let x_453 : vec4<f32> = hlslcc_FragCoord;
  let x_455 : vec2<f32> = (vec2<f32>(x_451.x, x_451.z) * vec2<f32>(x_453.x, x_453.y));
  let x_456 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_455.x, x_455.y, x_456.z);
  let x_459 : f32 = u_xlat5.y;
  let x_462 : f32 = x_43.x_ScaleBiasRt.x;
  let x_465 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_459 * x_462) + x_465);
  let x_469 : f32 = u_xlat8.x;
  u_xlat5.z = (-(x_469) + 1.0f);
  let x_478 : vec3<f32> = u_xlat5;
  let x_481 : f32 = x_43.x_GlobalMipBias.x;
  let x_482 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_478.x, x_478.z), x_481);
  u_xlat8.x = x_482.x;
  let x_486 : f32 = u_xlat8.x;
  u_xlat24 = (x_486 + -1.0f);
  let x_489 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_490 : f32 = u_xlat24;
  u_xlat24 = ((x_489 * x_490) + 1.0f);
  let x_494 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_494, 1.0f);
  let x_498 : vec4<f32> = u_xlat3;
  let x_499 : vec2<f32> = vec2<f32>(x_498.x, x_498.y);
  let x_501 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_499.x, x_499.y, x_501);
  let x_513 : vec3<f32> = txVec0;
  let x_515 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_513.xy, x_513.z);
  u_xlat1.x = x_515;
  let x_519 : f32 = x_242.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_519) + 1.0f);
  let x_523 : f32 = u_xlat1.x;
  let x_525 : f32 = x_242.x_MainLightShadowParams.x;
  let x_527 : f32 = u_xlat26;
  u_xlat1.x = ((x_523 * x_525) + x_527);
  let x_532 : f32 = u_xlat3.z;
  u_xlatb26 = (0.0f >= x_532);
  let x_535 : f32 = u_xlat3.z;
  u_xlatb3.x = (x_535 >= 1.0f);
  let x_538 : bool = u_xlatb26;
  let x_540 : bool = u_xlatb3.x;
  u_xlatb26 = (x_538 | x_540);
  let x_542 : bool = u_xlatb26;
  if (x_542) {
    x_543 = 1.0f;
  } else {
    let x_548 : f32 = u_xlat1.x;
    x_543 = x_548;
  }
  let x_549 : f32 = x_543;
  u_xlat1.x = x_549;
  let x_551 : vec3<f32> = vs_TEXCOORD1;
  let x_555 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_557 : vec3<f32> = (x_551 + -(x_555));
  let x_558 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_560 : vec4<f32> = u_xlat3;
  let x_562 : vec4<f32> = u_xlat3;
  u_xlat26 = dot(vec3<f32>(x_560.x, x_560.y, x_560.z), vec3<f32>(x_562.x, x_562.y, x_562.z));
  let x_565 : f32 = u_xlat26;
  let x_567 : f32 = x_242.x_MainLightShadowParams.z;
  let x_570 : f32 = x_242.x_MainLightShadowParams.w;
  u_xlat26 = ((x_565 * x_567) + x_570);
  let x_572 : f32 = u_xlat26;
  u_xlat26 = clamp(x_572, 0.0f, 1.0f);
  let x_575 : f32 = u_xlat1.x;
  u_xlat3.x = (-(x_575) + 1.0f);
  let x_579 : f32 = u_xlat26;
  let x_581 : f32 = u_xlat3.x;
  let x_584 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_579 * x_581) + x_584);
  let x_587 : f32 = u_xlat24;
  let x_590 : vec4<f32> = x_43.x_MainLightColor;
  let x_592 : vec3<f32> = (vec3<f32>(x_587, x_587, x_587) * vec3<f32>(x_590.x, x_590.y, x_590.z));
  let x_593 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
  let x_595 : vec3<f32> = u_xlat8;
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.x, x_595.x) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat1.x;
  let x_605 : f32 = x_185.unity_LightData.z;
  u_xlat8.x = (x_603 * x_605);
  let x_608 : vec3<f32> = u_xlat8;
  let x_610 : vec4<f32> = u_xlat3;
  let x_612 : vec3<f32> = (vec3<f32>(x_608.x, x_608.x, x_608.x) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec3<f32> = u_xlat2;
  let x_617 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(x_615, vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_622 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_622, 0.0f, 1.0f);
  let x_625 : vec3<f32> = u_xlat8;
  let x_627 : vec4<f32> = u_xlat3;
  let x_629 : vec3<f32> = (vec3<f32>(x_625.x, x_625.x, x_625.x) * vec3<f32>(x_627.x, x_627.y, x_627.z));
  let x_630 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat1;
  let x_634 : vec4<f32> = u_xlat3;
  let x_636 : vec3<f32> = (vec3<f32>(x_632.y, x_632.z, x_632.w) * vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_637 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_636.z, x_637.w);
  let x_641 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_643 : f32 = x_185.unity_LightData.y;
  u_xlat8.x = min(x_641, x_643);
  let x_647 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_647));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_659 : u32 = u_xlatu_loop_1;
    let x_660 : u32 = u_xlatu8;
    if ((x_659 < x_660)) {
    } else {
      break;
    }
    let x_663 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_663 >> 2u);
    let x_666 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_666 & 3u));
    let x_669 : u32 = u_xlatu26;
    let x_672 : vec4<f32> = x_185.unity_LightIndices[bitcast<i32>(x_669)];
    let x_682 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_687 : vec4<u32> = indexable[x_682];
    u_xlat26 = dot(x_672, bitcast<vec4<f32>>(x_687));
    let x_691 : f32 = u_xlat26;
    u_xlati26 = i32(x_691);
    let x_693 : vec3<f32> = vs_TEXCOORD1;
    let x_705 : i32 = u_xlati26;
    let x_707 : vec4<f32> = x_704.x_AdditionalLightsPosition[x_705];
    let x_710 : i32 = u_xlati26;
    let x_712 : vec4<f32> = x_704.x_AdditionalLightsPosition[x_710];
    u_xlat6 = ((-(x_693) * vec3<f32>(x_707.w, x_707.w, x_707.w)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
    let x_716 : vec3<f32> = u_xlat6;
    let x_717 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_716, x_717);
    let x_719 : f32 = u_xlat27;
    u_xlat27 = max(x_719, 6.10351562e-05f);
    let x_723 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_723);
    let x_725 : f32 = u_xlat28;
    let x_727 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_725, x_725, x_725) * x_727);
    let x_729 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_729);
    let x_731 : f32 = u_xlat27;
    let x_732 : i32 = u_xlati26;
    let x_734 : f32 = x_704.x_AdditionalLightsAttenuation[x_732].x;
    u_xlat27 = (x_731 * x_734);
    let x_736 : f32 = u_xlat27;
    let x_738 : f32 = u_xlat27;
    u_xlat27 = ((-(x_736) * x_738) + 1.0f);
    let x_741 : f32 = u_xlat27;
    u_xlat27 = max(x_741, 0.0f);
    let x_743 : f32 = u_xlat27;
    let x_744 : f32 = u_xlat27;
    u_xlat27 = (x_743 * x_744);
    let x_746 : f32 = u_xlat27;
    let x_747 : f32 = u_xlat28;
    u_xlat27 = (x_746 * x_747);
    let x_749 : i32 = u_xlati26;
    let x_751 : vec4<f32> = x_704.x_AdditionalLightsSpotDir[x_749];
    let x_753 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_751.x, x_751.y, x_751.z), x_753);
    let x_755 : f32 = u_xlat28;
    let x_756 : i32 = u_xlati26;
    let x_758 : f32 = x_704.x_AdditionalLightsAttenuation[x_756].z;
    let x_760 : i32 = u_xlati26;
    let x_762 : f32 = x_704.x_AdditionalLightsAttenuation[x_760].w;
    u_xlat28 = ((x_755 * x_758) + x_762);
    let x_764 : f32 = u_xlat28;
    u_xlat28 = clamp(x_764, 0.0f, 1.0f);
    let x_766 : f32 = u_xlat28;
    let x_767 : f32 = u_xlat28;
    u_xlat28 = (x_766 * x_767);
    let x_769 : f32 = u_xlat27;
    let x_770 : f32 = u_xlat28;
    u_xlat27 = (x_769 * x_770);
    let x_773 : f32 = u_xlat24;
    let x_775 : i32 = u_xlati26;
    let x_777 : vec4<f32> = x_704.x_AdditionalLightsColor[x_775];
    u_xlat7 = (vec3<f32>(x_773, x_773, x_773) * vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_780 : f32 = u_xlat27;
    let x_782 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_780, x_780, x_780) * x_782);
    let x_784 : vec3<f32> = u_xlat2;
    let x_785 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_784, x_785);
    let x_787 : f32 = u_xlat26;
    u_xlat26 = clamp(x_787, 0.0f, 1.0f);
    let x_789 : f32 = u_xlat26;
    let x_791 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_789, x_789, x_789) * x_791);
    let x_793 : vec3<f32> = u_xlat6;
    let x_794 : vec4<f32> = u_xlat1;
    let x_797 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_793 * vec3<f32>(x_794.y, x_794.z, x_794.w)) + x_797);

    continuing {
      let x_799 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_799 + bitcast<u32>(1i));
    }
  }
  let x_801 : vec4<f32> = u_xlat4;
  let x_803 : vec4<f32> = u_xlat1;
  let x_806 : vec4<f32> = u_xlat3;
  let x_808 : vec3<f32> = ((vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_803.y, x_803.z, x_803.w)) + vec3<f32>(x_806.x, x_806.y, x_806.z));
  let x_809 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_813 : vec3<f32> = u_xlat5;
  let x_814 : vec4<f32> = u_xlat1;
  let x_816 : vec3<f32> = (x_813 + vec3<f32>(x_814.x, x_814.y, x_814.z));
  let x_817 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_816.x, x_816.y, x_816.z, x_817.w);
  let x_820 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_820 == 1.0f);
  let x_822 : bool = u_xlatb8;
  let x_823 : bool = u_xlatb16;
  u_xlatb8 = (x_822 | x_823);
  let x_825 : bool = u_xlatb8;
  if (x_825) {
    let x_830 : f32 = u_xlat0.x;
    x_826 = x_830;
  } else {
    x_826 = 1.0f;
  }
  let x_832 : f32 = x_826;
  SV_Target0.w = x_832;
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

