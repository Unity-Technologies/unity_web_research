struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_348 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_523 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb8 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb24 : bool;
  var x_373 : f32;
  var u_xlat24 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_701 : f32;
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
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_44.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_44.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb8 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb8;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_152 * x_155);
  let x_158 : f32 = x_44.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat2;
  u_xlat2 = ((x_158 * x_160) + x_162);
  let x_165 : f32 = x_44.unity_MatrixV[2i].z;
  let x_167 : f32 = vs_TEXCOORD1.z;
  let x_169 : f32 = u_xlat2;
  u_xlat2 = ((x_165 * x_167) + x_169);
  let x_171 : f32 = u_xlat2;
  let x_174 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_171 + x_174);
  let x_176 : f32 = u_xlat2;
  let x_180 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_176) + -(x_180));
  let x_183 : f32 = u_xlat2;
  u_xlat2 = max(x_183, 0.0f);
  let x_185 : f32 = u_xlat2;
  let x_188 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_185 * x_188);
  u_xlat1.w = 1.0f;
  let x_195 : vec4<f32> = x_92.unity_SHAr;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_92.unity_SHAg;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_92.unity_SHAb;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_207, x_208);
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_212.y, x_212.z, x_212.z, x_212.x) * vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.z));
  let x_220 : vec4<f32> = x_92.unity_SHBr;
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_220, x_221);
  let x_226 : vec4<f32> = x_92.unity_SHBg;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_92.unity_SHBb;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_232, x_233);
  let x_238 : f32 = u_xlat1.y;
  let x_240 : f32 = u_xlat1.y;
  u_xlat22 = (x_238 * x_240);
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat1.x;
  let x_247 : f32 = u_xlat22;
  u_xlat22 = ((x_243 * x_245) + -(x_247));
  let x_253 : vec4<f32> = x_92.unity_SHC;
  let x_255 : f32 = u_xlat22;
  let x_258 : vec3<f32> = u_xlat5;
  u_xlat9 = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255, x_255, x_255)) + x_258);
  let x_260 : vec3<f32> = u_xlat9;
  let x_261 : vec3<f32> = u_xlat3;
  u_xlat9 = (x_260 + x_261);
  let x_263 : vec3<f32> = u_xlat9;
  u_xlat9 = max(x_263, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_268 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_269 : vec2<f32> = vec2<f32>(x_268.x, x_268.y);
  let x_273 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_269.x, x_269.y));
  let x_274 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_273.x, x_273.y, x_274.z);
  let x_276 : vec3<f32> = u_xlat3;
  let x_278 : vec4<f32> = hlslcc_FragCoord;
  let x_280 : vec2<f32> = (vec2<f32>(x_276.x, x_276.y) * vec2<f32>(x_278.x, x_278.y));
  let x_281 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_280.x, x_280.y, x_281.z);
  let x_284 : f32 = u_xlat3.y;
  let x_287 : f32 = x_44.x_ScaleBiasRt.x;
  let x_290 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_284 * x_287) + x_290);
  let x_292 : f32 = u_xlat22;
  u_xlat3.z = (-(x_292) + 1.0f);
  let x_301 : vec3<f32> = u_xlat3;
  let x_304 : f32 = x_44.x_GlobalMipBias.x;
  let x_305 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_301.x, x_301.z), x_304);
  u_xlat22 = x_305.x;
  let x_307 : f32 = u_xlat22;
  u_xlat3.x = (x_307 + -1.0f);
  let x_313 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_315 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_313 * x_315) + 1.0f);
  let x_319 : f32 = u_xlat22;
  u_xlat22 = min(x_319, 1.0f);
  let x_323 : vec4<f32> = vs_TEXCOORD6;
  let x_324 : vec2<f32> = vec2<f32>(x_323.x, x_323.y);
  let x_326 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_324.x, x_324.y, x_326);
  let x_339 : vec3<f32> = txVec0;
  let x_341 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_339.xy, x_339.z);
  u_xlat10.x = x_341;
  let x_350 : f32 = x_348.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_350) + 1.0f);
  let x_354 : f32 = u_xlat10.x;
  let x_356 : f32 = x_348.x_MainLightShadowParams.x;
  let x_358 : f32 = u_xlat17;
  u_xlat10.x = ((x_354 * x_356) + x_358);
  let x_363 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_363);
  let x_367 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (x_367 >= 1.0f);
  let x_369 : bool = u_xlatb24;
  let x_370 : bool = u_xlatb17;
  u_xlatb17 = (x_369 | x_370);
  let x_372 : bool = u_xlatb17;
  if (x_372) {
    x_373 = 1.0f;
  } else {
    let x_378 : f32 = u_xlat10.x;
    x_373 = x_378;
  }
  let x_379 : f32 = x_373;
  u_xlat10.x = x_379;
  let x_381 : vec3<f32> = vs_TEXCOORD1;
  let x_385 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_387 : vec3<f32> = (x_381 + -(x_385));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec4<f32> = u_xlat4;
  let x_392 : vec4<f32> = u_xlat4;
  u_xlat17 = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : f32 = u_xlat17;
  let x_397 : f32 = x_348.x_MainLightShadowParams.z;
  let x_400 : f32 = x_348.x_MainLightShadowParams.w;
  u_xlat17 = ((x_395 * x_397) + x_400);
  let x_402 : f32 = u_xlat17;
  u_xlat17 = clamp(x_402, 0.0f, 1.0f);
  let x_406 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_406) + 1.0f);
  let x_409 : f32 = u_xlat17;
  let x_410 : f32 = u_xlat24;
  let x_413 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_409 * x_410) + x_413);
  let x_416 : vec3<f32> = u_xlat3;
  let x_419 : vec4<f32> = x_44.x_MainLightColor;
  let x_421 : vec3<f32> = (vec3<f32>(x_416.x, x_416.x, x_416.x) * vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : f32 = u_xlat22;
  let x_426 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_424, x_424, x_424) * x_426);
  let x_429 : f32 = u_xlat10.x;
  let x_432 : f32 = x_92.unity_LightData.z;
  u_xlat22 = (x_429 * x_432);
  let x_434 : f32 = u_xlat22;
  let x_436 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec3<f32>(x_434, x_434, x_434) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_439 : vec4<f32> = u_xlat1;
  let x_442 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_445 : f32 = u_xlat22;
  u_xlat22 = clamp(x_445, 0.0f, 1.0f);
  let x_447 : f32 = u_xlat22;
  let x_449 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_447, x_447, x_447) * x_449);
  let x_451 : vec4<f32> = u_xlat0;
  let x_453 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_451.y, x_451.z, x_451.w) * x_453);
  let x_456 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_458 : f32 = x_92.unity_LightData.y;
  u_xlat22 = min(x_456, x_458);
  let x_462 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_462));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_474 : u32 = u_xlatu_loop_1;
    let x_475 : u32 = u_xlatu22;
    if ((x_474 < x_475)) {
    } else {
      break;
    }
    let x_478 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_478 >> 2u);
    let x_482 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_482 & 3u));
    let x_485 : u32 = u_xlatu5;
    let x_488 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_485)];
    let x_498 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_503 : vec4<u32> = indexable[x_498];
    u_xlat5.x = dot(x_488, bitcast<vec4<f32>>(x_503));
    let x_509 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_509);
    let x_512 : vec3<f32> = vs_TEXCOORD1;
    let x_524 : i32 = u_xlati5;
    let x_526 : vec4<f32> = x_523.x_AdditionalLightsPosition[x_524];
    let x_529 : i32 = u_xlati5;
    let x_531 : vec4<f32> = x_523.x_AdditionalLightsPosition[x_529];
    u_xlat12 = ((-(x_512) * vec3<f32>(x_526.w, x_526.w, x_526.w)) + vec3<f32>(x_531.x, x_531.y, x_531.z));
    let x_535 : vec3<f32> = u_xlat12;
    let x_536 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_535, x_536);
    let x_540 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_540, 6.10351562e-05f);
    let x_546 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_546);
    let x_549 : vec3<f32> = u_xlat12;
    let x_550 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_549 * vec3<f32>(x_550.x, x_550.x, x_550.x));
    let x_554 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_554);
    let x_558 : f32 = u_xlat6.x;
    let x_559 : i32 = u_xlati5;
    let x_561 : f32 = x_523.x_AdditionalLightsAttenuation[x_559].x;
    u_xlat6.x = (x_558 * x_561);
    let x_565 : f32 = u_xlat6.x;
    let x_568 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_565) * x_568) + 1.0f);
    let x_573 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_573, 0.0f);
    let x_577 : f32 = u_xlat6.x;
    let x_579 : f32 = u_xlat6.x;
    u_xlat6.x = (x_577 * x_579);
    let x_583 : f32 = u_xlat6.x;
    let x_585 : f32 = u_xlat13.x;
    u_xlat6.x = (x_583 * x_585);
    let x_588 : i32 = u_xlati5;
    let x_590 : vec4<f32> = x_523.x_AdditionalLightsSpotDir[x_588];
    let x_592 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_590.x, x_590.y, x_590.z), x_592);
    let x_596 : f32 = u_xlat13.x;
    let x_597 : i32 = u_xlati5;
    let x_599 : f32 = x_523.x_AdditionalLightsAttenuation[x_597].z;
    let x_601 : i32 = u_xlati5;
    let x_603 : f32 = x_523.x_AdditionalLightsAttenuation[x_601].w;
    u_xlat13.x = ((x_596 * x_599) + x_603);
    let x_607 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_607, 0.0f, 1.0f);
    let x_611 : f32 = u_xlat13.x;
    let x_613 : f32 = u_xlat13.x;
    u_xlat13.x = (x_611 * x_613);
    let x_617 : f32 = u_xlat13.x;
    let x_619 : f32 = u_xlat6.x;
    u_xlat6.x = (x_617 * x_619);
    let x_622 : vec3<f32> = u_xlat3;
    let x_624 : i32 = u_xlati5;
    let x_626 : vec4<f32> = x_523.x_AdditionalLightsColor[x_624];
    u_xlat13 = (vec3<f32>(x_622.x, x_622.x, x_622.x) * vec3<f32>(x_626.x, x_626.y, x_626.z));
    let x_629 : vec3<f32> = u_xlat6;
    let x_631 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_629.x, x_629.x, x_629.x) * x_631);
    let x_633 : vec4<f32> = u_xlat1;
    let x_635 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), x_635);
    let x_639 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_639, 0.0f, 1.0f);
    let x_642 : vec3<f32> = u_xlat5;
    let x_644 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_642.x, x_642.x, x_642.x) * x_644);
    let x_646 : vec3<f32> = u_xlat5;
    let x_647 : vec4<f32> = u_xlat0;
    let x_650 : vec4<f32> = u_xlat4;
    let x_652 : vec3<f32> = ((x_646 * vec3<f32>(x_647.y, x_647.z, x_647.w)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
    let x_653 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);

    continuing {
      let x_655 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_655 + bitcast<u32>(1i));
    }
  }
  let x_658 : vec3<f32> = u_xlat9;
  let x_659 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = u_xlat10;
  u_xlat7 = ((x_658 * vec3<f32>(x_659.y, x_659.z, x_659.w)) + x_662);
  let x_664 : vec4<f32> = u_xlat4;
  let x_666 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_664.x, x_664.y, x_664.z) + x_666);
  let x_668 : f32 = u_xlat2;
  let x_669 : f32 = u_xlat2;
  u_xlat1.x = (x_668 * -(x_669));
  let x_674 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_674);
  let x_677 : vec3<f32> = u_xlat7;
  let x_680 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_677 + -(vec3<f32>(x_680.x, x_680.y, x_680.z)));
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec3<f32> = u_xlat7;
  let x_691 : vec4<f32> = x_44.unity_FogColor;
  let x_693 : vec3<f32> = ((vec3<f32>(x_686.x, x_686.x, x_686.x) * x_688) + vec3<f32>(x_691.x, x_691.y, x_691.z));
  let x_694 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_698 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_698 == 1.0f);
  let x_700 : bool = u_xlatb7;
  if (x_700) {
    let x_705 : f32 = u_xlat0.x;
    x_701 = x_705;
  } else {
    x_701 = 1.0f;
  }
  let x_707 : f32 = x_701;
  SV_Target0.w = x_707;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

