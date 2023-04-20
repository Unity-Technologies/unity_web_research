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
  unity_OrthoParams : vec4<f32>,
  /* @offset(80) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(144) */
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

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_29 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_151 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(2) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_417 : UnityPerMaterial;

var<private> u_xlatb4 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(3) var samplerTexture2D_3DC46A50 : sampler;

var<private> u_xlat12 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_238 : f32;
  var x_250 : f32;
  var x_300 : f32;
  var x_451 : f32;
  var x_463 : f32;
  var x_475 : f32;
  var x_554 : f32;
  var x_567 : f32;
  var x_579 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_19 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_19);
  let x_34 : f32 = x_29.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_34 >= 0.0f);
  let x_42 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_42);
  let x_49 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_49);
  let x_53 : f32 = u_xlat0.y;
  let x_55 : f32 = u_xlat0.x;
  u_xlat0.x = (x_53 * x_55);
  let x_59 : vec4<f32> = vs_INTERP0;
  let x_63 : vec3<f32> = vs_INTERP3;
  u_xlat6 = (vec3<f32>(x_59.x, x_59.y, x_59.z) * vec3<f32>(x_63.y, x_63.z, x_63.x));
  let x_66 : vec3<f32> = vs_INTERP3;
  let x_67 : vec4<f32> = vs_INTERP0;
  let x_70 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_66 * vec3<f32>(x_67.y, x_67.z, x_67.x)) + -(x_70));
  let x_73 : vec3<f32> = u_xlat6;
  let x_74 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_73 * vec3<f32>(x_74.x, x_74.x, x_74.x));
  let x_78 : vec3<f32> = vs_INTERP3;
  let x_79 : vec3<f32> = vs_INTERP3;
  u_xlat18 = dot(x_78, x_79);
  let x_81 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_81);
  let x_83 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_83);
  let x_85 : vec3<f32> = u_xlat0;
  let x_86 : f32 = u_xlat18;
  u_xlat0 = (x_85 * vec3<f32>(x_86, x_86, x_86));
  let x_90 : f32 = u_xlat18;
  let x_92 : vec3<f32> = vs_INTERP3;
  u_xlat1 = (vec3<f32>(x_90, x_90, x_90) * vec3<f32>(x_92.y, x_92.z, x_92.x));
  let x_97 : f32 = u_xlat18;
  let x_99 : vec4<f32> = vs_INTERP0;
  let x_101 : vec3<f32> = (vec3<f32>(x_97, x_97, x_97) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_105 : vec3<f32> = u_xlat0;
  let x_106 : vec3<f32> = u_xlat1;
  let x_107 : vec3<f32> = (x_105 * x_106);
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_110 : vec3<f32> = u_xlat0;
  let x_112 : vec3<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat3;
  let x_118 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.z, x_110.y) * vec3<f32>(x_112.z, x_112.y, x_112.x)) + -(vec3<f32>(x_115.y, x_115.x, x_115.z)));
  let x_119 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_118.x, x_118.y, x_118.z, x_119.w);
  let x_121 : vec4<f32> = u_xlat2;
  let x_123 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_121.y, x_121.x, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_127 : f32 = u_xlat18;
  u_xlatb18 = (x_127 < 0.0f);
  let x_129 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_129);
  let x_133 : f32 = u_xlat0.x;
  let x_135 : f32 = u_xlat2.x;
  u_xlat19 = (x_133 * x_135);
  let x_138 : f32 = u_xlat2.z;
  let x_140 : f32 = u_xlat0.y;
  let x_142 : f32 = u_xlat19;
  u_xlat3.z = ((x_138 * x_140) + -(x_142));
  let x_146 : vec3<f32> = u_xlat0;
  let x_155 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_146.y, x_146.z, x_146.x), vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_160 : f32 = u_xlat1.z;
  let x_162 : f32 = u_xlat2.z;
  u_xlat19 = (x_160 * x_162);
  let x_165 : f32 = u_xlat1.y;
  let x_167 : f32 = u_xlat2.x;
  let x_169 : f32 = u_xlat19;
  u_xlat3.y = ((x_165 * x_167) + -(x_169));
  let x_173 : vec3<f32> = u_xlat1;
  let x_176 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_173.z, x_173.x, x_173.y), vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec4<f32> = u_xlat2;
  let x_183 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_180.x, x_180.y, x_180.z), vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : f32 = u_xlat18;
  let x_189 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec3<f32> = u_xlat1;
  let x_193 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_192, x_193);
  let x_195 : f32 = u_xlat18;
  u_xlat18 = max(x_195, 1.17549435e-38f);
  let x_198 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat18;
  let x_202 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec3<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat1;
  let x_206 : vec3<f32> = (x_204 * x_205);
  let x_207 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
  let x_213 : vec3<f32> = u_xlat1;
  let x_216 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_213.x, x_213.y, x_213.z, x_213.x));
  u_xlatb1 = vec3<bool>(x_216.x, x_216.y, x_216.z);
  let x_229 : vec4<f32> = vs_INTERP1;
  let x_233 : f32 = x_151.x_GlobalMipBias.x;
  let x_234 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_229.x, x_229.y), x_233);
  u_xlat3 = x_234;
  let x_236 : bool = u_xlatb1.x;
  if (x_236) {
    let x_242 : f32 = u_xlat3.z;
    x_238 = x_242;
  } else {
    let x_245 : f32 = u_xlat3.x;
    x_238 = x_245;
  }
  let x_246 : f32 = x_238;
  u_xlat1.x = x_246;
  let x_249 : bool = u_xlatb1.y;
  if (x_249) {
    let x_254 : f32 = u_xlat3.y;
    x_250 = x_254;
  } else {
    let x_257 : f32 = u_xlat3.w;
    x_250 = x_257;
  }
  let x_258 : f32 = x_250;
  u_xlat1.y = x_258;
  let x_260 : vec4<f32> = u_xlat2;
  let x_262 : vec3<f32> = u_xlat1;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.y) * vec2<f32>(x_262.x, x_262.y));
  let x_265 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_264.x, x_264.y, x_265.z);
  let x_268 : f32 = u_xlat1.y;
  let x_270 : f32 = u_xlat1.x;
  u_xlat18 = (x_268 + x_270);
  let x_272 : vec4<f32> = u_xlat3;
  let x_274 : vec4<f32> = u_xlat3;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.z, x_272.w) + vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_276.x, x_276.y, x_277.z);
  let x_280 : f32 = u_xlat1.y;
  let x_282 : f32 = u_xlat1.x;
  u_xlat1.x = (x_280 + x_282);
  let x_287 : f32 = u_xlat1.x;
  u_xlat7 = (x_287 * 0.25f);
  let x_291 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_291) * 0.25f) + 1.0f);
  let x_299 : bool = u_xlatb1.z;
  if (x_299) {
    let x_303 : f32 = u_xlat7;
    x_300 = x_303;
  } else {
    let x_306 : f32 = u_xlat1.x;
    x_300 = x_306;
  }
  let x_307 : f32 = x_300;
  u_xlat13.x = x_307;
  let x_310 : f32 = u_xlat13.x;
  let x_312 : f32 = u_xlat2.z;
  let x_314 : f32 = u_xlat18;
  u_xlat2.y = ((x_310 * x_312) + x_314);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_320 : vec4<f32> = u_xlat2;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_320.y, x_320.z, x_320.z), vec3<f32>(x_322.y, x_322.z, x_322.z));
  let x_325 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_325);
  let x_327 : f32 = u_xlat18;
  let x_329 : vec4<f32> = u_xlat2;
  let x_331 : vec3<f32> = (vec3<f32>(x_327, x_327, x_327) * vec3<f32>(x_329.x, x_329.y, x_329.z));
  let x_332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_331.x, x_331.y, x_331.z, x_332.w);
  let x_335 : vec4<f32> = u_xlat2;
  let x_337 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_335.y, x_335.z, x_335.y) * vec3<f32>(x_337.z, x_337.z, x_337.y));
  let x_341 : f32 = u_xlat2.z;
  let x_343 : f32 = u_xlat2.z;
  let x_346 : f32 = u_xlat4.z;
  u_xlat18 = ((x_341 * x_343) + -(x_346));
  let x_352 : vec4<f32> = x_29.unity_SHBr;
  let x_353 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_352, vec4<f32>(x_353.x, x_353.x, x_353.y, x_353.y));
  let x_359 : vec4<f32> = x_29.unity_SHBg;
  let x_360 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_359, vec4<f32>(x_360.x, x_360.x, x_360.y, x_360.y));
  let x_366 : vec4<f32> = x_29.unity_SHBb;
  let x_367 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_366, vec4<f32>(x_367.x, x_367.x, x_367.y, x_367.y));
  let x_373 : vec4<f32> = x_29.unity_SHC;
  let x_375 : f32 = u_xlat18;
  let x_378 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_373.x, x_373.y, x_373.z) * vec3<f32>(x_375, x_375, x_375)) + x_378);
  let x_382 : vec4<f32> = x_29.unity_SHAr;
  let x_384 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_382.y, x_382.x, x_382.z, x_382.w), vec4<f32>(x_384.y, x_384.z, x_384.z, x_384.w));
  let x_390 : vec4<f32> = x_29.unity_SHAg;
  let x_392 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_390.y, x_390.x, x_390.z, x_390.w), vec4<f32>(x_392.y, x_392.z, x_392.z, x_392.w));
  let x_398 : vec4<f32> = x_29.unity_SHAb;
  let x_399 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_398, x_399);
  let x_402 : vec3<f32> = u_xlat4;
  let x_403 : vec3<f32> = u_xlat5;
  let x_404 : vec3<f32> = (x_402 + x_403);
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : vec4<f32> = u_xlat2;
  let x_410 : vec3<f32> = max(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_410.x, x_410.y, x_410.z, x_411.w);
  let x_413 : vec4<f32> = u_xlat2;
  let x_419 : f32 = x_417.Vector1_5f4b185241524942830132fc71554a33;
  let x_421 : f32 = x_417.Vector1_5f4b185241524942830132fc71554a33;
  let x_423 : f32 = x_417.Vector1_5f4b185241524942830132fc71554a33;
  let x_424 : vec3<f32> = vec3<f32>(x_419, x_421, x_423);
  let x_429 : vec3<f32> = (vec3<f32>(x_413.x, x_413.y, x_413.z) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_430 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : vec3<f32> = u_xlat0;
  let x_433 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_432, x_433);
  let x_435 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_435);
  let x_437 : f32 = u_xlat18;
  let x_439 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_437, x_437, x_437) * x_439);
  let x_442 : vec3<f32> = u_xlat0;
  let x_444 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_442.x, x_442.y, x_442.z, x_442.x));
  u_xlatb4 = vec3<bool>(x_444.x, x_444.y, x_444.z);
  let x_446 : vec3<f32> = u_xlat0;
  let x_447 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_446 * x_447);
  let x_450 : bool = u_xlatb4.x;
  if (x_450) {
    let x_455 : f32 = u_xlat3.z;
    x_451 = x_455;
  } else {
    let x_458 : f32 = u_xlat3.x;
    x_451 = x_458;
  }
  let x_459 : f32 = x_451;
  u_xlat13.x = x_459;
  let x_462 : bool = u_xlatb4.y;
  if (x_462) {
    let x_467 : f32 = u_xlat3.y;
    x_463 = x_467;
  } else {
    let x_470 : f32 = u_xlat3.w;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat13.y = x_471;
  let x_474 : bool = u_xlatb4.z;
  if (x_474) {
    let x_478 : f32 = u_xlat7;
    x_475 = x_478;
  } else {
    let x_481 : f32 = u_xlat1.x;
    x_475 = x_481;
  }
  let x_482 : f32 = x_475;
  u_xlat18 = x_482;
  let x_483 : vec3<f32> = u_xlat0;
  let x_485 : vec2<f32> = u_xlat13;
  let x_486 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * x_485);
  let x_487 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_486.x, x_486.y, x_487.z);
  let x_490 : f32 = u_xlat0.y;
  let x_492 : f32 = u_xlat0.x;
  u_xlat0.x = (x_490 + x_492);
  let x_495 : f32 = u_xlat18;
  let x_497 : f32 = u_xlat0.z;
  let x_500 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_495 * x_497) + x_500);
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_504);
  let x_509 : f32 = x_417.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_509 * 0.5f);
  let x_514 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_514, 0.00100000004749745131f);
  let x_519 : f32 = u_xlat0.x;
  let x_521 : f32 = u_xlat6.x;
  u_xlat0.x = (x_519 * x_521);
  let x_525 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_525);
  let x_529 : vec3<f32> = vs_INTERP2;
  let x_533 : vec3<f32> = x_151.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_529) + x_533);
  let x_535 : vec3<f32> = u_xlat6;
  let x_536 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_535, x_536);
  let x_540 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_540);
  let x_543 : vec3<f32> = u_xlat6;
  let x_544 : vec3<f32> = u_xlat1;
  u_xlat6 = (x_543 * vec3<f32>(x_544.x, x_544.x, x_544.x));
  let x_549 : f32 = x_151.unity_OrthoParams.w;
  u_xlatb1.x = (x_549 == 0.0f);
  let x_553 : bool = u_xlatb1.x;
  if (x_553) {
    let x_558 : f32 = u_xlat6.x;
    x_554 = x_558;
  } else {
    let x_562 : f32 = x_151.unity_MatrixV[0i].z;
    x_554 = x_562;
  }
  let x_563 : f32 = x_554;
  u_xlat3.x = x_563;
  let x_566 : bool = u_xlatb1.x;
  if (x_566) {
    let x_571 : f32 = u_xlat6.y;
    x_567 = x_571;
  } else {
    let x_574 : f32 = x_151.unity_MatrixV[1i].z;
    x_567 = x_574;
  }
  let x_575 : f32 = x_567;
  u_xlat3.y = x_575;
  let x_578 : bool = u_xlatb1.x;
  if (x_578) {
    let x_583 : f32 = u_xlat6.z;
    x_579 = x_583;
  } else {
    let x_586 : f32 = x_151.unity_MatrixV[2i].z;
    x_579 = x_586;
  }
  let x_587 : f32 = x_579;
  u_xlat3.z = x_587;
  let x_589 : vec4<f32> = u_xlat3;
  let x_591 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_589.x, x_589.y, x_589.z), vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_596 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_596);
  let x_599 : vec3<f32> = u_xlat6;
  let x_601 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_599.x, x_599.x, x_599.x) * vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec3<f32> = u_xlat6;
  let x_606 : vec4<f32> = x_151.x_MainLightPosition;
  u_xlat6.x = dot(x_604, -(vec3<f32>(x_606.x, x_606.y, x_606.z)));
  let x_612 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_612, 0.0f, 1.0f);
  let x_616 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_616);
  let x_620 : f32 = u_xlat6.x;
  u_xlat6.x = (x_620 * 150.0f);
  let x_625 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_625);
  let x_629 : f32 = u_xlat6.x;
  u_xlat6.x = (x_629 + 1.0f);
  let x_633 : f32 = u_xlat0.x;
  let x_635 : f32 = u_xlat6.x;
  u_xlat0.x = (x_633 * x_635);
  let x_639 : vec4<f32> = x_151.x_MainLightColor;
  let x_641 : vec3<f32> = u_xlat0;
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_639.x, x_639.y, x_639.z) * vec3<f32>(x_641.x, x_641.x, x_641.x)) + vec3<f32>(x_644.x, x_644.y, x_644.z));
  let x_649 : vec3<f32> = u_xlat0;
  let x_651 : vec4<f32> = x_417.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_653 : vec3<f32> = (x_649 * vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_653.x, x_653.y, x_653.z, x_654.w);
  let x_658 : f32 = x_151.x_BA_CloudData.w;
  u_xlat0.x = (-(x_658) + 1.0f);
  let x_667 : vec4<f32> = vs_INTERP1;
  let x_670 : f32 = x_151.x_GlobalMipBias.x;
  let x_671 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_667.x, x_667.y), x_670);
  let x_672 : vec2<f32> = vec2<f32>(x_671.z, x_671.w);
  let x_673 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_672.x, x_672.y, x_673.z);
  let x_676 : f32 = u_xlat0.x;
  let x_679 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_676) + x_679);
  let x_683 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_683) + 1.0f);
  let x_688 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_688);
  let x_692 : f32 = u_xlat6.x;
  let x_694 : f32 = x_417.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_692 * x_694);
  let x_698 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_698);
  let x_702 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat0.x = (x_707 * 10.0f);
  let x_712 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_712, 0.0f, 1.0f);
  let x_717 : f32 = u_xlat0.x;
  u_xlat12 = ((x_717 * -2.0f) + 3.0f);
  let x_723 : f32 = u_xlat0.x;
  let x_725 : f32 = u_xlat0.x;
  u_xlat0.x = (x_723 * x_725);
  let x_729 : f32 = u_xlat0.x;
  let x_730 : f32 = u_xlat12;
  u_xlat0.x = (x_729 * x_730);
  let x_734 : f32 = u_xlat0.x;
  let x_736 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_734, x_736);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


