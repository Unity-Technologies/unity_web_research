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

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

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
  var x_1024 : f32;
  var x_1036 : f32;
  var x_1048 : f32;
  var x_1210 : f32;
  var x_1222 : f32;
  var x_1234 : f32;
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
  let x_837 : vec3<f32> = (vec3<f32>(x_831.z, x_831.x, x_831.y) * vec3<f32>(x_835.w, x_835.w, x_835.w));
  let x_838 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_848 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat0;
  let x_853 : vec3<f32> = max(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : vec3<f32> = log2(vec3<f32>(x_856.x, x_856.y, x_856.z));
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat0;
  let x_868 : vec3<f32> = ((vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_869 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_871 : vec4<f32> = u_xlat0;
  let x_875 : vec3<f32> = clamp(vec3<f32>(x_871.x, x_871.y, x_871.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_876 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat0;
  let x_881 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_881.z, x_881.z, x_881.z));
  let x_885 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_885);
  let x_889 : vec4<f32> = x_25.x_Lut_Params;
  let x_891 : vec2<f32> = (vec2<f32>(x_889.x, x_889.y) * vec2<f32>(0.5f, 0.5f));
  let x_892 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_891.x, x_891.y, x_892.z);
  let x_894 : vec3<f32> = u_xlat6;
  let x_897 : vec4<f32> = x_25.x_Lut_Params;
  let x_900 : vec3<f32> = u_xlat1;
  let x_902 : vec2<f32> = ((vec2<f32>(x_894.y, x_894.z) * vec2<f32>(x_897.x, x_897.y)) + vec2<f32>(x_900.x, x_900.y));
  let x_903 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_903.x, x_902.x, x_902.y);
  let x_906 : f32 = u_xlat6.x;
  let x_908 : f32 = x_25.x_Lut_Params.y;
  let x_911 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_906 * x_908) + x_911);
  let x_918 : vec3<f32> = u_xlat1;
  let x_920 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_918.x, x_918.z), 0.0f);
  let x_921 : vec3<f32> = vec3<f32>(x_920.x, x_920.y, x_920.z);
  let x_922 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_925 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_925;
  u_xlat3.y = 0.0f;
  let x_928 : vec3<f32> = u_xlat1;
  let x_930 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_928.x, x_928.z) + vec2<f32>(x_930.x, x_930.y));
  let x_936 : vec2<f32> = u_xlat12;
  let x_937 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_936, 0.0f);
  u_xlat1 = vec3<f32>(x_937.x, x_937.y, x_937.z);
  let x_940 : f32 = u_xlat0.x;
  let x_942 : f32 = x_25.x_Lut_Params.z;
  let x_945 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_940 * x_942) + -(x_945));
  let x_949 : vec4<f32> = u_xlat2;
  let x_952 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_949.x, x_949.y, x_949.z)) + x_952);
  let x_954 : vec4<f32> = u_xlat0;
  let x_956 : vec3<f32> = u_xlat6;
  let x_958 : vec4<f32> = u_xlat2;
  let x_960 : vec3<f32> = ((vec3<f32>(x_954.x, x_954.x, x_954.x) * x_956) + vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_965 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_965);
  let x_967 : bool = u_xlatb18;
  if (x_967) {
    let x_970 : vec4<f32> = u_xlat0;
    let x_971 : vec3<f32> = vec3<f32>(x_970.x, x_970.y, x_970.z);
    let x_972 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
    let x_974 : vec4<f32> = u_xlat0;
    let x_978 : vec3<f32> = clamp(vec3<f32>(x_974.x, x_974.y, x_974.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_979 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_981 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_981.x, x_981.y, x_981.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_986 : vec4<f32> = u_xlat0;
    let x_988 : vec3<f32> = log2(vec3<f32>(x_986.x, x_986.y, x_986.z));
    let x_989 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
    let x_991 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_996 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
    let x_998 : vec4<f32> = u_xlat2;
    let x_1000 : vec3<f32> = exp2(vec3<f32>(x_998.x, x_998.y, x_998.z));
    let x_1001 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec4<f32> = u_xlat2;
    let x_1010 : vec3<f32> = ((vec3<f32>(x_1003.x, x_1003.y, x_1003.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1011 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
    let x_1015 : vec4<f32> = u_xlat0;
    let x_1018 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1015.x));
    u_xlatb3 = vec3<bool>(x_1018.x, x_1018.y, x_1018.z);
    let x_1021 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1021;
    let x_1023 : bool = u_xlatb3.x;
    if (x_1023) {
      let x_1028 : f32 = u_xlat1.x;
      x_1024 = x_1028;
    } else {
      let x_1031 : f32 = u_xlat2.x;
      x_1024 = x_1031;
    }
    let x_1032 : f32 = x_1024;
    hlslcc_movcTemp.x = x_1032;
    let x_1035 : bool = u_xlatb3.y;
    if (x_1035) {
      let x_1040 : f32 = u_xlat1.y;
      x_1036 = x_1040;
    } else {
      let x_1043 : f32 = u_xlat2.y;
      x_1036 = x_1043;
    }
    let x_1044 : f32 = x_1036;
    hlslcc_movcTemp.y = x_1044;
    let x_1047 : bool = u_xlatb3.z;
    if (x_1047) {
      let x_1052 : f32 = u_xlat1.z;
      x_1048 = x_1052;
    } else {
      let x_1055 : f32 = u_xlat2.z;
      x_1048 = x_1055;
    }
    let x_1056 : f32 = x_1048;
    hlslcc_movcTemp.z = x_1056;
    let x_1058 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1058;
    let x_1059 : vec3<f32> = u_xlat1;
    let x_1062 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1064 : vec3<f32> = (vec3<f32>(x_1059.z, x_1059.x, x_1059.y) * vec3<f32>(x_1062.z, x_1062.z, x_1062.z));
    let x_1065 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    let x_1068 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1068);
    let x_1071 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1073 : vec2<f32> = (vec2<f32>(x_1071.x, x_1071.y) * vec2<f32>(0.5f, 0.5f));
    let x_1074 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1073.x, x_1074.y, x_1074.z, x_1073.y);
    let x_1076 : vec4<f32> = u_xlat2;
    let x_1079 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1082 : vec4<f32> = u_xlat2;
    let x_1084 : vec2<f32> = ((vec2<f32>(x_1076.y, x_1076.z) * vec2<f32>(x_1079.x, x_1079.y)) + vec2<f32>(x_1082.x, x_1082.w));
    let x_1085 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1085.x, x_1084.x, x_1084.y, x_1085.w);
    let x_1087 : f32 = u_xlat18;
    let x_1089 : f32 = x_25.x_UserLut_Params.y;
    let x_1092 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1087 * x_1089) + x_1092);
    let x_1099 : vec4<f32> = u_xlat2;
    let x_1101 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1099.x, x_1099.z), 0.0f);
    let x_1102 : vec3<f32> = vec3<f32>(x_1101.x, x_1101.y, x_1101.z);
    let x_1103 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
    let x_1106 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1106;
    u_xlat4.y = 0.0f;
    let x_1109 : vec4<f32> = u_xlat2;
    let x_1111 : vec2<f32> = u_xlat4;
    let x_1112 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.z) + x_1111);
    let x_1113 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
    let x_1118 : vec4<f32> = u_xlat2;
    let x_1120 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1118.x, x_1118.y), 0.0f);
    let x_1121 : vec3<f32> = vec3<f32>(x_1120.x, x_1120.y, x_1120.z);
    let x_1122 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
    let x_1125 : f32 = u_xlat1.z;
    let x_1127 : f32 = x_25.x_UserLut_Params.z;
    let x_1129 : f32 = u_xlat18;
    u_xlat18 = ((x_1125 * x_1127) + -(x_1129));
    let x_1132 : vec4<f32> = u_xlat3;
    let x_1135 : vec4<f32> = u_xlat2;
    let x_1137 : vec3<f32> = (-(vec3<f32>(x_1132.x, x_1132.y, x_1132.z)) + vec3<f32>(x_1135.x, x_1135.y, x_1135.z));
    let x_1138 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1138.w);
    let x_1140 : f32 = u_xlat18;
    let x_1142 : vec4<f32> = u_xlat2;
    let x_1145 : vec4<f32> = u_xlat3;
    let x_1147 : vec3<f32> = ((vec3<f32>(x_1140, x_1140, x_1140) * vec3<f32>(x_1142.x, x_1142.y, x_1142.z)) + vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
    let x_1148 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
    let x_1150 : vec3<f32> = u_xlat1;
    let x_1152 : vec4<f32> = u_xlat2;
    let x_1154 : vec3<f32> = (-(x_1150) + vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
    let x_1155 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
    let x_1158 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1160 : vec4<f32> = u_xlat2;
    let x_1163 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1158.w, x_1158.w, x_1158.w) * vec3<f32>(x_1160.x, x_1160.y, x_1160.z)) + x_1163);
    let x_1165 : vec3<f32> = u_xlat1;
    let x_1168 : vec3<f32> = (x_1165 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1169 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
    let x_1171 : vec3<f32> = u_xlat1;
    let x_1174 : vec3<f32> = (x_1171 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1175 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : vec4<f32> = u_xlat3;
    let x_1181 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1182 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
    let x_1184 : vec4<f32> = u_xlat3;
    let x_1187 : vec3<f32> = log2(abs(vec3<f32>(x_1184.x, x_1184.y, x_1184.z)));
    let x_1188 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1187.x, x_1187.y, x_1187.z, x_1188.w);
    let x_1190 : vec4<f32> = u_xlat3;
    let x_1194 : vec3<f32> = (vec3<f32>(x_1190.x, x_1190.y, x_1190.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1195 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
    let x_1197 : vec4<f32> = u_xlat3;
    let x_1199 : vec3<f32> = exp2(vec3<f32>(x_1197.x, x_1197.y, x_1197.z));
    let x_1200 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
    let x_1204 : vec3<f32> = u_xlat1;
    let x_1206 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1204.x, x_1204.y, x_1204.z, x_1204.x));
    u_xlatb1 = vec3<bool>(x_1206.x, x_1206.y, x_1206.z);
    let x_1209 : bool = u_xlatb1.x;
    if (x_1209) {
      let x_1214 : f32 = u_xlat2.x;
      x_1210 = x_1214;
    } else {
      let x_1217 : f32 = u_xlat3.x;
      x_1210 = x_1217;
    }
    let x_1218 : f32 = x_1210;
    u_xlat0.x = x_1218;
    let x_1221 : bool = u_xlatb1.y;
    if (x_1221) {
      let x_1226 : f32 = u_xlat2.y;
      x_1222 = x_1226;
    } else {
      let x_1229 : f32 = u_xlat3.y;
      x_1222 = x_1229;
    }
    let x_1230 : f32 = x_1222;
    u_xlat0.y = x_1230;
    let x_1233 : bool = u_xlatb1.z;
    if (x_1233) {
      let x_1238 : f32 = u_xlat2.z;
      x_1234 = x_1238;
    } else {
      let x_1241 : f32 = u_xlat3.z;
      x_1234 = x_1241;
    }
    let x_1242 : f32 = x_1234;
    u_xlat0.z = x_1242;
  }
  let x_1246 : vec4<f32> = u_xlat0;
  let x_1247 : vec3<f32> = vec3<f32>(x_1246.x, x_1246.y, x_1246.z);
  let x_1248 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
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

