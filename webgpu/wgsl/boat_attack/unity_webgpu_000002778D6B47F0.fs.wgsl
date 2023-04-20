diagnostic(off, derivative_uniformity);

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(64) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_FogParams : vec4<f32>,
  /* @offset(112) */
  unity_FogColor : vec4<f32>,
  /* @offset(128) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(192) */
  x_BA_SkyboxRatio : f32,
  /* @offset(208) */
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  /* @offset(32) */
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  /* @offset(36) */
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  /* @offset(40) */
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  /* @offset(44) */
  Vector1_33982692 : f32,
  /* @offset(48) */
  Vector1_10DA9AB3 : f32,
  /* @offset(56) */
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  /* @offset(64) */
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  /* @offset(96) */
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_112 : PGlobals;

@group(1) @binding(2) var<uniform> x_224 : UnityPerMaterial;

var<private> u_xlat12 : f32;

var<private> u_xlatb6 : vec3<bool>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat18 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_491 : f32;
  var x_503 : f32;
  var x_538 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_693 : f32;
  var x_705 : f32;
  var x_719 : f32;
  var x_806 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_INTERP2;
  let x_26 : vec4<f32> = x_21.unity_WorldToObject[1i];
  let x_28 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_26.x, x_26.y, x_26.z));
  let x_29 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_28.x, x_28.y, x_28.z, x_29.w);
  let x_33 : vec4<f32> = x_21.unity_WorldToObject[0i];
  let x_35 : vec3<f32> = vs_INTERP2;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_WorldToObject[2i];
  let x_47 : vec3<f32> = vs_INTERP2;
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
  let x_219 : f32 = vs_INTERP2.y;
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
  let x_280 : f32 = vs_INTERP0.w;
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
  let x_303 : vec4<f32> = vs_INTERP0;
  let x_306 : vec3<f32> = vs_INTERP3;
  let x_308 : vec3<f32> = (vec3<f32>(x_303.x, x_303.y, x_303.z) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP3;
  let x_312 : vec4<f32> = vs_INTERP0;
  let x_315 : vec4<f32> = u_xlat1;
  let x_318 : vec3<f32> = ((x_311 * vec3<f32>(x_312.y, x_312.z, x_312.x)) + -(vec3<f32>(x_315.x, x_315.y, x_315.z)));
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec3<f32> = u_xlat6;
  let x_323 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_321.x, x_321.x, x_321.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_326 : vec3<f32> = vs_INTERP3;
  let x_327 : vec3<f32> = vs_INTERP3;
  u_xlat1.x = dot(x_326, x_327);
  let x_331 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_331);
  let x_335 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_335);
  let x_338 : vec3<f32> = u_xlat6;
  let x_339 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_338 * vec3<f32>(x_339.x, x_339.x, x_339.x));
  let x_343 : vec4<f32> = u_xlat1;
  let x_345 : vec3<f32> = vs_INTERP3;
  u_xlat7 = (vec3<f32>(x_343.x, x_343.x, x_343.x) * vec3<f32>(x_345.y, x_345.z, x_345.x));
  let x_349 : vec4<f32> = u_xlat1;
  let x_351 : vec4<f32> = vs_INTERP0;
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
  u_xlat1.x = max(x_449, 1.17549435e-38f);
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
  let x_483 : vec4<f32> = vs_INTERP1;
  let x_486 : f32 = x_112.x_GlobalMipBias.x;
  let x_487 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_483.x, x_483.y), x_486);
  u_xlat2 = x_487;
  let x_489 : bool = u_xlatb6.x;
  if (x_489) {
    let x_495 : f32 = u_xlat2.z;
    x_491 = x_495;
  } else {
    let x_498 : f32 = u_xlat2.x;
    x_491 = x_498;
  }
  let x_499 : f32 = x_491;
  u_xlat6.x = x_499;
  let x_502 : bool = u_xlatb6.y;
  if (x_502) {
    let x_507 : f32 = u_xlat2.y;
    x_503 = x_507;
  } else {
    let x_510 : f32 = u_xlat2.w;
    x_503 = x_510;
  }
  let x_511 : f32 = x_503;
  u_xlat6.y = x_511;
  let x_513 : vec4<f32> = u_xlat1;
  let x_515 : vec3<f32> = u_xlat6;
  let x_517 : vec2<f32> = (vec2<f32>(x_513.x, x_513.y) * vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_517.x, x_517.y, x_518.z);
  let x_521 : f32 = u_xlat6.y;
  let x_523 : f32 = u_xlat6.x;
  u_xlat6.x = (x_521 + x_523);
  let x_531 : vec4<f32> = vs_INTERP1;
  let x_534 : f32 = x_112.x_GlobalMipBias.x;
  let x_535 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_531.x, x_531.y), x_534);
  u_xlat3 = x_535;
  let x_537 : bool = u_xlatb6.z;
  if (x_537) {
    let x_542 : f32 = u_xlat3.y;
    x_538 = x_542;
  } else {
    let x_545 : f32 = u_xlat3.x;
    x_538 = x_545;
  }
  let x_546 : f32 = x_538;
  u_xlat12 = x_546;
  let x_547 : f32 = u_xlat12;
  let x_549 : f32 = u_xlat1.z;
  let x_552 : f32 = u_xlat6.x;
  u_xlat1.y = ((x_547 * x_549) + x_552);
  u_xlat1.x = 1.0f;
  u_xlat1.z = 1.0f;
  u_xlat1.w = 1.0f;
  let x_558 : vec4<f32> = u_xlat1;
  let x_560 : vec4<f32> = u_xlat1;
  u_xlat6.x = dot(vec3<f32>(x_558.y, x_558.z, x_558.z), vec3<f32>(x_560.y, x_560.z, x_560.z));
  let x_565 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_565);
  let x_568 : vec3<f32> = u_xlat6;
  let x_570 : vec4<f32> = u_xlat1;
  let x_572 : vec3<f32> = (vec3<f32>(x_568.x, x_568.x, x_568.x) * vec3<f32>(x_570.x, x_570.y, x_570.z));
  let x_573 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat1;
  let x_577 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_575.y, x_575.z, x_575.y) * vec3<f32>(x_577.z, x_577.z, x_577.y));
  let x_582 : f32 = u_xlat1.z;
  let x_584 : f32 = u_xlat1.z;
  let x_587 : f32 = u_xlat6.z;
  u_xlat18 = ((x_582 * x_584) + -(x_587));
  let x_593 : vec4<f32> = x_21.unity_SHBr;
  let x_594 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_593, vec4<f32>(x_594.x, x_594.x, x_594.y, x_594.y));
  let x_600 : vec4<f32> = x_21.unity_SHBg;
  let x_601 : vec3<f32> = u_xlat6;
  u_xlat5.y = dot(x_600, vec4<f32>(x_601.x, x_601.x, x_601.y, x_601.y));
  let x_607 : vec4<f32> = x_21.unity_SHBb;
  let x_608 : vec3<f32> = u_xlat6;
  u_xlat5.z = dot(x_607, vec4<f32>(x_608.x, x_608.x, x_608.y, x_608.y));
  let x_614 : vec4<f32> = x_21.unity_SHC;
  let x_616 : f32 = u_xlat18;
  let x_619 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616, x_616, x_616)) + x_619);
  let x_623 : vec4<f32> = x_21.unity_SHAr;
  let x_625 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_623.y, x_623.x, x_623.z, x_623.w), vec4<f32>(x_625.y, x_625.z, x_625.z, x_625.w));
  let x_631 : vec4<f32> = x_21.unity_SHAg;
  let x_633 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_631.y, x_631.x, x_631.z, x_631.w), vec4<f32>(x_633.y, x_633.z, x_633.z, x_633.w));
  let x_639 : vec4<f32> = x_21.unity_SHAb;
  let x_640 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_639, x_640);
  let x_643 : vec3<f32> = u_xlat6;
  let x_644 : vec3<f32> = u_xlat5;
  u_xlat6 = (x_643 + x_644);
  let x_646 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_646, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_649 : vec3<f32> = u_xlat6;
  let x_651 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_653 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_655 : f32 = x_224.Vector1_5f4b185241524942830132fc71554a33;
  let x_656 : vec3<f32> = vec3<f32>(x_651, x_653, x_655);
  u_xlat6 = (x_649 * vec3<f32>(x_656.x, x_656.y, x_656.z));
  let x_662 : vec3<f32> = u_xlat4;
  let x_663 : vec3<f32> = u_xlat4;
  u_xlat1.x = dot(x_662, x_663);
  let x_667 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_667);
  let x_670 : vec4<f32> = u_xlat1;
  let x_672 : vec3<f32> = u_xlat4;
  let x_673 : vec3<f32> = (vec3<f32>(x_670.x, x_670.x, x_670.x) * x_672);
  let x_674 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_679 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_677.x, x_677.y, x_677.z, x_677.x));
  u_xlatb4 = vec3<bool>(x_679.x, x_679.y, x_679.z);
  let x_681 : vec4<f32> = u_xlat1;
  let x_683 : vec4<f32> = u_xlat1;
  let x_685 : vec3<f32> = (vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683.x, x_683.y, x_683.z));
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
  let x_690 : vec4<f32> = u_xlat2;
  hlslcc_movcTemp = x_690;
  let x_692 : bool = u_xlatb4.x;
  if (x_692) {
    let x_697 : f32 = u_xlat2.z;
    x_693 = x_697;
  } else {
    let x_700 : f32 = u_xlat2.x;
    x_693 = x_700;
  }
  let x_701 : f32 = x_693;
  hlslcc_movcTemp.x = x_701;
  let x_704 : bool = u_xlatb4.y;
  if (x_704) {
    let x_709 : f32 = u_xlat2.y;
    x_705 = x_709;
  } else {
    let x_712 : f32 = u_xlat2.w;
    x_705 = x_712;
  }
  let x_713 : f32 = x_705;
  hlslcc_movcTemp.y = x_713;
  let x_715 : vec4<f32> = hlslcc_movcTemp;
  u_xlat2 = x_715;
  let x_718 : bool = u_xlatb4.z;
  if (x_718) {
    let x_723 : f32 = u_xlat3.y;
    x_719 = x_723;
  } else {
    let x_726 : f32 = u_xlat3.x;
    x_719 = x_726;
  }
  let x_727 : f32 = x_719;
  u_xlat19 = x_727;
  let x_728 : vec4<f32> = u_xlat1;
  let x_730 : vec4<f32> = u_xlat2;
  let x_732 : vec2<f32> = (vec2<f32>(x_728.x, x_728.y) * vec2<f32>(x_730.x, x_730.y));
  let x_733 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_732.x, x_732.y, x_733.z, x_733.w);
  let x_736 : f32 = u_xlat1.y;
  let x_738 : f32 = u_xlat1.x;
  u_xlat1.x = (x_736 + x_738);
  let x_741 : f32 = u_xlat19;
  let x_743 : f32 = u_xlat1.z;
  let x_746 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_741 * x_743) + x_746);
  let x_750 : f32 = u_xlat1.x;
  u_xlat1.x = log2(x_750);
  let x_754 : f32 = x_224.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat7.x = (x_754 * 0.5f);
  let x_759 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_759, 0.00100000004749745131f);
  let x_764 : f32 = u_xlat1.x;
  let x_766 : f32 = u_xlat7.x;
  u_xlat1.x = (x_764 * x_766);
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_770);
  let x_773 : vec3<f32> = vs_INTERP2;
  let x_777 : vec3<f32> = x_112.x_WorldSpaceCameraPos;
  u_xlat7 = (-(x_773) + x_777);
  let x_779 : vec3<f32> = u_xlat7;
  let x_780 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_779, x_780);
  let x_784 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_784);
  let x_787 : vec3<f32> = u_xlat7;
  let x_788 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_787 * vec3<f32>(x_788.x, x_788.x, x_788.x));
  let x_793 : f32 = x_112.unity_OrthoParams.w;
  u_xlatb2 = (x_793 == 0.0f);
  let x_796 : f32 = x_112.unity_MatrixV[0i].z;
  u_xlat4.x = x_796;
  let x_799 : f32 = x_112.unity_MatrixV[1i].z;
  u_xlat4.y = x_799;
  let x_802 : f32 = x_112.unity_MatrixV[2i].z;
  u_xlat4.z = x_802;
  let x_804 : bool = u_xlatb2;
  if (x_804) {
    let x_809 : vec3<f32> = u_xlat7;
    x_806 = x_809;
  } else {
    let x_811 : vec3<f32> = u_xlat4;
    x_806 = x_811;
  }
  let x_812 : vec3<f32> = x_806;
  u_xlat7 = x_812;
  let x_813 : vec3<f32> = u_xlat7;
  let x_814 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_813, x_814);
  let x_818 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_818);
  let x_821 : vec3<f32> = u_xlat7;
  let x_822 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_821 * vec3<f32>(x_822.x, x_822.x, x_822.x));
  let x_825 : vec3<f32> = u_xlat7;
  let x_827 : vec4<f32> = x_112.x_MainLightPosition;
  u_xlat7.x = dot(x_825, -(vec3<f32>(x_827.x, x_827.y, x_827.z)));
  let x_833 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_833, 0.0f, 1.0f);
  let x_837 : f32 = u_xlat7.x;
  u_xlat7.x = log2(x_837);
  let x_841 : f32 = u_xlat7.x;
  u_xlat7.x = (x_841 * 150.0f);
  let x_846 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_846);
  let x_850 : f32 = u_xlat7.x;
  u_xlat7.x = (x_850 + 1.0f);
  let x_854 : f32 = u_xlat1.x;
  let x_856 : f32 = u_xlat7.x;
  u_xlat1.x = (x_854 * x_856);
  let x_860 : vec4<f32> = x_112.x_MainLightColor;
  let x_862 : vec4<f32> = u_xlat1;
  let x_865 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(x_862.x, x_862.x, x_862.x)) + x_865);
  let x_868 : vec4<f32> = x_224.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_870 : vec3<f32> = u_xlat6;
  let x_874 : vec4<f32> = x_112.unity_FogColor;
  u_xlat6 = ((vec3<f32>(x_868.x, x_868.y, x_868.z) * x_870) + -(vec3<f32>(x_874.x, x_874.y, x_874.z)));
  let x_880 : vec4<f32> = u_xlat0;
  let x_882 : vec3<f32> = u_xlat6;
  let x_885 : vec4<f32> = x_112.unity_FogColor;
  let x_887 : vec3<f32> = ((vec3<f32>(x_880.x, x_880.x, x_880.x) * x_882) + vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_892 : f32 = x_112.x_BA_CloudData.w;
  u_xlat0.x = (-(x_892) + 1.0f);
  let x_897 : f32 = u_xlat0.x;
  let x_900 : f32 = u_xlat3.z;
  u_xlat0.x = (-(x_897) + x_900);
  let x_904 : f32 = u_xlat3.w;
  u_xlat6.x = (-(x_904) + 1.0f);
  let x_909 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_909);
  let x_913 : f32 = u_xlat6.x;
  let x_915 : f32 = x_224.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_913 * x_915);
  let x_919 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_919);
  let x_923 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_923) + 1.0f);
  let x_928 : f32 = u_xlat0.x;
  u_xlat0.x = (x_928 * 10.0f);
  let x_933 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_933, 0.0f, 1.0f);
  let x_937 : f32 = u_xlat0.x;
  u_xlat12 = ((x_937 * -2.0f) + 3.0f);
  let x_943 : f32 = u_xlat0.x;
  let x_945 : f32 = u_xlat0.x;
  u_xlat0.x = (x_943 * x_945);
  let x_949 : f32 = u_xlat0.x;
  let x_950 : f32 = u_xlat12;
  u_xlat0.x = (x_949 * x_950);
  let x_954 : f32 = u_xlat0.x;
  let x_956 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_954, x_956);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP2_param : vec3<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


