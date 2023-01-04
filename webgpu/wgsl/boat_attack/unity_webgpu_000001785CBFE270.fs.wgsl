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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

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
  var hlslcc_movcTemp : vec3<f32>;
  var x_880 : f32;
  var x_892 : f32;
  var x_904 : f32;
  var u_xlat18 : f32;
  var x_1067 : f32;
  var x_1079 : f32;
  var x_1091 : f32;
  var u_xlat7 : vec3<f32>;
  var x_1335 : f32;
  var x_1347 : f32;
  var x_1359 : f32;
  var x_1414 : f32;
  var x_1426 : f32;
  var x_1438 : f32;
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
  let x_670 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0.x = (0.0f < x_670);
  let x_674 : bool = u_xlatb0.x;
  if (x_674) {
    let x_677 : vec2<f32> = u_xlat13;
    let x_679 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_682 : vec2<f32> = (x_677 + -(vec2<f32>(x_679.x, x_679.y)));
    let x_683 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
    let x_685 : vec4<f32> = u_xlat0;
    let x_689 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_691 : vec2<f32> = (abs(vec2<f32>(x_685.x, x_685.y)) * vec2<f32>(x_689.z, x_689.z));
    let x_692 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_692.x, x_691.x, x_691.y, x_692.w);
    let x_695 : f32 = u_xlat0.y;
    let x_698 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat0.x = (x_695 * x_698);
    let x_701 : vec4<f32> = u_xlat0;
    let x_703 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_701.x, x_701.z), vec2<f32>(x_703.x, x_703.z));
    let x_708 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_708) + 1.0f);
    let x_713 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_713, 0.0f);
    let x_717 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_717);
    let x_721 : f32 = u_xlat0.x;
    let x_723 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat0.x = (x_721 * x_723);
    let x_727 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_727);
    let x_731 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat6 = (-(vec3<f32>(x_731.x, x_731.y, x_731.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_736 : vec4<f32> = u_xlat0;
    let x_738 : vec3<f32> = u_xlat6;
    let x_741 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_743 : vec3<f32> = ((vec3<f32>(x_736.x, x_736.x, x_736.x) * x_738) + vec3<f32>(x_741.x, x_741.y, x_741.z));
    let x_744 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
    let x_746 : vec4<f32> = u_xlat0;
    let x_748 : vec4<f32> = u_xlat2;
    let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * vec3<f32>(x_748.x, x_748.y, x_748.z));
    let x_751 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  }
  let x_753 : vec4<f32> = u_xlat2;
  let x_757 : vec4<f32> = x_25.x_Lut_Params;
  let x_759 : vec3<f32> = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(x_757.w, x_757.w, x_757.w));
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_767 : vec4<f32> = u_xlat0;
  let x_774 : vec3<f32> = ((vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_777 : vec3<f32> = u_xlat1;
  let x_778 : vec4<f32> = u_xlat2;
  let x_783 : vec3<f32> = ((x_777 * vec3<f32>(x_778.x, x_778.y, x_778.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_784 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_783.z, x_784.w);
  let x_786 : vec4<f32> = u_xlat0;
  let x_791 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_792 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_794 : vec3<f32> = u_xlat1;
  let x_795 : vec4<f32> = u_xlat0;
  let x_800 : vec3<f32> = ((x_794 * vec3<f32>(x_795.x, x_795.y, x_795.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat2;
  let x_805 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = (vec3<f32>(x_803.x, x_803.y, x_803.z) / vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_814 : vec3<f32> = (vec3<f32>(x_810.x, x_810.y, x_810.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat0;
  let x_819 : vec3<f32> = (vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_820 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat0;
  let x_826 : vec3<f32> = clamp(vec3<f32>(x_822.x, x_822.y, x_822.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_832 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_832);
  let x_834 : bool = u_xlatb18;
  if (x_834) {
    let x_837 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_842 : vec4<f32> = u_xlat0;
    let x_844 : vec3<f32> = log2(vec3<f32>(x_842.x, x_842.y, x_842.z));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_847 : vec4<f32> = u_xlat2;
    let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_852 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
    let x_854 : vec4<f32> = u_xlat2;
    let x_856 : vec3<f32> = exp2(vec3<f32>(x_854.x, x_854.y, x_854.z));
    let x_857 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
    let x_859 : vec4<f32> = u_xlat2;
    let x_866 : vec3<f32> = ((vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_867 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_871 : vec4<f32> = u_xlat0;
    let x_874 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_871.x, x_871.y, x_871.z, x_871.x));
    u_xlatb3 = vec3<bool>(x_874.x, x_874.y, x_874.z);
    let x_877 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_877;
    let x_879 : bool = u_xlatb3.x;
    if (x_879) {
      let x_884 : f32 = u_xlat1.x;
      x_880 = x_884;
    } else {
      let x_887 : f32 = u_xlat2.x;
      x_880 = x_887;
    }
    let x_888 : f32 = x_880;
    hlslcc_movcTemp.x = x_888;
    let x_891 : bool = u_xlatb3.y;
    if (x_891) {
      let x_896 : f32 = u_xlat1.y;
      x_892 = x_896;
    } else {
      let x_899 : f32 = u_xlat2.y;
      x_892 = x_899;
    }
    let x_900 : f32 = x_892;
    hlslcc_movcTemp.y = x_900;
    let x_903 : bool = u_xlatb3.z;
    if (x_903) {
      let x_908 : f32 = u_xlat1.z;
      x_904 = x_908;
    } else {
      let x_911 : f32 = u_xlat2.z;
      x_904 = x_911;
    }
    let x_912 : f32 = x_904;
    hlslcc_movcTemp.z = x_912;
    let x_914 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_914;
    let x_915 : vec3<f32> = u_xlat1;
    let x_918 : vec4<f32> = x_25.x_UserLut_Params;
    let x_920 : vec3<f32> = (vec3<f32>(x_915.z, x_915.x, x_915.y) * vec3<f32>(x_918.z, x_918.z, x_918.z));
    let x_921 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
    let x_925 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_925);
    let x_928 : vec4<f32> = x_25.x_UserLut_Params;
    let x_930 : vec2<f32> = (vec2<f32>(x_928.x, x_928.y) * vec2<f32>(0.5f, 0.5f));
    let x_931 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_930.x, x_931.y, x_931.z, x_930.y);
    let x_933 : vec4<f32> = u_xlat2;
    let x_936 : vec4<f32> = x_25.x_UserLut_Params;
    let x_939 : vec4<f32> = u_xlat2;
    let x_941 : vec2<f32> = ((vec2<f32>(x_933.y, x_933.z) * vec2<f32>(x_936.x, x_936.y)) + vec2<f32>(x_939.x, x_939.w));
    let x_942 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_942.x, x_941.x, x_941.y, x_942.w);
    let x_944 : f32 = u_xlat18;
    let x_946 : f32 = x_25.x_UserLut_Params.y;
    let x_949 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_944 * x_946) + x_949);
    let x_956 : vec4<f32> = u_xlat2;
    let x_958 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_956.x, x_956.z), 0.0f);
    let x_959 : vec3<f32> = vec3<f32>(x_958.x, x_958.y, x_958.z);
    let x_960 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
    let x_963 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_963;
    u_xlat4.y = 0.0f;
    let x_966 : vec4<f32> = u_xlat2;
    let x_968 : vec2<f32> = u_xlat4;
    let x_969 : vec2<f32> = (vec2<f32>(x_966.x, x_966.z) + x_968);
    let x_970 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_970.w);
    let x_975 : vec4<f32> = u_xlat2;
    let x_977 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_975.x, x_975.y), 0.0f);
    let x_978 : vec3<f32> = vec3<f32>(x_977.x, x_977.y, x_977.z);
    let x_979 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_982 : f32 = u_xlat1.z;
    let x_984 : f32 = x_25.x_UserLut_Params.z;
    let x_986 : f32 = u_xlat18;
    u_xlat18 = ((x_982 * x_984) + -(x_986));
    let x_989 : vec4<f32> = u_xlat3;
    let x_992 : vec4<f32> = u_xlat2;
    let x_994 : vec3<f32> = (-(vec3<f32>(x_989.x, x_989.y, x_989.z)) + vec3<f32>(x_992.x, x_992.y, x_992.z));
    let x_995 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_997 : f32 = u_xlat18;
    let x_999 : vec4<f32> = u_xlat2;
    let x_1002 : vec4<f32> = u_xlat3;
    let x_1004 : vec3<f32> = ((vec3<f32>(x_997, x_997, x_997) * vec3<f32>(x_999.x, x_999.y, x_999.z)) + vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
    let x_1005 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
    let x_1007 : vec3<f32> = u_xlat1;
    let x_1009 : vec4<f32> = u_xlat2;
    let x_1011 : vec3<f32> = (-(x_1007) + vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
    let x_1012 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
    let x_1015 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1017 : vec4<f32> = u_xlat2;
    let x_1020 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1015.w, x_1015.w, x_1015.w) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z)) + x_1020);
    let x_1022 : vec3<f32> = u_xlat1;
    let x_1025 : vec3<f32> = (x_1022 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1026 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
    let x_1028 : vec3<f32> = u_xlat1;
    let x_1031 : vec3<f32> = (x_1028 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1032 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
    let x_1034 : vec4<f32> = u_xlat3;
    let x_1038 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1039 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
    let x_1041 : vec4<f32> = u_xlat3;
    let x_1044 : vec3<f32> = log2(abs(vec3<f32>(x_1041.x, x_1041.y, x_1041.z)));
    let x_1045 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1047 : vec4<f32> = u_xlat3;
    let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1052 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
    let x_1054 : vec4<f32> = u_xlat3;
    let x_1056 : vec3<f32> = exp2(vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
    let x_1057 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1061 : vec3<f32> = u_xlat1;
    let x_1063 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1061.x));
    u_xlatb1 = vec3<bool>(x_1063.x, x_1063.y, x_1063.z);
    let x_1066 : bool = u_xlatb1.x;
    if (x_1066) {
      let x_1071 : f32 = u_xlat2.x;
      x_1067 = x_1071;
    } else {
      let x_1074 : f32 = u_xlat3.x;
      x_1067 = x_1074;
    }
    let x_1075 : f32 = x_1067;
    u_xlat0.x = x_1075;
    let x_1078 : bool = u_xlatb1.y;
    if (x_1078) {
      let x_1083 : f32 = u_xlat2.y;
      x_1079 = x_1083;
    } else {
      let x_1086 : f32 = u_xlat3.y;
      x_1079 = x_1086;
    }
    let x_1087 : f32 = x_1079;
    u_xlat0.y = x_1087;
    let x_1090 : bool = u_xlatb1.z;
    if (x_1090) {
      let x_1095 : f32 = u_xlat2.z;
      x_1091 = x_1095;
    } else {
      let x_1098 : f32 = u_xlat3.z;
      x_1091 = x_1098;
    }
    let x_1099 : f32 = x_1091;
    u_xlat0.z = x_1099;
  }
  let x_1101 : vec4<f32> = u_xlat0;
  let x_1104 : vec4<f32> = x_25.x_Lut_Params;
  let x_1106 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(x_1104.z, x_1104.z, x_1104.z));
  let x_1107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1106.z);
  let x_1110 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1110);
  let x_1113 : vec4<f32> = x_25.x_Lut_Params;
  let x_1115 : vec2<f32> = (vec2<f32>(x_1113.x, x_1113.y) * vec2<f32>(0.5f, 0.5f));
  let x_1116 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1115.x, x_1115.y, x_1116.z);
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1121 : vec4<f32> = x_25.x_Lut_Params;
  let x_1124 : vec3<f32> = u_xlat1;
  let x_1126 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.y) * vec2<f32>(x_1121.x, x_1121.y)) + vec2<f32>(x_1124.x, x_1124.y));
  let x_1127 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1127.x, x_1126.x, x_1126.y);
  let x_1129 : f32 = u_xlat18;
  let x_1131 : f32 = x_25.x_Lut_Params.y;
  let x_1134 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1129 * x_1131) + x_1134);
  let x_1141 : vec3<f32> = u_xlat1;
  let x_1143 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1141.x, x_1141.z), 0.0f);
  let x_1144 : vec3<f32> = vec3<f32>(x_1143.x, x_1143.y, x_1143.z);
  let x_1145 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
  let x_1148 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1148;
  u_xlat0.y = 0.0f;
  let x_1151 : vec4<f32> = u_xlat0;
  let x_1153 : vec3<f32> = u_xlat1;
  let x_1155 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) + vec2<f32>(x_1153.x, x_1153.z));
  let x_1156 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
  let x_1161 : vec4<f32> = u_xlat0;
  let x_1163 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1161.x, x_1161.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1163.x, x_1163.y, x_1163.z);
  let x_1166 : f32 = u_xlat0.z;
  let x_1168 : f32 = x_25.x_Lut_Params.z;
  let x_1170 : f32 = u_xlat18;
  u_xlat0.x = ((x_1166 * x_1168) + -(x_1170));
  let x_1174 : vec4<f32> = u_xlat2;
  let x_1177 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1174.x, x_1174.y, x_1174.z)) + x_1177);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1181 : vec3<f32> = u_xlat6;
  let x_1183 : vec4<f32> = u_xlat2;
  let x_1185 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.x, x_1179.x) * x_1181) + vec3<f32>(x_1183.x, x_1183.y, x_1183.z));
  let x_1186 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1188 : vec2<f32> = vs_TEXCOORD0;
  let x_1191 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1195 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1197 : vec2<f32> = ((x_1188 * vec2<f32>(x_1191.x, x_1191.y)) + vec2<f32>(x_1195.z, x_1195.w));
  let x_1198 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1197.x, x_1197.y, x_1198.z);
  let x_1205 : vec3<f32> = u_xlat1;
  let x_1208 : f32 = x_25.x_GlobalMipBias.x;
  let x_1209 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1205.x, x_1205.y), x_1208);
  u_xlat18 = x_1209.w;
  let x_1211 : f32 = u_xlat18;
  u_xlat18 = (x_1211 + -0.5f);
  let x_1213 : f32 = u_xlat18;
  let x_1214 : f32 = u_xlat18;
  u_xlat18 = (x_1213 + x_1214);
  let x_1216 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1216.x, x_1216.y, x_1216.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1225 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1225);
  let x_1230 : f32 = x_25.x_Grain_Params.y;
  let x_1232 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1230 * -(x_1232)) + 1.0f);
  let x_1238 : f32 = u_xlat18;
  let x_1240 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1238, x_1238, x_1238) * vec3<f32>(x_1240.x, x_1240.y, x_1240.z));
  let x_1243 : vec3<f32> = u_xlat7;
  let x_1246 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1243 * vec3<f32>(x_1246.x, x_1246.x, x_1246.x));
  let x_1249 : vec3<f32> = u_xlat7;
  let x_1250 : vec3<f32> = u_xlat1;
  let x_1253 : vec4<f32> = u_xlat0;
  let x_1255 : vec3<f32> = ((x_1249 * vec3<f32>(x_1250.x, x_1250.x, x_1250.x)) + vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1258 : vec2<f32> = vs_TEXCOORD0;
  let x_1261 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1265 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1267 : vec2<f32> = ((x_1258 * vec2<f32>(x_1261.x, x_1261.y)) + vec2<f32>(x_1265.z, x_1265.w));
  let x_1268 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1267.x, x_1267.y, x_1268.z);
  let x_1275 : vec3<f32> = u_xlat1;
  let x_1278 : f32 = x_25.x_GlobalMipBias.x;
  let x_1279 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1275.x, x_1275.y), x_1278);
  u_xlat18 = x_1279.w;
  let x_1281 : f32 = u_xlat18;
  u_xlat18 = ((x_1281 * 2.0f) + -1.0f);
  let x_1284 : f32 = u_xlat18;
  u_xlatb1.x = (x_1284 >= 0.0f);
  let x_1288 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1288);
  let x_1291 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1291)) + 1.0f);
  let x_1295 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1295);
  let x_1297 : f32 = u_xlat18;
  u_xlat18 = (-(x_1297) + 1.0f);
  let x_1300 : f32 = u_xlat18;
  let x_1302 : f32 = u_xlat1.x;
  u_xlat18 = (x_1300 * x_1302);
  let x_1304 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1307 : vec4<f32> = u_xlat0;
  let x_1310 : vec3<f32> = log2(abs(vec3<f32>(x_1307.x, x_1307.y, x_1307.z)));
  let x_1311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1313 : vec4<f32> = u_xlat2;
  let x_1315 : vec3<f32> = (vec3<f32>(x_1313.x, x_1313.y, x_1313.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1316 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1315.x, x_1315.y, x_1315.z, x_1316.w);
  let x_1318 : vec4<f32> = u_xlat2;
  let x_1320 : vec3<f32> = exp2(vec3<f32>(x_1318.x, x_1318.y, x_1318.z));
  let x_1321 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1320.x, x_1320.y, x_1320.z, x_1321.w);
  let x_1323 : vec4<f32> = u_xlat2;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1323.x, x_1323.y, x_1323.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat0;
  let x_1331 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1329.x));
  u_xlatb0 = vec3<bool>(x_1331.x, x_1331.y, x_1331.z);
  let x_1334 : bool = u_xlatb0.x;
  if (x_1334) {
    let x_1339 : f32 = u_xlat1.x;
    x_1335 = x_1339;
  } else {
    let x_1342 : f32 = u_xlat2.x;
    x_1335 = x_1342;
  }
  let x_1343 : f32 = x_1335;
  u_xlat0.x = x_1343;
  let x_1346 : bool = u_xlatb0.y;
  if (x_1346) {
    let x_1351 : f32 = u_xlat1.y;
    x_1347 = x_1351;
  } else {
    let x_1354 : f32 = u_xlat2.y;
    x_1347 = x_1354;
  }
  let x_1355 : f32 = x_1347;
  u_xlat0.y = x_1355;
  let x_1358 : bool = u_xlatb0.z;
  if (x_1358) {
    let x_1363 : f32 = u_xlat1.z;
    x_1359 = x_1363;
  } else {
    let x_1366 : f32 = u_xlat2.z;
    x_1359 = x_1366;
  }
  let x_1367 : f32 = x_1359;
  u_xlat0.z = x_1367;
  let x_1369 : f32 = u_xlat18;
  let x_1374 : vec4<f32> = u_xlat0;
  let x_1376 : vec3<f32> = ((vec3<f32>(x_1369, x_1369, x_1369) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1374.x, x_1374.y, x_1374.z));
  let x_1377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1376.x, x_1376.y, x_1376.z, x_1377.w);
  let x_1379 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1379.x, x_1379.y, x_1379.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1382 : vec4<f32> = u_xlat0;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec4<f32> = u_xlat2;
  let x_1389 : vec3<f32> = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
  let x_1392 : vec4<f32> = u_xlat2;
  let x_1395 : vec3<f32> = log2(abs(vec3<f32>(x_1392.x, x_1392.y, x_1392.z)));
  let x_1396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : vec4<f32> = u_xlat2;
  let x_1400 : vec3<f32> = (vec3<f32>(x_1398.x, x_1398.y, x_1398.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1403 : vec4<f32> = u_xlat2;
  let x_1405 : vec3<f32> = exp2(vec3<f32>(x_1403.x, x_1403.y, x_1403.z));
  let x_1406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1405.x, x_1405.y, x_1405.z, x_1406.w);
  let x_1408 : vec4<f32> = u_xlat0;
  let x_1410 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1408.x));
  u_xlatb0 = vec3<bool>(x_1410.x, x_1410.y, x_1410.z);
  let x_1413 : bool = u_xlatb0.x;
  if (x_1413) {
    let x_1418 : f32 = u_xlat1.x;
    x_1414 = x_1418;
  } else {
    let x_1421 : f32 = u_xlat2.x;
    x_1414 = x_1421;
  }
  let x_1422 : f32 = x_1414;
  u_xlat0.x = x_1422;
  let x_1425 : bool = u_xlatb0.y;
  if (x_1425) {
    let x_1430 : f32 = u_xlat1.y;
    x_1426 = x_1430;
  } else {
    let x_1433 : f32 = u_xlat2.y;
    x_1426 = x_1433;
  }
  let x_1434 : f32 = x_1426;
  u_xlat0.y = x_1434;
  let x_1437 : bool = u_xlatb0.z;
  if (x_1437) {
    let x_1442 : f32 = u_xlat1.z;
    x_1438 = x_1442;
  } else {
    let x_1445 : f32 = u_xlat2.z;
    x_1438 = x_1445;
  }
  let x_1446 : f32 = x_1438;
  u_xlat0.z = x_1446;
  let x_1450 : vec4<f32> = u_xlat0;
  let x_1453 : vec3<f32> = max(vec3<f32>(x_1450.x, x_1450.y, x_1450.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1454 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
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

