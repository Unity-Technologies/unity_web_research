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

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_163 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_ScreenSpaceOcclusionTexture : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_318 : MainLightShadows;

@group(1) @binding(1) var<uniform> x_554 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat10 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_96 : f32;
  var x_110 : f32;
  var x_122 : f32;
  var u_xlat1 : vec4<f32>;
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
  var x_345 : f32;
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
  var x_758 : f32;
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
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat10 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat10;
  let x_83 : vec3<f32> = u_xlat10;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat10;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat10 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_95 : bool = u_xlatb1;
  if (x_95) {
    let x_100 : f32 = u_xlat10.x;
    x_96 = x_100;
  } else {
    let x_106 : f32 = x_44.unity_MatrixV[0i].z;
    x_96 = x_106;
  }
  let x_107 : f32 = x_96;
  u_xlat2.x = x_107;
  let x_109 : bool = u_xlatb1;
  if (x_109) {
    let x_115 : f32 = u_xlat10.y;
    x_110 = x_115;
  } else {
    let x_118 : f32 = x_44.unity_MatrixV[1i].z;
    x_110 = x_118;
  }
  let x_119 : f32 = x_110;
  u_xlat2.y = x_119;
  let x_121 : bool = u_xlatb1;
  if (x_121) {
    let x_126 : f32 = u_xlat10.z;
    x_122 = x_126;
  } else {
    let x_130 : f32 = x_44.unity_MatrixV[2i].z;
    x_122 = x_130;
  }
  let x_131 : f32 = x_122;
  u_xlat2.z = x_131;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_147 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec3<f32> = u_xlat2;
  let x_151 : vec3<f32> = u_xlat2;
  u_xlat29 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat29;
  u_xlat29 = max(x_153, 1.17549435e-37f);
  let x_156 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_156);
  u_xlat1.w = 1.0f;
  let x_166 : vec4<f32> = x_163.unity_SHAr;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_166, x_167);
  let x_172 : vec4<f32> = x_163.unity_SHAg;
  let x_173 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_172, x_173);
  let x_178 : vec4<f32> = x_163.unity_SHAb;
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_178, x_179);
  let x_183 : vec4<f32> = u_xlat1;
  let x_185 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_183.y, x_183.z, x_183.z, x_183.x) * vec4<f32>(x_185.x, x_185.y, x_185.z, x_185.z));
  let x_191 : vec4<f32> = x_163.unity_SHBr;
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_191, x_192);
  let x_197 : vec4<f32> = x_163.unity_SHBg;
  let x_198 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_197, x_198);
  let x_203 : vec4<f32> = x_163.unity_SHBb;
  let x_204 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_203, x_204);
  let x_209 : f32 = u_xlat1.y;
  let x_211 : f32 = u_xlat1.y;
  u_xlat28 = (x_209 * x_211);
  let x_214 : f32 = u_xlat1.x;
  let x_216 : f32 = u_xlat1.x;
  let x_218 : f32 = u_xlat28;
  u_xlat28 = ((x_214 * x_216) + -(x_218));
  let x_223 : vec4<f32> = x_163.unity_SHC;
  let x_225 : f32 = u_xlat28;
  let x_228 : vec3<f32> = u_xlat5;
  let x_229 : vec3<f32> = ((vec3<f32>(x_223.x, x_223.y, x_223.z) * vec3<f32>(x_225, x_225, x_225)) + x_228);
  let x_230 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_232 : vec3<f32> = u_xlat3;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_232 + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec3<f32> = u_xlat3;
  u_xlat3 = max(x_236, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_241 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_242 : vec2<f32> = vec2<f32>(x_241.x, x_241.y);
  let x_246 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_242.x, x_242.y));
  let x_247 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_247.w);
  let x_249 : vec4<f32> = u_xlat4;
  let x_251 : vec4<f32> = hlslcc_FragCoord;
  let x_253 : vec2<f32> = (vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.y));
  let x_254 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_253.x, x_253.y, x_254.z, x_254.w);
  let x_257 : f32 = u_xlat4.y;
  let x_260 : f32 = x_44.x_ScaleBiasRt.x;
  let x_263 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat28 = ((x_257 * x_260) + x_263);
  let x_265 : f32 = u_xlat28;
  u_xlat4.z = (-(x_265) + 1.0f);
  let x_274 : vec4<f32> = u_xlat4;
  let x_277 : f32 = x_44.x_GlobalMipBias.x;
  let x_278 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_274.x, x_274.z), x_277);
  u_xlat28 = x_278.x;
  let x_281 : f32 = u_xlat28;
  u_xlat30 = (x_281 + -1.0f);
  let x_286 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_287 : f32 = u_xlat30;
  u_xlat30 = ((x_286 * x_287) + 1.0f);
  let x_290 : f32 = u_xlat28;
  u_xlat28 = min(x_290, 1.0f);
  let x_294 : vec4<f32> = vs_TEXCOORD6;
  let x_295 : vec2<f32> = vec2<f32>(x_294.x, x_294.y);
  let x_297 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_295.x, x_295.y, x_297);
  let x_309 : vec3<f32> = txVec0;
  let x_311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_309.xy, x_309.z);
  u_xlat4.x = x_311;
  let x_320 : f32 = x_318.x_MainLightShadowParams.x;
  u_xlat13.x = (-(x_320) + 1.0f);
  let x_325 : f32 = u_xlat4.x;
  let x_327 : f32 = x_318.x_MainLightShadowParams.x;
  let x_330 : f32 = u_xlat13.x;
  u_xlat4.x = ((x_325 * x_327) + x_330);
  let x_335 : f32 = vs_TEXCOORD6.z;
  u_xlatb13 = (0.0f >= x_335);
  let x_339 : f32 = vs_TEXCOORD6.z;
  u_xlatb22 = (x_339 >= 1.0f);
  let x_341 : bool = u_xlatb22;
  let x_342 : bool = u_xlatb13;
  u_xlatb13 = (x_341 | x_342);
  let x_344 : bool = u_xlatb13;
  if (x_344) {
    x_345 = 1.0f;
  } else {
    let x_350 : f32 = u_xlat4.x;
    x_345 = x_350;
  }
  let x_351 : f32 = x_345;
  u_xlat4.x = x_351;
  let x_353 : vec3<f32> = vs_TEXCOORD1;
  let x_355 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat13 = (x_353 + -(x_355));
  let x_358 : vec3<f32> = u_xlat13;
  let x_359 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(x_358, x_359);
  let x_363 : f32 = u_xlat13.x;
  let x_365 : f32 = x_318.x_MainLightShadowParams.z;
  let x_368 : f32 = x_318.x_MainLightShadowParams.w;
  u_xlat13.x = ((x_363 * x_365) + x_368);
  let x_372 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_372, 0.0f, 1.0f);
  let x_377 : f32 = u_xlat4.x;
  u_xlat22 = (-(x_377) + 1.0f);
  let x_381 : f32 = u_xlat13.x;
  let x_382 : f32 = u_xlat22;
  let x_385 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_381 * x_382) + x_385);
  let x_388 : f32 = u_xlat30;
  let x_392 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat13 = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : f32 = u_xlat28;
  let x_397 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_395, x_395, x_395) * x_397);
  let x_400 : f32 = u_xlat4.x;
  let x_403 : f32 = x_163.unity_LightData.z;
  u_xlat28 = (x_400 * x_403);
  let x_405 : f32 = u_xlat28;
  let x_407 : vec3<f32> = u_xlat13;
  let x_408 : vec3<f32> = (vec3<f32>(x_405, x_405, x_405) * x_407);
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : vec4<f32> = u_xlat1;
  let x_414 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat28 = dot(vec3<f32>(x_411.x, x_411.y, x_411.z), vec3<f32>(x_414.x, x_414.y, x_414.z));
  let x_417 : f32 = u_xlat28;
  u_xlat28 = clamp(x_417, 0.0f, 1.0f);
  let x_419 : f32 = u_xlat28;
  let x_421 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec3<f32>(x_419, x_419, x_419) * vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_425 : f32 = u_xlat0.x;
  u_xlat28 = ((x_425 * 10.0f) + 1.0f);
  let x_429 : f32 = u_xlat28;
  u_xlat28 = exp2(x_429);
  let x_432 : vec3<f32> = u_xlat2;
  let x_433 : f32 = u_xlat29;
  let x_437 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat6 = ((x_432 * vec3<f32>(x_433, x_433, x_433)) + vec3<f32>(x_437.x, x_437.y, x_437.z));
  let x_441 : vec3<f32> = u_xlat6;
  let x_442 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(x_441, x_442);
  let x_444 : f32 = u_xlat31;
  u_xlat31 = max(x_444, 1.17549435e-37f);
  let x_446 : f32 = u_xlat31;
  u_xlat31 = inverseSqrt(x_446);
  let x_448 : f32 = u_xlat31;
  let x_450 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_448, x_448, x_448) * x_450);
  let x_452 : vec4<f32> = u_xlat1;
  let x_454 : vec3<f32> = u_xlat6;
  u_xlat31 = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), x_454);
  let x_456 : f32 = u_xlat31;
  u_xlat31 = clamp(x_456, 0.0f, 1.0f);
  let x_458 : f32 = u_xlat31;
  u_xlat31 = log2(x_458);
  let x_460 : f32 = u_xlat28;
  let x_461 : f32 = u_xlat31;
  u_xlat31 = (x_460 * x_461);
  let x_463 : f32 = u_xlat31;
  u_xlat31 = exp2(x_463);
  let x_465 : f32 = u_xlat31;
  let x_468 : vec4<f32> = x_56.x_SpecColor;
  u_xlat6 = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_468.x, x_468.y, x_468.z));
  let x_471 : vec4<f32> = u_xlat4;
  let x_473 : vec3<f32> = u_xlat6;
  let x_474 : vec3<f32> = (vec3<f32>(x_471.x, x_471.y, x_471.z) * x_473);
  let x_475 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
  let x_477 : vec3<f32> = u_xlat5;
  let x_478 : vec4<f32> = u_xlat0;
  let x_481 : vec4<f32> = u_xlat4;
  let x_483 : vec3<f32> = ((x_477 * vec3<f32>(x_478.y, x_478.z, x_478.w)) + vec3<f32>(x_481.x, x_481.y, x_481.z));
  let x_484 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_489 : f32 = x_163.unity_LightData.y;
  u_xlat31 = min(x_487, x_489);
  let x_493 : f32 = u_xlat31;
  u_xlatu31 = bitcast<u32>(i32(x_493));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_505 : u32 = u_xlatu_loop_1;
    let x_506 : u32 = u_xlatu31;
    if ((x_505 < x_506)) {
    } else {
      break;
    }
    let x_509 : u32 = u_xlatu_loop_1;
    u_xlatu6 = (x_509 >> 2u);
    let x_513 : u32 = u_xlatu_loop_1;
    u_xlati15 = bitcast<i32>((x_513 & 3u));
    let x_516 : u32 = u_xlatu6;
    let x_519 : vec4<f32> = x_163.unity_LightIndices[bitcast<i32>(x_516)];
    let x_529 : i32 = u_xlati15;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_534 : vec4<u32> = indexable[x_529];
    u_xlat6.x = dot(x_519, bitcast<vec4<f32>>(x_534));
    let x_540 : f32 = u_xlat6.x;
    u_xlati6 = i32(x_540);
    let x_543 : vec3<f32> = vs_TEXCOORD1;
    let x_555 : i32 = u_xlati6;
    let x_557 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_555];
    let x_560 : i32 = u_xlati6;
    let x_562 : vec4<f32> = x_554.x_AdditionalLightsPosition[x_560];
    u_xlat15 = ((-(x_543) * vec3<f32>(x_557.w, x_557.w, x_557.w)) + vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_566 : vec3<f32> = u_xlat15;
    let x_567 : vec3<f32> = u_xlat15;
    u_xlat7.x = dot(x_566, x_567);
    let x_571 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_571, 6.10351562e-05f);
    let x_577 : f32 = u_xlat7.x;
    u_xlat16.x = inverseSqrt(x_577);
    let x_580 : vec3<f32> = u_xlat15;
    let x_581 : vec3<f32> = u_xlat16;
    u_xlat15 = (x_580 * vec3<f32>(x_581.x, x_581.x, x_581.x));
    let x_585 : f32 = u_xlat7.x;
    u_xlat16.x = (1.0f / x_585);
    let x_589 : f32 = u_xlat7.x;
    let x_590 : i32 = u_xlati6;
    let x_592 : f32 = x_554.x_AdditionalLightsAttenuation[x_590].x;
    u_xlat7.x = (x_589 * x_592);
    let x_596 : f32 = u_xlat7.x;
    let x_599 : f32 = u_xlat7.x;
    u_xlat7.x = ((-(x_596) * x_599) + 1.0f);
    let x_604 : f32 = u_xlat7.x;
    u_xlat7.x = max(x_604, 0.0f);
    let x_608 : f32 = u_xlat7.x;
    let x_610 : f32 = u_xlat7.x;
    u_xlat7.x = (x_608 * x_610);
    let x_614 : f32 = u_xlat7.x;
    let x_616 : f32 = u_xlat16.x;
    u_xlat7.x = (x_614 * x_616);
    let x_619 : i32 = u_xlati6;
    let x_621 : vec4<f32> = x_554.x_AdditionalLightsSpotDir[x_619];
    let x_623 : vec3<f32> = u_xlat15;
    u_xlat16.x = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), x_623);
    let x_627 : f32 = u_xlat16.x;
    let x_628 : i32 = u_xlati6;
    let x_630 : f32 = x_554.x_AdditionalLightsAttenuation[x_628].z;
    let x_632 : i32 = u_xlati6;
    let x_634 : f32 = x_554.x_AdditionalLightsAttenuation[x_632].w;
    u_xlat16.x = ((x_627 * x_630) + x_634);
    let x_638 : f32 = u_xlat16.x;
    u_xlat16.x = clamp(x_638, 0.0f, 1.0f);
    let x_642 : f32 = u_xlat16.x;
    let x_644 : f32 = u_xlat16.x;
    u_xlat16.x = (x_642 * x_644);
    let x_648 : f32 = u_xlat16.x;
    let x_650 : f32 = u_xlat7.x;
    u_xlat7.x = (x_648 * x_650);
    let x_653 : f32 = u_xlat30;
    let x_655 : i32 = u_xlati6;
    let x_657 : vec4<f32> = x_554.x_AdditionalLightsColor[x_655];
    u_xlat16 = (vec3<f32>(x_653, x_653, x_653) * vec3<f32>(x_657.x, x_657.y, x_657.z));
    let x_660 : vec3<f32> = u_xlat7;
    let x_662 : vec3<f32> = u_xlat16;
    u_xlat7 = (vec3<f32>(x_660.x, x_660.x, x_660.x) * x_662);
    let x_664 : vec4<f32> = u_xlat1;
    let x_666 : vec3<f32> = u_xlat15;
    u_xlat6.x = dot(vec3<f32>(x_664.x, x_664.y, x_664.z), x_666);
    let x_670 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_670, 0.0f, 1.0f);
    let x_674 : vec3<f32> = u_xlat6;
    let x_676 : vec3<f32> = u_xlat7;
    u_xlat8 = (vec3<f32>(x_674.x, x_674.x, x_674.x) * x_676);
    let x_678 : vec3<f32> = u_xlat2;
    let x_679 : f32 = u_xlat29;
    let x_682 : vec3<f32> = u_xlat15;
    u_xlat6 = ((x_678 * vec3<f32>(x_679, x_679, x_679)) + x_682);
    let x_685 : vec3<f32> = u_xlat6;
    let x_686 : vec3<f32> = u_xlat6;
    u_xlat33 = dot(x_685, x_686);
    let x_688 : f32 = u_xlat33;
    u_xlat33 = max(x_688, 1.17549435e-37f);
    let x_690 : f32 = u_xlat33;
    u_xlat33 = inverseSqrt(x_690);
    let x_692 : f32 = u_xlat33;
    let x_694 : vec3<f32> = u_xlat6;
    u_xlat6 = (vec3<f32>(x_692, x_692, x_692) * x_694);
    let x_696 : vec4<f32> = u_xlat1;
    let x_698 : vec3<f32> = u_xlat6;
    u_xlat6.x = dot(vec3<f32>(x_696.x, x_696.y, x_696.z), x_698);
    let x_702 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_702, 0.0f, 1.0f);
    let x_706 : f32 = u_xlat6.x;
    u_xlat6.x = log2(x_706);
    let x_709 : f32 = u_xlat28;
    let x_711 : f32 = u_xlat6.x;
    u_xlat6.x = (x_709 * x_711);
    let x_715 : f32 = u_xlat6.x;
    u_xlat6.x = exp2(x_715);
    let x_718 : vec3<f32> = u_xlat6;
    let x_721 : vec4<f32> = x_56.x_SpecColor;
    u_xlat6 = (vec3<f32>(x_718.x, x_718.x, x_718.x) * vec3<f32>(x_721.x, x_721.y, x_721.z));
    let x_724 : vec3<f32> = u_xlat6;
    let x_725 : vec3<f32> = u_xlat7;
    u_xlat6 = (x_724 * x_725);
    let x_727 : vec3<f32> = u_xlat8;
    let x_728 : vec4<f32> = u_xlat0;
    let x_731 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_727 * vec3<f32>(x_728.y, x_728.z, x_728.w)) + x_731);
    let x_733 : vec3<f32> = u_xlat5;
    let x_734 : vec3<f32> = u_xlat6;
    u_xlat5 = (x_733 + x_734);

    continuing {
      let x_736 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_736 + bitcast<u32>(1i));
    }
  }
  let x_739 : vec3<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat4;
  u_xlat9 = ((x_739 * vec3<f32>(x_740.y, x_740.z, x_740.w)) + vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_748 : vec3<f32> = u_xlat5;
  let x_749 : vec3<f32> = u_xlat9;
  let x_750 : vec3<f32> = (x_748 + x_749);
  let x_751 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_755 : f32 = x_56.x_Surface;
  u_xlatb9 = (x_755 == 1.0f);
  let x_757 : bool = u_xlatb9;
  if (x_757) {
    let x_762 : f32 = u_xlat0.x;
    x_758 = x_762;
  } else {
    x_758 = 1.0f;
  }
  let x_764 : f32 = x_758;
  SV_Target0.w = x_764;
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

