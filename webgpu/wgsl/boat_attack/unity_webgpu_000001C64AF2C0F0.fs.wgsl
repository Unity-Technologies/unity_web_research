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

@group(0) @binding(3) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_182 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_345 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_534 : AdditionalLights;

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
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlatb27 : bool;
  var x_370 : f32;
  var u_xlat27 : f32;
  var u_xlatu8 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_655 : f32;
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
  let x_172 : vec3<f32> = (vec3<f32>(x_169.x, x_169.x, x_169.x) * x_171);
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  u_xlat2.w = 1.0f;
  let x_185 : vec4<f32> = x_182.unity_SHAr;
  let x_186 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_185, x_186);
  let x_191 : vec4<f32> = x_182.unity_SHAg;
  let x_192 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_191, x_192);
  let x_198 : vec4<f32> = x_182.unity_SHAb;
  let x_199 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_198, x_199);
  let x_203 : vec4<f32> = u_xlat2;
  let x_205 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_203.y, x_203.z, x_203.z, x_203.x) * vec4<f32>(x_205.x, x_205.y, x_205.z, x_205.z));
  let x_211 : vec4<f32> = x_182.unity_SHBr;
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_211, x_212);
  let x_217 : vec4<f32> = x_182.unity_SHBg;
  let x_218 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_217, x_218);
  let x_223 : vec4<f32> = x_182.unity_SHBb;
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_223, x_224);
  let x_228 : f32 = u_xlat2.y;
  let x_230 : f32 = u_xlat2.y;
  u_xlat8.x = (x_228 * x_230);
  let x_234 : f32 = u_xlat2.x;
  let x_236 : f32 = u_xlat2.x;
  let x_239 : f32 = u_xlat8.x;
  u_xlat8.x = ((x_234 * x_236) + -(x_239));
  let x_245 : vec4<f32> = x_182.unity_SHC;
  let x_247 : vec3<f32> = u_xlat8;
  let x_250 : vec3<f32> = u_xlat5;
  let x_251 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.x, x_247.x, x_247.x)) + x_250);
  let x_252 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
  let x_254 : vec3<f32> = u_xlat3;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_254 + vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_258, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_263 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_264 : vec2<f32> = vec2<f32>(x_263.x, x_263.y);
  let x_268 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_264.x, x_264.y));
  let x_269 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_268.x, x_269.y, x_268.y);
  let x_271 : vec3<f32> = u_xlat8;
  let x_273 : vec4<f32> = hlslcc_FragCoord;
  let x_275 : vec2<f32> = (vec2<f32>(x_271.x, x_271.z) * vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_279 : f32 = u_xlat4.y;
  let x_282 : f32 = x_43.x_ScaleBiasRt.x;
  let x_285 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat8.x = ((x_279 * x_282) + x_285);
  let x_289 : f32 = u_xlat8.x;
  u_xlat4.z = (-(x_289) + 1.0f);
  let x_298 : vec4<f32> = u_xlat4;
  let x_301 : f32 = x_43.x_GlobalMipBias.x;
  let x_302 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_298.x, x_298.z), x_301);
  u_xlat8.x = x_302.x;
  let x_306 : f32 = u_xlat8.x;
  u_xlat24 = (x_306 + -1.0f);
  let x_311 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_312 : f32 = u_xlat24;
  u_xlat24 = ((x_311 * x_312) + 1.0f);
  let x_316 : f32 = u_xlat8.x;
  u_xlat8.x = min(x_316, 1.0f);
  let x_321 : vec4<f32> = vs_TEXCOORD6;
  let x_322 : vec2<f32> = vec2<f32>(x_321.x, x_321.y);
  let x_324 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_322.x, x_322.y, x_324);
  let x_336 : vec3<f32> = txVec0;
  let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_336.xy, x_336.z);
  u_xlat1.x = x_338;
  let x_347 : f32 = x_345.x_MainLightShadowParams.x;
  u_xlat26 = (-(x_347) + 1.0f);
  let x_351 : f32 = u_xlat1.x;
  let x_353 : f32 = x_345.x_MainLightShadowParams.x;
  let x_355 : f32 = u_xlat26;
  u_xlat1.x = ((x_351 * x_353) + x_355);
  let x_360 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (0.0f >= x_360);
  let x_364 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (x_364 >= 1.0f);
  let x_366 : bool = u_xlatb26;
  let x_367 : bool = u_xlatb27;
  u_xlatb26 = (x_366 | x_367);
  let x_369 : bool = u_xlatb26;
  if (x_369) {
    x_370 = 1.0f;
  } else {
    let x_375 : f32 = u_xlat1.x;
    x_370 = x_375;
  }
  let x_376 : f32 = x_370;
  u_xlat1.x = x_376;
  let x_379 : vec3<f32> = vs_TEXCOORD1;
  let x_383 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_385 : vec3<f32> = (x_379 + -(x_383));
  let x_386 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : f32 = u_xlat26;
  let x_395 : f32 = x_345.x_MainLightShadowParams.z;
  let x_398 : f32 = x_345.x_MainLightShadowParams.w;
  u_xlat26 = ((x_393 * x_395) + x_398);
  let x_400 : f32 = u_xlat26;
  u_xlat26 = clamp(x_400, 0.0f, 1.0f);
  let x_404 : f32 = u_xlat1.x;
  u_xlat27 = (-(x_404) + 1.0f);
  let x_407 : f32 = u_xlat26;
  let x_408 : f32 = u_xlat27;
  let x_411 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_407 * x_408) + x_411);
  let x_414 : f32 = u_xlat24;
  let x_417 : vec4<f32> = x_43.x_MainLightColor;
  let x_419 : vec3<f32> = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : vec3<f32> = u_xlat8;
  let x_424 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_422.x, x_422.x, x_422.x) * x_424);
  let x_427 : f32 = u_xlat1.x;
  let x_429 : f32 = x_182.unity_LightData.z;
  u_xlat8.x = (x_427 * x_429);
  let x_432 : vec3<f32> = u_xlat8;
  let x_434 : vec4<f32> = u_xlat4;
  let x_436 : vec3<f32> = (vec3<f32>(x_432.x, x_432.x, x_432.x) * vec3<f32>(x_434.x, x_434.y, x_434.z));
  let x_437 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
  let x_439 : vec4<f32> = u_xlat2;
  let x_443 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat8.x = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), vec3<f32>(x_443.x, x_443.y, x_443.z));
  let x_448 : f32 = u_xlat8.x;
  u_xlat8.x = clamp(x_448, 0.0f, 1.0f);
  let x_451 : vec3<f32> = u_xlat8;
  let x_453 : vec4<f32> = u_xlat4;
  let x_455 : vec3<f32> = (vec3<f32>(x_451.x, x_451.x, x_451.x) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = u_xlat4;
  let x_462 : vec3<f32> = (vec3<f32>(x_458.y, x_458.z, x_458.w) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_467 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_469 : f32 = x_182.unity_LightData.y;
  u_xlat8.x = min(x_467, x_469);
  let x_475 : f32 = u_xlat8.x;
  u_xlatu8 = bitcast<u32>(i32(x_475));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_487 : u32 = u_xlatu_loop_1;
    let x_488 : u32 = u_xlatu8;
    if ((x_487 < x_488)) {
    } else {
      break;
    }
    let x_491 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_491 >> 2u);
    let x_495 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_495 & 3u));
    let x_498 : u32 = u_xlatu26;
    let x_501 : vec4<f32> = x_182.unity_LightIndices[bitcast<i32>(x_498)];
    let x_511 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_516 : vec4<u32> = indexable[x_511];
    u_xlat26 = dot(x_501, bitcast<vec4<f32>>(x_516));
    let x_520 : f32 = u_xlat26;
    u_xlati26 = i32(x_520);
    let x_523 : vec3<f32> = vs_TEXCOORD1;
    let x_535 : i32 = u_xlati26;
    let x_537 : vec4<f32> = x_534.x_AdditionalLightsPosition[x_535];
    let x_540 : i32 = u_xlati26;
    let x_542 : vec4<f32> = x_534.x_AdditionalLightsPosition[x_540];
    u_xlat6 = ((-(x_523) * vec3<f32>(x_537.w, x_537.w, x_537.w)) + vec3<f32>(x_542.x, x_542.y, x_542.z));
    let x_545 : vec3<f32> = u_xlat6;
    let x_546 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_545, x_546);
    let x_548 : f32 = u_xlat27;
    u_xlat27 = max(x_548, 6.10351562e-05f);
    let x_552 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_552);
    let x_554 : f32 = u_xlat28;
    let x_556 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_554, x_554, x_554) * x_556);
    let x_558 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_558);
    let x_560 : f32 = u_xlat27;
    let x_561 : i32 = u_xlati26;
    let x_563 : f32 = x_534.x_AdditionalLightsAttenuation[x_561].x;
    u_xlat27 = (x_560 * x_563);
    let x_565 : f32 = u_xlat27;
    let x_567 : f32 = u_xlat27;
    u_xlat27 = ((-(x_565) * x_567) + 1.0f);
    let x_570 : f32 = u_xlat27;
    u_xlat27 = max(x_570, 0.0f);
    let x_572 : f32 = u_xlat27;
    let x_573 : f32 = u_xlat27;
    u_xlat27 = (x_572 * x_573);
    let x_575 : f32 = u_xlat27;
    let x_576 : f32 = u_xlat28;
    u_xlat27 = (x_575 * x_576);
    let x_578 : i32 = u_xlati26;
    let x_580 : vec4<f32> = x_534.x_AdditionalLightsSpotDir[x_578];
    let x_582 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_580.x, x_580.y, x_580.z), x_582);
    let x_584 : f32 = u_xlat28;
    let x_585 : i32 = u_xlati26;
    let x_587 : f32 = x_534.x_AdditionalLightsAttenuation[x_585].z;
    let x_589 : i32 = u_xlati26;
    let x_591 : f32 = x_534.x_AdditionalLightsAttenuation[x_589].w;
    u_xlat28 = ((x_584 * x_587) + x_591);
    let x_593 : f32 = u_xlat28;
    u_xlat28 = clamp(x_593, 0.0f, 1.0f);
    let x_595 : f32 = u_xlat28;
    let x_596 : f32 = u_xlat28;
    u_xlat28 = (x_595 * x_596);
    let x_598 : f32 = u_xlat27;
    let x_599 : f32 = u_xlat28;
    u_xlat27 = (x_598 * x_599);
    let x_602 : f32 = u_xlat24;
    let x_604 : i32 = u_xlati26;
    let x_606 : vec4<f32> = x_534.x_AdditionalLightsColor[x_604];
    u_xlat7 = (vec3<f32>(x_602, x_602, x_602) * vec3<f32>(x_606.x, x_606.y, x_606.z));
    let x_609 : f32 = u_xlat27;
    let x_611 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_609, x_609, x_609) * x_611);
    let x_613 : vec4<f32> = u_xlat2;
    let x_615 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_613.x, x_613.y, x_613.z), x_615);
    let x_617 : f32 = u_xlat26;
    u_xlat26 = clamp(x_617, 0.0f, 1.0f);
    let x_619 : f32 = u_xlat26;
    let x_621 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_619, x_619, x_619) * x_621);
    let x_623 : vec3<f32> = u_xlat6;
    let x_624 : vec4<f32> = u_xlat1;
    let x_627 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_623 * vec3<f32>(x_624.y, x_624.z, x_624.w)) + x_627);

    continuing {
      let x_629 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_629 + bitcast<u32>(1i));
    }
  }
  let x_631 : vec3<f32> = u_xlat3;
  let x_632 : vec4<f32> = u_xlat1;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec3<f32> = ((x_631 * vec3<f32>(x_632.y, x_632.z, x_632.w)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_642 : vec3<f32> = u_xlat5;
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = (x_642 + vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_649 : f32 = x_56.x_Surface;
  u_xlatb8 = (x_649 == 1.0f);
  let x_651 : bool = u_xlatb8;
  let x_652 : bool = u_xlatb16;
  u_xlatb8 = (x_651 | x_652);
  let x_654 : bool = u_xlatb8;
  if (x_654) {
    let x_659 : f32 = u_xlat0.x;
    x_655 = x_659;
  } else {
    x_655 = 1.0f;
  }
  let x_661 : f32 = x_655;
  SV_Target0.w = x_661;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

