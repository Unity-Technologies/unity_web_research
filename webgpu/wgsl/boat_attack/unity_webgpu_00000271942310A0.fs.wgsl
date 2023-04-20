diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_RTHandleScale : vec4<f32>,
  /* @offset(32) */
  x_BlitTexture_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Lut_Params : vec4<f32>,
  /* @offset(64) */
  x_UserLut_Params : vec4<f32>,
  /* @offset(80) */
  x_Distortion_Params1 : vec4<f32>,
  /* @offset(96) */
  x_Distortion_Params2 : vec4<f32>,
  /* @offset(112) */
  x_Vignette_Params1 : vec4<f32>,
  /* @offset(128) */
  x_Vignette_Params2 : vec4<f32>,
  /* @offset(144) */
  x_Grain_Params : vec2<f32>,
  /* @offset(160) */
  x_Grain_TilingParams : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat10 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb6 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat11 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlatb17 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

var<private> u_xlatb15 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlatb3 : vec3<bool>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

var<private> u_xlat4 : vec2<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_232 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_438 : f32;
  var x_450 : f32;
  var x_462 : f32;
  var x_607 : f32;
  var x_619 : f32;
  var x_631 : f32;
  var x_832 : f32;
  var x_845 : f32;
  var x_857 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_30 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
  let x_36 : vec4<f32> = u_xlat0;
  let x_39 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_44 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_47 : vec2<f32> = ((vec2<f32>(x_36.x, x_36.y) * vec2<f32>(x_39.z, x_39.z)) + -(vec2<f32>(x_44.x, x_44.y)));
  let x_48 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_47.x, x_47.y, x_48.z, x_48.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = x_25.x_Distortion_Params1;
  let x_55 : vec2<f32> = (vec2<f32>(x_50.x, x_50.y) * vec2<f32>(x_53.z, x_53.w));
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_25.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.02083509974181652069f) + -0.08513300120830535889f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.18014100193977355957f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.33029949665069580078f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.99986600875854492188f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.57079637050628662109f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_236 : f32 = u_xlat2.x;
      x_232 = -(x_236);
    } else {
      let x_240 : f32 = u_xlat2.x;
      x_232 = x_240;
    }
    let x_241 : f32 = x_232;
    u_xlat1.x = x_241;
    let x_243 : f32 = u_xlat16;
    let x_245 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_243 * x_245) + -1.0f);
    let x_249 : vec4<f32> = u_xlat0;
    let x_251 : vec3<f32> = u_xlat1;
    let x_254 : vec2<f32> = u_xlat10;
    let x_255 : vec2<f32> = ((vec2<f32>(x_249.x, x_249.y) * vec2<f32>(x_251.x, x_251.x)) + x_254);
    let x_256 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_255.x, x_255.y, x_256.z);
  }
  let x_260 : vec4<f32> = x_25.x_BlitTexture_TexelSize;
  let x_266 : vec4<f32> = x_25.x_RTHandleScale;
  let x_268 : vec2<f32> = ((-(vec2<f32>(x_260.x, x_260.y)) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(x_266.x, x_266.y));
  let x_269 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_268.x, x_268.y, x_269.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_273 : vec3<f32> = u_xlat6;
  let x_275 : vec2<f32> = min(vec2<f32>(x_271.x, x_271.y), vec2<f32>(x_273.x, x_273.y));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_276.z, x_276.w);
  let x_288 : vec4<f32> = u_xlat0;
  let x_292 : f32 = x_25.x_GlobalMipBias.x;
  let x_293 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_288.x, x_288.y), x_292);
  let x_294 : vec3<f32> = vec3<f32>(x_293.x, x_293.y, x_293.z);
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_301 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_301);
  let x_303 : bool = u_xlatb15;
  if (x_303) {
    let x_306 : vec3<f32> = u_xlat6;
    let x_309 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_312 : vec2<f32> = (vec2<f32>(x_306.x, x_306.y) + -(vec2<f32>(x_309.x, x_309.y)));
    let x_313 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_312.x, x_312.y, x_313.z);
    let x_315 : vec3<f32> = u_xlat1;
    let x_319 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_321 : vec2<f32> = (abs(vec2<f32>(x_315.x, x_315.y)) * vec2<f32>(x_319.z, x_319.z));
    let x_322 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_322.x, x_321.x, x_321.y);
    let x_325 : f32 = u_xlat1.y;
    let x_328 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_325 * x_328);
    let x_332 : vec3<f32> = u_xlat1;
    let x_334 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_332.x, x_332.z), vec2<f32>(x_334.x, x_334.z));
    let x_337 : f32 = u_xlat15;
    u_xlat15 = (-(x_337) + 1.0f);
    let x_340 : f32 = u_xlat15;
    u_xlat15 = max(x_340, 0.0f);
    let x_342 : f32 = u_xlat15;
    u_xlat15 = log2(x_342);
    let x_344 : f32 = u_xlat15;
    let x_346 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_344 * x_346);
    let x_348 : f32 = u_xlat15;
    u_xlat15 = exp2(x_348);
    let x_351 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_351.x, x_351.y, x_351.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_356 : f32 = u_xlat15;
    let x_358 : vec3<f32> = u_xlat1;
    let x_361 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_356, x_356, x_356) * x_358) + vec3<f32>(x_361.x, x_361.y, x_361.z));
    let x_364 : vec4<f32> = u_xlat0;
    let x_366 : vec3<f32> = u_xlat1;
    let x_367 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) * x_366);
    let x_368 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_367.x, x_367.y, x_367.z, x_368.w);
  }
  let x_370 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = x_25.x_Lut_Params;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.x, x_370.y, x_370.z) * vec3<f32>(x_374.w, x_374.w, x_374.w));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = clamp(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_388 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_388);
  let x_390 : bool = u_xlatb15;
  if (x_390) {
    let x_393 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
    let x_398 : vec4<f32> = u_xlat0;
    let x_400 : vec3<f32> = log2(vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_401 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat2;
    let x_407 : vec3<f32> = (vec3<f32>(x_403.x, x_403.y, x_403.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
    let x_408 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
    let x_410 : vec4<f32> = u_xlat2;
    let x_412 : vec3<f32> = exp2(vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_413 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_412.x, x_412.y, x_412.z, x_413.w);
    let x_415 : vec4<f32> = u_xlat2;
    let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
    let x_423 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_428 : vec4<f32> = u_xlat0;
    let x_431 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_428.x, x_428.y, x_428.z, x_428.x));
    u_xlatb3 = vec3<bool>(x_431.x, x_431.y, x_431.z);
    let x_435 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_435;
    let x_437 : bool = u_xlatb3.x;
    if (x_437) {
      let x_442 : f32 = u_xlat1.x;
      x_438 = x_442;
    } else {
      let x_445 : f32 = u_xlat2.x;
      x_438 = x_445;
    }
    let x_446 : f32 = x_438;
    hlslcc_movcTemp.x = x_446;
    let x_449 : bool = u_xlatb3.y;
    if (x_449) {
      let x_454 : f32 = u_xlat1.y;
      x_450 = x_454;
    } else {
      let x_457 : f32 = u_xlat2.y;
      x_450 = x_457;
    }
    let x_458 : f32 = x_450;
    hlslcc_movcTemp.y = x_458;
    let x_461 : bool = u_xlatb3.z;
    if (x_461) {
      let x_466 : f32 = u_xlat1.z;
      x_462 = x_466;
    } else {
      let x_469 : f32 = u_xlat2.z;
      x_462 = x_469;
    }
    let x_470 : f32 = x_462;
    hlslcc_movcTemp.z = x_470;
    let x_472 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_472;
    let x_473 : vec3<f32> = u_xlat1;
    let x_476 : vec4<f32> = x_25.x_UserLut_Params;
    let x_478 : vec3<f32> = (vec3<f32>(x_473.z, x_473.x, x_473.y) * vec3<f32>(x_476.z, x_476.z, x_476.z));
    let x_479 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_478.x, x_478.y, x_478.z, x_479.w);
    let x_482 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_482);
    let x_485 : vec4<f32> = x_25.x_UserLut_Params;
    let x_487 : vec2<f32> = (vec2<f32>(x_485.x, x_485.y) * vec2<f32>(0.5f, 0.5f));
    let x_488 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_487.x, x_488.y, x_488.z, x_487.y);
    let x_490 : vec4<f32> = u_xlat2;
    let x_493 : vec4<f32> = x_25.x_UserLut_Params;
    let x_496 : vec4<f32> = u_xlat2;
    let x_498 : vec2<f32> = ((vec2<f32>(x_490.y, x_490.z) * vec2<f32>(x_493.x, x_493.y)) + vec2<f32>(x_496.x, x_496.w));
    let x_499 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_499.x, x_498.x, x_498.y, x_499.w);
    let x_501 : f32 = u_xlat15;
    let x_503 : f32 = x_25.x_UserLut_Params.y;
    let x_506 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_501 * x_503) + x_506);
    let x_513 : vec4<f32> = u_xlat2;
    let x_515 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_513.x, x_513.z), 0.0f);
    u_xlat3 = vec3<f32>(x_515.x, x_515.y, x_515.z);
    let x_519 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_519;
    u_xlat4.y = 0.0f;
    let x_522 : vec4<f32> = u_xlat2;
    let x_524 : vec2<f32> = u_xlat4;
    let x_525 : vec2<f32> = (vec2<f32>(x_522.x, x_522.z) + x_524);
    let x_526 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
    let x_531 : vec4<f32> = u_xlat2;
    let x_533 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_531.x, x_531.y), 0.0f);
    let x_534 : vec3<f32> = vec3<f32>(x_533.x, x_533.y, x_533.z);
    let x_535 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_534.x, x_534.y, x_534.z, x_535.w);
    let x_538 : f32 = u_xlat1.z;
    let x_540 : f32 = x_25.x_UserLut_Params.z;
    let x_542 : f32 = u_xlat15;
    u_xlat15 = ((x_538 * x_540) + -(x_542));
    let x_545 : vec3<f32> = u_xlat3;
    let x_547 : vec4<f32> = u_xlat2;
    let x_549 : vec3<f32> = (-(x_545) + vec3<f32>(x_547.x, x_547.y, x_547.z));
    let x_550 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_549.x, x_549.y, x_549.z, x_550.w);
    let x_552 : f32 = u_xlat15;
    let x_554 : vec4<f32> = u_xlat2;
    let x_557 : vec3<f32> = u_xlat3;
    let x_558 : vec3<f32> = ((vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_554.x, x_554.y, x_554.z)) + x_557);
    let x_559 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
    let x_561 : vec3<f32> = u_xlat1;
    let x_563 : vec4<f32> = u_xlat2;
    let x_565 : vec3<f32> = (-(x_561) + vec3<f32>(x_563.x, x_563.y, x_563.z));
    let x_566 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_569 : vec4<f32> = x_25.x_UserLut_Params;
    let x_571 : vec4<f32> = u_xlat2;
    let x_574 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_569.w, x_569.w, x_569.w) * vec3<f32>(x_571.x, x_571.y, x_571.z)) + x_574);
    let x_576 : vec3<f32> = u_xlat1;
    let x_579 : vec3<f32> = (x_576 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
    let x_580 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_582 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
    let x_586 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_586 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
    let x_590 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_590));
    let x_593 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_593 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
    let x_597 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_597);
    let x_601 : vec3<f32> = u_xlat1;
    let x_603 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_601.x, x_601.y, x_601.z, x_601.x));
    u_xlatb1 = vec3<bool>(x_603.x, x_603.y, x_603.z);
    let x_606 : bool = u_xlatb1.x;
    if (x_606) {
      let x_611 : f32 = u_xlat2.x;
      x_607 = x_611;
    } else {
      let x_614 : f32 = u_xlat3.x;
      x_607 = x_614;
    }
    let x_615 : f32 = x_607;
    u_xlat0.x = x_615;
    let x_618 : bool = u_xlatb1.y;
    if (x_618) {
      let x_623 : f32 = u_xlat2.y;
      x_619 = x_623;
    } else {
      let x_626 : f32 = u_xlat3.y;
      x_619 = x_626;
    }
    let x_627 : f32 = x_619;
    u_xlat0.y = x_627;
    let x_630 : bool = u_xlatb1.z;
    if (x_630) {
      let x_635 : f32 = u_xlat2.z;
      x_631 = x_635;
    } else {
      let x_638 : f32 = u_xlat3.z;
      x_631 = x_638;
    }
    let x_639 : f32 = x_631;
    u_xlat0.z = x_639;
  }
  let x_641 : vec4<f32> = u_xlat0;
  let x_644 : vec4<f32> = x_25.x_Lut_Params;
  let x_646 : vec3<f32> = (vec3<f32>(x_641.x, x_641.y, x_641.z) * vec3<f32>(x_644.z, x_644.z, x_644.z));
  let x_647 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_646.z);
  let x_650 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_650);
  let x_653 : vec4<f32> = x_25.x_Lut_Params;
  let x_655 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(0.5f, 0.5f));
  let x_656 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_655.x, x_655.y, x_656.z);
  let x_658 : vec4<f32> = u_xlat0;
  let x_661 : vec4<f32> = x_25.x_Lut_Params;
  let x_664 : vec3<f32> = u_xlat1;
  let x_666 : vec2<f32> = ((vec2<f32>(x_658.x, x_658.y) * vec2<f32>(x_661.x, x_661.y)) + vec2<f32>(x_664.x, x_664.y));
  let x_667 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_667.x, x_666.x, x_666.y);
  let x_669 : f32 = u_xlat15;
  let x_671 : f32 = x_25.x_Lut_Params.y;
  let x_674 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_669 * x_671) + x_674);
  let x_681 : vec3<f32> = u_xlat1;
  let x_683 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_681.x, x_681.z), 0.0f);
  let x_684 : vec3<f32> = vec3<f32>(x_683.x, x_683.y, x_683.z);
  let x_685 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_688;
  u_xlat0.y = 0.0f;
  let x_691 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = u_xlat1;
  let x_695 : vec2<f32> = (vec2<f32>(x_691.x, x_691.y) + vec2<f32>(x_693.x, x_693.z));
  let x_696 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_695.x, x_695.y, x_696.z, x_696.w);
  let x_701 : vec4<f32> = u_xlat0;
  let x_703 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_701.x, x_701.y), 0.0f);
  u_xlat1 = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_706 : f32 = u_xlat0.z;
  let x_708 : f32 = x_25.x_Lut_Params.z;
  let x_710 : f32 = u_xlat15;
  u_xlat0.x = ((x_706 * x_708) + -(x_710));
  let x_715 : vec4<f32> = u_xlat2;
  let x_718 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_715.x, x_715.y, x_715.z)) + x_718);
  let x_720 : vec4<f32> = u_xlat0;
  let x_722 : vec3<f32> = u_xlat5;
  let x_724 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = ((vec3<f32>(x_720.x, x_720.x, x_720.x) * x_722) + vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec2<f32> = vs_TEXCOORD0;
  let x_732 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_736 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_738 : vec2<f32> = ((x_729 * vec2<f32>(x_732.x, x_732.y)) + vec2<f32>(x_736.z, x_736.w));
  let x_739 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_738.x, x_738.y, x_739.z);
  let x_746 : vec3<f32> = u_xlat1;
  let x_749 : f32 = x_25.x_GlobalMipBias.x;
  let x_750 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_746.x, x_746.y), x_749);
  u_xlat15 = x_750.w;
  let x_752 : f32 = u_xlat15;
  u_xlat15 = (x_752 + -0.5f);
  let x_754 : f32 = u_xlat15;
  let x_755 : f32 = u_xlat15;
  u_xlat15 = (x_754 + x_755);
  let x_757 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(0.21267290413379669189f, 0.71515220403671264648f, 0.07217500358819961548f));
  let x_766 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_766);
  let x_771 : f32 = x_25.x_Grain_Params.y;
  let x_773 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_771 * -(x_773)) + 1.0f);
  let x_778 : f32 = u_xlat15;
  let x_780 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_778, x_778, x_778) * vec3<f32>(x_780.x, x_780.y, x_780.z));
  let x_783 : vec3<f32> = u_xlat6;
  let x_786 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_783 * vec3<f32>(x_786.x, x_786.x, x_786.x));
  let x_789 : vec3<f32> = u_xlat6;
  let x_790 : vec3<f32> = u_xlat1;
  let x_793 : vec4<f32> = u_xlat0;
  let x_795 : vec3<f32> = ((x_789 * vec3<f32>(x_790.x, x_790.x, x_790.x)) + vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_801 : vec4<f32> = u_xlat0;
  let x_804 : vec3<f32> = log2(abs(vec3<f32>(x_801.x, x_801.y, x_801.z)));
  let x_805 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat2;
  let x_809 : vec3<f32> = (vec3<f32>(x_807.x, x_807.y, x_807.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec4<f32> = u_xlat2;
  let x_814 : vec3<f32> = exp2(vec3<f32>(x_812.x, x_812.y, x_812.z));
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat2;
  let x_820 : vec3<f32> = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_824 : vec4<f32> = u_xlat0;
  let x_826 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.x));
  u_xlatb0 = vec3<bool>(x_826.x, x_826.y, x_826.z);
  let x_831 : bool = u_xlatb0.x;
  if (x_831) {
    let x_836 : f32 = u_xlat1.x;
    x_832 = x_836;
  } else {
    let x_839 : f32 = u_xlat2.x;
    x_832 = x_839;
  }
  let x_840 : f32 = x_832;
  SV_Target0.x = x_840;
  let x_844 : bool = u_xlatb0.y;
  if (x_844) {
    let x_849 : f32 = u_xlat1.y;
    x_845 = x_849;
  } else {
    let x_852 : f32 = u_xlat2.y;
    x_845 = x_852;
  }
  let x_853 : f32 = x_845;
  SV_Target0.y = x_853;
  let x_856 : bool = u_xlatb0.z;
  if (x_856) {
    let x_861 : f32 = u_xlat1.z;
    x_857 = x_861;
  } else {
    let x_864 : f32 = u_xlat2.z;
    x_857 = x_864;
  }
  let x_865 : f32 = x_857;
  SV_Target0.z = x_865;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


