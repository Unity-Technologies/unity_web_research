diagnostic(off, derivative_uniformity);

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr = array<strided_arr, 4u>;

alias Arr_1 = array<strided_arr, 4u>;

alias Arr_2 = array<strided_arr, 4u>;

struct PGlobals {
  /* @offset(0) */
  x_ManualTex2SRGB : i32,
  /* @offset(4) */
  x_SrcBlend : i32,
  @size(8)
  padding : u32,
  /* @offset(16) */
  x_CornerRadiuses : Arr_2,
  /* @offset(80) */
  x_BorderWidths : Arr_2,
  /* @offset(144) */
  x_Rect : Arr_2,
  /* @offset(208) */
  x_SmoothCorners : i32,
}

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat10 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlatb10 : bool;

var<private> u_xlat15 : f32;

var<private> u_xlat11 : f32;

var<private> u_xlatb11 : bool;

var<private> u_xlati2 : vec2<i32>;

var<private> u_xlati16 : i32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> u_xlat5 : f32;

var<private> u_xlatb1 : vec2<bool>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb5 : vec3<bool>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_95 : i32;
  var x_121 : vec2<f32>;
  var x_161 : vec2<f32>;
  var x_283 : f32;
  var x_312 : f32;
  var x_337 : bool;
  var x_348 : bool;
  var x_364 : f32;
  var x_542 : vec3<f32>;
  var x_570 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : f32 = x_18.x_BorderWidths[0i].el;
  u_xlat0.x = x_23;
  let x_32 : f32 = x_18.x_BorderWidths[2i].el;
  u_xlat1.x = x_32;
  let x_39 : f32 = vs_TEXCOORD2.x;
  let x_42 : f32 = x_18.x_Rect[0i].el;
  u_xlat10 = (x_39 + -(x_42));
  let x_46 : f32 = x_18.x_Rect[2i].el;
  let x_50 : f32 = u_xlat10;
  u_xlat10 = ((-(x_46) * 0.5f) + x_50);
  let x_56 : f32 = u_xlat10;
  u_xlatb10 = (0.0f >= x_56);
  let x_60 : f32 = x_18.x_Rect[0i].el;
  let x_62 : f32 = x_18.x_Rect[2i].el;
  u_xlat15 = (x_60 + x_62);
  let x_67 : f32 = vs_TEXCOORD2.y;
  let x_70 : f32 = x_18.x_Rect[1i].el;
  u_xlat11 = (x_67 + -(x_70));
  let x_74 : f32 = x_18.x_Rect[3i].el;
  let x_77 : f32 = u_xlat11;
  u_xlat11 = ((-(x_74) * 0.5f) + x_77);
  let x_80 : f32 = u_xlat11;
  u_xlatb11 = (0.0f >= x_80);
  let x_85 : bool = u_xlatb11;
  u_xlati2 = select(vec2<i32>(3i, 2i), vec2<i32>(0i, 1i), vec2<bool>(x_85, x_85));
  let x_93 : bool = u_xlatb10;
  if (x_93) {
    let x_99 : i32 = u_xlati2.x;
    x_95 = x_99;
  } else {
    let x_102 : i32 = u_xlati2.y;
    x_95 = x_102;
  }
  let x_103 : i32 = x_95;
  u_xlati16 = x_103;
  let x_104 : f32 = u_xlat15;
  let x_105 : i32 = u_xlati16;
  let x_107 : f32 = x_18.x_CornerRadiuses[x_105].el;
  u_xlat1.y = (x_104 + -(x_107));
  let x_112 : f32 = x_18.x_Rect[0i].el;
  let x_113 : i32 = u_xlati16;
  let x_115 : f32 = x_18.x_CornerRadiuses[x_113].el;
  u_xlat0.y = (x_112 + x_115);
  let x_119 : bool = u_xlatb10;
  if (x_119) {
    let x_124 : vec2<f32> = u_xlat0;
    x_121 = x_124;
  } else {
    let x_126 : vec4<f32> = u_xlat1;
    x_121 = vec2<f32>(x_126.x, x_126.y);
  }
  let x_128 : vec2<f32> = x_121;
  let x_129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_128.x, x_128.y, x_129.z, x_129.w);
  let x_133 : f32 = x_18.x_BorderWidths[1i].el;
  u_xlat13.x = x_133;
  let x_137 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlat14.x = x_137;
  let x_140 : f32 = x_18.x_Rect[1i].el;
  let x_142 : f32 = x_18.x_Rect[3i].el;
  u_xlat0.x = (x_140 + x_142);
  let x_146 : f32 = u_xlat0.x;
  let x_147 : i32 = u_xlati16;
  let x_149 : f32 = x_18.x_CornerRadiuses[x_147].el;
  u_xlat14.y = (x_146 + -(x_149));
  let x_154 : f32 = x_18.x_Rect[1i].el;
  let x_155 : i32 = u_xlati16;
  let x_157 : f32 = x_18.x_CornerRadiuses[x_155].el;
  u_xlat13.y = (x_154 + x_157);
  let x_160 : bool = u_xlatb11;
  if (x_160) {
    let x_164 : vec2<f32> = u_xlat13;
    x_161 = x_164;
  } else {
    let x_166 : vec2<f32> = u_xlat14;
    x_161 = x_166;
  }
  let x_167 : vec2<f32> = x_161;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_167.x, x_167.y);
  let x_170 : vec4<f32> = u_xlat2;
  let x_173 : i32 = u_xlati16;
  let x_175 : f32 = x_18.x_CornerRadiuses[x_173].el;
  u_xlat0 = (-(vec2<f32>(x_170.x, x_170.z)) + vec2<f32>(x_175, x_175));
  let x_179 : f32 = u_xlat0.x;
  let x_181 : f32 = u_xlat0.y;
  u_xlat15 = (x_179 / x_181);
  let x_186 : vec4<f32> = u_xlat2;
  let x_189 : vec4<f32> = vs_TEXCOORD2;
  let x_191 : vec2<f32> = (-(vec2<f32>(x_186.y, x_186.w)) + vec2<f32>(x_189.x, x_189.y));
  let x_192 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : f32 = u_xlat15;
  let x_196 : f32 = u_xlat3.y;
  u_xlat3.z = (x_194 * x_196);
  let x_200 : vec3<f32> = u_xlat3;
  let x_202 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(vec2<f32>(x_200.x, x_200.z), vec2<f32>(x_202.x, x_202.z));
  let x_205 : vec3<f32> = u_xlat3;
  let x_207 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_205.x, x_205.y), vec2<f32>(x_207.x, x_207.y));
  let x_212 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_212);
  let x_216 : f32 = u_xlat1.x;
  let x_217 : i32 = u_xlati16;
  let x_219 : f32 = x_18.x_CornerRadiuses[x_217].el;
  u_xlat1.x = (x_216 + -(x_219));
  let x_223 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_223);
  let x_226 : f32 = u_xlat0.x;
  let x_228 : f32 = u_xlat15;
  u_xlat15 = (-(x_226) + x_228);
  let x_233 : vec2<f32> = u_xlat0;
  let x_236 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_233.x, x_233.y, x_233.x, x_233.x));
  u_xlatb0 = vec2<bool>(x_236.x, x_236.y);
  let x_239 : bool = u_xlatb0.y;
  let x_241 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_239 & x_241);
  let x_246 : f32 = vs_TEXCOORD2.x;
  u_xlat5 = dpdxCoarse(x_246);
  let x_249 : f32 = u_xlat5;
  u_xlat5 = (1.0f / abs(x_249));
  let x_252 : f32 = u_xlat15;
  let x_253 : f32 = u_xlat5;
  u_xlat15 = ((x_252 * x_253) + 0.5f);
  let x_256 : f32 = u_xlat15;
  u_xlat15 = clamp(x_256, 0.0f, 1.0f);
  let x_259 : f32 = u_xlat1.x;
  let x_260 : f32 = u_xlat5;
  u_xlat5 = ((x_259 * x_260) + 0.5f);
  let x_263 : f32 = u_xlat5;
  u_xlat5 = clamp(x_263, 0.0f, 1.0f);
  let x_266 : bool = u_xlatb0.x;
  let x_267 : f32 = u_xlat15;
  u_xlat0.x = select(1.0f, x_267, x_266);
  let x_271 : vec4<f32> = u_xlat2;
  let x_273 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_271.x, x_271.z, x_271.x, x_271.x));
  u_xlatb1 = vec2<bool>(x_273.x, x_273.y);
  let x_277 : bool = u_xlatb1.y;
  let x_279 : bool = u_xlatb1.x;
  u_xlatb15 = (x_277 | x_279);
  let x_281 : bool = u_xlatb15;
  if (x_281) {
    let x_287 : f32 = u_xlat0.x;
    x_283 = x_287;
  } else {
    x_283 = 0.0f;
  }
  let x_289 : f32 = x_283;
  u_xlat0.x = x_289;
  let x_291 : bool = u_xlatb15;
  let x_292 : f32 = u_xlat5;
  u_xlat5 = select(0.0f, x_292, x_291);
  let x_294 : f32 = u_xlat5;
  u_xlat15 = (-(x_294) + 1.0f);
  let x_300 : f32 = u_xlat5;
  u_xlatb5.x = (x_300 == 0.0f);
  let x_306 : i32 = x_18.x_SmoothCorners;
  let x_308 : f32 = u_xlat15;
  u_xlat15 = select(0.0f, x_308, (x_306 != 0i));
  let x_311 : bool = u_xlatb5.x;
  if (x_311) {
    let x_316 : f32 = u_xlat0.x;
    x_312 = x_316;
  } else {
    let x_318 : f32 = u_xlat15;
    x_312 = x_318;
  }
  let x_319 : f32 = x_312;
  u_xlat0.x = x_319;
  let x_321 : vec4<f32> = u_xlat2;
  let x_323 : vec4<f32> = vs_TEXCOORD2;
  let x_325 : vec4<bool> = (vec4<f32>(x_321.y, x_321.y, x_321.w, x_321.w) >= vec4<f32>(x_323.x, x_323.x, x_323.y, x_323.y));
  let x_326 : vec2<bool> = vec2<bool>(x_325.x, x_325.z);
  let x_327 : vec3<bool> = u_xlatb5;
  u_xlatb5 = vec3<bool>(x_326.x, x_327.y, x_326.y);
  let x_329 : vec4<f32> = vs_TEXCOORD2;
  let x_331 : vec4<f32> = u_xlat2;
  let x_333 : vec4<bool> = (vec4<f32>(x_329.x, x_329.y, x_329.x, x_329.x) >= vec4<f32>(x_331.y, x_331.w, x_331.y, x_331.y));
  u_xlatb1 = vec2<bool>(x_333.x, x_333.y);
  let x_335 : bool = u_xlatb10;
  if (x_335) {
    let x_341 : bool = u_xlatb5.x;
    x_337 = x_341;
  } else {
    let x_344 : bool = u_xlatb1.x;
    x_337 = x_344;
  }
  let x_345 : bool = x_337;
  u_xlatb5.x = x_345;
  let x_347 : bool = u_xlatb11;
  if (x_347) {
    let x_352 : bool = u_xlatb5.z;
    x_348 = x_352;
  } else {
    let x_355 : bool = u_xlatb1.y;
    x_348 = x_355;
  }
  let x_356 : bool = x_348;
  u_xlatb10 = x_356;
  let x_357 : bool = u_xlatb10;
  let x_359 : bool = u_xlatb5.x;
  u_xlatb5.x = (x_357 & x_359);
  let x_363 : bool = u_xlatb5.x;
  if (x_363) {
    let x_368 : f32 = u_xlat0.x;
    x_364 = x_368;
  } else {
    x_364 = 1.0f;
  }
  let x_370 : f32 = x_364;
  u_xlat0.x = x_370;
  let x_373 : f32 = x_18.x_BorderWidths[0i].el;
  let x_375 : f32 = x_18.x_BorderWidths[2i].el;
  u_xlat10 = (x_373 + x_375);
  let x_377 : f32 = u_xlat10;
  let x_380 : f32 = x_18.x_Rect[2i].el;
  u_xlat10 = (-(x_377) + x_380);
  let x_383 : f32 = x_18.x_BorderWidths[0i].el;
  let x_385 : f32 = x_18.x_Rect[0i].el;
  u_xlat15 = (x_383 + x_385);
  let x_387 : f32 = u_xlat10;
  let x_388 : f32 = u_xlat15;
  u_xlat10 = (x_387 + x_388);
  let x_391 : f32 = vs_TEXCOORD2.x;
  let x_392 : f32 = u_xlat15;
  u_xlatb15 = (x_391 >= x_392);
  let x_394 : f32 = u_xlat10;
  let x_396 : f32 = vs_TEXCOORD2.x;
  u_xlatb10 = (x_394 >= x_396);
  let x_398 : bool = u_xlatb10;
  let x_399 : bool = u_xlatb15;
  u_xlatb10 = (x_398 & x_399);
  let x_402 : f32 = x_18.x_BorderWidths[1i].el;
  let x_404 : f32 = x_18.x_Rect[1i].el;
  u_xlat15 = (x_402 + x_404);
  let x_407 : f32 = vs_TEXCOORD2.y;
  let x_408 : f32 = u_xlat15;
  u_xlatb1.x = (x_407 >= x_408);
  let x_411 : bool = u_xlatb10;
  let x_413 : bool = u_xlatb1.x;
  u_xlatb10 = (x_411 & x_413);
  let x_416 : f32 = x_18.x_BorderWidths[1i].el;
  let x_418 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlat1.x = (x_416 + x_418);
  let x_422 : f32 = u_xlat1.x;
  let x_425 : f32 = x_18.x_Rect[3i].el;
  u_xlat1.x = (-(x_422) + x_425);
  let x_428 : f32 = u_xlat15;
  let x_430 : f32 = u_xlat1.x;
  u_xlat15 = (x_428 + x_430);
  let x_432 : f32 = u_xlat15;
  let x_434 : f32 = vs_TEXCOORD2.y;
  u_xlatb15 = (x_432 >= x_434);
  let x_436 : bool = u_xlatb15;
  let x_437 : bool = u_xlatb10;
  u_xlatb10 = (x_436 & x_437);
  let x_439 : bool = u_xlatb10;
  u_xlat10 = select(1.0f, 0.0f, x_439);
  let x_442 : bool = u_xlatb5.x;
  let x_443 : f32 = u_xlat10;
  u_xlat5 = select(x_443, 1.0f, x_442);
  let x_446 : f32 = x_18.x_BorderWidths[0i].el;
  u_xlatb10 = (0.0f < x_446);
  let x_449 : f32 = x_18.x_BorderWidths[1i].el;
  u_xlatb15 = (0.0f < x_449);
  let x_451 : bool = u_xlatb15;
  let x_452 : bool = u_xlatb10;
  u_xlatb10 = (x_451 | x_452);
  let x_455 : f32 = x_18.x_BorderWidths[2i].el;
  u_xlatb15 = (0.0f < x_455);
  let x_457 : bool = u_xlatb15;
  let x_458 : bool = u_xlatb10;
  u_xlatb10 = (x_457 | x_458);
  let x_461 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlatb15 = (0.0f < x_461);
  let x_463 : bool = u_xlatb15;
  let x_464 : bool = u_xlatb10;
  u_xlatb10 = (x_463 | x_464);
  let x_466 : bool = u_xlatb10;
  let x_467 : f32 = u_xlat5;
  u_xlat5 = select(1.0f, x_467, x_466);
  let x_469 : f32 = u_xlat5;
  let x_471 : f32 = u_xlat0.x;
  u_xlat10 = (x_469 * x_471);
  let x_485 : vec2<f32> = vs_TEXCOORD1;
  let x_486 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_485);
  u_xlat15 = x_486.w;
  let x_489 : f32 = u_xlat15;
  let x_490 : f32 = u_xlat10;
  u_xlat10 = (x_489 * x_490);
  let x_498 : vec2<f32> = vs_TEXCOORD0;
  let x_499 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_498);
  u_xlat1 = x_499;
  let x_500 : vec4<f32> = u_xlat1;
  let x_503 : vec3<f32> = max(vec3<f32>(x_500.x, x_500.y, x_500.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_504 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_503.z, x_504.w);
  let x_506 : vec4<f32> = u_xlat2;
  let x_508 : vec3<f32> = log2(vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
  let x_511 : vec4<f32> = u_xlat2;
  let x_515 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_515.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_520 : vec3<f32> = exp2(vec3<f32>(x_518.x, x_518.y, x_518.z));
  let x_521 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_520.x, x_520.y, x_520.z, x_521.w);
  let x_523 : vec4<f32> = u_xlat2;
  let x_530 : vec3<f32> = ((vec3<f32>(x_523.x, x_523.y, x_523.z) * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat2;
  let x_535 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_536 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
  let x_539 : i32 = x_18.x_ManualTex2SRGB;
  if ((x_539 != 0i)) {
    let x_545 : vec4<f32> = u_xlat2;
    x_542 = vec3<f32>(x_545.x, x_545.y, x_545.z);
  } else {
    let x_548 : vec4<f32> = u_xlat1;
    x_542 = vec3<f32>(x_548.x, x_548.y, x_548.z);
  }
  let x_550 : vec3<f32> = x_542;
  let x_551 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
  let x_553 : vec4<f32> = u_xlat1;
  let x_555 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_553 * x_555);
  let x_557 : f32 = u_xlat10;
  let x_559 : vec4<f32> = u_xlat1;
  let x_561 : vec3<f32> = (vec3<f32>(x_557, x_557, x_557) * vec3<f32>(x_559.x, x_559.y, x_559.z));
  let x_562 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
  let x_565 : i32 = x_18.x_SrcBlend;
  u_xlatb10 = (x_565 != 5i);
  let x_569 : bool = u_xlatb10;
  if (x_569) {
    let x_573 : vec4<f32> = u_xlat2;
    x_570 = vec3<f32>(x_573.x, x_573.y, x_573.z);
  } else {
    let x_576 : vec4<f32> = u_xlat1;
    x_570 = vec3<f32>(x_576.x, x_576.y, x_576.z);
  }
  let x_578 : vec3<f32> = x_570;
  let x_579 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_582 : f32 = u_xlat0.x;
  let x_584 : f32 = u_xlat1.w;
  u_xlat0.x = (x_582 * x_584);
  let x_587 : f32 = u_xlat5;
  let x_589 : f32 = u_xlat0.x;
  u_xlat0.x = (x_587 * x_589);
  let x_592 : f32 = u_xlat15;
  let x_594 : f32 = u_xlat0.x;
  SV_Target0.w = (x_592 * x_594);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


