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
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_PointRepeat : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_631 : f32;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_916 : f32;
  var x_928 : f32;
  var x_940 : f32;
  var x_1102 : f32;
  var x_1114 : f32;
  var x_1126 : f32;
  var x_1300 : f32;
  var x_1312 : f32;
  var x_1324 : f32;
  var x_1379 : f32;
  var x_1391 : f32;
  var x_1403 : f32;
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
    u_xlatb0.x = (x_623 < -(x_625));
    let x_630 : bool = u_xlatb0.x;
    if (x_630) {
      let x_634 : f32 = u_xlat20;
      x_631 = -(x_634);
    } else {
      let x_637 : f32 = u_xlat20;
      x_631 = x_637;
    }
    let x_638 : f32 = x_631;
    u_xlat0.x = x_638;
    let x_641 : f32 = u_xlat6.x;
    let x_643 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_641 * x_643) + -1.0f);
    let x_647 : vec4<f32> = u_xlat0;
    let x_649 : vec4<f32> = u_xlat0;
    let x_652 : vec4<f32> = u_xlat3;
    let x_654 : vec2<f32> = ((vec2<f32>(x_647.z, x_647.w) * vec2<f32>(x_649.x, x_649.x)) + vec2<f32>(x_652.z, x_652.w));
    let x_655 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_654.x, x_654.y, x_655.z);
  }
  let x_660 : vec3<f32> = u_xlat1;
  let x_663 : f32 = x_25.x_GlobalMipBias.x;
  let x_664 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_660.x, x_660.y), x_663);
  u_xlat2.z = x_664.z;
  let x_672 : vec2<f32> = u_xlat13;
  let x_674 : f32 = x_25.x_GlobalMipBias.x;
  let x_675 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, x_672, x_674);
  u_xlat0 = x_675;
  let x_678 : f32 = x_25.x_Bloom_RGBM;
  u_xlatb1.x = (0.0f < x_678);
  let x_682 : bool = u_xlatb1.x;
  if (x_682) {
    let x_685 : vec4<f32> = u_xlat0;
    let x_687 : vec4<f32> = u_xlat0;
    let x_689 : vec3<f32> = (vec3<f32>(x_685.w, x_685.w, x_685.w) * vec3<f32>(x_687.x, x_687.y, x_687.z));
    let x_690 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat3;
    let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_697 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  }
  let x_699 : vec4<f32> = u_xlat0;
  let x_703 : vec4<f32> = x_25.x_Bloom_Params;
  let x_705 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(x_703.x, x_703.x, x_703.x));
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_711 : vec4<f32> = x_25.x_Bloom_Params;
  let x_714 : vec4<f32> = u_xlat2;
  let x_716 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_711.y, x_711.z, x_711.w)) + vec3<f32>(x_714.x, x_714.y, x_714.z));
  let x_717 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_722 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_722);
  let x_724 : bool = u_xlatb18;
  if (x_724) {
    let x_727 : vec2<f32> = u_xlat13;
    let x_729 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_732 : vec2<f32> = (x_727 + -(vec2<f32>(x_729.x, x_729.y)));
    let x_733 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_732.x, x_732.y, x_733.z);
    let x_735 : vec3<f32> = u_xlat1;
    let x_739 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_741 : vec2<f32> = (abs(vec2<f32>(x_735.x, x_735.y)) * vec2<f32>(x_739.z, x_739.z));
    let x_742 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_742.x, x_741.x, x_741.y);
    let x_745 : f32 = u_xlat1.y;
    let x_748 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_745 * x_748);
    let x_752 : vec3<f32> = u_xlat1;
    let x_754 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_752.x, x_752.z), vec2<f32>(x_754.x, x_754.z));
    let x_757 : f32 = u_xlat18;
    u_xlat18 = (-(x_757) + 1.0f);
    let x_760 : f32 = u_xlat18;
    u_xlat18 = max(x_760, 0.0f);
    let x_762 : f32 = u_xlat18;
    u_xlat18 = log2(x_762);
    let x_764 : f32 = u_xlat18;
    let x_766 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat18 = (x_764 * x_766);
    let x_768 : f32 = u_xlat18;
    u_xlat18 = exp2(x_768);
    let x_771 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_771.x, x_771.y, x_771.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_776 : f32 = u_xlat18;
    let x_778 : vec3<f32> = u_xlat1;
    let x_781 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_776, x_776, x_776) * x_778) + vec3<f32>(x_781.x, x_781.y, x_781.z));
    let x_784 : vec4<f32> = u_xlat0;
    let x_786 : vec3<f32> = u_xlat1;
    let x_787 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * x_786);
    let x_788 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  }
  let x_790 : vec4<f32> = u_xlat0;
  let x_794 : vec4<f32> = x_25.x_Lut_Params;
  let x_796 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_794.w, x_794.w, x_794.w));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_804 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = ((vec3<f32>(x_804.x, x_804.y, x_804.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_812 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec3<f32> = u_xlat1;
  let x_815 : vec4<f32> = u_xlat2;
  let x_820 : vec3<f32> = ((x_814 * vec3<f32>(x_815.x, x_815.y, x_815.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_821 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = ((vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_829 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec3<f32> = u_xlat1;
  let x_832 : vec4<f32> = u_xlat0;
  let x_837 : vec3<f32> = ((x_831 * vec3<f32>(x_832.x, x_832.y, x_832.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = (vec3<f32>(x_840.x, x_840.y, x_840.z) / vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_863 : vec3<f32> = clamp(vec3<f32>(x_859.x, x_859.y, x_859.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_868 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_868);
  let x_870 : bool = u_xlatb18;
  if (x_870) {
    let x_873 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_878 : vec4<f32> = u_xlat0;
    let x_880 : vec3<f32> = log2(vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_883 : vec4<f32> = u_xlat2;
    let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_888 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec4<f32> = u_xlat2;
    let x_892 : vec3<f32> = exp2(vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
    let x_895 : vec4<f32> = u_xlat2;
    let x_902 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_903 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
    let x_907 : vec4<f32> = u_xlat0;
    let x_910 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_907.x, x_907.y, x_907.z, x_907.x));
    u_xlatb3 = vec3<bool>(x_910.x, x_910.y, x_910.z);
    let x_913 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_913;
    let x_915 : bool = u_xlatb3.x;
    if (x_915) {
      let x_920 : f32 = u_xlat1.x;
      x_916 = x_920;
    } else {
      let x_923 : f32 = u_xlat2.x;
      x_916 = x_923;
    }
    let x_924 : f32 = x_916;
    hlslcc_movcTemp.x = x_924;
    let x_927 : bool = u_xlatb3.y;
    if (x_927) {
      let x_932 : f32 = u_xlat1.y;
      x_928 = x_932;
    } else {
      let x_935 : f32 = u_xlat2.y;
      x_928 = x_935;
    }
    let x_936 : f32 = x_928;
    hlslcc_movcTemp.y = x_936;
    let x_939 : bool = u_xlatb3.z;
    if (x_939) {
      let x_944 : f32 = u_xlat1.z;
      x_940 = x_944;
    } else {
      let x_947 : f32 = u_xlat2.z;
      x_940 = x_947;
    }
    let x_948 : f32 = x_940;
    hlslcc_movcTemp.z = x_948;
    let x_950 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_950;
    let x_951 : vec3<f32> = u_xlat1;
    let x_954 : vec4<f32> = x_25.x_UserLut_Params;
    let x_956 : vec3<f32> = (vec3<f32>(x_951.z, x_951.x, x_951.y) * vec3<f32>(x_954.z, x_954.z, x_954.z));
    let x_957 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
    let x_960 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_960);
    let x_963 : vec4<f32> = x_25.x_UserLut_Params;
    let x_965 : vec2<f32> = (vec2<f32>(x_963.x, x_963.y) * vec2<f32>(0.5f, 0.5f));
    let x_966 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_965.x, x_966.y, x_966.z, x_965.y);
    let x_968 : vec4<f32> = u_xlat2;
    let x_971 : vec4<f32> = x_25.x_UserLut_Params;
    let x_974 : vec4<f32> = u_xlat2;
    let x_976 : vec2<f32> = ((vec2<f32>(x_968.y, x_968.z) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_974.x, x_974.w));
    let x_977 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_977.x, x_976.x, x_976.y, x_977.w);
    let x_979 : f32 = u_xlat18;
    let x_981 : f32 = x_25.x_UserLut_Params.y;
    let x_984 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_979 * x_981) + x_984);
    let x_991 : vec4<f32> = u_xlat2;
    let x_993 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_991.x, x_991.z), 0.0f);
    let x_994 : vec3<f32> = vec3<f32>(x_993.x, x_993.y, x_993.z);
    let x_995 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_998 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_998;
    u_xlat4.y = 0.0f;
    let x_1001 : vec4<f32> = u_xlat2;
    let x_1003 : vec2<f32> = u_xlat4;
    let x_1004 : vec2<f32> = (vec2<f32>(x_1001.x, x_1001.z) + x_1003);
    let x_1005 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1004.x, x_1004.y, x_1005.z, x_1005.w);
    let x_1010 : vec4<f32> = u_xlat2;
    let x_1012 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1010.x, x_1010.y), 0.0f);
    let x_1013 : vec3<f32> = vec3<f32>(x_1012.x, x_1012.y, x_1012.z);
    let x_1014 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1017 : f32 = u_xlat1.z;
    let x_1019 : f32 = x_25.x_UserLut_Params.z;
    let x_1021 : f32 = u_xlat18;
    u_xlat18 = ((x_1017 * x_1019) + -(x_1021));
    let x_1024 : vec4<f32> = u_xlat3;
    let x_1027 : vec4<f32> = u_xlat2;
    let x_1029 : vec3<f32> = (-(vec3<f32>(x_1024.x, x_1024.y, x_1024.z)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
    let x_1030 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1032 : f32 = u_xlat18;
    let x_1034 : vec4<f32> = u_xlat2;
    let x_1037 : vec4<f32> = u_xlat3;
    let x_1039 : vec3<f32> = ((vec3<f32>(x_1032, x_1032, x_1032) * vec3<f32>(x_1034.x, x_1034.y, x_1034.z)) + vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1042 : vec3<f32> = u_xlat1;
    let x_1044 : vec4<f32> = u_xlat2;
    let x_1046 : vec3<f32> = (-(x_1042) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
    let x_1047 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
    let x_1050 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1052 : vec4<f32> = u_xlat2;
    let x_1055 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1050.w, x_1050.w, x_1050.w) * vec3<f32>(x_1052.x, x_1052.y, x_1052.z)) + x_1055);
    let x_1057 : vec3<f32> = u_xlat1;
    let x_1060 : vec3<f32> = (x_1057 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1061 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
    let x_1063 : vec3<f32> = u_xlat1;
    let x_1066 : vec3<f32> = (x_1063 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1067 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
    let x_1069 : vec4<f32> = u_xlat3;
    let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1074 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
    let x_1076 : vec4<f32> = u_xlat3;
    let x_1079 : vec3<f32> = log2(abs(vec3<f32>(x_1076.x, x_1076.y, x_1076.z)));
    let x_1080 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
    let x_1082 : vec4<f32> = u_xlat3;
    let x_1086 : vec3<f32> = (vec3<f32>(x_1082.x, x_1082.y, x_1082.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1087 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
    let x_1089 : vec4<f32> = u_xlat3;
    let x_1091 : vec3<f32> = exp2(vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
    let x_1092 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
    let x_1096 : vec3<f32> = u_xlat1;
    let x_1098 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1096.x));
    u_xlatb1 = vec3<bool>(x_1098.x, x_1098.y, x_1098.z);
    let x_1101 : bool = u_xlatb1.x;
    if (x_1101) {
      let x_1106 : f32 = u_xlat2.x;
      x_1102 = x_1106;
    } else {
      let x_1109 : f32 = u_xlat3.x;
      x_1102 = x_1109;
    }
    let x_1110 : f32 = x_1102;
    u_xlat0.x = x_1110;
    let x_1113 : bool = u_xlatb1.y;
    if (x_1113) {
      let x_1118 : f32 = u_xlat2.y;
      x_1114 = x_1118;
    } else {
      let x_1121 : f32 = u_xlat3.y;
      x_1114 = x_1121;
    }
    let x_1122 : f32 = x_1114;
    u_xlat0.y = x_1122;
    let x_1125 : bool = u_xlatb1.z;
    if (x_1125) {
      let x_1130 : f32 = u_xlat2.z;
      x_1126 = x_1130;
    } else {
      let x_1133 : f32 = u_xlat3.z;
      x_1126 = x_1133;
    }
    let x_1134 : f32 = x_1126;
    u_xlat0.z = x_1134;
  }
  let x_1136 : vec4<f32> = u_xlat0;
  let x_1139 : vec4<f32> = x_25.x_Lut_Params;
  let x_1141 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(x_1139.z, x_1139.z, x_1139.z));
  let x_1142 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1141.x, x_1141.y, x_1142.z, x_1141.z);
  let x_1145 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1145);
  let x_1148 : vec4<f32> = x_25.x_Lut_Params;
  let x_1150 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.5f, 0.5f));
  let x_1151 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1150.x, x_1150.y, x_1151.z);
  let x_1153 : vec4<f32> = u_xlat0;
  let x_1156 : vec4<f32> = x_25.x_Lut_Params;
  let x_1159 : vec3<f32> = u_xlat1;
  let x_1161 : vec2<f32> = ((vec2<f32>(x_1153.x, x_1153.y) * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.x, x_1159.y));
  let x_1162 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1162.x, x_1161.x, x_1161.y);
  let x_1164 : f32 = u_xlat18;
  let x_1166 : f32 = x_25.x_Lut_Params.y;
  let x_1169 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1164 * x_1166) + x_1169);
  let x_1176 : vec3<f32> = u_xlat1;
  let x_1178 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1176.x, x_1176.z), 0.0f);
  let x_1179 : vec3<f32> = vec3<f32>(x_1178.x, x_1178.y, x_1178.z);
  let x_1180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1180.w);
  let x_1183 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1183;
  u_xlat0.y = 0.0f;
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec3<f32> = u_xlat1;
  let x_1190 : vec2<f32> = (vec2<f32>(x_1186.x, x_1186.y) + vec2<f32>(x_1188.x, x_1188.z));
  let x_1191 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1198 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1196.x, x_1196.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1198.x, x_1198.y, x_1198.z);
  let x_1201 : f32 = u_xlat0.z;
  let x_1203 : f32 = x_25.x_Lut_Params.z;
  let x_1205 : f32 = u_xlat18;
  u_xlat0.x = ((x_1201 * x_1203) + -(x_1205));
  let x_1209 : vec4<f32> = u_xlat2;
  let x_1212 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1209.x, x_1209.y, x_1209.z)) + x_1212);
  let x_1214 : vec4<f32> = u_xlat0;
  let x_1216 : vec3<f32> = u_xlat6;
  let x_1218 : vec4<f32> = u_xlat2;
  let x_1220 : vec3<f32> = ((vec3<f32>(x_1214.x, x_1214.x, x_1214.x) * x_1216) + vec3<f32>(x_1218.x, x_1218.y, x_1218.z));
  let x_1221 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1223 : vec2<f32> = vs_TEXCOORD0;
  let x_1226 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1230 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1232 : vec2<f32> = ((x_1223 * vec2<f32>(x_1226.x, x_1226.y)) + vec2<f32>(x_1230.z, x_1230.w));
  let x_1233 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1232.x, x_1232.y, x_1233.z);
  let x_1240 : vec3<f32> = u_xlat1;
  let x_1243 : f32 = x_25.x_GlobalMipBias.x;
  let x_1244 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1240.x, x_1240.y), x_1243);
  u_xlat18 = x_1244.w;
  let x_1246 : f32 = u_xlat18;
  u_xlat18 = ((x_1246 * 2.0f) + -1.0f);
  let x_1249 : f32 = u_xlat18;
  u_xlatb1.x = (x_1249 >= 0.0f);
  let x_1253 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1253);
  let x_1256 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1256)) + 1.0f);
  let x_1260 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1260);
  let x_1262 : f32 = u_xlat18;
  u_xlat18 = (-(x_1262) + 1.0f);
  let x_1265 : f32 = u_xlat18;
  let x_1267 : f32 = u_xlat1.x;
  u_xlat18 = (x_1265 * x_1267);
  let x_1269 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1269.x, x_1269.y, x_1269.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1275 : vec3<f32> = log2(abs(vec3<f32>(x_1272.x, x_1272.y, x_1272.z)));
  let x_1276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat2;
  let x_1280 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat2;
  let x_1285 : vec3<f32> = exp2(vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec4<f32> = u_xlat2;
  let x_1291 : vec3<f32> = ((vec3<f32>(x_1288.x, x_1288.y, x_1288.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1292 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1292.w);
  let x_1294 : vec4<f32> = u_xlat0;
  let x_1296 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1294.x));
  u_xlatb0 = vec3<bool>(x_1296.x, x_1296.y, x_1296.z);
  let x_1299 : bool = u_xlatb0.x;
  if (x_1299) {
    let x_1304 : f32 = u_xlat1.x;
    x_1300 = x_1304;
  } else {
    let x_1307 : f32 = u_xlat2.x;
    x_1300 = x_1307;
  }
  let x_1308 : f32 = x_1300;
  u_xlat0.x = x_1308;
  let x_1311 : bool = u_xlatb0.y;
  if (x_1311) {
    let x_1316 : f32 = u_xlat1.y;
    x_1312 = x_1316;
  } else {
    let x_1319 : f32 = u_xlat2.y;
    x_1312 = x_1319;
  }
  let x_1320 : f32 = x_1312;
  u_xlat0.y = x_1320;
  let x_1323 : bool = u_xlatb0.z;
  if (x_1323) {
    let x_1328 : f32 = u_xlat1.z;
    x_1324 = x_1328;
  } else {
    let x_1331 : f32 = u_xlat2.z;
    x_1324 = x_1331;
  }
  let x_1332 : f32 = x_1324;
  u_xlat0.z = x_1332;
  let x_1334 : f32 = u_xlat18;
  let x_1339 : vec4<f32> = u_xlat0;
  let x_1341 : vec3<f32> = ((vec3<f32>(x_1334, x_1334, x_1334) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1339.x, x_1339.y, x_1339.z));
  let x_1342 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1341.x, x_1341.y, x_1341.z, x_1342.w);
  let x_1344 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1344.x, x_1344.y, x_1344.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1349 : vec3<f32> = (vec3<f32>(x_1347.x, x_1347.y, x_1347.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1352 : vec4<f32> = u_xlat2;
  let x_1354 : vec3<f32> = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec4<f32> = u_xlat2;
  let x_1360 : vec3<f32> = log2(abs(vec3<f32>(x_1357.x, x_1357.y, x_1357.z)));
  let x_1361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec4<f32> = u_xlat2;
  let x_1365 : vec3<f32> = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1368 : vec4<f32> = u_xlat2;
  let x_1370 : vec3<f32> = exp2(vec3<f32>(x_1368.x, x_1368.y, x_1368.z));
  let x_1371 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1370.x, x_1370.y, x_1370.z, x_1371.w);
  let x_1373 : vec4<f32> = u_xlat0;
  let x_1375 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1373.x));
  u_xlatb0 = vec3<bool>(x_1375.x, x_1375.y, x_1375.z);
  let x_1378 : bool = u_xlatb0.x;
  if (x_1378) {
    let x_1383 : f32 = u_xlat1.x;
    x_1379 = x_1383;
  } else {
    let x_1386 : f32 = u_xlat2.x;
    x_1379 = x_1386;
  }
  let x_1387 : f32 = x_1379;
  u_xlat0.x = x_1387;
  let x_1390 : bool = u_xlatb0.y;
  if (x_1390) {
    let x_1395 : f32 = u_xlat1.y;
    x_1391 = x_1395;
  } else {
    let x_1398 : f32 = u_xlat2.y;
    x_1391 = x_1398;
  }
  let x_1399 : f32 = x_1391;
  u_xlat0.y = x_1399;
  let x_1402 : bool = u_xlatb0.z;
  if (x_1402) {
    let x_1407 : f32 = u_xlat1.z;
    x_1403 = x_1407;
  } else {
    let x_1410 : f32 = u_xlat2.z;
    x_1403 = x_1410;
  }
  let x_1411 : f32 = x_1403;
  u_xlat0.z = x_1411;
  let x_1415 : vec4<f32> = u_xlat0;
  let x_1418 : vec3<f32> = max(vec3<f32>(x_1415.x, x_1415.y, x_1415.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1419 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1418.x, x_1418.y, x_1418.z, x_1419.w);
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

