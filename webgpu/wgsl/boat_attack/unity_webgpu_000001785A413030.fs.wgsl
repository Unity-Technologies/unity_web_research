struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_1 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_LinearClamp : sampler;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat12 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb7 : bool;
  var u_xlat13 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat19 : f32;
  var u_xlat8 : f32;
  var u_xlat14 : f32;
  var u_xlat20 : f32;
  var u_xlatb3 : vec3<bool>;
  var u_xlatb1 : vec3<bool>;
  var x_224 : f32;
  var u_xlat4 : vec2<f32>;
  var u_xlat5 : f32;
  var u_xlat16 : f32;
  var u_xlat22 : f32;
  var u_xlatb11 : bool;
  var x_448 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb4 : bool;
  var u_xlatb0 : bool;
  var x_629 : f32;
  var u_xlatb18 : bool;
  var hlslcc_movcTemp : vec3<f32>;
  var x_876 : f32;
  var x_888 : f32;
  var x_900 : f32;
  var u_xlat18 : f32;
  var x_1063 : f32;
  var x_1075 : f32;
  var x_1087 : f32;
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
  u_xlat12 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb7 = (0.0f < x_81);
  let x_83 : bool = u_xlatb7;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat13 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat13.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat13.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat13.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat13.y;
    u_xlat19 = (1.0f / x_113);
    let x_116 : f32 = u_xlat13.x;
    let x_117 : f32 = u_xlat19;
    u_xlat13.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat13;
    let x_127 : vec2<f32> = u_xlat12;
    u_xlat13 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat8 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat14 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat14;
    u_xlat14 = (1.0f / x_156);
    let x_158 : f32 = u_xlat14;
    let x_159 : f32 = u_xlat8;
    u_xlat8 = (x_158 * x_159);
    let x_161 : f32 = u_xlat8;
    let x_162 : f32 = u_xlat8;
    u_xlat14 = (x_161 * x_162);
    let x_165 : f32 = u_xlat14;
    u_xlat20 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat14;
    let x_171 : f32 = u_xlat20;
    u_xlat20 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat14;
    let x_176 : f32 = u_xlat20;
    u_xlat20 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat14;
    let x_181 : f32 = u_xlat20;
    u_xlat14 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat14;
    let x_186 : f32 = u_xlat8;
    u_xlat20 = (x_185 * x_186);
    let x_192 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_192));
    let x_196 : f32 = u_xlat20;
    u_xlat20 = ((x_196 * -2.0f) + 1.570796371f);
    let x_202 : bool = u_xlatb3.x;
    let x_203 : f32 = u_xlat20;
    u_xlat20 = select(0.0f, x_203, x_202);
    let x_205 : f32 = u_xlat8;
    let x_206 : f32 = u_xlat14;
    let x_208 : f32 = u_xlat20;
    u_xlat8 = ((x_205 * x_206) + x_208);
    let x_211 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_211, 1.0f);
    let x_216 : f32 = u_xlat1.x;
    let x_218 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_216 < -(x_218));
    let x_223 : bool = u_xlatb1.x;
    if (x_223) {
      let x_227 : f32 = u_xlat8;
      x_224 = -(x_227);
    } else {
      let x_230 : f32 = u_xlat8;
      x_224 = x_230;
    }
    let x_231 : f32 = x_224;
    u_xlat1.x = x_231;
    let x_234 : f32 = u_xlat2.x;
    let x_236 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec4<f32> = u_xlat0;
    let x_242 : vec3<f32> = u_xlat1;
    let x_245 : vec2<f32> = u_xlat12;
    u_xlat13 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + x_245);
  }
  let x_247 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_247.x, x_247.y, x_247.x, x_247.y) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(-1.0f, -1.0f, -1.0f, -1.0f));
  let x_254 : vec4<f32> = u_xlat0;
  let x_256 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_254.z, x_254.w), vec2<f32>(x_256.z, x_256.w));
  let x_260 : vec4<f32> = u_xlat0;
  let x_261 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_260 * vec4<f32>(x_261.x, x_261.x, x_261.x, x_261.x));
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : f32 = x_25.x_Chroma_Params;
  u_xlat0 = (x_264 * vec4<f32>(x_267, x_267, x_267, x_267));
  let x_280 : vec2<f32> = u_xlat13;
  let x_283 : f32 = x_25.x_GlobalMipBias.x;
  let x_284 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_280, x_283);
  u_xlat2.x = x_284.x;
  let x_287 : vec4<f32> = u_xlat0;
  let x_292 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((x_287 * vec4<f32>(-0.333333343f, -0.333333343f, -0.666666687f, -0.666666687f)) + vec4<f32>(x_292.x, x_292.y, x_292.x, x_292.y));
  let x_295 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_295 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_298 : vec4<f32> = u_xlat0;
  let x_300 : vec4<f32> = x_25.x_Distortion_Params2;
  u_xlat3 = ((x_298 * vec4<f32>(x_300.z, x_300.z, x_300.z, x_300.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_305 : vec4<f32> = u_xlat0;
  let x_307 : vec4<f32> = x_25.x_Distortion_Params2;
  let x_311 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = ((x_305 * vec4<f32>(x_307.z, x_307.z, x_307.z, x_307.z)) + -(vec4<f32>(x_311.x, x_311.y, x_311.x, x_311.y)));
  let x_315 : vec4<f32> = u_xlat0;
  let x_317 : vec4<f32> = x_25.x_Distortion_Params1;
  u_xlat0 = (x_315 * vec4<f32>(x_317.z, x_317.w, x_317.z, x_317.w));
  let x_320 : vec4<f32> = u_xlat0;
  let x_322 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_320.x, x_320.y), vec2<f32>(x_322.x, x_322.y));
  let x_327 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_327);
  let x_330 : bool = u_xlatb7;
  if (x_330) {
    let x_334 : vec3<f32> = u_xlat1;
    let x_337 : vec4<f32> = x_25.x_Distortion_Params2;
    u_xlat4 = (vec2<f32>(x_334.x, x_334.x) * vec2<f32>(x_337.x, x_337.y));
    let x_342 : f32 = u_xlat4.x;
    u_xlat5 = cos(x_342);
    let x_345 : f32 = u_xlat4.x;
    u_xlat4.x = sin(x_345);
    let x_349 : f32 = u_xlat4.x;
    let x_350 : f32 = u_xlat5;
    u_xlat20 = (x_349 / x_350);
    let x_353 : f32 = u_xlat4.y;
    u_xlat4.x = (1.0f / x_353);
    let x_356 : f32 = u_xlat20;
    let x_358 : f32 = u_xlat4.x;
    u_xlat20 = ((x_356 * x_358) + -1.0f);
    let x_361 : vec4<f32> = u_xlat0;
    let x_363 : f32 = u_xlat20;
    let x_366 : vec4<f32> = u_xlat3;
    u_xlat4 = ((vec2<f32>(x_361.x, x_361.y) * vec2<f32>(x_363, x_363)) + vec2<f32>(x_366.x, x_366.y));
  } else {
    let x_371 : f32 = u_xlat1.x;
    u_xlat20 = (1.0f / x_371);
    let x_373 : f32 = u_xlat20;
    let x_375 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat20 = (x_373 * x_375);
    let x_378 : f32 = u_xlat1.x;
    let x_380 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_378 * x_380);
    let x_385 : f32 = u_xlat1.x;
    u_xlat16 = min(abs(x_385), 1.0f);
    let x_390 : f32 = u_xlat1.x;
    u_xlat22 = max(abs(x_390), 1.0f);
    let x_393 : f32 = u_xlat22;
    u_xlat22 = (1.0f / x_393);
    let x_395 : f32 = u_xlat22;
    let x_396 : f32 = u_xlat16;
    u_xlat16 = (x_395 * x_396);
    let x_398 : f32 = u_xlat16;
    let x_399 : f32 = u_xlat16;
    u_xlat22 = (x_398 * x_399);
    let x_401 : f32 = u_xlat22;
    u_xlat5 = ((x_401 * 0.0208351f) + -0.085133001f);
    let x_404 : f32 = u_xlat22;
    let x_405 : f32 = u_xlat5;
    u_xlat5 = ((x_404 * x_405) + 0.180141002f);
    let x_408 : f32 = u_xlat22;
    let x_409 : f32 = u_xlat5;
    u_xlat5 = ((x_408 * x_409) + -0.330299497f);
    let x_412 : f32 = u_xlat22;
    let x_413 : f32 = u_xlat5;
    u_xlat22 = ((x_412 * x_413) + 0.999866009f);
    let x_416 : f32 = u_xlat22;
    let x_417 : f32 = u_xlat16;
    u_xlat5 = (x_416 * x_417);
    let x_421 : f32 = u_xlat1.x;
    u_xlatb11 = (1.0f < abs(x_421));
    let x_424 : f32 = u_xlat5;
    u_xlat5 = ((x_424 * -2.0f) + 1.570796371f);
    let x_427 : bool = u_xlatb11;
    let x_428 : f32 = u_xlat5;
    u_xlat5 = select(0.0f, x_428, x_427);
    let x_430 : f32 = u_xlat16;
    let x_431 : f32 = u_xlat22;
    let x_433 : f32 = u_xlat5;
    u_xlat16 = ((x_430 * x_431) + x_433);
    let x_436 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_436, 1.0f);
    let x_440 : f32 = u_xlat1.x;
    let x_442 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_440 < -(x_442));
    let x_447 : bool = u_xlatb1.x;
    if (x_447) {
      let x_451 : f32 = u_xlat16;
      x_448 = -(x_451);
    } else {
      let x_454 : f32 = u_xlat16;
      x_448 = x_454;
    }
    let x_455 : f32 = x_448;
    u_xlat1.x = x_455;
    let x_457 : f32 = u_xlat20;
    let x_459 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_457 * x_459) + -1.0f);
    let x_463 : vec4<f32> = u_xlat0;
    let x_465 : vec3<f32> = u_xlat1;
    let x_468 : vec4<f32> = u_xlat3;
    u_xlat4 = ((vec2<f32>(x_463.x, x_463.y) * vec2<f32>(x_465.x, x_465.x)) + vec2<f32>(x_468.x, x_468.y));
  }
  let x_474 : vec2<f32> = u_xlat4;
  let x_476 : f32 = x_25.x_GlobalMipBias.x;
  let x_477 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_474, x_476);
  u_xlat2.y = x_477.y;
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_480.z, x_480.w), vec2<f32>(x_482.z, x_482.w));
  let x_487 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_487);
  let x_490 : bool = u_xlatb7;
  if (x_490) {
    let x_493 : vec4<f32> = u_xlat0;
    let x_496 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_498 : vec2<f32> = (vec2<f32>(x_493.x, x_493.x) * vec2<f32>(x_496.x, x_496.y));
    let x_499 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_498.x, x_498.y, x_499.z);
    let x_502 : f32 = u_xlat1.x;
    u_xlat3.x = cos(x_502);
    let x_506 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_506);
    let x_511 : f32 = u_xlat1.x;
    let x_513 : f32 = u_xlat3.x;
    u_xlat6.x = (x_511 / x_513);
    let x_517 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_517);
    let x_521 : f32 = u_xlat6.x;
    let x_523 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_521 * x_523) + -1.0f);
    let x_527 : vec4<f32> = u_xlat0;
    let x_529 : vec3<f32> = u_xlat6;
    let x_532 : vec4<f32> = u_xlat3;
    let x_534 : vec2<f32> = ((vec2<f32>(x_527.z, x_527.w) * vec2<f32>(x_529.x, x_529.x)) + vec2<f32>(x_532.z, x_532.w));
    let x_535 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_534.x, x_534.y, x_535.z);
  } else {
    let x_539 : f32 = u_xlat0.x;
    u_xlat6.x = (1.0f / x_539);
    let x_543 : f32 = u_xlat6.x;
    let x_545 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat6.x = (x_543 * x_545);
    let x_549 : f32 = u_xlat0.x;
    let x_551 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat0.x = (x_549 * x_551);
    let x_555 : f32 = u_xlat0.x;
    u_xlat20 = min(abs(x_555), 1.0f);
    let x_559 : f32 = u_xlat0.x;
    u_xlat3.x = max(abs(x_559), 1.0f);
    let x_564 : f32 = u_xlat3.x;
    u_xlat3.x = (1.0f / x_564);
    let x_567 : f32 = u_xlat20;
    let x_569 : f32 = u_xlat3.x;
    u_xlat20 = (x_567 * x_569);
    let x_571 : f32 = u_xlat20;
    let x_572 : f32 = u_xlat20;
    u_xlat3.x = (x_571 * x_572);
    let x_577 : f32 = u_xlat3.x;
    u_xlat9 = ((x_577 * 0.0208351f) + -0.085133001f);
    let x_581 : f32 = u_xlat3.x;
    let x_582 : f32 = u_xlat9;
    u_xlat9 = ((x_581 * x_582) + 0.180141002f);
    let x_586 : f32 = u_xlat3.x;
    let x_587 : f32 = u_xlat9;
    u_xlat9 = ((x_586 * x_587) + -0.330299497f);
    let x_591 : f32 = u_xlat3.x;
    let x_592 : f32 = u_xlat9;
    u_xlat3.x = ((x_591 * x_592) + 0.999866009f);
    let x_596 : f32 = u_xlat20;
    let x_598 : f32 = u_xlat3.x;
    u_xlat9 = (x_596 * x_598);
    let x_602 : f32 = u_xlat0.x;
    u_xlatb4 = (1.0f < abs(x_602));
    let x_605 : f32 = u_xlat9;
    u_xlat9 = ((x_605 * -2.0f) + 1.570796371f);
    let x_608 : bool = u_xlatb4;
    let x_609 : f32 = u_xlat9;
    u_xlat9 = select(0.0f, x_609, x_608);
    let x_611 : f32 = u_xlat20;
    let x_613 : f32 = u_xlat3.x;
    let x_615 : f32 = u_xlat9;
    u_xlat20 = ((x_611 * x_613) + x_615);
    let x_618 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_618, 1.0f);
    let x_623 : f32 = u_xlat0.x;
    let x_625 : f32 = u_xlat0.x;
    u_xlatb0 = (x_623 < -(x_625));
    let x_628 : bool = u_xlatb0;
    if (x_628) {
      let x_632 : f32 = u_xlat20;
      x_629 = -(x_632);
    } else {
      let x_635 : f32 = u_xlat20;
      x_629 = x_635;
    }
    let x_636 : f32 = x_629;
    u_xlat0.x = x_636;
    let x_639 : f32 = u_xlat6.x;
    let x_641 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_639 * x_641) + -1.0f);
    let x_645 : vec4<f32> = u_xlat0;
    let x_647 : vec4<f32> = u_xlat0;
    let x_650 : vec4<f32> = u_xlat3;
    let x_652 : vec2<f32> = ((vec2<f32>(x_645.z, x_645.w) * vec2<f32>(x_647.x, x_647.x)) + vec2<f32>(x_650.z, x_650.w));
    let x_653 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_652.x, x_652.y, x_653.z);
  }
  let x_658 : vec3<f32> = u_xlat1;
  let x_661 : f32 = x_25.x_GlobalMipBias.x;
  let x_662 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_658.x, x_658.y), x_661);
  u_xlat2.z = x_662.z;
  let x_668 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_668);
  let x_670 : bool = u_xlatb0;
  if (x_670) {
    let x_673 : vec2<f32> = u_xlat13;
    let x_675 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_678 : vec2<f32> = (x_673 + -(vec2<f32>(x_675.x, x_675.y)));
    let x_679 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
    let x_681 : vec4<f32> = u_xlat0;
    let x_685 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_687 : vec2<f32> = (abs(vec2<f32>(x_681.x, x_681.y)) * vec2<f32>(x_685.z, x_685.z));
    let x_688 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_688.x, x_687.x, x_687.y, x_688.w);
    let x_691 : f32 = u_xlat0.y;
    let x_694 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat0.x = (x_691 * x_694);
    let x_697 : vec4<f32> = u_xlat0;
    let x_699 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_697.x, x_697.z), vec2<f32>(x_699.x, x_699.z));
    let x_704 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_704) + 1.0f);
    let x_709 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_709, 0.0f);
    let x_713 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_713);
    let x_717 : f32 = u_xlat0.x;
    let x_719 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat0.x = (x_717 * x_719);
    let x_723 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_723);
    let x_727 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat6 = (-(vec3<f32>(x_727.x, x_727.y, x_727.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_732 : vec4<f32> = u_xlat0;
    let x_734 : vec3<f32> = u_xlat6;
    let x_737 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_739 : vec3<f32> = ((vec3<f32>(x_732.x, x_732.x, x_732.x) * x_734) + vec3<f32>(x_737.x, x_737.y, x_737.z));
    let x_740 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
    let x_742 : vec4<f32> = u_xlat0;
    let x_744 : vec4<f32> = u_xlat2;
    let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_747 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  }
  let x_749 : vec4<f32> = u_xlat2;
  let x_753 : vec4<f32> = x_25.x_Lut_Params;
  let x_755 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_753.w, x_753.w, x_753.w));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_763 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_771 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec3<f32> = u_xlat1;
  let x_774 : vec4<f32> = u_xlat2;
  let x_779 : vec3<f32> = ((x_773 * vec3<f32>(x_774.x, x_774.y, x_774.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_780 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
  let x_782 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = ((vec3<f32>(x_782.x, x_782.y, x_782.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec3<f32> = u_xlat1;
  let x_791 : vec4<f32> = u_xlat0;
  let x_796 : vec3<f32> = ((x_790 * vec3<f32>(x_791.x, x_791.y, x_791.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat2;
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) / vec3<f32>(x_801.x, x_801.y, x_801.z));
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_806 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = (vec3<f32>(x_806.x, x_806.y, x_806.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat0;
  let x_822 : vec3<f32> = clamp(vec3<f32>(x_818.x, x_818.y, x_818.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_823 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_828 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_828);
  let x_830 : bool = u_xlatb18;
  if (x_830) {
    let x_833 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_838 : vec4<f32> = u_xlat0;
    let x_840 : vec3<f32> = log2(vec3<f32>(x_838.x, x_838.y, x_838.z));
    let x_841 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
    let x_843 : vec4<f32> = u_xlat2;
    let x_847 : vec3<f32> = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_848 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
    let x_850 : vec4<f32> = u_xlat2;
    let x_852 : vec3<f32> = exp2(vec3<f32>(x_850.x, x_850.y, x_850.z));
    let x_853 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
    let x_855 : vec4<f32> = u_xlat2;
    let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_863 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_867 : vec4<f32> = u_xlat0;
    let x_870 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_867.x, x_867.y, x_867.z, x_867.x));
    u_xlatb3 = vec3<bool>(x_870.x, x_870.y, x_870.z);
    let x_873 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_873;
    let x_875 : bool = u_xlatb3.x;
    if (x_875) {
      let x_880 : f32 = u_xlat1.x;
      x_876 = x_880;
    } else {
      let x_883 : f32 = u_xlat2.x;
      x_876 = x_883;
    }
    let x_884 : f32 = x_876;
    hlslcc_movcTemp.x = x_884;
    let x_887 : bool = u_xlatb3.y;
    if (x_887) {
      let x_892 : f32 = u_xlat1.y;
      x_888 = x_892;
    } else {
      let x_895 : f32 = u_xlat2.y;
      x_888 = x_895;
    }
    let x_896 : f32 = x_888;
    hlslcc_movcTemp.y = x_896;
    let x_899 : bool = u_xlatb3.z;
    if (x_899) {
      let x_904 : f32 = u_xlat1.z;
      x_900 = x_904;
    } else {
      let x_907 : f32 = u_xlat2.z;
      x_900 = x_907;
    }
    let x_908 : f32 = x_900;
    hlslcc_movcTemp.z = x_908;
    let x_910 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_910;
    let x_911 : vec3<f32> = u_xlat1;
    let x_914 : vec4<f32> = x_25.x_UserLut_Params;
    let x_916 : vec3<f32> = (vec3<f32>(x_911.z, x_911.x, x_911.y) * vec3<f32>(x_914.z, x_914.z, x_914.z));
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
    let x_921 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_921);
    let x_924 : vec4<f32> = x_25.x_UserLut_Params;
    let x_926 : vec2<f32> = (vec2<f32>(x_924.x, x_924.y) * vec2<f32>(0.5f, 0.5f));
    let x_927 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_926.x, x_927.y, x_927.z, x_926.y);
    let x_929 : vec4<f32> = u_xlat2;
    let x_932 : vec4<f32> = x_25.x_UserLut_Params;
    let x_935 : vec4<f32> = u_xlat2;
    let x_937 : vec2<f32> = ((vec2<f32>(x_929.y, x_929.z) * vec2<f32>(x_932.x, x_932.y)) + vec2<f32>(x_935.x, x_935.w));
    let x_938 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_938.x, x_937.x, x_937.y, x_938.w);
    let x_940 : f32 = u_xlat18;
    let x_942 : f32 = x_25.x_UserLut_Params.y;
    let x_945 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_940 * x_942) + x_945);
    let x_952 : vec4<f32> = u_xlat2;
    let x_954 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_952.x, x_952.z), 0.0f);
    let x_955 : vec3<f32> = vec3<f32>(x_954.x, x_954.y, x_954.z);
    let x_956 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
    let x_959 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_959;
    u_xlat4.y = 0.0f;
    let x_962 : vec4<f32> = u_xlat2;
    let x_964 : vec2<f32> = u_xlat4;
    let x_965 : vec2<f32> = (vec2<f32>(x_962.x, x_962.z) + x_964);
    let x_966 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
    let x_971 : vec4<f32> = u_xlat2;
    let x_973 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_971.x, x_971.y), 0.0f);
    let x_974 : vec3<f32> = vec3<f32>(x_973.x, x_973.y, x_973.z);
    let x_975 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    let x_978 : f32 = u_xlat1.z;
    let x_980 : f32 = x_25.x_UserLut_Params.z;
    let x_982 : f32 = u_xlat18;
    u_xlat18 = ((x_978 * x_980) + -(x_982));
    let x_985 : vec4<f32> = u_xlat3;
    let x_988 : vec4<f32> = u_xlat2;
    let x_990 : vec3<f32> = (-(vec3<f32>(x_985.x, x_985.y, x_985.z)) + vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
    let x_993 : f32 = u_xlat18;
    let x_995 : vec4<f32> = u_xlat2;
    let x_998 : vec4<f32> = u_xlat3;
    let x_1000 : vec3<f32> = ((vec3<f32>(x_993, x_993, x_993) * vec3<f32>(x_995.x, x_995.y, x_995.z)) + vec3<f32>(x_998.x, x_998.y, x_998.z));
    let x_1001 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec3<f32> = u_xlat1;
    let x_1005 : vec4<f32> = u_xlat2;
    let x_1007 : vec3<f32> = (-(x_1003) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
    let x_1008 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
    let x_1011 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1013 : vec4<f32> = u_xlat2;
    let x_1016 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1011.w, x_1011.w, x_1011.w) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z)) + x_1016);
    let x_1018 : vec3<f32> = u_xlat1;
    let x_1021 : vec3<f32> = (x_1018 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1022 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
    let x_1024 : vec3<f32> = u_xlat1;
    let x_1027 : vec3<f32> = (x_1024 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1028 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1030 : vec4<f32> = u_xlat3;
    let x_1034 : vec3<f32> = (vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1035 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
    let x_1037 : vec4<f32> = u_xlat3;
    let x_1040 : vec3<f32> = log2(abs(vec3<f32>(x_1037.x, x_1037.y, x_1037.z)));
    let x_1041 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
    let x_1043 : vec4<f32> = u_xlat3;
    let x_1047 : vec3<f32> = (vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1048 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
    let x_1050 : vec4<f32> = u_xlat3;
    let x_1052 : vec3<f32> = exp2(vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
    let x_1053 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
    let x_1057 : vec3<f32> = u_xlat1;
    let x_1059 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1057.x));
    u_xlatb1 = vec3<bool>(x_1059.x, x_1059.y, x_1059.z);
    let x_1062 : bool = u_xlatb1.x;
    if (x_1062) {
      let x_1067 : f32 = u_xlat2.x;
      x_1063 = x_1067;
    } else {
      let x_1070 : f32 = u_xlat3.x;
      x_1063 = x_1070;
    }
    let x_1071 : f32 = x_1063;
    u_xlat0.x = x_1071;
    let x_1074 : bool = u_xlatb1.y;
    if (x_1074) {
      let x_1079 : f32 = u_xlat2.y;
      x_1075 = x_1079;
    } else {
      let x_1082 : f32 = u_xlat3.y;
      x_1075 = x_1082;
    }
    let x_1083 : f32 = x_1075;
    u_xlat0.y = x_1083;
    let x_1086 : bool = u_xlatb1.z;
    if (x_1086) {
      let x_1091 : f32 = u_xlat2.z;
      x_1087 = x_1091;
    } else {
      let x_1094 : f32 = u_xlat3.z;
      x_1087 = x_1094;
    }
    let x_1095 : f32 = x_1087;
    u_xlat0.z = x_1095;
  }
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1100 : vec4<f32> = x_25.x_Lut_Params;
  let x_1102 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(x_1100.z, x_1100.z, x_1100.z));
  let x_1103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1102.x, x_1102.y, x_1103.z, x_1102.z);
  let x_1106 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1106);
  let x_1109 : vec4<f32> = x_25.x_Lut_Params;
  let x_1111 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(0.5f, 0.5f));
  let x_1112 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1111.x, x_1111.y, x_1112.z);
  let x_1114 : vec4<f32> = u_xlat0;
  let x_1117 : vec4<f32> = x_25.x_Lut_Params;
  let x_1120 : vec3<f32> = u_xlat1;
  let x_1122 : vec2<f32> = ((vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(x_1117.x, x_1117.y)) + vec2<f32>(x_1120.x, x_1120.y));
  let x_1123 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1123.x, x_1122.x, x_1122.y);
  let x_1125 : f32 = u_xlat18;
  let x_1127 : f32 = x_25.x_Lut_Params.y;
  let x_1130 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1125 * x_1127) + x_1130);
  let x_1137 : vec3<f32> = u_xlat1;
  let x_1139 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1137.x, x_1137.z), 0.0f);
  let x_1140 : vec3<f32> = vec3<f32>(x_1139.x, x_1139.y, x_1139.z);
  let x_1141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1144 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1144;
  u_xlat0.y = 0.0f;
  let x_1147 : vec4<f32> = u_xlat0;
  let x_1149 : vec3<f32> = u_xlat1;
  let x_1151 : vec2<f32> = (vec2<f32>(x_1147.x, x_1147.y) + vec2<f32>(x_1149.x, x_1149.z));
  let x_1152 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
  let x_1157 : vec4<f32> = u_xlat0;
  let x_1159 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1157.x, x_1157.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1159.x, x_1159.y, x_1159.z);
  let x_1162 : f32 = u_xlat0.z;
  let x_1164 : f32 = x_25.x_Lut_Params.z;
  let x_1166 : f32 = u_xlat18;
  u_xlat0.x = ((x_1162 * x_1164) + -(x_1166));
  let x_1170 : vec4<f32> = u_xlat2;
  let x_1173 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1170.x, x_1170.y, x_1170.z)) + x_1173);
  let x_1177 : vec4<f32> = u_xlat0;
  let x_1179 : vec3<f32> = u_xlat6;
  let x_1181 : vec4<f32> = u_xlat2;
  let x_1183 : vec3<f32> = ((vec3<f32>(x_1177.x, x_1177.x, x_1177.x) * x_1179) + vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
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

