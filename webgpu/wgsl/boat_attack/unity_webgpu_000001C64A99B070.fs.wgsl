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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_375 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_611 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb10 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_161 : f32;
  var x_173 : f32;
  var x_185 : f32;
  var u_xlat29 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat30 : f32;
  var txVec0 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb13 : bool;
  var u_xlatb22 : bool;
  var x_402 : f32;
  var u_xlat22 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat31 : f32;
  var u_xlatu31 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu6 : u32;
  var u_xlati15 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati6 : i32;
  var u_xlat15 : vec3<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlat16 : vec3<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat33 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb9 : bool;
  var x_815 : f32;
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
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_44.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_44.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb10 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb10;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_134 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat10;
  let x_149 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat10;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_160 : bool = u_xlatb1;
  if (x_160) {
    let x_165 : f32 = u_xlat10.x;
    x_161 = x_165;
  } else {
    let x_169 : f32 = x_44.unity_MatrixV[0i].z;
    x_161 = x_169;
  }
  let x_170 : f32 = x_161;
  u_xlat2.x = x_170;
  let x_172 : bool = u_xlatb1;
  if (x_172) {
    let x_178 : f32 = u_xlat10.y;
    x_173 = x_178;
  } else {
    let x_181 : f32 = x_44.unity_MatrixV[1i].z;
    x_173 = x_181;
  }
  let x_182 : f32 = x_173;
  u_xlat2.y = x_182;
  let x_184 : bool = u_xlatb1;
  if (x_184) {
    let x_189 : f32 = u_xlat10.z;
    x_185 = x_189;
  } else {
    let x_192 : f32 = x_44.unity_MatrixV[2i].z;
    x_185 = x_192;
  }
  let x_193 : f32 = x_185;
  u_xlat2.z = x_193;
  let x_196 : vec3<f32> = vs_TEXCOORD2;
  let x_197 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_196, x_197);
  let x_201 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_201);
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = vs_TEXCOORD2;
  let x_207 : vec3<f32> = (vec3<f32>(x_204.x, x_204.x, x_204.x) * x_206);
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
  let x_211 : vec3<f32> = u_xlat2;
  let x_212 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_211, x_212);
  let x_214 : f32 = u_xlat29;
  u_xlat29 = max(x_214, 1.17549435e-37f);
  let x_217 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_217);
  u_xlat1.w = 1.0f;
  let x_223 : vec4<f32> = x_92.unity_SHAr;
  let x_224 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_223, x_224);
  let x_229 : vec4<f32> = x_92.unity_SHAg;
  let x_230 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_229, x_230);
  let x_235 : vec4<f32> = x_92.unity_SHAb;
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_235, x_236);
  let x_240 : vec4<f32> = u_xlat1;
  let x_242 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_240.y, x_240.z, x_240.z, x_240.x) * vec4<f32>(x_242.x, x_242.y, x_242.z, x_242.z));
  let x_248 : vec4<f32> = x_92.unity_SHBr;
  let x_249 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_248, x_249);
  let x_254 : vec4<f32> = x_92.unity_SHBg;
  let x_255 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_254, x_255);
  let x_260 : vec4<f32> = x_92.unity_SHBb;
  let x_261 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_260, x_261);
  let x_266 : f32 = u_xlat1.y;
  let x_268 : f32 = u_xlat1.y;
  u_xlat28 = (x_266 * x_268);
  let x_271 : f32 = u_xlat1.x;
  let x_273 : f32 = u_xlat1.x;
  let x_275 : f32 = u_xlat28;
  u_xlat28 = ((x_271 * x_273) + -(x_275));
  let x_280 : vec4<f32> = x_92.unity_SHC;
  let x_282 : f32 = u_xlat28;
  let x_285 : vec3<f32> = u_xlat5;
  let x_286 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282, x_282, x_282)) + x_285);
  let x_287 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_289 : vec3<f32> = u_xlat3;
  let x_290 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_289 + vec3<f32>(x_290.x, x_290.y, x_290.z));
  let x_293 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_293, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_298 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_299 : vec2<f32> = vec2<f32>(x_298.x, x_298.y);
  let x_303 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_299.x, x_299.y));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_304.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = hlslcc_FragCoord;
  let x_310 : vec2<f32> = (vec2<f32>(x_306.x, x_306.y) * vec2<f32>(x_308.x, x_308.y));
  let x_311 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_310.x, x_310.y, x_311.z, x_311.w);
  let x_314 : f32 = u_xlat4.y;
  let x_317 : f32 = x_44.x_ScaleBiasRt.x;
  let x_320 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_314 * x_317) + x_320);
  let x_322 : f32 = u_xlat28;
  u_xlat4.z = (-(x_322) + 1.0f);
  let x_331 : vec4<f32> = u_xlat4;
  let x_334 : f32 = x_44.x_GlobalMipBias.x;
  let x_335 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_331.x, x_331.z), x_334);
  u_xlat28 = x_335.x;
  let x_338 : f32 = u_xlat28;
  u_xlat30 = (x_338 + -1.0f);
  let x_343 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_344 : f32 = u_xlat30;
  u_xlat30 = ((x_343 * x_344) + 1.0f);
  let x_347 : f32 = u_xlat28;
  u_xlat28 = min(x_347, 1.0f);
  let x_351 : vec4<f32> = vs_TEXCOORD6;
  let x_352 : vec2<f32> = vec2<f32>(x_351.x, x_351.y);
  let x_354 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_352.x, x_352.y, x_354);
  let x_366 : vec3<f32> = txVec0;
  let x_368 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_366.xy, x_366.z);
  u_xlat4.x = x_368;
  let x_377 : f32 = x_375.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_377) + 1.0f);
  let x_382 : f32 = u_xlat4.x;
  let x_384 : f32 = x_375.x_MainLightShadowParams.x;
  let x_387 : f32 = u_xlat13.x;
  u_xlat4.x = ((x_382 * x_384) + x_387);
  let x_392 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (0.0f >= x_392);
  let x_396 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_396 >= 1.0f);
  let x_398 : bool = u_xlatb22;
  let x_399 : bool = u_xlatb13;
  u_xlatb13 = (x_398 | x_399);
  let x_401 : bool = u_xlatb13;
  if (x_401) {
    x_402 = 1.0f;
  } else {
    let x_407 : f32 = u_xlat4.x;
    x_402 = x_407;
  }
  let x_408 : f32 = x_402;
  u_xlat4.x = x_408;
  let x_410 : vec3<f32> = vs_TEXCOORD1;
  let x_412 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat13 = (x_410 + -(x_412));
  let x_415 : vec3<f32> = u_xlat13;
  let x_416 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_415, x_416);
  let x_420 : f32 = u_xlat13.x;
  let x_422 : f32 = x_375.x_MainLightShadowParams.z;
  let x_425 : f32 = x_375.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_420 * x_422) + x_425);
  let x_429 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_429, 0.0f, 1.0f);
  let x_434 : f32 = u_xlat4.x;
  u_xlat22 = (-(x_434) + 1.0f);
  let x_438 : f32 = u_xlat13.x;
  let x_439 : f32 = u_xlat22;
  let x_442 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_438 * x_439) + x_442);
  let x_445 : f32 = u_xlat30;
  let x_449 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_445, x_445, x_445) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : f32 = u_xlat28;
  let x_454 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_452, x_452, x_452) * x_454);
  let x_457 : f32 = u_xlat4.x;
  let x_460 : f32 = x_92.unity_LightData.z;
  u_xlat28 = (x_457 * x_460);
  let x_462 : f32 = u_xlat28;
  let x_464 : vec3<f32> = u_xlat13;
  let x_465 : vec3<f32> = (vec3<f32>(x_462, x_462, x_462) * x_464);
  let x_466 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
  let x_468 : vec4<f32> = u_xlat1;
  let x_471 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_471.x, x_471.y, x_471.z));
  let x_474 : f32 = u_xlat28;
  u_xlat28 = clamp(x_474, 0.0f, 1.0f);
  let x_476 : f32 = u_xlat28;
  let x_478 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_476, x_476, x_476) * vec3<f32>(x_478.x, x_478.y, x_478.z));
  let x_482 : f32 = u_xlat0.x;
  u_xlat28 = ((x_482 * 10.0f) + 1.0f);
  let x_486 : f32 = u_xlat28;
  u_xlat28 = exp2(x_486);
  let x_489 : vec3<f32> = u_xlat2;
  let x_490 : f32 = u_xlat29;
  let x_494 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_489 * vec3<f32>(x_490, x_490, x_490)) + vec3<f32>(x_494.x, x_494.y, x_494.z));
  let x_498 : vec3<f32> = u_xlat6;
  let x_499 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_498, x_499);
  let x_501 : f32 = u_xlat31;
  u_xlat31 = max(x_501, 1.17549435e-37f);
  let x_503 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_503);
  let x_505 : f32 = u_xlat31;
  let x_507 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_505, x_505, x_505) * x_507);
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_509.x, x_509.y, x_509.z), x_511);
  let x_513 : f32 = u_xlat31;
  u_xlat31 = clamp(x_513, 0.0f, 1.0f);
  let x_515 : f32 = u_xlat31;
  u_xlat31 = log2(x_515);
  let x_517 : f32 = u_xlat28;
  let x_518 : f32 = u_xlat31;
  u_xlat31 = (x_517 * x_518);
  let x_520 : f32 = u_xlat31;
  u_xlat31 = exp2(x_520);
  let x_522 : f32 = u_xlat31;
  let x_525 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_522, x_522, x_522) * vec3<f32>(x_525.x, x_525.y, x_525.z));
  let x_528 : vec4<f32> = u_xlat4;
  let x_530 : vec3<f32> = u_xlat6;
  let x_531 : vec3<f32> = (vec3<f32>(x_528.x, x_528.y, x_528.z) * x_530);
  let x_532 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_534 : vec3<f32> = u_xlat5;
  let x_535 : vec4<f32> = u_xlat0;
  let x_538 : vec4<f32> = u_xlat4;
  let x_540 : vec3<f32> = ((x_534 * vec3<f32>(x_535.y, x_535.z, x_535.w)) + vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_540.x, x_540.y, x_540.z, x_541.w);
  let x_544 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_546 : f32 = x_92.unity_LightData.y;
  u_xlat31 = min(x_544, x_546);
  let x_550 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_550));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_562 : u32 = u_xlatu_loop_1;
    let x_563 : u32 = u_xlatu31;
    if ((x_562 < x_563)) {
    } else {
      break;
    }
    let x_566 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_566 >> 2u);
    let x_570 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_570 & 3u));
    let x_573 : u32 = u_xlatu6;
    let x_576 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_573)];
    let x_586 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_591 : vec4<u32> = indexable[x_586];
    u_xlat6.x = dot(x_576, bitcast<vec4<f32>>(x_591));
    let x_597 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_597);
    let x_600 : vec3<f32> = vs_TEXCOORD1;
    let x_612 : i32 = u_xlati6;
    let x_614 : vec4<f32> = x_611.x_AdditionalLightsPosition[x_612];
    let x_617 : i32 = u_xlati6;
    let x_619 : vec4<f32> = x_611.x_AdditionalLightsPosition[x_617];
    u_xlat15 = ((-(x_600) * vec3<f32>(x_614.w, x_614.w, x_614.w)) + vec3<f32>(x_619.x, x_619.y, x_619.z));
    let x_623 : vec3<f32> = u_xlat15;
    let x_624 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_623, x_624);
    let x_628 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_628, 6.10351562e-05f);
    let x_634 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_634);
    let x_637 : vec3<f32> = u_xlat15;
    let x_638 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_637 * vec3<f32>(x_638.x, x_638.x, x_638.x));
    let x_642 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_642);
    let x_646 : f32 = u_xlat7.x;
    let x_647 : i32 = u_xlati6;
    let x_649 : f32 = x_611.x_AdditionalLightsAttenuation[x_647].x;
    u_xlat7.x = (x_646 * x_649);
    let x_653 : f32 = u_xlat7.x;
    let x_656 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_653) * x_656) + 1.0f);
    let x_661 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_661, 0.0f);
    let x_665 : f32 = u_xlat7.x;
    let x_667 : f32 = u_xlat7.x;
    u_xlat7.x = (x_665 * x_667);
    let x_671 : f32 = u_xlat7.x;
    let x_673 : f32 = u_xlat16.x;
    u_xlat7.x = (x_671 * x_673);
    let x_676 : i32 = u_xlati6;
    let x_678 : vec4<f32> = x_611.x_AdditionalLightsSpotDir[x_676];
    let x_680 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_678.x, x_678.y, x_678.z), x_680);
    let x_684 : f32 = u_xlat16.x;
    let x_685 : i32 = u_xlati6;
    let x_687 : f32 = x_611.x_AdditionalLightsAttenuation[x_685].z;
    let x_689 : i32 = u_xlati6;
    let x_691 : f32 = x_611.x_AdditionalLightsAttenuation[x_689].w;
    u_xlat16.x = ((x_684 * x_687) + x_691);
    let x_695 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_695, 0.0f, 1.0f);
    let x_699 : f32 = u_xlat16.x;
    let x_701 : f32 = u_xlat16.x;
    u_xlat16.x = (x_699 * x_701);
    let x_705 : f32 = u_xlat16.x;
    let x_707 : f32 = u_xlat7.x;
    u_xlat7.x = (x_705 * x_707);
    let x_710 : f32 = u_xlat30;
    let x_712 : i32 = u_xlati6;
    let x_714 : vec4<f32> = x_611.x_AdditionalLightsColor[x_712];
    u_xlat16 = (vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_717 : vec3<f32> = u_xlat7;
    let x_719 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_717.x, x_717.x, x_717.x) * x_719);
    let x_721 : vec4<f32> = u_xlat1;
    let x_723 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_721.x, x_721.y, x_721.z), x_723);
    let x_727 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_727, 0.0f, 1.0f);
    let x_731 : vec3<f32> = u_xlat6;
    let x_733 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_731.x, x_731.x, x_731.x) * x_733);
    let x_735 : vec3<f32> = u_xlat2;
    let x_736 : f32 = u_xlat29;
    let x_739 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_735 * vec3<f32>(x_736, x_736, x_736)) + x_739);
    let x_742 : vec3<f32> = u_xlat6;
    let x_743 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_742, x_743);
    let x_745 : f32 = u_xlat33;
    u_xlat33 = max(x_745, 1.17549435e-37f);
    let x_747 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_747);
    let x_749 : f32 = u_xlat33;
    let x_751 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_749, x_749, x_749) * x_751);
    let x_753 : vec4<f32> = u_xlat1;
    let x_755 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_753.x, x_753.y, x_753.z), x_755);
    let x_759 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_759, 0.0f, 1.0f);
    let x_763 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_763);
    let x_766 : f32 = u_xlat28;
    let x_768 : f32 = u_xlat6.x;
    u_xlat6.x = (x_766 * x_768);
    let x_772 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_772);
    let x_775 : vec3<f32> = u_xlat6;
    let x_778 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_775.x, x_775.x, x_775.x) * vec3<f32>(x_778.x, x_778.y, x_778.z));
    let x_781 : vec3<f32> = u_xlat6;
    let x_782 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_781 * x_782);
    let x_784 : vec3<f32> = u_xlat8;
    let x_785 : vec4<f32> = u_xlat0;
    let x_788 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_784 * vec3<f32>(x_785.y, x_785.z, x_785.w)) + x_788);
    let x_790 : vec3<f32> = u_xlat5;
    let x_791 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_790 + x_791);

    continuing {
      let x_793 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_793 + bitcast<u32>(1i));
    }
  }
  let x_796 : vec3<f32> = u_xlat3;
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_796 * vec3<f32>(x_797.y, x_797.z, x_797.w)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_805 : vec3<f32> = u_xlat5;
  let x_806 : vec3<f32> = u_xlat9;
  let x_807 : vec3<f32> = (x_805 + x_806);
  let x_808 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_812 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_812 == 1.0f);
  let x_814 : bool = u_xlatb9;
  if (x_814) {
    let x_819 : f32 = u_xlat0.x;
    x_815 = x_819;
  } else {
    x_815 = 1.0f;
  }
  let x_821 : f32 = x_815;
  SV_Target0.w = x_821;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

