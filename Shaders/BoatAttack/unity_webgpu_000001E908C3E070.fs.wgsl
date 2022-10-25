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

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_262 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_331 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_430 : AdditionalLights;

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
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var u_xlat27 : f32;
  var u_xlatu0 : u32;
  var u_xlat5 : vec3<f32>;
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
  let x_157 : vec4<f32> = u_xlat0;
  let x_159 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_157.x, x_157.x, x_157.x) * x_159);
  let x_168 : vec2<f32> = vs_TEXCOORD1;
  let x_170 : f32 = x_43.x_GlobalMipBias.x;
  let x_171 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_168, x_170);
  u_xlat3 = vec3<f32>(x_171.x, x_171.y, x_171.z);
  let x_176 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_177 : vec2<f32> = vec2<f32>(x_176.x, x_176.y);
  let x_181 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_177.x, x_177.y));
  let x_182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_181.x, x_182.y, x_182.z, x_181.y);
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec4<f32> = hlslcc_FragCoord;
  let x_189 : vec2<f32> = (vec2<f32>(x_185.x, x_185.w) * vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_194 : f32 = u_xlat4.y;
  let x_197 : f32 = x_43.x_ScaleBiasRt.x;
  let x_200 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat0.x = ((x_194 * x_197) + x_200);
  let x_204 : f32 = u_xlat0.x;
  u_xlat4.z = (-(x_204) + 1.0f);
  let x_214 : vec3<f32> = u_xlat4;
  let x_217 : f32 = x_43.x_GlobalMipBias.x;
  let x_218 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_214.x, x_214.z), x_217);
  u_xlat0.x = x_218.x;
  let x_222 : f32 = u_xlat0.x;
  u_xlat24 = (x_222 + -1.0f);
  let x_227 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_228 : f32 = u_xlat24;
  u_xlat24 = ((x_227 * x_228) + 1.0f);
  let x_232 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_232, 1.0f);
  let x_237 : vec4<f32> = vs_TEXCOORD6;
  let x_238 : vec2<f32> = vec2<f32>(x_237.x, x_237.y);
  let x_240 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_238.x, x_238.y, x_240);
  let x_253 : vec3<f32> = txVec0;
  let x_255 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_253.xy, x_253.z);
  u_xlat25 = x_255;
  let x_264 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_264) + 1.0f);
  let x_267 : f32 = u_xlat25;
  let x_269 : f32 = x_262.x_MainLightShadowParams.x;
  let x_271 : f32 = u_xlat26;
  u_xlat25 = ((x_267 * x_269) + x_271);
  let x_275 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_275);
  let x_279 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_279 >= 1.0f);
  let x_281 : bool = u_xlatb26;
  let x_282 : bool = u_xlatb27;
  u_xlatb26 = (x_281 | x_282);
  let x_284 : bool = u_xlatb26;
  let x_285 : f32 = u_xlat25;
  u_xlat25 = select(x_285, 1.0f, x_284);
  let x_288 : vec4<f32> = vs_TEXCOORD2;
  let x_293 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_288.x, x_288.y, x_288.z) + -(x_293));
  let x_296 : vec3<f32> = u_xlat4;
  let x_297 : vec3<f32> = u_xlat4;
  u_xlat26 = dot(x_296, x_297);
  let x_299 : f32 = u_xlat26;
  let x_301 : f32 = x_262.x_MainLightShadowParams.z;
  let x_304 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat26 = ((x_299 * x_301) + x_304);
  let x_306 : f32 = u_xlat26;
  u_xlat26 = clamp(x_306, 0.0f, 1.0f);
  let x_309 : f32 = u_xlat25;
  u_xlat27 = (-(x_309) + 1.0f);
  let x_312 : f32 = u_xlat26;
  let x_313 : f32 = u_xlat27;
  let x_315 : f32 = u_xlat25;
  u_xlat25 = ((x_312 * x_313) + x_315);
  let x_317 : f32 = u_xlat24;
  let x_320 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_317, x_317, x_317) * vec3<f32>(x_320.x, x_320.y, x_320.z));
  let x_323 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_323.x, x_323.x, x_323.x) * x_325);
  let x_327 : f32 = u_xlat25;
  let x_333 : f32 = x_331.unity_LightData.z;
  u_xlat0.x = (x_327 * x_333);
  let x_336 : vec4<f32> = u_xlat0;
  let x_338 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_336.x, x_336.x, x_336.x) * x_338);
  let x_340 : vec3<f32> = u_xlat2;
  let x_343 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat0.x = dot(x_340, vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_348 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_348, 0.0f, 1.0f);
  let x_351 : vec4<f32> = u_xlat0;
  let x_353 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_351.x, x_351.x, x_351.x) * x_353);
  let x_355 : vec4<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_355.x, x_355.y, x_355.z) * x_357);
  let x_361 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_363 : f32 = x_331.unity_LightData.y;
  u_xlat0.x = min(x_361, x_363);
  let x_369 : f32 = u_xlat0.x;
  u_xlatu0 = bitcast<u32>(i32(x_369));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_382 : u32 = u_xlatu_loop_1;
    let x_383 : u32 = u_xlatu0;
    if ((x_382 < x_383)) {
    } else {
      break;
    }
    let x_386 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_386 >> 2u);
    let x_390 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_390 & 3u));
    let x_393 : u32 = u_xlatu26;
    let x_396 : vec4<f32> = x_331.unity_LightIndices[bitcast<i32>(x_393)];
    let x_406 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_411 : vec4<u32> = indexable[x_406];
    u_xlat26 = dot(x_396, bitcast<vec4<f32>>(x_411));
    let x_415 : f32 = u_xlat26;
    u_xlati26 = i32(x_415);
    let x_418 : vec4<f32> = vs_TEXCOORD2;
    let x_431 : i32 = u_xlati26;
    let x_433 : vec4<f32> = x_430.x_AdditionalLightsPosition[x_431];
    let x_436 : i32 = u_xlati26;
    let x_438 : vec4<f32> = x_430.x_AdditionalLightsPosition[x_436];
    u_xlat6 = ((-(vec3<f32>(x_418.x, x_418.y, x_418.z)) * vec3<f32>(x_433.w, x_433.w, x_433.w)) + vec3<f32>(x_438.x, x_438.y, x_438.z));
    let x_441 : vec3<f32> = u_xlat6;
    let x_442 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_441, x_442);
    let x_444 : f32 = u_xlat27;
    u_xlat27 = max(x_444, 6.10351562e-05f);
    let x_448 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_448);
    let x_450 : f32 = u_xlat28;
    let x_452 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_450, x_450, x_450) * x_452);
    let x_454 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_454);
    let x_456 : f32 = u_xlat27;
    let x_457 : i32 = u_xlati26;
    let x_459 : f32 = x_430.x_AdditionalLightsAttenuation[x_457].x;
    u_xlat27 = (x_456 * x_459);
    let x_461 : f32 = u_xlat27;
    let x_463 : f32 = u_xlat27;
    u_xlat27 = ((-(x_461) * x_463) + 1.0f);
    let x_466 : f32 = u_xlat27;
    u_xlat27 = max(x_466, 0.0f);
    let x_468 : f32 = u_xlat27;
    let x_469 : f32 = u_xlat27;
    u_xlat27 = (x_468 * x_469);
    let x_471 : f32 = u_xlat27;
    let x_472 : f32 = u_xlat28;
    u_xlat27 = (x_471 * x_472);
    let x_474 : i32 = u_xlati26;
    let x_476 : vec4<f32> = x_430.x_AdditionalLightsSpotDir[x_474];
    let x_478 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_476.x, x_476.y, x_476.z), x_478);
    let x_480 : f32 = u_xlat28;
    let x_481 : i32 = u_xlati26;
    let x_483 : f32 = x_430.x_AdditionalLightsAttenuation[x_481].z;
    let x_485 : i32 = u_xlati26;
    let x_487 : f32 = x_430.x_AdditionalLightsAttenuation[x_485].w;
    u_xlat28 = ((x_480 * x_483) + x_487);
    let x_489 : f32 = u_xlat28;
    u_xlat28 = clamp(x_489, 0.0f, 1.0f);
    let x_491 : f32 = u_xlat28;
    let x_492 : f32 = u_xlat28;
    u_xlat28 = (x_491 * x_492);
    let x_494 : f32 = u_xlat27;
    let x_495 : f32 = u_xlat28;
    u_xlat27 = (x_494 * x_495);
    let x_498 : f32 = u_xlat24;
    let x_500 : i32 = u_xlati26;
    let x_502 : vec4<f32> = x_430.x_AdditionalLightsColor[x_500];
    u_xlat7 = (vec3<f32>(x_498, x_498, x_498) * vec3<f32>(x_502.x, x_502.y, x_502.z));
    let x_505 : f32 = u_xlat27;
    let x_507 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_505, x_505, x_505) * x_507);
    let x_509 : vec3<f32> = u_xlat2;
    let x_510 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_509, x_510);
    let x_512 : f32 = u_xlat26;
    u_xlat26 = clamp(x_512, 0.0f, 1.0f);
    let x_514 : f32 = u_xlat26;
    let x_516 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_514, x_514, x_514) * x_516);
    let x_518 : vec3<f32> = u_xlat6;
    let x_519 : vec4<f32> = u_xlat1;
    let x_522 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_518 * vec3<f32>(x_519.x, x_519.y, x_519.z)) + x_522);

    continuing {
      let x_524 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_524 + bitcast<u32>(1i));
    }
  }
  let x_526 : vec3<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat1;
  let x_530 : vec3<f32> = u_xlat4;
  let x_531 : vec3<f32> = ((x_526 * vec3<f32>(x_527.x, x_527.y, x_527.z)) + x_530);
  let x_532 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_536 : vec3<f32> = u_xlat5;
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = (x_536 + vec3<f32>(x_537.x, x_537.y, x_537.z));
  let x_540 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_539.x, x_539.y, x_539.z, x_540.w);
  let x_542 : bool = u_xlatb16;
  let x_543 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_543, x_542);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  main_1();
  return main_out(SV_Target0);
}

