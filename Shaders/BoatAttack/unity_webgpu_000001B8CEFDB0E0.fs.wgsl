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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearRepeat : sampler;

@group(0) @binding(6) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_PointRepeat : sampler;

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
  var x_899 : f32;
  var x_911 : f32;
  var x_923 : f32;
  var x_1085 : f32;
  var x_1097 : f32;
  var x_1109 : f32;
  var u_xlat7 : vec3<f32>;
  var x_1307 : f32;
  var x_1319 : f32;
  var x_1331 : f32;
  var x_1418 : f32;
  var x_1430 : f32;
  var x_1442 : f32;
  var x_1497 : f32;
  var x_1509 : f32;
  var x_1521 : f32;
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
  let x_846 : vec3<f32> = clamp(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_847 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_846.x, x_846.y, x_846.z, x_847.w);
  let x_851 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_851);
  let x_853 : bool = u_xlatb18;
  if (x_853) {
    let x_856 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_861 : vec4<f32> = u_xlat0;
    let x_863 : vec3<f32> = log2(vec3<f32>(x_861.x, x_861.y, x_861.z));
    let x_864 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
    let x_866 : vec4<f32> = u_xlat2;
    let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_871 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
    let x_873 : vec4<f32> = u_xlat2;
    let x_875 : vec3<f32> = exp2(vec3<f32>(x_873.x, x_873.y, x_873.z));
    let x_876 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
    let x_878 : vec4<f32> = u_xlat2;
    let x_885 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_886 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    let x_890 : vec4<f32> = u_xlat0;
    let x_893 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_890.x, x_890.y, x_890.z, x_890.x));
    u_xlatb3 = vec3<bool>(x_893.x, x_893.y, x_893.z);
    let x_896 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_896;
    let x_898 : bool = u_xlatb3.x;
    if (x_898) {
      let x_903 : f32 = u_xlat1.x;
      x_899 = x_903;
    } else {
      let x_906 : f32 = u_xlat2.x;
      x_899 = x_906;
    }
    let x_907 : f32 = x_899;
    hlslcc_movcTemp.x = x_907;
    let x_910 : bool = u_xlatb3.y;
    if (x_910) {
      let x_915 : f32 = u_xlat1.y;
      x_911 = x_915;
    } else {
      let x_918 : f32 = u_xlat2.y;
      x_911 = x_918;
    }
    let x_919 : f32 = x_911;
    hlslcc_movcTemp.y = x_919;
    let x_922 : bool = u_xlatb3.z;
    if (x_922) {
      let x_927 : f32 = u_xlat1.z;
      x_923 = x_927;
    } else {
      let x_930 : f32 = u_xlat2.z;
      x_923 = x_930;
    }
    let x_931 : f32 = x_923;
    hlslcc_movcTemp.z = x_931;
    let x_933 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_933;
    let x_934 : vec3<f32> = u_xlat1;
    let x_937 : vec4<f32> = x_25.x_UserLut_Params;
    let x_939 : vec3<f32> = (vec3<f32>(x_934.z, x_934.x, x_934.y) * vec3<f32>(x_937.z, x_937.z, x_937.z));
    let x_940 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_939.x, x_939.y, x_939.z, x_940.w);
    let x_943 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_943);
    let x_946 : vec4<f32> = x_25.x_UserLut_Params;
    let x_948 : vec2<f32> = (vec2<f32>(x_946.x, x_946.y) * vec2<f32>(0.5f, 0.5f));
    let x_949 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_948.x, x_949.y, x_949.z, x_948.y);
    let x_951 : vec4<f32> = u_xlat2;
    let x_954 : vec4<f32> = x_25.x_UserLut_Params;
    let x_957 : vec4<f32> = u_xlat2;
    let x_959 : vec2<f32> = ((vec2<f32>(x_951.y, x_951.z) * vec2<f32>(x_954.x, x_954.y)) + vec2<f32>(x_957.x, x_957.w));
    let x_960 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_960.x, x_959.x, x_959.y, x_960.w);
    let x_962 : f32 = u_xlat18;
    let x_964 : f32 = x_25.x_UserLut_Params.y;
    let x_967 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_962 * x_964) + x_967);
    let x_974 : vec4<f32> = u_xlat2;
    let x_976 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_974.x, x_974.z), 0.0f);
    let x_977 : vec3<f32> = vec3<f32>(x_976.x, x_976.y, x_976.z);
    let x_978 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
    let x_981 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_981;
    u_xlat4.y = 0.0f;
    let x_984 : vec4<f32> = u_xlat2;
    let x_986 : vec2<f32> = u_xlat4;
    let x_987 : vec2<f32> = (vec2<f32>(x_984.x, x_984.z) + x_986);
    let x_988 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
    let x_993 : vec4<f32> = u_xlat2;
    let x_995 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_993.x, x_993.y), 0.0f);
    let x_996 : vec3<f32> = vec3<f32>(x_995.x, x_995.y, x_995.z);
    let x_997 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
    let x_1000 : f32 = u_xlat1.z;
    let x_1002 : f32 = x_25.x_UserLut_Params.z;
    let x_1004 : f32 = u_xlat18;
    u_xlat18 = ((x_1000 * x_1002) + -(x_1004));
    let x_1007 : vec4<f32> = u_xlat3;
    let x_1010 : vec4<f32> = u_xlat2;
    let x_1012 : vec3<f32> = (-(vec3<f32>(x_1007.x, x_1007.y, x_1007.z)) + vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
    let x_1013 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
    let x_1015 : f32 = u_xlat18;
    let x_1017 : vec4<f32> = u_xlat2;
    let x_1020 : vec4<f32> = u_xlat3;
    let x_1022 : vec3<f32> = ((vec3<f32>(x_1015, x_1015, x_1015) * vec3<f32>(x_1017.x, x_1017.y, x_1017.z)) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
    let x_1023 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
    let x_1025 : vec3<f32> = u_xlat1;
    let x_1027 : vec4<f32> = u_xlat2;
    let x_1029 : vec3<f32> = (-(x_1025) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
    let x_1030 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1033 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1035 : vec4<f32> = u_xlat2;
    let x_1038 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1033.w, x_1033.w, x_1033.w) * vec3<f32>(x_1035.x, x_1035.y, x_1035.z)) + x_1038);
    let x_1040 : vec3<f32> = u_xlat1;
    let x_1043 : vec3<f32> = (x_1040 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1044 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
    let x_1046 : vec3<f32> = u_xlat1;
    let x_1049 : vec3<f32> = (x_1046 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1050 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
    let x_1052 : vec4<f32> = u_xlat3;
    let x_1056 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1057 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
    let x_1059 : vec4<f32> = u_xlat3;
    let x_1062 : vec3<f32> = log2(abs(vec3<f32>(x_1059.x, x_1059.y, x_1059.z)));
    let x_1063 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
    let x_1065 : vec4<f32> = u_xlat3;
    let x_1069 : vec3<f32> = (vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1070 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
    let x_1072 : vec4<f32> = u_xlat3;
    let x_1074 : vec3<f32> = exp2(vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
    let x_1075 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
    let x_1079 : vec3<f32> = u_xlat1;
    let x_1081 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.x));
    u_xlatb1 = vec3<bool>(x_1081.x, x_1081.y, x_1081.z);
    let x_1084 : bool = u_xlatb1.x;
    if (x_1084) {
      let x_1089 : f32 = u_xlat2.x;
      x_1085 = x_1089;
    } else {
      let x_1092 : f32 = u_xlat3.x;
      x_1085 = x_1092;
    }
    let x_1093 : f32 = x_1085;
    u_xlat0.x = x_1093;
    let x_1096 : bool = u_xlatb1.y;
    if (x_1096) {
      let x_1101 : f32 = u_xlat2.y;
      x_1097 = x_1101;
    } else {
      let x_1104 : f32 = u_xlat3.y;
      x_1097 = x_1104;
    }
    let x_1105 : f32 = x_1097;
    u_xlat0.y = x_1105;
    let x_1108 : bool = u_xlatb1.z;
    if (x_1108) {
      let x_1113 : f32 = u_xlat2.z;
      x_1109 = x_1113;
    } else {
      let x_1116 : f32 = u_xlat3.z;
      x_1109 = x_1116;
    }
    let x_1117 : f32 = x_1109;
    u_xlat0.z = x_1117;
  }
  let x_1119 : vec4<f32> = u_xlat0;
  let x_1122 : vec4<f32> = x_25.x_Lut_Params;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1119.x, x_1119.y, x_1119.z) * vec3<f32>(x_1122.z, x_1122.z, x_1122.z));
  let x_1125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1124.z);
  let x_1128 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1128);
  let x_1131 : vec4<f32> = x_25.x_Lut_Params;
  let x_1133 : vec2<f32> = (vec2<f32>(x_1131.x, x_1131.y) * vec2<f32>(0.5f, 0.5f));
  let x_1134 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1133.x, x_1133.y, x_1134.z);
  let x_1136 : vec4<f32> = u_xlat0;
  let x_1139 : vec4<f32> = x_25.x_Lut_Params;
  let x_1142 : vec3<f32> = u_xlat1;
  let x_1144 : vec2<f32> = ((vec2<f32>(x_1136.x, x_1136.y) * vec2<f32>(x_1139.x, x_1139.y)) + vec2<f32>(x_1142.x, x_1142.y));
  let x_1145 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1145.x, x_1144.x, x_1144.y);
  let x_1147 : f32 = u_xlat18;
  let x_1149 : f32 = x_25.x_Lut_Params.y;
  let x_1152 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1147 * x_1149) + x_1152);
  let x_1159 : vec3<f32> = u_xlat1;
  let x_1161 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1159.x, x_1159.z), 0.0f);
  let x_1162 : vec3<f32> = vec3<f32>(x_1161.x, x_1161.y, x_1161.z);
  let x_1163 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
  let x_1166 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1166;
  u_xlat0.y = 0.0f;
  let x_1169 : vec4<f32> = u_xlat0;
  let x_1171 : vec3<f32> = u_xlat1;
  let x_1173 : vec2<f32> = (vec2<f32>(x_1169.x, x_1169.y) + vec2<f32>(x_1171.x, x_1171.z));
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1173.x, x_1173.y, x_1174.z, x_1174.w);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1181 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1179.x, x_1179.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1181.x, x_1181.y, x_1181.z);
  let x_1184 : f32 = u_xlat0.z;
  let x_1186 : f32 = x_25.x_Lut_Params.z;
  let x_1188 : f32 = u_xlat18;
  u_xlat0.x = ((x_1184 * x_1186) + -(x_1188));
  let x_1192 : vec4<f32> = u_xlat2;
  let x_1195 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1192.x, x_1192.y, x_1192.z)) + x_1195);
  let x_1197 : vec4<f32> = u_xlat0;
  let x_1199 : vec3<f32> = u_xlat6;
  let x_1201 : vec4<f32> = u_xlat2;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1197.x, x_1197.x, x_1197.x) * x_1199) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec2<f32> = vs_TEXCOORD0;
  let x_1209 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1213 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1215 : vec2<f32> = ((x_1206 * vec2<f32>(x_1209.x, x_1209.y)) + vec2<f32>(x_1213.z, x_1213.w));
  let x_1216 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1215.x, x_1215.y, x_1216.z);
  let x_1223 : vec3<f32> = u_xlat1;
  let x_1226 : f32 = x_25.x_GlobalMipBias.x;
  let x_1227 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1223.x, x_1223.y), x_1226);
  u_xlat18 = x_1227.w;
  let x_1229 : f32 = u_xlat18;
  u_xlat18 = (x_1229 + -0.5f);
  let x_1231 : f32 = u_xlat18;
  let x_1232 : f32 = u_xlat18;
  u_xlat18 = (x_1231 + x_1232);
  let x_1234 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1234.x, x_1234.y, x_1234.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1243 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1243);
  let x_1248 : f32 = x_25.x_Grain_Params.y;
  let x_1250 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1248 * -(x_1250)) + 1.0f);
  let x_1256 : f32 = u_xlat18;
  let x_1258 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1256, x_1256, x_1256) * vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : vec3<f32> = u_xlat7;
  let x_1264 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1261 * vec3<f32>(x_1264.x, x_1264.x, x_1264.x));
  let x_1267 : vec3<f32> = u_xlat7;
  let x_1268 : vec3<f32> = u_xlat1;
  let x_1271 : vec4<f32> = u_xlat0;
  let x_1273 : vec3<f32> = ((x_1267 * vec3<f32>(x_1268.x, x_1268.x, x_1268.x)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1279 : vec4<f32> = u_xlat0;
  let x_1282 : vec3<f32> = log2(abs(vec3<f32>(x_1279.x, x_1279.y, x_1279.z)));
  let x_1283 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1282.x, x_1282.y, x_1282.z, x_1283.w);
  let x_1285 : vec4<f32> = u_xlat2;
  let x_1287 : vec3<f32> = (vec3<f32>(x_1285.x, x_1285.y, x_1285.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1288 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1287.x, x_1287.y, x_1287.z, x_1288.w);
  let x_1290 : vec4<f32> = u_xlat2;
  let x_1292 : vec3<f32> = exp2(vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1292.x, x_1292.y, x_1292.z, x_1293.w);
  let x_1295 : vec4<f32> = u_xlat2;
  let x_1298 : vec3<f32> = ((vec3<f32>(x_1295.x, x_1295.y, x_1295.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1299 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1299.w);
  let x_1301 : vec4<f32> = u_xlat0;
  let x_1303 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1301.x));
  u_xlatb0 = vec3<bool>(x_1303.x, x_1303.y, x_1303.z);
  let x_1306 : bool = u_xlatb0.x;
  if (x_1306) {
    let x_1311 : f32 = u_xlat1.x;
    x_1307 = x_1311;
  } else {
    let x_1314 : f32 = u_xlat2.x;
    x_1307 = x_1314;
  }
  let x_1315 : f32 = x_1307;
  u_xlat0.x = x_1315;
  let x_1318 : bool = u_xlatb0.y;
  if (x_1318) {
    let x_1323 : f32 = u_xlat1.y;
    x_1319 = x_1323;
  } else {
    let x_1326 : f32 = u_xlat2.y;
    x_1319 = x_1326;
  }
  let x_1327 : f32 = x_1319;
  u_xlat0.y = x_1327;
  let x_1330 : bool = u_xlatb0.z;
  if (x_1330) {
    let x_1335 : f32 = u_xlat1.z;
    x_1331 = x_1335;
  } else {
    let x_1338 : f32 = u_xlat2.z;
    x_1331 = x_1338;
  }
  let x_1339 : f32 = x_1331;
  u_xlat0.z = x_1339;
  let x_1341 : vec2<f32> = vs_TEXCOORD0;
  let x_1344 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1348 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1350 : vec2<f32> = ((x_1341 * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1348.z, x_1348.w));
  let x_1351 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1350.x, x_1350.y, x_1351.z);
  let x_1358 : vec3<f32> = u_xlat1;
  let x_1361 : f32 = x_25.x_GlobalMipBias.x;
  let x_1362 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1358.x, x_1358.y), x_1361);
  u_xlat18 = x_1362.w;
  let x_1364 : f32 = u_xlat18;
  u_xlat18 = ((x_1364 * 2.0f) + -1.0f);
  let x_1367 : f32 = u_xlat18;
  u_xlatb1.x = (x_1367 >= 0.0f);
  let x_1371 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1371);
  let x_1374 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1374)) + 1.0f);
  let x_1378 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1378);
  let x_1380 : f32 = u_xlat18;
  u_xlat18 = (-(x_1380) + 1.0f);
  let x_1383 : f32 = u_xlat18;
  let x_1385 : f32 = u_xlat1.x;
  u_xlat18 = (x_1383 * x_1385);
  let x_1387 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1387.x, x_1387.y, x_1387.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1390 : vec4<f32> = u_xlat0;
  let x_1393 : vec3<f32> = log2(abs(vec3<f32>(x_1390.x, x_1390.y, x_1390.z)));
  let x_1394 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  let x_1396 : vec4<f32> = u_xlat2;
  let x_1398 : vec3<f32> = (vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1399 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1398.x, x_1398.y, x_1398.z, x_1399.w);
  let x_1401 : vec4<f32> = u_xlat2;
  let x_1403 : vec3<f32> = exp2(vec3<f32>(x_1401.x, x_1401.y, x_1401.z));
  let x_1404 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1403.x, x_1403.y, x_1403.z, x_1404.w);
  let x_1406 : vec4<f32> = u_xlat2;
  let x_1409 : vec3<f32> = ((vec3<f32>(x_1406.x, x_1406.y, x_1406.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1410 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1410.w);
  let x_1412 : vec4<f32> = u_xlat0;
  let x_1414 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1412.x, x_1412.y, x_1412.z, x_1412.x));
  u_xlatb0 = vec3<bool>(x_1414.x, x_1414.y, x_1414.z);
  let x_1417 : bool = u_xlatb0.x;
  if (x_1417) {
    let x_1422 : f32 = u_xlat1.x;
    x_1418 = x_1422;
  } else {
    let x_1425 : f32 = u_xlat2.x;
    x_1418 = x_1425;
  }
  let x_1426 : f32 = x_1418;
  u_xlat0.x = x_1426;
  let x_1429 : bool = u_xlatb0.y;
  if (x_1429) {
    let x_1434 : f32 = u_xlat1.y;
    x_1430 = x_1434;
  } else {
    let x_1437 : f32 = u_xlat2.y;
    x_1430 = x_1437;
  }
  let x_1438 : f32 = x_1430;
  u_xlat0.y = x_1438;
  let x_1441 : bool = u_xlatb0.z;
  if (x_1441) {
    let x_1446 : f32 = u_xlat1.z;
    x_1442 = x_1446;
  } else {
    let x_1449 : f32 = u_xlat2.z;
    x_1442 = x_1449;
  }
  let x_1450 : f32 = x_1442;
  u_xlat0.z = x_1450;
  let x_1452 : f32 = u_xlat18;
  let x_1457 : vec4<f32> = u_xlat0;
  let x_1459 : vec3<f32> = ((vec3<f32>(x_1452, x_1452, x_1452) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
  let x_1460 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1462 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1462.x, x_1462.y, x_1462.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1465 : vec4<f32> = u_xlat0;
  let x_1467 : vec3<f32> = (vec3<f32>(x_1465.x, x_1465.y, x_1465.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1468 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1467.x, x_1467.y, x_1467.z, x_1468.w);
  let x_1470 : vec4<f32> = u_xlat2;
  let x_1472 : vec3<f32> = (vec3<f32>(x_1470.x, x_1470.y, x_1470.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1473 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1472.x, x_1472.y, x_1472.z, x_1473.w);
  let x_1475 : vec4<f32> = u_xlat2;
  let x_1478 : vec3<f32> = log2(abs(vec3<f32>(x_1475.x, x_1475.y, x_1475.z)));
  let x_1479 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1478.x, x_1478.y, x_1478.z, x_1479.w);
  let x_1481 : vec4<f32> = u_xlat2;
  let x_1483 : vec3<f32> = (vec3<f32>(x_1481.x, x_1481.y, x_1481.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1484 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1483.x, x_1483.y, x_1483.z, x_1484.w);
  let x_1486 : vec4<f32> = u_xlat2;
  let x_1488 : vec3<f32> = exp2(vec3<f32>(x_1486.x, x_1486.y, x_1486.z));
  let x_1489 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1489.w);
  let x_1491 : vec4<f32> = u_xlat0;
  let x_1493 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1491.x, x_1491.y, x_1491.z, x_1491.x));
  u_xlatb0 = vec3<bool>(x_1493.x, x_1493.y, x_1493.z);
  let x_1496 : bool = u_xlatb0.x;
  if (x_1496) {
    let x_1501 : f32 = u_xlat1.x;
    x_1497 = x_1501;
  } else {
    let x_1504 : f32 = u_xlat2.x;
    x_1497 = x_1504;
  }
  let x_1505 : f32 = x_1497;
  u_xlat0.x = x_1505;
  let x_1508 : bool = u_xlatb0.y;
  if (x_1508) {
    let x_1513 : f32 = u_xlat1.y;
    x_1509 = x_1513;
  } else {
    let x_1516 : f32 = u_xlat2.y;
    x_1509 = x_1516;
  }
  let x_1517 : f32 = x_1509;
  u_xlat0.y = x_1517;
  let x_1520 : bool = u_xlatb0.z;
  if (x_1520) {
    let x_1525 : f32 = u_xlat1.z;
    x_1521 = x_1525;
  } else {
    let x_1528 : f32 = u_xlat2.z;
    x_1521 = x_1528;
  }
  let x_1529 : f32 = x_1521;
  u_xlat0.z = x_1529;
  let x_1533 : vec4<f32> = u_xlat0;
  let x_1536 : vec3<f32> = max(vec3<f32>(x_1533.x, x_1533.y, x_1533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1537 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1536.x, x_1536.y, x_1536.z, x_1537.w);
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

