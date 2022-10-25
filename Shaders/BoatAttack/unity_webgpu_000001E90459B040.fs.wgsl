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
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(5) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_PointRepeat : sampler;

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
  var x_1026 : f32;
  var x_1038 : f32;
  var x_1050 : f32;
  var x_1212 : f32;
  var x_1224 : f32;
  var x_1236 : f32;
  var x_1277 : f32;
  var x_1289 : f32;
  var x_1301 : f32;
  var x_1388 : f32;
  var x_1400 : f32;
  var x_1412 : f32;
  var x_1467 : f32;
  var x_1479 : f32;
  var x_1491 : f32;
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
  let x_717 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
  let x_719 : vec2<f32> = u_xlat13;
  let x_722 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_726 : vec4<f32> = x_25.x_LensDirt_Params;
  let x_728 : vec2<f32> = ((x_719 * vec2<f32>(x_722.x, x_722.y)) + vec2<f32>(x_726.z, x_726.w));
  let x_729 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_728.x, x_728.y, x_729.z);
  let x_735 : vec3<f32> = u_xlat1;
  let x_738 : f32 = x_25.x_GlobalMipBias.x;
  let x_739 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_735.x, x_735.y), x_738);
  let x_740 : vec3<f32> = vec3<f32>(x_739.x, x_739.y, x_739.z);
  let x_741 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_743 : vec4<f32> = u_xlat3;
  let x_747 : f32 = x_25.x_LensDirt_Intensity;
  let x_749 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(x_747, x_747, x_747));
  let x_750 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  let x_752 : vec4<f32> = u_xlat3;
  let x_754 : vec4<f32> = u_xlat0;
  let x_757 : vec4<f32> = u_xlat2;
  let x_759 : vec3<f32> = ((vec3<f32>(x_752.x, x_752.y, x_752.z) * vec3<f32>(x_754.x, x_754.y, x_754.z)) + vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_765 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_765);
  let x_767 : bool = u_xlatb18;
  if (x_767) {
    let x_770 : vec2<f32> = u_xlat13;
    let x_772 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_775 : vec2<f32> = (x_770 + -(vec2<f32>(x_772.x, x_772.y)));
    let x_776 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_775.x, x_775.y, x_776.z);
    let x_778 : vec3<f32> = u_xlat1;
    let x_782 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_784 : vec2<f32> = (abs(vec2<f32>(x_778.x, x_778.y)) * vec2<f32>(x_782.z, x_782.z));
    let x_785 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_785.x, x_784.x, x_784.y);
    let x_788 : f32 = u_xlat1.y;
    let x_791 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_788 * x_791);
    let x_795 : vec3<f32> = u_xlat1;
    let x_797 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_795.x, x_795.z), vec2<f32>(x_797.x, x_797.z));
    let x_800 : f32 = u_xlat18;
    u_xlat18 = (-(x_800) + 1.0f);
    let x_803 : f32 = u_xlat18;
    u_xlat18 = max(x_803, 0.0f);
    let x_805 : f32 = u_xlat18;
    u_xlat18 = log2(x_805);
    let x_807 : f32 = u_xlat18;
    let x_809 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat18 = (x_807 * x_809);
    let x_811 : f32 = u_xlat18;
    u_xlat18 = exp2(x_811);
    let x_814 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_814.x, x_814.y, x_814.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_819 : f32 = u_xlat18;
    let x_821 : vec3<f32> = u_xlat1;
    let x_824 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_819, x_819, x_819) * x_821) + vec3<f32>(x_824.x, x_824.y, x_824.z));
    let x_827 : vec4<f32> = u_xlat0;
    let x_829 : vec3<f32> = u_xlat1;
    let x_830 : vec3<f32> = (vec3<f32>(x_827.x, x_827.y, x_827.z) * x_829);
    let x_831 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  }
  let x_833 : vec4<f32> = u_xlat0;
  let x_837 : vec4<f32> = x_25.x_Lut_Params;
  let x_839 : vec3<f32> = (vec3<f32>(x_833.z, x_833.x, x_833.y) * vec3<f32>(x_837.w, x_837.w, x_837.w));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_850 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat0;
  let x_855 : vec3<f32> = max(vec3<f32>(x_852.x, x_852.y, x_852.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_856 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat0;
  let x_860 : vec3<f32> = log2(vec3<f32>(x_858.x, x_858.y, x_858.z));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat0;
  let x_870 : vec3<f32> = ((vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat0;
  let x_877 : vec3<f32> = clamp(vec3<f32>(x_873.x, x_873.y, x_873.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat0;
  let x_883 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_883.z, x_883.z, x_883.z));
  let x_887 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_887);
  let x_891 : vec4<f32> = x_25.x_Lut_Params;
  let x_893 : vec2<f32> = (vec2<f32>(x_891.x, x_891.y) * vec2<f32>(0.5f, 0.5f));
  let x_894 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_893.x, x_893.y, x_894.z);
  let x_896 : vec3<f32> = u_xlat6;
  let x_899 : vec4<f32> = x_25.x_Lut_Params;
  let x_902 : vec3<f32> = u_xlat1;
  let x_904 : vec2<f32> = ((vec2<f32>(x_896.y, x_896.z) * vec2<f32>(x_899.x, x_899.y)) + vec2<f32>(x_902.x, x_902.y));
  let x_905 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_905.x, x_904.x, x_904.y);
  let x_908 : f32 = u_xlat6.x;
  let x_910 : f32 = x_25.x_Lut_Params.y;
  let x_913 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_908 * x_910) + x_913);
  let x_920 : vec3<f32> = u_xlat1;
  let x_922 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_920.x, x_920.z), 0.0f);
  let x_923 : vec3<f32> = vec3<f32>(x_922.x, x_922.y, x_922.z);
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_927 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_927;
  u_xlat3.y = 0.0f;
  let x_930 : vec3<f32> = u_xlat1;
  let x_932 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_930.x, x_930.z) + vec2<f32>(x_932.x, x_932.y));
  let x_938 : vec2<f32> = u_xlat12;
  let x_939 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_938, 0.0f);
  u_xlat1 = vec3<f32>(x_939.x, x_939.y, x_939.z);
  let x_942 : f32 = u_xlat0.x;
  let x_944 : f32 = x_25.x_Lut_Params.z;
  let x_947 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_942 * x_944) + -(x_947));
  let x_951 : vec4<f32> = u_xlat2;
  let x_954 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_951.x, x_951.y, x_951.z)) + x_954);
  let x_956 : vec4<f32> = u_xlat0;
  let x_958 : vec3<f32> = u_xlat6;
  let x_960 : vec4<f32> = u_xlat2;
  let x_962 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.x, x_956.x) * x_958) + vec3<f32>(x_960.x, x_960.y, x_960.z));
  let x_963 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_967 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_967);
  let x_969 : bool = u_xlatb18;
  if (x_969) {
    let x_972 : vec4<f32> = u_xlat0;
    let x_973 : vec3<f32> = vec3<f32>(x_972.x, x_972.y, x_972.z);
    let x_974 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
    let x_976 : vec4<f32> = u_xlat0;
    let x_980 : vec3<f32> = clamp(vec3<f32>(x_976.x, x_976.y, x_976.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_981 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
    let x_983 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_988 : vec4<f32> = u_xlat0;
    let x_990 : vec3<f32> = log2(vec3<f32>(x_988.x, x_988.y, x_988.z));
    let x_991 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
    let x_993 : vec4<f32> = u_xlat2;
    let x_997 : vec3<f32> = (vec3<f32>(x_993.x, x_993.y, x_993.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_998 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1000 : vec4<f32> = u_xlat2;
    let x_1002 : vec3<f32> = exp2(vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
    let x_1003 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
    let x_1005 : vec4<f32> = u_xlat2;
    let x_1012 : vec3<f32> = ((vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_1013 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
    let x_1017 : vec4<f32> = u_xlat0;
    let x_1020 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1017.x));
    u_xlatb3 = vec3<bool>(x_1020.x, x_1020.y, x_1020.z);
    let x_1023 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_1023;
    let x_1025 : bool = u_xlatb3.x;
    if (x_1025) {
      let x_1030 : f32 = u_xlat1.x;
      x_1026 = x_1030;
    } else {
      let x_1033 : f32 = u_xlat2.x;
      x_1026 = x_1033;
    }
    let x_1034 : f32 = x_1026;
    hlslcc_movcTemp.x = x_1034;
    let x_1037 : bool = u_xlatb3.y;
    if (x_1037) {
      let x_1042 : f32 = u_xlat1.y;
      x_1038 = x_1042;
    } else {
      let x_1045 : f32 = u_xlat2.y;
      x_1038 = x_1045;
    }
    let x_1046 : f32 = x_1038;
    hlslcc_movcTemp.y = x_1046;
    let x_1049 : bool = u_xlatb3.z;
    if (x_1049) {
      let x_1054 : f32 = u_xlat1.z;
      x_1050 = x_1054;
    } else {
      let x_1057 : f32 = u_xlat2.z;
      x_1050 = x_1057;
    }
    let x_1058 : f32 = x_1050;
    hlslcc_movcTemp.z = x_1058;
    let x_1060 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1060;
    let x_1061 : vec3<f32> = u_xlat1;
    let x_1064 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1066 : vec3<f32> = (vec3<f32>(x_1061.z, x_1061.x, x_1061.y) * vec3<f32>(x_1064.z, x_1064.z, x_1064.z));
    let x_1067 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
    let x_1070 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1070);
    let x_1073 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1075 : vec2<f32> = (vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(0.5f, 0.5f));
    let x_1076 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1075.x, x_1076.y, x_1076.z, x_1075.y);
    let x_1078 : vec4<f32> = u_xlat2;
    let x_1081 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1084 : vec4<f32> = u_xlat2;
    let x_1086 : vec2<f32> = ((vec2<f32>(x_1078.y, x_1078.z) * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1084.x, x_1084.w));
    let x_1087 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1087.x, x_1086.x, x_1086.y, x_1087.w);
    let x_1089 : f32 = u_xlat18;
    let x_1091 : f32 = x_25.x_UserLut_Params.y;
    let x_1094 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1089 * x_1091) + x_1094);
    let x_1101 : vec4<f32> = u_xlat2;
    let x_1103 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1101.x, x_1101.z), 0.0f);
    let x_1104 : vec3<f32> = vec3<f32>(x_1103.x, x_1103.y, x_1103.z);
    let x_1105 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1108 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1108;
    u_xlat4.y = 0.0f;
    let x_1111 : vec4<f32> = u_xlat2;
    let x_1113 : vec2<f32> = u_xlat4;
    let x_1114 : vec2<f32> = (vec2<f32>(x_1111.x, x_1111.z) + x_1113);
    let x_1115 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1114.x, x_1114.y, x_1115.z, x_1115.w);
    let x_1120 : vec4<f32> = u_xlat2;
    let x_1122 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1120.x, x_1120.y), 0.0f);
    let x_1123 : vec3<f32> = vec3<f32>(x_1122.x, x_1122.y, x_1122.z);
    let x_1124 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
    let x_1127 : f32 = u_xlat1.z;
    let x_1129 : f32 = x_25.x_UserLut_Params.z;
    let x_1131 : f32 = u_xlat18;
    u_xlat18 = ((x_1127 * x_1129) + -(x_1131));
    let x_1134 : vec4<f32> = u_xlat3;
    let x_1137 : vec4<f32> = u_xlat2;
    let x_1139 : vec3<f32> = (-(vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(x_1137.x, x_1137.y, x_1137.z));
    let x_1140 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1140.w);
    let x_1142 : f32 = u_xlat18;
    let x_1144 : vec4<f32> = u_xlat2;
    let x_1147 : vec4<f32> = u_xlat3;
    let x_1149 : vec3<f32> = ((vec3<f32>(x_1142, x_1142, x_1142) * vec3<f32>(x_1144.x, x_1144.y, x_1144.z)) + vec3<f32>(x_1147.x, x_1147.y, x_1147.z));
    let x_1150 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1149.x, x_1149.y, x_1149.z, x_1150.w);
    let x_1152 : vec3<f32> = u_xlat1;
    let x_1154 : vec4<f32> = u_xlat2;
    let x_1156 : vec3<f32> = (-(x_1152) + vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
    let x_1160 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1162 : vec4<f32> = u_xlat2;
    let x_1165 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1160.w, x_1160.w, x_1160.w) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z)) + x_1165);
    let x_1167 : vec3<f32> = u_xlat1;
    let x_1170 : vec3<f32> = (x_1167 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1171 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1171.w);
    let x_1173 : vec3<f32> = u_xlat1;
    let x_1176 : vec3<f32> = (x_1173 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1177 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
    let x_1179 : vec4<f32> = u_xlat3;
    let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1184 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
    let x_1186 : vec4<f32> = u_xlat3;
    let x_1189 : vec3<f32> = log2(abs(vec3<f32>(x_1186.x, x_1186.y, x_1186.z)));
    let x_1190 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1190.w);
    let x_1192 : vec4<f32> = u_xlat3;
    let x_1196 : vec3<f32> = (vec3<f32>(x_1192.x, x_1192.y, x_1192.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1197 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1197.w);
    let x_1199 : vec4<f32> = u_xlat3;
    let x_1201 : vec3<f32> = exp2(vec3<f32>(x_1199.x, x_1199.y, x_1199.z));
    let x_1202 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
    let x_1206 : vec3<f32> = u_xlat1;
    let x_1208 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1206.x, x_1206.y, x_1206.z, x_1206.x));
    u_xlatb1 = vec3<bool>(x_1208.x, x_1208.y, x_1208.z);
    let x_1211 : bool = u_xlatb1.x;
    if (x_1211) {
      let x_1216 : f32 = u_xlat2.x;
      x_1212 = x_1216;
    } else {
      let x_1219 : f32 = u_xlat3.x;
      x_1212 = x_1219;
    }
    let x_1220 : f32 = x_1212;
    u_xlat0.x = x_1220;
    let x_1223 : bool = u_xlatb1.y;
    if (x_1223) {
      let x_1228 : f32 = u_xlat2.y;
      x_1224 = x_1228;
    } else {
      let x_1231 : f32 = u_xlat3.y;
      x_1224 = x_1231;
    }
    let x_1232 : f32 = x_1224;
    u_xlat0.y = x_1232;
    let x_1235 : bool = u_xlatb1.z;
    if (x_1235) {
      let x_1240 : f32 = u_xlat2.z;
      x_1236 = x_1240;
    } else {
      let x_1243 : f32 = u_xlat3.z;
      x_1236 = x_1243;
    }
    let x_1244 : f32 = x_1236;
    u_xlat0.z = x_1244;
  }
  let x_1246 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1246.x, x_1246.y, x_1246.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1249 : vec4<f32> = u_xlat0;
  let x_1252 : vec3<f32> = log2(abs(vec3<f32>(x_1249.x, x_1249.y, x_1249.z)));
  let x_1253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1252.x, x_1252.y, x_1252.z, x_1253.w);
  let x_1255 : vec4<f32> = u_xlat2;
  let x_1257 : vec3<f32> = (vec3<f32>(x_1255.x, x_1255.y, x_1255.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1258 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1258.w);
  let x_1260 : vec4<f32> = u_xlat2;
  let x_1262 : vec3<f32> = exp2(vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1263.w);
  let x_1265 : vec4<f32> = u_xlat2;
  let x_1268 : vec3<f32> = ((vec3<f32>(x_1265.x, x_1265.y, x_1265.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec4<f32> = u_xlat0;
  let x_1273 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.x));
  u_xlatb0 = vec3<bool>(x_1273.x, x_1273.y, x_1273.z);
  let x_1276 : bool = u_xlatb0.x;
  if (x_1276) {
    let x_1281 : f32 = u_xlat1.x;
    x_1277 = x_1281;
  } else {
    let x_1284 : f32 = u_xlat2.x;
    x_1277 = x_1284;
  }
  let x_1285 : f32 = x_1277;
  u_xlat0.x = x_1285;
  let x_1288 : bool = u_xlatb0.y;
  if (x_1288) {
    let x_1293 : f32 = u_xlat1.y;
    x_1289 = x_1293;
  } else {
    let x_1296 : f32 = u_xlat2.y;
    x_1289 = x_1296;
  }
  let x_1297 : f32 = x_1289;
  u_xlat0.y = x_1297;
  let x_1300 : bool = u_xlatb0.z;
  if (x_1300) {
    let x_1305 : f32 = u_xlat1.z;
    x_1301 = x_1305;
  } else {
    let x_1308 : f32 = u_xlat2.z;
    x_1301 = x_1308;
  }
  let x_1309 : f32 = x_1301;
  u_xlat0.z = x_1309;
  let x_1311 : vec2<f32> = vs_TEXCOORD0;
  let x_1314 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1318 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1320 : vec2<f32> = ((x_1311 * vec2<f32>(x_1314.x, x_1314.y)) + vec2<f32>(x_1318.z, x_1318.w));
  let x_1321 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1320.x, x_1320.y, x_1321.z);
  let x_1328 : vec3<f32> = u_xlat1;
  let x_1331 : f32 = x_25.x_GlobalMipBias.x;
  let x_1332 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1328.x, x_1328.y), x_1331);
  u_xlat18 = x_1332.w;
  let x_1334 : f32 = u_xlat18;
  u_xlat18 = ((x_1334 * 2.0f) + -1.0f);
  let x_1337 : f32 = u_xlat18;
  u_xlatb1.x = (x_1337 >= 0.0f);
  let x_1341 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1341);
  let x_1344 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1344)) + 1.0f);
  let x_1348 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1348);
  let x_1350 : f32 = u_xlat18;
  u_xlat18 = (-(x_1350) + 1.0f);
  let x_1353 : f32 = u_xlat18;
  let x_1355 : f32 = u_xlat1.x;
  u_xlat18 = (x_1353 * x_1355);
  let x_1357 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1357.x, x_1357.y, x_1357.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1360 : vec4<f32> = u_xlat0;
  let x_1363 : vec3<f32> = log2(abs(vec3<f32>(x_1360.x, x_1360.y, x_1360.z)));
  let x_1364 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec4<f32> = u_xlat2;
  let x_1368 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
  let x_1371 : vec4<f32> = u_xlat2;
  let x_1373 : vec3<f32> = exp2(vec3<f32>(x_1371.x, x_1371.y, x_1371.z));
  let x_1374 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : vec4<f32> = u_xlat2;
  let x_1379 : vec3<f32> = ((vec3<f32>(x_1376.x, x_1376.y, x_1376.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat0;
  let x_1384 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1382.x, x_1382.y, x_1382.z, x_1382.x));
  u_xlatb0 = vec3<bool>(x_1384.x, x_1384.y, x_1384.z);
  let x_1387 : bool = u_xlatb0.x;
  if (x_1387) {
    let x_1392 : f32 = u_xlat1.x;
    x_1388 = x_1392;
  } else {
    let x_1395 : f32 = u_xlat2.x;
    x_1388 = x_1395;
  }
  let x_1396 : f32 = x_1388;
  u_xlat0.x = x_1396;
  let x_1399 : bool = u_xlatb0.y;
  if (x_1399) {
    let x_1404 : f32 = u_xlat1.y;
    x_1400 = x_1404;
  } else {
    let x_1407 : f32 = u_xlat2.y;
    x_1400 = x_1407;
  }
  let x_1408 : f32 = x_1400;
  u_xlat0.y = x_1408;
  let x_1411 : bool = u_xlatb0.z;
  if (x_1411) {
    let x_1416 : f32 = u_xlat1.z;
    x_1412 = x_1416;
  } else {
    let x_1419 : f32 = u_xlat2.z;
    x_1412 = x_1419;
  }
  let x_1420 : f32 = x_1412;
  u_xlat0.z = x_1420;
  let x_1422 : f32 = u_xlat18;
  let x_1427 : vec4<f32> = u_xlat0;
  let x_1429 : vec3<f32> = ((vec3<f32>(x_1422, x_1422, x_1422) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1427.x, x_1427.y, x_1427.z));
  let x_1430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1429.x, x_1429.y, x_1429.z, x_1430.w);
  let x_1432 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1432.x, x_1432.y, x_1432.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1435 : vec4<f32> = u_xlat0;
  let x_1437 : vec3<f32> = (vec3<f32>(x_1435.x, x_1435.y, x_1435.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1440 : vec4<f32> = u_xlat2;
  let x_1442 : vec3<f32> = (vec3<f32>(x_1440.x, x_1440.y, x_1440.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1443 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1442.x, x_1442.y, x_1442.z, x_1443.w);
  let x_1445 : vec4<f32> = u_xlat2;
  let x_1448 : vec3<f32> = log2(abs(vec3<f32>(x_1445.x, x_1445.y, x_1445.z)));
  let x_1449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
  let x_1451 : vec4<f32> = u_xlat2;
  let x_1453 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1454 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1453.x, x_1453.y, x_1453.z, x_1454.w);
  let x_1456 : vec4<f32> = u_xlat2;
  let x_1458 : vec3<f32> = exp2(vec3<f32>(x_1456.x, x_1456.y, x_1456.z));
  let x_1459 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1458.x, x_1458.y, x_1458.z, x_1459.w);
  let x_1461 : vec4<f32> = u_xlat0;
  let x_1463 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1461.x));
  u_xlatb0 = vec3<bool>(x_1463.x, x_1463.y, x_1463.z);
  let x_1466 : bool = u_xlatb0.x;
  if (x_1466) {
    let x_1471 : f32 = u_xlat1.x;
    x_1467 = x_1471;
  } else {
    let x_1474 : f32 = u_xlat2.x;
    x_1467 = x_1474;
  }
  let x_1475 : f32 = x_1467;
  u_xlat0.x = x_1475;
  let x_1478 : bool = u_xlatb0.y;
  if (x_1478) {
    let x_1483 : f32 = u_xlat1.y;
    x_1479 = x_1483;
  } else {
    let x_1486 : f32 = u_xlat2.y;
    x_1479 = x_1486;
  }
  let x_1487 : f32 = x_1479;
  u_xlat0.y = x_1487;
  let x_1490 : bool = u_xlatb0.z;
  if (x_1490) {
    let x_1495 : f32 = u_xlat1.z;
    x_1491 = x_1495;
  } else {
    let x_1498 : f32 = u_xlat2.z;
    x_1491 = x_1498;
  }
  let x_1499 : f32 = x_1491;
  u_xlat0.z = x_1499;
  let x_1503 : vec4<f32> = u_xlat0;
  let x_1505 : vec3<f32> = max(vec3<f32>(x_1503.x, x_1503.y, x_1503.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1506 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1505.x, x_1505.y, x_1505.z, x_1506.w);
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

