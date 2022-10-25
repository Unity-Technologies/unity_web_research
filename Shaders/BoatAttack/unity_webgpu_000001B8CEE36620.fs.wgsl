struct strided_arr {
  @size(16)
  el : f32,
}

type Arr = array<strided_arr, 4u>;

type Arr_1 = array<strided_arr, 4u>;

type Arr_2 = array<strided_arr, 4u>;

struct PGlobals {
  x_ManualTex2SRGB : i32,
  x_SrcBlend : i32,
  @size(8)
  padding : u32,
  x_CornerRadiuses : Arr_2,
  x_BorderWidths : Arr_2,
  x_Rect : Arr_2,
  x_SmoothCorners : i32,
}

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

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
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat10 : f32;
  var u_xlatb10 : bool;
  var u_xlat15 : f32;
  var u_xlat11 : f32;
  var u_xlatb11 : bool;
  var u_xlati2 : vec2<i32>;
  var u_xlati16 : i32;
  var x_94 : i32;
  var u_xlat2 : vec4<f32>;
  var x_119 : vec2<f32>;
  var u_xlat13 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var x_159 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat5 : f32;
  var u_xlatb1 : vec2<bool>;
  var u_xlatb15 : bool;
  var x_280 : f32;
  var u_xlatb5 : vec3<bool>;
  var x_309 : f32;
  var x_333 : bool;
  var x_344 : bool;
  var x_360 : f32;
  var x_537 : vec3<f32>;
  var x_565 : vec3<f32>;
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
    let x_98 : i32 = u_xlati2.x;
    x_94 = x_98;
  } else {
    let x_101 : i32 = u_xlati2.y;
    x_94 = x_101;
  }
  let x_102 : i32 = x_94;
  u_xlati16 = x_102;
  let x_103 : f32 = u_xlat15;
  let x_104 : i32 = u_xlati16;
  let x_106 : f32 = x_18.x_CornerRadiuses[x_104].el;
  u_xlat1.y = (x_103 + -(x_106));
  let x_111 : f32 = x_18.x_Rect[0i].el;
  let x_112 : i32 = u_xlati16;
  let x_114 : f32 = x_18.x_CornerRadiuses[x_112].el;
  u_xlat0.y = (x_111 + x_114);
  let x_118 : bool = u_xlatb10;
  if (x_118) {
    let x_122 : vec2<f32> = u_xlat0;
    x_119 = x_122;
  } else {
    let x_124 : vec4<f32> = u_xlat1;
    x_119 = vec2<f32>(x_124.x, x_124.y);
  }
  let x_126 : vec2<f32> = x_119;
  let x_127 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_126.x, x_126.y, x_127.z, x_127.w);
  let x_131 : f32 = x_18.x_BorderWidths[1i].el;
  u_xlat13.x = x_131;
  let x_135 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlat14.x = x_135;
  let x_138 : f32 = x_18.x_Rect[1i].el;
  let x_140 : f32 = x_18.x_Rect[3i].el;
  u_xlat0.x = (x_138 + x_140);
  let x_144 : f32 = u_xlat0.x;
  let x_145 : i32 = u_xlati16;
  let x_147 : f32 = x_18.x_CornerRadiuses[x_145].el;
  u_xlat14.y = (x_144 + -(x_147));
  let x_152 : f32 = x_18.x_Rect[1i].el;
  let x_153 : i32 = u_xlati16;
  let x_155 : f32 = x_18.x_CornerRadiuses[x_153].el;
  u_xlat13.y = (x_152 + x_155);
  let x_158 : bool = u_xlatb11;
  if (x_158) {
    let x_162 : vec2<f32> = u_xlat13;
    x_159 = x_162;
  } else {
    let x_164 : vec2<f32> = u_xlat14;
    x_159 = x_164;
  }
  let x_165 : vec2<f32> = x_159;
  let x_166 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_166.x, x_166.y, x_165.x, x_165.y);
  let x_168 : vec4<f32> = u_xlat2;
  let x_171 : i32 = u_xlati16;
  let x_173 : f32 = x_18.x_CornerRadiuses[x_171].el;
  u_xlat0 = (-(vec2<f32>(x_168.x, x_168.z)) + vec2<f32>(x_173, x_173));
  let x_177 : f32 = u_xlat0.x;
  let x_179 : f32 = u_xlat0.y;
  u_xlat15 = (x_177 / x_179);
  let x_184 : vec4<f32> = u_xlat2;
  let x_187 : vec4<f32> = vs_TEXCOORD2;
  let x_189 : vec2<f32> = (-(vec2<f32>(x_184.y, x_184.w)) + vec2<f32>(x_187.x, x_187.y));
  let x_190 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_189.x, x_189.y, x_190.z);
  let x_192 : f32 = u_xlat15;
  let x_194 : f32 = u_xlat3.y;
  u_xlat3.z = (x_192 * x_194);
  let x_198 : vec3<f32> = u_xlat3;
  let x_200 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(vec2<f32>(x_198.x, x_198.z), vec2<f32>(x_200.x, x_200.z));
  let x_203 : vec3<f32> = u_xlat3;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_203.x, x_203.y), vec2<f32>(x_205.x, x_205.y));
  let x_210 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_210);
  let x_214 : f32 = u_xlat1.x;
  let x_215 : i32 = u_xlati16;
  let x_217 : f32 = x_18.x_CornerRadiuses[x_215].el;
  u_xlat1.x = (x_214 + -(x_217));
  let x_221 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_221);
  let x_224 : f32 = u_xlat0.x;
  let x_226 : f32 = u_xlat15;
  u_xlat15 = (-(x_224) + x_226);
  let x_231 : vec2<f32> = u_xlat0;
  let x_234 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_231.x, x_231.y, x_231.x, x_231.x));
  u_xlatb0 = vec2<bool>(x_234.x, x_234.y);
  let x_237 : bool = u_xlatb0.y;
  let x_239 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_237 & x_239);
  let x_244 : f32 = vs_TEXCOORD2.x;
  u_xlat5 = dpdxCoarse(x_244);
  let x_247 : f32 = u_xlat5;
  u_xlat5 = (1.0f / abs(x_247));
  let x_250 : f32 = u_xlat15;
  let x_251 : f32 = u_xlat5;
  u_xlat15 = ((x_250 * x_251) + 0.5f);
  let x_254 : f32 = u_xlat15;
  u_xlat15 = clamp(x_254, 0.0f, 1.0f);
  let x_257 : f32 = u_xlat1.x;
  let x_258 : f32 = u_xlat5;
  u_xlat5 = ((x_257 * x_258) + 0.5f);
  let x_261 : f32 = u_xlat5;
  u_xlat5 = clamp(x_261, 0.0f, 1.0f);
  let x_264 : bool = u_xlatb0.x;
  let x_265 : f32 = u_xlat15;
  u_xlat0.x = select(1.0f, x_265, x_264);
  let x_269 : vec4<f32> = u_xlat2;
  let x_271 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_269.x, x_269.z, x_269.x, x_269.x));
  u_xlatb1 = vec2<bool>(x_271.x, x_271.y);
  let x_275 : bool = u_xlatb1.y;
  let x_277 : bool = u_xlatb1.x;
  u_xlatb15 = (x_275 | x_277);
  let x_279 : bool = u_xlatb15;
  if (x_279) {
    let x_284 : f32 = u_xlat0.x;
    x_280 = x_284;
  } else {
    x_280 = 0.0f;
  }
  let x_286 : f32 = x_280;
  u_xlat0.x = x_286;
  let x_288 : bool = u_xlatb15;
  let x_289 : f32 = u_xlat5;
  u_xlat5 = select(0.0f, x_289, x_288);
  let x_291 : f32 = u_xlat5;
  u_xlat15 = (-(x_291) + 1.0f);
  let x_297 : f32 = u_xlat5;
  u_xlatb5.x = (x_297 == 0.0f);
  let x_303 : i32 = x_18.x_SmoothCorners;
  let x_305 : f32 = u_xlat15;
  u_xlat15 = select(0.0f, x_305, (x_303 != 0i));
  let x_308 : bool = u_xlatb5.x;
  if (x_308) {
    let x_313 : f32 = u_xlat0.x;
    x_309 = x_313;
  } else {
    let x_315 : f32 = u_xlat15;
    x_309 = x_315;
  }
  let x_316 : f32 = x_309;
  u_xlat0.x = x_316;
  let x_318 : vec4<f32> = u_xlat2;
  let x_320 : vec4<f32> = vs_TEXCOORD2;
  let x_322 : vec4<bool> = (vec4<f32>(x_318.y, x_318.y, x_318.w, x_318.w) >= vec4<f32>(x_320.x, x_320.x, x_320.y, x_320.y));
  let x_323 : vec2<bool> = vec2<bool>(x_322.x, x_322.z);
  let x_324 : vec3<bool> = u_xlatb5;
  u_xlatb5 = vec3<bool>(x_323.x, x_324.y, x_323.y);
  let x_326 : vec4<f32> = vs_TEXCOORD2;
  let x_328 : vec4<f32> = u_xlat2;
  let x_330 : vec4<bool> = (vec4<f32>(x_326.x, x_326.y, x_326.x, x_326.x) >= vec4<f32>(x_328.y, x_328.w, x_328.y, x_328.y));
  u_xlatb1 = vec2<bool>(x_330.x, x_330.y);
  let x_332 : bool = u_xlatb10;
  if (x_332) {
    let x_337 : bool = u_xlatb5.x;
    x_333 = x_337;
  } else {
    let x_340 : bool = u_xlatb1.x;
    x_333 = x_340;
  }
  let x_341 : bool = x_333;
  u_xlatb5.x = x_341;
  let x_343 : bool = u_xlatb11;
  if (x_343) {
    let x_348 : bool = u_xlatb5.z;
    x_344 = x_348;
  } else {
    let x_351 : bool = u_xlatb1.y;
    x_344 = x_351;
  }
  let x_352 : bool = x_344;
  u_xlatb10 = x_352;
  let x_353 : bool = u_xlatb10;
  let x_355 : bool = u_xlatb5.x;
  u_xlatb5.x = (x_353 & x_355);
  let x_359 : bool = u_xlatb5.x;
  if (x_359) {
    let x_364 : f32 = u_xlat0.x;
    x_360 = x_364;
  } else {
    x_360 = 1.0f;
  }
  let x_366 : f32 = x_360;
  u_xlat0.x = x_366;
  let x_369 : f32 = x_18.x_BorderWidths[0i].el;
  let x_371 : f32 = x_18.x_BorderWidths[2i].el;
  u_xlat10 = (x_369 + x_371);
  let x_373 : f32 = u_xlat10;
  let x_376 : f32 = x_18.x_Rect[2i].el;
  u_xlat10 = (-(x_373) + x_376);
  let x_379 : f32 = x_18.x_BorderWidths[0i].el;
  let x_381 : f32 = x_18.x_Rect[0i].el;
  u_xlat15 = (x_379 + x_381);
  let x_383 : f32 = u_xlat10;
  let x_384 : f32 = u_xlat15;
  u_xlat10 = (x_383 + x_384);
  let x_387 : f32 = vs_TEXCOORD2.x;
  let x_388 : f32 = u_xlat15;
  u_xlatb15 = (x_387 >= x_388);
  let x_390 : f32 = u_xlat10;
  let x_392 : f32 = vs_TEXCOORD2.x;
  u_xlatb10 = (x_390 >= x_392);
  let x_394 : bool = u_xlatb10;
  let x_395 : bool = u_xlatb15;
  u_xlatb10 = (x_394 & x_395);
  let x_398 : f32 = x_18.x_BorderWidths[1i].el;
  let x_400 : f32 = x_18.x_Rect[1i].el;
  u_xlat15 = (x_398 + x_400);
  let x_403 : f32 = vs_TEXCOORD2.y;
  let x_404 : f32 = u_xlat15;
  u_xlatb1.x = (x_403 >= x_404);
  let x_407 : bool = u_xlatb10;
  let x_409 : bool = u_xlatb1.x;
  u_xlatb10 = (x_407 & x_409);
  let x_412 : f32 = x_18.x_BorderWidths[1i].el;
  let x_414 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlat1.x = (x_412 + x_414);
  let x_418 : f32 = u_xlat1.x;
  let x_421 : f32 = x_18.x_Rect[3i].el;
  u_xlat1.x = (-(x_418) + x_421);
  let x_424 : f32 = u_xlat15;
  let x_426 : f32 = u_xlat1.x;
  u_xlat15 = (x_424 + x_426);
  let x_428 : f32 = u_xlat15;
  let x_430 : f32 = vs_TEXCOORD2.y;
  u_xlatb15 = (x_428 >= x_430);
  let x_432 : bool = u_xlatb15;
  let x_433 : bool = u_xlatb10;
  u_xlatb10 = (x_432 & x_433);
  let x_435 : bool = u_xlatb10;
  u_xlat10 = select(1.0f, 0.0f, x_435);
  let x_438 : bool = u_xlatb5.x;
  let x_439 : f32 = u_xlat10;
  u_xlat5 = select(x_439, 1.0f, x_438);
  let x_442 : f32 = x_18.x_BorderWidths[0i].el;
  u_xlatb10 = (0.0f < x_442);
  let x_445 : f32 = x_18.x_BorderWidths[1i].el;
  u_xlatb15 = (0.0f < x_445);
  let x_447 : bool = u_xlatb15;
  let x_448 : bool = u_xlatb10;
  u_xlatb10 = (x_447 | x_448);
  let x_451 : f32 = x_18.x_BorderWidths[2i].el;
  u_xlatb15 = (0.0f < x_451);
  let x_453 : bool = u_xlatb15;
  let x_454 : bool = u_xlatb10;
  u_xlatb10 = (x_453 | x_454);
  let x_457 : f32 = x_18.x_BorderWidths[3i].el;
  u_xlatb15 = (0.0f < x_457);
  let x_459 : bool = u_xlatb15;
  let x_460 : bool = u_xlatb10;
  u_xlatb10 = (x_459 | x_460);
  let x_462 : bool = u_xlatb10;
  let x_463 : f32 = u_xlat5;
  u_xlat5 = select(1.0f, x_463, x_462);
  let x_465 : f32 = u_xlat5;
  let x_467 : f32 = u_xlat0.x;
  u_xlat10 = (x_465 * x_467);
  let x_481 : vec2<f32> = vs_TEXCOORD1;
  let x_482 : vec4<f32> = textureSample(x_GUIClipTexture, sampler_GUIClipTexture, x_481);
  u_xlat15 = x_482.w;
  let x_485 : f32 = u_xlat15;
  let x_486 : f32 = u_xlat10;
  u_xlat10 = (x_485 * x_486);
  let x_494 : vec2<f32> = vs_TEXCOORD0;
  let x_495 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_494);
  u_xlat1 = x_495;
  let x_496 : vec4<f32> = u_xlat1;
  let x_499 : vec3<f32> = max(vec3<f32>(x_496.x, x_496.y, x_496.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_500 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
  let x_502 : vec4<f32> = u_xlat2;
  let x_504 : vec3<f32> = log2(vec3<f32>(x_502.x, x_502.y, x_502.z));
  let x_505 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_504.x, x_504.y, x_504.z, x_505.w);
  let x_507 : vec4<f32> = u_xlat2;
  let x_511 : vec3<f32> = (vec3<f32>(x_507.x, x_507.y, x_507.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_511.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat2;
  let x_516 : vec3<f32> = exp2(vec3<f32>(x_514.x, x_514.y, x_514.z));
  let x_517 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
  let x_519 : vec4<f32> = u_xlat2;
  let x_526 : vec3<f32> = ((vec3<f32>(x_519.x, x_519.y, x_519.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
  let x_529 : vec4<f32> = u_xlat2;
  let x_531 : vec3<f32> = max(vec3<f32>(x_529.x, x_529.y, x_529.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_532 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  let x_535 : i32 = x_18.x_ManualTex2SRGB;
  if ((x_535 != 0i)) {
    let x_540 : vec4<f32> = u_xlat2;
    x_537 = vec3<f32>(x_540.x, x_540.y, x_540.z);
  } else {
    let x_543 : vec4<f32> = u_xlat1;
    x_537 = vec3<f32>(x_543.x, x_543.y, x_543.z);
  }
  let x_545 : vec3<f32> = x_537;
  let x_546 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
  let x_548 : vec4<f32> = u_xlat1;
  let x_550 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_548 * x_550);
  let x_552 : f32 = u_xlat10;
  let x_554 : vec4<f32> = u_xlat1;
  let x_556 : vec3<f32> = (vec3<f32>(x_552, x_552, x_552) * vec3<f32>(x_554.x, x_554.y, x_554.z));
  let x_557 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
  let x_560 : i32 = x_18.x_SrcBlend;
  u_xlatb10 = (x_560 != 5i);
  let x_564 : bool = u_xlatb10;
  if (x_564) {
    let x_568 : vec4<f32> = u_xlat2;
    x_565 = vec3<f32>(x_568.x, x_568.y, x_568.z);
  } else {
    let x_571 : vec4<f32> = u_xlat1;
    x_565 = vec3<f32>(x_571.x, x_571.y, x_571.z);
  }
  let x_573 : vec3<f32> = x_565;
  let x_574 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  let x_577 : f32 = u_xlat0.x;
  let x_579 : f32 = u_xlat1.w;
  u_xlat0.x = (x_577 * x_579);
  let x_582 : f32 = u_xlat5;
  let x_584 : f32 = u_xlat0.x;
  u_xlat0.x = (x_582 * x_584);
  let x_587 : f32 = u_xlat15;
  let x_589 : f32 = u_xlat0.x;
  SV_Target0.w = (x_587 * x_589);
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

