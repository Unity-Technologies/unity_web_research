struct strided_arr {
  @size(16)
  el : f32,
}

type Arr = array<strided_arr, 4u>;

type Arr_1 = array<strided_arr, 4u>;

type Arr_2 = array<strided_arr, 4u>;

type Arr_3 = array<vec4<f32>, 4u>;

struct PGlobals {
  x_ManualTex2SRGB : i32,
  x_SrcBlend : i32,
  @size(8)
  padding : u32,
  x_CornerRadiuses : Arr_2,
  x_BorderWidths : Arr_2,
  x_Rect : Arr_2,
  x_BorderColors : Arr_3,
}

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_75 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_GUIClipTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_GUIClipTexture : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var x_82 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlatb9 : vec2<bool>;
  var u_xlati2 : vec3<i32>;
  var u_xlati27 : i32;
  var x_153 : i32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var x_266 : vec4<f32>;
  var u_xlatb11 : vec3<bool>;
  var u_xlatb3 : vec2<bool>;
  var x_294 : vec2<bool>;
  var u_xlatb4 : vec2<bool>;
  var x_319 : vec2<bool>;
  var u_xlat11 : f32;
  var u_xlatb12 : bool;
  var u_xlatb21 : bool;
  var u_xlati30 : i32;
  var u_xlati13 : i32;
  var u_xlatb29 : bool;
  var u_xlatb18 : bool;
  var u_xlati29 : i32;
  var u_xlati18 : i32;
  var u_xlat7 : vec4<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlat13 : vec2<f32>;
  var x_585 : i32;
  var u_xlatb20 : bool;
  var x_600 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat28 : f32;
  var u_xlat2 : f32;
  var u_xlat27 : f32;
  var u_xlat20 : f32;
  var u_xlatb1 : bool;
  var u_xlatb27 : bool;
  var x_743 : f32;
  var x_752 : f32;
  var x_766 : f32;
  var x_777 : f32;
  var x_840 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD2.x;
  u_xlat0.x = dpdxCoarse(x_16);
  let x_22 : f32 = u_xlat0.x;
  u_xlat0.x = (1.0f / abs(x_22));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_40);
  u_xlat1 = x_41;
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat9 = max(vec3<f32>(x_45.x, x_45.y, x_45.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_50 : vec3<f32> = u_xlat9;
  u_xlat9 = log2(x_50);
  let x_52 : vec3<f32> = u_xlat9;
  u_xlat9 = (x_52 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_56 : vec3<f32> = u_xlat9;
  u_xlat9 = exp2(x_56);
  let x_58 : vec3<f32> = u_xlat9;
  u_xlat9 = ((x_58 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_65 : vec3<f32> = u_xlat9;
  u_xlat9 = max(x_65, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_79 : i32 = x_75.x_ManualTex2SRGB;
  if ((x_79 != 0i)) {
    let x_85 : vec3<f32> = u_xlat9;
    x_82 = x_85;
  } else {
    let x_87 : vec4<f32> = u_xlat1;
    x_82 = vec3<f32>(x_87.x, x_87.y, x_87.z);
  }
  let x_89 : vec3<f32> = x_82;
  let x_90 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_93 : f32 = vs_TEXCOORD2.x;
  let x_97 : f32 = x_75.x_Rect[0i].el;
  u_xlat9.x = (x_93 + -(x_97));
  let x_103 : f32 = x_75.x_Rect[2i].el;
  let x_108 : f32 = u_xlat9.x;
  u_xlat9.x = ((-(x_103) * 0.5f) + x_108);
  let x_114 : f32 = vs_TEXCOORD2.y;
  let x_117 : f32 = x_75.x_Rect[1i].el;
  u_xlat18 = (x_114 + -(x_117));
  let x_122 : f32 = x_75.x_Rect[3i].el;
  let x_125 : f32 = u_xlat18;
  u_xlat9.y = ((-(x_122) * 0.5f) + x_125);
  let x_132 : vec3<f32> = u_xlat9;
  let x_135 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) >= vec4<f32>(x_132.x, x_132.y, x_132.x, x_132.x));
  u_xlatb9 = vec2<bool>(x_135.x, x_135.y);
  let x_142 : bool = u_xlatb9.y;
  u_xlati2 = select(vec3<i32>(3i, 2i, 8i), vec3<i32>(0i, 1i, 2i), vec3<bool>(x_142, x_142, x_142));
  let x_152 : bool = u_xlatb9.x;
  if (x_152) {
    let x_157 : i32 = u_xlati2.x;
    x_153 = x_157;
  } else {
    let x_160 : i32 = u_xlati2.y;
    x_153 = x_160;
  }
  let x_161 : i32 = x_153;
  u_xlati27 = x_161;
  let x_163 : bool = u_xlatb9.x;
  u_xlati2.x = select(4i, 1i, x_163);
  let x_168 : f32 = x_75.x_Rect[0i].el;
  let x_169 : i32 = u_xlati27;
  let x_171 : f32 = x_75.x_CornerRadiuses[x_169].el;
  u_xlat3.y = (x_168 + x_171);
  let x_176 : f32 = x_75.x_Rect[1i].el;
  let x_177 : i32 = u_xlati27;
  let x_179 : f32 = x_75.x_CornerRadiuses[x_177].el;
  u_xlat4.y = (x_176 + x_179);
  let x_183 : f32 = x_75.x_BorderWidths[0i].el;
  let x_185 : f32 = x_75.x_Rect[0i].el;
  u_xlat3.w = (x_183 + x_185);
  let x_190 : f32 = x_75.x_BorderWidths[1i].el;
  let x_192 : f32 = x_75.x_Rect[1i].el;
  u_xlat4.w = (x_190 + x_192);
  let x_197 : f32 = x_75.x_Rect[0i].el;
  let x_199 : f32 = x_75.x_Rect[2i].el;
  u_xlat5.x = (x_197 + x_199);
  let x_203 : f32 = u_xlat5.x;
  let x_204 : i32 = u_xlati27;
  let x_206 : f32 = x_75.x_CornerRadiuses[x_204].el;
  u_xlat5.y = (x_203 + -(x_206));
  let x_211 : f32 = u_xlat5.x;
  let x_213 : f32 = x_75.x_BorderWidths[2i].el;
  u_xlat5.w = (x_211 + -(x_213));
  let x_218 : f32 = x_75.x_Rect[0i].el;
  u_xlat3.x = x_218;
  let x_221 : f32 = x_75.x_BorderWidths[0i].el;
  u_xlat3.z = x_221;
  let x_225 : f32 = x_75.x_BorderWidths[2i].el;
  u_xlat5.z = x_225;
  let x_228 : bool = u_xlatb9.x;
  let x_229 : vec4<f32> = u_xlat3;
  let x_230 : vec4<f32> = u_xlat5;
  u_xlat5 = select(x_230, x_229, vec4<bool>(x_228, x_228, x_228, x_228));
  let x_235 : f32 = x_75.x_Rect[1i].el;
  let x_237 : f32 = x_75.x_Rect[3i].el;
  u_xlat6.x = (x_235 + x_237);
  let x_241 : f32 = u_xlat6.x;
  let x_242 : i32 = u_xlati27;
  let x_244 : f32 = x_75.x_CornerRadiuses[x_242].el;
  u_xlat6.y = (x_241 + -(x_244));
  let x_249 : f32 = u_xlat6.x;
  let x_251 : f32 = x_75.x_BorderWidths[3i].el;
  u_xlat6.w = (x_249 + -(x_251));
  let x_256 : f32 = x_75.x_Rect[1i].el;
  u_xlat4.x = x_256;
  let x_259 : f32 = x_75.x_BorderWidths[1i].el;
  u_xlat4.z = x_259;
  let x_262 : f32 = x_75.x_BorderWidths[3i].el;
  u_xlat6.z = x_262;
  let x_265 : bool = u_xlatb9.y;
  if (x_265) {
    let x_269 : vec4<f32> = u_xlat4;
    x_266 = vec4<f32>(x_269.y, x_269.x, x_269.z, x_269.w);
  } else {
    let x_272 : vec4<f32> = u_xlat6;
    x_266 = vec4<f32>(x_272.y, x_272.x, x_272.z, x_272.w);
  }
  let x_274 : vec4<f32> = x_266;
  u_xlat6 = x_274;
  let x_277 : vec4<f32> = u_xlat5;
  let x_279 : vec4<f32> = vs_TEXCOORD2;
  let x_281 : vec4<bool> = (vec4<f32>(x_277.y, x_277.y, x_277.w, x_277.w) >= vec4<f32>(x_279.x, x_279.x, x_279.x, x_279.x));
  let x_282 : vec2<bool> = vec2<bool>(x_281.x, x_281.z);
  let x_283 : vec3<bool> = u_xlatb11;
  u_xlatb11 = vec3<bool>(x_282.x, x_283.y, x_282.y);
  let x_286 : vec4<f32> = vs_TEXCOORD2;
  let x_288 : vec4<f32> = u_xlat5;
  let x_290 : vec4<bool> = (vec4<f32>(x_286.x, x_286.x, x_286.x, x_286.x) >= vec4<f32>(x_288.y, x_288.w, x_288.y, x_288.y));
  u_xlatb3 = vec2<bool>(x_290.x, x_290.y);
  let x_293 : bool = u_xlatb9.x;
  if (x_293) {
    let x_297 : vec3<bool> = u_xlatb11;
    x_294 = vec2<bool>(x_297.x, x_297.z);
  } else {
    let x_300 : vec2<bool> = u_xlatb3;
    x_294 = x_300;
  }
  let x_301 : vec2<bool> = x_294;
  let x_302 : vec3<bool> = u_xlatb11;
  u_xlatb11 = vec3<bool>(x_301.x, x_302.y, x_301.y);
  let x_304 : vec4<f32> = u_xlat6;
  let x_306 : vec4<f32> = vs_TEXCOORD2;
  let x_308 : vec4<bool> = (vec4<f32>(x_304.x, x_304.w, x_304.x, x_304.x) >= vec4<f32>(x_306.y, x_306.y, x_306.y, x_306.y));
  u_xlatb3 = vec2<bool>(x_308.x, x_308.y);
  let x_311 : vec4<f32> = vs_TEXCOORD2;
  let x_313 : vec4<f32> = u_xlat6;
  let x_315 : vec4<bool> = (vec4<f32>(x_311.y, x_311.y, x_311.y, x_311.y) >= vec4<f32>(x_313.x, x_313.w, x_313.x, x_313.x));
  u_xlatb4 = vec2<bool>(x_315.x, x_315.y);
  let x_318 : bool = u_xlatb9.y;
  if (x_318) {
    let x_322 : vec2<bool> = u_xlatb3;
    x_319 = x_322;
  } else {
    let x_324 : vec2<bool> = u_xlatb4;
    x_319 = x_324;
  }
  let x_325 : vec2<bool> = x_319;
  u_xlatb9 = x_325;
  let x_327 : bool = u_xlatb9.x;
  let x_329 : bool = u_xlatb11.x;
  u_xlatb9.x = (x_327 & x_329);
  let x_334 : f32 = x_75.x_BorderWidths[0i].el;
  let x_336 : f32 = x_75.x_BorderWidths[2i].el;
  u_xlat11 = (x_334 + x_336);
  let x_338 : f32 = u_xlat11;
  let x_341 : f32 = x_75.x_Rect[2i].el;
  u_xlat11 = (-(x_338) + x_341);
  let x_344 : f32 = x_75.x_BorderWidths[1i].el;
  let x_346 : f32 = x_75.x_BorderWidths[3i].el;
  u_xlat3.x = (x_344 + x_346);
  let x_350 : f32 = u_xlat3.x;
  let x_353 : f32 = x_75.x_Rect[3i].el;
  u_xlat3.x = (-(x_350) + x_353);
  let x_358 : f32 = vs_TEXCOORD2.x;
  let x_360 : f32 = u_xlat3.w;
  u_xlatb12 = (x_358 >= x_360);
  let x_362 : f32 = u_xlat11;
  let x_364 : f32 = u_xlat3.w;
  u_xlat11 = (x_362 + x_364);
  let x_366 : f32 = u_xlat11;
  let x_368 : f32 = vs_TEXCOORD2.x;
  u_xlatb11.x = (x_366 >= x_368);
  let x_372 : bool = u_xlatb11.x;
  let x_373 : bool = u_xlatb12;
  u_xlatb11.x = (x_372 & x_373);
  let x_377 : f32 = vs_TEXCOORD2.y;
  let x_379 : f32 = u_xlat4.w;
  u_xlatb12 = (x_377 >= x_379);
  let x_382 : bool = u_xlatb11.x;
  let x_383 : bool = u_xlatb12;
  u_xlatb11.x = (x_382 & x_383);
  let x_387 : f32 = u_xlat3.x;
  let x_389 : f32 = u_xlat4.w;
  u_xlat3.x = (x_387 + x_389);
  let x_393 : f32 = u_xlat3.x;
  let x_395 : f32 = vs_TEXCOORD2.y;
  u_xlatb3.x = (x_393 >= x_395);
  let x_399 : bool = u_xlatb11.x;
  let x_401 : bool = u_xlatb3.x;
  u_xlatb11.x = (x_399 & x_401);
  let x_404 : i32 = u_xlati27;
  let x_408 : vec4<bool> = (vec4<i32>(x_404, x_404, x_404, x_404) == vec4<i32>(0i, 2i, 0i, 0i));
  u_xlatb3 = vec2<bool>(x_408.x, x_408.y);
  let x_411 : bool = u_xlatb3.y;
  let x_413 : bool = u_xlatb3.x;
  u_xlatb3.x = (x_411 | x_413);
  let x_416 : i32 = u_xlati27;
  let x_418 : f32 = x_75.x_CornerRadiuses[x_416].el;
  u_xlatb12 = (0.0f < x_418);
  let x_421 : bool = u_xlatb9.x;
  let x_422 : bool = u_xlatb12;
  u_xlatb12 = (x_421 & x_422);
  let x_426 : f32 = u_xlat5.z;
  u_xlatb21 = (0.0f < x_426);
  let x_429 : bool = u_xlatb21;
  u_xlati30 = select(0i, 1i, x_429);
  let x_432 : f32 = u_xlat6.z;
  u_xlatb4.x = (0.0f < x_432);
  let x_437 : bool = u_xlatb4.x;
  u_xlati13 = select(0i, 1i, x_437);
  let x_440 : i32 = u_xlati2.z;
  let x_441 : i32 = u_xlati13;
  u_xlati13 = (x_440 * x_441);
  let x_443 : i32 = u_xlati30;
  let x_445 : i32 = u_xlati2.x;
  let x_447 : i32 = u_xlati13;
  u_xlati30 = ((x_443 * x_445) + x_447);
  let x_451 : bool = u_xlatb11.z;
  let x_452 : bool = u_xlatb21;
  u_xlatb29 = (x_451 & x_452);
  let x_456 : bool = u_xlatb9.y;
  let x_458 : bool = u_xlatb4.x;
  u_xlatb18 = (x_456 & x_458);
  let x_461 : bool = u_xlatb29;
  u_xlati29 = select(0i, 1i, x_461);
  let x_464 : bool = u_xlatb18;
  u_xlati18 = select(0i, 1i, x_464);
  let x_467 : i32 = u_xlati2.z;
  let x_468 : i32 = u_xlati18;
  u_xlati18 = (x_467 * x_468);
  let x_470 : i32 = u_xlati29;
  let x_472 : i32 = u_xlati2.x;
  let x_474 : i32 = u_xlati18;
  u_xlati18 = ((x_470 * x_472) + x_474);
  let x_477 : bool = u_xlatb11.x;
  let x_478 : i32 = u_xlati18;
  u_xlati18 = select(x_478, 0i, x_477);
  let x_480 : bool = u_xlatb12;
  let x_481 : i32 = u_xlati30;
  let x_482 : i32 = u_xlati18;
  u_xlati18 = select(x_482, x_481, x_480);
  let x_485 : i32 = u_xlati2.z;
  let x_487 : i32 = u_xlati2.x;
  u_xlati29 = (x_485 + x_487);
  let x_490 : bool = u_xlatb3.x;
  u_xlat3.x = select(-1.0f, 1.0f, x_490);
  let x_495 : vec4<f32> = u_xlat5;
  let x_496 : vec2<f32> = vec2<f32>(x_495.w, x_495.y);
  let x_497 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_496.x, x_497.y, x_496.y, x_497.w);
  let x_499 : vec4<f32> = u_xlat6;
  let x_500 : vec2<f32> = vec2<f32>(x_499.w, x_499.x);
  let x_501 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_501.x, x_500.x, x_501.z, x_500.y);
  let x_504 : f32 = u_xlat5.x;
  u_xlat6.x = x_504;
  let x_507 : vec4<f32> = u_xlat7;
  let x_510 : vec4<f32> = u_xlat6;
  let x_512 : vec2<f32> = (-(vec2<f32>(x_507.y, x_507.x)) + vec2<f32>(x_510.y, x_510.x));
  let x_513 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_512.x, x_513.y, x_512.y);
  let x_515 : vec3<f32> = u_xlat12;
  let x_517 : vec4<f32> = u_xlat3;
  let x_519 : vec2<f32> = (vec2<f32>(x_515.x, x_515.z) * vec2<f32>(x_517.x, x_517.x));
  let x_520 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
  let x_523 : vec4<f32> = u_xlat3;
  let x_525 : vec4<f32> = u_xlat3;
  u_xlat30 = dot(vec2<f32>(x_523.x, x_523.y), vec2<f32>(x_525.x, x_525.y));
  let x_528 : f32 = u_xlat30;
  u_xlat30 = inverseSqrt(x_528);
  let x_530 : f32 = u_xlat30;
  let x_532 : vec4<f32> = u_xlat3;
  let x_534 : vec2<f32> = (vec2<f32>(x_530, x_530) * vec2<f32>(x_532.x, x_532.y));
  let x_535 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_534.x, x_534.y, x_535.z, x_535.w);
  let x_537 : vec4<f32> = u_xlat3;
  let x_542 : vec4<f32> = u_xlat6;
  let x_544 : vec2<f32> = ((vec2<f32>(x_537.x, x_537.y) * vec2<f32>(100.0f, 100.0f)) + vec2<f32>(x_542.y, x_542.x));
  let x_545 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_544.x, x_544.y, x_545.z, x_545.w);
  let x_549 : vec4<f32> = u_xlat3;
  let x_552 : vec4<f32> = u_xlat6;
  u_xlat13 = (-(vec2<f32>(x_549.y, x_549.x)) + vec2<f32>(x_552.x, x_552.y));
  let x_555 : vec4<f32> = u_xlat3;
  let x_558 : vec4<f32> = vs_TEXCOORD2;
  let x_560 : vec2<f32> = (-(vec2<f32>(x_555.x, x_555.y)) + vec2<f32>(x_558.y, x_558.x));
  let x_561 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_560.x, x_560.y, x_561.z, x_561.w);
  let x_564 : f32 = u_xlat3.y;
  let x_566 : f32 = u_xlat13.y;
  u_xlat12.x = (x_564 * x_566);
  let x_570 : f32 = u_xlat13.x;
  let x_572 : f32 = u_xlat3.x;
  let x_575 : f32 = u_xlat12.x;
  u_xlat3.x = ((x_570 * x_572) + -(x_575));
  let x_580 : f32 = u_xlat3.x;
  u_xlatb3.x = (x_580 >= 0.0f);
  let x_584 : bool = u_xlatb3.x;
  if (x_584) {
    let x_589 : i32 = u_xlati2.x;
    x_585 = x_589;
  } else {
    let x_592 : i32 = u_xlati2.z;
    x_585 = x_592;
  }
  let x_593 : i32 = x_585;
  u_xlati2.x = x_593;
  let x_596 : i32 = u_xlati18;
  let x_597 : i32 = u_xlati29;
  u_xlatb20 = (x_596 != x_597);
  let x_599 : bool = u_xlatb20;
  if (x_599) {
    let x_603 : i32 = u_xlati18;
    x_600 = x_603;
  } else {
    let x_606 : i32 = u_xlati2.x;
    x_600 = x_606;
  }
  let x_607 : i32 = x_600;
  u_xlati18 = x_607;
  let x_608 : i32 = u_xlati18;
  if ((x_608 == 0i)) {
    let x_613 : vec4<f32> = u_xlat1;
    let x_615 : vec4<f32> = vs_COLOR0;
    u_xlat8 = (x_613 * x_615);
  } else {
    let x_620 : i32 = u_xlati18;
    let x_623 : vec4<bool> = (vec4<i32>(x_620, x_620, x_620, x_620) == vec4<i32>(2i, 0i, 4i, 8i));
    let x_624 : vec3<bool> = vec3<bool>(x_623.x, x_623.z, x_623.w);
    let x_625 : vec4<bool> = u_xlatb2;
    u_xlatb2 = vec4<bool>(x_624.x, x_625.y, x_624.y, x_624.z);
    let x_628 : bool = u_xlatb2.w;
    u_xlati18 = select(0i, 3i, x_628);
    let x_631 : bool = u_xlatb2.z;
    let x_632 : i32 = u_xlati18;
    u_xlati18 = select(x_632, 2i, x_631);
    let x_635 : bool = u_xlatb2.x;
    let x_636 : i32 = u_xlati18;
    u_xlati18 = select(x_636, 1i, x_635);
    let x_638 : vec4<f32> = u_xlat1;
    let x_640 : i32 = u_xlati18;
    let x_643 : vec4<f32> = x_75.x_BorderColors[x_640];
    u_xlat8 = (x_638 * x_643);
  }
  let x_645 : bool = u_xlatb21;
  let x_647 : bool = u_xlatb4.x;
  u_xlatb18 = (x_645 | x_647);
  let x_649 : vec4<f32> = u_xlat7;
  let x_652 : vec4<f32> = vs_TEXCOORD2;
  let x_654 : vec2<f32> = (-(vec2<f32>(x_649.z, x_649.w)) + vec2<f32>(x_652.x, x_652.y));
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
  let x_658 : vec4<f32> = u_xlat1;
  let x_660 : vec4<f32> = u_xlat1;
  u_xlat28 = dot(vec2<f32>(x_658.x, x_658.y), vec2<f32>(x_660.x, x_660.y));
  let x_663 : f32 = u_xlat28;
  u_xlat28 = sqrt(x_663);
  let x_665 : f32 = u_xlat28;
  let x_666 : i32 = u_xlati27;
  let x_668 : f32 = x_75.x_CornerRadiuses[x_666].el;
  u_xlat28 = (x_665 + -(x_668));
  let x_671 : f32 = u_xlat28;
  let x_673 : f32 = u_xlat0.x;
  u_xlat28 = ((x_671 * x_673) + 0.5f);
  let x_676 : f32 = u_xlat28;
  u_xlat28 = clamp(x_676, 0.0f, 1.0f);
  let x_678 : bool = u_xlatb18;
  let x_679 : f32 = u_xlat28;
  u_xlat28 = select(0.0f, x_679, x_678);
  let x_683 : f32 = u_xlat5.z;
  let x_685 : i32 = u_xlati27;
  let x_687 : f32 = x_75.x_CornerRadiuses[x_685].el;
  u_xlat2 = (-(x_683) + x_687);
  let x_691 : f32 = u_xlat6.z;
  let x_693 : i32 = u_xlati27;
  let x_695 : f32 = x_75.x_CornerRadiuses[x_693].el;
  u_xlat27 = (-(x_691) + x_695);
  let x_698 : f32 = u_xlat2;
  let x_699 : f32 = u_xlat27;
  u_xlat20 = (x_698 / x_699);
  let x_702 : f32 = u_xlat1.y;
  let x_703 : f32 = u_xlat20;
  u_xlat1.z = (x_702 * x_703);
  let x_706 : vec4<f32> = u_xlat1;
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec2<f32>(x_706.x, x_706.z), vec2<f32>(x_708.x, x_708.z));
  let x_713 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_713);
  let x_716 : f32 = u_xlat2;
  let x_719 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_716) + x_719);
  let x_723 : f32 = u_xlat1.x;
  let x_725 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_723 * x_725) + 0.5f);
  let x_730 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_730, 0.0f, 1.0f);
  let x_734 : f32 = u_xlat2;
  u_xlatb1 = (0.0f < x_734);
  let x_737 : f32 = u_xlat27;
  u_xlatb27 = (0.0f < x_737);
  let x_739 : bool = u_xlatb27;
  let x_740 : bool = u_xlatb1;
  u_xlatb27 = (x_739 & x_740);
  let x_742 : bool = u_xlatb27;
  if (x_742) {
    let x_747 : f32 = u_xlat0.x;
    x_743 = x_747;
  } else {
    x_743 = 1.0f;
  }
  let x_749 : f32 = x_743;
  u_xlat0.x = x_749;
  let x_751 : bool = u_xlatb18;
  if (x_751) {
    let x_756 : f32 = u_xlat0.x;
    x_752 = x_756;
  } else {
    x_752 = 0.0f;
  }
  let x_758 : f32 = x_752;
  u_xlat0.x = x_758;
  let x_760 : f32 = u_xlat28;
  u_xlatb18 = (x_760 == 0.0f);
  let x_762 : f32 = u_xlat28;
  u_xlat27 = (-(x_762) + 1.0f);
  let x_765 : bool = u_xlatb18;
  if (x_765) {
    let x_770 : f32 = u_xlat0.x;
    x_766 = x_770;
  } else {
    let x_772 : f32 = u_xlat27;
    x_766 = x_772;
  }
  let x_773 : f32 = x_766;
  u_xlat0.x = x_773;
  let x_776 : bool = u_xlatb9.x;
  if (x_776) {
    let x_781 : f32 = u_xlat0.x;
    x_777 = x_781;
  } else {
    x_777 = 1.0f;
  }
  let x_783 : f32 = x_777;
  u_xlat0.x = x_783;
  let x_786 : f32 = u_xlat0.x;
  let x_788 : f32 = u_xlat8.w;
  u_xlat18 = (x_786 * x_788);
  let x_791 : bool = u_xlatb11.x;
  u_xlat27 = select(1.0f, 0.0f, x_791);
  let x_794 : bool = u_xlatb9.x;
  let x_795 : f32 = u_xlat27;
  u_xlat9.x = select(x_795, 1.0f, x_794);
  let x_799 : f32 = u_xlat9.x;
  let x_800 : f32 = u_xlat18;
  u_xlat18 = (x_799 * x_800);
  let x_808 : vec2<f32> = vs_TEXCOORD1;
  let x_809 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_808);
  u_xlat27 = x_809.w;
  let x_813 : f32 = u_xlat27;
  let x_814 : f32 = u_xlat18;
  SV_Target0.w = (x_813 * x_814);
  let x_819 : i32 = x_75.x_SrcBlend;
  u_xlatb18 = (x_819 != 5i);
  let x_822 : f32 = u_xlat9.x;
  let x_824 : f32 = u_xlat0.x;
  u_xlat0.x = (x_822 * x_824);
  let x_827 : f32 = u_xlat27;
  let x_829 : f32 = u_xlat0.x;
  u_xlat0.x = (x_827 * x_829);
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec4<f32> = u_xlat8;
  let x_836 : vec3<f32> = (vec3<f32>(x_832.x, x_832.x, x_832.x) * vec3<f32>(x_834.x, x_834.y, x_834.z));
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_836.z);
  let x_839 : bool = u_xlatb18;
  if (x_839) {
    let x_843 : vec4<f32> = u_xlat0;
    x_840 = vec3<f32>(x_843.x, x_843.y, x_843.w);
  } else {
    let x_846 : vec4<f32> = u_xlat8;
    x_840 = vec3<f32>(x_846.x, x_846.y, x_846.z);
  }
  let x_848 : vec3<f32> = x_840;
  let x_849 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

