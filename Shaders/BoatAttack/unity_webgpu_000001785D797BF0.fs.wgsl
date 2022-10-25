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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_330 : UnityPerDraw;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_492 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_722 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat30 : f32;
  var u_xlatb20 : bool;
  var x_131 : f32;
  var u_xlatb10 : bool;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat32 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat34 : f32;
  var u_xlatb34 : bool;
  var u_xlatb5 : bool;
  var u_xlat7 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var u_xlat35 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati35 : i32;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var x_918 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_57.x_BaseColor.w;
  let x_91 : f32 = x_57.x_Cutoff;
  u_xlat10.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat20 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat30 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat30;
  let x_105 : f32 = u_xlat20;
  u_xlat20 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat20;
  u_xlat20 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat10.x;
  let x_113 : f32 = u_xlat20;
  u_xlat10.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat10.x;
  u_xlat10.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_122, 0.0f, 1.0f);
  let x_128 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb20 = !((x_128 == 0.0f));
  let x_130 : bool = u_xlatb20;
  if (x_130) {
    let x_135 : f32 = u_xlat10.x;
    x_131 = x_135;
  } else {
    let x_138 : f32 = u_xlat0.x;
    x_131 = x_138;
  }
  let x_139 : f32 = x_131;
  u_xlat0.x = x_139;
  let x_142 : f32 = u_xlat0.x;
  u_xlat10.x = (x_142 + -0.0001f);
  let x_148 : f32 = u_xlat10.x;
  u_xlatb10 = (x_148 < 0.0f);
  let x_150 : bool = u_xlatb10;
  if (((select(0i, 1i, x_150) * -1i) != 0i)) {
    discard;
  }
  let x_165 : vec2<f32> = vs_TEXCOORD0;
  let x_167 : f32 = x_44.x_GlobalMipBias.x;
  let x_168 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_165, x_167);
  let x_169 : vec3<f32> = vec3<f32>(x_168.x, x_168.y, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_173 : f32 = u_xlat2.x;
  let x_176 : f32 = u_xlat2.z;
  u_xlat2.x = (x_173 * x_176);
  let x_179 : vec4<f32> = u_xlat2;
  let x_186 : vec2<f32> = ((vec2<f32>(x_179.x, x_179.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_187 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_186.x, x_187.y, x_186.y);
  let x_189 : vec3<f32> = u_xlat10;
  let x_191 : vec3<f32> = u_xlat10;
  u_xlat1.x = dot(vec2<f32>(x_189.x, x_189.z), vec2<f32>(x_191.x, x_191.z));
  let x_196 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_196, 1.0f);
  let x_200 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_200) + 1.0f);
  let x_205 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_205);
  let x_209 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_209, 1.00000002e-16f);
  let x_213 : vec3<f32> = u_xlat10;
  let x_216 : vec4<f32> = vs_TEXCOORD4;
  let x_218 : vec3<f32> = (vec3<f32>(x_213.z, x_213.z, x_213.z) * vec3<f32>(x_216.x, x_216.y, x_216.z));
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat10;
  let x_224 : vec4<f32> = vs_TEXCOORD3;
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.x, x_221.x) * vec3<f32>(x_224.x, x_224.y, x_224.z)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec4<f32> = u_xlat1;
  let x_235 : vec4<f32> = vs_TEXCOORD2;
  let x_238 : vec4<f32> = u_xlat2;
  let x_240 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.x, x_232.x) * vec3<f32>(x_235.x, x_235.y, x_235.z)) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  let x_243 : vec4<f32> = u_xlat2;
  let x_245 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_243.x, x_243.y, x_243.z), vec3<f32>(x_245.x, x_245.y, x_245.z));
  let x_250 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_250);
  let x_253 : vec3<f32> = u_xlat10;
  let x_255 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = (vec3<f32>(x_253.x, x_253.x, x_253.x) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_262;
  let x_265 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_265;
  let x_269 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_269;
  let x_271 : vec3<f32> = u_xlat3;
  let x_272 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_271, x_272);
  let x_276 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_276, 1.17549435e-37f);
  let x_281 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_281);
  let x_287 : f32 = vs_TEXCOORD1.y;
  let x_290 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_287 * x_290);
  let x_293 : f32 = x_44.unity_MatrixV[0i].z;
  let x_295 : f32 = vs_TEXCOORD1.x;
  let x_297 : f32 = u_xlat30;
  u_xlat30 = ((x_293 * x_295) + x_297);
  let x_300 : f32 = x_44.unity_MatrixV[2i].z;
  let x_302 : f32 = vs_TEXCOORD1.z;
  let x_304 : f32 = u_xlat30;
  u_xlat30 = ((x_300 * x_302) + x_304);
  let x_306 : f32 = u_xlat30;
  let x_309 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_306 + x_309);
  let x_311 : f32 = u_xlat30;
  let x_315 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_311) + -(x_315));
  let x_318 : f32 = u_xlat30;
  u_xlat30 = max(x_318, 0.0f);
  let x_320 : f32 = u_xlat30;
  let x_323 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_320 * x_323);
  u_xlat2.w = 1.0f;
  let x_333 : vec4<f32> = x_330.unity_SHAr;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_333, x_334);
  let x_339 : vec4<f32> = x_330.unity_SHAg;
  let x_340 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_339, x_340);
  let x_345 : vec4<f32> = x_330.unity_SHAb;
  let x_346 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_345, x_346);
  let x_350 : vec4<f32> = u_xlat2;
  let x_352 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_350.y, x_350.z, x_350.z, x_350.x) * vec4<f32>(x_352.x, x_352.y, x_352.z, x_352.z));
  let x_358 : vec4<f32> = x_330.unity_SHBr;
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_358, x_359);
  let x_364 : vec4<f32> = x_330.unity_SHBg;
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_364, x_365);
  let x_370 : vec4<f32> = x_330.unity_SHBb;
  let x_371 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_370, x_371);
  let x_375 : f32 = u_xlat2.y;
  let x_377 : f32 = u_xlat2.y;
  u_xlat1.x = (x_375 * x_377);
  let x_381 : f32 = u_xlat2.x;
  let x_383 : f32 = u_xlat2.x;
  let x_386 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_381 * x_383) + -(x_386));
  let x_392 : vec4<f32> = x_330.unity_SHC;
  let x_394 : vec4<f32> = u_xlat1;
  let x_397 : vec3<f32> = u_xlat6;
  let x_398 : vec3<f32> = ((vec3<f32>(x_392.x, x_392.y, x_392.z) * vec3<f32>(x_394.x, x_394.x, x_394.x)) + x_397);
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec3<f32> = u_xlat4;
  let x_402 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_401 + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_405, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_410 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_411 : vec2<f32> = vec2<f32>(x_410.x, x_410.y);
  let x_415 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_411.x, x_411.y));
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_415.x, x_415.y, x_416.z, x_416.w);
  let x_418 : vec4<f32> = u_xlat5;
  let x_420 : vec4<f32> = hlslcc_FragCoord;
  let x_422 : vec2<f32> = (vec2<f32>(x_418.x, x_418.y) * vec2<f32>(x_420.x, x_420.y));
  let x_423 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  let x_426 : f32 = u_xlat5.y;
  let x_429 : f32 = x_44.x_ScaleBiasRt.x;
  let x_432 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_426 * x_429) + x_432);
  let x_436 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_436) + 1.0f);
  let x_445 : vec4<f32> = u_xlat5;
  let x_448 : f32 = x_44.x_GlobalMipBias.x;
  let x_449 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_445.x, x_445.z), x_448);
  u_xlat1.x = x_449.x;
  let x_454 : f32 = u_xlat1.x;
  u_xlat32 = (x_454 + -1.0f);
  let x_458 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_459 : f32 = u_xlat32;
  u_xlat32 = ((x_458 * x_459) + 1.0f);
  let x_463 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_463, 1.0f);
  let x_468 : vec4<f32> = vs_TEXCOORD6;
  let x_469 : vec2<f32> = vec2<f32>(x_468.x, x_468.y);
  let x_471 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_469.x, x_469.y, x_471);
  let x_484 : vec3<f32> = txVec0;
  let x_486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_484.xy, x_484.z);
  u_xlat33 = x_486;
  let x_494 : f32 = x_492.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_494) + 1.0f);
  let x_497 : f32 = u_xlat33;
  let x_499 : f32 = x_492.x_MainLightShadowParams.x;
  let x_501 : f32 = u_xlat34;
  u_xlat33 = ((x_497 * x_499) + x_501);
  let x_505 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_505);
  let x_509 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_509 >= 1.0f);
  let x_511 : bool = u_xlatb34;
  let x_512 : bool = u_xlatb5;
  u_xlatb34 = (x_511 | x_512);
  let x_514 : bool = u_xlatb34;
  let x_515 : f32 = u_xlat33;
  u_xlat33 = select(x_515, 1.0f, x_514);
  let x_517 : vec3<f32> = vs_TEXCOORD1;
  let x_521 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_523 : vec3<f32> = (x_517 + -(x_521));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_526 : vec4<f32> = u_xlat5;
  let x_528 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_526.x, x_526.y, x_526.z), vec3<f32>(x_528.x, x_528.y, x_528.z));
  let x_531 : f32 = u_xlat34;
  let x_533 : f32 = x_492.x_MainLightShadowParams.z;
  let x_536 : f32 = x_492.x_MainLightShadowParams.w;
  u_xlat34 = ((x_531 * x_533) + x_536);
  let x_538 : f32 = u_xlat34;
  u_xlat34 = clamp(x_538, 0.0f, 1.0f);
  let x_540 : f32 = u_xlat33;
  u_xlat5.x = (-(x_540) + 1.0f);
  let x_544 : f32 = u_xlat34;
  let x_546 : f32 = u_xlat5.x;
  let x_548 : f32 = u_xlat33;
  u_xlat33 = ((x_544 * x_546) + x_548);
  let x_550 : f32 = u_xlat32;
  let x_553 : vec4<f32> = x_44.x_MainLightColor;
  let x_555 : vec3<f32> = (vec3<f32>(x_550, x_550, x_550) * vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_558.x, x_558.x, x_558.x) * x_560);
  let x_562 : f32 = u_xlat33;
  let x_564 : f32 = x_330.unity_LightData.z;
  u_xlat1.x = (x_562 * x_564);
  let x_567 : vec4<f32> = u_xlat1;
  let x_569 : vec4<f32> = u_xlat5;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.x, x_567.x) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat2;
  let x_577 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_574.x, x_574.y, x_574.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_582 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_582, 0.0f, 1.0f);
  let x_585 : vec4<f32> = u_xlat1;
  let x_587 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_585.x, x_585.x, x_585.x) * vec3<f32>(x_587.x, x_587.y, x_587.z));
  let x_591 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_591 * 10.0f) + 1.0f);
  let x_597 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_597);
  let x_601 : vec3<f32> = u_xlat3;
  let x_602 : vec3<f32> = u_xlat10;
  let x_606 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_601 * vec3<f32>(x_602.x, x_602.x, x_602.x)) + vec3<f32>(x_606.x, x_606.y, x_606.z));
  let x_609 : vec3<f32> = u_xlat7;
  let x_610 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_609, x_610);
  let x_612 : f32 = u_xlat33;
  u_xlat33 = max(x_612, 1.17549435e-37f);
  let x_614 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_614);
  let x_616 : f32 = u_xlat33;
  let x_618 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_616, x_616, x_616) * x_618);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_620.x, x_620.y, x_620.z), x_622);
  let x_624 : f32 = u_xlat33;
  u_xlat33 = clamp(x_624, 0.0f, 1.0f);
  let x_626 : f32 = u_xlat33;
  u_xlat33 = log2(x_626);
  let x_629 : f32 = u_xlat1.x;
  let x_630 : f32 = u_xlat33;
  u_xlat33 = (x_629 * x_630);
  let x_632 : f32 = u_xlat33;
  u_xlat33 = exp2(x_632);
  let x_634 : f32 = u_xlat33;
  let x_637 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_634, x_634, x_634) * vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat5;
  let x_642 : vec3<f32> = u_xlat7;
  let x_643 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642);
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_646 : vec3<f32> = u_xlat6;
  let x_647 : vec4<f32> = u_xlat1;
  let x_650 : vec4<f32> = u_xlat5;
  let x_652 : vec3<f32> = ((x_646 * vec3<f32>(x_647.y, x_647.z, x_647.w)) + vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_653 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
  let x_657 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_659 : f32 = x_330.unity_LightData.y;
  u_xlat33 = min(x_657, x_659);
  let x_663 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_663));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_675 : u32 = u_xlatu_loop_1;
    let x_676 : u32 = u_xlatu33;
    if ((x_675 < x_676)) {
    } else {
      break;
    }
    let x_679 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_679 >> 2u);
    let x_683 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_683 & 3u));
    let x_687 : u32 = u_xlatu35;
    let x_690 : vec4<f32> = x_330.unity_LightIndices[bitcast<i32>(x_687)];
    let x_700 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_705 : vec4<u32> = indexable[x_700];
    u_xlat35 = dot(x_690, bitcast<vec4<f32>>(x_705));
    let x_709 : f32 = u_xlat35;
    u_xlati35 = i32(x_709);
    let x_711 : vec3<f32> = vs_TEXCOORD1;
    let x_723 : i32 = u_xlati35;
    let x_725 : vec4<f32> = x_722.x_AdditionalLightsPosition[x_723];
    let x_728 : i32 = u_xlati35;
    let x_730 : vec4<f32> = x_722.x_AdditionalLightsPosition[x_728];
    u_xlat7 = ((-(x_711) * vec3<f32>(x_725.w, x_725.w, x_725.w)) + vec3<f32>(x_730.x, x_730.y, x_730.z));
    let x_734 : vec3<f32> = u_xlat7;
    let x_735 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_734, x_735);
    let x_737 : f32 = u_xlat36;
    u_xlat36 = max(x_737, 6.10351562e-05f);
    let x_741 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_741);
    let x_743 : f32 = u_xlat37;
    let x_745 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_743, x_743, x_743) * x_745);
    let x_747 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_747);
    let x_749 : f32 = u_xlat36;
    let x_750 : i32 = u_xlati35;
    let x_752 : f32 = x_722.x_AdditionalLightsAttenuation[x_750].x;
    u_xlat36 = (x_749 * x_752);
    let x_754 : f32 = u_xlat36;
    let x_756 : f32 = u_xlat36;
    u_xlat36 = ((-(x_754) * x_756) + 1.0f);
    let x_759 : f32 = u_xlat36;
    u_xlat36 = max(x_759, 0.0f);
    let x_761 : f32 = u_xlat36;
    let x_762 : f32 = u_xlat36;
    u_xlat36 = (x_761 * x_762);
    let x_764 : f32 = u_xlat36;
    let x_765 : f32 = u_xlat37;
    u_xlat36 = (x_764 * x_765);
    let x_767 : i32 = u_xlati35;
    let x_769 : vec4<f32> = x_722.x_AdditionalLightsSpotDir[x_767];
    let x_771 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), x_771);
    let x_773 : f32 = u_xlat37;
    let x_774 : i32 = u_xlati35;
    let x_776 : f32 = x_722.x_AdditionalLightsAttenuation[x_774].z;
    let x_778 : i32 = u_xlati35;
    let x_780 : f32 = x_722.x_AdditionalLightsAttenuation[x_778].w;
    u_xlat37 = ((x_773 * x_776) + x_780);
    let x_782 : f32 = u_xlat37;
    u_xlat37 = clamp(x_782, 0.0f, 1.0f);
    let x_784 : f32 = u_xlat37;
    let x_785 : f32 = u_xlat37;
    u_xlat37 = (x_784 * x_785);
    let x_787 : f32 = u_xlat36;
    let x_788 : f32 = u_xlat37;
    u_xlat36 = (x_787 * x_788);
    let x_791 : f32 = u_xlat32;
    let x_793 : i32 = u_xlati35;
    let x_795 : vec4<f32> = x_722.x_AdditionalLightsColor[x_793];
    u_xlat8 = (vec3<f32>(x_791, x_791, x_791) * vec3<f32>(x_795.x, x_795.y, x_795.z));
    let x_798 : f32 = u_xlat36;
    let x_800 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_798, x_798, x_798) * x_800);
    let x_802 : vec4<f32> = u_xlat2;
    let x_804 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_802.x, x_802.y, x_802.z), x_804);
    let x_806 : f32 = u_xlat35;
    u_xlat35 = clamp(x_806, 0.0f, 1.0f);
    let x_809 : f32 = u_xlat35;
    let x_811 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_809, x_809, x_809) * x_811);
    let x_813 : vec3<f32> = u_xlat3;
    let x_814 : vec3<f32> = u_xlat10;
    let x_817 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_813 * vec3<f32>(x_814.x, x_814.x, x_814.x)) + x_817);
    let x_819 : vec3<f32> = u_xlat7;
    let x_820 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_819, x_820);
    let x_822 : f32 = u_xlat35;
    u_xlat35 = max(x_822, 1.17549435e-37f);
    let x_824 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_824);
    let x_826 : f32 = u_xlat35;
    let x_828 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_826, x_826, x_826) * x_828);
    let x_830 : vec4<f32> = u_xlat2;
    let x_832 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
    let x_834 : f32 = u_xlat35;
    u_xlat35 = clamp(x_834, 0.0f, 1.0f);
    let x_836 : f32 = u_xlat35;
    u_xlat35 = log2(x_836);
    let x_839 : f32 = u_xlat1.x;
    let x_840 : f32 = u_xlat35;
    u_xlat35 = (x_839 * x_840);
    let x_842 : f32 = u_xlat35;
    u_xlat35 = exp2(x_842);
    let x_844 : f32 = u_xlat35;
    let x_847 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_844, x_844, x_844) * vec3<f32>(x_847.x, x_847.y, x_847.z));
    let x_850 : vec3<f32> = u_xlat7;
    let x_851 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_850 * x_851);
    let x_853 : vec3<f32> = u_xlat9;
    let x_854 : vec4<f32> = u_xlat1;
    let x_857 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_853 * vec3<f32>(x_854.y, x_854.z, x_854.w)) + x_857);
    let x_859 : vec3<f32> = u_xlat6;
    let x_860 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_859 + x_860);

    continuing {
      let x_862 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_862 + bitcast<u32>(1i));
    }
  }
  let x_864 : vec3<f32> = u_xlat4;
  let x_865 : vec4<f32> = u_xlat1;
  let x_868 : vec4<f32> = u_xlat5;
  let x_870 : vec3<f32> = ((x_864 * vec3<f32>(x_865.y, x_865.z, x_865.w)) + vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec3<f32> = u_xlat6;
  let x_874 : vec4<f32> = u_xlat1;
  let x_876 : vec3<f32> = (x_873 + vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : f32 = u_xlat30;
  let x_880 : f32 = u_xlat30;
  u_xlat10.x = (x_879 * -(x_880));
  let x_885 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_885);
  let x_888 : vec4<f32> = u_xlat1;
  let x_892 : vec4<f32> = x_44.unity_FogColor;
  let x_895 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) + -(vec3<f32>(x_892.x, x_892.y, x_892.z)));
  let x_896 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_900 : vec3<f32> = u_xlat10;
  let x_902 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = x_44.unity_FogColor;
  let x_908 : vec3<f32> = ((vec3<f32>(x_900.x, x_900.x, x_900.x) * vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_912 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_912 == 1.0f);
  let x_914 : bool = u_xlatb10;
  let x_915 : bool = u_xlatb20;
  u_xlatb10 = (x_914 | x_915);
  let x_917 : bool = u_xlatb10;
  if (x_917) {
    let x_922 : f32 = u_xlat0.x;
    x_918 = x_922;
  } else {
    x_918 = 1.0f;
  }
  let x_924 : f32 = x_918;
  SV_Target0.w = x_924;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

