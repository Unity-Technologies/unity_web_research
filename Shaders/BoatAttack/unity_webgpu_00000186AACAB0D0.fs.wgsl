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

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_TimeParameters : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_SkyboxRatio : f32,
  @size(12)
  padding_2 : u32,
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_TexelSize : vec4<f32>,
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  Vector1_33982692 : f32,
  Vector1_10DA9AB3 : f32,
  @size(4)
  padding_3 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_36 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_127 : PGlobals;

@group(1) @binding(2) var<uniform> x_238 : UnityPerMaterial;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlatb6 : vec3<bool>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var x_508 : f32;
  var x_520 : f32;
  var x_555 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_711 : f32;
  var x_723 : f32;
  var u_xlat19 : f32;
  var x_737 : f32;
  var u_xlatb2 : bool;
  var x_824 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_920 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_29 : vec3<f32> = vs_INTERP0;
  let x_41 : vec4<f32> = x_36.unity_WorldToObject[1i];
  let x_43 : vec3<f32> = (vec3<f32>(x_29.y, x_29.y, x_29.y) * vec3<f32>(x_41.x, x_41.y, x_41.z));
  let x_44 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_43.x, x_43.y, x_43.z, x_44.w);
  let x_48 : vec4<f32> = x_36.unity_WorldToObject[0i];
  let x_50 : vec3<f32> = vs_INTERP0;
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec3<f32> = ((vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_50.x, x_50.x, x_50.x)) + vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_60 : vec4<f32> = x_36.unity_WorldToObject[2i];
  let x_62 : vec3<f32> = vs_INTERP0;
  let x_65 : vec4<f32> = u_xlat0;
  let x_67 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_62.z, x_62.z, x_62.z)) + vec3<f32>(x_65.x, x_65.y, x_65.z));
  let x_68 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_67.x, x_67.y, x_67.z, x_68.w);
  let x_70 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = x_36.unity_WorldToObject[3i];
  let x_76 : vec3<f32> = (vec3<f32>(x_70.x, x_70.y, x_70.z) + vec3<f32>(x_74.x, x_74.y, x_74.z));
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_76.x, x_76.y, x_76.z, x_77.w);
  let x_80 : vec4<f32> = u_xlat0;
  let x_83 : vec4<f32> = x_36.unity_ObjectToWorld[1i];
  let x_85 : vec3<f32> = (vec3<f32>(x_80.y, x_80.y, x_80.y) * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  let x_89 : vec4<f32> = x_36.unity_ObjectToWorld[0i];
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = u_xlat1;
  let x_96 : vec3<f32> = ((vec3<f32>(x_89.x, x_89.y, x_89.z) * vec3<f32>(x_91.x, x_91.x, x_91.x)) + vec3<f32>(x_94.x, x_94.y, x_94.z));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_97.z, x_96.z);
  let x_100 : vec4<f32> = x_36.unity_ObjectToWorld[2i];
  let x_102 : vec4<f32> = u_xlat0;
  let x_105 : vec4<f32> = u_xlat0;
  let x_107 : vec3<f32> = ((vec3<f32>(x_100.x, x_100.y, x_100.z) * vec3<f32>(x_102.z, x_102.z, x_102.z)) + vec3<f32>(x_105.x, x_105.y, x_105.w));
  let x_108 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec4<f32> = u_xlat0;
  let x_113 : vec4<f32> = x_36.unity_ObjectToWorld[3i];
  let x_115 : vec3<f32> = (vec3<f32>(x_110.x, x_110.y, x_110.z) + vec3<f32>(x_113.x, x_113.y, x_113.z));
  let x_116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
  let x_123 : f32 = u_xlat0.y;
  let x_131 : f32 = x_127.unity_MatrixV[1i].z;
  u_xlat6.x = (x_123 * x_131);
  let x_136 : f32 = x_127.unity_MatrixV[0i].z;
  let x_138 : f32 = u_xlat0.x;
  let x_141 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_136 * x_138) + x_141);
  let x_145 : f32 = x_127.unity_MatrixV[2i].z;
  let x_147 : f32 = u_xlat0.z;
  let x_150 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_145 * x_147) + x_150);
  let x_154 : f32 = u_xlat0.x;
  let x_156 : f32 = x_127.unity_MatrixV[3i].z;
  u_xlat0.x = (x_154 + x_156);
  let x_160 : f32 = u_xlat0.x;
  let x_164 : f32 = x_127.x_ProjectionParams.y;
  u_xlat0.x = (-(x_160) + -(x_164));
  let x_169 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_169, 0.0f);
  let x_174 : f32 = u_xlat0.x;
  let x_177 : f32 = x_127.unity_FogParams.x;
  u_xlat0.x = (x_174 * x_177);
  let x_181 : f32 = u_xlat0.x;
  let x_183 : f32 = u_xlat0.x;
  u_xlat0.x = (x_181 * -(x_183));
  let x_188 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_188);
  let x_192 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_192) + 1.0f);
  let x_197 : f32 = u_xlat0.x;
  let x_200 : f32 = x_127.x_BA_SkyboxRatio;
  u_xlat0.x = (x_197 / x_200);
  let x_204 : f32 = u_xlat0.x;
  let x_207 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_204) * x_207) + 1.0f);
  let x_212 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_212);
  let x_216 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_216) + 1.0f);
  let x_221 : f32 = x_127.x_BA_SkyboxRatio;
  u_xlat6.x = (-(x_221) + 1.0f);
  let x_227 : f32 = x_127.x_WorldSpaceCameraPos.y;
  let x_230 : f32 = u_xlat6.x;
  let x_233 : f32 = vs_INTERP0.y;
  u_xlat6.x = ((-(x_227) * x_230) + x_233);
  let x_240 : f32 = x_238.Vector1_10DA9AB3;
  let x_243 : f32 = x_127.x_BA_SkyboxRatio;
  let x_246 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_240) * x_243) + x_246);
  let x_252 : f32 = x_127.x_BA_SkyboxRatio;
  let x_254 : f32 = x_238.Vector1_33982692;
  u_xlat12.x = (x_252 * x_254);
  let x_258 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_258, 0.0f);
  let x_262 : f32 = u_xlat12.x;
  u_xlat12.x = (1.0f / x_262);
  let x_266 : f32 = u_xlat12.x;
  let x_268 : f32 = u_xlat6.x;
  u_xlat6.x = (x_266 * x_268);
  let x_272 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_272, 0.0f, 1.0f);
  let x_276 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_276) + 1.0f);
  let x_281 : f32 = u_xlat6.x;
  let x_284 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_281) * x_284) + 1.0f);
  let x_289 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_289, 1.0f);
  let x_298 : f32 = vs_INTERP2.w;
  u_xlatb6.x = (0.0f < x_298);
  let x_303 : f32 = x_36.unity_WorldTransformParams.w;
  u_xlatb6.y = (x_303 >= 0.0f);
  let x_307 : bool = u_xlatb6.x;
  u_xlat6.x = select(-1.0f, 1.0f, x_307);
  let x_312 : bool = u_xlatb6.y;
  u_xlat6.y = select(-1.0f, 1.0f, x_312);
  let x_316 : f32 = u_xlat6.y;
  let x_318 : f32 = u_xlat6.x;
  u_xlat6.x = (x_316 * x_318);
  let x_322 : vec3<f32> = vs_INTERP1;
  let x_324 : vec4<f32> = vs_INTERP2;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.y, x_322.z, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec3<f32> = vs_INTERP1;
  let x_330 : vec4<f32> = vs_INTERP2;
  let x_333 : vec4<f32> = u_xlat1;
  let x_336 : vec3<f32> = ((x_329 * vec3<f32>(x_330.y, x_330.z, x_330.x)) + -(vec3<f32>(x_333.x, x_333.y, x_333.z)));
  let x_337 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_336.x, x_336.y, x_336.z, x_337.w);
  let x_339 : vec3<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_339.x, x_339.x, x_339.x) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec3<f32> = vs_INTERP1;
  let x_345 : vec3<f32> = vs_INTERP1;
  u_xlat1.x = dot(x_344, x_345);
  let x_349 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_349);
  let x_353 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_353);
  let x_356 : vec3<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_356 * vec3<f32>(x_357.x, x_357.x, x_357.x));
  let x_361 : vec4<f32> = u_xlat1;
  let x_363 : vec3<f32> = vs_INTERP1;
  u_xlat7 = (vec3<f32>(x_361.x, x_361.x, x_361.x) * vec3<f32>(x_363.y, x_363.z, x_363.x));
  let x_367 : vec4<f32> = u_xlat1;
  let x_369 : vec4<f32> = vs_INTERP2;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.x, x_367.x) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_375 : vec3<f32> = u_xlat6;
  let x_376 : vec3<f32> = u_xlat7;
  let x_377 : vec3<f32> = (x_375 * x_376);
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_380 : vec3<f32> = u_xlat6;
  let x_382 : vec3<f32> = u_xlat7;
  let x_385 : vec4<f32> = u_xlat3;
  let x_388 : vec3<f32> = ((vec3<f32>(x_380.x, x_380.z, x_380.y) * vec3<f32>(x_382.z, x_382.y, x_382.x)) + -(vec3<f32>(x_385.y, x_385.x, x_385.z)));
  let x_389 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_391 : vec4<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_391.y, x_391.x, x_391.z), vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_399 : f32 = u_xlat1.x;
  u_xlatb1 = (x_399 < 0.0f);
  let x_401 : bool = u_xlatb1;
  u_xlat1.x = select(1.0f, -1.0f, x_401);
  let x_406 : f32 = u_xlat6.x;
  let x_408 : f32 = u_xlat2.x;
  u_xlat20 = (x_406 * x_408);
  let x_411 : f32 = u_xlat2.z;
  let x_413 : f32 = u_xlat6.y;
  let x_415 : f32 = u_xlat20;
  u_xlat3.z = ((x_411 * x_413) + -(x_415));
  let x_420 : vec3<f32> = u_xlat6;
  let x_423 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.y = dot(vec3<f32>(x_420.y, x_420.z, x_420.x), vec3<f32>(x_423.x, x_423.y, x_423.z));
  let x_428 : f32 = u_xlat7.z;
  let x_430 : f32 = u_xlat2.z;
  u_xlat6.x = (x_428 * x_430);
  let x_434 : f32 = u_xlat7.y;
  let x_436 : f32 = u_xlat2.x;
  let x_439 : f32 = u_xlat6.x;
  u_xlat3.y = ((x_434 * x_436) + -(x_439));
  let x_443 : vec3<f32> = u_xlat7;
  let x_446 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.z = dot(vec3<f32>(x_443.z, x_443.x, x_443.y), vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_450 : vec4<f32> = u_xlat2;
  let x_453 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.x = dot(vec3<f32>(x_450.x, x_450.y, x_450.z), vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_457.x, x_457.x, x_457.x) * vec3<f32>(x_459.x, x_459.y, x_459.z));
  let x_462 : vec3<f32> = u_xlat6;
  let x_463 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_462, x_463);
  let x_467 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_467, 1.17549435e-37f);
  let x_472 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_472);
  let x_475 : vec3<f32> = u_xlat6;
  let x_476 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_475 * vec3<f32>(x_476.x, x_476.x, x_476.x));
  let x_479 : vec3<f32> = u_xlat6;
  let x_480 : vec3<f32> = u_xlat6;
  let x_481 : vec3<f32> = (x_479 * x_480);
  let x_482 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : vec3<f32> = u_xlat6;
  let x_488 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_485.x, x_485.y, x_485.z, x_485.z));
  u_xlatb6 = vec3<bool>(x_488.x, x_488.y, x_488.z);
  let x_501 : vec4<f32> = vs_INTERP3;
  let x_504 : f32 = x_127.x_GlobalMipBias.x;
  let x_505 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_501.x, x_501.y), x_504);
  u_xlat2 = x_505;
  let x_507 : bool = u_xlatb6.x;
  if (x_507) {
    let x_512 : f32 = u_xlat2.z;
    x_508 = x_512;
  } else {
    let x_515 : f32 = u_xlat2.x;
    x_508 = x_515;
  }
  let x_516 : f32 = x_508;
  u_xlat6.x = x_516;
  let x_519 : bool = u_xlatb6.y;
  if (x_519) {
    let x_524 : f32 = u_xlat2.y;
    x_520 = x_524;
  } else {
    let x_527 : f32 = u_xlat2.w;
    x_520 = x_527;
  }
  let x_528 : f32 = x_520;
  u_xlat6.y = x_528;
  let x_530 : vec4<f32> = u_xlat1;
  let x_532 : vec3<f32> = u_xlat6;
  let x_534 : vec2<f32> = (vec2<f32>(x_530.x, x_530.y) * vec2<f32>(x_532.x, x_532.y));
  let x_535 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_534.x, x_534.y, x_535.z);
  let x_538 : f32 = u_xlat6.y;
  let x_540 : f32 = u_xlat6.x;
  u_xlat6.x = (x_538 + x_540);
  let x_548 : vec4<f32> = vs_INTERP3;
  let x_551 : f32 = x_127.x_GlobalMipBias.x;
  let x_552 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_548.x, x_548.y), x_551);
  u_xlat3 = x_552;
  let x_554 : bool = u_xlatb6.z;
  if (x_554) {
    let x_559 : f32 = u_xlat3.y;
    x_555 = x_559;
  } else {
    let x_562 : f32 = u_xlat3.x;
    x_555 = x_562;
  }
  let x_563 : f32 = x_555;
  u_xlat12.x = x_563;
  let x_566 : f32 = u_xlat12.x;
  let x_568 : f32 = u_xlat1.z;
  let x_571 : f32 = u_xlat6.x;
  u_xlat1.y = ((x_566 * x_568) + x_571);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_577 : vec4<f32> = u_xlat1;
  let x_579 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(vec3<f32>(x_577.y, x_577.z, x_577.z), vec3<f32>(x_579.y, x_579.z, x_579.z));
  let x_584 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_584);
  let x_587 : vec3<f32> = u_xlat6;
  let x_589 : vec4<f32> = u_xlat1;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.x, x_587.x) * vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat1;
  let x_596 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_594.y, x_594.z, x_594.y) * vec3<f32>(x_596.z, x_596.z, x_596.y));
  let x_601 : f32 = u_xlat1.z;
  let x_603 : f32 = u_xlat1.z;
  let x_606 : f32 = u_xlat6.z;
  u_xlat18 = ((x_601 * x_603) + -(x_606));
  let x_612 : vec4<f32> = x_36.unity_SHBr;
  let x_613 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_612, vec4<f32>(x_613.x, x_613.x, x_613.y, x_613.y));
  let x_619 : vec4<f32> = x_36.unity_SHBg;
  let x_620 : vec3<f32> = u_xlat6;
  u_xlat5.y = dot(x_619, vec4<f32>(x_620.x, x_620.x, x_620.y, x_620.y));
  let x_626 : vec4<f32> = x_36.unity_SHBb;
  let x_627 : vec3<f32> = u_xlat6;
  u_xlat5.z = dot(x_626, vec4<f32>(x_627.x, x_627.x, x_627.y, x_627.y));
  let x_633 : vec4<f32> = x_36.unity_SHC;
  let x_635 : f32 = u_xlat18;
  let x_638 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_633.x, x_633.y, x_633.z) * vec3<f32>(x_635, x_635, x_635)) + x_638);
  let x_642 : vec4<f32> = x_36.unity_SHAr;
  let x_644 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_642.y, x_642.x, x_642.z, x_642.w), vec4<f32>(x_644.y, x_644.z, x_644.z, x_644.w));
  let x_650 : vec4<f32> = x_36.unity_SHAg;
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_650.y, x_650.x, x_650.z, x_650.w), vec4<f32>(x_652.y, x_652.z, x_652.z, x_652.w));
  let x_658 : vec4<f32> = x_36.unity_SHAb;
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_658, x_659);
  let x_662 : vec3<f32> = u_xlat6;
  let x_663 : vec3<f32> = u_xlat5;
  u_xlat6 = (x_662 + x_663);
  let x_665 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_665, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_668 : vec3<f32> = u_xlat6;
  let x_670 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_672 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_674 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_675 : vec3<f32> = vec3<f32>(x_670, x_672, x_674);
  u_xlat6 = (x_668 * vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_681 : vec3<f32> = u_xlat4;
  let x_682 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_681, x_682);
  let x_686 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_686);
  let x_689 : vec4<f32> = u_xlat1;
  let x_691 : vec3<f32> = u_xlat4;
  let x_692 : vec3<f32> = (vec3<f32>(x_689.x, x_689.x, x_689.x) * x_691);
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
  let x_696 : vec4<f32> = u_xlat1;
  let x_698 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_696.x, x_696.y, x_696.z, x_696.x));
  u_xlatb4 = vec3<bool>(x_698.x, x_698.y, x_698.z);
  let x_700 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec3<f32> = (vec3<f32>(x_700.x, x_700.y, x_700.z) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : vec4<f32> = u_xlat2;
  hlslcc_movcTemp = x_708;
  let x_710 : bool = u_xlatb4.x;
  if (x_710) {
    let x_715 : f32 = u_xlat2.z;
    x_711 = x_715;
  } else {
    let x_718 : f32 = u_xlat2.x;
    x_711 = x_718;
  }
  let x_719 : f32 = x_711;
  hlslcc_movcTemp.x = x_719;
  let x_722 : bool = u_xlatb4.y;
  if (x_722) {
    let x_727 : f32 = u_xlat2.y;
    x_723 = x_727;
  } else {
    let x_730 : f32 = u_xlat2.w;
    x_723 = x_730;
  }
  let x_731 : f32 = x_723;
  hlslcc_movcTemp.y = x_731;
  let x_733 : vec4<f32> = hlslcc_movcTemp;
  u_xlat2 = x_733;
  let x_736 : bool = u_xlatb4.z;
  if (x_736) {
    let x_741 : f32 = u_xlat3.y;
    x_737 = x_741;
  } else {
    let x_744 : f32 = u_xlat3.x;
    x_737 = x_744;
  }
  let x_745 : f32 = x_737;
  u_xlat19 = x_745;
  let x_746 : vec4<f32> = u_xlat1;
  let x_748 : vec4<f32> = u_xlat2;
  let x_750 : vec2<f32> = (vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_748.x, x_748.y));
  let x_751 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_750.x, x_750.y, x_751.z, x_751.w);
  let x_754 : f32 = u_xlat1.y;
  let x_756 : f32 = u_xlat1.x;
  u_xlat1.x = (x_754 + x_756);
  let x_759 : f32 = u_xlat19;
  let x_761 : f32 = u_xlat1.z;
  let x_764 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_759 * x_761) + x_764);
  let x_768 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_768);
  let x_772 : f32 = x_238.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat7.x = (x_772 * 0.5f);
  let x_777 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_777, 0.001f);
  let x_782 : f32 = u_xlat1.x;
  let x_784 : f32 = u_xlat7.x;
  u_xlat1.x = (x_782 * x_784);
  let x_788 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_788);
  let x_791 : vec3<f32> = vs_INTERP0;
  let x_795 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  u_xlat7 = (-(x_791) + x_795);
  let x_797 : vec3<f32> = u_xlat7;
  let x_798 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_797, x_798);
  let x_802 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_802);
  let x_805 : vec3<f32> = u_xlat7;
  let x_806 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_805 * vec3<f32>(x_806.x, x_806.x, x_806.x));
  let x_812 : f32 = x_127.unity_OrthoParams.w;
  u_xlatb2 = (x_812 == 0.0f);
  let x_815 : f32 = x_127.unity_MatrixV[0i].z;
  u_xlat4.x = x_815;
  let x_818 : f32 = x_127.unity_MatrixV[1i].z;
  u_xlat4.y = x_818;
  let x_821 : f32 = x_127.unity_MatrixV[2i].z;
  u_xlat4.z = x_821;
  let x_823 : bool = u_xlatb2;
  if (x_823) {
    let x_827 : vec3<f32> = u_xlat7;
    x_824 = x_827;
  } else {
    let x_829 : vec3<f32> = u_xlat4;
    x_824 = x_829;
  }
  let x_830 : vec3<f32> = x_824;
  u_xlat7 = x_830;
  let x_831 : vec3<f32> = u_xlat7;
  let x_832 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_831, x_832);
  let x_836 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_836);
  let x_839 : vec3<f32> = u_xlat7;
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_839 * vec3<f32>(x_840.x, x_840.x, x_840.x));
  let x_843 : vec3<f32> = u_xlat7;
  let x_845 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat7.x = dot(x_843, -(vec3<f32>(x_845.x, x_845.y, x_845.z)));
  let x_851 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_851, 0.0f, 1.0f);
  let x_855 : f32 = u_xlat7.x;
  u_xlat7.x = log2(x_855);
  let x_859 : f32 = u_xlat7.x;
  u_xlat7.x = (x_859 * 150.0f);
  let x_864 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_864);
  let x_868 : f32 = u_xlat7.x;
  u_xlat7.x = (x_868 + 1.0f);
  let x_872 : f32 = u_xlat1.x;
  let x_874 : f32 = u_xlat7.x;
  u_xlat1.x = (x_872 * x_874);
  let x_878 : vec4<f32> = x_127.x_MainLightColor;
  let x_880 : vec4<f32> = u_xlat1;
  let x_883 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880.x, x_880.x, x_880.x)) + x_883);
  let x_886 : vec4<f32> = x_238.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_888 : vec3<f32> = u_xlat6;
  let x_892 : vec4<f32> = x_127.unity_FogColor;
  u_xlat6 = ((vec3<f32>(x_886.x, x_886.y, x_886.z) * x_888) + -(vec3<f32>(x_892.x, x_892.y, x_892.z)));
  let x_898 : vec4<f32> = u_xlat0;
  let x_900 : vec3<f32> = u_xlat6;
  let x_903 : vec4<f32> = x_127.unity_FogColor;
  let x_905 : vec3<f32> = ((vec3<f32>(x_898.x, x_898.x, x_898.x) * x_900) + vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_910 : f32 = x_127.x_ProjectionParams.x;
  u_xlatb0 = (x_910 < 0.0f);
  let x_913 : f32 = hlslcc_FragCoord.y;
  let x_916 : f32 = x_127.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_913) + x_916);
  let x_919 : bool = u_xlatb0;
  if (x_919) {
    let x_924 : f32 = u_xlat6.x;
    x_920 = x_924;
  } else {
    let x_927 : f32 = hlslcc_FragCoord.y;
    x_920 = x_927;
  }
  let x_928 : f32 = x_920;
  u_xlat0.y = x_928;
  let x_931 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_931;
  let x_933 : vec4<f32> = u_xlat0;
  let x_936 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_938 : vec2<f32> = (vec2<f32>(x_933.x, x_933.y) / vec2<f32>(x_936.x, x_936.y));
  let x_939 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
  let x_942 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_942) + 1.0f);
  let x_946 : vec4<f32> = u_xlat0;
  let x_950 : vec4<f32> = x_127.x_ScreenParams;
  let x_952 : vec2<f32> = (vec2<f32>(x_946.x, x_946.z) * vec2<f32>(x_950.x, x_950.y));
  let x_953 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_952.x, x_952.y, x_953.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat0;
  let x_957 : vec2<f32> = floor(vec2<f32>(x_955.x, x_955.y));
  let x_958 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_957.x, x_957.y, x_958.z, x_958.w);
  let x_961 : vec4<f32> = x_36.unity_ObjectToWorld[3i];
  let x_964 : vec4<f32> = x_36.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_961.x, x_961.y, x_961.z), vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_969 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_969);
  let x_974 : vec4<f32> = x_127.x_TimeParameters;
  let x_979 : vec2<f32> = (vec2<f32>(x_974.x, x_974.x) * vec2<f32>(0.017999999f, 0.319999993f));
  let x_980 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_979.x, x_979.y, x_980.z, x_980.w);
  let x_982 : vec2<f32> = u_xlat12;
  let x_987 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_982.x, x_982.x) * vec2<f32>(0.32100001f, 0.32100001f)) + vec2<f32>(x_987.x, x_987.y));
  let x_990 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_990);
  let x_992 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_992.x, x_992.x), vec2<f32>(12.989800453f, 78.233001709f));
  let x_999 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_999.y, x_999.y), vec2<f32>(12.989800453f, 78.233001709f));
  let x_1003 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_1003);
  let x_1005 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1005 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1009 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_1009);
  let x_1011 : vec2<f32> = u_xlat12;
  let x_1013 : vec4<f32> = x_127.x_ScreenParams;
  let x_1015 : vec2<f32> = (x_1011 * vec2<f32>(x_1013.x, x_1013.y));
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat0;
  let x_1020 : vec4<f32> = u_xlat1;
  let x_1022 : vec2<f32> = (vec2<f32>(x_1018.x, x_1018.y) + vec2<f32>(x_1020.x, x_1020.y));
  let x_1023 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1022.x, x_1022.y, x_1023.z, x_1023.w);
  let x_1025 : vec4<f32> = u_xlat0;
  let x_1029 : vec2<f32> = (vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_1030 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
  let x_1032 : vec4<f32> = u_xlat0;
  let x_1034 : vec2<f32> = fract(vec2<f32>(x_1032.x, x_1032.y));
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1045 : f32 = x_127.x_GlobalMipBias.x;
  let x_1046 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, vec2<f32>(x_1042.x, x_1042.y), x_1045);
  u_xlat0.x = x_1046.y;
  let x_1050 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1050 * 0.300000012f) + 0.800000012f);
  let x_1057 : f32 = u_xlat0.x;
  let x_1061 : f32 = x_127.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_1057) * x_1061) + 1.0f);
  let x_1066 : f32 = u_xlat0.x;
  let x_1069 : f32 = u_xlat3.z;
  u_xlat0.x = (-(x_1066) + x_1069);
  let x_1073 : f32 = u_xlat3.w;
  u_xlat6.x = (-(x_1073) + 1.0f);
  let x_1078 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_1078);
  let x_1082 : f32 = u_xlat6.x;
  let x_1084 : f32 = x_238.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_1082 * x_1084);
  let x_1088 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_1088);
  let x_1092 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1092) + 1.0f);
  let x_1097 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1097 * 10.0f);
  let x_1102 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1102, 0.0f, 1.0f);
  let x_1106 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_1106 * -2.0f) + 3.0f);
  let x_1113 : f32 = u_xlat0.x;
  let x_1115 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1113 * x_1115);
  let x_1119 : f32 = u_xlat0.x;
  let x_1121 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1119 * x_1121);
  let x_1125 : f32 = u_xlat0.x;
  let x_1127 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_1125, x_1127);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  main_1();
  return main_out(SV_Target0);
}

