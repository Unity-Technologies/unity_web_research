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
  x_DitheringTextureInvSize : f32,
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

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_238 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_549 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_779 : AdditionalLights;

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
  var u_xlatb12 : bool;
  var x_243 : f32;
  var u_xlatb2 : bool;
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
  var x_975 : f32;
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
  let x_213 : vec4<f32> = hlslcc_FragCoord;
  let x_217 : f32 = x_44.x_DitheringTextureInvSize;
  let x_219 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_217, x_217));
  let x_220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_220.w);
  let x_227 : vec4<f32> = u_xlat2;
  let x_230 : f32 = x_44.x_GlobalMipBias.x;
  let x_231 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_227.x, x_227.y), x_230);
  u_xlat2.x = x_231.w;
  let x_240 : f32 = x_238.unity_LODFade.x;
  u_xlatb12 = (x_240 >= 0.0f);
  let x_242 : bool = u_xlatb12;
  if (x_242) {
    let x_247 : f32 = u_xlat2.x;
    x_243 = abs(x_247);
  } else {
    let x_251 : f32 = u_xlat2.x;
    x_243 = -(abs(x_251));
  }
  let x_254 : f32 = x_243;
  u_xlat2.x = x_254;
  let x_257 : f32 = u_xlat2.x;
  let x_260 : f32 = x_238.unity_LODFade.x;
  u_xlat2.x = (-(x_257) + x_260);
  let x_265 : f32 = u_xlat2.x;
  u_xlatb2 = (x_265 < 0.0f);
  let x_267 : bool = u_xlatb2;
  if (((select(0i, 1i, x_267) * -1i) != 0i)) {
    discard;
  }
  let x_274 : vec3<f32> = u_xlat10;
  let x_277 : vec4<f32> = vs_TEXCOORD4;
  let x_279 : vec3<f32> = (vec3<f32>(x_274.z, x_274.z, x_274.z) * vec3<f32>(x_277.x, x_277.y, x_277.z));
  let x_280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_279.x, x_279.y, x_279.z, x_280.w);
  let x_282 : vec3<f32> = u_xlat10;
  let x_285 : vec4<f32> = vs_TEXCOORD3;
  let x_288 : vec4<f32> = u_xlat2;
  let x_290 : vec3<f32> = ((vec3<f32>(x_282.x, x_282.x, x_282.x) * vec3<f32>(x_285.x, x_285.y, x_285.z)) + vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_293 : vec4<f32> = u_xlat1;
  let x_296 : vec4<f32> = vs_TEXCOORD2;
  let x_299 : vec4<f32> = u_xlat2;
  let x_301 : vec3<f32> = ((vec3<f32>(x_293.x, x_293.x, x_293.x) * vec3<f32>(x_296.x, x_296.y, x_296.z)) + vec3<f32>(x_299.x, x_299.y, x_299.z));
  let x_302 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_301.x, x_301.y, x_301.z, x_302.w);
  let x_304 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat10.x = dot(vec3<f32>(x_304.x, x_304.y, x_304.z), vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_311 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_311);
  let x_314 : vec3<f32> = u_xlat10;
  let x_316 : vec4<f32> = u_xlat2;
  let x_318 : vec3<f32> = (vec3<f32>(x_314.x, x_314.x, x_314.x) * vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_323 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_323;
  let x_326 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_326;
  let x_330 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_330;
  let x_332 : vec3<f32> = u_xlat3;
  let x_333 : vec3<f32> = u_xlat3;
  u_xlat10.x = dot(x_332, x_333);
  let x_337 : f32 = u_xlat10.x;
  u_xlat10.x = max(x_337, 1.17549435e-37f);
  let x_342 : f32 = u_xlat10.x;
  u_xlat10.x = inverseSqrt(x_342);
  let x_348 : f32 = vs_TEXCOORD1.y;
  let x_351 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat30 = (x_348 * x_351);
  let x_354 : f32 = x_44.unity_MatrixV[0i].z;
  let x_356 : f32 = vs_TEXCOORD1.x;
  let x_358 : f32 = u_xlat30;
  u_xlat30 = ((x_354 * x_356) + x_358);
  let x_361 : f32 = x_44.unity_MatrixV[2i].z;
  let x_363 : f32 = vs_TEXCOORD1.z;
  let x_365 : f32 = u_xlat30;
  u_xlat30 = ((x_361 * x_363) + x_365);
  let x_367 : f32 = u_xlat30;
  let x_370 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat30 = (x_367 + x_370);
  let x_372 : f32 = u_xlat30;
  let x_376 : f32 = x_44.x_ProjectionParams.y;
  u_xlat30 = (-(x_372) + -(x_376));
  let x_379 : f32 = u_xlat30;
  u_xlat30 = max(x_379, 0.0f);
  let x_381 : f32 = u_xlat30;
  let x_384 : f32 = x_44.unity_FogParams.x;
  u_xlat30 = (x_381 * x_384);
  u_xlat2.w = 1.0f;
  let x_390 : vec4<f32> = x_238.unity_SHAr;
  let x_391 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_390, x_391);
  let x_396 : vec4<f32> = x_238.unity_SHAg;
  let x_397 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_396, x_397);
  let x_402 : vec4<f32> = x_238.unity_SHAb;
  let x_403 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_402, x_403);
  let x_407 : vec4<f32> = u_xlat2;
  let x_409 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_407.y, x_407.z, x_407.z, x_407.x) * vec4<f32>(x_409.x, x_409.y, x_409.z, x_409.z));
  let x_415 : vec4<f32> = x_238.unity_SHBr;
  let x_416 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_415, x_416);
  let x_421 : vec4<f32> = x_238.unity_SHBg;
  let x_422 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_421, x_422);
  let x_427 : vec4<f32> = x_238.unity_SHBb;
  let x_428 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_427, x_428);
  let x_432 : f32 = u_xlat2.y;
  let x_434 : f32 = u_xlat2.y;
  u_xlat1.x = (x_432 * x_434);
  let x_438 : f32 = u_xlat2.x;
  let x_440 : f32 = u_xlat2.x;
  let x_443 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_438 * x_440) + -(x_443));
  let x_449 : vec4<f32> = x_238.unity_SHC;
  let x_451 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = u_xlat6;
  let x_455 : vec3<f32> = ((vec3<f32>(x_449.x, x_449.y, x_449.z) * vec3<f32>(x_451.x, x_451.x, x_451.x)) + x_454);
  let x_456 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_455.x, x_455.y, x_455.z, x_456.w);
  let x_458 : vec3<f32> = u_xlat4;
  let x_459 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_458 + vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec3<f32> = u_xlat4;
  u_xlat4 = max(x_462, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_467 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_468 : vec2<f32> = vec2<f32>(x_467.x, x_467.y);
  let x_472 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_468.x, x_468.y));
  let x_473 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
  let x_475 : vec4<f32> = u_xlat5;
  let x_477 : vec4<f32> = hlslcc_FragCoord;
  let x_479 : vec2<f32> = (vec2<f32>(x_475.x, x_475.y) * vec2<f32>(x_477.x, x_477.y));
  let x_480 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
  let x_483 : f32 = u_xlat5.y;
  let x_486 : f32 = x_44.x_ScaleBiasRt.x;
  let x_489 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat1.x = ((x_483 * x_486) + x_489);
  let x_493 : f32 = u_xlat1.x;
  u_xlat5.z = (-(x_493) + 1.0f);
  let x_502 : vec4<f32> = u_xlat5;
  let x_505 : f32 = x_44.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_502.x, x_502.z), x_505);
  u_xlat1.x = x_506.x;
  let x_511 : f32 = u_xlat1.x;
  u_xlat32 = (x_511 + -1.0f);
  let x_515 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_516 : f32 = u_xlat32;
  u_xlat32 = ((x_515 * x_516) + 1.0f);
  let x_520 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_520, 1.0f);
  let x_525 : vec4<f32> = vs_TEXCOORD6;
  let x_526 : vec2<f32> = vec2<f32>(x_525.x, x_525.y);
  let x_528 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_526.x, x_526.y, x_528);
  let x_541 : vec3<f32> = txVec0;
  let x_543 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_541.xy, x_541.z);
  u_xlat33 = x_543;
  let x_551 : f32 = x_549.x_MainLightShadowParams.x;
  u_xlat34 = (-(x_551) + 1.0f);
  let x_554 : f32 = u_xlat33;
  let x_556 : f32 = x_549.x_MainLightShadowParams.x;
  let x_558 : f32 = u_xlat34;
  u_xlat33 = ((x_554 * x_556) + x_558);
  let x_562 : f32 = vs_TEXCOORD6.z;
  u_xlatb34 = (0.0f >= x_562);
  let x_566 : f32 = vs_TEXCOORD6.z;
  u_xlatb5 = (x_566 >= 1.0f);
  let x_568 : bool = u_xlatb34;
  let x_569 : bool = u_xlatb5;
  u_xlatb34 = (x_568 | x_569);
  let x_571 : bool = u_xlatb34;
  let x_572 : f32 = u_xlat33;
  u_xlat33 = select(x_572, 1.0f, x_571);
  let x_574 : vec3<f32> = vs_TEXCOORD1;
  let x_578 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_580 : vec3<f32> = (x_574 + -(x_578));
  let x_581 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat5;
  let x_585 : vec4<f32> = u_xlat5;
  u_xlat34 = dot(vec3<f32>(x_583.x, x_583.y, x_583.z), vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : f32 = u_xlat34;
  let x_590 : f32 = x_549.x_MainLightShadowParams.z;
  let x_593 : f32 = x_549.x_MainLightShadowParams.w;
  u_xlat34 = ((x_588 * x_590) + x_593);
  let x_595 : f32 = u_xlat34;
  u_xlat34 = clamp(x_595, 0.0f, 1.0f);
  let x_597 : f32 = u_xlat33;
  u_xlat5.x = (-(x_597) + 1.0f);
  let x_601 : f32 = u_xlat34;
  let x_603 : f32 = u_xlat5.x;
  let x_605 : f32 = u_xlat33;
  u_xlat33 = ((x_601 * x_603) + x_605);
  let x_607 : f32 = u_xlat32;
  let x_610 : vec4<f32> = x_44.x_MainLightColor;
  let x_612 : vec3<f32> = (vec3<f32>(x_607, x_607, x_607) * vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat1;
  let x_617 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_615.x, x_615.x, x_615.x) * x_617);
  let x_619 : f32 = u_xlat33;
  let x_621 : f32 = x_238.unity_LightData.z;
  u_xlat1.x = (x_619 * x_621);
  let x_624 : vec4<f32> = u_xlat1;
  let x_626 : vec4<f32> = u_xlat5;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.x, x_624.x) * vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_629 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat2;
  let x_634 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1.x = dot(vec3<f32>(x_631.x, x_631.y, x_631.z), vec3<f32>(x_634.x, x_634.y, x_634.z));
  let x_639 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_639, 0.0f, 1.0f);
  let x_642 : vec4<f32> = u_xlat1;
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat6 = (vec3<f32>(x_642.x, x_642.x, x_642.x) * vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_648 : f32 = x_57.x_SpecColor.w;
  u_xlat1.x = ((x_648 * 10.0f) + 1.0f);
  let x_654 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_654);
  let x_658 : vec3<f32> = u_xlat3;
  let x_659 : vec3<f32> = u_xlat10;
  let x_663 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat7 = ((x_658 * vec3<f32>(x_659.x, x_659.x, x_659.x)) + vec3<f32>(x_663.x, x_663.y, x_663.z));
  let x_666 : vec3<f32> = u_xlat7;
  let x_667 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(x_666, x_667);
  let x_669 : f32 = u_xlat33;
  u_xlat33 = max(x_669, 1.17549435e-37f);
  let x_671 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_671);
  let x_673 : f32 = u_xlat33;
  let x_675 : vec3<f32> = u_xlat7;
  u_xlat7 = (vec3<f32>(x_673, x_673, x_673) * x_675);
  let x_677 : vec4<f32> = u_xlat2;
  let x_679 : vec3<f32> = u_xlat7;
  u_xlat33 = dot(vec3<f32>(x_677.x, x_677.y, x_677.z), x_679);
  let x_681 : f32 = u_xlat33;
  u_xlat33 = clamp(x_681, 0.0f, 1.0f);
  let x_683 : f32 = u_xlat33;
  u_xlat33 = log2(x_683);
  let x_686 : f32 = u_xlat1.x;
  let x_687 : f32 = u_xlat33;
  u_xlat33 = (x_686 * x_687);
  let x_689 : f32 = u_xlat33;
  u_xlat33 = exp2(x_689);
  let x_691 : f32 = u_xlat33;
  let x_694 : vec4<f32> = x_57.x_SpecColor;
  u_xlat7 = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat5;
  let x_699 : vec3<f32> = u_xlat7;
  let x_700 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * x_699);
  let x_701 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec3<f32> = u_xlat6;
  let x_704 : vec4<f32> = u_xlat1;
  let x_707 : vec4<f32> = u_xlat5;
  let x_709 : vec3<f32> = ((x_703 * vec3<f32>(x_704.y, x_704.z, x_704.w)) + vec3<f32>(x_707.x, x_707.y, x_707.z));
  let x_710 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_714 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_716 : f32 = x_238.unity_LightData.y;
  u_xlat33 = min(x_714, x_716);
  let x_720 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_720));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_732 : u32 = u_xlatu_loop_1;
    let x_733 : u32 = u_xlatu33;
    if ((x_732 < x_733)) {
    } else {
      break;
    }
    let x_736 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_736 >> 2u);
    let x_740 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_740 & 3u));
    let x_744 : u32 = u_xlatu35;
    let x_747 : vec4<f32> = x_238.unity_LightIndices[bitcast<i32>(x_744)];
    let x_757 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_762 : vec4<u32> = indexable[x_757];
    u_xlat35 = dot(x_747, bitcast<vec4<f32>>(x_762));
    let x_766 : f32 = u_xlat35;
    u_xlati35 = i32(x_766);
    let x_768 : vec3<f32> = vs_TEXCOORD1;
    let x_780 : i32 = u_xlati35;
    let x_782 : vec4<f32> = x_779.x_AdditionalLightsPosition[x_780];
    let x_785 : i32 = u_xlati35;
    let x_787 : vec4<f32> = x_779.x_AdditionalLightsPosition[x_785];
    u_xlat7 = ((-(x_768) * vec3<f32>(x_782.w, x_782.w, x_782.w)) + vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_791 : vec3<f32> = u_xlat7;
    let x_792 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_791, x_792);
    let x_794 : f32 = u_xlat36;
    u_xlat36 = max(x_794, 6.10351562e-05f);
    let x_798 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_798);
    let x_800 : f32 = u_xlat37;
    let x_802 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_800, x_800, x_800) * x_802);
    let x_804 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_804);
    let x_806 : f32 = u_xlat36;
    let x_807 : i32 = u_xlati35;
    let x_809 : f32 = x_779.x_AdditionalLightsAttenuation[x_807].x;
    u_xlat36 = (x_806 * x_809);
    let x_811 : f32 = u_xlat36;
    let x_813 : f32 = u_xlat36;
    u_xlat36 = ((-(x_811) * x_813) + 1.0f);
    let x_816 : f32 = u_xlat36;
    u_xlat36 = max(x_816, 0.0f);
    let x_818 : f32 = u_xlat36;
    let x_819 : f32 = u_xlat36;
    u_xlat36 = (x_818 * x_819);
    let x_821 : f32 = u_xlat36;
    let x_822 : f32 = u_xlat37;
    u_xlat36 = (x_821 * x_822);
    let x_824 : i32 = u_xlati35;
    let x_826 : vec4<f32> = x_779.x_AdditionalLightsSpotDir[x_824];
    let x_828 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_826.x, x_826.y, x_826.z), x_828);
    let x_830 : f32 = u_xlat37;
    let x_831 : i32 = u_xlati35;
    let x_833 : f32 = x_779.x_AdditionalLightsAttenuation[x_831].z;
    let x_835 : i32 = u_xlati35;
    let x_837 : f32 = x_779.x_AdditionalLightsAttenuation[x_835].w;
    u_xlat37 = ((x_830 * x_833) + x_837);
    let x_839 : f32 = u_xlat37;
    u_xlat37 = clamp(x_839, 0.0f, 1.0f);
    let x_841 : f32 = u_xlat37;
    let x_842 : f32 = u_xlat37;
    u_xlat37 = (x_841 * x_842);
    let x_844 : f32 = u_xlat36;
    let x_845 : f32 = u_xlat37;
    u_xlat36 = (x_844 * x_845);
    let x_848 : f32 = u_xlat32;
    let x_850 : i32 = u_xlati35;
    let x_852 : vec4<f32> = x_779.x_AdditionalLightsColor[x_850];
    u_xlat8 = (vec3<f32>(x_848, x_848, x_848) * vec3<f32>(x_852.x, x_852.y, x_852.z));
    let x_855 : f32 = u_xlat36;
    let x_857 : vec3<f32> = u_xlat8;
    u_xlat8 = (vec3<f32>(x_855, x_855, x_855) * x_857);
    let x_859 : vec4<f32> = u_xlat2;
    let x_861 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_859.x, x_859.y, x_859.z), x_861);
    let x_863 : f32 = u_xlat35;
    u_xlat35 = clamp(x_863, 0.0f, 1.0f);
    let x_866 : f32 = u_xlat35;
    let x_868 : vec3<f32> = u_xlat8;
    u_xlat9 = (vec3<f32>(x_866, x_866, x_866) * x_868);
    let x_870 : vec3<f32> = u_xlat3;
    let x_871 : vec3<f32> = u_xlat10;
    let x_874 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_870 * vec3<f32>(x_871.x, x_871.x, x_871.x)) + x_874);
    let x_876 : vec3<f32> = u_xlat7;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_876, x_877);
    let x_879 : f32 = u_xlat35;
    u_xlat35 = max(x_879, 1.17549435e-37f);
    let x_881 : f32 = u_xlat35;
    u_xlat35 = inverseSqrt(x_881);
    let x_883 : f32 = u_xlat35;
    let x_885 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_883, x_883, x_883) * x_885);
    let x_887 : vec4<f32> = u_xlat2;
    let x_889 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(vec3<f32>(x_887.x, x_887.y, x_887.z), x_889);
    let x_891 : f32 = u_xlat35;
    u_xlat35 = clamp(x_891, 0.0f, 1.0f);
    let x_893 : f32 = u_xlat35;
    u_xlat35 = log2(x_893);
    let x_896 : f32 = u_xlat1.x;
    let x_897 : f32 = u_xlat35;
    u_xlat35 = (x_896 * x_897);
    let x_899 : f32 = u_xlat35;
    u_xlat35 = exp2(x_899);
    let x_901 : f32 = u_xlat35;
    let x_904 : vec4<f32> = x_57.x_SpecColor;
    u_xlat7 = (vec3<f32>(x_901, x_901, x_901) * vec3<f32>(x_904.x, x_904.y, x_904.z));
    let x_907 : vec3<f32> = u_xlat7;
    let x_908 : vec3<f32> = u_xlat8;
    u_xlat7 = (x_907 * x_908);
    let x_910 : vec3<f32> = u_xlat9;
    let x_911 : vec4<f32> = u_xlat1;
    let x_914 : vec3<f32> = u_xlat7;
    u_xlat7 = ((x_910 * vec3<f32>(x_911.y, x_911.z, x_911.w)) + x_914);
    let x_916 : vec3<f32> = u_xlat6;
    let x_917 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_916 + x_917);

    continuing {
      let x_919 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_919 + bitcast<u32>(1i));
    }
  }
  let x_921 : vec3<f32> = u_xlat4;
  let x_922 : vec4<f32> = u_xlat1;
  let x_925 : vec4<f32> = u_xlat5;
  let x_927 : vec3<f32> = ((x_921 * vec3<f32>(x_922.y, x_922.z, x_922.w)) + vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec3<f32> = u_xlat6;
  let x_931 : vec4<f32> = u_xlat1;
  let x_933 : vec3<f32> = (x_930 + vec3<f32>(x_931.x, x_931.y, x_931.z));
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_936 : f32 = u_xlat30;
  let x_937 : f32 = u_xlat30;
  u_xlat10.x = (x_936 * -(x_937));
  let x_942 : f32 = u_xlat10.x;
  u_xlat10.x = exp2(x_942);
  let x_945 : vec4<f32> = u_xlat1;
  let x_949 : vec4<f32> = x_44.unity_FogColor;
  let x_952 : vec3<f32> = (vec3<f32>(x_945.x, x_945.y, x_945.z) + -(vec3<f32>(x_949.x, x_949.y, x_949.z)));
  let x_953 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_957 : vec3<f32> = u_xlat10;
  let x_959 : vec4<f32> = u_xlat1;
  let x_963 : vec4<f32> = x_44.unity_FogColor;
  let x_965 : vec3<f32> = ((vec3<f32>(x_957.x, x_957.x, x_957.x) * vec3<f32>(x_959.x, x_959.y, x_959.z)) + vec3<f32>(x_963.x, x_963.y, x_963.z));
  let x_966 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
  let x_969 : f32 = x_57.x_Surface;
  u_xlatb10 = (x_969 == 1.0f);
  let x_971 : bool = u_xlatb10;
  let x_972 : bool = u_xlatb20;
  u_xlatb10 = (x_971 | x_972);
  let x_974 : bool = u_xlatb10;
  if (x_974) {
    let x_979 : f32 = u_xlat0.x;
    x_975 = x_979;
  } else {
    x_975 = 1.0f;
  }
  let x_981 : f32 = x_975;
  SV_Target0.w = x_981;
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

