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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

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
  var x_957 : f32;
  var x_969 : f32;
  var x_981 : f32;
  var x_1143 : f32;
  var x_1155 : f32;
  var x_1167 : f32;
  var u_xlat7 : vec3<f32>;
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
  u_xlat1 = (vec3<f32>(x_840.x, x_840.y, x_840.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_845 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = ((vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.069599994f, 0.069599994f, 0.069599994f));
  let x_853 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec3<f32> = u_xlat1;
  let x_856 : vec4<f32> = u_xlat2;
  let x_861 : vec3<f32> = ((x_855 * vec3<f32>(x_856.x, x_856.y, x_856.z)) + vec3<f32>(0.00544f, 0.00544f, 0.00544f));
  let x_862 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(0.262677222f, 0.262677222f, 0.262677222f)) + vec3<f32>(0.289999992f, 0.289999992f, 0.289999992f));
  let x_870 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_872 : vec3<f32> = u_xlat1;
  let x_873 : vec4<f32> = u_xlat0;
  let x_878 : vec3<f32> = ((x_872 * vec3<f32>(x_873.x, x_873.y, x_873.z)) + vec3<f32>(0.08160001f, 0.08160001f, 0.08160001f));
  let x_879 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat2;
  let x_883 : vec4<f32> = u_xlat0;
  let x_885 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) / vec3<f32>(x_883.x, x_883.y, x_883.z));
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat0;
  let x_892 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) + vec3<f32>(-0.066666663f, -0.066666663f, -0.066666663f));
  let x_893 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  let x_895 : vec4<f32> = u_xlat0;
  let x_897 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(1.313386083f, 1.313386083f, 1.313386083f));
  let x_898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat0;
  let x_904 : vec3<f32> = clamp(vec3<f32>(x_900.x, x_900.y, x_900.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_909 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_909);
  let x_911 : bool = u_xlatb18;
  if (x_911) {
    let x_914 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_919 : vec4<f32> = u_xlat0;
    let x_921 : vec3<f32> = log2(vec3<f32>(x_919.x, x_919.y, x_919.z));
    let x_922 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
    let x_924 : vec4<f32> = u_xlat2;
    let x_928 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_929 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
    let x_931 : vec4<f32> = u_xlat2;
    let x_933 : vec3<f32> = exp2(vec3<f32>(x_931.x, x_931.y, x_931.z));
    let x_934 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
    let x_936 : vec4<f32> = u_xlat2;
    let x_943 : vec3<f32> = ((vec3<f32>(x_936.x, x_936.y, x_936.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_944 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
    let x_948 : vec4<f32> = u_xlat0;
    let x_951 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_948.x, x_948.y, x_948.z, x_948.x));
    u_xlatb3 = vec3<bool>(x_951.x, x_951.y, x_951.z);
    let x_954 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_954;
    let x_956 : bool = u_xlatb3.x;
    if (x_956) {
      let x_961 : f32 = u_xlat1.x;
      x_957 = x_961;
    } else {
      let x_964 : f32 = u_xlat2.x;
      x_957 = x_964;
    }
    let x_965 : f32 = x_957;
    hlslcc_movcTemp.x = x_965;
    let x_968 : bool = u_xlatb3.y;
    if (x_968) {
      let x_973 : f32 = u_xlat1.y;
      x_969 = x_973;
    } else {
      let x_976 : f32 = u_xlat2.y;
      x_969 = x_976;
    }
    let x_977 : f32 = x_969;
    hlslcc_movcTemp.y = x_977;
    let x_980 : bool = u_xlatb3.z;
    if (x_980) {
      let x_985 : f32 = u_xlat1.z;
      x_981 = x_985;
    } else {
      let x_988 : f32 = u_xlat2.z;
      x_981 = x_988;
    }
    let x_989 : f32 = x_981;
    hlslcc_movcTemp.z = x_989;
    let x_991 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_991;
    let x_992 : vec3<f32> = u_xlat1;
    let x_995 : vec4<f32> = x_25.x_UserLut_Params;
    let x_997 : vec3<f32> = (vec3<f32>(x_992.z, x_992.x, x_992.y) * vec3<f32>(x_995.z, x_995.z, x_995.z));
    let x_998 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
    let x_1001 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1001);
    let x_1004 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1006 : vec2<f32> = (vec2<f32>(x_1004.x, x_1004.y) * vec2<f32>(0.5f, 0.5f));
    let x_1007 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1006.x, x_1007.y, x_1007.z, x_1006.y);
    let x_1009 : vec4<f32> = u_xlat2;
    let x_1012 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1015 : vec4<f32> = u_xlat2;
    let x_1017 : vec2<f32> = ((vec2<f32>(x_1009.y, x_1009.z) * vec2<f32>(x_1012.x, x_1012.y)) + vec2<f32>(x_1015.x, x_1015.w));
    let x_1018 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1018.x, x_1017.x, x_1017.y, x_1018.w);
    let x_1020 : f32 = u_xlat18;
    let x_1022 : f32 = x_25.x_UserLut_Params.y;
    let x_1025 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1020 * x_1022) + x_1025);
    let x_1032 : vec4<f32> = u_xlat2;
    let x_1034 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1032.x, x_1032.z), 0.0f);
    let x_1035 : vec3<f32> = vec3<f32>(x_1034.x, x_1034.y, x_1034.z);
    let x_1036 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
    let x_1039 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1039;
    u_xlat4.y = 0.0f;
    let x_1042 : vec4<f32> = u_xlat2;
    let x_1044 : vec2<f32> = u_xlat4;
    let x_1045 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.z) + x_1044);
    let x_1046 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1045.x, x_1045.y, x_1046.z, x_1046.w);
    let x_1051 : vec4<f32> = u_xlat2;
    let x_1053 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1051.x, x_1051.y), 0.0f);
    let x_1054 : vec3<f32> = vec3<f32>(x_1053.x, x_1053.y, x_1053.z);
    let x_1055 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
    let x_1058 : f32 = u_xlat1.z;
    let x_1060 : f32 = x_25.x_UserLut_Params.z;
    let x_1062 : f32 = u_xlat18;
    u_xlat18 = ((x_1058 * x_1060) + -(x_1062));
    let x_1065 : vec4<f32> = u_xlat3;
    let x_1068 : vec4<f32> = u_xlat2;
    let x_1070 : vec3<f32> = (-(vec3<f32>(x_1065.x, x_1065.y, x_1065.z)) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
    let x_1071 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
    let x_1073 : f32 = u_xlat18;
    let x_1075 : vec4<f32> = u_xlat2;
    let x_1078 : vec4<f32> = u_xlat3;
    let x_1080 : vec3<f32> = ((vec3<f32>(x_1073, x_1073, x_1073) * vec3<f32>(x_1075.x, x_1075.y, x_1075.z)) + vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
    let x_1081 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
    let x_1083 : vec3<f32> = u_xlat1;
    let x_1085 : vec4<f32> = u_xlat2;
    let x_1087 : vec3<f32> = (-(x_1083) + vec3<f32>(x_1085.x, x_1085.y, x_1085.z));
    let x_1088 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
    let x_1091 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1093 : vec4<f32> = u_xlat2;
    let x_1096 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1091.w, x_1091.w, x_1091.w) * vec3<f32>(x_1093.x, x_1093.y, x_1093.z)) + x_1096);
    let x_1098 : vec3<f32> = u_xlat1;
    let x_1101 : vec3<f32> = (x_1098 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1102 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
    let x_1104 : vec3<f32> = u_xlat1;
    let x_1107 : vec3<f32> = (x_1104 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1108 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
    let x_1110 : vec4<f32> = u_xlat3;
    let x_1114 : vec3<f32> = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1115 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
    let x_1117 : vec4<f32> = u_xlat3;
    let x_1120 : vec3<f32> = log2(abs(vec3<f32>(x_1117.x, x_1117.y, x_1117.z)));
    let x_1121 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
    let x_1123 : vec4<f32> = u_xlat3;
    let x_1127 : vec3<f32> = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1128 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
    let x_1130 : vec4<f32> = u_xlat3;
    let x_1132 : vec3<f32> = exp2(vec3<f32>(x_1130.x, x_1130.y, x_1130.z));
    let x_1133 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
    let x_1137 : vec3<f32> = u_xlat1;
    let x_1139 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1137.x, x_1137.y, x_1137.z, x_1137.x));
    u_xlatb1 = vec3<bool>(x_1139.x, x_1139.y, x_1139.z);
    let x_1142 : bool = u_xlatb1.x;
    if (x_1142) {
      let x_1147 : f32 = u_xlat2.x;
      x_1143 = x_1147;
    } else {
      let x_1150 : f32 = u_xlat3.x;
      x_1143 = x_1150;
    }
    let x_1151 : f32 = x_1143;
    u_xlat0.x = x_1151;
    let x_1154 : bool = u_xlatb1.y;
    if (x_1154) {
      let x_1159 : f32 = u_xlat2.y;
      x_1155 = x_1159;
    } else {
      let x_1162 : f32 = u_xlat3.y;
      x_1155 = x_1162;
    }
    let x_1163 : f32 = x_1155;
    u_xlat0.y = x_1163;
    let x_1166 : bool = u_xlatb1.z;
    if (x_1166) {
      let x_1171 : f32 = u_xlat2.z;
      x_1167 = x_1171;
    } else {
      let x_1174 : f32 = u_xlat3.z;
      x_1167 = x_1174;
    }
    let x_1175 : f32 = x_1167;
    u_xlat0.z = x_1175;
  }
  let x_1177 : vec4<f32> = u_xlat0;
  let x_1180 : vec4<f32> = x_25.x_Lut_Params;
  let x_1182 : vec3<f32> = (vec3<f32>(x_1177.x, x_1177.y, x_1177.z) * vec3<f32>(x_1180.z, x_1180.z, x_1180.z));
  let x_1183 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1182.x, x_1182.y, x_1183.z, x_1182.z);
  let x_1186 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1186);
  let x_1189 : vec4<f32> = x_25.x_Lut_Params;
  let x_1191 : vec2<f32> = (vec2<f32>(x_1189.x, x_1189.y) * vec2<f32>(0.5f, 0.5f));
  let x_1192 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1191.x, x_1191.y, x_1192.z);
  let x_1194 : vec4<f32> = u_xlat0;
  let x_1197 : vec4<f32> = x_25.x_Lut_Params;
  let x_1200 : vec3<f32> = u_xlat1;
  let x_1202 : vec2<f32> = ((vec2<f32>(x_1194.x, x_1194.y) * vec2<f32>(x_1197.x, x_1197.y)) + vec2<f32>(x_1200.x, x_1200.y));
  let x_1203 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1203.x, x_1202.x, x_1202.y);
  let x_1205 : f32 = u_xlat18;
  let x_1207 : f32 = x_25.x_Lut_Params.y;
  let x_1210 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1205 * x_1207) + x_1210);
  let x_1217 : vec3<f32> = u_xlat1;
  let x_1219 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1217.x, x_1217.z), 0.0f);
  let x_1220 : vec3<f32> = vec3<f32>(x_1219.x, x_1219.y, x_1219.z);
  let x_1221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1221.w);
  let x_1224 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1224;
  u_xlat0.y = 0.0f;
  let x_1227 : vec4<f32> = u_xlat0;
  let x_1229 : vec3<f32> = u_xlat1;
  let x_1231 : vec2<f32> = (vec2<f32>(x_1227.x, x_1227.y) + vec2<f32>(x_1229.x, x_1229.z));
  let x_1232 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
  let x_1237 : vec4<f32> = u_xlat0;
  let x_1239 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1237.x, x_1237.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1239.x, x_1239.y, x_1239.z);
  let x_1242 : f32 = u_xlat0.z;
  let x_1244 : f32 = x_25.x_Lut_Params.z;
  let x_1246 : f32 = u_xlat18;
  u_xlat0.x = ((x_1242 * x_1244) + -(x_1246));
  let x_1250 : vec4<f32> = u_xlat2;
  let x_1253 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1250.x, x_1250.y, x_1250.z)) + x_1253);
  let x_1255 : vec4<f32> = u_xlat0;
  let x_1257 : vec3<f32> = u_xlat6;
  let x_1259 : vec4<f32> = u_xlat2;
  let x_1261 : vec3<f32> = ((vec3<f32>(x_1255.x, x_1255.x, x_1255.x) * x_1257) + vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec2<f32> = vs_TEXCOORD0;
  let x_1267 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1271 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1273 : vec2<f32> = ((x_1264 * vec2<f32>(x_1267.x, x_1267.y)) + vec2<f32>(x_1271.z, x_1271.w));
  let x_1274 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1273.x, x_1273.y, x_1274.z);
  let x_1281 : vec3<f32> = u_xlat1;
  let x_1284 : f32 = x_25.x_GlobalMipBias.x;
  let x_1285 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1281.x, x_1281.y), x_1284);
  u_xlat18 = x_1285.w;
  let x_1287 : f32 = u_xlat18;
  u_xlat18 = (x_1287 + -0.5f);
  let x_1289 : f32 = u_xlat18;
  let x_1290 : f32 = u_xlat18;
  u_xlat18 = (x_1289 + x_1290);
  let x_1292 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1292.x, x_1292.y, x_1292.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1301 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1301);
  let x_1306 : f32 = x_25.x_Grain_Params.y;
  let x_1308 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1306 * -(x_1308)) + 1.0f);
  let x_1314 : f32 = u_xlat18;
  let x_1316 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1314, x_1314, x_1314) * vec3<f32>(x_1316.x, x_1316.y, x_1316.z));
  let x_1319 : vec3<f32> = u_xlat7;
  let x_1322 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1319 * vec3<f32>(x_1322.x, x_1322.x, x_1322.x));
  let x_1325 : vec3<f32> = u_xlat7;
  let x_1326 : vec3<f32> = u_xlat1;
  let x_1329 : vec4<f32> = u_xlat0;
  let x_1331 : vec3<f32> = ((x_1325 * vec3<f32>(x_1326.x, x_1326.x, x_1326.x)) + vec3<f32>(x_1329.x, x_1329.y, x_1329.z));
  let x_1332 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1331.x, x_1331.y, x_1331.z, x_1332.w);
  let x_1336 : vec4<f32> = u_xlat0;
  let x_1338 : vec3<f32> = sqrt(vec3<f32>(x_1336.x, x_1336.y, x_1336.z));
  let x_1339 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
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

