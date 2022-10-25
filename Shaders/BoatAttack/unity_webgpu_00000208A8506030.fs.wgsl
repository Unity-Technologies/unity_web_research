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
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_TilingParams : vec4<f32>,
  x_Dithering_Params : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(8) var sampler_LinearRepeat : sampler;

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
  var x_983 : f32;
  var x_995 : f32;
  var x_1007 : f32;
  var x_1169 : f32;
  var x_1181 : f32;
  var x_1193 : f32;
  var u_xlat7 : vec3<f32>;
  var x_1304 : f32;
  var x_1316 : f32;
  var x_1328 : f32;
  var x_1415 : f32;
  var x_1427 : f32;
  var x_1439 : f32;
  var x_1494 : f32;
  var x_1506 : f32;
  var x_1518 : f32;
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
  let x_796 : vec3<f32> = (vec3<f32>(x_790.z, x_790.x, x_790.y) * vec3<f32>(x_794.w, x_794.w, x_794.w));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  let x_806 : vec3<f32> = ((vec3<f32>(x_799.x, x_799.y, x_799.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_807 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
  let x_809 : vec4<f32> = u_xlat0;
  let x_812 : vec3<f32> = max(vec3<f32>(x_809.x, x_809.y, x_809.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_812.x, x_812.y, x_812.z, x_813.w);
  let x_815 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = log2(vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_820 : vec4<f32> = u_xlat0;
  let x_827 : vec3<f32> = ((vec3<f32>(x_820.x, x_820.y, x_820.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_828 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  let x_834 : vec3<f32> = clamp(vec3<f32>(x_830.x, x_830.y, x_830.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_835 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat0;
  let x_840 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_840.z, x_840.z, x_840.z));
  let x_844 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_844);
  let x_848 : vec4<f32> = x_25.x_Lut_Params;
  let x_850 : vec2<f32> = (vec2<f32>(x_848.x, x_848.y) * vec2<f32>(0.5f, 0.5f));
  let x_851 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_850.x, x_850.y, x_851.z);
  let x_853 : vec3<f32> = u_xlat6;
  let x_856 : vec4<f32> = x_25.x_Lut_Params;
  let x_859 : vec3<f32> = u_xlat1;
  let x_861 : vec2<f32> = ((vec2<f32>(x_853.y, x_853.z) * vec2<f32>(x_856.x, x_856.y)) + vec2<f32>(x_859.x, x_859.y));
  let x_862 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_862.x, x_861.x, x_861.y);
  let x_865 : f32 = u_xlat6.x;
  let x_867 : f32 = x_25.x_Lut_Params.y;
  let x_870 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_865 * x_867) + x_870);
  let x_877 : vec3<f32> = u_xlat1;
  let x_879 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_877.x, x_877.z), 0.0f);
  let x_880 : vec3<f32> = vec3<f32>(x_879.x, x_879.y, x_879.z);
  let x_881 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_884 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_884;
  u_xlat3.y = 0.0f;
  let x_887 : vec3<f32> = u_xlat1;
  let x_889 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_887.x, x_887.z) + vec2<f32>(x_889.x, x_889.y));
  let x_895 : vec2<f32> = u_xlat12;
  let x_896 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_895, 0.0f);
  u_xlat1 = vec3<f32>(x_896.x, x_896.y, x_896.z);
  let x_899 : f32 = u_xlat0.x;
  let x_901 : f32 = x_25.x_Lut_Params.z;
  let x_904 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_899 * x_901) + -(x_904));
  let x_908 : vec4<f32> = u_xlat2;
  let x_911 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_908.x, x_908.y, x_908.z)) + x_911);
  let x_913 : vec4<f32> = u_xlat0;
  let x_915 : vec3<f32> = u_xlat6;
  let x_917 : vec4<f32> = u_xlat2;
  let x_919 : vec3<f32> = ((vec3<f32>(x_913.x, x_913.x, x_913.x) * x_915) + vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_924 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_924);
  let x_926 : bool = u_xlatb18;
  if (x_926) {
    let x_929 : vec4<f32> = u_xlat0;
    let x_930 : vec3<f32> = vec3<f32>(x_929.x, x_929.y, x_929.z);
    let x_931 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
    let x_933 : vec4<f32> = u_xlat0;
    let x_937 : vec3<f32> = clamp(vec3<f32>(x_933.x, x_933.y, x_933.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_938 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
    let x_940 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_945 : vec4<f32> = u_xlat0;
    let x_947 : vec3<f32> = log2(vec3<f32>(x_945.x, x_945.y, x_945.z));
    let x_948 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
    let x_950 : vec4<f32> = u_xlat2;
    let x_954 : vec3<f32> = (vec3<f32>(x_950.x, x_950.y, x_950.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_955 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
    let x_957 : vec4<f32> = u_xlat2;
    let x_959 : vec3<f32> = exp2(vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_960 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
    let x_962 : vec4<f32> = u_xlat2;
    let x_969 : vec3<f32> = ((vec3<f32>(x_962.x, x_962.y, x_962.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_970 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    let x_974 : vec4<f32> = u_xlat0;
    let x_977 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_974.x, x_974.y, x_974.z, x_974.x));
    u_xlatb3 = vec3<bool>(x_977.x, x_977.y, x_977.z);
    let x_980 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_980;
    let x_982 : bool = u_xlatb3.x;
    if (x_982) {
      let x_987 : f32 = u_xlat1.x;
      x_983 = x_987;
    } else {
      let x_990 : f32 = u_xlat2.x;
      x_983 = x_990;
    }
    let x_991 : f32 = x_983;
    hlslcc_movcTemp.x = x_991;
    let x_994 : bool = u_xlatb3.y;
    if (x_994) {
      let x_999 : f32 = u_xlat1.y;
      x_995 = x_999;
    } else {
      let x_1002 : f32 = u_xlat2.y;
      x_995 = x_1002;
    }
    let x_1003 : f32 = x_995;
    hlslcc_movcTemp.y = x_1003;
    let x_1006 : bool = u_xlatb3.z;
    if (x_1006) {
      let x_1011 : f32 = u_xlat1.z;
      x_1007 = x_1011;
    } else {
      let x_1014 : f32 = u_xlat2.z;
      x_1007 = x_1014;
    }
    let x_1015 : f32 = x_1007;
    hlslcc_movcTemp.z = x_1015;
    let x_1017 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1017;
    let x_1018 : vec3<f32> = u_xlat1;
    let x_1021 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1023 : vec3<f32> = (vec3<f32>(x_1018.z, x_1018.x, x_1018.y) * vec3<f32>(x_1021.z, x_1021.z, x_1021.z));
    let x_1024 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
    let x_1027 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1027);
    let x_1030 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1032 : vec2<f32> = (vec2<f32>(x_1030.x, x_1030.y) * vec2<f32>(0.5f, 0.5f));
    let x_1033 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1032.x, x_1033.y, x_1033.z, x_1032.y);
    let x_1035 : vec4<f32> = u_xlat2;
    let x_1038 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1041 : vec4<f32> = u_xlat2;
    let x_1043 : vec2<f32> = ((vec2<f32>(x_1035.y, x_1035.z) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.x, x_1041.w));
    let x_1044 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1044.x, x_1043.x, x_1043.y, x_1044.w);
    let x_1046 : f32 = u_xlat18;
    let x_1048 : f32 = x_25.x_UserLut_Params.y;
    let x_1051 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1046 * x_1048) + x_1051);
    let x_1058 : vec4<f32> = u_xlat2;
    let x_1060 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1058.x, x_1058.z), 0.0f);
    let x_1061 : vec3<f32> = vec3<f32>(x_1060.x, x_1060.y, x_1060.z);
    let x_1062 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1065 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1065;
    u_xlat4.y = 0.0f;
    let x_1068 : vec4<f32> = u_xlat2;
    let x_1070 : vec2<f32> = u_xlat4;
    let x_1071 : vec2<f32> = (vec2<f32>(x_1068.x, x_1068.z) + x_1070);
    let x_1072 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1071.x, x_1071.y, x_1072.z, x_1072.w);
    let x_1077 : vec4<f32> = u_xlat2;
    let x_1079 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1077.x, x_1077.y), 0.0f);
    let x_1080 : vec3<f32> = vec3<f32>(x_1079.x, x_1079.y, x_1079.z);
    let x_1081 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
    let x_1084 : f32 = u_xlat1.z;
    let x_1086 : f32 = x_25.x_UserLut_Params.z;
    let x_1088 : f32 = u_xlat18;
    u_xlat18 = ((x_1084 * x_1086) + -(x_1088));
    let x_1091 : vec4<f32> = u_xlat3;
    let x_1094 : vec4<f32> = u_xlat2;
    let x_1096 : vec3<f32> = (-(vec3<f32>(x_1091.x, x_1091.y, x_1091.z)) + vec3<f32>(x_1094.x, x_1094.y, x_1094.z));
    let x_1097 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1096.x, x_1096.y, x_1096.z, x_1097.w);
    let x_1099 : f32 = u_xlat18;
    let x_1101 : vec4<f32> = u_xlat2;
    let x_1104 : vec4<f32> = u_xlat3;
    let x_1106 : vec3<f32> = ((vec3<f32>(x_1099, x_1099, x_1099) * vec3<f32>(x_1101.x, x_1101.y, x_1101.z)) + vec3<f32>(x_1104.x, x_1104.y, x_1104.z));
    let x_1107 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
    let x_1109 : vec3<f32> = u_xlat1;
    let x_1111 : vec4<f32> = u_xlat2;
    let x_1113 : vec3<f32> = (-(x_1109) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
    let x_1114 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
    let x_1117 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1119 : vec4<f32> = u_xlat2;
    let x_1122 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1117.w, x_1117.w, x_1117.w) * vec3<f32>(x_1119.x, x_1119.y, x_1119.z)) + x_1122);
    let x_1124 : vec3<f32> = u_xlat1;
    let x_1127 : vec3<f32> = (x_1124 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1128 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
    let x_1130 : vec3<f32> = u_xlat1;
    let x_1133 : vec3<f32> = (x_1130 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1134 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1133.x, x_1133.y, x_1133.z, x_1134.w);
    let x_1136 : vec4<f32> = u_xlat3;
    let x_1140 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1141 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
    let x_1143 : vec4<f32> = u_xlat3;
    let x_1146 : vec3<f32> = log2(abs(vec3<f32>(x_1143.x, x_1143.y, x_1143.z)));
    let x_1147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
    let x_1149 : vec4<f32> = u_xlat3;
    let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1154 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
    let x_1156 : vec4<f32> = u_xlat3;
    let x_1158 : vec3<f32> = exp2(vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
    let x_1159 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
    let x_1163 : vec3<f32> = u_xlat1;
    let x_1165 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1163.x));
    u_xlatb1 = vec3<bool>(x_1165.x, x_1165.y, x_1165.z);
    let x_1168 : bool = u_xlatb1.x;
    if (x_1168) {
      let x_1173 : f32 = u_xlat2.x;
      x_1169 = x_1173;
    } else {
      let x_1176 : f32 = u_xlat3.x;
      x_1169 = x_1176;
    }
    let x_1177 : f32 = x_1169;
    u_xlat0.x = x_1177;
    let x_1180 : bool = u_xlatb1.y;
    if (x_1180) {
      let x_1185 : f32 = u_xlat2.y;
      x_1181 = x_1185;
    } else {
      let x_1188 : f32 = u_xlat3.y;
      x_1181 = x_1188;
    }
    let x_1189 : f32 = x_1181;
    u_xlat0.y = x_1189;
    let x_1192 : bool = u_xlatb1.z;
    if (x_1192) {
      let x_1197 : f32 = u_xlat2.z;
      x_1193 = x_1197;
    } else {
      let x_1200 : f32 = u_xlat3.z;
      x_1193 = x_1200;
    }
    let x_1201 : f32 = x_1193;
    u_xlat0.z = x_1201;
  }
  let x_1203 : vec2<f32> = vs_TEXCOORD0;
  let x_1206 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1210 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1212 : vec2<f32> = ((x_1203 * vec2<f32>(x_1206.x, x_1206.y)) + vec2<f32>(x_1210.z, x_1210.w));
  let x_1213 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1212.x, x_1212.y, x_1213.z);
  let x_1220 : vec3<f32> = u_xlat1;
  let x_1223 : f32 = x_25.x_GlobalMipBias.x;
  let x_1224 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1220.x, x_1220.y), x_1223);
  u_xlat18 = x_1224.w;
  let x_1226 : f32 = u_xlat18;
  u_xlat18 = (x_1226 + -0.5f);
  let x_1228 : f32 = u_xlat18;
  let x_1229 : f32 = u_xlat18;
  u_xlat18 = (x_1228 + x_1229);
  let x_1231 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1240 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1240);
  let x_1245 : f32 = x_25.x_Grain_Params.y;
  let x_1247 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1245 * -(x_1247)) + 1.0f);
  let x_1253 : f32 = u_xlat18;
  let x_1255 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1253, x_1253, x_1253) * vec3<f32>(x_1255.x, x_1255.y, x_1255.z));
  let x_1258 : vec3<f32> = u_xlat7;
  let x_1261 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1258 * vec3<f32>(x_1261.x, x_1261.x, x_1261.x));
  let x_1264 : vec3<f32> = u_xlat7;
  let x_1265 : vec3<f32> = u_xlat1;
  let x_1268 : vec4<f32> = u_xlat0;
  let x_1270 : vec3<f32> = ((x_1264 * vec3<f32>(x_1265.x, x_1265.x, x_1265.x)) + vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1273.x, x_1273.y, x_1273.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1276 : vec4<f32> = u_xlat0;
  let x_1279 : vec3<f32> = log2(abs(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)));
  let x_1280 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1280.w);
  let x_1282 : vec4<f32> = u_xlat2;
  let x_1284 : vec3<f32> = (vec3<f32>(x_1282.x, x_1282.y, x_1282.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1285 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1284.x, x_1284.y, x_1284.z, x_1285.w);
  let x_1287 : vec4<f32> = u_xlat2;
  let x_1289 : vec3<f32> = exp2(vec3<f32>(x_1287.x, x_1287.y, x_1287.z));
  let x_1290 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1289.x, x_1289.y, x_1289.z, x_1290.w);
  let x_1292 : vec4<f32> = u_xlat2;
  let x_1295 : vec3<f32> = ((vec3<f32>(x_1292.x, x_1292.y, x_1292.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1296 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1296.w);
  let x_1298 : vec4<f32> = u_xlat0;
  let x_1300 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.x));
  u_xlatb0 = vec3<bool>(x_1300.x, x_1300.y, x_1300.z);
  let x_1303 : bool = u_xlatb0.x;
  if (x_1303) {
    let x_1308 : f32 = u_xlat1.x;
    x_1304 = x_1308;
  } else {
    let x_1311 : f32 = u_xlat2.x;
    x_1304 = x_1311;
  }
  let x_1312 : f32 = x_1304;
  u_xlat0.x = x_1312;
  let x_1315 : bool = u_xlatb0.y;
  if (x_1315) {
    let x_1320 : f32 = u_xlat1.y;
    x_1316 = x_1320;
  } else {
    let x_1323 : f32 = u_xlat2.y;
    x_1316 = x_1323;
  }
  let x_1324 : f32 = x_1316;
  u_xlat0.y = x_1324;
  let x_1327 : bool = u_xlatb0.z;
  if (x_1327) {
    let x_1332 : f32 = u_xlat1.z;
    x_1328 = x_1332;
  } else {
    let x_1335 : f32 = u_xlat2.z;
    x_1328 = x_1335;
  }
  let x_1336 : f32 = x_1328;
  u_xlat0.z = x_1336;
  let x_1338 : vec2<f32> = vs_TEXCOORD0;
  let x_1341 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1345 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1347 : vec2<f32> = ((x_1338 * vec2<f32>(x_1341.x, x_1341.y)) + vec2<f32>(x_1345.z, x_1345.w));
  let x_1348 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1347.x, x_1347.y, x_1348.z);
  let x_1355 : vec3<f32> = u_xlat1;
  let x_1358 : f32 = x_25.x_GlobalMipBias.x;
  let x_1359 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1355.x, x_1355.y), x_1358);
  u_xlat18 = x_1359.w;
  let x_1361 : f32 = u_xlat18;
  u_xlat18 = ((x_1361 * 2.0f) + -1.0f);
  let x_1364 : f32 = u_xlat18;
  u_xlatb1.x = (x_1364 >= 0.0f);
  let x_1368 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1368);
  let x_1371 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1371)) + 1.0f);
  let x_1375 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1375);
  let x_1377 : f32 = u_xlat18;
  u_xlat18 = (-(x_1377) + 1.0f);
  let x_1380 : f32 = u_xlat18;
  let x_1382 : f32 = u_xlat1.x;
  u_xlat18 = (x_1380 * x_1382);
  let x_1384 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1384.x, x_1384.y, x_1384.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1387 : vec4<f32> = u_xlat0;
  let x_1390 : vec3<f32> = log2(abs(vec3<f32>(x_1387.x, x_1387.y, x_1387.z)));
  let x_1391 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1390.x, x_1390.y, x_1390.z, x_1391.w);
  let x_1393 : vec4<f32> = u_xlat2;
  let x_1395 : vec3<f32> = (vec3<f32>(x_1393.x, x_1393.y, x_1393.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1396 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1395.x, x_1395.y, x_1395.z, x_1396.w);
  let x_1398 : vec4<f32> = u_xlat2;
  let x_1400 : vec3<f32> = exp2(vec3<f32>(x_1398.x, x_1398.y, x_1398.z));
  let x_1401 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1400.x, x_1400.y, x_1400.z, x_1401.w);
  let x_1403 : vec4<f32> = u_xlat2;
  let x_1406 : vec3<f32> = ((vec3<f32>(x_1403.x, x_1403.y, x_1403.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1407 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1406.x, x_1406.y, x_1406.z, x_1407.w);
  let x_1409 : vec4<f32> = u_xlat0;
  let x_1411 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1409.x, x_1409.y, x_1409.z, x_1409.x));
  u_xlatb0 = vec3<bool>(x_1411.x, x_1411.y, x_1411.z);
  let x_1414 : bool = u_xlatb0.x;
  if (x_1414) {
    let x_1419 : f32 = u_xlat1.x;
    x_1415 = x_1419;
  } else {
    let x_1422 : f32 = u_xlat2.x;
    x_1415 = x_1422;
  }
  let x_1423 : f32 = x_1415;
  u_xlat0.x = x_1423;
  let x_1426 : bool = u_xlatb0.y;
  if (x_1426) {
    let x_1431 : f32 = u_xlat1.y;
    x_1427 = x_1431;
  } else {
    let x_1434 : f32 = u_xlat2.y;
    x_1427 = x_1434;
  }
  let x_1435 : f32 = x_1427;
  u_xlat0.y = x_1435;
  let x_1438 : bool = u_xlatb0.z;
  if (x_1438) {
    let x_1443 : f32 = u_xlat1.z;
    x_1439 = x_1443;
  } else {
    let x_1446 : f32 = u_xlat2.z;
    x_1439 = x_1446;
  }
  let x_1447 : f32 = x_1439;
  u_xlat0.z = x_1447;
  let x_1449 : f32 = u_xlat18;
  let x_1454 : vec4<f32> = u_xlat0;
  let x_1456 : vec3<f32> = ((vec3<f32>(x_1449, x_1449, x_1449) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1454.x, x_1454.y, x_1454.z));
  let x_1457 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1456.x, x_1456.y, x_1456.z, x_1457.w);
  let x_1459 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1459.x, x_1459.y, x_1459.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1462 : vec4<f32> = u_xlat0;
  let x_1464 : vec3<f32> = (vec3<f32>(x_1462.x, x_1462.y, x_1462.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1465 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1464.x, x_1464.y, x_1464.z, x_1465.w);
  let x_1467 : vec4<f32> = u_xlat2;
  let x_1469 : vec3<f32> = (vec3<f32>(x_1467.x, x_1467.y, x_1467.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1469.x, x_1469.y, x_1469.z, x_1470.w);
  let x_1472 : vec4<f32> = u_xlat2;
  let x_1475 : vec3<f32> = log2(abs(vec3<f32>(x_1472.x, x_1472.y, x_1472.z)));
  let x_1476 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);
  let x_1478 : vec4<f32> = u_xlat2;
  let x_1480 : vec3<f32> = (vec3<f32>(x_1478.x, x_1478.y, x_1478.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1481 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1480.x, x_1480.y, x_1480.z, x_1481.w);
  let x_1483 : vec4<f32> = u_xlat2;
  let x_1485 : vec3<f32> = exp2(vec3<f32>(x_1483.x, x_1483.y, x_1483.z));
  let x_1486 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1485.x, x_1485.y, x_1485.z, x_1486.w);
  let x_1488 : vec4<f32> = u_xlat0;
  let x_1490 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1488.x, x_1488.y, x_1488.z, x_1488.x));
  u_xlatb0 = vec3<bool>(x_1490.x, x_1490.y, x_1490.z);
  let x_1493 : bool = u_xlatb0.x;
  if (x_1493) {
    let x_1498 : f32 = u_xlat1.x;
    x_1494 = x_1498;
  } else {
    let x_1501 : f32 = u_xlat2.x;
    x_1494 = x_1501;
  }
  let x_1502 : f32 = x_1494;
  u_xlat0.x = x_1502;
  let x_1505 : bool = u_xlatb0.y;
  if (x_1505) {
    let x_1510 : f32 = u_xlat1.y;
    x_1506 = x_1510;
  } else {
    let x_1513 : f32 = u_xlat2.y;
    x_1506 = x_1513;
  }
  let x_1514 : f32 = x_1506;
  u_xlat0.y = x_1514;
  let x_1517 : bool = u_xlatb0.z;
  if (x_1517) {
    let x_1522 : f32 = u_xlat1.z;
    x_1518 = x_1522;
  } else {
    let x_1525 : f32 = u_xlat2.z;
    x_1518 = x_1525;
  }
  let x_1526 : f32 = x_1518;
  u_xlat0.z = x_1526;
  let x_1530 : vec4<f32> = u_xlat0;
  let x_1532 : vec3<f32> = max(vec3<f32>(x_1530.x, x_1530.y, x_1530.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1533 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1533.w);
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

