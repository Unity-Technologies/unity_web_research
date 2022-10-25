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

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_64 : UnityPerMaterial;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_235 : MainLightShadows;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_296 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_392 : AdditionalLights;

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
  var txVec0 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlatb25 : bool;
  var u_xlatb26 : bool;
  var u_xlat4 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlat5 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
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
  let x_146 : vec3<f32> = vs_TEXCOORD3;
  let x_147 : vec3<f32> = vs_TEXCOORD3;
  u_xlat0.x = dot(x_146, x_147);
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = inverseSqrt(x_151);
  let x_156 : vec4<f32> = u_xlat0;
  let x_158 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_161 : f32 = hlslcc_FragCoord.w;
  let x_164 : f32 = hlslcc_FragCoord.z;
  u_xlat0.x = (x_161 * x_164);
  let x_168 : f32 = u_xlat0.x;
  let x_172 : f32 = x_43.x_ProjectionParams.y;
  u_xlat0.x = (x_168 / x_172);
  let x_176 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_176) + 1.0f);
  let x_181 : f32 = u_xlat0.x;
  let x_183 : f32 = x_43.x_ProjectionParams.z;
  u_xlat0.x = (x_181 * x_183);
  let x_187 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_187, 0.0f);
  let x_191 : f32 = u_xlat0.x;
  let x_194 : f32 = x_43.unity_FogParams.x;
  u_xlat0.x = (x_191 * x_194);
  let x_204 : vec2<f32> = vs_TEXCOORD1;
  let x_206 : f32 = x_43.x_GlobalMipBias.x;
  let x_207 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_204, x_206);
  u_xlat3 = vec3<f32>(x_207.x, x_207.y, x_207.z);
  let x_211 : vec4<f32> = vs_TEXCOORD6;
  let x_212 : vec2<f32> = vec2<f32>(x_211.x, x_211.y);
  let x_214 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_212.x, x_212.y, x_214);
  let x_226 : vec3<f32> = txVec0;
  let x_228 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_226.xy, x_226.z);
  u_xlat24 = x_228;
  let x_238 : f32 = x_235.x_MainLightShadowParams.x;
  u_xlat25 = (-(x_238) + 1.0f);
  let x_241 : f32 = u_xlat24;
  let x_243 : f32 = x_235.x_MainLightShadowParams.x;
  let x_245 : f32 = u_xlat25;
  u_xlat24 = ((x_241 * x_243) + x_245);
  let x_249 : f32 = vs_TEXCOORD6.z;
  u_xlatb25 = (0.0f >= x_249);
  let x_253 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_253 >= 1.0f);
  let x_255 : bool = u_xlatb25;
  let x_256 : bool = u_xlatb26;
  u_xlatb25 = (x_255 | x_256);
  let x_258 : bool = u_xlatb25;
  let x_259 : f32 = u_xlat24;
  u_xlat24 = select(x_259, 1.0f, x_258);
  let x_263 : vec4<f32> = vs_TEXCOORD2;
  let x_268 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat4 = (vec3<f32>(x_263.x, x_263.y, x_263.z) + -(x_268));
  let x_271 : vec3<f32> = u_xlat4;
  let x_272 : vec3<f32> = u_xlat4;
  u_xlat25 = dot(x_271, x_272);
  let x_274 : f32 = u_xlat25;
  let x_276 : f32 = x_235.x_MainLightShadowParams.z;
  let x_279 : f32 = x_235.x_MainLightShadowParams.w;
  u_xlat25 = ((x_274 * x_276) + x_279);
  let x_281 : f32 = u_xlat25;
  u_xlat25 = clamp(x_281, 0.0f, 1.0f);
  let x_284 : f32 = u_xlat24;
  u_xlat26 = (-(x_284) + 1.0f);
  let x_287 : f32 = u_xlat25;
  let x_288 : f32 = u_xlat26;
  let x_290 : f32 = u_xlat24;
  u_xlat24 = ((x_287 * x_288) + x_290);
  let x_292 : f32 = u_xlat24;
  let x_298 : f32 = x_296.unity_LightData.z;
  u_xlat24 = (x_292 * x_298);
  let x_300 : f32 = u_xlat24;
  let x_305 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_300, x_300, x_300) * vec3<f32>(x_305.x, x_305.y, x_305.z));
  let x_308 : vec3<f32> = u_xlat2;
  let x_311 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat24 = dot(x_308, vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : f32 = u_xlat24;
  u_xlat24 = clamp(x_314, 0.0f, 1.0f);
  let x_316 : f32 = u_xlat24;
  let x_318 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_316, x_316, x_316) * x_318);
  let x_320 : vec4<f32> = u_xlat1;
  let x_322 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_320.x, x_320.y, x_320.z) * x_322);
  let x_325 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_327 : f32 = x_296.unity_LightData.y;
  u_xlat24 = min(x_325, x_327);
  let x_331 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_331));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_344 : u32 = u_xlatu_loop_1;
    let x_345 : u32 = u_xlatu24;
    if ((x_344 < x_345)) {
    } else {
      break;
    }
    let x_348 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_348 >> 2u);
    let x_352 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_352 & 3u));
    let x_355 : u32 = u_xlatu26;
    let x_358 : vec4<f32> = x_296.unity_LightIndices[bitcast<i32>(x_355)];
    let x_368 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_373 : vec4<u32> = indexable[x_368];
    u_xlat26 = dot(x_358, bitcast<vec4<f32>>(x_373));
    let x_377 : f32 = u_xlat26;
    u_xlati26 = i32(x_377);
    let x_380 : vec4<f32> = vs_TEXCOORD2;
    let x_393 : i32 = u_xlati26;
    let x_395 : vec4<f32> = x_392.x_AdditionalLightsPosition[x_393];
    let x_398 : i32 = u_xlati26;
    let x_400 : vec4<f32> = x_392.x_AdditionalLightsPosition[x_398];
    u_xlat6 = ((-(vec3<f32>(x_380.x, x_380.y, x_380.z)) * vec3<f32>(x_395.w, x_395.w, x_395.w)) + vec3<f32>(x_400.x, x_400.y, x_400.z));
    let x_404 : vec3<f32> = u_xlat6;
    let x_405 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_404, x_405);
    let x_407 : f32 = u_xlat27;
    u_xlat27 = max(x_407, 6.10351562e-05f);
    let x_411 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_411);
    let x_413 : f32 = u_xlat28;
    let x_415 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_413, x_413, x_413) * x_415);
    let x_417 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_417);
    let x_419 : f32 = u_xlat27;
    let x_420 : i32 = u_xlati26;
    let x_422 : f32 = x_392.x_AdditionalLightsAttenuation[x_420].x;
    u_xlat27 = (x_419 * x_422);
    let x_424 : f32 = u_xlat27;
    let x_426 : f32 = u_xlat27;
    u_xlat27 = ((-(x_424) * x_426) + 1.0f);
    let x_429 : f32 = u_xlat27;
    u_xlat27 = max(x_429, 0.0f);
    let x_431 : f32 = u_xlat27;
    let x_432 : f32 = u_xlat27;
    u_xlat27 = (x_431 * x_432);
    let x_434 : f32 = u_xlat27;
    let x_435 : f32 = u_xlat28;
    u_xlat27 = (x_434 * x_435);
    let x_437 : i32 = u_xlati26;
    let x_439 : vec4<f32> = x_392.x_AdditionalLightsSpotDir[x_437];
    let x_441 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_439.x, x_439.y, x_439.z), x_441);
    let x_443 : f32 = u_xlat28;
    let x_444 : i32 = u_xlati26;
    let x_446 : f32 = x_392.x_AdditionalLightsAttenuation[x_444].z;
    let x_448 : i32 = u_xlati26;
    let x_450 : f32 = x_392.x_AdditionalLightsAttenuation[x_448].w;
    u_xlat28 = ((x_443 * x_446) + x_450);
    let x_452 : f32 = u_xlat28;
    u_xlat28 = clamp(x_452, 0.0f, 1.0f);
    let x_454 : f32 = u_xlat28;
    let x_455 : f32 = u_xlat28;
    u_xlat28 = (x_454 * x_455);
    let x_457 : f32 = u_xlat27;
    let x_458 : f32 = u_xlat28;
    u_xlat27 = (x_457 * x_458);
    let x_461 : f32 = u_xlat27;
    let x_463 : i32 = u_xlati26;
    let x_465 : vec4<f32> = x_392.x_AdditionalLightsColor[x_463];
    u_xlat7 = (vec3<f32>(x_461, x_461, x_461) * vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec3<f32> = u_xlat2;
    let x_469 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_468, x_469);
    let x_471 : f32 = u_xlat26;
    u_xlat26 = clamp(x_471, 0.0f, 1.0f);
    let x_473 : f32 = u_xlat26;
    let x_475 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_473, x_473, x_473) * x_475);
    let x_477 : vec3<f32> = u_xlat6;
    let x_478 : vec4<f32> = u_xlat1;
    let x_481 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_477 * vec3<f32>(x_478.x, x_478.y, x_478.z)) + x_481);

    continuing {
      let x_483 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_483 + bitcast<u32>(1i));
    }
  }
  let x_485 : vec3<f32> = u_xlat3;
  let x_486 : vec4<f32> = u_xlat1;
  let x_489 : vec3<f32> = u_xlat4;
  let x_490 : vec3<f32> = ((x_485 * vec3<f32>(x_486.x, x_486.y, x_486.z)) + x_489);
  let x_491 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_493 : vec3<f32> = u_xlat5;
  let x_494 : vec4<f32> = u_xlat1;
  let x_496 : vec3<f32> = (x_493 + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_497 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  let x_500 : f32 = u_xlat0.x;
  let x_502 : f32 = u_xlat0.x;
  u_xlat0.x = (x_500 * -(x_502));
  let x_507 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_507);
  let x_510 : vec4<f32> = u_xlat1;
  let x_513 : vec4<f32> = x_43.unity_FogColor;
  let x_516 : vec3<f32> = (vec3<f32>(x_510.x, x_510.y, x_510.z) + -(vec3<f32>(x_513.x, x_513.y, x_513.z)));
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = u_xlat1;
  let x_527 : vec4<f32> = x_43.unity_FogColor;
  let x_529 : vec3<f32> = ((vec3<f32>(x_521.x, x_521.x, x_521.x) * vec3<f32>(x_523.x, x_523.y, x_523.z)) + vec3<f32>(x_527.x, x_527.y, x_527.z));
  let x_530 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
  let x_532 : bool = u_xlatb16;
  let x_533 : f32 = u_xlat8;
  SV_Target0.w = select(1.0f, x_533, x_532);
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

