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
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
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

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

@group(1) @binding(2) var<uniform> x_224 : UnityPerMaterial;

var<private> vs_INTERP2 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat12 : f32;
  var u_xlatb6 : vec3<bool>;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var x_490 : f32;
  var x_502 : f32;
  var x_537 : f32;
  var u_xlat18 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_691 : f32;
  var x_703 : f32;
  var u_xlat19 : f32;
  var x_717 : f32;
  var u_xlatb2 : bool;
  var x_803 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_INTERP0;
  let x_26 : vec4<f32> = x_21.unity_WorldToObject[1i];
  let x_28 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_33 : vec4<f32> = x_21.unity_WorldToObject[0i];
  let x_35 : vec3<f32> = vs_INTERP0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_WorldToObject[2i];
  let x_47 : vec3<f32> = vs_INTERP0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_WorldToObject[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_70 : vec3<f32> = (vec3<f32>(x_65.y, x_65.y, x_65.y) * vec3<f32>(x_68.x, x_68.y, x_68.z));
  let x_71 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_74 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_76 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = u_xlat1;
  let x_81 : vec3<f32> = ((vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_76.x, x_76.x, x_76.x)) + vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_82.z, x_81.z);
  let x_85 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_87 : vec4<f32> = u_xlat0;
  let x_90 : vec4<f32> = u_xlat0;
  let x_92 : vec3<f32> = ((vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_87.z, x_87.z, x_87.z)) + vec3<f32>(x_90.x, x_90.y, x_90.w));
  let x_93 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_95 : vec4<f32> = u_xlat0;
  let x_98 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_100 : vec3<f32> = (vec3<f32>(x_95.x, x_95.y, x_95.z) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_108 : f32 = u_xlat0.y;
  let x_116 : f32 = x_112.unity_MatrixV[1i].z;
  u_xlat6.x = (x_108 * x_116);
  let x_121 : f32 = x_112.unity_MatrixV[0i].z;
  let x_123 : f32 = u_xlat0.x;
  let x_126 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_121 * x_123) + x_126);
  let x_130 : f32 = x_112.unity_MatrixV[2i].z;
  let x_132 : f32 = u_xlat0.z;
  let x_135 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_130 * x_132) + x_135);
  let x_139 : f32 = u_xlat0.x;
  let x_141 : f32 = x_112.unity_MatrixV[3i].z;
  u_xlat0.x = (x_139 + x_141);
  let x_145 : f32 = u_xlat0.x;
  let x_149 : f32 = x_112.x_ProjectionParams.y;
  u_xlat0.x = (-(x_145) + -(x_149));
  let x_154 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_154, 0.0f);
  let x_159 : f32 = u_xlat0.x;
  let x_162 : f32 = x_112.unity_FogParams.x;
  u_xlat0.x = (x_159 * x_162);
  let x_166 : f32 = u_xlat0.x;
  let x_168 : f32 = u_xlat0.x;
  u_xlat0.x = (x_166 * -(x_168));
  let x_173 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_173);
  let x_177 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_177) + 1.0f);
  let x_183 : f32 = u_xlat0.x;
  let x_186 : f32 = x_112.x_BA_SkyboxRatio;
  u_xlat0.x = (x_183 / x_186);
  let x_190 : f32 = u_xlat0.x;
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_190) * x_193) + 1.0f);
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_202) + 1.0f);
  let x_207 : f32 = x_112.x_BA_SkyboxRatio;
  u_xlat6.x = (-(x_207) + 1.0f);
  let x_212 : f32 = x_112.x_WorldSpaceCameraPos.y;
  let x_215 : f32 = u_xlat6.x;
  let x_219 : f32 = vs_INTERP0.y;
  u_xlat6.x = ((-(x_212) * x_215) + x_219);
  let x_226 : f32 = x_224.Vector1_10DA9AB3;
  let x_229 : f32 = x_112.x_BA_SkyboxRatio;
  let x_232 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_226) * x_229) + x_232);
  let x_237 : f32 = x_112.x_BA_SkyboxRatio;
  let x_240 : f32 = x_224.Vector1_33982692;
  u_xlat12 = (x_237 * x_240);
  let x_242 : f32 = u_xlat12;
  u_xlat12 = max(x_242, 0.0f);
  let x_244 : f32 = u_xlat12;
  u_xlat12 = (1.0f / x_244);
  let x_246 : f32 = u_xlat12;
  let x_248 : f32 = u_xlat6.x;
  u_xlat6.x = (x_246 * x_248);
  let x_252 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_252, 0.0f, 1.0f);
  let x_256 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_256) + 1.0f);
  let x_261 : f32 = u_xlat6.x;
  let x_264 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_261) * x_264) + 1.0f);
  let x_269 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_269, 1.0f);
  let x_280 : f32 = vs_INTERP2.w;
  u_xlatb6.x = (0.0f < x_280);
  let x_285 : f32 = x_21.unity_WorldTransformParams.w;
  u_xlatb6.y = (x_285 >= 0.0f);
  let x_289 : bool = u_xlatb6.x;
  u_xlat6.x = select(-1.0f, 1.0f, x_289);
  let x_294 : bool = u_xlatb6.y;
  u_xlat6.y = select(-1.0f, 1.0f, x_294);
  let x_298 : f32 = u_xlat6.y;
  let x_300 : f32 = u_xlat6.x;
  u_xlat6.x = (x_298 * x_300);
  let x_304 : vec3<f32> = vs_INTERP1;
  let x_306 : vec4<f32> = vs_INTERP2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.y, x_304.z, x_304.x) * vec3<f32>(x_306.x, x_306.y, x_306.z));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_312 : vec4<f32> = vs_INTERP2;
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = ((x_311 * vec3<f32>(x_312.y, x_312.z, x_312.x)) + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = u_xlat6;
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec3<f32> = vs_INTERP1;
  let x_327 : vec3<f32> = vs_INTERP1;
  u_xlat1.x = dot(x_326, x_327);
  let x_331 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_331);
  let x_335 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_335);
  let x_338 : vec3<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_338 * vec3<f32>(x_339.x, x_339.x, x_339.x));
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = vs_INTERP1;
  u_xlat7 = (vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.y, x_345.z, x_345.x));
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = vs_INTERP2;
  let x_353 : vec3<f32> = (vec3<f32>(x_349.x, x_349.x, x_349.x) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec3<f32> = u_xlat6;
  let x_358 : vec3<f32> = u_xlat7;
  let x_359 : vec3<f32> = (x_357 * x_358);
  let x_360 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_359.x, x_359.y, x_359.z, x_360.w);
  let x_362 : vec3<f32> = u_xlat6;
  let x_364 : vec3<f32> = u_xlat7;
  let x_367 : vec4<f32> = u_xlat3;
  let x_370 : vec3<f32> = ((vec3<f32>(x_362.x, x_362.z, x_362.y) * vec3<f32>(x_364.z, x_364.y, x_364.x)) + -(vec3<f32>(x_367.y, x_367.x, x_367.z)));
  let x_371 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_373 : vec4<f32> = u_xlat2;
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_373.y, x_373.x, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_381 : f32 = u_xlat1.x;
  u_xlatb1 = (x_381 < 0.0f);
  let x_383 : bool = u_xlatb1;
  u_xlat1.x = select(1.0f, -1.0f, x_383);
  let x_388 : f32 = u_xlat6.x;
  let x_390 : f32 = u_xlat2.x;
  u_xlat20 = (x_388 * x_390);
  let x_393 : f32 = u_xlat2.z;
  let x_395 : f32 = u_xlat6.y;
  let x_397 : f32 = u_xlat20;
  u_xlat3.z = ((x_393 * x_395) + -(x_397));
  let x_402 : vec3<f32> = u_xlat6;
  let x_405 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat4.y = dot(vec3<f32>(x_402.y, x_402.z, x_402.x), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_410 : f32 = u_xlat7.z;
  let x_412 : f32 = u_xlat2.z;
  u_xlat6.x = (x_410 * x_412);
  let x_416 : f32 = u_xlat7.y;
  let x_418 : f32 = u_xlat2.x;
  let x_421 : f32 = u_xlat6.x;
  u_xlat3.y = ((x_416 * x_418) + -(x_421));
  let x_425 : vec3<f32> = u_xlat7;
  let x_428 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat4.z = dot(vec3<f32>(x_425.z, x_425.x, x_425.y), vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_432 : vec4<f32> = u_xlat2;
  let x_435 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat4.x = dot(vec3<f32>(x_432.x, x_432.y, x_432.z), vec3<f32>(x_435.x, x_435.y, x_435.z));
  let x_439 : vec4<f32> = u_xlat1;
  let x_441 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_439.x, x_439.x, x_439.x) * vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_444 : vec3<f32> = u_xlat6;
  let x_445 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_444, x_445);
  let x_449 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_449, 1.17549435e-37f);
  let x_454 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_454);
  let x_457 : vec3<f32> = u_xlat6;
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_457 * vec3<f32>(x_458.x, x_458.x, x_458.x));
  let x_461 : vec3<f32> = u_xlat6;
  let x_462 : vec3<f32> = u_xlat6;
  let x_463 : vec3<f32> = (x_461 * x_462);
  let x_464 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_463.x, x_463.y, x_463.z, x_464.w);
  let x_467 : vec3<f32> = u_xlat6;
  let x_470 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_467.x, x_467.y, x_467.z, x_467.z));
  u_xlatb6 = vec3<bool>(x_470.x, x_470.y, x_470.z);
  let x_483 : vec4<f32> = vs_INTERP3;
  let x_486 : f32 = x_112.x_GlobalMipBias.x;
  let x_487 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_483.x, x_483.y), x_486);
  u_xlat2 = x_487;
  let x_489 : bool = u_xlatb6.x;
  if (x_489) {
    let x_494 : f32 = u_xlat2.z;
    x_490 = x_494;
  } else {
    let x_497 : f32 = u_xlat2.x;
    x_490 = x_497;
  }
  let x_498 : f32 = x_490;
  u_xlat6.x = x_498;
  let x_501 : bool = u_xlatb6.y;
  if (x_501) {
    let x_506 : f32 = u_xlat2.y;
    x_502 = x_506;
  } else {
    let x_509 : f32 = u_xlat2.w;
    x_502 = x_509;
  }
  let x_510 : f32 = x_502;
  u_xlat6.y = x_510;
  let x_512 : vec4<f32> = u_xlat1;
  let x_514 : vec3<f32> = u_xlat6;
  let x_516 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) * vec2<f32>(x_514.x, x_514.y));
  let x_517 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_520 : f32 = u_xlat6.y;
  let x_522 : f32 = u_xlat6.x;
  u_xlat6.x = (x_520 + x_522);
  let x_530 : vec4<f32> = vs_INTERP3;
  let x_533 : f32 = x_112.x_GlobalMipBias.x;
  let x_534 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_530.x, x_530.y), x_533);
  u_xlat3 = x_534;
  let x_536 : bool = u_xlatb6.z;
  if (x_536) {
    let x_541 : f32 = u_xlat3.y;
    x_537 = x_541;
  } else {
    let x_544 : f32 = u_xlat3.x;
    x_537 = x_544;
  }
  let x_545 : f32 = x_537;
  u_xlat12 = x_545;
  let x_546 : f32 = u_xlat12;
  let x_548 : f32 = u_xlat1.z;
  let x_551 : f32 = u_xlat6.x;
  u_xlat1.y = ((x_546 * x_548) + x_551);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_557 : vec4<f32> = u_xlat1;
  let x_559 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(vec3<f32>(x_557.y, x_557.z, x_557.z), vec3<f32>(x_559.y, x_559.z, x_559.z));
  let x_564 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_564);
  let x_567 : vec3<f32> = u_xlat6;
  let x_569 : vec4<f32> = u_xlat1;
  let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.x, x_567.x) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat1;
  let x_576 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_574.y, x_574.z, x_574.y) * vec3<f32>(x_576.z, x_576.z, x_576.y));
  let x_581 : f32 = u_xlat1.z;
  let x_583 : f32 = u_xlat1.z;
  let x_586 : f32 = u_xlat6.z;
  u_xlat18 = ((x_581 * x_583) + -(x_586));
  let x_592 : vec4<f32> = x_21.unity_SHBr;
  let x_593 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_592, vec4<f32>(x_593.x, x_593.x, x_593.y, x_593.y));
  let x_599 : vec4<f32> = x_21.unity_SHBg;
  let x_600 : vec3<f32> = u_xlat6;
  u_xlat5.y = dot(x_599, vec4<f32>(x_600.x, x_600.x, x_600.y, x_600.y));
  let x_606 : vec4<f32> = x_21.unity_SHBb;
  let x_607 : vec3<f32> = u_xlat6;
  u_xlat5.z = dot(x_606, vec4<f32>(x_607.x, x_607.x, x_607.y, x_607.y));
  let x_613 : vec4<f32> = x_21.unity_SHC;
  let x_615 : f32 = u_xlat18;
  let x_618 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615, x_615, x_615)) + x_618);
  let x_622 : vec4<f32> = x_21.unity_SHAr;
  let x_624 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_622.y, x_622.x, x_622.z, x_622.w), vec4<f32>(x_624.y, x_624.z, x_624.z, x_624.w));
  let x_630 : vec4<f32> = x_21.unity_SHAg;
  let x_632 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_630.y, x_630.x, x_630.z, x_630.w), vec4<f32>(x_632.y, x_632.z, x_632.z, x_632.w));
  let x_638 : vec4<f32> = x_21.unity_SHAb;
  let x_639 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_638, x_639);
  let x_642 : vec3<f32> = u_xlat6;
  let x_643 : vec3<f32> = u_xlat5;
  u_xlat6 = (x_642 + x_643);
  let x_645 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_645, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_648 : vec3<f32> = u_xlat6;
  let x_650 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_652 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_654 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_655 : vec3<f32> = vec3<f32>(x_650, x_652, x_654);
  u_xlat6 = (x_648 * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_661 : vec3<f32> = u_xlat4;
  let x_662 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_661, x_662);
  let x_666 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_666);
  let x_669 : vec4<f32> = u_xlat1;
  let x_671 : vec3<f32> = u_xlat4;
  let x_672 : vec3<f32> = (vec3<f32>(x_669.x, x_669.x, x_669.x) * x_671);
  let x_673 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.x));
  u_xlatb4 = vec3<bool>(x_678.x, x_678.y, x_678.z);
  let x_680 : vec4<f32> = u_xlat1;
  let x_682 : vec4<f32> = u_xlat1;
  let x_684 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) * vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : vec4<f32> = u_xlat2;
  hlslcc_movcTemp = x_688;
  let x_690 : bool = u_xlatb4.x;
  if (x_690) {
    let x_695 : f32 = u_xlat2.z;
    x_691 = x_695;
  } else {
    let x_698 : f32 = u_xlat2.x;
    x_691 = x_698;
  }
  let x_699 : f32 = x_691;
  hlslcc_movcTemp.x = x_699;
  let x_702 : bool = u_xlatb4.y;
  if (x_702) {
    let x_707 : f32 = u_xlat2.y;
    x_703 = x_707;
  } else {
    let x_710 : f32 = u_xlat2.w;
    x_703 = x_710;
  }
  let x_711 : f32 = x_703;
  hlslcc_movcTemp.y = x_711;
  let x_713 : vec4<f32> = hlslcc_movcTemp;
  u_xlat2 = x_713;
  let x_716 : bool = u_xlatb4.z;
  if (x_716) {
    let x_721 : f32 = u_xlat3.y;
    x_717 = x_721;
  } else {
    let x_724 : f32 = u_xlat3.x;
    x_717 = x_724;
  }
  let x_725 : f32 = x_717;
  u_xlat19 = x_725;
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec4<f32> = u_xlat2;
  let x_730 : vec2<f32> = (vec2<f32>(x_726.x, x_726.y) * vec2<f32>(x_728.x, x_728.y));
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
  let x_734 : f32 = u_xlat1.y;
  let x_736 : f32 = u_xlat1.x;
  u_xlat1.x = (x_734 + x_736);
  let x_739 : f32 = u_xlat19;
  let x_741 : f32 = u_xlat1.z;
  let x_744 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_739 * x_741) + x_744);
  let x_748 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_748);
  let x_752 : f32 = x_224.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat7.x = (x_752 * 0.5f);
  let x_757 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_757, 0.001f);
  let x_762 : f32 = u_xlat1.x;
  let x_764 : f32 = u_xlat7.x;
  u_xlat1.x = (x_762 * x_764);
  let x_768 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_768);
  let x_771 : vec3<f32> = vs_INTERP0;
  let x_775 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  u_xlat7 = (-(x_771) + x_775);
  let x_777 : vec3<f32> = u_xlat7;
  let x_778 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_777, x_778);
  let x_782 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_782);
  let x_785 : vec3<f32> = u_xlat7;
  let x_786 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_785 * vec3<f32>(x_786.x, x_786.x, x_786.x));
  let x_791 : f32 = x_112.unity_OrthoParams.w;
  u_xlatb2 = (x_791 == 0.0f);
  let x_794 : f32 = x_112.unity_MatrixV[0i].z;
  u_xlat4.x = x_794;
  let x_797 : f32 = x_112.unity_MatrixV[1i].z;
  u_xlat4.y = x_797;
  let x_800 : f32 = x_112.unity_MatrixV[2i].z;
  u_xlat4.z = x_800;
  let x_802 : bool = u_xlatb2;
  if (x_802) {
    let x_806 : vec3<f32> = u_xlat7;
    x_803 = x_806;
  } else {
    let x_808 : vec3<f32> = u_xlat4;
    x_803 = x_808;
  }
  let x_809 : vec3<f32> = x_803;
  u_xlat7 = x_809;
  let x_810 : vec3<f32> = u_xlat7;
  let x_811 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_810, x_811);
  let x_815 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_815);
  let x_818 : vec3<f32> = u_xlat7;
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_818 * vec3<f32>(x_819.x, x_819.x, x_819.x));
  let x_822 : vec3<f32> = u_xlat7;
  let x_824 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat7.x = dot(x_822, -(vec3<f32>(x_824.x, x_824.y, x_824.z)));
  let x_830 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_830, 0.0f, 1.0f);
  let x_834 : f32 = u_xlat7.x;
  u_xlat7.x = log2(x_834);
  let x_838 : f32 = u_xlat7.x;
  u_xlat7.x = (x_838 * 150.0f);
  let x_843 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_843);
  let x_847 : f32 = u_xlat7.x;
  u_xlat7.x = (x_847 + 1.0f);
  let x_851 : f32 = u_xlat1.x;
  let x_853 : f32 = u_xlat7.x;
  u_xlat1.x = (x_851 * x_853);
  let x_857 : vec4<f32> = x_112.x_MainLightColor;
  let x_859 : vec4<f32> = u_xlat1;
  let x_862 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859.x, x_859.x, x_859.x)) + x_862);
  let x_865 : vec4<f32> = x_224.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_867 : vec3<f32> = u_xlat6;
  let x_871 : vec4<f32> = x_112.unity_FogColor;
  u_xlat6 = ((vec3<f32>(x_865.x, x_865.y, x_865.z) * x_867) + -(vec3<f32>(x_871.x, x_871.y, x_871.z)));
  let x_877 : vec4<f32> = u_xlat0;
  let x_879 : vec3<f32> = u_xlat6;
  let x_882 : vec4<f32> = x_112.unity_FogColor;
  let x_884 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.x, x_877.x) * x_879) + vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_889 : f32 = x_112.x_BA_CloudData.w;
  u_xlat0.x = (-(x_889) + 1.0f);
  let x_894 : f32 = u_xlat0.x;
  let x_897 : f32 = u_xlat3.z;
  u_xlat0.x = (-(x_894) + x_897);
  let x_901 : f32 = u_xlat3.w;
  u_xlat6.x = (-(x_901) + 1.0f);
  let x_906 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_906);
  let x_910 : f32 = u_xlat6.x;
  let x_912 : f32 = x_224.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_910 * x_912);
  let x_916 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_916);
  let x_920 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_920) + 1.0f);
  let x_925 : f32 = u_xlat0.x;
  u_xlat0.x = (x_925 * 10.0f);
  let x_930 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_930, 0.0f, 1.0f);
  let x_934 : f32 = u_xlat0.x;
  u_xlat12 = ((x_934 * -2.0f) + 3.0f);
  let x_940 : f32 = u_xlat0.x;
  let x_942 : f32 = u_xlat0.x;
  u_xlat0.x = (x_940 * x_942);
  let x_946 : f32 = u_xlat0.x;
  let x_947 : f32 = u_xlat12;
  u_xlat0.x = (x_946 * x_947);
  let x_951 : f32 = u_xlat0.x;
  let x_953 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_951, x_953);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec3<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

