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
  x_LensDirt_Params : vec4<f32>,
  x_LensDirt_Intensity : f32,
  @size(12)
  padding_2 : u32,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Chroma_Params : f32,
  @size(12)
  padding_3 : u32,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

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
  var x_897 : f32;
  var x_909 : f32;
  var x_921 : f32;
  var x_1083 : f32;
  var x_1095 : f32;
  var x_1107 : f32;
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
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec2<f32> = u_xlat13;
  let x_720 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_724 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_726 : vec2<f32> = ((x_717 * vec2<f32>(x_720.x, x_720.y)) + vec2<f32>(x_724.z, x_724.w));
  let x_727 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_726.x, x_726.y, x_727.z);
  let x_733 : vec3<f32> = u_xlat1;
  let x_736 : f32 = x_25.x_GlobalMipBias.x;
  let x_737 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_733.x, x_733.y), x_736);
  let x_738 : vec3<f32> = vec3<f32>(x_737.x, x_737.y, x_737.z);
  let x_739 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat3;
  let x_745 : f32 = x_25.x_LensDirt_Intensity;
  let x_747 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_745, x_745, x_745));
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec4<f32> = u_xlat0;
  let x_755 : vec4<f32> = u_xlat2;
  let x_757 : vec3<f32> = ((vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752.x, x_752.y, x_752.z)) + vec3<f32>(x_755.x, x_755.y, x_755.z));
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_763 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_763);
  let x_765 : bool = u_xlatb18;
  if (x_765) {
    let x_768 : vec2<f32> = u_xlat13;
    let x_770 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_773 : vec2<f32> = (x_768 + -(vec2<f32>(x_770.x, x_770.y)));
    let x_774 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_773.x, x_773.y, x_774.z);
    let x_776 : vec3<f32> = u_xlat1;
    let x_780 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_782 : vec2<f32> = (abs(vec2<f32>(x_776.x, x_776.y)) * vec2<f32>(x_780.z, x_780.z));
    let x_783 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_783.x, x_782.x, x_782.y);
    let x_786 : f32 = u_xlat1.y;
    let x_789 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_786 * x_789);
    let x_793 : vec3<f32> = u_xlat1;
    let x_795 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_793.x, x_793.z), vec2<f32>(x_795.x, x_795.z));
    let x_798 : f32 = u_xlat18;
    u_xlat18 = (-(x_798) + 1.0f);
    let x_801 : f32 = u_xlat18;
    u_xlat18 = max(x_801, 0.0f);
    let x_803 : f32 = u_xlat18;
    u_xlat18 = log2(x_803);
    let x_805 : f32 = u_xlat18;
    let x_807 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat18 = (x_805 * x_807);
    let x_809 : f32 = u_xlat18;
    u_xlat18 = exp2(x_809);
    let x_812 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_817 : f32 = u_xlat18;
    let x_819 : vec3<f32> = u_xlat1;
    let x_822 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_817, x_817, x_817) * x_819) + vec3<f32>(x_822.x, x_822.y, x_822.z));
    let x_825 : vec4<f32> = u_xlat0;
    let x_827 : vec3<f32> = u_xlat1;
    let x_828 : vec3<f32> = (vec3<f32>(x_825.x, x_825.y, x_825.z) * x_827);
    let x_829 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  }
  let x_831 : vec4<f32> = u_xlat0;
  let x_835 : vec4<f32> = x_25.x_Lut_Params;
  let x_837 : vec3<f32> = (vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(x_835.w, x_835.w, x_835.w));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = clamp(vec3<f32>(x_840.x, x_840.y, x_840.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_849 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_849);
  let x_851 : bool = u_xlatb18;
  if (x_851) {
    let x_854 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_859 : vec4<f32> = u_xlat0;
    let x_861 : vec3<f32> = log2(vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_862 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
    let x_864 : vec4<f32> = u_xlat2;
    let x_868 : vec3<f32> = (vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_869 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
    let x_871 : vec4<f32> = u_xlat2;
    let x_873 : vec3<f32> = exp2(vec3<f32>(x_871.x, x_871.y, x_871.z));
    let x_874 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
    let x_876 : vec4<f32> = u_xlat2;
    let x_883 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_884 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
    let x_888 : vec4<f32> = u_xlat0;
    let x_891 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.x));
    u_xlatb3 = vec3<bool>(x_891.x, x_891.y, x_891.z);
    let x_894 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_894;
    let x_896 : bool = u_xlatb3.x;
    if (x_896) {
      let x_901 : f32 = u_xlat1.x;
      x_897 = x_901;
    } else {
      let x_904 : f32 = u_xlat2.x;
      x_897 = x_904;
    }
    let x_905 : f32 = x_897;
    hlslcc_movcTemp.x = x_905;
    let x_908 : bool = u_xlatb3.y;
    if (x_908) {
      let x_913 : f32 = u_xlat1.y;
      x_909 = x_913;
    } else {
      let x_916 : f32 = u_xlat2.y;
      x_909 = x_916;
    }
    let x_917 : f32 = x_909;
    hlslcc_movcTemp.y = x_917;
    let x_920 : bool = u_xlatb3.z;
    if (x_920) {
      let x_925 : f32 = u_xlat1.z;
      x_921 = x_925;
    } else {
      let x_928 : f32 = u_xlat2.z;
      x_921 = x_928;
    }
    let x_929 : f32 = x_921;
    hlslcc_movcTemp.z = x_929;
    let x_931 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_931;
    let x_932 : vec3<f32> = u_xlat1;
    let x_935 : vec4<f32> = x_25.x_UserLut_Params;
    let x_937 : vec3<f32> = (vec3<f32>(x_932.z, x_932.x, x_932.y) * vec3<f32>(x_935.z, x_935.z, x_935.z));
    let x_938 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
    let x_941 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_941);
    let x_944 : vec4<f32> = x_25.x_UserLut_Params;
    let x_946 : vec2<f32> = (vec2<f32>(x_944.x, x_944.y) * vec2<f32>(0.5f, 0.5f));
    let x_947 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_946.x, x_947.y, x_947.z, x_946.y);
    let x_949 : vec4<f32> = u_xlat2;
    let x_952 : vec4<f32> = x_25.x_UserLut_Params;
    let x_955 : vec4<f32> = u_xlat2;
    let x_957 : vec2<f32> = ((vec2<f32>(x_949.y, x_949.z) * vec2<f32>(x_952.x, x_952.y)) + vec2<f32>(x_955.x, x_955.w));
    let x_958 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_958.x, x_957.x, x_957.y, x_958.w);
    let x_960 : f32 = u_xlat18;
    let x_962 : f32 = x_25.x_UserLut_Params.y;
    let x_965 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_960 * x_962) + x_965);
    let x_972 : vec4<f32> = u_xlat2;
    let x_974 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_972.x, x_972.z), 0.0f);
    let x_975 : vec3<f32> = vec3<f32>(x_974.x, x_974.y, x_974.z);
    let x_976 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
    let x_979 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_979;
    u_xlat4.y = 0.0f;
    let x_982 : vec4<f32> = u_xlat2;
    let x_984 : vec2<f32> = u_xlat4;
    let x_985 : vec2<f32> = (vec2<f32>(x_982.x, x_982.z) + x_984);
    let x_986 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_985.x, x_985.y, x_986.z, x_986.w);
    let x_991 : vec4<f32> = u_xlat2;
    let x_993 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_991.x, x_991.y), 0.0f);
    let x_994 : vec3<f32> = vec3<f32>(x_993.x, x_993.y, x_993.z);
    let x_995 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_998 : f32 = u_xlat1.z;
    let x_1000 : f32 = x_25.x_UserLut_Params.z;
    let x_1002 : f32 = u_xlat18;
    u_xlat18 = ((x_998 * x_1000) + -(x_1002));
    let x_1005 : vec4<f32> = u_xlat3;
    let x_1008 : vec4<f32> = u_xlat2;
    let x_1010 : vec3<f32> = (-(vec3<f32>(x_1005.x, x_1005.y, x_1005.z)) + vec3<f32>(x_1008.x, x_1008.y, x_1008.z));
    let x_1011 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
    let x_1013 : f32 = u_xlat18;
    let x_1015 : vec4<f32> = u_xlat2;
    let x_1018 : vec4<f32> = u_xlat3;
    let x_1020 : vec3<f32> = ((vec3<f32>(x_1013, x_1013, x_1013) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
    let x_1021 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
    let x_1023 : vec3<f32> = u_xlat1;
    let x_1025 : vec4<f32> = u_xlat2;
    let x_1027 : vec3<f32> = (-(x_1023) + vec3<f32>(x_1025.x, x_1025.y, x_1025.z));
    let x_1028 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
    let x_1031 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1036 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1031.w, x_1031.w, x_1031.w) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + x_1036);
    let x_1038 : vec3<f32> = u_xlat1;
    let x_1041 : vec3<f32> = (x_1038 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1042 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
    let x_1044 : vec3<f32> = u_xlat1;
    let x_1047 : vec3<f32> = (x_1044 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1048 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
    let x_1050 : vec4<f32> = u_xlat3;
    let x_1054 : vec3<f32> = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1055 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
    let x_1057 : vec4<f32> = u_xlat3;
    let x_1060 : vec3<f32> = log2(abs(vec3<f32>(x_1057.x, x_1057.y, x_1057.z)));
    let x_1061 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
    let x_1063 : vec4<f32> = u_xlat3;
    let x_1067 : vec3<f32> = (vec3<f32>(x_1063.x, x_1063.y, x_1063.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1068 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
    let x_1070 : vec4<f32> = u_xlat3;
    let x_1072 : vec3<f32> = exp2(vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
    let x_1077 : vec3<f32> = u_xlat1;
    let x_1079 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1077.x));
    u_xlatb1 = vec3<bool>(x_1079.x, x_1079.y, x_1079.z);
    let x_1082 : bool = u_xlatb1.x;
    if (x_1082) {
      let x_1087 : f32 = u_xlat2.x;
      x_1083 = x_1087;
    } else {
      let x_1090 : f32 = u_xlat3.x;
      x_1083 = x_1090;
    }
    let x_1091 : f32 = x_1083;
    u_xlat0.x = x_1091;
    let x_1094 : bool = u_xlatb1.y;
    if (x_1094) {
      let x_1099 : f32 = u_xlat2.y;
      x_1095 = x_1099;
    } else {
      let x_1102 : f32 = u_xlat3.y;
      x_1095 = x_1102;
    }
    let x_1103 : f32 = x_1095;
    u_xlat0.y = x_1103;
    let x_1106 : bool = u_xlatb1.z;
    if (x_1106) {
      let x_1111 : f32 = u_xlat2.z;
      x_1107 = x_1111;
    } else {
      let x_1114 : f32 = u_xlat3.z;
      x_1107 = x_1114;
    }
    let x_1115 : f32 = x_1107;
    u_xlat0.z = x_1115;
  }
  let x_1117 : vec4<f32> = u_xlat0;
  let x_1120 : vec4<f32> = x_25.x_Lut_Params;
  let x_1122 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) * vec3<f32>(x_1120.z, x_1120.z, x_1120.z));
  let x_1123 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1122.x, x_1122.y, x_1123.z, x_1122.z);
  let x_1126 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1126);
  let x_1129 : vec4<f32> = x_25.x_Lut_Params;
  let x_1131 : vec2<f32> = (vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(0.5f, 0.5f));
  let x_1132 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1131.x, x_1131.y, x_1132.z);
  let x_1134 : vec4<f32> = u_xlat0;
  let x_1137 : vec4<f32> = x_25.x_Lut_Params;
  let x_1140 : vec3<f32> = u_xlat1;
  let x_1142 : vec2<f32> = ((vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(x_1137.x, x_1137.y)) + vec2<f32>(x_1140.x, x_1140.y));
  let x_1143 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1143.x, x_1142.x, x_1142.y);
  let x_1145 : f32 = u_xlat18;
  let x_1147 : f32 = x_25.x_Lut_Params.y;
  let x_1150 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1145 * x_1147) + x_1150);
  let x_1157 : vec3<f32> = u_xlat1;
  let x_1159 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1157.x, x_1157.z), 0.0f);
  let x_1160 : vec3<f32> = vec3<f32>(x_1159.x, x_1159.y, x_1159.z);
  let x_1161 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1164 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1164;
  u_xlat0.y = 0.0f;
  let x_1167 : vec4<f32> = u_xlat0;
  let x_1169 : vec3<f32> = u_xlat1;
  let x_1171 : vec2<f32> = (vec2<f32>(x_1167.x, x_1167.y) + vec2<f32>(x_1169.x, x_1169.z));
  let x_1172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1171.x, x_1171.y, x_1172.z, x_1172.w);
  let x_1177 : vec4<f32> = u_xlat0;
  let x_1179 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1177.x, x_1177.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1179.x, x_1179.y, x_1179.z);
  let x_1182 : f32 = u_xlat0.z;
  let x_1184 : f32 = x_25.x_Lut_Params.z;
  let x_1186 : f32 = u_xlat18;
  u_xlat0.x = ((x_1182 * x_1184) + -(x_1186));
  let x_1190 : vec4<f32> = u_xlat2;
  let x_1193 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1190.x, x_1190.y, x_1190.z)) + x_1193);
  let x_1195 : vec4<f32> = u_xlat0;
  let x_1197 : vec3<f32> = u_xlat6;
  let x_1199 : vec4<f32> = u_xlat2;
  let x_1201 : vec3<f32> = ((vec3<f32>(x_1195.x, x_1195.x, x_1195.x) * x_1197) + vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
  let x_1202 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1206 : vec4<f32> = u_xlat0;
  let x_1208 : vec3<f32> = sqrt(vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
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
