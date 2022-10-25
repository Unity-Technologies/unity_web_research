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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
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

@group(1) @binding(2) var<uniform> x_206 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_361 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_535 : AdditionalLights;

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
  var u_xlat25 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlatb27 : bool;
  var u_xlatb4 : bool;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu27 : u32;
  var u_xlati28 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati27 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
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
  let x_163 : f32 = hlslcc_FragCoord.w;
  let x_166 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_163 * x_166);
  let x_170 : f32 = u_xlat0.x;
  let x_174 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_170 / x_174);
  let x_178 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_178) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_185 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_183 * x_185);
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_189, 0.0f);
  let x_193 : f32 = u_xlat0.x;
  let x_196 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_193 * x_196);
  u_xlat2.w = 1.0f;
  let x_210 : vec4<f32> = x_206.unity_SHAr;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_206.unity_SHAg;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_206.unity_SHAb;
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_222, x_223);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_227.y, x_227.z, x_227.z, x_227.x) * vec4<f32>(x_229.x, x_229.y, x_229.z, x_229.z));
  let x_235 : vec4<f32> = x_206.unity_SHBr;
  let x_236 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_235, x_236);
  let x_241 : vec4<f32> = x_206.unity_SHBg;
  let x_242 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_241, x_242);
  let x_247 : vec4<f32> = x_206.unity_SHBb;
  let x_248 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_247, x_248);
  let x_252 : f32 = u_xlat2.y;
  let x_254 : f32 = u_xlat2.y;
  u_xlat24 = (x_252 * x_254);
  let x_257 : f32 = u_xlat2.x;
  let x_259 : f32 = u_xlat2.x;
  let x_261 : f32 = u_xlat24;
  u_xlat24 = ((x_257 * x_259) + -(x_261));
  let x_266 : vec4<f32> = x_206.unity_SHC;
  let x_268 : f32 = u_xlat24;
  let x_271 : vec3<f32> = u_xlat5;
  let x_272 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268, x_268, x_268)) + x_271);
  let x_273 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : vec3<f32> = u_xlat3;
  let x_276 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_275 + vec3<f32>(x_276.x, x_276.y, x_276.z));
  let x_279 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_279, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_284 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_285 : vec2<f32> = vec2<f32>(x_284.x, x_284.y);
  let x_289 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_285.x, x_285.y));
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_289.x, x_289.y, x_290.z, x_290.w);
  let x_292 : vec4<f32> = u_xlat4;
  let x_294 : vec4<f32> = hlslcc_FragCoord;
  let x_296 : vec2<f32> = (vec2<f32>(x_292.x, x_292.y) * vec2<f32>(x_294.x, x_294.y));
  let x_297 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_296.x, x_296.y, x_297.z, x_297.w);
  let x_300 : f32 = u_xlat4.y;
  let x_303 : f32 = x_43.x_ScaleBiasRt.x;
  let x_306 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat24 = ((x_300 * x_303) + x_306);
  let x_308 : f32 = u_xlat24;
  u_xlat4.z = (-(x_308) + 1.0f);
  let x_317 : vec4<f32> = u_xlat4;
  let x_320 : f32 = x_43.x_GlobalMipBias.x;
  let x_321 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_317.x, x_317.z), x_320);
  u_xlat24 = x_321.x;
  let x_324 : f32 = u_xlat24;
  u_xlat25 = (x_324 + -1.0f);
  let x_329 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_330 : f32 = u_xlat25;
  u_xlat25 = ((x_329 * x_330) + 1.0f);
  let x_333 : f32 = u_xlat24;
  u_xlat24 = min(x_333, 1.0f);
  let x_337 : vec4<f32> = vs_TEXCOORD6;
  let x_338 : vec2<f32> = vec2<f32>(x_337.x, x_337.y);
  let x_340 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_338.x, x_338.y, x_340);
  let x_353 : vec3<f32> = txVec0;
  let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
  u_xlat26 = x_355;
  let x_363 : f32 = x_361.x_MainLightShadowParams.x;
  u_xlat27 = (-(x_363) + 1.0f);
  let x_366 : f32 = u_xlat26;
  let x_368 : f32 = x_361.x_MainLightShadowParams.x;
  let x_370 : f32 = u_xlat27;
  u_xlat26 = ((x_366 * x_368) + x_370);
  let x_374 : f32 = vs_TEXCOORD6.z;
  u_xlatb27 = (0.0f >= x_374);
  let x_378 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_378 >= 1.0f);
  let x_380 : bool = u_xlatb27;
  let x_381 : bool = u_xlatb4;
  u_xlatb27 = (x_380 | x_381);
  let x_383 : bool = u_xlatb27;
  let x_384 : f32 = u_xlat26;
  u_xlat26 = select(x_384, 1.0f, x_383);
  let x_387 : vec4<f32> = vs_TEXCOORD2;
  let x_392 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_394 : vec3<f32> = (vec3<f32>(x_387.x, x_387.y, x_387.z) + -(x_392));
  let x_395 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat4;
  let x_399 : vec4<f32> = u_xlat4;
  u_xlat27 = dot(vec3<f32>(x_397.x, x_397.y, x_397.z), vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : f32 = u_xlat27;
  let x_404 : f32 = x_361.x_MainLightShadowParams.z;
  let x_407 : f32 = x_361.x_MainLightShadowParams.w;
  u_xlat27 = ((x_402 * x_404) + x_407);
  let x_409 : f32 = u_xlat27;
  u_xlat27 = clamp(x_409, 0.0f, 1.0f);
  let x_411 : f32 = u_xlat26;
  u_xlat4.x = (-(x_411) + 1.0f);
  let x_415 : f32 = u_xlat27;
  let x_417 : f32 = u_xlat4.x;
  let x_419 : f32 = u_xlat26;
  u_xlat26 = ((x_415 * x_417) + x_419);
  let x_421 : f32 = u_xlat25;
  let x_424 : vec4<f32> = x_43.x_MainLightColor;
  let x_426 : vec3<f32> = (vec3<f32>(x_421, x_421, x_421) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : f32 = u_xlat24;
  let x_431 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_429, x_429, x_429) * x_431);
  let x_433 : f32 = u_xlat26;
  let x_435 : f32 = x_206.unity_LightData.z;
  u_xlat24 = (x_433 * x_435);
  let x_437 : f32 = u_xlat24;
  let x_439 : vec4<f32> = u_xlat4;
  let x_441 : vec3<f32> = (vec3<f32>(x_437, x_437, x_437) * vec3<f32>(x_439.x, x_439.y, x_439.z));
  let x_442 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec4<f32> = u_xlat2;
  let x_448 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_444.x, x_444.y, x_444.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : f32 = u_xlat24;
  u_xlat24 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat24;
  let x_455 : vec4<f32> = u_xlat4;
  let x_457 : vec3<f32> = (vec3<f32>(x_453, x_453, x_453) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec4<f32> = u_xlat4;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_469 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_471 : f32 = x_206.unity_LightData.y;
  u_xlat24 = min(x_469, x_471);
  let x_475 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_475));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_487 : u32 = u_xlatu_loop_1;
    let x_488 : u32 = u_xlatu24;
    if ((x_487 < x_488)) {
    } else {
      break;
    }
    let x_491 : u32 = u_xlatu_loop_1;
    u_xlatu27 = (x_491 >> 2u);
    let x_495 : u32 = u_xlatu_loop_1;
    u_xlati28 = bitcast<i32>((x_495 & 3u));
    let x_498 : u32 = u_xlatu27;
    let x_501 : vec4<f32> = x_206.unity_LightIndices[bitcast<i32>(x_498)];
    let x_511 : i32 = u_xlati28;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_516 : vec4<u32> = indexable[x_511];
    u_xlat27 = dot(x_501, bitcast<vec4<f32>>(x_516));
    let x_520 : f32 = u_xlat27;
    u_xlati27 = i32(x_520);
    let x_523 : vec4<f32> = vs_TEXCOORD2;
    let x_536 : i32 = u_xlati27;
    let x_538 : vec4<f32> = x_535.x_AdditionalLightsPosition[x_536];
    let x_541 : i32 = u_xlati27;
    let x_543 : vec4<f32> = x_535.x_AdditionalLightsPosition[x_541];
    u_xlat6 = ((-(vec3<f32>(x_523.x, x_523.y, x_523.z)) * vec3<f32>(x_538.w, x_538.w, x_538.w)) + vec3<f32>(x_543.x, x_543.y, x_543.z));
    let x_547 : vec3<f32> = u_xlat6;
    let x_548 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(x_547, x_548);
    let x_550 : f32 = u_xlat28;
    u_xlat28 = max(x_550, 6.10351562e-05f);
    let x_554 : f32 = u_xlat28;
    u_xlat29 = inverseSqrt(x_554);
    let x_556 : f32 = u_xlat29;
    let x_558 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_556, x_556, x_556) * x_558);
    let x_560 : f32 = u_xlat28;
    u_xlat29 = (1.0f / x_560);
    let x_562 : f32 = u_xlat28;
    let x_563 : i32 = u_xlati27;
    let x_565 : f32 = x_535.x_AdditionalLightsAttenuation[x_563].x;
    u_xlat28 = (x_562 * x_565);
    let x_567 : f32 = u_xlat28;
    let x_569 : f32 = u_xlat28;
    u_xlat28 = ((-(x_567) * x_569) + 1.0f);
    let x_572 : f32 = u_xlat28;
    u_xlat28 = max(x_572, 0.0f);
    let x_574 : f32 = u_xlat28;
    let x_575 : f32 = u_xlat28;
    u_xlat28 = (x_574 * x_575);
    let x_577 : f32 = u_xlat28;
    let x_578 : f32 = u_xlat29;
    u_xlat28 = (x_577 * x_578);
    let x_580 : i32 = u_xlati27;
    let x_582 : vec4<f32> = x_535.x_AdditionalLightsSpotDir[x_580];
    let x_584 : vec3<f32> = u_xlat6;
    u_xlat29 = dot(vec3<f32>(x_582.x, x_582.y, x_582.z), x_584);
    let x_586 : f32 = u_xlat29;
    let x_587 : i32 = u_xlati27;
    let x_589 : f32 = x_535.x_AdditionalLightsAttenuation[x_587].z;
    let x_591 : i32 = u_xlati27;
    let x_593 : f32 = x_535.x_AdditionalLightsAttenuation[x_591].w;
    u_xlat29 = ((x_586 * x_589) + x_593);
    let x_595 : f32 = u_xlat29;
    u_xlat29 = clamp(x_595, 0.0f, 1.0f);
    let x_597 : f32 = u_xlat29;
    let x_598 : f32 = u_xlat29;
    u_xlat29 = (x_597 * x_598);
    let x_600 : f32 = u_xlat28;
    let x_601 : f32 = u_xlat29;
    u_xlat28 = (x_600 * x_601);
    let x_604 : f32 = u_xlat25;
    let x_606 : i32 = u_xlati27;
    let x_608 : vec4<f32> = x_535.x_AdditionalLightsColor[x_606];
    u_xlat7 = (vec3<f32>(x_604, x_604, x_604) * vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : f32 = u_xlat28;
    let x_613 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_611, x_611, x_611) * x_613);
    let x_615 : vec4<f32> = u_xlat2;
    let x_617 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), x_617);
    let x_619 : f32 = u_xlat27;
    u_xlat27 = clamp(x_619, 0.0f, 1.0f);
    let x_621 : f32 = u_xlat27;
    let x_623 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_621, x_621, x_621) * x_623);
    let x_625 : vec3<f32> = u_xlat6;
    let x_626 : vec4<f32> = u_xlat1;
    let x_629 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_625 * vec3<f32>(x_626.x, x_626.y, x_626.z)) + x_629);

    continuing {
      let x_631 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_631 + bitcast<u32>(1i));
    }
  }
  let x_633 : vec3<f32> = u_xlat3;
  let x_634 : vec4<f32> = u_xlat1;
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec3<f32> = ((x_633 * vec3<f32>(x_634.x, x_634.y, x_634.z)) + vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec3<f32> = u_xlat5;
  let x_643 : vec4<f32> = u_xlat1;
  let x_645 : vec3<f32> = (x_642 + vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_649 : f32 = u_xlat0.x;
  let x_651 : f32 = u_xlat0.x;
  u_xlat0.x = (x_649 * -(x_651));
  let x_656 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_656);
  let x_659 : vec4<f32> = u_xlat1;
  let x_663 : vec4<f32> = x_43.unity_FogColor;
  let x_666 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
  let x_667 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = u_xlat1;
  let x_677 : vec4<f32> = x_43.unity_FogColor;
  let x_679 : vec3<f32> = ((vec3<f32>(x_671.x, x_671.x, x_671.x) * vec3<f32>(x_673.x, x_673.y, x_673.z)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : bool = u_xlatb16;
  let x_683 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_683, x_682);
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

