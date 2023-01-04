struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_186 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_247 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_349 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_59 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_109 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb1 : bool;
  var u_xlat4 : vec3<f32>;
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
  var x_472 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_34);
  u_xlat0 = x_35;
  let x_37 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_41.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_37.w, x_37.x, x_37.y, x_37.z) * vec4<f32>(x_45.w, x_45.x, x_45.y, x_45.z));
  let x_53 : f32 = u_xlat1.x;
  let x_56 : f32 = x_41.x_Cutoff;
  u_xlatb0 = (x_53 >= x_56);
  let x_58 : bool = u_xlatb0;
  if (x_58) {
    let x_63 : f32 = u_xlat1.x;
    x_59 = x_63;
  } else {
    x_59 = 0.0f;
  }
  let x_66 : f32 = x_59;
  u_xlat0.x = x_66;
  let x_71 : f32 = u_xlat0.w;
  let x_73 : f32 = x_41.x_BaseColor.w;
  let x_76 : f32 = x_41.x_Cutoff;
  u_xlat8 = ((x_71 * x_73) + -(x_76));
  let x_81 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_81);
  let x_85 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_85);
  let x_87 : f32 = u_xlat24;
  let x_89 : f32 = u_xlat16;
  u_xlat16 = (abs(x_87) + abs(x_89));
  let x_92 : f32 = u_xlat16;
  u_xlat16 = max(x_92, 0.0001f);
  let x_95 : f32 = u_xlat8;
  let x_96 : f32 = u_xlat16;
  u_xlat8 = (x_95 / x_96);
  let x_98 : f32 = u_xlat8;
  u_xlat8 = (x_98 + 0.5f);
  let x_101 : f32 = u_xlat8;
  u_xlat8 = clamp(x_101, 0.0f, 1.0f);
  let x_106 : f32 = x_27.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_106 == 0.0f));
  let x_108 : bool = u_xlatb16;
  if (x_108) {
    let x_112 : f32 = u_xlat8;
    x_109 = x_112;
  } else {
    let x_115 : f32 = u_xlat0.x;
    x_109 = x_115;
  }
  let x_116 : f32 = x_109;
  u_xlat0.x = x_116;
  let x_119 : f32 = u_xlat0.x;
  u_xlat8 = (x_119 + -0.0001f);
  let x_123 : f32 = u_xlat8;
  u_xlatb8 = (x_123 < 0.0f);
  let x_125 : bool = u_xlatb8;
  if (((select(0i, 1i, x_125) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_135, x_136);
  let x_138 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_138);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_153 : vec2<f32> = vs_TEXCOORD7;
  let x_155 : f32 = x_27.x_GlobalMipBias.x;
  let x_156 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_153, x_155);
  u_xlat3 = vec3<f32>(x_156.x, x_156.y, x_156.z);
  let x_161 : vec4<f32> = vs_TEXCOORD6;
  let x_162 : vec2<f32> = vec2<f32>(x_161.x, x_161.y);
  let x_166 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_162.x, x_162.y, x_166);
  let x_178 : vec3<f32> = txVec0;
  let x_180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_178.xy, x_178.z);
  u_xlat8 = x_180;
  let x_189 : f32 = x_186.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_189) + 1.0f);
  let x_192 : f32 = u_xlat8;
  let x_194 : f32 = x_186.x_MainLightShadowParams.x;
  let x_196 : f32 = u_xlat24;
  u_xlat8 = ((x_192 * x_194) + x_196);
  let x_200 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_200);
  let x_204 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_204 >= 1.0f);
  let x_206 : bool = u_xlatb24;
  let x_207 : bool = u_xlatb1;
  u_xlatb24 = (x_206 | x_207);
  let x_209 : bool = u_xlatb24;
  let x_210 : f32 = u_xlat8;
  u_xlat8 = select(x_210, 1.0f, x_209);
  let x_214 : vec3<f32> = vs_TEXCOORD1;
  let x_218 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (x_214 + -(x_218));
  let x_221 : vec3<f32> = u_xlat4;
  let x_222 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_221, x_222);
  let x_224 : f32 = u_xlat24;
  let x_226 : f32 = x_186.x_MainLightShadowParams.z;
  let x_229 : f32 = x_186.x_MainLightShadowParams.w;
  u_xlat24 = ((x_224 * x_226) + x_229);
  let x_231 : f32 = u_xlat24;
  u_xlat24 = clamp(x_231, 0.0f, 1.0f);
  let x_233 : f32 = u_xlat8;
  u_xlat1.x = (-(x_233) + 1.0f);
  let x_237 : f32 = u_xlat24;
  let x_239 : f32 = u_xlat1.x;
  let x_241 : f32 = u_xlat8;
  u_xlat8 = ((x_237 * x_239) + x_241);
  let x_243 : f32 = u_xlat8;
  let x_249 : f32 = x_247.unity_LightData.z;
  u_xlat8 = (x_243 * x_249);
  let x_251 : f32 = u_xlat8;
  let x_255 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_251, x_251, x_251) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec3<f32> = u_xlat2;
  let x_261 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(x_258, vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : f32 = u_xlat8;
  u_xlat8 = clamp(x_264, 0.0f, 1.0f);
  let x_266 : f32 = u_xlat8;
  let x_268 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_266, x_266, x_266) * x_268);
  let x_270 : vec4<f32> = u_xlat1;
  let x_272 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_270.y, x_270.z, x_270.w) * x_272);
  let x_274 : vec4<f32> = u_xlat0;
  let x_276 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_274.x, x_274.x, x_274.x) * x_276);
  let x_279 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_282 : f32 = x_247.unity_LightData.y;
  u_xlat8 = min(x_279, x_282);
  let x_286 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_286));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_299 : u32 = u_xlatu_loop_1;
    let x_300 : u32 = u_xlatu8;
    if ((x_299 < x_300)) {
    } else {
      break;
    }
    let x_303 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_303 >> 2u);
    let x_307 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_307 & 3u));
    let x_311 : u32 = u_xlatu1;
    let x_314 : vec4<f32> = x_247.unity_LightIndices[bitcast<i32>(x_311)];
    let x_324 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_329 : vec4<u32> = indexable[x_324];
    u_xlat1.x = dot(x_314, bitcast<vec4<f32>>(x_329));
    let x_335 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_335);
    let x_338 : vec3<f32> = vs_TEXCOORD1;
    let x_350 : i32 = u_xlati1;
    let x_352 : vec4<f32> = x_349.x_AdditionalLightsPosition[x_350];
    let x_355 : i32 = u_xlati1;
    let x_357 : vec4<f32> = x_349.x_AdditionalLightsPosition[x_355];
    u_xlat6 = ((-(x_338) * vec3<f32>(x_352.w, x_352.w, x_352.w)) + vec3<f32>(x_357.x, x_357.y, x_357.z));
    let x_361 : vec3<f32> = u_xlat6;
    let x_362 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_361, x_362);
    let x_364 : f32 = u_xlat26;
    u_xlat26 = max(x_364, 6.10351562e-05f);
    let x_368 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_368);
    let x_370 : f32 = u_xlat27;
    let x_372 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_370, x_370, x_370) * x_372);
    let x_374 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_374);
    let x_376 : f32 = u_xlat26;
    let x_377 : i32 = u_xlati1;
    let x_379 : f32 = x_349.x_AdditionalLightsAttenuation[x_377].x;
    u_xlat26 = (x_376 * x_379);
    let x_381 : f32 = u_xlat26;
    let x_383 : f32 = u_xlat26;
    u_xlat26 = ((-(x_381) * x_383) + 1.0f);
    let x_386 : f32 = u_xlat26;
    u_xlat26 = max(x_386, 0.0f);
    let x_388 : f32 = u_xlat26;
    let x_389 : f32 = u_xlat26;
    u_xlat26 = (x_388 * x_389);
    let x_391 : f32 = u_xlat26;
    let x_392 : f32 = u_xlat27;
    u_xlat26 = (x_391 * x_392);
    let x_394 : i32 = u_xlati1;
    let x_396 : vec4<f32> = x_349.x_AdditionalLightsSpotDir[x_394];
    let x_398 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), x_398);
    let x_400 : f32 = u_xlat27;
    let x_401 : i32 = u_xlati1;
    let x_403 : f32 = x_349.x_AdditionalLightsAttenuation[x_401].z;
    let x_405 : i32 = u_xlati1;
    let x_407 : f32 = x_349.x_AdditionalLightsAttenuation[x_405].w;
    u_xlat27 = ((x_400 * x_403) + x_407);
    let x_409 : f32 = u_xlat27;
    u_xlat27 = clamp(x_409, 0.0f, 1.0f);
    let x_411 : f32 = u_xlat27;
    let x_412 : f32 = u_xlat27;
    u_xlat27 = (x_411 * x_412);
    let x_414 : f32 = u_xlat26;
    let x_415 : f32 = u_xlat27;
    u_xlat26 = (x_414 * x_415);
    let x_418 : f32 = u_xlat26;
    let x_420 : i32 = u_xlati1;
    let x_422 : vec4<f32> = x_349.x_AdditionalLightsColor[x_420];
    u_xlat7 = (vec3<f32>(x_418, x_418, x_418) * vec3<f32>(x_422.x, x_422.y, x_422.z));
    let x_425 : vec3<f32> = u_xlat2;
    let x_426 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(x_425, x_426);
    let x_430 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_430, 0.0f, 1.0f);
    let x_433 : vec4<f32> = u_xlat1;
    let x_435 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_433.x, x_433.x, x_433.x) * x_435);
    let x_437 : vec4<f32> = u_xlat1;
    let x_439 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_437.y, x_437.z, x_437.w) * x_439);
    let x_441 : vec3<f32> = u_xlat6;
    let x_442 : vec4<f32> = u_xlat0;
    let x_445 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_441 * vec3<f32>(x_442.x, x_442.x, x_442.x)) + x_445);

    continuing {
      let x_447 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_447 + bitcast<u32>(1i));
    }
  }
  let x_449 : vec3<f32> = u_xlat3;
  let x_450 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = u_xlat4;
  let x_454 : vec3<f32> = ((x_449 * vec3<f32>(x_450.y, x_450.z, x_450.w)) + x_453);
  let x_455 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
  let x_459 : vec3<f32> = u_xlat5;
  let x_460 : vec4<f32> = u_xlat1;
  let x_462 : vec3<f32> = (x_459 + vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_462.x, x_462.y, x_462.z, x_463.w);
  let x_466 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_466 == 1.0f);
  let x_468 : bool = u_xlatb8;
  let x_469 : bool = u_xlatb16;
  u_xlatb8 = (x_468 | x_469);
  let x_471 : bool = u_xlatb8;
  if (x_471) {
    let x_476 : f32 = u_xlat0.x;
    x_472 = x_476;
  } else {
    x_472 = 1.0f;
  }
  let x_478 : f32 = x_472;
  SV_Target0.w = x_478;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

