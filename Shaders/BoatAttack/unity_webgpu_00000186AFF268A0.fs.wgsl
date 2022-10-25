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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

@group(1) @binding(3) var<uniform> x_41 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_224 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_284 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_386 : AdditionalLights;

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
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb24 : bool;
  var u_xlatb1 : bool;
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
  var x_510 : f32;
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
  let x_156 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_153, x_155);
  u_xlat3 = x_156;
  let x_162 : vec2<f32> = vs_TEXCOORD7;
  let x_164 : f32 = x_27.x_GlobalMipBias.x;
  let x_165 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_162, x_164);
  u_xlat4 = vec3<f32>(x_165.x, x_165.y, x_165.z);
  let x_167 : vec4<f32> = u_xlat3;
  let x_171 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_172 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec3<f32> = u_xlat2;
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat8 = dot(x_174, vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : f32 = u_xlat8;
  u_xlat8 = (x_178 + 0.5f);
  let x_180 : f32 = u_xlat8;
  let x_182 : vec3<f32> = u_xlat4;
  let x_183 : vec3<f32> = (vec3<f32>(x_180, x_180, x_180) * x_182);
  let x_184 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_187 : f32 = u_xlat3.w;
  u_xlat8 = max(x_187, 0.0001f);
  let x_189 : vec4<f32> = u_xlat3;
  let x_191 : f32 = u_xlat8;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) / vec3<f32>(x_191, x_191, x_191));
  let x_194 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_199 : vec4<f32> = vs_TEXCOORD6;
  let x_200 : vec2<f32> = vec2<f32>(x_199.x, x_199.y);
  let x_204 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_200.x, x_200.y, x_204);
  let x_216 : vec3<f32> = txVec0;
  let x_218 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_216.xy, x_216.z);
  u_xlat8 = x_218;
  let x_227 : f32 = x_224.x_MainLightShadowParams.x;
  u_xlat24 = (-(x_227) + 1.0f);
  let x_230 : f32 = u_xlat8;
  let x_232 : f32 = x_224.x_MainLightShadowParams.x;
  let x_234 : f32 = u_xlat24;
  u_xlat8 = ((x_230 * x_232) + x_234);
  let x_238 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (0.0f >= x_238);
  let x_242 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (x_242 >= 1.0f);
  let x_244 : bool = u_xlatb24;
  let x_245 : bool = u_xlatb1;
  u_xlatb24 = (x_244 | x_245);
  let x_247 : bool = u_xlatb24;
  let x_248 : f32 = u_xlat8;
  u_xlat8 = select(x_248, 1.0f, x_247);
  let x_251 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec3<f32> = x_27.x_WorldSpaceCameraPos;
  u_xlat4 = (x_251 + -(x_255));
  let x_258 : vec3<f32> = u_xlat4;
  let x_259 : vec3<f32> = u_xlat4;
  u_xlat24 = dot(x_258, x_259);
  let x_261 : f32 = u_xlat24;
  let x_263 : f32 = x_224.x_MainLightShadowParams.z;
  let x_266 : f32 = x_224.x_MainLightShadowParams.w;
  u_xlat24 = ((x_261 * x_263) + x_266);
  let x_268 : f32 = u_xlat24;
  u_xlat24 = clamp(x_268, 0.0f, 1.0f);
  let x_270 : f32 = u_xlat8;
  u_xlat1.x = (-(x_270) + 1.0f);
  let x_274 : f32 = u_xlat24;
  let x_276 : f32 = u_xlat1.x;
  let x_278 : f32 = u_xlat8;
  u_xlat8 = ((x_274 * x_276) + x_278);
  let x_280 : f32 = u_xlat8;
  let x_286 : f32 = x_284.unity_LightData.z;
  u_xlat8 = (x_280 * x_286);
  let x_288 : f32 = u_xlat8;
  let x_292 : vec4<f32> = x_27.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_288, x_288, x_288) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec3<f32> = u_xlat2;
  let x_298 : vec4<f32> = x_27.x_MainLightPosition;
  u_xlat8 = dot(x_295, vec3<f32>(x_298.x, x_298.y, x_298.z));
  let x_301 : f32 = u_xlat8;
  u_xlat8 = clamp(x_301, 0.0f, 1.0f);
  let x_303 : f32 = u_xlat8;
  let x_305 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_303, x_303, x_303) * x_305);
  let x_307 : vec4<f32> = u_xlat1;
  let x_309 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_307.y, x_307.z, x_307.w) * x_309);
  let x_311 : vec4<f32> = u_xlat0;
  let x_313 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_311.x, x_311.x, x_311.x) * x_313);
  let x_316 : f32 = x_27.x_AdditionalLightsCount.x;
  let x_319 : f32 = x_284.unity_LightData.y;
  u_xlat8 = min(x_316, x_319);
  let x_323 : f32 = u_xlat8;
  u_xlatu8 = bitcast<u32>(i32(x_323));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_336 : u32 = u_xlatu_loop_1;
    let x_337 : u32 = u_xlatu8;
    if ((x_336 < x_337)) {
    } else {
      break;
    }
    let x_340 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_340 >> 2u);
    let x_344 : u32 = u_xlatu_loop_1;
    u_xlati26 = bitcast<i32>((x_344 & 3u));
    let x_348 : u32 = u_xlatu1;
    let x_351 : vec4<f32> = x_284.unity_LightIndices[bitcast<i32>(x_348)];
    let x_361 : i32 = u_xlati26;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_366 : vec4<u32> = indexable[x_361];
    u_xlat1.x = dot(x_351, bitcast<vec4<f32>>(x_366));
    let x_372 : f32 = u_xlat1.x;
    u_xlati1 = i32(x_372);
    let x_375 : vec3<f32> = vs_TEXCOORD1;
    let x_387 : i32 = u_xlati1;
    let x_389 : vec4<f32> = x_386.x_AdditionalLightsPosition[x_387];
    let x_392 : i32 = u_xlati1;
    let x_394 : vec4<f32> = x_386.x_AdditionalLightsPosition[x_392];
    u_xlat6 = ((-(x_375) * vec3<f32>(x_389.w, x_389.w, x_389.w)) + vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_398 : vec3<f32> = u_xlat6;
    let x_399 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(x_398, x_399);
    let x_401 : f32 = u_xlat26;
    u_xlat26 = max(x_401, 6.10351562e-05f);
    let x_405 : f32 = u_xlat26;
    u_xlat27 = inverseSqrt(x_405);
    let x_407 : f32 = u_xlat27;
    let x_409 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_407, x_407, x_407) * x_409);
    let x_411 : f32 = u_xlat26;
    u_xlat27 = (1.0f / x_411);
    let x_413 : f32 = u_xlat26;
    let x_414 : i32 = u_xlati1;
    let x_416 : f32 = x_386.x_AdditionalLightsAttenuation[x_414].x;
    u_xlat26 = (x_413 * x_416);
    let x_418 : f32 = u_xlat26;
    let x_420 : f32 = u_xlat26;
    u_xlat26 = ((-(x_418) * x_420) + 1.0f);
    let x_423 : f32 = u_xlat26;
    u_xlat26 = max(x_423, 0.0f);
    let x_425 : f32 = u_xlat26;
    let x_426 : f32 = u_xlat26;
    u_xlat26 = (x_425 * x_426);
    let x_428 : f32 = u_xlat26;
    let x_429 : f32 = u_xlat27;
    u_xlat26 = (x_428 * x_429);
    let x_431 : i32 = u_xlati1;
    let x_433 : vec4<f32> = x_386.x_AdditionalLightsSpotDir[x_431];
    let x_435 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(vec3<f32>(x_433.x, x_433.y, x_433.z), x_435);
    let x_437 : f32 = u_xlat27;
    let x_438 : i32 = u_xlati1;
    let x_440 : f32 = x_386.x_AdditionalLightsAttenuation[x_438].z;
    let x_442 : i32 = u_xlati1;
    let x_444 : f32 = x_386.x_AdditionalLightsAttenuation[x_442].w;
    u_xlat27 = ((x_437 * x_440) + x_444);
    let x_446 : f32 = u_xlat27;
    u_xlat27 = clamp(x_446, 0.0f, 1.0f);
    let x_448 : f32 = u_xlat27;
    let x_449 : f32 = u_xlat27;
    u_xlat27 = (x_448 * x_449);
    let x_451 : f32 = u_xlat26;
    let x_452 : f32 = u_xlat27;
    u_xlat26 = (x_451 * x_452);
    let x_455 : f32 = u_xlat26;
    let x_457 : i32 = u_xlati1;
    let x_459 : vec4<f32> = x_386.x_AdditionalLightsColor[x_457];
    u_xlat7 = (vec3<f32>(x_455, x_455, x_455) * vec3<f32>(x_459.x, x_459.y, x_459.z));
    let x_462 : vec3<f32> = u_xlat2;
    let x_463 : vec3<f32> = u_xlat6;
    u_xlat1.x = dot(x_462, x_463);
    let x_467 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_467, 0.0f, 1.0f);
    let x_470 : vec4<f32> = u_xlat1;
    let x_472 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_470.x, x_470.x, x_470.x) * x_472);
    let x_474 : vec4<f32> = u_xlat1;
    let x_476 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_474.y, x_474.z, x_474.w) * x_476);
    let x_478 : vec3<f32> = u_xlat6;
    let x_479 : vec4<f32> = u_xlat0;
    let x_482 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_478 * vec3<f32>(x_479.x, x_479.x, x_479.x)) + x_482);

    continuing {
      let x_484 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_484 + bitcast<u32>(1i));
    }
  }
  let x_486 : vec4<f32> = u_xlat3;
  let x_488 : vec4<f32> = u_xlat1;
  let x_491 : vec3<f32> = u_xlat4;
  let x_492 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488.y, x_488.z, x_488.w)) + x_491);
  let x_493 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  let x_497 : vec3<f32> = u_xlat5;
  let x_498 : vec4<f32> = u_xlat1;
  let x_500 : vec3<f32> = (x_497 + vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_504 : f32 = x_41.x_Surface;
  u_xlatb8 = (x_504 == 1.0f);
  let x_506 : bool = u_xlatb8;
  let x_507 : bool = u_xlatb16;
  u_xlatb8 = (x_506 | x_507);
  let x_509 : bool = u_xlatb8;
  if (x_509) {
    let x_514 : f32 = u_xlat0.x;
    x_510 = x_514;
  } else {
    x_510 = 1.0f;
  }
  let x_516 : f32 = x_510;
  SV_Target0.w = x_516;
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

