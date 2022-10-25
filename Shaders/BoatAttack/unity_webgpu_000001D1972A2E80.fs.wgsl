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

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_176 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_268 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_361 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb17 : bool;
  var x_206 : f32;
  var u_xlat17 : f32;
  var u_xlatu22 : u32;
  var u_xlat4 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati5 : i32;
  var u_xlat25 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat5 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_488 : f32;
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
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = vec3<f32>(x_88.x, x_88.y, x_88.z);
  let x_94 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_95 : vec2<f32> = vec2<f32>(x_94.x, x_94.y);
  let x_99 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_95.x, x_95.y));
  let x_100 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_99.x, x_99.y, x_100.z);
  let x_102 : vec3<f32> = u_xlat3;
  let x_104 : vec4<f32> = hlslcc_FragCoord;
  let x_106 : vec2<f32> = (vec2<f32>(x_102.x, x_102.y) * vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_106.x, x_106.y, x_107.z);
  let x_112 : f32 = u_xlat3.y;
  let x_115 : f32 = x_43.x_ScaleBiasRt.x;
  let x_118 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_112 * x_115) + x_118);
  let x_120 : f32 = u_xlat22;
  u_xlat3.z = (-(x_120) + 1.0f);
  let x_130 : vec3<f32> = u_xlat3;
  let x_133 : f32 = x_43.x_GlobalMipBias.x;
  let x_134 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_130.x, x_130.z), x_133);
  u_xlat22 = x_134.x;
  let x_137 : f32 = u_xlat22;
  u_xlat23 = (x_137 + -1.0f);
  let x_142 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_143 : f32 = u_xlat23;
  u_xlat23 = ((x_142 * x_143) + 1.0f);
  let x_146 : f32 = u_xlat22;
  u_xlat22 = min(x_146, 1.0f);
  let x_150 : vec4<f32> = vs_TEXCOORD6;
  let x_151 : vec2<f32> = vec2<f32>(x_150.x, x_150.y);
  let x_153 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_151.x, x_151.y, x_153);
  let x_165 : vec3<f32> = txVec0;
  let x_168 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_165.xy, x_165.z);
  u_xlat3.x = x_168;
  let x_179 : f32 = x_176.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_179) + 1.0f);
  let x_184 : f32 = u_xlat3.x;
  let x_186 : f32 = x_176.x_MainLightShadowParams.x;
  let x_189 : f32 = u_xlat10.x;
  u_xlat3.x = ((x_184 * x_186) + x_189);
  let x_196 : f32 = vs_TEXCOORD6.z;
  u_xlatb10 = (0.0f >= x_196);
  let x_200 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_200 >= 1.0f);
  let x_202 : bool = u_xlatb17;
  let x_203 : bool = u_xlatb10;
  u_xlatb10 = (x_202 | x_203);
  let x_205 : bool = u_xlatb10;
  if (x_205) {
    x_206 = 1.0f;
  } else {
    let x_211 : f32 = u_xlat3.x;
    x_206 = x_211;
  }
  let x_212 : f32 = x_206;
  u_xlat3.x = x_212;
  let x_215 : vec3<f32> = vs_TEXCOORD1;
  let x_219 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat10 = (x_215 + -(x_219));
  let x_222 : vec3<f32> = u_xlat10;
  let x_223 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat10.x;
  let x_229 : f32 = x_176.x_MainLightShadowParams.z;
  let x_232 : f32 = x_176.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_227 * x_229) + x_232);
  let x_236 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_236, 0.0f, 1.0f);
  let x_241 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_241) + 1.0f);
  let x_245 : f32 = u_xlat10.x;
  let x_246 : f32 = u_xlat17;
  let x_249 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_245 * x_246) + x_249);
  let x_252 : f32 = u_xlat23;
  let x_256 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_252, x_252, x_252) * vec3<f32>(x_256.x, x_256.y, x_256.z));
  let x_259 : f32 = u_xlat22;
  let x_261 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_259, x_259, x_259) * x_261);
  let x_264 : f32 = u_xlat3.x;
  let x_271 : f32 = x_268.unity_LightData.z;
  u_xlat22 = (x_264 * x_271);
  let x_273 : f32 = u_xlat22;
  let x_275 : vec3<f32> = u_xlat10;
  u_xlat3 = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_277 : vec3<f32> = u_xlat1;
  let x_280 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(x_277, vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_283 : f32 = u_xlat22;
  u_xlat22 = clamp(x_283, 0.0f, 1.0f);
  let x_285 : f32 = u_xlat22;
  let x_287 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_285, x_285, x_285) * x_287);
  let x_289 : vec4<f32> = u_xlat0;
  let x_291 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_289.y, x_289.z, x_289.w) * x_291);
  let x_294 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_296 : f32 = x_268.unity_LightData.y;
  u_xlat22 = min(x_294, x_296);
  let x_300 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_300));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_313 : u32 = u_xlatu_loop_1;
    let x_314 : u32 = u_xlatu22;
    if ((x_313 < x_314)) {
    } else {
      break;
    }
    let x_317 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_317 >> 2u);
    let x_321 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_321 & 3u));
    let x_325 : u32 = u_xlatu25;
    let x_328 : vec4<f32> = x_268.unity_LightIndices[bitcast<i32>(x_325)];
    let x_338 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_343 : vec4<u32> = indexable[x_338];
    u_xlat25 = dot(x_328, bitcast<vec4<f32>>(x_343));
    let x_347 : f32 = u_xlat25;
    u_xlati25 = i32(x_347);
    let x_350 : vec3<f32> = vs_TEXCOORD1;
    let x_362 : i32 = u_xlati25;
    let x_364 : vec4<f32> = x_361.x_AdditionalLightsPosition[x_362];
    let x_367 : i32 = u_xlati25;
    let x_369 : vec4<f32> = x_361.x_AdditionalLightsPosition[x_367];
    u_xlat5 = ((-(x_350) * vec3<f32>(x_364.w, x_364.w, x_364.w)) + vec3<f32>(x_369.x, x_369.y, x_369.z));
    let x_373 : vec3<f32> = u_xlat5;
    let x_374 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_373, x_374);
    let x_376 : f32 = u_xlat26;
    u_xlat26 = max(x_376, 6.10351562e-05f);
    let x_380 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_380);
    let x_383 : vec3<f32> = u_xlat5;
    let x_384 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_383 * vec3<f32>(x_384.x, x_384.x, x_384.x));
    let x_387 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_387);
    let x_390 : f32 = u_xlat26;
    let x_391 : i32 = u_xlati25;
    let x_393 : f32 = x_361.x_AdditionalLightsAttenuation[x_391].x;
    u_xlat26 = (x_390 * x_393);
    let x_395 : f32 = u_xlat26;
    let x_397 : f32 = u_xlat26;
    u_xlat26 = ((-(x_395) * x_397) + 1.0f);
    let x_400 : f32 = u_xlat26;
    u_xlat26 = max(x_400, 0.0f);
    let x_402 : f32 = u_xlat26;
    let x_403 : f32 = u_xlat26;
    u_xlat26 = (x_402 * x_403);
    let x_405 : f32 = u_xlat26;
    let x_407 : f32 = u_xlat6.x;
    u_xlat26 = (x_405 * x_407);
    let x_409 : i32 = u_xlati25;
    let x_411 : vec4<f32> = x_361.x_AdditionalLightsSpotDir[x_409];
    let x_413 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), x_413);
    let x_417 : f32 = u_xlat6.x;
    let x_418 : i32 = u_xlati25;
    let x_420 : f32 = x_361.x_AdditionalLightsAttenuation[x_418].z;
    let x_422 : i32 = u_xlati25;
    let x_424 : f32 = x_361.x_AdditionalLightsAttenuation[x_422].w;
    u_xlat6.x = ((x_417 * x_420) + x_424);
    let x_428 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_428, 0.0f, 1.0f);
    let x_432 : f32 = u_xlat6.x;
    let x_434 : f32 = u_xlat6.x;
    u_xlat6.x = (x_432 * x_434);
    let x_437 : f32 = u_xlat26;
    let x_439 : f32 = u_xlat6.x;
    u_xlat26 = (x_437 * x_439);
    let x_441 : f32 = u_xlat23;
    let x_443 : i32 = u_xlati25;
    let x_445 : vec4<f32> = x_361.x_AdditionalLightsColor[x_443];
    u_xlat6 = (vec3<f32>(x_441, x_441, x_441) * vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : f32 = u_xlat26;
    let x_450 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_448, x_448, x_448) * x_450);
    let x_452 : vec3<f32> = u_xlat1;
    let x_453 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(x_452, x_453);
    let x_455 : f32 = u_xlat25;
    u_xlat25 = clamp(x_455, 0.0f, 1.0f);
    let x_457 : f32 = u_xlat25;
    let x_459 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_457, x_457, x_457) * x_459);
    let x_461 : vec3<f32> = u_xlat5;
    let x_462 : vec4<f32> = u_xlat0;
    let x_465 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_461 * vec3<f32>(x_462.y, x_462.z, x_462.w)) + x_465);

    continuing {
      let x_467 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_467 + bitcast<u32>(1i));
    }
  }
  let x_470 : vec3<f32> = u_xlat2;
  let x_471 : vec4<f32> = u_xlat0;
  let x_474 : vec3<f32> = u_xlat3;
  u_xlat7 = ((x_470 * vec3<f32>(x_471.y, x_471.z, x_471.w)) + x_474);
  let x_478 : vec3<f32> = u_xlat4;
  let x_479 : vec3<f32> = u_xlat7;
  let x_480 : vec3<f32> = (x_478 + x_479);
  let x_481 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_480.x, x_480.y, x_480.z, x_481.w);
  let x_485 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_485 == 1.0f);
  let x_487 : bool = u_xlatb7;
  if (x_487) {
    let x_492 : f32 = u_xlat0.x;
    x_488 = x_492;
  } else {
    x_488 = 1.0f;
  }
  let x_494 : f32 = x_488;
  SV_Target0.w = x_494;
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

