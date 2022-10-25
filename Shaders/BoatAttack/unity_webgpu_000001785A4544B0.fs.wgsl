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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_132 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_288 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_465 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat9 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlat17 : f32;
  var u_xlatb17 : bool;
  var u_xlatb24 : bool;
  var x_315 : f32;
  var u_xlat24 : f32;
  var u_xlatu22 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati12 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat12 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb7 : bool;
  var x_643 : f32;
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
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec4<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  let x_77 : vec3<f32> = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_84 : f32 = vs_TEXCOORD1.y;
  let x_88 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_84 * x_88);
  let x_92 : f32 = x_44.unity_MatrixV[0i].z;
  let x_94 : f32 = vs_TEXCOORD1.x;
  let x_96 : f32 = u_xlat2;
  u_xlat2 = ((x_92 * x_94) + x_96);
  let x_100 : f32 = x_44.unity_MatrixV[2i].z;
  let x_102 : f32 = vs_TEXCOORD1.z;
  let x_104 : f32 = u_xlat2;
  u_xlat2 = ((x_100 * x_102) + x_104);
  let x_106 : f32 = u_xlat2;
  let x_109 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_106 + x_109);
  let x_111 : f32 = u_xlat2;
  let x_115 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_111) + -(x_115));
  let x_118 : f32 = u_xlat2;
  u_xlat2 = max(x_118, 0.0f);
  let x_121 : f32 = u_xlat2;
  let x_124 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_121 * x_124);
  u_xlat1.w = 1.0f;
  let x_135 : vec4<f32> = x_132.unity_SHAr;
  let x_136 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_135, x_136);
  let x_141 : vec4<f32> = x_132.unity_SHAg;
  let x_142 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_141, x_142);
  let x_147 : vec4<f32> = x_132.unity_SHAb;
  let x_148 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_147, x_148);
  let x_152 : vec4<f32> = u_xlat1;
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_152.y, x_152.z, x_152.z, x_152.x) * vec4<f32>(x_154.x, x_154.y, x_154.z, x_154.z));
  let x_160 : vec4<f32> = x_132.unity_SHBr;
  let x_161 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_160, x_161);
  let x_166 : vec4<f32> = x_132.unity_SHBg;
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_132.unity_SHBb;
  let x_173 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_172, x_173);
  let x_178 : f32 = u_xlat1.y;
  let x_180 : f32 = u_xlat1.y;
  u_xlat22 = (x_178 * x_180);
  let x_183 : f32 = u_xlat1.x;
  let x_185 : f32 = u_xlat1.x;
  let x_187 : f32 = u_xlat22;
  u_xlat22 = ((x_183 * x_185) + -(x_187));
  let x_193 : vec4<f32> = x_132.unity_SHC;
  let x_195 : f32 = u_xlat22;
  let x_198 : vec3<f32> = u_xlat5;
  u_xlat9 = ((vec3<f32>(x_193.x, x_193.y, x_193.z) * vec3<f32>(x_195, x_195, x_195)) + x_198);
  let x_200 : vec3<f32> = u_xlat9;
  let x_201 : vec3<f32> = u_xlat3;
  u_xlat9 = (x_200 + x_201);
  let x_203 : vec3<f32> = u_xlat9;
  u_xlat9 = max(x_203, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_208 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_209 : vec2<f32> = vec2<f32>(x_208.x, x_208.y);
  let x_213 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_209.x, x_209.y));
  let x_214 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_213.x, x_213.y, x_214.z);
  let x_216 : vec3<f32> = u_xlat3;
  let x_218 : vec4<f32> = hlslcc_FragCoord;
  let x_220 : vec2<f32> = (vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.x, x_218.y));
  let x_221 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_220.x, x_220.y, x_221.z);
  let x_224 : f32 = u_xlat3.y;
  let x_227 : f32 = x_44.x_ScaleBiasRt.x;
  let x_230 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat22 = ((x_224 * x_227) + x_230);
  let x_232 : f32 = u_xlat22;
  u_xlat3.z = (-(x_232) + 1.0f);
  let x_241 : vec3<f32> = u_xlat3;
  let x_244 : f32 = x_44.x_GlobalMipBias.x;
  let x_245 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_241.x, x_241.z), x_244);
  u_xlat22 = x_245.x;
  let x_247 : f32 = u_xlat22;
  u_xlat3.x = (x_247 + -1.0f);
  let x_253 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_255 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_253 * x_255) + 1.0f);
  let x_259 : f32 = u_xlat22;
  u_xlat22 = min(x_259, 1.0f);
  let x_263 : vec4<f32> = vs_TEXCOORD6;
  let x_264 : vec2<f32> = vec2<f32>(x_263.x, x_263.y);
  let x_266 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_264.x, x_264.y, x_266);
  let x_279 : vec3<f32> = txVec0;
  let x_281 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_279.xy, x_279.z);
  u_xlat10.x = x_281;
  let x_290 : f32 = x_288.x_MainLightShadowParams.x;
  u_xlat17 = (-(x_290) + 1.0f);
  let x_294 : f32 = u_xlat10.x;
  let x_296 : f32 = x_288.x_MainLightShadowParams.x;
  let x_298 : f32 = u_xlat17;
  u_xlat10.x = ((x_294 * x_296) + x_298);
  let x_305 : f32 = vs_TEXCOORD6.z;
  u_xlatb17 = (0.0f >= x_305);
  let x_309 : f32 = vs_TEXCOORD6.z;
  u_xlatb24 = (x_309 >= 1.0f);
  let x_311 : bool = u_xlatb24;
  let x_312 : bool = u_xlatb17;
  u_xlatb17 = (x_311 | x_312);
  let x_314 : bool = u_xlatb17;
  if (x_314) {
    x_315 = 1.0f;
  } else {
    let x_320 : f32 = u_xlat10.x;
    x_315 = x_320;
  }
  let x_321 : f32 = x_315;
  u_xlat10.x = x_321;
  let x_323 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_329 : vec3<f32> = (x_323 + -(x_327));
  let x_330 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat4;
  let x_334 : vec4<f32> = u_xlat4;
  u_xlat17 = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_337 : f32 = u_xlat17;
  let x_339 : f32 = x_288.x_MainLightShadowParams.z;
  let x_342 : f32 = x_288.x_MainLightShadowParams.w;
  u_xlat17 = ((x_337 * x_339) + x_342);
  let x_344 : f32 = u_xlat17;
  u_xlat17 = clamp(x_344, 0.0f, 1.0f);
  let x_348 : f32 = u_xlat10.x;
  u_xlat24 = (-(x_348) + 1.0f);
  let x_351 : f32 = u_xlat17;
  let x_352 : f32 = u_xlat24;
  let x_355 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_351 * x_352) + x_355);
  let x_358 : vec3<f32> = u_xlat3;
  let x_361 : vec4<f32> = x_44.x_MainLightColor;
  let x_363 : vec3<f32> = (vec3<f32>(x_358.x, x_358.x, x_358.x) * vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : f32 = u_xlat22;
  let x_368 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_371 : f32 = u_xlat10.x;
  let x_374 : f32 = x_132.unity_LightData.z;
  u_xlat22 = (x_371 * x_374);
  let x_376 : f32 = u_xlat22;
  let x_378 : vec4<f32> = u_xlat4;
  u_xlat10 = (vec3<f32>(x_376, x_376, x_376) * vec3<f32>(x_378.x, x_378.y, x_378.z));
  let x_381 : vec4<f32> = u_xlat1;
  let x_384 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat22 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : f32 = u_xlat22;
  u_xlat22 = clamp(x_387, 0.0f, 1.0f);
  let x_389 : f32 = u_xlat22;
  let x_391 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_389, x_389, x_389) * x_391);
  let x_393 : vec4<f32> = u_xlat0;
  let x_395 : vec3<f32> = u_xlat10;
  u_xlat10 = (vec3<f32>(x_393.y, x_393.z, x_393.w) * x_395);
  let x_398 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_400 : f32 = x_132.unity_LightData.y;
  u_xlat22 = min(x_398, x_400);
  let x_404 : f32 = u_xlat22;
  u_xlatu22 = bitcast<u32>(i32(x_404));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_416 : u32 = u_xlatu_loop_1;
    let x_417 : u32 = u_xlatu22;
    if ((x_416 < x_417)) {
    } else {
      break;
    }
    let x_420 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_420 >> 2u);
    let x_424 : u32 = u_xlatu_loop_1;
    u_xlati12 = bitcast<i32>((x_424 & 3u));
    let x_427 : u32 = u_xlatu5;
    let x_430 : vec4<f32> = x_132.unity_LightIndices[bitcast<i32>(x_427)];
    let x_440 : i32 = u_xlati12;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_445 : vec4<u32> = indexable[x_440];
    u_xlat5.x = dot(x_430, bitcast<vec4<f32>>(x_445));
    let x_451 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_451);
    let x_454 : vec3<f32> = vs_TEXCOORD1;
    let x_466 : i32 = u_xlati5;
    let x_468 : vec4<f32> = x_465.x_AdditionalLightsPosition[x_466];
    let x_471 : i32 = u_xlati5;
    let x_473 : vec4<f32> = x_465.x_AdditionalLightsPosition[x_471];
    u_xlat12 = ((-(x_454) * vec3<f32>(x_468.w, x_468.w, x_468.w)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
    let x_477 : vec3<f32> = u_xlat12;
    let x_478 : vec3<f32> = u_xlat12;
    u_xlat6.x = dot(x_477, x_478);
    let x_482 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_482, 6.10351562e-05f);
    let x_488 : f32 = u_xlat6.x;
    u_xlat13.x = inverseSqrt(x_488);
    let x_491 : vec3<f32> = u_xlat12;
    let x_492 : vec3<f32> = u_xlat13;
    u_xlat12 = (x_491 * vec3<f32>(x_492.x, x_492.x, x_492.x));
    let x_496 : f32 = u_xlat6.x;
    u_xlat13.x = (1.0f / x_496);
    let x_500 : f32 = u_xlat6.x;
    let x_501 : i32 = u_xlati5;
    let x_503 : f32 = x_465.x_AdditionalLightsAttenuation[x_501].x;
    u_xlat6.x = (x_500 * x_503);
    let x_507 : f32 = u_xlat6.x;
    let x_510 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_507) * x_510) + 1.0f);
    let x_515 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_515, 0.0f);
    let x_519 : f32 = u_xlat6.x;
    let x_521 : f32 = u_xlat6.x;
    u_xlat6.x = (x_519 * x_521);
    let x_525 : f32 = u_xlat6.x;
    let x_527 : f32 = u_xlat13.x;
    u_xlat6.x = (x_525 * x_527);
    let x_530 : i32 = u_xlati5;
    let x_532 : vec4<f32> = x_465.x_AdditionalLightsSpotDir[x_530];
    let x_534 : vec3<f32> = u_xlat12;
    u_xlat13.x = dot(vec3<f32>(x_532.x, x_532.y, x_532.z), x_534);
    let x_538 : f32 = u_xlat13.x;
    let x_539 : i32 = u_xlati5;
    let x_541 : f32 = x_465.x_AdditionalLightsAttenuation[x_539].z;
    let x_543 : i32 = u_xlati5;
    let x_545 : f32 = x_465.x_AdditionalLightsAttenuation[x_543].w;
    u_xlat13.x = ((x_538 * x_541) + x_545);
    let x_549 : f32 = u_xlat13.x;
    u_xlat13.x = clamp(x_549, 0.0f, 1.0f);
    let x_553 : f32 = u_xlat13.x;
    let x_555 : f32 = u_xlat13.x;
    u_xlat13.x = (x_553 * x_555);
    let x_559 : f32 = u_xlat13.x;
    let x_561 : f32 = u_xlat6.x;
    u_xlat6.x = (x_559 * x_561);
    let x_564 : vec3<f32> = u_xlat3;
    let x_566 : i32 = u_xlati5;
    let x_568 : vec4<f32> = x_465.x_AdditionalLightsColor[x_566];
    u_xlat13 = (vec3<f32>(x_564.x, x_564.x, x_564.x) * vec3<f32>(x_568.x, x_568.y, x_568.z));
    let x_571 : vec3<f32> = u_xlat6;
    let x_573 : vec3<f32> = u_xlat13;
    u_xlat6 = (vec3<f32>(x_571.x, x_571.x, x_571.x) * x_573);
    let x_575 : vec4<f32> = u_xlat1;
    let x_577 : vec3<f32> = u_xlat12;
    u_xlat5.x = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), x_577);
    let x_581 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_581, 0.0f, 1.0f);
    let x_584 : vec3<f32> = u_xlat5;
    let x_586 : vec3<f32> = u_xlat6;
    u_xlat5 = (vec3<f32>(x_584.x, x_584.x, x_584.x) * x_586);
    let x_588 : vec3<f32> = u_xlat5;
    let x_589 : vec4<f32> = u_xlat0;
    let x_592 : vec4<f32> = u_xlat4;
    let x_594 : vec3<f32> = ((x_588 * vec3<f32>(x_589.y, x_589.z, x_589.w)) + vec3<f32>(x_592.x, x_592.y, x_592.z));
    let x_595 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);

    continuing {
      let x_597 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_597 + bitcast<u32>(1i));
    }
  }
  let x_600 : vec3<f32> = u_xlat9;
  let x_601 : vec4<f32> = u_xlat0;
  let x_604 : vec3<f32> = u_xlat10;
  u_xlat7 = ((x_600 * vec3<f32>(x_601.y, x_601.z, x_601.w)) + x_604);
  let x_606 : vec4<f32> = u_xlat4;
  let x_608 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_606.x, x_606.y, x_606.z) + x_608);
  let x_610 : f32 = u_xlat2;
  let x_611 : f32 = u_xlat2;
  u_xlat1.x = (x_610 * -(x_611));
  let x_616 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_616);
  let x_619 : vec3<f32> = u_xlat7;
  let x_622 : vec4<f32> = x_44.unity_FogColor;
  u_xlat7 = (x_619 + -(vec3<f32>(x_622.x, x_622.y, x_622.z)));
  let x_628 : vec4<f32> = u_xlat1;
  let x_630 : vec3<f32> = u_xlat7;
  let x_633 : vec4<f32> = x_44.unity_FogColor;
  let x_635 : vec3<f32> = ((vec3<f32>(x_628.x, x_628.x, x_628.x) * x_630) + vec3<f32>(x_633.x, x_633.y, x_633.z));
  let x_636 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_635.x, x_635.y, x_635.z, x_636.w);
  let x_640 : f32 = x_56.x_Surface;
  u_xlatb7 = (x_640 == 1.0f);
  let x_642 : bool = u_xlatb7;
  if (x_642) {
    let x_647 : f32 = u_xlat0.x;
    x_643 = x_647;
  } else {
    x_643 = 1.0f;
  }
  let x_649 : f32 = x_643;
  SV_Target0.w = x_649;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

