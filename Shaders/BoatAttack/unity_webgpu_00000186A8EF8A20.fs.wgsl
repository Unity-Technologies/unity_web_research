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

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_87 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_245 : MainLightShadows;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_434 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb10 : bool;
  var u_xlatb17 : bool;
  var x_275 : f32;
  var u_xlat17 : f32;
  var u_xlatu22 : u32;
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
  var x_563 : f32;
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
  let x_64 : vec3<f32> = vs_TEXCOORD2;
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_64, x_65);
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_70);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec3<f32> = vs_TEXCOORD2;
  let x_76 : vec3<f32> = (vec3<f32>(x_73.x, x_73.x, x_73.x) * x_75);
  let x_77 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  u_xlat1.w = 1.0f;
  let x_90 : vec4<f32> = x_87.unity_SHAr;
  let x_91 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_90, x_91);
  let x_96 : vec4<f32> = x_87.unity_SHAg;
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_96, x_97);
  let x_103 : vec4<f32> = x_87.unity_SHAb;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_103, x_104);
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_108.y, x_108.z, x_108.z, x_108.x) * vec4<f32>(x_110.x, x_110.y, x_110.z, x_110.z));
  let x_116 : vec4<f32> = x_87.unity_SHBr;
  let x_117 : vec4<f32> = u_xlat3;
  u_xlat4.x = dot(x_116, x_117);
  let x_122 : vec4<f32> = x_87.unity_SHBg;
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat4.y = dot(x_122, x_123);
  let x_128 : vec4<f32> = x_87.unity_SHBb;
  let x_129 : vec4<f32> = u_xlat3;
  u_xlat4.z = dot(x_128, x_129);
  let x_134 : f32 = u_xlat1.y;
  let x_136 : f32 = u_xlat1.y;
  u_xlat22 = (x_134 * x_136);
  let x_139 : f32 = u_xlat1.x;
  let x_141 : f32 = u_xlat1.x;
  let x_143 : f32 = u_xlat22;
  u_xlat22 = ((x_139 * x_141) + -(x_143));
  let x_148 : vec4<f32> = x_87.unity_SHC;
  let x_150 : f32 = u_xlat22;
  let x_153 : vec3<f32> = u_xlat4;
  let x_154 : vec3<f32> = ((vec3<f32>(x_148.x, x_148.y, x_148.z) * vec3<f32>(x_150, x_150, x_150)) + x_153);
  let x_155 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_154.x, x_154.y, x_154.z, x_155.w);
  let x_157 : vec3<f32> = u_xlat2;
  let x_158 : vec4<f32> = u_xlat3;
  u_xlat2 = (x_157 + vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_161 : vec3<f32> = u_xlat2;
  u_xlat2 = max(x_161, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_168 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_169 : vec2<f32> = vec2<f32>(x_168.x, x_168.y);
  let x_173 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_169.x, x_169.y));
  let x_174 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_173.x, x_173.y, x_174.z, x_174.w);
  let x_176 : vec4<f32> = u_xlat3;
  let x_178 : vec4<f32> = hlslcc_FragCoord;
  let x_180 : vec2<f32> = (vec2<f32>(x_176.x, x_176.y) * vec2<f32>(x_178.x, x_178.y));
  let x_181 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_180.x, x_180.y, x_181.z, x_181.w);
  let x_184 : f32 = u_xlat3.y;
  let x_187 : f32 = x_43.x_ScaleBiasRt.x;
  let x_190 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat22 = ((x_184 * x_187) + x_190);
  let x_192 : f32 = u_xlat22;
  u_xlat3.z = (-(x_192) + 1.0f);
  let x_201 : vec4<f32> = u_xlat3;
  let x_204 : f32 = x_43.x_GlobalMipBias.x;
  let x_205 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_201.x, x_201.z), x_204);
  u_xlat22 = x_205.x;
  let x_208 : f32 = u_xlat22;
  u_xlat23 = (x_208 + -1.0f);
  let x_213 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_214 : f32 = u_xlat23;
  u_xlat23 = ((x_213 * x_214) + 1.0f);
  let x_217 : f32 = u_xlat22;
  u_xlat22 = min(x_217, 1.0f);
  let x_221 : vec4<f32> = vs_TEXCOORD6;
  let x_222 : vec2<f32> = vec2<f32>(x_221.x, x_221.y);
  let x_224 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_222.x, x_222.y, x_224);
  let x_236 : vec3<f32> = txVec0;
  let x_238 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_236.xy, x_236.z);
  u_xlat3.x = x_238;
  let x_248 : f32 = x_245.x_MainLightShadowParams.x;
  u_xlat10.x = (-(x_248) + 1.0f);
  let x_253 : f32 = u_xlat3.x;
  let x_255 : f32 = x_245.x_MainLightShadowParams.x;
  let x_258 : f32 = u_xlat10.x;
  u_xlat3.x = ((x_253 * x_255) + x_258);
  let x_265 : f32 = vs_TEXCOORD6.z;
  u_xlatb10 = (0.0f >= x_265);
  let x_269 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (x_269 >= 1.0f);
  let x_271 : bool = u_xlatb17;
  let x_272 : bool = u_xlatb10;
  u_xlatb10 = (x_271 | x_272);
  let x_274 : bool = u_xlatb10;
  if (x_274) {
    x_275 = 1.0f;
  } else {
    let x_280 : f32 = u_xlat3.x;
    x_275 = x_280;
  }
  let x_281 : f32 = x_275;
  u_xlat3.x = x_281;
  let x_284 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat10 = (x_284 + -(x_288));
  let x_291 : vec3<f32> = u_xlat10;
  let x_292 : vec3<f32> = u_xlat10;
  u_xlat10.x = dot(x_291, x_292);
  let x_296 : f32 = u_xlat10.x;
  let x_298 : f32 = x_245.x_MainLightShadowParams.z;
  let x_301 : f32 = x_245.x_MainLightShadowParams.w;
  u_xlat10.x = ((x_296 * x_298) + x_301);
  let x_305 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_305, 0.0f, 1.0f);
  let x_310 : f32 = u_xlat3.x;
  u_xlat17 = (-(x_310) + 1.0f);
  let x_314 : f32 = u_xlat10.x;
  let x_315 : f32 = u_xlat17;
  let x_318 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_314 * x_315) + x_318);
  let x_321 : f32 = u_xlat23;
  let x_325 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat10 = (vec3<f32>(x_321, x_321, x_321) * vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat22;
  let x_330 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_328, x_328, x_328) * x_330);
  let x_333 : f32 = u_xlat3.x;
  let x_336 : f32 = x_87.unity_LightData.z;
  u_xlat22 = (x_333 * x_336);
  let x_338 : f32 = u_xlat22;
  let x_340 : vec3<f32> = u_xlat10;
  let x_341 : vec3<f32> = (vec3<f32>(x_338, x_338, x_338) * x_340);
  let x_342 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_344 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_344.x, x_344.y, x_344.z), vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : f32 = u_xlat22;
  u_xlat22 = clamp(x_351, 0.0f, 1.0f);
  let x_353 : f32 = u_xlat22;
  let x_355 : vec4<f32> = u_xlat3;
  let x_357 : vec3<f32> = (vec3<f32>(x_353, x_353, x_353) * vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec4<f32> = u_xlat0;
  let x_362 : vec4<f32> = u_xlat3;
  let x_364 : vec3<f32> = (vec3<f32>(x_360.y, x_360.z, x_360.w) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_368 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_370 : f32 = x_87.unity_LightData.y;
  u_xlat22 = min(x_368, x_370);
  let x_374 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_374));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_386 : u32 = u_xlatu_loop_1;
    let x_387 : u32 = u_xlatu22;
    if ((x_386 < x_387)) {
    } else {
      break;
    }
    let x_390 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_390 >> 2u);
    let x_394 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_394 & 3u));
    let x_398 : u32 = u_xlatu25;
    let x_401 : vec4<f32> = x_87.unity_LightIndices[bitcast<i32>(x_398)];
    let x_411 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_416 : vec4<u32> = indexable[x_411];
    u_xlat25 = dot(x_401, bitcast<vec4<f32>>(x_416));
    let x_420 : f32 = u_xlat25;
    u_xlati25 = i32(x_420);
    let x_423 : vec3<f32> = vs_TEXCOORD1;
    let x_435 : i32 = u_xlati25;
    let x_437 : vec4<f32> = x_434.x_AdditionalLightsPosition[x_435];
    let x_440 : i32 = u_xlati25;
    let x_442 : vec4<f32> = x_434.x_AdditionalLightsPosition[x_440];
    u_xlat5 = ((-(x_423) * vec3<f32>(x_437.w, x_437.w, x_437.w)) + vec3<f32>(x_442.x, x_442.y, x_442.z));
    let x_446 : vec3<f32> = u_xlat5;
    let x_447 : vec3<f32> = u_xlat5;
    u_xlat26 = dot(x_446, x_447);
    let x_449 : f32 = u_xlat26;
    u_xlat26 = max(x_449, 6.10351562e-05f);
    let x_453 : f32 = u_xlat26;
    u_xlat6.x = inverseSqrt(x_453);
    let x_456 : vec3<f32> = u_xlat5;
    let x_457 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_456 * vec3<f32>(x_457.x, x_457.x, x_457.x));
    let x_460 : f32 = u_xlat26;
    u_xlat6.x = (1.0f / x_460);
    let x_463 : f32 = u_xlat26;
    let x_464 : i32 = u_xlati25;
    let x_466 : f32 = x_434.x_AdditionalLightsAttenuation[x_464].x;
    u_xlat26 = (x_463 * x_466);
    let x_468 : f32 = u_xlat26;
    let x_470 : f32 = u_xlat26;
    u_xlat26 = ((-(x_468) * x_470) + 1.0f);
    let x_473 : f32 = u_xlat26;
    u_xlat26 = max(x_473, 0.0f);
    let x_475 : f32 = u_xlat26;
    let x_476 : f32 = u_xlat26;
    u_xlat26 = (x_475 * x_476);
    let x_478 : f32 = u_xlat26;
    let x_480 : f32 = u_xlat6.x;
    u_xlat26 = (x_478 * x_480);
    let x_482 : i32 = u_xlati25;
    let x_484 : vec4<f32> = x_434.x_AdditionalLightsSpotDir[x_482];
    let x_486 : vec3<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_484.x, x_484.y, x_484.z), x_486);
    let x_490 : f32 = u_xlat6.x;
    let x_491 : i32 = u_xlati25;
    let x_493 : f32 = x_434.x_AdditionalLightsAttenuation[x_491].z;
    let x_495 : i32 = u_xlati25;
    let x_497 : f32 = x_434.x_AdditionalLightsAttenuation[x_495].w;
    u_xlat6.x = ((x_490 * x_493) + x_497);
    let x_501 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_501, 0.0f, 1.0f);
    let x_505 : f32 = u_xlat6.x;
    let x_507 : f32 = u_xlat6.x;
    u_xlat6.x = (x_505 * x_507);
    let x_510 : f32 = u_xlat26;
    let x_512 : f32 = u_xlat6.x;
    u_xlat26 = (x_510 * x_512);
    let x_514 : f32 = u_xlat23;
    let x_516 : i32 = u_xlati25;
    let x_518 : vec4<f32> = x_434.x_AdditionalLightsColor[x_516];
    u_xlat6 = (vec3<f32>(x_514, x_514, x_514) * vec3<f32>(x_518.x, x_518.y, x_518.z));
    let x_521 : f32 = u_xlat26;
    let x_523 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_521, x_521, x_521) * x_523);
    let x_525 : vec4<f32> = u_xlat1;
    let x_527 : vec3<f32> = u_xlat5;
    u_xlat25 = dot(vec3<f32>(x_525.x, x_525.y, x_525.z), x_527);
    let x_529 : f32 = u_xlat25;
    u_xlat25 = clamp(x_529, 0.0f, 1.0f);
    let x_531 : f32 = u_xlat25;
    let x_533 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_531, x_531, x_531) * x_533);
    let x_535 : vec3<f32> = u_xlat5;
    let x_536 : vec4<f32> = u_xlat0;
    let x_539 : vec3<f32> = u_xlat4;
    u_xlat4 = ((x_535 * vec3<f32>(x_536.y, x_536.z, x_536.w)) + x_539);

    continuing {
      let x_541 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_541 + bitcast<u32>(1i));
    }
  }
  let x_544 : vec3<f32> = u_xlat2;
  let x_545 : vec4<f32> = u_xlat0;
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat7 = ((x_544 * vec3<f32>(x_545.y, x_545.z, x_545.w)) + vec3<f32>(x_548.x, x_548.y, x_548.z));
  let x_553 : vec3<f32> = u_xlat4;
  let x_554 : vec3<f32> = u_xlat7;
  let x_555 : vec3<f32> = (x_553 + x_554);
  let x_556 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_560 : f32 = x_55.x_Surface;
  u_xlatb7 = (x_560 == 1.0f);
  let x_562 : bool = u_xlatb7;
  if (x_562) {
    let x_567 : f32 = u_xlat0.x;
    x_563 = x_567;
  } else {
    x_563 = 1.0f;
  }
  let x_569 : f32 = x_563;
  SV_Target0.w = x_569;
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

