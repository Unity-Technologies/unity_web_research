struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Bloom_Params : vec4<f32>,
  x_Bloom_RGBM : f32,
  @size(12)
  padding_1 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

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
  var u_xlat18 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_914 : f32;
  var x_926 : f32;
  var x_938 : f32;
  var x_1100 : f32;
  var x_1112 : f32;
  var x_1124 : f32;
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
  let x_670 : vec2<f32> = u_xlat13;
  let x_672 : f32 = x_25.x_GlobalMipBias.x;
  let x_673 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_670, x_672);
  u_xlat0 = x_673;
  let x_676 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_676);
  let x_680 : bool = u_xlatb1.x;
  if (x_680) {
    let x_683 : vec4<f32> = u_xlat0;
    let x_685 : vec4<f32> = u_xlat0;
    let x_687 : vec3<f32> = (vec3<f32>(x_683.w, x_683.w, x_683.w) * vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat3;
    let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_695 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  }
  let x_697 : vec4<f32> = u_xlat0;
  let x_701 : vec4<f32> = x_25.x_Bloom_Params;
  let x_703 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_701.x, x_701.x, x_701.x));
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_709 : vec4<f32> = x_25.x_Bloom_Params;
  let x_712 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = ((vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_709.y, x_709.z, x_709.w)) + vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_720 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_720);
  let x_722 : bool = u_xlatb18;
  if (x_722) {
    let x_725 : vec2<f32> = u_xlat13;
    let x_727 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_730 : vec2<f32> = (x_725 + -(vec2<f32>(x_727.x, x_727.y)));
    let x_731 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_730.x, x_730.y, x_731.z);
    let x_733 : vec3<f32> = u_xlat1;
    let x_737 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_739 : vec2<f32> = (abs(vec2<f32>(x_733.x, x_733.y)) * vec2<f32>(x_737.z, x_737.z));
    let x_740 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_740.x, x_739.x, x_739.y);
    let x_743 : f32 = u_xlat1.y;
    let x_746 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_743 * x_746);
    let x_750 : vec3<f32> = u_xlat1;
    let x_752 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_750.x, x_750.z), vec2<f32>(x_752.x, x_752.z));
    let x_755 : f32 = u_xlat18;
    u_xlat18 = (-(x_755) + 1.0f);
    let x_758 : f32 = u_xlat18;
    u_xlat18 = max(x_758, 0.0f);
    let x_760 : f32 = u_xlat18;
    u_xlat18 = log2(x_760);
    let x_762 : f32 = u_xlat18;
    let x_764 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat18 = (x_762 * x_764);
    let x_766 : f32 = u_xlat18;
    u_xlat18 = exp2(x_766);
    let x_769 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_769.x, x_769.y, x_769.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_774 : f32 = u_xlat18;
    let x_776 : vec3<f32> = u_xlat1;
    let x_779 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_774, x_774, x_774) * x_776) + vec3<f32>(x_779.x, x_779.y, x_779.z));
    let x_782 : vec4<f32> = u_xlat0;
    let x_784 : vec3<f32> = u_xlat1;
    let x_785 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) * x_784);
    let x_786 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  }
  let x_788 : vec4<f32> = u_xlat0;
  let x_792 : vec4<f32> = x_25.x_Lut_Params;
  let x_794 : vec3<f32> = (vec3<f32>(x_788.x, x_788.y, x_788.z) * vec3<f32>(x_792.w, x_792.w, x_792.w));
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_802 : vec4<f32> = u_xlat0;
  let x_809 : vec3<f32> = ((vec3<f32>(x_802.x, x_802.y, x_802.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_810 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
  let x_812 : vec3<f32> = u_xlat1;
  let x_813 : vec4<f32> = u_xlat2;
  let x_818 : vec3<f32> = ((x_812 * vec3<f32>(x_813.x, x_813.y, x_813.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_819 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_818.x, x_818.y, x_818.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat0;
  let x_826 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec3<f32> = u_xlat1;
  let x_830 : vec4<f32> = u_xlat0;
  let x_835 : vec3<f32> = ((x_829 * vec3<f32>(x_830.x, x_830.y, x_830.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_836 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
  let x_838 : vec4<f32> = u_xlat2;
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec3<f32> = (vec3<f32>(x_838.x, x_838.y, x_838.z) / vec3<f32>(x_840.x, x_840.y, x_840.z));
  let x_843 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_850 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat0;
  let x_854 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_855 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat0;
  let x_861 : vec3<f32> = clamp(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_866 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_866);
  let x_868 : bool = u_xlatb18;
  if (x_868) {
    let x_871 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_871.x, x_871.y, x_871.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_876 : vec4<f32> = u_xlat0;
    let x_878 : vec3<f32> = log2(vec3<f32>(x_876.x, x_876.y, x_876.z));
    let x_879 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
    let x_881 : vec4<f32> = u_xlat2;
    let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_886 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    let x_888 : vec4<f32> = u_xlat2;
    let x_890 : vec3<f32> = exp2(vec3<f32>(x_888.x, x_888.y, x_888.z));
    let x_891 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_893 : vec4<f32> = u_xlat2;
    let x_900 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_901 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
    let x_905 : vec4<f32> = u_xlat0;
    let x_908 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_905.x, x_905.y, x_905.z, x_905.x));
    u_xlatb3 = vec3<bool>(x_908.x, x_908.y, x_908.z);
    let x_911 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_911;
    let x_913 : bool = u_xlatb3.x;
    if (x_913) {
      let x_918 : f32 = u_xlat1.x;
      x_914 = x_918;
    } else {
      let x_921 : f32 = u_xlat2.x;
      x_914 = x_921;
    }
    let x_922 : f32 = x_914;
    hlslcc_movcTemp.x = x_922;
    let x_925 : bool = u_xlatb3.y;
    if (x_925) {
      let x_930 : f32 = u_xlat1.y;
      x_926 = x_930;
    } else {
      let x_933 : f32 = u_xlat2.y;
      x_926 = x_933;
    }
    let x_934 : f32 = x_926;
    hlslcc_movcTemp.y = x_934;
    let x_937 : bool = u_xlatb3.z;
    if (x_937) {
      let x_942 : f32 = u_xlat1.z;
      x_938 = x_942;
    } else {
      let x_945 : f32 = u_xlat2.z;
      x_938 = x_945;
    }
    let x_946 : f32 = x_938;
    hlslcc_movcTemp.z = x_946;
    let x_948 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_948;
    let x_949 : vec3<f32> = u_xlat1;
    let x_952 : vec4<f32> = x_25.x_UserLut_Params;
    let x_954 : vec3<f32> = (vec3<f32>(x_949.z, x_949.x, x_949.y) * vec3<f32>(x_952.z, x_952.z, x_952.z));
    let x_955 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
    let x_958 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_958);
    let x_961 : vec4<f32> = x_25.x_UserLut_Params;
    let x_963 : vec2<f32> = (vec2<f32>(x_961.x, x_961.y) * vec2<f32>(0.5f, 0.5f));
    let x_964 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_963.x, x_964.y, x_964.z, x_963.y);
    let x_966 : vec4<f32> = u_xlat2;
    let x_969 : vec4<f32> = x_25.x_UserLut_Params;
    let x_972 : vec4<f32> = u_xlat2;
    let x_974 : vec2<f32> = ((vec2<f32>(x_966.y, x_966.z) * vec2<f32>(x_969.x, x_969.y)) + vec2<f32>(x_972.x, x_972.w));
    let x_975 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_975.x, x_974.x, x_974.y, x_975.w);
    let x_977 : f32 = u_xlat18;
    let x_979 : f32 = x_25.x_UserLut_Params.y;
    let x_982 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_977 * x_979) + x_982);
    let x_989 : vec4<f32> = u_xlat2;
    let x_991 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_989.x, x_989.z), 0.0f);
    let x_992 : vec3<f32> = vec3<f32>(x_991.x, x_991.y, x_991.z);
    let x_993 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
    let x_996 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_996;
    u_xlat4.y = 0.0f;
    let x_999 : vec4<f32> = u_xlat2;
    let x_1001 : vec2<f32> = u_xlat4;
    let x_1002 : vec2<f32> = (vec2<f32>(x_999.x, x_999.z) + x_1001);
    let x_1003 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1003.z, x_1003.w);
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1008.x, x_1008.y), 0.0f);
    let x_1011 : vec3<f32> = vec3<f32>(x_1010.x, x_1010.y, x_1010.z);
    let x_1012 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
    let x_1015 : f32 = u_xlat1.z;
    let x_1017 : f32 = x_25.x_UserLut_Params.z;
    let x_1019 : f32 = u_xlat18;
    u_xlat18 = ((x_1015 * x_1017) + -(x_1019));
    let x_1022 : vec4<f32> = u_xlat3;
    let x_1025 : vec4<f32> = u_xlat2;
    let x_1027 : vec3<f32> = (-(vec3<f32>(x_1022.x, x_1022.y, x_1022.z)) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1030 : f32 = u_xlat18;
    let x_1032 : vec4<f32> = u_xlat2;
    let x_1035 : vec4<f32> = u_xlat3;
    let x_1037 : vec3<f32> = ((vec3<f32>(x_1030, x_1030, x_1030) * vec3<f32>(x_1032.x, x_1032.y, x_1032.z)) + vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
    let x_1038 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1040 : vec3<f32> = u_xlat1;
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec3<f32> = (-(x_1040) + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
    let x_1045 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1048 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1050 : vec4<f32> = u_xlat2;
    let x_1053 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1048.w, x_1048.w, x_1048.w) * vec3<f32>(x_1050.x, x_1050.y, x_1050.z)) + x_1053);
    let x_1055 : vec3<f32> = u_xlat1;
    let x_1058 : vec3<f32> = (x_1055 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1059 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
    let x_1061 : vec3<f32> = u_xlat1;
    let x_1064 : vec3<f32> = (x_1061 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1065 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    let x_1067 : vec4<f32> = u_xlat3;
    let x_1071 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1072 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
    let x_1074 : vec4<f32> = u_xlat3;
    let x_1077 : vec3<f32> = log2(abs(vec3<f32>(x_1074.x, x_1074.y, x_1074.z)));
    let x_1078 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
    let x_1080 : vec4<f32> = u_xlat3;
    let x_1084 : vec3<f32> = (vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1085 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
    let x_1087 : vec4<f32> = u_xlat3;
    let x_1089 : vec3<f32> = exp2(vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
    let x_1090 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
    let x_1094 : vec3<f32> = u_xlat1;
    let x_1096 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.x));
    u_xlatb1 = vec3<bool>(x_1096.x, x_1096.y, x_1096.z);
    let x_1099 : bool = u_xlatb1.x;
    if (x_1099) {
      let x_1104 : f32 = u_xlat2.x;
      x_1100 = x_1104;
    } else {
      let x_1107 : f32 = u_xlat3.x;
      x_1100 = x_1107;
    }
    let x_1108 : f32 = x_1100;
    u_xlat0.x = x_1108;
    let x_1111 : bool = u_xlatb1.y;
    if (x_1111) {
      let x_1116 : f32 = u_xlat2.y;
      x_1112 = x_1116;
    } else {
      let x_1119 : f32 = u_xlat3.y;
      x_1112 = x_1119;
    }
    let x_1120 : f32 = x_1112;
    u_xlat0.y = x_1120;
    let x_1123 : bool = u_xlatb1.z;
    if (x_1123) {
      let x_1128 : f32 = u_xlat2.z;
      x_1124 = x_1128;
    } else {
      let x_1131 : f32 = u_xlat3.z;
      x_1124 = x_1131;
    }
    let x_1132 : f32 = x_1124;
    u_xlat0.z = x_1132;
  }
  let x_1134 : vec4<f32> = u_xlat0;
  let x_1137 : vec4<f32> = x_25.x_Lut_Params;
  let x_1139 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(x_1137.z, x_1137.z, x_1137.z));
  let x_1140 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1139.x, x_1139.y, x_1140.z, x_1139.z);
  let x_1143 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1143);
  let x_1146 : vec4<f32> = x_25.x_Lut_Params;
  let x_1148 : vec2<f32> = (vec2<f32>(x_1146.x, x_1146.y) * vec2<f32>(0.5f, 0.5f));
  let x_1149 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1148.x, x_1148.y, x_1149.z);
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1154 : vec4<f32> = x_25.x_Lut_Params;
  let x_1157 : vec3<f32> = u_xlat1;
  let x_1159 : vec2<f32> = ((vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(x_1154.x, x_1154.y)) + vec2<f32>(x_1157.x, x_1157.y));
  let x_1160 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1160.x, x_1159.x, x_1159.y);
  let x_1162 : f32 = u_xlat18;
  let x_1164 : f32 = x_25.x_Lut_Params.y;
  let x_1167 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1162 * x_1164) + x_1167);
  let x_1174 : vec3<f32> = u_xlat1;
  let x_1176 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1174.x, x_1174.z), 0.0f);
  let x_1177 : vec3<f32> = vec3<f32>(x_1176.x, x_1176.y, x_1176.z);
  let x_1178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
  let x_1181 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1181;
  u_xlat0.y = 0.0f;
  let x_1184 : vec4<f32> = u_xlat0;
  let x_1186 : vec3<f32> = u_xlat1;
  let x_1188 : vec2<f32> = (vec2<f32>(x_1184.x, x_1184.y) + vec2<f32>(x_1186.x, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1188.x, x_1188.y, x_1189.z, x_1189.w);
  let x_1194 : vec4<f32> = u_xlat0;
  let x_1196 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1194.x, x_1194.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1196.x, x_1196.y, x_1196.z);
  let x_1199 : f32 = u_xlat0.z;
  let x_1201 : f32 = x_25.x_Lut_Params.z;
  let x_1203 : f32 = u_xlat18;
  u_xlat0.x = ((x_1199 * x_1201) + -(x_1203));
  let x_1207 : vec4<f32> = u_xlat2;
  let x_1210 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1207.x, x_1207.y, x_1207.z)) + x_1210);
  let x_1212 : vec4<f32> = u_xlat0;
  let x_1214 : vec3<f32> = u_xlat6;
  let x_1216 : vec4<f32> = u_xlat2;
  let x_1218 : vec3<f32> = ((vec3<f32>(x_1212.x, x_1212.x, x_1212.x) * x_1214) + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1223 : vec4<f32> = u_xlat0;
  let x_1225 : vec3<f32> = sqrt(vec3<f32>(x_1223.x, x_1223.y, x_1223.z));
  let x_1226 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
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

