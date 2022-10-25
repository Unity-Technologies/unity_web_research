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

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

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
  var x_947 : f32;
  var x_959 : f32;
  var x_971 : f32;
  var u_xlat18 : f32;
  var x_1134 : f32;
  var x_1146 : f32;
  var x_1158 : f32;
  var u_xlat7 : vec3<f32>;
  var x_1319 : f32;
  var x_1331 : f32;
  var x_1343 : f32;
  var x_1398 : f32;
  var x_1410 : f32;
  var x_1422 : f32;
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
  let x_759 : vec3<f32> = (vec3<f32>(x_753.z, x_753.x, x_753.y) * vec3<f32>(x_757.w, x_757.w, x_757.w));
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = ((vec3<f32>(x_762.x, x_762.y, x_762.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_770 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = max(vec3<f32>(x_772.x, x_772.y, x_772.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_780 : vec3<f32> = log2(vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_790 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_797 : vec3<f32> = clamp(vec3<f32>(x_793.x, x_793.y, x_793.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_800.x, x_800.y, x_800.z) * vec3<f32>(x_803.z, x_803.z, x_803.z));
  let x_807 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_807);
  let x_811 : vec4<f32> = x_25.x_Lut_Params;
  let x_813 : vec2<f32> = (vec2<f32>(x_811.x, x_811.y) * vec2<f32>(0.5f, 0.5f));
  let x_814 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_813.x, x_813.y, x_814.z);
  let x_816 : vec3<f32> = u_xlat6;
  let x_819 : vec4<f32> = x_25.x_Lut_Params;
  let x_822 : vec3<f32> = u_xlat1;
  let x_824 : vec2<f32> = ((vec2<f32>(x_816.y, x_816.z) * vec2<f32>(x_819.x, x_819.y)) + vec2<f32>(x_822.x, x_822.y));
  let x_825 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_825.x, x_824.x, x_824.y);
  let x_828 : f32 = u_xlat6.x;
  let x_830 : f32 = x_25.x_Lut_Params.y;
  let x_833 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_828 * x_830) + x_833);
  let x_840 : vec3<f32> = u_xlat1;
  let x_842 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_840.x, x_840.z), 0.0f);
  let x_843 : vec3<f32> = vec3<f32>(x_842.x, x_842.y, x_842.z);
  let x_844 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_847 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_847;
  u_xlat3.y = 0.0f;
  let x_850 : vec3<f32> = u_xlat1;
  let x_852 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_850.x, x_850.z) + vec2<f32>(x_852.x, x_852.y));
  let x_858 : vec2<f32> = u_xlat12;
  let x_859 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_858, 0.0f);
  u_xlat1 = vec3<f32>(x_859.x, x_859.y, x_859.z);
  let x_862 : f32 = u_xlat0.x;
  let x_864 : f32 = x_25.x_Lut_Params.z;
  let x_867 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_862 * x_864) + -(x_867));
  let x_871 : vec4<f32> = u_xlat2;
  let x_874 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_871.x, x_871.y, x_871.z)) + x_874);
  let x_876 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = u_xlat6;
  let x_880 : vec4<f32> = u_xlat2;
  let x_882 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.x, x_876.x) * x_878) + vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_888 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_888);
  let x_890 : bool = u_xlatb18;
  if (x_890) {
    let x_893 : vec4<f32> = u_xlat0;
    let x_894 : vec3<f32> = vec3<f32>(x_893.x, x_893.y, x_893.z);
    let x_895 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
    let x_897 : vec4<f32> = u_xlat0;
    let x_901 : vec3<f32> = clamp(vec3<f32>(x_897.x, x_897.y, x_897.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_902 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
    let x_904 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_909 : vec4<f32> = u_xlat0;
    let x_911 : vec3<f32> = log2(vec3<f32>(x_909.x, x_909.y, x_909.z));
    let x_912 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
    let x_914 : vec4<f32> = u_xlat2;
    let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_919 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat2;
    let x_923 : vec3<f32> = exp2(vec3<f32>(x_921.x, x_921.y, x_921.z));
    let x_924 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
    let x_926 : vec4<f32> = u_xlat2;
    let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_934 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
    let x_938 : vec4<f32> = u_xlat0;
    let x_941 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_938.x, x_938.y, x_938.z, x_938.x));
    u_xlatb3 = vec3<bool>(x_941.x, x_941.y, x_941.z);
    let x_944 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_944;
    let x_946 : bool = u_xlatb3.x;
    if (x_946) {
      let x_951 : f32 = u_xlat1.x;
      x_947 = x_951;
    } else {
      let x_954 : f32 = u_xlat2.x;
      x_947 = x_954;
    }
    let x_955 : f32 = x_947;
    hlslcc_movcTemp.x = x_955;
    let x_958 : bool = u_xlatb3.y;
    if (x_958) {
      let x_963 : f32 = u_xlat1.y;
      x_959 = x_963;
    } else {
      let x_966 : f32 = u_xlat2.y;
      x_959 = x_966;
    }
    let x_967 : f32 = x_959;
    hlslcc_movcTemp.y = x_967;
    let x_970 : bool = u_xlatb3.z;
    if (x_970) {
      let x_975 : f32 = u_xlat1.z;
      x_971 = x_975;
    } else {
      let x_978 : f32 = u_xlat2.z;
      x_971 = x_978;
    }
    let x_979 : f32 = x_971;
    hlslcc_movcTemp.z = x_979;
    let x_981 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_981;
    let x_982 : vec3<f32> = u_xlat1;
    let x_985 : vec4<f32> = x_25.x_UserLut_Params;
    let x_987 : vec3<f32> = (vec3<f32>(x_982.z, x_982.x, x_982.y) * vec3<f32>(x_985.z, x_985.z, x_985.z));
    let x_988 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
    let x_992 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_992);
    let x_995 : vec4<f32> = x_25.x_UserLut_Params;
    let x_997 : vec2<f32> = (vec2<f32>(x_995.x, x_995.y) * vec2<f32>(0.5f, 0.5f));
    let x_998 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_997.x, x_998.y, x_998.z, x_997.y);
    let x_1000 : vec4<f32> = u_xlat2;
    let x_1003 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1006 : vec4<f32> = u_xlat2;
    let x_1008 : vec2<f32> = ((vec2<f32>(x_1000.y, x_1000.z) * vec2<f32>(x_1003.x, x_1003.y)) + vec2<f32>(x_1006.x, x_1006.w));
    let x_1009 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1009.x, x_1008.x, x_1008.y, x_1009.w);
    let x_1011 : f32 = u_xlat18;
    let x_1013 : f32 = x_25.x_UserLut_Params.y;
    let x_1016 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1011 * x_1013) + x_1016);
    let x_1023 : vec4<f32> = u_xlat2;
    let x_1025 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1023.x, x_1023.z), 0.0f);
    let x_1026 : vec3<f32> = vec3<f32>(x_1025.x, x_1025.y, x_1025.z);
    let x_1027 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
    let x_1030 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1030;
    u_xlat4.y = 0.0f;
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1035 : vec2<f32> = u_xlat4;
    let x_1036 : vec2<f32> = (vec2<f32>(x_1033.x, x_1033.z) + x_1035);
    let x_1037 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1042.x, x_1042.y), 0.0f);
    let x_1045 : vec3<f32> = vec3<f32>(x_1044.x, x_1044.y, x_1044.z);
    let x_1046 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
    let x_1049 : f32 = u_xlat1.z;
    let x_1051 : f32 = x_25.x_UserLut_Params.z;
    let x_1053 : f32 = u_xlat18;
    u_xlat18 = ((x_1049 * x_1051) + -(x_1053));
    let x_1056 : vec4<f32> = u_xlat3;
    let x_1059 : vec4<f32> = u_xlat2;
    let x_1061 : vec3<f32> = (-(vec3<f32>(x_1056.x, x_1056.y, x_1056.z)) + vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
    let x_1062 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
    let x_1064 : f32 = u_xlat18;
    let x_1066 : vec4<f32> = u_xlat2;
    let x_1069 : vec4<f32> = u_xlat3;
    let x_1071 : vec3<f32> = ((vec3<f32>(x_1064, x_1064, x_1064) * vec3<f32>(x_1066.x, x_1066.y, x_1066.z)) + vec3<f32>(x_1069.x, x_1069.y, x_1069.z));
    let x_1072 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1071.x, x_1071.y, x_1071.z, x_1072.w);
    let x_1074 : vec3<f32> = u_xlat1;
    let x_1076 : vec4<f32> = u_xlat2;
    let x_1078 : vec3<f32> = (-(x_1074) + vec3<f32>(x_1076.x, x_1076.y, x_1076.z));
    let x_1079 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
    let x_1082 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1084 : vec4<f32> = u_xlat2;
    let x_1087 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1082.w, x_1082.w, x_1082.w) * vec3<f32>(x_1084.x, x_1084.y, x_1084.z)) + x_1087);
    let x_1089 : vec3<f32> = u_xlat1;
    let x_1092 : vec3<f32> = (x_1089 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1093 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
    let x_1095 : vec3<f32> = u_xlat1;
    let x_1098 : vec3<f32> = (x_1095 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1099 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
    let x_1101 : vec4<f32> = u_xlat3;
    let x_1105 : vec3<f32> = (vec3<f32>(x_1101.x, x_1101.y, x_1101.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1106 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1105.x, x_1105.y, x_1105.z, x_1106.w);
    let x_1108 : vec4<f32> = u_xlat3;
    let x_1111 : vec3<f32> = log2(abs(vec3<f32>(x_1108.x, x_1108.y, x_1108.z)));
    let x_1112 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    let x_1114 : vec4<f32> = u_xlat3;
    let x_1118 : vec3<f32> = (vec3<f32>(x_1114.x, x_1114.y, x_1114.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1119 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
    let x_1121 : vec4<f32> = u_xlat3;
    let x_1123 : vec3<f32> = exp2(vec3<f32>(x_1121.x, x_1121.y, x_1121.z));
    let x_1124 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
    let x_1128 : vec3<f32> = u_xlat1;
    let x_1130 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.x));
    u_xlatb1 = vec3<bool>(x_1130.x, x_1130.y, x_1130.z);
    let x_1133 : bool = u_xlatb1.x;
    if (x_1133) {
      let x_1138 : f32 = u_xlat2.x;
      x_1134 = x_1138;
    } else {
      let x_1141 : f32 = u_xlat3.x;
      x_1134 = x_1141;
    }
    let x_1142 : f32 = x_1134;
    u_xlat0.x = x_1142;
    let x_1145 : bool = u_xlatb1.y;
    if (x_1145) {
      let x_1150 : f32 = u_xlat2.y;
      x_1146 = x_1150;
    } else {
      let x_1153 : f32 = u_xlat3.y;
      x_1146 = x_1153;
    }
    let x_1154 : f32 = x_1146;
    u_xlat0.y = x_1154;
    let x_1157 : bool = u_xlatb1.z;
    if (x_1157) {
      let x_1162 : f32 = u_xlat2.z;
      x_1158 = x_1162;
    } else {
      let x_1165 : f32 = u_xlat3.z;
      x_1158 = x_1165;
    }
    let x_1166 : f32 = x_1158;
    u_xlat0.z = x_1166;
  }
  let x_1168 : vec2<f32> = vs_TEXCOORD0;
  let x_1171 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1175 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1177 : vec2<f32> = ((x_1168 * vec2<f32>(x_1171.x, x_1171.y)) + vec2<f32>(x_1175.z, x_1175.w));
  let x_1178 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1177.x, x_1177.y, x_1178.z);
  let x_1185 : vec3<f32> = u_xlat1;
  let x_1188 : f32 = x_25.x_GlobalMipBias.x;
  let x_1189 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1185.x, x_1185.y), x_1188);
  u_xlat18 = x_1189.w;
  let x_1191 : f32 = u_xlat18;
  u_xlat18 = (x_1191 + -0.5f);
  let x_1193 : f32 = u_xlat18;
  let x_1194 : f32 = u_xlat18;
  u_xlat18 = (x_1193 + x_1194);
  let x_1196 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1205 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1205);
  let x_1210 : f32 = x_25.x_Grain_Params.y;
  let x_1212 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1210 * -(x_1212)) + 1.0f);
  let x_1218 : f32 = u_xlat18;
  let x_1220 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1218, x_1218, x_1218) * vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec3<f32> = u_xlat7;
  let x_1226 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1223 * vec3<f32>(x_1226.x, x_1226.x, x_1226.x));
  let x_1229 : vec3<f32> = u_xlat7;
  let x_1230 : vec3<f32> = u_xlat1;
  let x_1233 : vec4<f32> = u_xlat0;
  let x_1235 : vec3<f32> = ((x_1229 * vec3<f32>(x_1230.x, x_1230.x, x_1230.x)) + vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec4<f32> = u_xlat0;
  let x_1240 : vec3<f32> = sqrt(vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec2<f32> = vs_TEXCOORD0;
  let x_1246 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1250 : vec4<f32> = x_25.x_Dithering_Params;
  let x_1252 : vec2<f32> = ((x_1243 * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1250.z, x_1250.w));
  let x_1253 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1252.x, x_1252.y, x_1253.z);
  let x_1260 : vec3<f32> = u_xlat1;
  let x_1263 : f32 = x_25.x_GlobalMipBias.x;
  let x_1264 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_1260.x, x_1260.y), x_1263);
  u_xlat18 = x_1264.w;
  let x_1266 : f32 = u_xlat18;
  u_xlat18 = ((x_1266 * 2.0f) + -1.0f);
  let x_1269 : f32 = u_xlat18;
  u_xlatb1.x = (x_1269 >= 0.0f);
  let x_1273 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_1273);
  let x_1276 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1276)) + 1.0f);
  let x_1280 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1280);
  let x_1282 : f32 = u_xlat18;
  u_xlat18 = (-(x_1282) + 1.0f);
  let x_1285 : f32 = u_xlat18;
  let x_1287 : f32 = u_xlat1.x;
  u_xlat18 = (x_1285 * x_1287);
  let x_1289 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1292 : vec4<f32> = u_xlat0;
  let x_1294 : vec3<f32> = log2(vec3<f32>(x_1292.x, x_1292.y, x_1292.z));
  let x_1295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1294.x, x_1294.y, x_1294.z, x_1295.w);
  let x_1297 : vec4<f32> = u_xlat2;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1299.x, x_1299.y, x_1299.z, x_1300.w);
  let x_1302 : vec4<f32> = u_xlat2;
  let x_1304 : vec3<f32> = exp2(vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1304.x, x_1304.y, x_1304.z, x_1305.w);
  let x_1307 : vec4<f32> = u_xlat2;
  let x_1310 : vec3<f32> = ((vec3<f32>(x_1307.x, x_1307.y, x_1307.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1311 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1310.x, x_1310.y, x_1310.z, x_1311.w);
  let x_1313 : vec4<f32> = u_xlat0;
  let x_1315 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1313.x, x_1313.y, x_1313.z, x_1313.x));
  u_xlatb0 = vec3<bool>(x_1315.x, x_1315.y, x_1315.z);
  let x_1318 : bool = u_xlatb0.x;
  if (x_1318) {
    let x_1323 : f32 = u_xlat1.x;
    x_1319 = x_1323;
  } else {
    let x_1326 : f32 = u_xlat2.x;
    x_1319 = x_1326;
  }
  let x_1327 : f32 = x_1319;
  u_xlat0.x = x_1327;
  let x_1330 : bool = u_xlatb0.y;
  if (x_1330) {
    let x_1335 : f32 = u_xlat1.y;
    x_1331 = x_1335;
  } else {
    let x_1338 : f32 = u_xlat2.y;
    x_1331 = x_1338;
  }
  let x_1339 : f32 = x_1331;
  u_xlat0.y = x_1339;
  let x_1342 : bool = u_xlatb0.z;
  if (x_1342) {
    let x_1347 : f32 = u_xlat1.z;
    x_1343 = x_1347;
  } else {
    let x_1350 : f32 = u_xlat2.z;
    x_1343 = x_1350;
  }
  let x_1351 : f32 = x_1343;
  u_xlat0.z = x_1351;
  let x_1353 : f32 = u_xlat18;
  let x_1358 : vec4<f32> = u_xlat0;
  let x_1360 : vec3<f32> = ((vec3<f32>(x_1353, x_1353, x_1353) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1358.x, x_1358.y, x_1358.z));
  let x_1361 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1363.x, x_1363.y, x_1363.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1366 : vec4<f32> = u_xlat0;
  let x_1368 : vec3<f32> = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1369 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
  let x_1371 : vec4<f32> = u_xlat2;
  let x_1373 : vec3<f32> = (vec3<f32>(x_1371.x, x_1371.y, x_1371.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1374 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1374.w);
  let x_1376 : vec4<f32> = u_xlat2;
  let x_1379 : vec3<f32> = log2(abs(vec3<f32>(x_1376.x, x_1376.y, x_1376.z)));
  let x_1380 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1382 : vec4<f32> = u_xlat2;
  let x_1384 : vec3<f32> = (vec3<f32>(x_1382.x, x_1382.y, x_1382.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1385.w);
  let x_1387 : vec4<f32> = u_xlat2;
  let x_1389 : vec3<f32> = exp2(vec3<f32>(x_1387.x, x_1387.y, x_1387.z));
  let x_1390 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1389.x, x_1389.y, x_1389.z, x_1390.w);
  let x_1392 : vec4<f32> = u_xlat0;
  let x_1394 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1392.x));
  u_xlatb0 = vec3<bool>(x_1394.x, x_1394.y, x_1394.z);
  let x_1397 : bool = u_xlatb0.x;
  if (x_1397) {
    let x_1402 : f32 = u_xlat1.x;
    x_1398 = x_1402;
  } else {
    let x_1405 : f32 = u_xlat2.x;
    x_1398 = x_1405;
  }
  let x_1406 : f32 = x_1398;
  u_xlat0.x = x_1406;
  let x_1409 : bool = u_xlatb0.y;
  if (x_1409) {
    let x_1414 : f32 = u_xlat1.y;
    x_1410 = x_1414;
  } else {
    let x_1417 : f32 = u_xlat2.y;
    x_1410 = x_1417;
  }
  let x_1418 : f32 = x_1410;
  u_xlat0.y = x_1418;
  let x_1421 : bool = u_xlatb0.z;
  if (x_1421) {
    let x_1426 : f32 = u_xlat1.z;
    x_1422 = x_1426;
  } else {
    let x_1429 : f32 = u_xlat2.z;
    x_1422 = x_1429;
  }
  let x_1430 : f32 = x_1422;
  u_xlat0.z = x_1430;
  let x_1434 : vec4<f32> = u_xlat0;
  let x_1436 : vec3<f32> = max(vec3<f32>(x_1434.x, x_1434.y, x_1434.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1437 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1436.x, x_1436.y, x_1436.z, x_1437.w);
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

