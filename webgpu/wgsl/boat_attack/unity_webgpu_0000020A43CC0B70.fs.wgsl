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
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(32) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(48) */
  x_MainLightColor : vec4<f32>,
  /* @offset(64) */
  x_TimeParameters : vec4<f32>,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(96) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(112) */
  x_ScreenParams : vec4<f32>,
  /* @offset(128) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(144) */
  unity_FogParams : vec4<f32>,
  /* @offset(160) */
  unity_FogColor : vec4<f32>,
  /* @offset(176) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(240) */
  x_BA_SkyboxRatio : f32,
  /* @offset(256) */
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

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP2 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_37 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_128 : PGlobals;

@group(1) @binding(2) var<uniform> x_239 : UnityPerMaterial;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlatb6 : vec3<bool>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat18 : f32;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlatb0 : bool;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_510 : f32;
  var x_522 : f32;
  var x_557 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_713 : f32;
  var x_725 : f32;
  var x_739 : f32;
  var x_827 : vec3<f32>;
  var x_923 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_30 : vec3<f32> = vs_INTERP2;
  let x_42 : vec4<f32> = x_37.unity_WorldToObject[1i];
  let x_44 : vec3<f32> = (vec3<f32>(x_30.y, x_30.y, x_30.y) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_49 : vec4<f32> = x_37.unity_WorldToObject[0i];
  let x_51 : vec3<f32> = vs_INTERP2;
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = ((vec3<f32>(x_49.x, x_49.y, x_49.z) * vec3<f32>(x_51.x, x_51.x, x_51.x)) + vec3<f32>(x_54.x, x_54.y, x_54.z));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_61 : vec4<f32> = x_37.unity_WorldToObject[2i];
  let x_63 : vec3<f32> = vs_INTERP2;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec3<f32> = ((vec3<f32>(x_61.x, x_61.y, x_61.z) * vec3<f32>(x_63.z, x_63.z, x_63.z)) + vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_68.x, x_68.y, x_68.z, x_69.w);
  let x_71 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_37.unity_WorldToObject[3i];
  let x_77 : vec3<f32> = (vec3<f32>(x_71.x, x_71.y, x_71.z) + vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_77.x, x_77.y, x_77.z, x_78.w);
  let x_81 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = x_37.unity_ObjectToWorld[1i];
  let x_86 : vec3<f32> = (vec3<f32>(x_81.y, x_81.y, x_81.y) * vec3<f32>(x_84.x, x_84.y, x_84.z));
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_86.x, x_86.y, x_86.z, x_87.w);
  let x_90 : vec4<f32> = x_37.unity_ObjectToWorld[0i];
  let x_92 : vec4<f32> = u_xlat0;
  let x_95 : vec4<f32> = u_xlat1;
  let x_97 : vec3<f32> = ((vec3<f32>(x_90.x, x_90.y, x_90.z) * vec3<f32>(x_92.x, x_92.x, x_92.x)) + vec3<f32>(x_95.x, x_95.y, x_95.z));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_97.x, x_97.y, x_98.z, x_97.z);
  let x_101 : vec4<f32> = x_37.unity_ObjectToWorld[2i];
  let x_103 : vec4<f32> = u_xlat0;
  let x_106 : vec4<f32> = u_xlat0;
  let x_108 : vec3<f32> = ((vec3<f32>(x_101.x, x_101.y, x_101.z) * vec3<f32>(x_103.z, x_103.z, x_103.z)) + vec3<f32>(x_106.x, x_106.y, x_106.w));
  let x_109 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat0;
  let x_114 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  let x_116 : vec3<f32> = (vec3<f32>(x_111.x, x_111.y, x_111.z) + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_116.x, x_116.y, x_116.z, x_117.w);
  let x_124 : f32 = u_xlat0.y;
  let x_132 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat6.x = (x_124 * x_132);
  let x_137 : f32 = x_128.unity_MatrixV[0i].z;
  let x_139 : f32 = u_xlat0.x;
  let x_142 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_137 * x_139) + x_142);
  let x_146 : f32 = x_128.unity_MatrixV[2i].z;
  let x_148 : f32 = u_xlat0.z;
  let x_151 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_146 * x_148) + x_151);
  let x_155 : f32 = u_xlat0.x;
  let x_157 : f32 = x_128.unity_MatrixV[3i].z;
  u_xlat0.x = (x_155 + x_157);
  let x_161 : f32 = u_xlat0.x;
  let x_165 : f32 = x_128.x_ProjectionParams.y;
  u_xlat0.x = (-(x_161) + -(x_165));
  let x_170 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_170, 0.0f);
  let x_175 : f32 = u_xlat0.x;
  let x_178 : f32 = x_128.unity_FogParams.x;
  u_xlat0.x = (x_175 * x_178);
  let x_182 : f32 = u_xlat0.x;
  let x_184 : f32 = u_xlat0.x;
  u_xlat0.x = (x_182 * -(x_184));
  let x_189 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_189);
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_193) + 1.0f);
  let x_198 : f32 = u_xlat0.x;
  let x_201 : f32 = x_128.x_BA_SkyboxRatio;
  u_xlat0.x = (x_198 / x_201);
  let x_205 : f32 = u_xlat0.x;
  let x_208 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_205) * x_208) + 1.0f);
  let x_213 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_213);
  let x_217 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_217) + 1.0f);
  let x_222 : f32 = x_128.x_BA_SkyboxRatio;
  u_xlat6.x = (-(x_222) + 1.0f);
  let x_228 : f32 = x_128.x_WorldSpaceCameraPos.y;
  let x_231 : f32 = u_xlat6.x;
  let x_234 : f32 = vs_INTERP2.y;
  u_xlat6.x = ((-(x_228) * x_231) + x_234);
  let x_241 : f32 = x_239.Vector1_10DA9AB3;
  let x_244 : f32 = x_128.x_BA_SkyboxRatio;
  let x_247 : f32 = u_xlat6.x;
  u_xlat6.x = ((-(x_241) * x_244) + x_247);
  let x_253 : f32 = x_128.x_BA_SkyboxRatio;
  let x_255 : f32 = x_239.Vector1_33982692;
  u_xlat12.x = (x_253 * x_255);
  let x_259 : f32 = u_xlat12.x;
  u_xlat12.x = max(x_259, 0.0f);
  let x_263 : f32 = u_xlat12.x;
  u_xlat12.x = (1.0f / x_263);
  let x_267 : f32 = u_xlat12.x;
  let x_269 : f32 = u_xlat6.x;
  u_xlat6.x = (x_267 * x_269);
  let x_273 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_273, 0.0f, 1.0f);
  let x_277 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_277) + 1.0f);
  let x_282 : f32 = u_xlat6.x;
  let x_285 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_282) * x_285) + 1.0f);
  let x_290 : f32 = u_xlat0.x;
  u_xlat0.x = min(x_290, 1.0f);
  let x_299 : f32 = vs_INTERP0.w;
  u_xlatb6.x = (0.0f < x_299);
  let x_304 : f32 = x_37.unity_WorldTransformParams.w;
  u_xlatb6.y = (x_304 >= 0.0f);
  let x_308 : bool = u_xlatb6.x;
  u_xlat6.x = select(-1.0f, 1.0f, x_308);
  let x_313 : bool = u_xlatb6.y;
  u_xlat6.y = select(-1.0f, 1.0f, x_313);
  let x_317 : f32 = u_xlat6.y;
  let x_319 : f32 = u_xlat6.x;
  u_xlat6.x = (x_317 * x_319);
  let x_322 : vec4<f32> = vs_INTERP0;
  let x_325 : vec3<f32> = vs_INTERP3;
  let x_327 : vec3<f32> = (vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_325.y, x_325.z, x_325.x));
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_330 : vec3<f32> = vs_INTERP3;
  let x_331 : vec4<f32> = vs_INTERP0;
  let x_334 : vec4<f32> = u_xlat1;
  let x_337 : vec3<f32> = ((x_330 * vec3<f32>(x_331.y, x_331.z, x_331.x)) + -(vec3<f32>(x_334.x, x_334.y, x_334.z)));
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_340 : vec3<f32> = u_xlat6;
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec3<f32>(x_340.x, x_340.x, x_340.x) * vec3<f32>(x_342.x, x_342.y, x_342.z));
  let x_345 : vec3<f32> = vs_INTERP3;
  let x_346 : vec3<f32> = vs_INTERP3;
  u_xlat1.x = dot(x_345, x_346);
  let x_350 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_350);
  let x_354 : f32 = u_xlat1.x;
  u_xlat1.x = (1.0f / x_354);
  let x_357 : vec3<f32> = u_xlat6;
  let x_358 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_357 * vec3<f32>(x_358.x, x_358.x, x_358.x));
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec3<f32> = vs_INTERP3;
  u_xlat7 = (vec3<f32>(x_362.x, x_362.x, x_362.x) * vec3<f32>(x_364.y, x_364.z, x_364.x));
  let x_368 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = vs_INTERP0;
  let x_372 : vec3<f32> = (vec3<f32>(x_368.x, x_368.x, x_368.x) * vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec3<f32> = u_xlat6;
  let x_377 : vec3<f32> = u_xlat7;
  let x_378 : vec3<f32> = (x_376 * x_377);
  let x_379 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : vec3<f32> = u_xlat6;
  let x_383 : vec3<f32> = u_xlat7;
  let x_386 : vec4<f32> = u_xlat3;
  let x_389 : vec3<f32> = ((vec3<f32>(x_381.x, x_381.z, x_381.y) * vec3<f32>(x_383.z, x_383.y, x_383.x)) + -(vec3<f32>(x_386.y, x_386.x, x_386.z)));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : vec4<f32> = u_xlat2;
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec3<f32>(x_392.y, x_392.x, x_392.z), vec3<f32>(x_394.x, x_394.y, x_394.z));
  let x_400 : f32 = u_xlat1.x;
  u_xlatb1 = (x_400 < 0.0f);
  let x_402 : bool = u_xlatb1;
  u_xlat1.x = select(1.0f, -1.0f, x_402);
  let x_407 : f32 = u_xlat6.x;
  let x_409 : f32 = u_xlat2.x;
  u_xlat20 = (x_407 * x_409);
  let x_412 : f32 = u_xlat2.z;
  let x_414 : f32 = u_xlat6.y;
  let x_416 : f32 = u_xlat20;
  u_xlat3.z = ((x_412 * x_414) + -(x_416));
  let x_421 : vec3<f32> = u_xlat6;
  let x_424 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat4.y = dot(vec3<f32>(x_421.y, x_421.z, x_421.x), vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_429 : f32 = u_xlat7.z;
  let x_431 : f32 = u_xlat2.z;
  u_xlat6.x = (x_429 * x_431);
  let x_435 : f32 = u_xlat7.y;
  let x_437 : f32 = u_xlat2.x;
  let x_440 : f32 = u_xlat6.x;
  u_xlat3.y = ((x_435 * x_437) + -(x_440));
  let x_444 : vec3<f32> = u_xlat7;
  let x_447 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat4.z = dot(vec3<f32>(x_444.z, x_444.x, x_444.y), vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_451 : vec4<f32> = u_xlat2;
  let x_454 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat4.x = dot(vec3<f32>(x_451.x, x_451.y, x_451.z), vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_458 : vec4<f32> = u_xlat1;
  let x_460 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_458.x, x_458.x, x_458.x) * vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : vec3<f32> = u_xlat6;
  let x_464 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_463, x_464);
  let x_468 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_468, 1.17549435e-38f);
  let x_473 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_473);
  let x_476 : vec3<f32> = u_xlat6;
  let x_477 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_476 * vec3<f32>(x_477.x, x_477.x, x_477.x));
  let x_480 : vec3<f32> = u_xlat6;
  let x_481 : vec3<f32> = u_xlat6;
  let x_482 : vec3<f32> = (x_480 * x_481);
  let x_483 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_486 : vec3<f32> = u_xlat6;
  let x_489 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_486.x, x_486.y, x_486.z, x_486.z));
  u_xlatb6 = vec3<bool>(x_489.x, x_489.y, x_489.z);
  let x_502 : vec4<f32> = vs_INTERP1;
  let x_505 : f32 = x_128.x_GlobalMipBias.x;
  let x_506 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_502.x, x_502.y), x_505);
  u_xlat2 = x_506;
  let x_508 : bool = u_xlatb6.x;
  if (x_508) {
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
  let x_550 : vec4<f32> = vs_INTERP1;
  let x_553 : f32 = x_128.x_GlobalMipBias.x;
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
  let x_614 : vec4<f32> = x_37.unity_SHBr;
  let x_615 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(x_614, vec4<f32>(x_615.x, x_615.x, x_615.y, x_615.y));
  let x_621 : vec4<f32> = x_37.unity_SHBg;
  let x_622 : vec3<f32> = u_xlat6;
  u_xlat5.y = dot(x_621, vec4<f32>(x_622.x, x_622.x, x_622.y, x_622.y));
  let x_628 : vec4<f32> = x_37.unity_SHBb;
  let x_629 : vec3<f32> = u_xlat6;
  u_xlat5.z = dot(x_628, vec4<f32>(x_629.x, x_629.x, x_629.y, x_629.y));
  let x_635 : vec4<f32> = x_37.unity_SHC;
  let x_637 : f32 = u_xlat18;
  let x_640 : vec3<f32> = u_xlat5;
  u_xlat6 = ((vec3<f32>(x_635.x, x_635.y, x_635.z) * vec3<f32>(x_637, x_637, x_637)) + x_640);
  let x_644 : vec4<f32> = x_37.unity_SHAr;
  let x_646 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(vec4<f32>(x_644.y, x_644.x, x_644.z, x_644.w), vec4<f32>(x_646.y, x_646.z, x_646.z, x_646.w));
  let x_652 : vec4<f32> = x_37.unity_SHAg;
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(vec4<f32>(x_652.y, x_652.x, x_652.z, x_652.w), vec4<f32>(x_654.y, x_654.z, x_654.z, x_654.w));
  let x_660 : vec4<f32> = x_37.unity_SHAb;
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_660, x_661);
  let x_664 : vec3<f32> = u_xlat6;
  let x_665 : vec3<f32> = u_xlat5;
  u_xlat6 = (x_664 + x_665);
  let x_667 : vec3<f32> = u_xlat6;
  u_xlat6 = max(x_667, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_670 : vec3<f32> = u_xlat6;
  let x_672 : f32 = x_239.Vector1_5f4b185241524942830132fc71554a33;
  let x_674 : f32 = x_239.Vector1_5f4b185241524942830132fc71554a33;
  let x_676 : f32 = x_239.Vector1_5f4b185241524942830132fc71554a33;
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
  let x_774 : f32 = x_239.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat7.x = (x_774 * 0.5f);
  let x_779 : f32 = u_xlat7.x;
  u_xlat7.x = max(x_779, 0.00100000004749745131f);
  let x_784 : f32 = u_xlat1.x;
  let x_786 : f32 = u_xlat7.x;
  u_xlat1.x = (x_784 * x_786);
  let x_790 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_790);
  let x_793 : vec3<f32> = vs_INTERP2;
  let x_797 : vec3<f32> = x_128.x_WorldSpaceCameraPos;
  u_xlat7 = (-(x_793) + x_797);
  let x_799 : vec3<f32> = u_xlat7;
  let x_800 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_799, x_800);
  let x_804 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_804);
  let x_807 : vec3<f32> = u_xlat7;
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_807 * vec3<f32>(x_808.x, x_808.x, x_808.x));
  let x_814 : f32 = x_128.unity_OrthoParams.w;
  u_xlatb2 = (x_814 == 0.0f);
  let x_817 : f32 = x_128.unity_MatrixV[0i].z;
  u_xlat4.x = x_817;
  let x_820 : f32 = x_128.unity_MatrixV[1i].z;
  u_xlat4.y = x_820;
  let x_823 : f32 = x_128.unity_MatrixV[2i].z;
  u_xlat4.z = x_823;
  let x_825 : bool = u_xlatb2;
  if (x_825) {
    let x_830 : vec3<f32> = u_xlat7;
    x_827 = x_830;
  } else {
    let x_832 : vec3<f32> = u_xlat4;
    x_827 = x_832;
  }
  let x_833 : vec3<f32> = x_827;
  u_xlat7 = x_833;
  let x_834 : vec3<f32> = u_xlat7;
  let x_835 : vec3<f32> = u_xlat7;
  u_xlat2.x = dot(x_834, x_835);
  let x_839 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_839);
  let x_842 : vec3<f32> = u_xlat7;
  let x_843 : vec4<f32> = u_xlat2;
  u_xlat7 = (x_842 * vec3<f32>(x_843.x, x_843.x, x_843.x));
  let x_846 : vec3<f32> = u_xlat7;
  let x_848 : vec4<f32> = x_128.x_MainLightPosition;
  u_xlat7.x = dot(x_846, -(vec3<f32>(x_848.x, x_848.y, x_848.z)));
  let x_854 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_854, 0.0f, 1.0f);
  let x_858 : f32 = u_xlat7.x;
  u_xlat7.x = log2(x_858);
  let x_862 : f32 = u_xlat7.x;
  u_xlat7.x = (x_862 * 150.0f);
  let x_867 : f32 = u_xlat7.x;
  u_xlat7.x = exp2(x_867);
  let x_871 : f32 = u_xlat7.x;
  u_xlat7.x = (x_871 + 1.0f);
  let x_875 : f32 = u_xlat1.x;
  let x_877 : f32 = u_xlat7.x;
  u_xlat1.x = (x_875 * x_877);
  let x_881 : vec4<f32> = x_128.x_MainLightColor;
  let x_883 : vec4<f32> = u_xlat1;
  let x_886 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(x_883.x, x_883.x, x_883.x)) + x_886);
  let x_889 : vec4<f32> = x_239.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_891 : vec3<f32> = u_xlat6;
  let x_895 : vec4<f32> = x_128.unity_FogColor;
  u_xlat6 = ((vec3<f32>(x_889.x, x_889.y, x_889.z) * x_891) + -(vec3<f32>(x_895.x, x_895.y, x_895.z)));
  let x_901 : vec4<f32> = u_xlat0;
  let x_903 : vec3<f32> = u_xlat6;
  let x_906 : vec4<f32> = x_128.unity_FogColor;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.x, x_901.x) * x_903) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_913 : f32 = x_128.x_ProjectionParams.x;
  u_xlatb0 = (x_913 < 0.0f);
  let x_916 : f32 = hlslcc_FragCoord.y;
  let x_919 : f32 = x_128.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_916) + x_919);
  let x_922 : bool = u_xlatb0;
  if (x_922) {
    let x_927 : f32 = u_xlat6.x;
    x_923 = x_927;
  } else {
    let x_930 : f32 = hlslcc_FragCoord.y;
    x_923 = x_930;
  }
  let x_931 : f32 = x_923;
  u_xlat0.y = x_931;
  let x_934 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_934;
  let x_936 : vec4<f32> = u_xlat0;
  let x_939 : vec4<f32> = x_128.x_ScaledScreenParams;
  let x_941 : vec2<f32> = (vec2<f32>(x_936.x, x_936.y) / vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
  let x_945 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_945) + 1.0f);
  let x_949 : vec4<f32> = u_xlat0;
  let x_953 : vec4<f32> = x_128.x_ScreenParams;
  let x_955 : vec2<f32> = (vec2<f32>(x_949.x, x_949.z) * vec2<f32>(x_953.x, x_953.y));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat0;
  let x_960 : vec2<f32> = floor(vec2<f32>(x_958.x, x_958.y));
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
  let x_964 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  let x_967 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_964.x, x_964.y, x_964.z), vec3<f32>(x_967.x, x_967.y, x_967.z));
  let x_972 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_972);
  let x_977 : vec4<f32> = x_128.x_TimeParameters;
  let x_982 : vec2<f32> = (vec2<f32>(x_977.x, x_977.x) * vec2<f32>(0.01799999922513961792f, 0.31999999284744262695f));
  let x_983 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
  let x_985 : vec2<f32> = u_xlat12;
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_985.x, x_985.x) * vec2<f32>(0.32100000977516174316f, 0.32100000977516174316f)) + vec2<f32>(x_990.x, x_990.y));
  let x_993 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_993);
  let x_995 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_995.x, x_995.x), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1002 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_1002.y, x_1002.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1006 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_1006);
  let x_1008 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1008 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1012 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_1012);
  let x_1014 : vec2<f32> = u_xlat12;
  let x_1016 : vec4<f32> = x_128.x_ScreenParams;
  let x_1018 : vec2<f32> = (x_1014 * vec2<f32>(x_1016.x, x_1016.y));
  let x_1019 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1023 : vec4<f32> = u_xlat1;
  let x_1025 : vec2<f32> = (vec2<f32>(x_1021.x, x_1021.y) + vec2<f32>(x_1023.x, x_1023.y));
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1032 : vec2<f32> = (vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_1033 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat0;
  let x_1037 : vec2<f32> = fract(vec2<f32>(x_1035.x, x_1035.y));
  let x_1038 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1037.x, x_1037.y, x_1038.z, x_1038.w);
  let x_1045 : vec4<f32> = u_xlat0;
  let x_1048 : f32 = x_128.x_GlobalMipBias.x;
  let x_1049 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, vec2<f32>(x_1045.x, x_1045.y), x_1048);
  u_xlat0.x = x_1049.y;
  let x_1053 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1053 * 0.30000001192092895508f) + 0.80000001192092895508f);
  let x_1060 : f32 = u_xlat0.x;
  let x_1064 : f32 = x_128.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_1060) * x_1064) + 1.0f);
  let x_1069 : f32 = u_xlat0.x;
  let x_1072 : f32 = u_xlat3.z;
  u_xlat0.x = (-(x_1069) + x_1072);
  let x_1076 : f32 = u_xlat3.w;
  u_xlat6.x = (-(x_1076) + 1.0f);
  let x_1081 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_1081);
  let x_1085 : f32 = u_xlat6.x;
  let x_1087 : f32 = x_239.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_1085 * x_1087);
  let x_1091 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_1091);
  let x_1095 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1095) + 1.0f);
  let x_1100 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1100 * 10.0f);
  let x_1105 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1105, 0.0f, 1.0f);
  let x_1109 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_1109 * -2.0f) + 3.0f);
  let x_1116 : f32 = u_xlat0.x;
  let x_1118 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1116 * x_1118);
  let x_1122 : f32 = u_xlat0.x;
  let x_1124 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1122 * x_1124);
  let x_1128 : f32 = u_xlat0.x;
  let x_1130 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_1128, x_1130);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  main_1();
  return main_out(SV_Target0);
}


