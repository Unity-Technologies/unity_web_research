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
  x_RenderingLayerMaxInt : u32,
  x_RenderingLayerRcpMaxInt : f32,
  @size(8)
  padding_1 : u32,
  x_TimeParameters : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_SkyboxRatio : f32,
  @size(12)
  padding_3 : u32,
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
  padding_4 : u32,
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

var<private> SV_Target1 : vec4<f32>;

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
  var x_510 : f32;
  var x_522 : f32;
  var x_557 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_713 : f32;
  var x_725 : f32;
  var u_xlat19 : f32;
  var x_739 : f32;
  var u_xlatb2 : bool;
  var x_826 : vec3<f32>;
  var u_xlatb0 : bool;
  var x_922 : f32;
  var u_xlatu0 : u32;
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
  let x_241 : f32 = x_238.Vector1_10DA9AB3;
  let x_244 : f32 = x_127.x_BA_SkyboxRatio;
  let x_247 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_241) * x_244) + x_247);
  let x_253 : f32 = x_127.x_BA_SkyboxRatio;
  let x_256 : f32 = x_238.Vector1_33982692;
  u_xlat12.x = (x_253 * x_256);
  let x_260 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_260, 0.0f);
  let x_264 : f32 = u_xlat12.x;
  u_xlat12.x = (1.0f / x_264);
  let x_268 : f32 = u_xlat12.x;
  let x_270 : f32 = u_xlat6.x;
  u_xlat6.x = (x_268 * x_270);
  let x_274 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_274, 0.0f, 1.0f);
  let x_278 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_278) + 1.0f);
  let x_283 : f32 = u_xlat6.x;
  let x_286 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_283) * x_286) + 1.0f);
  let x_291 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_291, 1.0f);
  let x_300 : f32 = vs_INTERP2.w;
  u_xlatb6.x = (0.0f < x_300);
  let x_305 : f32 = x_36.unity_WorldTransformParams.w;
  u_xlatb6.y = (x_305 >= 0.0f);
  let x_309 : bool = u_xlatb6.x;
  u_xlat6.x = select(-1.0f, 1.0f, x_309);
  let x_314 : bool = u_xlatb6.y;
  u_xlat6.y = select(-1.0f, 1.0f, x_314);
  let x_318 : f32 = u_xlat6.y;
  let x_320 : f32 = u_xlat6.x;
  u_xlat6.x = (x_318 * x_320);
  let x_324 : vec3<f32> = vs_INTERP1;
  let x_326 : vec4<f32> = vs_INTERP2;
  let x_328 : vec3<f32> = (vec3<f32>(x_324.y, x_324.z, x_324.x) * vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_331 : vec3<f32> = vs_INTERP1;
  let x_332 : vec4<f32> = vs_INTERP2;
  let x_335 : vec4<f32> = u_xlat1;
  let x_338 : vec3<f32> = ((x_331 * vec3<f32>(x_332.y, x_332.z, x_332.x)) + -(vec3<f32>(x_335.x, x_335.y, x_335.z)));
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_341 : vec3<f32> = u_xlat6;
  let x_343 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_341.x, x_341.x, x_341.x) * vec3<f32>(x_343.x, x_343.y, x_343.z));
  let x_346 : vec3<f32> = vs_INTERP1;
  let x_347 : vec3<f32> = vs_INTERP1;
  u_xlat1.x = dot(x_346, x_347);
  let x_351 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_351);
  let x_355 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_355);
  let x_358 : vec3<f32> = u_xlat6;
  let x_359 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_358 * vec3<f32>(x_359.x, x_359.x, x_359.x));
  let x_363 : vec4<f32> = u_xlat1;
  let x_365 : vec3<f32> = vs_INTERP1;
  u_xlat7 = (vec3<f32>(x_363.x, x_363.x, x_363.x) * vec3<f32>(x_365.y, x_365.z, x_365.x));
  let x_369 : vec4<f32> = u_xlat1;
  let x_371 : vec4<f32> = vs_INTERP2;
  let x_373 : vec3<f32> = (vec3<f32>(x_369.x, x_369.x, x_369.x) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_373.x, x_373.y, x_373.z, x_374.w);
  let x_377 : vec3<f32> = u_xlat6;
  let x_378 : vec3<f32> = u_xlat7;
  let x_379 : vec3<f32> = (x_377 * x_378);
  let x_380 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
  let x_382 : vec3<f32> = u_xlat6;
  let x_384 : vec3<f32> = u_xlat7;
  let x_387 : vec4<f32> = u_xlat3;
  let x_390 : vec3<f32> = ((vec3<f32>(x_382.x, x_382.z, x_382.y) * vec3<f32>(x_384.z, x_384.y, x_384.x)) + -(vec3<f32>(x_387.y, x_387.x, x_387.z)));
  let x_391 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat2;
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_393.y, x_393.x, x_393.z), vec3<f32>(x_395.x, x_395.y, x_395.z));
  let x_401 : f32 = u_xlat1.x;
  u_xlatb1 = (x_401 < 0.0f);
  let x_403 : bool = u_xlatb1;
  u_xlat1.x = select(1.0f, -1.0f, x_403);
  let x_408 : f32 = u_xlat6.x;
  let x_410 : f32 = u_xlat2.x;
  u_xlat20 = (x_408 * x_410);
  let x_413 : f32 = u_xlat2.z;
  let x_415 : f32 = u_xlat6.y;
  let x_417 : f32 = u_xlat20;
  u_xlat3.z = ((x_413 * x_415) + -(x_417));
  let x_422 : vec3<f32> = u_xlat6;
  let x_425 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.y = dot(vec3<f32>(x_422.y, x_422.z, x_422.x), vec3<f32>(x_425.x, x_425.y, x_425.z));
  let x_430 : f32 = u_xlat7.z;
  let x_432 : f32 = u_xlat2.z;
  u_xlat6.x = (x_430 * x_432);
  let x_436 : f32 = u_xlat7.y;
  let x_438 : f32 = u_xlat2.x;
  let x_441 : f32 = u_xlat6.x;
  u_xlat3.y = ((x_436 * x_438) + -(x_441));
  let x_445 : vec3<f32> = u_xlat7;
  let x_448 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.z = dot(vec3<f32>(x_445.z, x_445.x, x_445.y), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_452 : vec4<f32> = u_xlat2;
  let x_455 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat4.x = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_459.x, x_459.x, x_459.x) * vec3<f32>(x_461.x, x_461.y, x_461.z));
  let x_464 : vec3<f32> = u_xlat6;
  let x_465 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_464, x_465);
  let x_469 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_469, 1.17549435e-37f);
  let x_474 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_474);
  let x_477 : vec3<f32> = u_xlat6;
  let x_478 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_477 * vec3<f32>(x_478.x, x_478.x, x_478.x));
  let x_481 : vec3<f32> = u_xlat6;
  let x_482 : vec3<f32> = u_xlat6;
  let x_483 : vec3<f32> = (x_481 * x_482);
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  let x_487 : vec3<f32> = u_xlat6;
  let x_490 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_487.x, x_487.y, x_487.z, x_487.z));
  u_xlatb6 = vec3<bool>(x_490.x, x_490.y, x_490.z);
  let x_503 : vec4<f32> = vs_INTERP3;
  let x_506 : f32 = x_127.x_GlobalMipBias.x;
  let x_507 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_503.x, x_503.y), x_506);
  u_xlat2 = x_507;
  let x_509 : bool = u_xlatb6.x;
  if (x_509) {
    let x_514 : f32 = u_xlat2.z;
    x_510 = x_514;
  } else {
    let x_517 : f32 = u_xlat2.x;
    x_510 = x_517;
  }
  let x_518 : f32 = x_510;
  u_xlat6.x = x_518;
  let x_521 : bool = u_xlatb6.y;
  if (x_521) {
    let x_526 : f32 = u_xlat2.y;
    x_522 = x_526;
  } else {
    let x_529 : f32 = u_xlat2.w;
    x_522 = x_529;
  }
  let x_530 : f32 = x_522;
  u_xlat6.y = x_530;
  let x_532 : vec4<f32> = u_xlat1;
  let x_534 : vec3<f32> = u_xlat6;
  let x_536 : vec2<f32> = (vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_534.x, x_534.y));
  let x_537 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_536.x, x_536.y, x_537.z);
  let x_540 : f32 = u_xlat6.y;
  let x_542 : f32 = u_xlat6.x;
  u_xlat6.x = (x_540 + x_542);
  let x_550 : vec4<f32> = vs_INTERP3;
  let x_553 : f32 = x_127.x_GlobalMipBias.x;
  let x_554 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_550.x, x_550.y), x_553);
  u_xlat3 = x_554;
  let x_556 : bool = u_xlatb6.z;
  if (x_556) {
    let x_561 : f32 = u_xlat3.y;
    x_557 = x_561;
  } else {
    let x_564 : f32 = u_xlat3.x;
    x_557 = x_564;
  }
  let x_565 : f32 = x_557;
  u_xlat12.x = x_565;
  let x_568 : f32 = u_xlat12.x;
  let x_570 : f32 = u_xlat1.z;
  let x_573 : f32 = u_xlat6.x;
  u_xlat1.y = ((x_568 * x_570) + x_573);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_579 : vec4<f32> = u_xlat1;
  let x_581 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(vec3<f32>(x_579.y, x_579.z, x_579.z), vec3<f32>(x_581.y, x_581.z, x_581.z));
  let x_586 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_586);
  let x_589 : vec3<f32> = u_xlat6;
  let x_591 : vec4<f32> = u_xlat1;
  let x_593 : vec3<f32> = (vec3<f32>(x_589.x, x_589.x, x_589.x) * vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : vec4<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_596.y, x_596.z, x_596.y) * vec3<f32>(x_598.z, x_598.z, x_598.y));
  let x_603 : f32 = u_xlat1.z;
  let x_605 : f32 = u_xlat1.z;
  let x_608 : f32 = u_xlat6.z;
  u_xlat18 = ((x_603 * x_605) + -(x_608));
  let x_614 : vec4<f32> = x_36.unity_SHBr;
  let x_615 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_614, vec4<f32>(x_615.x, x_615.x, x_615.y, x_615.y));
  let x_621 : vec4<f32> = x_36.unity_SHBg;
  let x_622 : vec3<f32> = u_xlat6;
  u_xlat5.y = dot(x_621, vec4<f32>(x_622.x, x_622.x, x_622.y, x_622.y));
  let x_628 : vec4<f32> = x_36.unity_SHBb;
  let x_629 : vec3<f32> = u_xlat6;
  u_xlat5.z = dot(x_628, vec4<f32>(x_629.x, x_629.x, x_629.y, x_629.y));
  let x_635 : vec4<f32> = x_36.unity_SHC;
  let x_637 : f32 = u_xlat18;
  let x_640 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_637, x_637, x_637)) + x_640);
  let x_644 : vec4<f32> = x_36.unity_SHAr;
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_644.y, x_644.x, x_644.z, x_644.w), vec4<f32>(x_646.y, x_646.z, x_646.z, x_646.w));
  let x_652 : vec4<f32> = x_36.unity_SHAg;
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_652.y, x_652.x, x_652.z, x_652.w), vec4<f32>(x_654.y, x_654.z, x_654.z, x_654.w));
  let x_660 : vec4<f32> = x_36.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_660, x_661);
  let x_664 : vec3<f32> = u_xlat6;
  let x_665 : vec3<f32> = u_xlat5;
  u_xlat6 = (x_664 + x_665);
  let x_667 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_667, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_670 : vec3<f32> = u_xlat6;
  let x_672 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_674 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_676 : f32 = x_238.Vector1_5f4b185241524942830132fc71554a33;
  let x_677 : vec3<f32> = vec3<f32>(x_672, x_674, x_676);
  u_xlat6 = (x_670 * vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_683 : vec3<f32> = u_xlat4;
  let x_684 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_683, x_684);
  let x_688 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_688);
  let x_691 : vec4<f32> = u_xlat1;
  let x_693 : vec3<f32> = u_xlat4;
  let x_694 : vec3<f32> = (vec3<f32>(x_691.x, x_691.x, x_691.x) * x_693);
  let x_695 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_698 : vec4<f32> = u_xlat1;
  let x_700 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_698.x, x_698.y, x_698.z, x_698.x));
  u_xlatb4 = vec3<bool>(x_700.x, x_700.y, x_700.z);
  let x_702 : vec4<f32> = u_xlat1;
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec3<f32> = (vec3<f32>(x_702.x, x_702.y, x_702.z) * vec3<f32>(x_704.x, x_704.y, x_704.z));
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_710 : vec4<f32> = u_xlat2;
  hlslcc_movcTemp = x_710;
  let x_712 : bool = u_xlatb4.x;
  if (x_712) {
    let x_717 : f32 = u_xlat2.z;
    x_713 = x_717;
  } else {
    let x_720 : f32 = u_xlat2.x;
    x_713 = x_720;
  }
  let x_721 : f32 = x_713;
  hlslcc_movcTemp.x = x_721;
  let x_724 : bool = u_xlatb4.y;
  if (x_724) {
    let x_729 : f32 = u_xlat2.y;
    x_725 = x_729;
  } else {
    let x_732 : f32 = u_xlat2.w;
    x_725 = x_732;
  }
  let x_733 : f32 = x_725;
  hlslcc_movcTemp.y = x_733;
  let x_735 : vec4<f32> = hlslcc_movcTemp;
  u_xlat2 = x_735;
  let x_738 : bool = u_xlatb4.z;
  if (x_738) {
    let x_743 : f32 = u_xlat3.y;
    x_739 = x_743;
  } else {
    let x_746 : f32 = u_xlat3.x;
    x_739 = x_746;
  }
  let x_747 : f32 = x_739;
  u_xlat19 = x_747;
  let x_748 : vec4<f32> = u_xlat1;
  let x_750 : vec4<f32> = u_xlat2;
  let x_752 : vec2<f32> = (vec2<f32>(x_748.x, x_748.y) * vec2<f32>(x_750.x, x_750.y));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_756 : f32 = u_xlat1.y;
  let x_758 : f32 = u_xlat1.x;
  u_xlat1.x = (x_756 + x_758);
  let x_761 : f32 = u_xlat19;
  let x_763 : f32 = u_xlat1.z;
  let x_766 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_761 * x_763) + x_766);
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_770);
  let x_774 : f32 = x_238.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat7.x = (x_774 * 0.5f);
  let x_779 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_779, 0.001f);
  let x_784 : f32 = u_xlat1.x;
  let x_786 : f32 = u_xlat7.x;
  u_xlat1.x = (x_784 * x_786);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_790);
  let x_793 : vec3<f32> = vs_INTERP0;
  let x_797 : vec3<f32> = x_127.x_WorldSpaceCameraPos;
  u_xlat7 = (-(x_793) + x_797);
  let x_799 : vec3<f32> = u_xlat7;
  let x_800 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_799, x_800);
  let x_804 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_804);
  let x_807 : vec3<f32> = u_xlat7;
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_807 * vec3<f32>(x_808.x, x_808.x, x_808.x));
  let x_814 : f32 = x_127.unity_OrthoParams.w;
  u_xlatb2 = (x_814 == 0.0f);
  let x_817 : f32 = x_127.unity_MatrixV[0i].z;
  u_xlat4.x = x_817;
  let x_820 : f32 = x_127.unity_MatrixV[1i].z;
  u_xlat4.y = x_820;
  let x_823 : f32 = x_127.unity_MatrixV[2i].z;
  u_xlat4.z = x_823;
  let x_825 : bool = u_xlatb2;
  if (x_825) {
    let x_829 : vec3<f32> = u_xlat7;
    x_826 = x_829;
  } else {
    let x_831 : vec3<f32> = u_xlat4;
    x_826 = x_831;
  }
  let x_832 : vec3<f32> = x_826;
  u_xlat7 = x_832;
  let x_833 : vec3<f32> = u_xlat7;
  let x_834 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_833, x_834);
  let x_838 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_838);
  let x_841 : vec3<f32> = u_xlat7;
  let x_842 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_841 * vec3<f32>(x_842.x, x_842.x, x_842.x));
  let x_845 : vec3<f32> = u_xlat7;
  let x_847 : vec4<f32> = x_127.x_MainLightPosition;
  u_xlat7.x = dot(x_845, -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
  let x_853 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_853, 0.0f, 1.0f);
  let x_857 : f32 = u_xlat7.x;
  u_xlat7.x = log2(x_857);
  let x_861 : f32 = u_xlat7.x;
  u_xlat7.x = (x_861 * 150.0f);
  let x_866 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_866);
  let x_870 : f32 = u_xlat7.x;
  u_xlat7.x = (x_870 + 1.0f);
  let x_874 : f32 = u_xlat1.x;
  let x_876 : f32 = u_xlat7.x;
  u_xlat1.x = (x_874 * x_876);
  let x_880 : vec4<f32> = x_127.x_MainLightColor;
  let x_882 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882.x, x_882.x, x_882.x)) + x_885);
  let x_888 : vec4<f32> = x_238.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_890 : vec3<f32> = u_xlat6;
  let x_894 : vec4<f32> = x_127.unity_FogColor;
  u_xlat6 = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * x_890) + -(vec3<f32>(x_894.x, x_894.y, x_894.z)));
  let x_900 : vec4<f32> = u_xlat0;
  let x_902 : vec3<f32> = u_xlat6;
  let x_905 : vec4<f32> = x_127.unity_FogColor;
  let x_907 : vec3<f32> = ((vec3<f32>(x_900.x, x_900.x, x_900.x) * x_902) + vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_912 : f32 = x_127.x_ProjectionParams.x;
  u_xlatb0 = (x_912 < 0.0f);
  let x_915 : f32 = hlslcc_FragCoord.y;
  let x_918 : f32 = x_127.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_915) + x_918);
  let x_921 : bool = u_xlatb0;
  if (x_921) {
    let x_926 : f32 = u_xlat6.x;
    x_922 = x_926;
  } else {
    let x_929 : f32 = hlslcc_FragCoord.y;
    x_922 = x_929;
  }
  let x_930 : f32 = x_922;
  u_xlat0.y = x_930;
  let x_933 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_933;
  let x_935 : vec4<f32> = u_xlat0;
  let x_938 : vec4<f32> = x_127.x_ScaledScreenParams;
  let x_940 : vec2<f32> = (vec2<f32>(x_935.x, x_935.y) / vec2<f32>(x_938.x, x_938.y));
  let x_941 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_940.x, x_940.y, x_941.z, x_941.w);
  let x_944 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_944) + 1.0f);
  let x_948 : vec4<f32> = u_xlat0;
  let x_952 : vec4<f32> = x_127.x_ScreenParams;
  let x_954 : vec2<f32> = (vec2<f32>(x_948.x, x_948.z) * vec2<f32>(x_952.x, x_952.y));
  let x_955 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec2<f32> = floor(vec2<f32>(x_957.x, x_957.y));
  let x_960 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
  let x_963 : vec4<f32> = x_36.unity_ObjectToWorld[3i];
  let x_966 : vec4<f32> = x_36.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_963.x, x_963.y, x_963.z), vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_971 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_971);
  let x_975 : vec4<f32> = x_127.x_TimeParameters;
  let x_980 : vec2<f32> = (vec2<f32>(x_975.x, x_975.x) * vec2<f32>(0.017999999f, 0.319999993f));
  let x_981 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
  let x_983 : vec2<f32> = u_xlat12;
  let x_988 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_983.x, x_983.x) * vec2<f32>(0.32100001f, 0.32100001f)) + vec2<f32>(x_988.x, x_988.y));
  let x_991 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_991);
  let x_993 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_993.x, x_993.x), vec2<f32>(12.989800453f, 78.233001709f));
  let x_1000 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_1000.y, x_1000.y), vec2<f32>(12.989800453f, 78.233001709f));
  let x_1004 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_1004);
  let x_1006 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1006 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1010 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_1010);
  let x_1012 : vec2<f32> = u_xlat12;
  let x_1014 : vec4<f32> = x_127.x_ScreenParams;
  let x_1016 : vec2<f32> = (x_1012 * vec2<f32>(x_1014.x, x_1014.y));
  let x_1017 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1016.x, x_1016.y, x_1017.z, x_1017.w);
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1021 : vec4<f32> = u_xlat1;
  let x_1023 : vec2<f32> = (vec2<f32>(x_1019.x, x_1019.y) + vec2<f32>(x_1021.x, x_1021.y));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1030 : vec2<f32> = (vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_1031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
  let x_1033 : vec4<f32> = u_xlat0;
  let x_1035 : vec2<f32> = fract(vec2<f32>(x_1033.x, x_1033.y));
  let x_1036 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1035.x, x_1035.y, x_1036.z, x_1036.w);
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1046 : f32 = x_127.x_GlobalMipBias.x;
  let x_1047 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, vec2<f32>(x_1043.x, x_1043.y), x_1046);
  u_xlat0.x = x_1047.y;
  let x_1051 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1051 * 0.300000012f) + 0.800000012f);
  let x_1058 : f32 = u_xlat0.x;
  let x_1062 : f32 = x_127.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_1058) * x_1062) + 1.0f);
  let x_1067 : f32 = u_xlat0.x;
  let x_1070 : f32 = u_xlat3.z;
  u_xlat0.x = (-(x_1067) + x_1070);
  let x_1074 : f32 = u_xlat3.w;
  u_xlat6.x = (-(x_1074) + 1.0f);
  let x_1079 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_1079);
  let x_1083 : f32 = u_xlat6.x;
  let x_1085 : f32 = x_238.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_1083 * x_1085);
  let x_1089 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_1089);
  let x_1093 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1093) + 1.0f);
  let x_1098 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1098 * 10.0f);
  let x_1103 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1103, 0.0f, 1.0f);
  let x_1107 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_1107 * -2.0f) + 3.0f);
  let x_1114 : f32 = u_xlat0.x;
  let x_1116 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1114 * x_1116);
  let x_1120 : f32 = u_xlat0.x;
  let x_1122 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1120 * x_1122);
  let x_1126 : f32 = u_xlat0.x;
  let x_1128 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_1126, x_1128);
  let x_1137 : u32 = x_127.x_RenderingLayerMaxInt;
  let x_1139 : f32 = x_36.unity_RenderingLayer.x;
  u_xlatu0 = (x_1137 & bitcast<u32>(x_1139));
  let x_1142 : u32 = u_xlatu0;
  u_xlat0.x = f32(x_1142);
  let x_1147 : f32 = u_xlat0.x;
  let x_1149 : f32 = x_127.x_RenderingLayerRcpMaxInt;
  SV_Target1.x = (x_1147 * x_1149);
  let x_1153 : f32 = SV_Target1.x;
  SV_Target1.x = clamp(x_1153, 0.0f, 1.0f);
  let x_1156 : vec4<f32> = SV_Target1;
  SV_Target1 = vec4<f32>(x_1156.x, vec3<f32>(0.0f, 0.0f, 0.0f).x, vec3<f32>(0.0f, 0.0f, 0.0f).y, vec3<f32>(0.0f, 0.0f, 0.0f).z);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  main_1();
  return main_out(SV_Target0, SV_Target1);
}

