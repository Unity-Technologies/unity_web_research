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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

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
  var x_959 : f32;
  var x_971 : f32;
  var x_983 : f32;
  var x_1145 : f32;
  var x_1157 : f32;
  var x_1169 : f32;
  var x_1297 : f32;
  var x_1309 : f32;
  var x_1321 : f32;
  var x_1408 : f32;
  var x_1420 : f32;
  var x_1432 : f32;
  var x_1487 : f32;
  var x_1499 : f32;
  var x_1511 : f32;
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
  let x_839 : vec3<f32> = (vec3<f32>(x_833.x, x_833.y, x_833.z) * vec3<f32>(x_837.w, x_837.w, x_837.w));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_847 : vec4<f32> = u_xlat0;
  let x_854 : vec3<f32> = ((vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_855 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec3<f32> = u_xlat1;
  let x_858 : vec4<f32> = u_xlat2;
  let x_863 : vec3<f32> = ((x_857 * vec3<f32>(x_858.x, x_858.y, x_858.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat0;
  let x_871 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_872 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec3<f32> = u_xlat1;
  let x_875 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = ((x_874 * vec3<f32>(x_875.x, x_875.y, x_875.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_883 : vec4<f32> = u_xlat2;
  let x_885 : vec4<f32> = u_xlat0;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) / vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  let x_890 : vec4<f32> = u_xlat0;
  let x_894 : vec3<f32> = (vec3<f32>(x_890.x, x_890.y, x_890.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_895 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_897 : vec4<f32> = u_xlat0;
  let x_899 : vec3<f32> = (vec3<f32>(x_897.x, x_897.y, x_897.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat0;
  let x_906 : vec3<f32> = clamp(vec3<f32>(x_902.x, x_902.y, x_902.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_907 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_911 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_911);
  let x_913 : bool = u_xlatb18;
  if (x_913) {
    let x_916 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_921 : vec4<f32> = u_xlat0;
    let x_923 : vec3<f32> = log2(vec3<f32>(x_921.x, x_921.y, x_921.z));
    let x_924 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
    let x_926 : vec4<f32> = u_xlat2;
    let x_930 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_931 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
    let x_933 : vec4<f32> = u_xlat2;
    let x_935 : vec3<f32> = exp2(vec3<f32>(x_933.x, x_933.y, x_933.z));
    let x_936 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_938 : vec4<f32> = u_xlat2;
    let x_945 : vec3<f32> = ((vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_946 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
    let x_950 : vec4<f32> = u_xlat0;
    let x_953 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_950.x, x_950.y, x_950.z, x_950.x));
    u_xlatb3 = vec3<bool>(x_953.x, x_953.y, x_953.z);
    let x_956 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_956;
    let x_958 : bool = u_xlatb3.x;
    if (x_958) {
      let x_963 : f32 = u_xlat1.x;
      x_959 = x_963;
    } else {
      let x_966 : f32 = u_xlat2.x;
      x_959 = x_966;
    }
    let x_967 : f32 = x_959;
    hlslcc_movcTemp.x = x_967;
    let x_970 : bool = u_xlatb3.y;
    if (x_970) {
      let x_975 : f32 = u_xlat1.y;
      x_971 = x_975;
    } else {
      let x_978 : f32 = u_xlat2.y;
      x_971 = x_978;
    }
    let x_979 : f32 = x_971;
    hlslcc_movcTemp.y = x_979;
    let x_982 : bool = u_xlatb3.z;
    if (x_982) {
      let x_987 : f32 = u_xlat1.z;
      x_983 = x_987;
    } else {
      let x_990 : f32 = u_xlat2.z;
      x_983 = x_990;
    }
    let x_991 : f32 = x_983;
    hlslcc_movcTemp.z = x_991;
    let x_993 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_993;
    let x_994 : vec3<f32> = u_xlat1;
    let x_997 : vec4<f32> = x_25.x_UserLut_Params;
    let x_999 : vec3<f32> = (vec3<f32>(x_994.z, x_994.x, x_994.y) * vec3<f32>(x_997.z, x_997.z, x_997.z));
    let x_1000 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
    let x_1003 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1003);
    let x_1006 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1008 : vec2<f32> = (vec2<f32>(x_1006.x, x_1006.y) * vec2<f32>(0.5f, 0.5f));
    let x_1009 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1008.x, x_1009.y, x_1009.z, x_1008.y);
    let x_1011 : vec4<f32> = u_xlat2;
    let x_1014 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1017 : vec4<f32> = u_xlat2;
    let x_1019 : vec2<f32> = ((vec2<f32>(x_1011.y, x_1011.z) * vec2<f32>(x_1014.x, x_1014.y)) + vec2<f32>(x_1017.x, x_1017.w));
    let x_1020 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1020.x, x_1019.x, x_1019.y, x_1020.w);
    let x_1022 : f32 = u_xlat18;
    let x_1024 : f32 = x_25.x_UserLut_Params.y;
    let x_1027 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1022 * x_1024) + x_1027);
    let x_1034 : vec4<f32> = u_xlat2;
    let x_1036 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1034.x, x_1034.z), 0.0f);
    let x_1037 : vec3<f32> = vec3<f32>(x_1036.x, x_1036.y, x_1036.z);
    let x_1038 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
    let x_1041 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1041;
    u_xlat4.y = 0.0f;
    let x_1044 : vec4<f32> = u_xlat2;
    let x_1046 : vec2<f32> = u_xlat4;
    let x_1047 : vec2<f32> = (vec2<f32>(x_1044.x, x_1044.z) + x_1046);
    let x_1048 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1048.z, x_1048.w);
    let x_1053 : vec4<f32> = u_xlat2;
    let x_1055 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1053.x, x_1053.y), 0.0f);
    let x_1056 : vec3<f32> = vec3<f32>(x_1055.x, x_1055.y, x_1055.z);
    let x_1057 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1060 : f32 = u_xlat1.z;
    let x_1062 : f32 = x_25.x_UserLut_Params.z;
    let x_1064 : f32 = u_xlat18;
    u_xlat18 = ((x_1060 * x_1062) + -(x_1064));
    let x_1067 : vec4<f32> = u_xlat3;
    let x_1070 : vec4<f32> = u_xlat2;
    let x_1072 : vec3<f32> = (-(vec3<f32>(x_1067.x, x_1067.y, x_1067.z)) + vec3<f32>(x_1070.x, x_1070.y, x_1070.z));
    let x_1073 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
    let x_1075 : f32 = u_xlat18;
    let x_1077 : vec4<f32> = u_xlat2;
    let x_1080 : vec4<f32> = u_xlat3;
    let x_1082 : vec3<f32> = ((vec3<f32>(x_1075, x_1075, x_1075) * vec3<f32>(x_1077.x, x_1077.y, x_1077.z)) + vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    let x_1085 : vec3<f32> = u_xlat1;
    let x_1087 : vec4<f32> = u_xlat2;
    let x_1089 : vec3<f32> = (-(x_1085) + vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
    let x_1090 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
    let x_1093 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1095 : vec4<f32> = u_xlat2;
    let x_1098 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1093.w, x_1093.w, x_1093.w) * vec3<f32>(x_1095.x, x_1095.y, x_1095.z)) + x_1098);
    let x_1100 : vec3<f32> = u_xlat1;
    let x_1103 : vec3<f32> = (x_1100 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1104 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
    let x_1106 : vec3<f32> = u_xlat1;
    let x_1109 : vec3<f32> = (x_1106 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1110 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
    let x_1112 : vec4<f32> = u_xlat3;
    let x_1116 : vec3<f32> = (vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1117 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
    let x_1119 : vec4<f32> = u_xlat3;
    let x_1122 : vec3<f32> = log2(abs(vec3<f32>(x_1119.x, x_1119.y, x_1119.z)));
    let x_1123 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1122.x, x_1122.y, x_1122.z, x_1123.w);
    let x_1125 : vec4<f32> = u_xlat3;
    let x_1129 : vec3<f32> = (vec3<f32>(x_1125.x, x_1125.y, x_1125.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1130 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
    let x_1132 : vec4<f32> = u_xlat3;
    let x_1134 : vec3<f32> = exp2(vec3<f32>(x_1132.x, x_1132.y, x_1132.z));
    let x_1135 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
    let x_1139 : vec3<f32> = u_xlat1;
    let x_1141 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1139.x));
    u_xlatb1 = vec3<bool>(x_1141.x, x_1141.y, x_1141.z);
    let x_1144 : bool = u_xlatb1.x;
    if (x_1144) {
      let x_1149 : f32 = u_xlat2.x;
      x_1145 = x_1149;
    } else {
      let x_1152 : f32 = u_xlat3.x;
      x_1145 = x_1152;
    }
    let x_1153 : f32 = x_1145;
    u_xlat0.x = x_1153;
    let x_1156 : bool = u_xlatb1.y;
    if (x_1156) {
      let x_1161 : f32 = u_xlat2.y;
      x_1157 = x_1161;
    } else {
      let x_1164 : f32 = u_xlat3.y;
      x_1157 = x_1164;
    }
    let x_1165 : f32 = x_1157;
    u_xlat0.y = x_1165;
    let x_1168 : bool = u_xlatb1.z;
    if (x_1168) {
      let x_1173 : f32 = u_xlat2.z;
      x_1169 = x_1173;
    } else {
      let x_1176 : f32 = u_xlat3.z;
      x_1169 = x_1176;
    }
    let x_1177 : f32 = x_1169;
    u_xlat0.z = x_1177;
  }
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1182 : vec4<f32> = x_25.x_Lut_Params;
  let x_1184 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1182.z, x_1182.z, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1184.x, x_1184.y, x_1185.z, x_1184.z);
  let x_1188 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1188);
  let x_1191 : vec4<f32> = x_25.x_Lut_Params;
  let x_1193 : vec2<f32> = (vec2<f32>(x_1191.x, x_1191.y) * vec2<f32>(0.5f, 0.5f));
  let x_1194 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1193.x, x_1193.y, x_1194.z);
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1199 : vec4<f32> = x_25.x_Lut_Params;
  let x_1202 : vec3<f32> = u_xlat1;
  let x_1204 : vec2<f32> = ((vec2<f32>(x_1196.x, x_1196.y) * vec2<f32>(x_1199.x, x_1199.y)) + vec2<f32>(x_1202.x, x_1202.y));
  let x_1205 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1205.x, x_1204.x, x_1204.y);
  let x_1207 : f32 = u_xlat18;
  let x_1209 : f32 = x_25.x_Lut_Params.y;
  let x_1212 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1207 * x_1209) + x_1212);
  let x_1219 : vec3<f32> = u_xlat1;
  let x_1221 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1219.x, x_1219.z), 0.0f);
  let x_1222 : vec3<f32> = vec3<f32>(x_1221.x, x_1221.y, x_1221.z);
  let x_1223 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1226 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1226;
  u_xlat0.y = 0.0f;
  let x_1229 : vec4<f32> = u_xlat0;
  let x_1231 : vec3<f32> = u_xlat1;
  let x_1233 : vec2<f32> = (vec2<f32>(x_1229.x, x_1229.y) + vec2<f32>(x_1231.x, x_1231.z));
  let x_1234 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1233.x, x_1233.y, x_1234.z, x_1234.w);
  let x_1239 : vec4<f32> = u_xlat0;
  let x_1241 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1239.x, x_1239.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1241.x, x_1241.y, x_1241.z);
  let x_1244 : f32 = u_xlat0.z;
  let x_1246 : f32 = x_25.x_Lut_Params.z;
  let x_1248 : f32 = u_xlat18;
  u_xlat0.x = ((x_1244 * x_1246) + -(x_1248));
  let x_1252 : vec4<f32> = u_xlat2;
  let x_1255 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1252.x, x_1252.y, x_1252.z)) + x_1255);
  let x_1257 : vec4<f32> = u_xlat0;
  let x_1259 : vec3<f32> = u_xlat6;
  let x_1261 : vec4<f32> = u_xlat2;
  let x_1263 : vec3<f32> = ((vec3<f32>(x_1257.x, x_1257.x, x_1257.x) * x_1259) + vec3<f32>(x_1261.x, x_1261.y, x_1261.z));
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1266.x, x_1266.y, x_1266.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1269 : vec4<f32> = u_xlat0;
  let x_1272 : vec3<f32> = log2(abs(vec3<f32>(x_1269.x, x_1269.y, x_1269.z)));
  let x_1273 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1273.w);
  let x_1275 : vec4<f32> = u_xlat2;
  let x_1277 : vec3<f32> = (vec3<f32>(x_1275.x, x_1275.y, x_1275.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec4<f32> = u_xlat2;
  let x_1282 : vec3<f32> = exp2(vec3<f32>(x_1280.x, x_1280.y, x_1280.z));
  let x_1283 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1285 : vec4<f32> = u_xlat2;
  let x_1288 : vec3<f32> = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1289.w);
  let x_1291 : vec4<f32> = u_xlat0;
  let x_1293 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1291.x, x_1291.y, x_1291.z, x_1291.x));
  u_xlatb0 = vec3<bool>(x_1293.x, x_1293.y, x_1293.z);
  let x_1296 : bool = u_xlatb0.x;
  if (x_1296) {
    let x_1301 : f32 = u_xlat1.x;
    x_1297 = x_1301;
  } else {
    let x_1304 : f32 = u_xlat2.x;
    x_1297 = x_1304;
  }
  let x_1305 : f32 = x_1297;
  u_xlat0.x = x_1305;
  let x_1308 : bool = u_xlatb0.y;
  if (x_1308) {
    let x_1313 : f32 = u_xlat1.y;
    x_1309 = x_1313;
  } else {
    let x_1316 : f32 = u_xlat2.y;
    x_1309 = x_1316;
  }
  let x_1317 : f32 = x_1309;
  u_xlat0.y = x_1317;
  let x_1320 : bool = u_xlatb0.z;
  if (x_1320) {
    let x_1325 : f32 = u_xlat1.z;
    x_1321 = x_1325;
  } else {
    let x_1328 : f32 = u_xlat2.z;
    x_1321 = x_1328;
  }
  let x_1329 : f32 = x_1321;
  u_xlat0.z = x_1329;
  let x_1331 : vec2<f32> = vs_TEXCOORD0;
  let x_1334 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1338 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1340 : vec2<f32> = ((x_1331 * vec2<f32>(x_1334.x, x_1334.y)) + vec2<f32>(x_1338.z, x_1338.w));
  let x_1341 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1340.x, x_1340.y, x_1341.z);
  let x_1348 : vec3<f32> = u_xlat1;
  let x_1351 : f32 = x_25.x_GlobalMipBias.x;
  let x_1352 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1348.x, x_1348.y), x_1351);
  u_xlat18 = x_1352.w;
  let x_1354 : f32 = u_xlat18;
  u_xlat18 = ((x_1354 * 2.0f) + -1.0f);
  let x_1357 : f32 = u_xlat18;
  u_xlatb1.x = (x_1357 >= 0.0f);
  let x_1361 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1361);
  let x_1364 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1364)) + 1.0f);
  let x_1368 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1368);
  let x_1370 : f32 = u_xlat18;
  u_xlat18 = (-(x_1370) + 1.0f);
  let x_1373 : f32 = u_xlat18;
  let x_1375 : f32 = u_xlat1.x;
  u_xlat18 = (x_1373 * x_1375);
  let x_1377 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1377.x, x_1377.y, x_1377.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1380 : vec4<f32> = u_xlat0;
  let x_1383 : vec3<f32> = log2(abs(vec3<f32>(x_1380.x, x_1380.y, x_1380.z)));
  let x_1384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
  let x_1386 : vec4<f32> = u_xlat2;
  let x_1388 : vec3<f32> = (vec3<f32>(x_1386.x, x_1386.y, x_1386.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1389 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1388.x, x_1388.y, x_1388.z, x_1389.w);
  let x_1391 : vec4<f32> = u_xlat2;
  let x_1393 : vec3<f32> = exp2(vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : vec4<f32> = u_xlat2;
  let x_1399 : vec3<f32> = ((vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1400 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1402 : vec4<f32> = u_xlat0;
  let x_1404 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1402.x));
  u_xlatb0 = vec3<bool>(x_1404.x, x_1404.y, x_1404.z);
  let x_1407 : bool = u_xlatb0.x;
  if (x_1407) {
    let x_1412 : f32 = u_xlat1.x;
    x_1408 = x_1412;
  } else {
    let x_1415 : f32 = u_xlat2.x;
    x_1408 = x_1415;
  }
  let x_1416 : f32 = x_1408;
  u_xlat0.x = x_1416;
  let x_1419 : bool = u_xlatb0.y;
  if (x_1419) {
    let x_1424 : f32 = u_xlat1.y;
    x_1420 = x_1424;
  } else {
    let x_1427 : f32 = u_xlat2.y;
    x_1420 = x_1427;
  }
  let x_1428 : f32 = x_1420;
  u_xlat0.y = x_1428;
  let x_1431 : bool = u_xlatb0.z;
  if (x_1431) {
    let x_1436 : f32 = u_xlat1.z;
    x_1432 = x_1436;
  } else {
    let x_1439 : f32 = u_xlat2.z;
    x_1432 = x_1439;
  }
  let x_1440 : f32 = x_1432;
  u_xlat0.z = x_1440;
  let x_1442 : f32 = u_xlat18;
  let x_1447 : vec4<f32> = u_xlat0;
  let x_1449 : vec3<f32> = ((vec3<f32>(x_1442, x_1442, x_1442) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1447.x, x_1447.y, x_1447.z));
  let x_1450 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1449.x, x_1449.y, x_1449.z, x_1450.w);
  let x_1452 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1452.x, x_1452.y, x_1452.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1455 : vec4<f32> = u_xlat0;
  let x_1457 : vec3<f32> = (vec3<f32>(x_1455.x, x_1455.y, x_1455.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1458 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1457.x, x_1457.y, x_1457.z, x_1458.w);
  let x_1460 : vec4<f32> = u_xlat2;
  let x_1462 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1462.x, x_1462.y, x_1462.z, x_1463.w);
  let x_1465 : vec4<f32> = u_xlat2;
  let x_1468 : vec3<f32> = log2(abs(vec3<f32>(x_1465.x, x_1465.y, x_1465.z)));
  let x_1469 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
  let x_1471 : vec4<f32> = u_xlat2;
  let x_1473 : vec3<f32> = (vec3<f32>(x_1471.x, x_1471.y, x_1471.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1473.x, x_1473.y, x_1473.z, x_1474.w);
  let x_1476 : vec4<f32> = u_xlat2;
  let x_1478 : vec3<f32> = exp2(vec3<f32>(x_1476.x, x_1476.y, x_1476.z));
  let x_1479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
  let x_1481 : vec4<f32> = u_xlat0;
  let x_1483 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1481.x, x_1481.y, x_1481.z, x_1481.x));
  u_xlatb0 = vec3<bool>(x_1483.x, x_1483.y, x_1483.z);
  let x_1486 : bool = u_xlatb0.x;
  if (x_1486) {
    let x_1491 : f32 = u_xlat1.x;
    x_1487 = x_1491;
  } else {
    let x_1494 : f32 = u_xlat2.x;
    x_1487 = x_1494;
  }
  let x_1495 : f32 = x_1487;
  u_xlat0.x = x_1495;
  let x_1498 : bool = u_xlatb0.y;
  if (x_1498) {
    let x_1503 : f32 = u_xlat1.y;
    x_1499 = x_1503;
  } else {
    let x_1506 : f32 = u_xlat2.y;
    x_1499 = x_1506;
  }
  let x_1507 : f32 = x_1499;
  u_xlat0.y = x_1507;
  let x_1510 : bool = u_xlatb0.z;
  if (x_1510) {
    let x_1515 : f32 = u_xlat1.z;
    x_1511 = x_1515;
  } else {
    let x_1518 : f32 = u_xlat2.z;
    x_1511 = x_1518;
  }
  let x_1519 : f32 = x_1511;
  u_xlat0.z = x_1519;
  let x_1523 : vec4<f32> = u_xlat0;
  let x_1526 : vec3<f32> = max(vec3<f32>(x_1523.x, x_1523.y, x_1523.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1527 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1526.x, x_1526.y, x_1526.z, x_1527.w);
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

