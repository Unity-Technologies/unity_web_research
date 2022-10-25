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
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_273 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_353 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_451 : AdditionalLights;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var x_298 : f32;
  var u_xlat27 : f32;
  var u_xlatu8 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_570 : f32;
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
  let x_160 : vec3<f32> = vs_TEXCOORD2;
  let x_161 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8.x = dot(x_160, x_161);
  let x_165 : f32 = u_xlat8.x;
  u_xlat8.x = inverseSqrt(x_165);
  let x_169 : vec3<f32> = u_xlat8;
  let x_171 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_180 : vec2<f32> = vs_TEXCOORD7;
  let x_182 : f32 = x_43.x_GlobalMipBias.x;
  let x_183 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_180, x_182);
  u_xlat3 = vec3<f32>(x_183.x, x_183.y, x_183.z);
  let x_187 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_188 : vec2<f32> = vec2<f32>(x_187.x, x_187.y);
  let x_192 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_188.x, x_188.y));
  let x_193 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_192.x, x_193.y, x_192.y);
  let x_196 : vec3<f32> = u_xlat8;
  let x_198 : vec4<f32> = hlslcc_FragCoord;
  let x_200 : vec2<f32> = (vec2<f32>(x_196.x, x_196.z) * vec2<f32>(x_198.x, x_198.y));
  let x_201 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_200.x, x_200.y, x_201.z);
  let x_205 : f32 = u_xlat4.y;
  let x_208 : f32 = x_43.x_ScaleBiasRt.x;
  let x_211 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_205 * x_208) + x_211);
  let x_215 : f32 = u_xlat8.x;
  u_xlat4.z = (-(x_215) + 1.0f);
  let x_225 : vec3<f32> = u_xlat4;
  let x_228 : f32 = x_43.x_GlobalMipBias.x;
  let x_229 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_225.x, x_225.z), x_228);
  u_xlat8.x = x_229.x;
  let x_233 : f32 = u_xlat8.x;
  u_xlat24 = (x_233 + -1.0f);
  let x_238 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_239 : f32 = u_xlat24;
  u_xlat24 = ((x_238 * x_239) + 1.0f);
  let x_243 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_243, 1.0f);
  let x_248 : vec4<f32> = vs_TEXCOORD6;
  let x_249 : vec2<f32> = vec2<f32>(x_248.x, x_248.y);
  let x_251 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_249.x, x_249.y, x_251);
  let x_263 : vec3<f32> = txVec0;
  let x_265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_263.xy, x_263.z);
  u_xlat1.x = x_265;
  let x_275 : f32 = x_273.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_275) + 1.0f);
  let x_279 : f32 = u_xlat1.x;
  let x_281 : f32 = x_273.x_MainLightShadowParams.x;
  let x_283 : f32 = u_xlat26;
  u_xlat1.x = ((x_279 * x_281) + x_283);
  let x_288 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_288);
  let x_292 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_292 >= 1.0f);
  let x_294 : bool = u_xlatb26;
  let x_295 : bool = u_xlatb27;
  u_xlatb26 = (x_294 | x_295);
  let x_297 : bool = u_xlatb26;
  if (x_297) {
    x_298 = 1.0f;
  } else {
    let x_303 : f32 = u_xlat1.x;
    x_298 = x_303;
  }
  let x_304 : f32 = x_298;
  u_xlat1.x = x_304;
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_311 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_307 + -(x_311));
  let x_314 : vec3<f32> = u_xlat4;
  let x_315 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_314, x_315);
  let x_317 : f32 = u_xlat26;
  let x_319 : f32 = x_273.x_MainLightShadowParams.z;
  let x_322 : f32 = x_273.x_MainLightShadowParams.w;
  u_xlat26 = ((x_317 * x_319) + x_322);
  let x_324 : f32 = u_xlat26;
  u_xlat26 = clamp(x_324, 0.0f, 1.0f);
  let x_328 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_328) + 1.0f);
  let x_331 : f32 = u_xlat26;
  let x_332 : f32 = u_xlat27;
  let x_335 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_331 * x_332) + x_335);
  let x_338 : f32 = u_xlat24;
  let x_341 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_338, x_338, x_338) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec3<f32> = u_xlat8;
  let x_346 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_344.x, x_344.x, x_344.x) * x_346);
  let x_349 : f32 = u_xlat1.x;
  let x_355 : f32 = x_353.unity_LightData.z;
  u_xlat8.x = (x_349 * x_355);
  let x_358 : vec3<f32> = u_xlat8;
  let x_360 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_358.x, x_358.x, x_358.x) * x_360);
  let x_362 : vec3<f32> = u_xlat2;
  let x_365 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(x_362, vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_370 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_370, 0.0f, 1.0f);
  let x_373 : vec3<f32> = u_xlat8;
  let x_375 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_373.x, x_373.x, x_373.x) * x_375);
  let x_377 : vec4<f32> = u_xlat1;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_377.y, x_377.z, x_377.w) * x_379);
  let x_383 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_385 : f32 = x_353.unity_LightData.y;
  u_xlat8.x = min(x_383, x_385);
  let x_391 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_391));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_404 : u32 = u_xlatu_loop_1;
    let x_405 : u32 = u_xlatu8;
    if ((x_404 < x_405)) {
    } else {
      break;
    }
    let x_408 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_408 >> 2u);
    let x_412 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_412 & 3u));
    let x_415 : u32 = u_xlatu26;
    let x_418 : vec4<f32> = x_353.unity_LightIndices[bitcast<i32>(x_415)];
    let x_428 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_433 : vec4<u32> = indexable[x_428];
    u_xlat26 = dot(x_418, bitcast<vec4<f32>>(x_433));
    let x_437 : f32 = u_xlat26;
    u_xlati26 = i32(x_437);
    let x_440 : vec3<f32> = vs_TEXCOORD1;
    let x_452 : i32 = u_xlati26;
    let x_454 : vec4<f32> = x_451.x_AdditionalLightsPosition[x_452];
    let x_457 : i32 = u_xlati26;
    let x_459 : vec4<f32> = x_451.x_AdditionalLightsPosition[x_457];
    u_xlat6 = ((-(x_440) * vec3<f32>(x_454.w, x_454.w, x_454.w)) + vec3<f32>(x_459.x, x_459.y, x_459.z));
    let x_462 : vec3<f32> = u_xlat6;
    let x_463 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_462, x_463);
    let x_465 : f32 = u_xlat27;
    u_xlat27 = max(x_465, 6.10351562e-05f);
    let x_469 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_469);
    let x_471 : f32 = u_xlat28;
    let x_473 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_471, x_471, x_471) * x_473);
    let x_475 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_475);
    let x_477 : f32 = u_xlat27;
    let x_478 : i32 = u_xlati26;
    let x_480 : f32 = x_451.x_AdditionalLightsAttenuation[x_478].x;
    u_xlat27 = (x_477 * x_480);
    let x_482 : f32 = u_xlat27;
    let x_484 : f32 = u_xlat27;
    u_xlat27 = ((-(x_482) * x_484) + 1.0f);
    let x_487 : f32 = u_xlat27;
    u_xlat27 = max(x_487, 0.0f);
    let x_489 : f32 = u_xlat27;
    let x_490 : f32 = u_xlat27;
    u_xlat27 = (x_489 * x_490);
    let x_492 : f32 = u_xlat27;
    let x_493 : f32 = u_xlat28;
    u_xlat27 = (x_492 * x_493);
    let x_495 : i32 = u_xlati26;
    let x_497 : vec4<f32> = x_451.x_AdditionalLightsSpotDir[x_495];
    let x_499 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_497.x, x_497.y, x_497.z), x_499);
    let x_501 : f32 = u_xlat28;
    let x_502 : i32 = u_xlati26;
    let x_504 : f32 = x_451.x_AdditionalLightsAttenuation[x_502].z;
    let x_506 : i32 = u_xlati26;
    let x_508 : f32 = x_451.x_AdditionalLightsAttenuation[x_506].w;
    u_xlat28 = ((x_501 * x_504) + x_508);
    let x_510 : f32 = u_xlat28;
    u_xlat28 = clamp(x_510, 0.0f, 1.0f);
    let x_512 : f32 = u_xlat28;
    let x_513 : f32 = u_xlat28;
    u_xlat28 = (x_512 * x_513);
    let x_515 : f32 = u_xlat27;
    let x_516 : f32 = u_xlat28;
    u_xlat27 = (x_515 * x_516);
    let x_519 : f32 = u_xlat24;
    let x_521 : i32 = u_xlati26;
    let x_523 : vec4<f32> = x_451.x_AdditionalLightsColor[x_521];
    u_xlat7 = (vec3<f32>(x_519, x_519, x_519) * vec3<f32>(x_523.x, x_523.y, x_523.z));
    let x_526 : f32 = u_xlat27;
    let x_528 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_526, x_526, x_526) * x_528);
    let x_530 : vec3<f32> = u_xlat2;
    let x_531 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_530, x_531);
    let x_533 : f32 = u_xlat26;
    u_xlat26 = clamp(x_533, 0.0f, 1.0f);
    let x_535 : f32 = u_xlat26;
    let x_537 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_535, x_535, x_535) * x_537);
    let x_539 : vec3<f32> = u_xlat6;
    let x_540 : vec4<f32> = u_xlat1;
    let x_543 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_539 * vec3<f32>(x_540.y, x_540.z, x_540.w)) + x_543);

    continuing {
      let x_545 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_545 + bitcast<u32>(1i));
    }
  }
  let x_547 : vec3<f32> = u_xlat3;
  let x_548 : vec4<f32> = u_xlat1;
  let x_551 : vec3<f32> = u_xlat4;
  let x_552 : vec3<f32> = ((x_547 * vec3<f32>(x_548.y, x_548.z, x_548.w)) + x_551);
  let x_553 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_557 : vec3<f32> = u_xlat5;
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec3<f32> = (x_557 + vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_561 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
  let x_564 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_564 == 1.0f);
  let x_566 : bool = u_xlatb8;
  let x_567 : bool = u_xlatb16;
  u_xlatb8 = (x_566 | x_567);
  let x_569 : bool = u_xlatb8;
  if (x_569) {
    let x_574 : f32 = u_xlat0.x;
    x_570 = x_574;
  } else {
    x_570 = 1.0f;
  }
  let x_576 : f32 = x_570;
  SV_Target0.w = x_576;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

