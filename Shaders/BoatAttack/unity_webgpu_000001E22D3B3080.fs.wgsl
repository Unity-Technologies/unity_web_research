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
  x_MainTex_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Shininess : f32,
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

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_170 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_334 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_513 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_70 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_119 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlatu0 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
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
  let x_50 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = vs_TEXCOORD7;
  u_xlat1 = (x_52 * x_54);
  let x_61 : f32 = u_xlat1.w;
  let x_67 : f32 = x_64.x_Cutoff;
  u_xlatb0 = (x_61 >= x_67);
  let x_69 : bool = u_xlatb0;
  if (x_69) {
    let x_74 : f32 = u_xlat1.w;
    x_70 = x_74;
  } else {
    x_70 = 0.0f;
  }
  let x_77 : f32 = x_70;
  u_xlat0.x = x_77;
  let x_81 : f32 = u_xlat0.w;
  let x_83 : f32 = vs_TEXCOORD7.w;
  let x_86 : f32 = x_64.x_Cutoff;
  u_xlat8 = ((x_81 * x_83) + -(x_86));
  let x_91 : f32 = u_xlat1.w;
  u_xlat16 = dpdxCoarse(x_91);
  let x_95 : f32 = u_xlat1.w;
  u_xlat24 = dpdyCoarse(x_95);
  let x_97 : f32 = u_xlat24;
  let x_99 : f32 = u_xlat16;
  u_xlat16 = (abs(x_97) + abs(x_99));
  let x_102 : f32 = u_xlat16;
  u_xlat16 = max(x_102, 0.0001f);
  let x_105 : f32 = u_xlat8;
  let x_106 : f32 = u_xlat16;
  u_xlat8 = (x_105 / x_106);
  let x_108 : f32 = u_xlat8;
  u_xlat8 = (x_108 + 0.5f);
  let x_111 : f32 = u_xlat8;
  u_xlat8 = clamp(x_111, 0.0f, 1.0f);
  let x_116 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_116 == 0.0f));
  let x_118 : bool = u_xlatb16;
  if (x_118) {
    let x_122 : f32 = u_xlat8;
    x_119 = x_122;
  } else {
    let x_125 : f32 = u_xlat0.x;
    x_119 = x_125;
  }
  let x_126 : f32 = x_119;
  u_xlat0.x = x_126;
  let x_129 : f32 = u_xlat0.x;
  u_xlat0.x = (x_129 + -0.0001f);
  let x_134 : f32 = u_xlat0.x;
  u_xlatb0 = (x_134 < 0.0f);
  let x_136 : bool = u_xlatb0;
  if (((select(0i, 1i, x_136) * -1i) != 0i)) {
    discard;
  }
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  let x_148 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_147, x_148);
  let x_152 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_152);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  let x_159 : vec3<f32> = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  u_xlat2.w = 1.0f;
  let x_174 : vec4<f32> = x_170.unity_SHAr;
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_174, x_175);
  let x_180 : vec4<f32> = x_170.unity_SHAg;
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_180, x_181);
  let x_187 : vec4<f32> = x_170.unity_SHAb;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_187, x_188);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_192.y, x_192.z, x_192.z, x_192.x) * vec4<f32>(x_194.x, x_194.y, x_194.z, x_194.z));
  let x_200 : vec4<f32> = x_170.unity_SHBr;
  let x_201 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_200, x_201);
  let x_206 : vec4<f32> = x_170.unity_SHBg;
  let x_207 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_206, x_207);
  let x_212 : vec4<f32> = x_170.unity_SHBb;
  let x_213 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_212, x_213);
  let x_217 : f32 = u_xlat2.y;
  let x_219 : f32 = u_xlat2.y;
  u_xlat0.x = (x_217 * x_219);
  let x_223 : f32 = u_xlat2.x;
  let x_225 : f32 = u_xlat2.x;
  let x_228 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_223 * x_225) + -(x_228));
  let x_234 : vec4<f32> = x_170.unity_SHC;
  let x_236 : vec4<f32> = u_xlat0;
  let x_239 : vec3<f32> = u_xlat5;
  let x_240 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + x_239);
  let x_241 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec3<f32> = u_xlat3;
  let x_244 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_243 + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_247 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_247, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_252 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_253 : vec2<f32> = vec2<f32>(x_252.x, x_252.y);
  let x_257 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_253.x, x_253.y));
  let x_258 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_257.x, x_258.y, x_258.z, x_257.y);
  let x_260 : vec4<f32> = u_xlat0;
  let x_262 : vec4<f32> = hlslcc_FragCoord;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.w) * vec2<f32>(x_262.x, x_262.y));
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_268 : f32 = u_xlat4.y;
  let x_271 : f32 = x_43.x_ScaleBiasRt.x;
  let x_274 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_268 * x_271) + x_274);
  let x_278 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_278) + 1.0f);
  let x_287 : vec4<f32> = u_xlat4;
  let x_290 : f32 = x_43.x_GlobalMipBias.x;
  let x_291 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_287.x, x_287.z), x_290);
  u_xlat0.x = x_291.x;
  let x_295 : f32 = u_xlat0.x;
  u_xlat24 = (x_295 + -1.0f);
  let x_300 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_301 : f32 = u_xlat24;
  u_xlat24 = ((x_300 * x_301) + 1.0f);
  let x_305 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_305, 1.0f);
  let x_310 : vec4<f32> = vs_TEXCOORD6;
  let x_311 : vec2<f32> = vec2<f32>(x_310.x, x_310.y);
  let x_313 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_311.x, x_311.y, x_313);
  let x_326 : vec3<f32> = txVec0;
  let x_328 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_326.xy, x_326.z);
  u_xlat25 = x_328;
  let x_336 : f32 = x_334.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_336) + 1.0f);
  let x_339 : f32 = u_xlat25;
  let x_341 : f32 = x_334.x_MainLightShadowParams.x;
  let x_343 : f32 = u_xlat26;
  u_xlat25 = ((x_339 * x_341) + x_343);
  let x_347 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_347);
  let x_351 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_351 >= 1.0f);
  let x_353 : bool = u_xlatb26;
  let x_354 : bool = u_xlatb27;
  u_xlatb26 = (x_353 | x_354);
  let x_356 : bool = u_xlatb26;
  let x_357 : f32 = u_xlat25;
  u_xlat25 = select(x_357, 1.0f, x_356);
  let x_360 : vec4<f32> = vs_TEXCOORD2;
  let x_365 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_367 : vec3<f32> = (vec3<f32>(x_360.x, x_360.y, x_360.z) + -(x_365));
  let x_368 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  let x_370 : vec4<f32> = u_xlat4;
  let x_372 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec3<f32>(x_370.x, x_370.y, x_370.z), vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : f32 = u_xlat26;
  let x_377 : f32 = x_334.x_MainLightShadowParams.z;
  let x_380 : f32 = x_334.x_MainLightShadowParams.w;
  u_xlat26 = ((x_375 * x_377) + x_380);
  let x_382 : f32 = u_xlat26;
  u_xlat26 = clamp(x_382, 0.0f, 1.0f);
  let x_385 : f32 = u_xlat25;
  u_xlat27 = (-(x_385) + 1.0f);
  let x_388 : f32 = u_xlat26;
  let x_389 : f32 = u_xlat27;
  let x_391 : f32 = u_xlat25;
  u_xlat25 = ((x_388 * x_389) + x_391);
  let x_393 : f32 = u_xlat24;
  let x_396 : vec4<f32> = x_43.x_MainLightColor;
  let x_398 : vec3<f32> = (vec3<f32>(x_393, x_393, x_393) * vec3<f32>(x_396.x, x_396.y, x_396.z));
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat0;
  let x_403 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_401.x, x_401.x, x_401.x) * x_403);
  let x_405 : f32 = u_xlat25;
  let x_407 : f32 = x_170.unity_LightData.z;
  u_xlat0.x = (x_405 * x_407);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : vec4<f32> = u_xlat4;
  let x_414 : vec3<f32> = (vec3<f32>(x_410.x, x_410.x, x_410.x) * vec3<f32>(x_412.x, x_412.y, x_412.z));
  let x_415 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : vec4<f32> = u_xlat2;
  let x_421 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_426 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_426, 0.0f, 1.0f);
  let x_429 : vec4<f32> = u_xlat0;
  let x_431 : vec4<f32> = u_xlat4;
  let x_433 : vec3<f32> = (vec3<f32>(x_429.x, x_429.x, x_429.x) * vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_433.x, x_433.y, x_433.z, x_434.w);
  let x_436 : vec4<f32> = u_xlat1;
  let x_438 : vec4<f32> = u_xlat4;
  let x_440 : vec3<f32> = (vec3<f32>(x_436.x, x_436.y, x_436.z) * vec3<f32>(x_438.x, x_438.y, x_438.z));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_445 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_447 : f32 = x_170.unity_LightData.y;
  u_xlat0.x = min(x_445, x_447);
  let x_453 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_453));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_465 : u32 = u_xlatu_loop_1;
    let x_466 : u32 = u_xlatu0;
    if ((x_465 < x_466)) {
    } else {
      break;
    }
    let x_469 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_469 >> 2u);
    let x_473 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_473 & 3u));
    let x_476 : u32 = u_xlatu26;
    let x_479 : vec4<f32> = x_170.unity_LightIndices[bitcast<i32>(x_476)];
    let x_489 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_494 : vec4<u32> = indexable[x_489];
    u_xlat26 = dot(x_479, bitcast<vec4<f32>>(x_494));
    let x_498 : f32 = u_xlat26;
    u_xlati26 = i32(x_498);
    let x_501 : vec4<f32> = vs_TEXCOORD2;
    let x_514 : i32 = u_xlati26;
    let x_516 : vec4<f32> = x_513.x_AdditionalLightsPosition[x_514];
    let x_519 : i32 = u_xlati26;
    let x_521 : vec4<f32> = x_513.x_AdditionalLightsPosition[x_519];
    u_xlat6 = ((-(vec3<f32>(x_501.x, x_501.y, x_501.z)) * vec3<f32>(x_516.w, x_516.w, x_516.w)) + vec3<f32>(x_521.x, x_521.y, x_521.z));
    let x_524 : vec3<f32> = u_xlat6;
    let x_525 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_524, x_525);
    let x_527 : f32 = u_xlat27;
    u_xlat27 = max(x_527, 6.10351562e-05f);
    let x_531 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_531);
    let x_533 : f32 = u_xlat28;
    let x_535 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_533, x_533, x_533) * x_535);
    let x_537 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_537);
    let x_539 : f32 = u_xlat27;
    let x_540 : i32 = u_xlati26;
    let x_542 : f32 = x_513.x_AdditionalLightsAttenuation[x_540].x;
    u_xlat27 = (x_539 * x_542);
    let x_544 : f32 = u_xlat27;
    let x_546 : f32 = u_xlat27;
    u_xlat27 = ((-(x_544) * x_546) + 1.0f);
    let x_549 : f32 = u_xlat27;
    u_xlat27 = max(x_549, 0.0f);
    let x_551 : f32 = u_xlat27;
    let x_552 : f32 = u_xlat27;
    u_xlat27 = (x_551 * x_552);
    let x_554 : f32 = u_xlat27;
    let x_555 : f32 = u_xlat28;
    u_xlat27 = (x_554 * x_555);
    let x_557 : i32 = u_xlati26;
    let x_559 : vec4<f32> = x_513.x_AdditionalLightsSpotDir[x_557];
    let x_561 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_559.x, x_559.y, x_559.z), x_561);
    let x_563 : f32 = u_xlat28;
    let x_564 : i32 = u_xlati26;
    let x_566 : f32 = x_513.x_AdditionalLightsAttenuation[x_564].z;
    let x_568 : i32 = u_xlati26;
    let x_570 : f32 = x_513.x_AdditionalLightsAttenuation[x_568].w;
    u_xlat28 = ((x_563 * x_566) + x_570);
    let x_572 : f32 = u_xlat28;
    u_xlat28 = clamp(x_572, 0.0f, 1.0f);
    let x_574 : f32 = u_xlat28;
    let x_575 : f32 = u_xlat28;
    u_xlat28 = (x_574 * x_575);
    let x_577 : f32 = u_xlat27;
    let x_578 : f32 = u_xlat28;
    u_xlat27 = (x_577 * x_578);
    let x_581 : f32 = u_xlat24;
    let x_583 : i32 = u_xlati26;
    let x_585 : vec4<f32> = x_513.x_AdditionalLightsColor[x_583];
    u_xlat7 = (vec3<f32>(x_581, x_581, x_581) * vec3<f32>(x_585.x, x_585.y, x_585.z));
    let x_588 : f32 = u_xlat27;
    let x_590 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_588, x_588, x_588) * x_590);
    let x_592 : vec4<f32> = u_xlat2;
    let x_594 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_592.x, x_592.y, x_592.z), x_594);
    let x_596 : f32 = u_xlat26;
    u_xlat26 = clamp(x_596, 0.0f, 1.0f);
    let x_598 : f32 = u_xlat26;
    let x_600 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_598, x_598, x_598) * x_600);
    let x_602 : vec3<f32> = u_xlat6;
    let x_603 : vec4<f32> = u_xlat1;
    let x_606 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_602 * vec3<f32>(x_603.x, x_603.y, x_603.z)) + x_606);

    continuing {
      let x_608 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_608 + bitcast<u32>(1i));
    }
  }
  let x_610 : vec3<f32> = u_xlat3;
  let x_611 : vec4<f32> = u_xlat1;
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec3<f32> = ((x_610 * vec3<f32>(x_611.x, x_611.y, x_611.z)) + vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_621 : vec3<f32> = u_xlat5;
  let x_622 : vec4<f32> = u_xlat1;
  let x_624 : vec3<f32> = (x_621 + vec3<f32>(x_622.x, x_622.y, x_622.z));
  let x_625 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_624.x, x_624.y, x_624.z, x_625.w);
  let x_627 : bool = u_xlatb16;
  let x_628 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_628, x_627);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

