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
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(2) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_198 : UnityPerDraw;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(3) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_298 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_471 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat8 : f32;
  var u_xlat16 : f32;
  var u_xlat24 : f32;
  var u_xlatb16 : bool;
  var x_110 : f32;
  var u_xlatb8 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb26 : bool;
  var u_xlat26 : f32;
  var u_xlatu24 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu26 : u32;
  var u_xlati27 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati26 : i32;
  var u_xlat6 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat28 : f32;
  var u_xlat7 : vec3<f32>;
  var x_619 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat8 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat16 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat24 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat24;
  let x_90 : f32 = u_xlat16;
  u_xlat16 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat16;
  u_xlat16 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat8;
  let x_97 : f32 = u_xlat16;
  u_xlat8 = (x_96 / x_97);
  let x_99 : f32 = u_xlat8;
  u_xlat8 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat8;
  u_xlat8 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb16 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb16;
  if (x_109) {
    let x_113 : f32 = u_xlat8;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat8 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat8;
  u_xlatb8 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb8;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat8 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat8;
  u_xlat8 = inverseSqrt(x_139);
  let x_142 : f32 = u_xlat8;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142, x_142, x_142) * x_144);
  let x_146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_156 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat8 = (x_152 * x_156);
  let x_159 : f32 = x_28.unity_MatrixV[0i].z;
  let x_161 : f32 = vs_TEXCOORD1.x;
  let x_163 : f32 = u_xlat8;
  u_xlat8 = ((x_159 * x_161) + x_163);
  let x_167 : f32 = x_28.unity_MatrixV[2i].z;
  let x_169 : f32 = vs_TEXCOORD1.z;
  let x_171 : f32 = u_xlat8;
  u_xlat8 = ((x_167 * x_169) + x_171);
  let x_173 : f32 = u_xlat8;
  let x_176 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat8 = (x_173 + x_176);
  let x_178 : f32 = u_xlat8;
  let x_182 : f32 = x_28.x_ProjectionParams.y;
  u_xlat8 = (-(x_178) + -(x_182));
  let x_185 : f32 = u_xlat8;
  u_xlat8 = max(x_185, 0.0f);
  let x_187 : f32 = u_xlat8;
  let x_190 : f32 = x_28.unity_FogParams.x;
  u_xlat8 = (x_187 * x_190);
  u_xlat2.w = 1.0f;
  let x_201 : vec4<f32> = x_198.unity_SHAr;
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_198.unity_SHAg;
  let x_208 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_207, x_208);
  let x_213 : vec4<f32> = x_198.unity_SHAb;
  let x_214 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_213, x_214);
  let x_218 : vec4<f32> = u_xlat2;
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec4<f32>(x_218.y, x_218.z, x_218.z, x_218.x) * vec4<f32>(x_220.x, x_220.y, x_220.z, x_220.z));
  let x_226 : vec4<f32> = x_198.unity_SHBr;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_198.unity_SHBg;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_232, x_233);
  let x_238 : vec4<f32> = x_198.unity_SHBb;
  let x_239 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_238, x_239);
  let x_243 : f32 = u_xlat2.y;
  let x_245 : f32 = u_xlat2.y;
  u_xlat24 = (x_243 * x_245);
  let x_248 : f32 = u_xlat2.x;
  let x_250 : f32 = u_xlat2.x;
  let x_252 : f32 = u_xlat24;
  u_xlat24 = ((x_248 * x_250) + -(x_252));
  let x_257 : vec4<f32> = x_198.unity_SHC;
  let x_259 : f32 = u_xlat24;
  let x_262 : vec3<f32> = u_xlat5;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259, x_259, x_259)) + x_262);
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec3<f32> = u_xlat3;
  let x_267 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_266 + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_270, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_276 : vec4<f32> = vs_TEXCOORD6;
  let x_277 : vec2<f32> = vec2<f32>(x_276.x, x_276.y);
  let x_279 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_277.x, x_277.y, x_279);
  let x_291 : vec3<f32> = txVec0;
  let x_293 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_291.xy, x_291.z);
  u_xlat24 = x_293;
  let x_301 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_301) + 1.0f);
  let x_305 : f32 = u_xlat24;
  let x_307 : f32 = x_298.x_MainLightShadowParams.x;
  let x_310 : f32 = u_xlat1.x;
  u_xlat24 = ((x_305 * x_307) + x_310);
  let x_314 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_314);
  let x_318 : f32 = vs_TEXCOORD6.z;
  u_xlatb26 = (x_318 >= 1.0f);
  let x_320 : bool = u_xlatb1;
  let x_321 : bool = u_xlatb26;
  u_xlatb1 = (x_320 | x_321);
  let x_323 : bool = u_xlatb1;
  let x_324 : f32 = u_xlat24;
  u_xlat24 = select(x_324, 1.0f, x_323);
  let x_326 : vec3<f32> = vs_TEXCOORD1;
  let x_330 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_332 : vec3<f32> = (x_326 + -(x_330));
  let x_333 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_332.x, x_332.y, x_332.z, x_333.w);
  let x_335 : vec4<f32> = u_xlat4;
  let x_337 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_335.x, x_335.y, x_335.z), vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_342 : f32 = u_xlat1.x;
  let x_344 : f32 = x_298.x_MainLightShadowParams.z;
  let x_347 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_342 * x_344) + x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_351, 0.0f, 1.0f);
  let x_355 : f32 = u_xlat24;
  u_xlat26 = (-(x_355) + 1.0f);
  let x_359 : f32 = u_xlat1.x;
  let x_360 : f32 = u_xlat26;
  let x_362 : f32 = u_xlat24;
  u_xlat24 = ((x_359 * x_360) + x_362);
  let x_364 : f32 = u_xlat24;
  let x_366 : f32 = x_198.unity_LightData.z;
  u_xlat24 = (x_364 * x_366);
  let x_368 : f32 = u_xlat24;
  let x_371 : vec4<f32> = x_28.x_MainLightColor;
  let x_373 : vec3<f32> = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_376 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat24 = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : f32 = u_xlat24;
  u_xlat24 = clamp(x_382, 0.0f, 1.0f);
  let x_384 : f32 = u_xlat24;
  let x_386 : vec4<f32> = u_xlat4;
  let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
  let x_389 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_393 : vec4<f32> = u_xlat4;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.y, x_391.z, x_391.w) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_398 : vec4<f32> = u_xlat0;
  let x_400 : vec4<f32> = u_xlat4;
  let x_402 : vec3<f32> = (vec3<f32>(x_398.x, x_398.x, x_398.x) * vec3<f32>(x_400.x, x_400.y, x_400.z));
  let x_403 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_402.x, x_402.y, x_402.z, x_403.w);
  let x_406 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_408 : f32 = x_198.unity_LightData.y;
  u_xlat24 = min(x_406, x_408);
  let x_412 : f32 = u_xlat24;
  u_xlatu24 = bitcast<u32>(i32(x_412));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_424 : u32 = u_xlatu_loop_1;
    let x_425 : u32 = u_xlatu24;
    if ((x_424 < x_425)) {
    } else {
      break;
    }
    let x_428 : u32 = u_xlatu_loop_1;
    u_xlatu26 = (x_428 >> 2u);
    let x_432 : u32 = u_xlatu_loop_1;
    u_xlati27 = bitcast<i32>((x_432 & 3u));
    let x_435 : u32 = u_xlatu26;
    let x_438 : vec4<f32> = x_198.unity_LightIndices[bitcast<i32>(x_435)];
    let x_448 : i32 = u_xlati27;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_453 : vec4<u32> = indexable[x_448];
    u_xlat26 = dot(x_438, bitcast<vec4<f32>>(x_453));
    let x_457 : f32 = u_xlat26;
    u_xlati26 = i32(x_457);
    let x_460 : vec3<f32> = vs_TEXCOORD1;
    let x_472 : i32 = u_xlati26;
    let x_474 : vec4<f32> = x_471.x_AdditionalLightsPosition[x_472];
    let x_477 : i32 = u_xlati26;
    let x_479 : vec4<f32> = x_471.x_AdditionalLightsPosition[x_477];
    u_xlat6 = ((-(x_460) * vec3<f32>(x_474.w, x_474.w, x_474.w)) + vec3<f32>(x_479.x, x_479.y, x_479.z));
    let x_483 : vec3<f32> = u_xlat6;
    let x_484 : vec3<f32> = u_xlat6;
    u_xlat27 = dot(x_483, x_484);
    let x_486 : f32 = u_xlat27;
    u_xlat27 = max(x_486, 6.10351562e-05f);
    let x_490 : f32 = u_xlat27;
    u_xlat28 = inverseSqrt(x_490);
    let x_492 : f32 = u_xlat28;
    let x_494 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_492, x_492, x_492) * x_494);
    let x_496 : f32 = u_xlat27;
    u_xlat28 = (1.0f / x_496);
    let x_498 : f32 = u_xlat27;
    let x_499 : i32 = u_xlati26;
    let x_501 : f32 = x_471.x_AdditionalLightsAttenuation[x_499].x;
    u_xlat27 = (x_498 * x_501);
    let x_503 : f32 = u_xlat27;
    let x_505 : f32 = u_xlat27;
    u_xlat27 = ((-(x_503) * x_505) + 1.0f);
    let x_508 : f32 = u_xlat27;
    u_xlat27 = max(x_508, 0.0f);
    let x_510 : f32 = u_xlat27;
    let x_511 : f32 = u_xlat27;
    u_xlat27 = (x_510 * x_511);
    let x_513 : f32 = u_xlat27;
    let x_514 : f32 = u_xlat28;
    u_xlat27 = (x_513 * x_514);
    let x_516 : i32 = u_xlati26;
    let x_518 : vec4<f32> = x_471.x_AdditionalLightsSpotDir[x_516];
    let x_520 : vec3<f32> = u_xlat6;
    u_xlat28 = dot(vec3<f32>(x_518.x, x_518.y, x_518.z), x_520);
    let x_522 : f32 = u_xlat28;
    let x_523 : i32 = u_xlati26;
    let x_525 : f32 = x_471.x_AdditionalLightsAttenuation[x_523].z;
    let x_527 : i32 = u_xlati26;
    let x_529 : f32 = x_471.x_AdditionalLightsAttenuation[x_527].w;
    u_xlat28 = ((x_522 * x_525) + x_529);
    let x_531 : f32 = u_xlat28;
    u_xlat28 = clamp(x_531, 0.0f, 1.0f);
    let x_533 : f32 = u_xlat28;
    let x_534 : f32 = u_xlat28;
    u_xlat28 = (x_533 * x_534);
    let x_536 : f32 = u_xlat27;
    let x_537 : f32 = u_xlat28;
    u_xlat27 = (x_536 * x_537);
    let x_540 : f32 = u_xlat27;
    let x_542 : i32 = u_xlati26;
    let x_544 : vec4<f32> = x_471.x_AdditionalLightsColor[x_542];
    u_xlat7 = (vec3<f32>(x_540, x_540, x_540) * vec3<f32>(x_544.x, x_544.y, x_544.z));
    let x_547 : vec4<f32> = u_xlat2;
    let x_549 : vec3<f32> = u_xlat6;
    u_xlat26 = dot(vec3<f32>(x_547.x, x_547.y, x_547.z), x_549);
    let x_551 : f32 = u_xlat26;
    u_xlat26 = clamp(x_551, 0.0f, 1.0f);
    let x_553 : f32 = u_xlat26;
    let x_555 : vec3<f32> = u_xlat7;
    u_xlat6 = (vec3<f32>(x_553, x_553, x_553) * x_555);
    let x_557 : vec4<f32> = u_xlat1;
    let x_559 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_557.y, x_557.z, x_557.w) * x_559);
    let x_561 : vec3<f32> = u_xlat6;
    let x_562 : vec4<f32> = u_xlat0;
    let x_565 : vec3<f32> = u_xlat5;
    u_xlat5 = ((x_561 * vec3<f32>(x_562.x, x_562.x, x_562.x)) + x_565);

    continuing {
      let x_567 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_567 + bitcast<u32>(1i));
    }
  }
  let x_569 : vec3<f32> = u_xlat3;
  let x_570 : vec4<f32> = u_xlat1;
  let x_573 : vec4<f32> = u_xlat4;
  let x_575 : vec3<f32> = ((x_569 * vec3<f32>(x_570.y, x_570.z, x_570.w)) + vec3<f32>(x_573.x, x_573.y, x_573.z));
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
  let x_578 : vec3<f32> = u_xlat5;
  let x_579 : vec4<f32> = u_xlat1;
  let x_581 : vec3<f32> = (x_578 + vec3<f32>(x_579.x, x_579.y, x_579.z));
  let x_582 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
  let x_584 : f32 = u_xlat8;
  let x_585 : f32 = u_xlat8;
  u_xlat8 = (x_584 * -(x_585));
  let x_588 : f32 = u_xlat8;
  u_xlat8 = exp2(x_588);
  let x_590 : vec4<f32> = u_xlat1;
  let x_593 : vec4<f32> = x_28.unity_FogColor;
  let x_596 : vec3<f32> = (vec3<f32>(x_590.x, x_590.y, x_590.z) + -(vec3<f32>(x_593.x, x_593.y, x_593.z)));
  let x_597 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_601 : f32 = u_xlat8;
  let x_603 : vec4<f32> = u_xlat1;
  let x_607 : vec4<f32> = x_28.unity_FogColor;
  let x_609 : vec3<f32> = ((vec3<f32>(x_601, x_601, x_601) * vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_610 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_613 : f32 = x_42.x_Surface;
  u_xlatb8 = (x_613 == 1.0f);
  let x_615 : bool = u_xlatb8;
  let x_616 : bool = u_xlatb16;
  u_xlatb8 = (x_615 | x_616);
  let x_618 : bool = u_xlatb8;
  if (x_618) {
    let x_623 : f32 = u_xlat0.x;
    x_619 = x_623;
  } else {
    x_619 = 1.0f;
  }
  let x_625 : f32 = x_619;
  SV_Target0.w = x_625;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

