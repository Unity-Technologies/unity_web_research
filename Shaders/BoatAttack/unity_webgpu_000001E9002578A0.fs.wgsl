struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_314 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_487 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
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
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_339 : f32;
  var u_xlatu8 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati26 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati1 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat7 : vec3<f32>;
  var x_611 : f32;
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
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat8.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat24;
  let x_105 : f32 = u_xlat16;
  u_xlat16 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat16;
  u_xlat16 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat8.x;
  let x_113 : f32 = u_xlat16;
  u_xlat8.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat8.x;
  u_xlat8.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_122, 0.0f, 1.0f);
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
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat8;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat8.x = x_175.w;
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
  let x_242 : vec2<f32> = vs_TEXCOORD7;
  let x_244 : f32 = x_43.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_242, x_244);
  u_xlat3 = x_245;
  let x_251 : vec2<f32> = vs_TEXCOORD7;
  let x_253 : f32 = x_43.x_GlobalMipBias.x;
  let x_254 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_251, x_253);
  u_xlat4 = vec3<f32>(x_254.x, x_254.y, x_254.z);
  let x_256 : vec4<f32> = u_xlat3;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_263 : vec3<f32> = u_xlat2;
  let x_264 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(x_263, vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_269 : f32 = u_xlat8.x;
  u_xlat8.x = (x_269 + 0.5f);
  let x_272 : vec3<f32> = u_xlat8;
  let x_274 : vec3<f32> = u_xlat4;
  let x_275 : vec3<f32> = (vec3<f32>(x_272.x, x_272.x, x_272.x) * x_274);
  let x_276 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : f32 = u_xlat3.w;
  u_xlat8.x = max(x_279, 0.0001f);
  let x_282 : vec4<f32> = u_xlat3;
  let x_284 : vec3<f32> = u_xlat8;
  let x_286 : vec3<f32> = (vec3<f32>(x_282.x, x_282.y, x_282.z) / vec3<f32>(x_284.x, x_284.x, x_284.x));
  let x_287 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_291 : vec4<f32> = vs_TEXCOORD6;
  let x_292 : vec2<f32> = vec2<f32>(x_291.x, x_291.y);
  let x_294 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_292.x, x_292.y, x_294);
  let x_306 : vec3<f32> = txVec0;
  let x_308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_306.xy, x_306.z);
  u_xlat8.x = x_308;
  let x_317 : f32 = x_314.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_317) + 1.0f);
  let x_321 : f32 = u_xlat8.x;
  let x_323 : f32 = x_314.x_MainLightShadowParams.x;
  let x_325 : f32 = u_xlat24;
  u_xlat8.x = ((x_321 * x_323) + x_325);
  let x_329 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_329);
  let x_333 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_333 >= 1.0f);
  let x_335 : bool = u_xlatb24;
  let x_336 : bool = u_xlatb1;
  u_xlatb24 = (x_335 | x_336);
  let x_338 : bool = u_xlatb24;
  if (x_338) {
    x_339 = 1.0f;
  } else {
    let x_344 : f32 = u_xlat8.x;
    x_339 = x_344;
  }
  let x_345 : f32 = x_339;
  u_xlat8.x = x_345;
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_352 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (x_348 + -(x_352));
  let x_355 : vec3<f32> = u_xlat4;
  let x_356 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_355, x_356);
  let x_358 : f32 = u_xlat24;
  let x_360 : f32 = x_314.x_MainLightShadowParams.z;
  let x_363 : f32 = x_314.x_MainLightShadowParams.w;
  u_xlat24 = ((x_358 * x_360) + x_363);
  let x_365 : f32 = u_xlat24;
  u_xlat24 = clamp(x_365, 0.0f, 1.0f);
  let x_368 : f32 = u_xlat8.x;
  u_xlat1.x = (-(x_368) + 1.0f);
  let x_372 : f32 = u_xlat24;
  let x_374 : f32 = u_xlat1.x;
  let x_377 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_372 * x_374) + x_377);
  let x_381 : f32 = u_xlat8.x;
  let x_383 : f32 = x_184.unity_LightData.z;
  u_xlat8.x = (x_381 * x_383);
  let x_386 : vec3<f32> = u_xlat8;
  let x_390 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_386.x, x_386.x, x_386.x) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec3<f32> = u_xlat2;
  let x_395 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(x_393, vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_400 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_400, 0.0f, 1.0f);
  let x_403 : vec3<f32> = u_xlat8;
  let x_405 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_403.x, x_403.x, x_403.x) * x_405);
  let x_407 : vec4<f32> = u_xlat1;
  let x_409 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_407.y, x_407.z, x_407.w) * x_409);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_411.x, x_411.x, x_411.x) * x_413);
  let x_416 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_419 : f32 = x_184.unity_LightData.y;
  u_xlat8.x = min(x_416, x_419);
  let x_425 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_425));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_438 : u32 = u_xlatu_loop_1;
    let x_439 : u32 = u_xlatu8;
    if ((x_438 < x_439)) {
    } else {
      break;
    }
    let x_442 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_442 >> 2u);
    let x_446 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_446 & 3u));
    let x_449 : u32 = u_xlatu1;
    let x_452 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_449)];
    let x_462 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_467 : vec4<u32> = indexable[x_462];
    u_xlat1.x = dot(x_452, bitcast<vec4<f32>>(x_467));
    let x_473 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_473);
    let x_476 : vec3<f32> = vs_TEXCOORD1;
    let x_488 : i32 = u_xlati1;
    let x_490 : vec4<f32> = x_487.x_AdditionalLightsPosition[x_488];
    let x_493 : i32 = u_xlati1;
    let x_495 : vec4<f32> = x_487.x_AdditionalLightsPosition[x_493];
    u_xlat6 = ((-(x_476) * vec3<f32>(x_490.w, x_490.w, x_490.w)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
    let x_499 : vec3<f32> = u_xlat6;
    let x_500 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_499, x_500);
    let x_502 : f32 = u_xlat26;
    u_xlat26 = max(x_502, 6.10351562e-05f);
    let x_506 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_506);
    let x_508 : f32 = u_xlat27;
    let x_510 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_508, x_508, x_508) * x_510);
    let x_512 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_512);
    let x_514 : f32 = u_xlat26;
    let x_515 : i32 = u_xlati1;
    let x_517 : f32 = x_487.x_AdditionalLightsAttenuation[x_515].x;
    u_xlat26 = (x_514 * x_517);
    let x_519 : f32 = u_xlat26;
    let x_521 : f32 = u_xlat26;
    u_xlat26 = ((-(x_519) * x_521) + 1.0f);
    let x_524 : f32 = u_xlat26;
    u_xlat26 = max(x_524, 0.0f);
    let x_526 : f32 = u_xlat26;
    let x_527 : f32 = u_xlat26;
    u_xlat26 = (x_526 * x_527);
    let x_529 : f32 = u_xlat26;
    let x_530 : f32 = u_xlat27;
    u_xlat26 = (x_529 * x_530);
    let x_532 : i32 = u_xlati1;
    let x_534 : vec4<f32> = x_487.x_AdditionalLightsSpotDir[x_532];
    let x_536 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_534.x, x_534.y, x_534.z), x_536);
    let x_538 : f32 = u_xlat27;
    let x_539 : i32 = u_xlati1;
    let x_541 : f32 = x_487.x_AdditionalLightsAttenuation[x_539].z;
    let x_543 : i32 = u_xlati1;
    let x_545 : f32 = x_487.x_AdditionalLightsAttenuation[x_543].w;
    u_xlat27 = ((x_538 * x_541) + x_545);
    let x_547 : f32 = u_xlat27;
    u_xlat27 = clamp(x_547, 0.0f, 1.0f);
    let x_549 : f32 = u_xlat27;
    let x_550 : f32 = u_xlat27;
    u_xlat27 = (x_549 * x_550);
    let x_552 : f32 = u_xlat26;
    let x_553 : f32 = u_xlat27;
    u_xlat26 = (x_552 * x_553);
    let x_556 : f32 = u_xlat26;
    let x_558 : i32 = u_xlati1;
    let x_560 : vec4<f32> = x_487.x_AdditionalLightsColor[x_558];
    u_xlat7 = (vec3<f32>(x_556, x_556, x_556) * vec3<f32>(x_560.x, x_560.y, x_560.z));
    let x_563 : vec3<f32> = u_xlat2;
    let x_564 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(x_563, x_564);
    let x_568 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_568, 0.0f, 1.0f);
    let x_571 : vec4<f32> = u_xlat1;
    let x_573 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_571.x, x_571.x, x_571.x) * x_573);
    let x_575 : vec4<f32> = u_xlat1;
    let x_577 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_575.y, x_575.z, x_575.w) * x_577);
    let x_579 : vec3<f32> = u_xlat6;
    let x_580 : vec4<f32> = u_xlat0;
    let x_583 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_579 * vec3<f32>(x_580.x, x_580.x, x_580.x)) + x_583);

    continuing {
      let x_585 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_585 + bitcast<u32>(1i));
    }
  }
  let x_587 : vec4<f32> = u_xlat3;
  let x_589 : vec4<f32> = u_xlat1;
  let x_592 : vec3<f32> = u_xlat4;
  let x_593 : vec3<f32> = ((vec3<f32>(x_587.x, x_587.y, x_587.z) * vec3<f32>(x_589.y, x_589.z, x_589.w)) + x_592);
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : vec3<f32> = u_xlat5;
  let x_599 : vec4<f32> = u_xlat1;
  let x_601 : vec3<f32> = (x_598 + vec3<f32>(x_599.x, x_599.y, x_599.z));
  let x_602 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_605 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_605 == 1.0f);
  let x_607 : bool = u_xlatb8;
  let x_608 : bool = u_xlatb16;
  u_xlatb8 = (x_607 | x_608);
  let x_610 : bool = u_xlatb8;
  if (x_610) {
    let x_615 : f32 = u_xlat0.x;
    x_611 = x_615;
  } else {
    x_611 = 1.0f;
  }
  let x_617 : f32 = x_611;
  SV_Target0.w = x_617;
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

