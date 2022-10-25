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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_221 : MainLightShadows;

@group(1) @binding(2) var<uniform> x_303 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_396 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb24 : bool;
  var x_248 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlatu23 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var u_xlat5 : vec3<f32>;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_569 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  let x_67 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_66, x_67);
  let x_72 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_72);
  let x_75 : vec3<f32> = u_xlat1;
  let x_77 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_75.x, x_75.x, x_75.x) * x_77);
  let x_83 : f32 = vs_TEXCOORD1.y;
  let x_87 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat22 = (x_83 * x_87);
  let x_91 : f32 = x_44.unity_MatrixV[0i].z;
  let x_93 : f32 = vs_TEXCOORD1.x;
  let x_95 : f32 = u_xlat22;
  u_xlat22 = ((x_91 * x_93) + x_95);
  let x_99 : f32 = x_44.unity_MatrixV[2i].z;
  let x_101 : f32 = vs_TEXCOORD1.z;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = ((x_99 * x_101) + x_103);
  let x_105 : f32 = u_xlat22;
  let x_108 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat22 = (x_105 + x_108);
  let x_110 : f32 = u_xlat22;
  let x_114 : f32 = x_44.x_ProjectionParams.y;
  u_xlat22 = (-(x_110) + -(x_114));
  let x_117 : f32 = u_xlat22;
  u_xlat22 = max(x_117, 0.0f);
  let x_120 : f32 = u_xlat22;
  let x_123 : f32 = x_44.unity_FogParams.x;
  u_xlat22 = (x_120 * x_123);
  let x_132 : vec2<f32> = vs_TEXCOORD7;
  let x_134 : f32 = x_44.x_GlobalMipBias.x;
  let x_135 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_132, x_134);
  u_xlat2 = vec3<f32>(x_135.x, x_135.y, x_135.z);
  let x_140 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_141 : vec2<f32> = vec2<f32>(x_140.x, x_140.y);
  let x_145 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_141.x, x_141.y));
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_148 : vec3<f32> = u_xlat3;
  let x_150 : vec4<f32> = hlslcc_FragCoord;
  let x_152 : vec2<f32> = (vec2<f32>(x_148.x, x_148.y) * vec2<f32>(x_150.x, x_150.y));
  let x_153 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_152.x, x_152.y, x_153.z);
  let x_157 : f32 = u_xlat3.y;
  let x_160 : f32 = x_44.x_ScaleBiasRt.x;
  let x_163 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_157 * x_160) + x_163);
  let x_165 : f32 = u_xlat23;
  u_xlat3.z = (-(x_165) + 1.0f);
  let x_174 : vec3<f32> = u_xlat3;
  let x_177 : f32 = x_44.x_GlobalMipBias.x;
  let x_178 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_174.x, x_174.z), x_177);
  u_xlat23 = x_178.x;
  let x_180 : f32 = u_xlat23;
  u_xlat3.x = (x_180 + -1.0f);
  let x_186 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_188 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_186 * x_188) + 1.0f);
  let x_192 : f32 = u_xlat23;
  u_xlat23 = min(x_192, 1.0f);
  let x_196 : vec4<f32> = vs_TEXCOORD6;
  let x_197 : vec2<f32> = vec2<f32>(x_196.x, x_196.y);
  let x_199 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_197.x, x_197.y, x_199);
  let x_212 : vec3<f32> = txVec0;
  let x_214 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_212.xy, x_212.z);
  u_xlat10.x = x_214;
  let x_223 : f32 = x_221.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_223) + 1.0f);
  let x_227 : f32 = u_xlat10.x;
  let x_229 : f32 = x_221.x_MainLightShadowParams.x;
  let x_231 : f32 = u_xlat17;
  u_xlat10.x = ((x_227 * x_229) + x_231);
  let x_238 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_238);
  let x_242 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (x_242 >= 1.0f);
  let x_244 : bool = u_xlatb24;
  let x_245 : bool = u_xlatb17;
  u_xlatb17 = (x_244 | x_245);
  let x_247 : bool = u_xlatb17;
  if (x_247) {
    x_248 = 1.0f;
  } else {
    let x_253 : f32 = u_xlat10.x;
    x_248 = x_253;
  }
  let x_254 : f32 = x_248;
  u_xlat10.x = x_254;
  let x_257 : vec3<f32> = vs_TEXCOORD1;
  let x_261 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat4 = (x_257 + -(x_261));
  let x_264 : vec3<f32> = u_xlat4;
  let x_265 : vec3<f32> = u_xlat4;
  u_xlat17 = dot(x_264, x_265);
  let x_267 : f32 = u_xlat17;
  let x_269 : f32 = x_221.x_MainLightShadowParams.z;
  let x_272 : f32 = x_221.x_MainLightShadowParams.w;
  u_xlat17 = ((x_267 * x_269) + x_272);
  let x_274 : f32 = u_xlat17;
  u_xlat17 = clamp(x_274, 0.0f, 1.0f);
  let x_278 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_278) + 1.0f);
  let x_281 : f32 = u_xlat17;
  let x_282 : f32 = u_xlat24;
  let x_285 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_281 * x_282) + x_285);
  let x_288 : vec3<f32> = u_xlat3;
  let x_291 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat4 = (vec3<f32>(x_288.x, x_288.x, x_288.x) * vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : f32 = u_xlat23;
  let x_296 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_294, x_294, x_294) * x_296);
  let x_299 : f32 = u_xlat10.x;
  let x_306 : f32 = x_303.unity_LightData.z;
  u_xlat23 = (x_299 * x_306);
  let x_308 : f32 = u_xlat23;
  let x_310 : vec3<f32> = u_xlat4;
  u_xlat10 = (vec3<f32>(x_308, x_308, x_308) * x_310);
  let x_312 : vec3<f32> = u_xlat1;
  let x_314 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat23 = dot(x_312, vec3<f32>(x_314.x, x_314.y, x_314.z));
  let x_317 : f32 = u_xlat23;
  u_xlat23 = clamp(x_317, 0.0f, 1.0f);
  let x_319 : f32 = u_xlat23;
  let x_321 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_319, x_319, x_319) * x_321);
  let x_323 : vec4<f32> = u_xlat0;
  let x_325 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_323.y, x_323.z, x_323.w) * x_325);
  let x_328 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_330 : f32 = x_303.unity_LightData.y;
  u_xlat23 = min(x_328, x_330);
  let x_334 : f32 = u_xlat23;
  u_xlatu23 = bitcast<u32>(i32(x_334));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_346 : u32 = u_xlatu_loop_1;
    let x_347 : u32 = u_xlatu23;
    if ((x_346 < x_347)) {
    } else {
      break;
    }
    let x_350 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_350 >> 2u);
    let x_354 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_354 & 3u));
    let x_358 : u32 = u_xlatu5;
    let x_361 : vec4<f32> = x_303.unity_LightIndices[bitcast<i32>(x_358)];
    let x_371 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_376 : vec4<u32> = indexable[x_371];
    u_xlat5.x = dot(x_361, bitcast<vec4<f32>>(x_376));
    let x_382 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_382);
    let x_385 : vec3<f32> = vs_TEXCOORD1;
    let x_397 : i32 = u_xlati5;
    let x_399 : vec4<f32> = x_396.x_AdditionalLightsPosition[x_397];
    let x_402 : i32 = u_xlati5;
    let x_404 : vec4<f32> = x_396.x_AdditionalLightsPosition[x_402];
    u_xlat12 = ((-(x_385) * vec3<f32>(x_399.w, x_399.w, x_399.w)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
    let x_408 : vec3<f32> = u_xlat12;
    let x_409 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_408, x_409);
    let x_413 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_413, 6.10351562e-05f);
    let x_419 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_419);
    let x_422 : vec3<f32> = u_xlat12;
    let x_423 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_422 * vec3<f32>(x_423.x, x_423.x, x_423.x));
    let x_427 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_427);
    let x_431 : f32 = u_xlat6.x;
    let x_432 : i32 = u_xlati5;
    let x_434 : f32 = x_396.x_AdditionalLightsAttenuation[x_432].x;
    u_xlat6.x = (x_431 * x_434);
    let x_438 : f32 = u_xlat6.x;
    let x_441 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_438) * x_441) + 1.0f);
    let x_446 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_446, 0.0f);
    let x_450 : f32 = u_xlat6.x;
    let x_452 : f32 = u_xlat6.x;
    u_xlat6.x = (x_450 * x_452);
    let x_456 : f32 = u_xlat6.x;
    let x_458 : f32 = u_xlat13.x;
    u_xlat6.x = (x_456 * x_458);
    let x_461 : i32 = u_xlati5;
    let x_463 : vec4<f32> = x_396.x_AdditionalLightsSpotDir[x_461];
    let x_465 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_463.x, x_463.y, x_463.z), x_465);
    let x_469 : f32 = u_xlat13.x;
    let x_470 : i32 = u_xlati5;
    let x_472 : f32 = x_396.x_AdditionalLightsAttenuation[x_470].z;
    let x_474 : i32 = u_xlati5;
    let x_476 : f32 = x_396.x_AdditionalLightsAttenuation[x_474].w;
    u_xlat13.x = ((x_469 * x_472) + x_476);
    let x_480 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_480, 0.0f, 1.0f);
    let x_484 : f32 = u_xlat13.x;
    let x_486 : f32 = u_xlat13.x;
    u_xlat13.x = (x_484 * x_486);
    let x_490 : f32 = u_xlat13.x;
    let x_492 : f32 = u_xlat6.x;
    u_xlat6.x = (x_490 * x_492);
    let x_495 : vec3<f32> = u_xlat3;
    let x_497 : i32 = u_xlati5;
    let x_499 : vec4<f32> = x_396.x_AdditionalLightsColor[x_497];
    u_xlat13 = (vec3<f32>(x_495.x, x_495.x, x_495.x) * vec3<f32>(x_499.x, x_499.y, x_499.z));
    let x_502 : vec3<f32> = u_xlat6;
    let x_504 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_502.x, x_502.x, x_502.x) * x_504);
    let x_506 : vec3<f32> = u_xlat1;
    let x_507 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(x_506, x_507);
    let x_511 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_511, 0.0f, 1.0f);
    let x_514 : vec3<f32> = u_xlat5;
    let x_516 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_514.x, x_514.x, x_514.x) * x_516);
    let x_518 : vec3<f32> = u_xlat5;
    let x_519 : vec4<f32> = u_xlat0;
    let x_522 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_518 * vec3<f32>(x_519.y, x_519.z, x_519.w)) + x_522);

    continuing {
      let x_524 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_524 + bitcast<u32>(1i));
    }
  }
  let x_527 : vec3<f32> = u_xlat2;
  let x_528 : vec4<f32> = u_xlat0;
  let x_531 : vec3<f32> = u_xlat10;
  u_xlat7 = ((x_527 * vec3<f32>(x_528.y, x_528.z, x_528.w)) + x_531);
  let x_533 : vec3<f32> = u_xlat4;
  let x_534 : vec3<f32> = u_xlat7;
  u_xlat7 = (x_533 + x_534);
  let x_536 : f32 = u_xlat22;
  let x_537 : f32 = u_xlat22;
  u_xlat1.x = (x_536 * -(x_537));
  let x_542 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_542);
  let x_545 : vec3<f32> = u_xlat7;
  let x_548 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_545 + -(vec3<f32>(x_548.x, x_548.y, x_548.z)));
  let x_554 : vec3<f32> = u_xlat1;
  let x_556 : vec3<f32> = u_xlat7;
  let x_559 : vec4<f32> = x_44.unity_FogColor;
  let x_561 : vec3<f32> = ((vec3<f32>(x_554.x, x_554.x, x_554.x) * x_556) + vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_566 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_566 == 1.0f);
  let x_568 : bool = u_xlatb7;
  if (x_568) {
    let x_573 : f32 = u_xlat0.x;
    x_569 = x_573;
  } else {
    x_569 = 1.0f;
  }
  let x_575 : f32 = x_569;
  SV_Target0.w = x_575;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

