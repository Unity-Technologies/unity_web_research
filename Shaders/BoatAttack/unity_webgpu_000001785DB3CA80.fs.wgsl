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

@group(0) @binding(1) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(2) var x_UserLut : texture_2d<f32>;

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
  var x_943 : f32;
  var x_955 : f32;
  var x_967 : f32;
  var u_xlat18 : f32;
  var x_1130 : f32;
  var x_1142 : f32;
  var x_1154 : f32;
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
  let x_755 : vec3<f32> = (vec3<f32>(x_749.z, x_749.x, x_749.y) * vec3<f32>(x_753.w, x_753.w, x_753.w));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat0;
  let x_765 : vec3<f32> = ((vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_766 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat0;
  let x_771 : vec3<f32> = max(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_772 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat0;
  let x_776 : vec3<f32> = log2(vec3<f32>(x_774.x, x_774.y, x_774.z));
  let x_777 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat0;
  let x_786 : vec3<f32> = ((vec3<f32>(x_779.x, x_779.y, x_779.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_787 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
  let x_789 : vec4<f32> = u_xlat0;
  let x_793 : vec3<f32> = clamp(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_794 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
  let x_796 : vec4<f32> = u_xlat0;
  let x_799 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_796.x, x_796.y, x_796.z) * vec3<f32>(x_799.z, x_799.z, x_799.z));
  let x_803 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_803);
  let x_807 : vec4<f32> = x_25.x_Lut_Params;
  let x_809 : vec2<f32> = (vec2<f32>(x_807.x, x_807.y) * vec2<f32>(0.5f, 0.5f));
  let x_810 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_809.x, x_809.y, x_810.z);
  let x_812 : vec3<f32> = u_xlat6;
  let x_815 : vec4<f32> = x_25.x_Lut_Params;
  let x_818 : vec3<f32> = u_xlat1;
  let x_820 : vec2<f32> = ((vec2<f32>(x_812.y, x_812.z) * vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(x_818.x, x_818.y));
  let x_821 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_821.x, x_820.x, x_820.y);
  let x_824 : f32 = u_xlat6.x;
  let x_826 : f32 = x_25.x_Lut_Params.y;
  let x_829 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_824 * x_826) + x_829);
  let x_836 : vec3<f32> = u_xlat1;
  let x_838 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_836.x, x_836.z), 0.0f);
  let x_839 : vec3<f32> = vec3<f32>(x_838.x, x_838.y, x_838.z);
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_843 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_843;
  u_xlat3.y = 0.0f;
  let x_846 : vec3<f32> = u_xlat1;
  let x_848 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_846.x, x_846.z) + vec2<f32>(x_848.x, x_848.y));
  let x_854 : vec2<f32> = u_xlat12;
  let x_855 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_854, 0.0f);
  u_xlat1 = vec3<f32>(x_855.x, x_855.y, x_855.z);
  let x_858 : f32 = u_xlat0.x;
  let x_860 : f32 = x_25.x_Lut_Params.z;
  let x_863 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_858 * x_860) + -(x_863));
  let x_867 : vec4<f32> = u_xlat2;
  let x_870 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_867.x, x_867.y, x_867.z)) + x_870);
  let x_872 : vec4<f32> = u_xlat0;
  let x_874 : vec3<f32> = u_xlat6;
  let x_876 : vec4<f32> = u_xlat2;
  let x_878 : vec3<f32> = ((vec3<f32>(x_872.x, x_872.x, x_872.x) * x_874) + vec3<f32>(x_876.x, x_876.y, x_876.z));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_884 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_884);
  let x_886 : bool = u_xlatb18;
  if (x_886) {
    let x_889 : vec4<f32> = u_xlat0;
    let x_890 : vec3<f32> = vec3<f32>(x_889.x, x_889.y, x_889.z);
    let x_891 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_893 : vec4<f32> = u_xlat0;
    let x_897 : vec3<f32> = clamp(vec3<f32>(x_893.x, x_893.y, x_893.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_898 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
    let x_900 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_905 : vec4<f32> = u_xlat0;
    let x_907 : vec3<f32> = log2(vec3<f32>(x_905.x, x_905.y, x_905.z));
    let x_908 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_910 : vec4<f32> = u_xlat2;
    let x_914 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_915 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
    let x_917 : vec4<f32> = u_xlat2;
    let x_919 : vec3<f32> = exp2(vec3<f32>(x_917.x, x_917.y, x_917.z));
    let x_920 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
    let x_922 : vec4<f32> = u_xlat2;
    let x_929 : vec3<f32> = ((vec3<f32>(x_922.x, x_922.y, x_922.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_930 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
    let x_934 : vec4<f32> = u_xlat0;
    let x_937 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_934.x, x_934.y, x_934.z, x_934.x));
    u_xlatb3 = vec3<bool>(x_937.x, x_937.y, x_937.z);
    let x_940 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_940;
    let x_942 : bool = u_xlatb3.x;
    if (x_942) {
      let x_947 : f32 = u_xlat1.x;
      x_943 = x_947;
    } else {
      let x_950 : f32 = u_xlat2.x;
      x_943 = x_950;
    }
    let x_951 : f32 = x_943;
    hlslcc_movcTemp.x = x_951;
    let x_954 : bool = u_xlatb3.y;
    if (x_954) {
      let x_959 : f32 = u_xlat1.y;
      x_955 = x_959;
    } else {
      let x_962 : f32 = u_xlat2.y;
      x_955 = x_962;
    }
    let x_963 : f32 = x_955;
    hlslcc_movcTemp.y = x_963;
    let x_966 : bool = u_xlatb3.z;
    if (x_966) {
      let x_971 : f32 = u_xlat1.z;
      x_967 = x_971;
    } else {
      let x_974 : f32 = u_xlat2.z;
      x_967 = x_974;
    }
    let x_975 : f32 = x_967;
    hlslcc_movcTemp.z = x_975;
    let x_977 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_977;
    let x_978 : vec3<f32> = u_xlat1;
    let x_981 : vec4<f32> = x_25.x_UserLut_Params;
    let x_983 : vec3<f32> = (vec3<f32>(x_978.z, x_978.x, x_978.y) * vec3<f32>(x_981.z, x_981.z, x_981.z));
    let x_984 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
    let x_988 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_988);
    let x_991 : vec4<f32> = x_25.x_UserLut_Params;
    let x_993 : vec2<f32> = (vec2<f32>(x_991.x, x_991.y) * vec2<f32>(0.5f, 0.5f));
    let x_994 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_993.x, x_994.y, x_994.z, x_993.y);
    let x_996 : vec4<f32> = u_xlat2;
    let x_999 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1002 : vec4<f32> = u_xlat2;
    let x_1004 : vec2<f32> = ((vec2<f32>(x_996.y, x_996.z) * vec2<f32>(x_999.x, x_999.y)) + vec2<f32>(x_1002.x, x_1002.w));
    let x_1005 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1005.x, x_1004.x, x_1004.y, x_1005.w);
    let x_1007 : f32 = u_xlat18;
    let x_1009 : f32 = x_25.x_UserLut_Params.y;
    let x_1012 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1007 * x_1009) + x_1012);
    let x_1019 : vec4<f32> = u_xlat2;
    let x_1021 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1019.x, x_1019.z), 0.0f);
    let x_1022 : vec3<f32> = vec3<f32>(x_1021.x, x_1021.y, x_1021.z);
    let x_1023 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
    let x_1026 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1026;
    u_xlat4.y = 0.0f;
    let x_1029 : vec4<f32> = u_xlat2;
    let x_1031 : vec2<f32> = u_xlat4;
    let x_1032 : vec2<f32> = (vec2<f32>(x_1029.x, x_1029.z) + x_1031);
    let x_1033 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1032.x, x_1032.y, x_1033.z, x_1033.w);
    let x_1038 : vec4<f32> = u_xlat2;
    let x_1040 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1038.x, x_1038.y), 0.0f);
    let x_1041 : vec3<f32> = vec3<f32>(x_1040.x, x_1040.y, x_1040.z);
    let x_1042 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
    let x_1045 : f32 = u_xlat1.z;
    let x_1047 : f32 = x_25.x_UserLut_Params.z;
    let x_1049 : f32 = u_xlat18;
    u_xlat18 = ((x_1045 * x_1047) + -(x_1049));
    let x_1052 : vec4<f32> = u_xlat3;
    let x_1055 : vec4<f32> = u_xlat2;
    let x_1057 : vec3<f32> = (-(vec3<f32>(x_1052.x, x_1052.y, x_1052.z)) + vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
    let x_1058 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
    let x_1060 : f32 = u_xlat18;
    let x_1062 : vec4<f32> = u_xlat2;
    let x_1065 : vec4<f32> = u_xlat3;
    let x_1067 : vec3<f32> = ((vec3<f32>(x_1060, x_1060, x_1060) * vec3<f32>(x_1062.x, x_1062.y, x_1062.z)) + vec3<f32>(x_1065.x, x_1065.y, x_1065.z));
    let x_1068 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
    let x_1070 : vec3<f32> = u_xlat1;
    let x_1072 : vec4<f32> = u_xlat2;
    let x_1074 : vec3<f32> = (-(x_1070) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
    let x_1075 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
    let x_1078 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1080 : vec4<f32> = u_xlat2;
    let x_1083 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1078.w, x_1078.w, x_1078.w) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z)) + x_1083);
    let x_1085 : vec3<f32> = u_xlat1;
    let x_1088 : vec3<f32> = (x_1085 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1089 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
    let x_1091 : vec3<f32> = u_xlat1;
    let x_1094 : vec3<f32> = (x_1091 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1095 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1097 : vec4<f32> = u_xlat3;
    let x_1101 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1102 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
    let x_1104 : vec4<f32> = u_xlat3;
    let x_1107 : vec3<f32> = log2(abs(vec3<f32>(x_1104.x, x_1104.y, x_1104.z)));
    let x_1108 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
    let x_1110 : vec4<f32> = u_xlat3;
    let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1115 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
    let x_1117 : vec4<f32> = u_xlat3;
    let x_1119 : vec3<f32> = exp2(vec3<f32>(x_1117.x, x_1117.y, x_1117.z));
    let x_1120 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1124 : vec3<f32> = u_xlat1;
    let x_1126 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.x));
    u_xlatb1 = vec3<bool>(x_1126.x, x_1126.y, x_1126.z);
    let x_1129 : bool = u_xlatb1.x;
    if (x_1129) {
      let x_1134 : f32 = u_xlat2.x;
      x_1130 = x_1134;
    } else {
      let x_1137 : f32 = u_xlat3.x;
      x_1130 = x_1137;
    }
    let x_1138 : f32 = x_1130;
    u_xlat0.x = x_1138;
    let x_1141 : bool = u_xlatb1.y;
    if (x_1141) {
      let x_1146 : f32 = u_xlat2.y;
      x_1142 = x_1146;
    } else {
      let x_1149 : f32 = u_xlat3.y;
      x_1142 = x_1149;
    }
    let x_1150 : f32 = x_1142;
    u_xlat0.y = x_1150;
    let x_1153 : bool = u_xlatb1.z;
    if (x_1153) {
      let x_1158 : f32 = u_xlat2.z;
      x_1154 = x_1158;
    } else {
      let x_1161 : f32 = u_xlat3.z;
      x_1154 = x_1161;
    }
    let x_1162 : f32 = x_1154;
    u_xlat0.z = x_1162;
  }
  let x_1166 : vec4<f32> = u_xlat0;
  let x_1168 : vec3<f32> = sqrt(vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
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

