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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearRepeat : sampler;

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
  var x_981 : f32;
  var x_993 : f32;
  var x_1005 : f32;
  var x_1167 : f32;
  var x_1179 : f32;
  var x_1191 : f32;
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
  let x_715 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_720 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb18 = (0.0f < x_720);
  let x_722 : bool = u_xlatb18;
  if (x_722) {
    let x_725 : vec2<f32> = u_xlat13;
    let x_727 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_730 : vec2<f32> = (x_725 + -(vec2<f32>(x_727.x, x_727.y)));
    let x_731 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_730.x, x_730.y, x_731.z);
    let x_733 : vec3<f32> = u_xlat1;
    let x_737 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_739 : vec2<f32> = (abs(vec2<f32>(x_733.x, x_733.y)) * vec2<f32>(x_737.z, x_737.z));
    let x_740 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_740.x, x_739.x, x_739.y);
    let x_743 : f32 = u_xlat1.y;
    let x_746 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_743 * x_746);
    let x_750 : vec3<f32> = u_xlat1;
    let x_752 : vec3<f32> = u_xlat1;
    u_xlat18 = dot(vec2<f32>(x_750.x, x_750.z), vec2<f32>(x_752.x, x_752.z));
    let x_755 : f32 = u_xlat18;
    u_xlat18 = (-(x_755) + 1.0f);
    let x_758 : f32 = u_xlat18;
    u_xlat18 = max(x_758, 0.0f);
    let x_760 : f32 = u_xlat18;
    u_xlat18 = log2(x_760);
    let x_762 : f32 = u_xlat18;
    let x_764 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat18 = (x_762 * x_764);
    let x_766 : f32 = u_xlat18;
    u_xlat18 = exp2(x_766);
    let x_769 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_769.x, x_769.y, x_769.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_774 : f32 = u_xlat18;
    let x_776 : vec3<f32> = u_xlat1;
    let x_779 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_774, x_774, x_774) * x_776) + vec3<f32>(x_779.x, x_779.y, x_779.z));
    let x_782 : vec4<f32> = u_xlat0;
    let x_784 : vec3<f32> = u_xlat1;
    let x_785 : vec3<f32> = (vec3<f32>(x_782.x, x_782.y, x_782.z) * x_784);
    let x_786 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  }
  let x_788 : vec4<f32> = u_xlat0;
  let x_792 : vec4<f32> = x_25.x_Lut_Params;
  let x_794 : vec3<f32> = (vec3<f32>(x_788.z, x_788.x, x_788.y) * vec3<f32>(x_792.w, x_792.w, x_792.w));
  let x_795 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_804 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_804.x, x_804.y, x_804.z, x_805.w);
  let x_807 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = max(vec3<f32>(x_807.x, x_807.y, x_807.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = log2(vec3<f32>(x_813.x, x_813.y, x_813.z));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_818 : vec4<f32> = u_xlat0;
  let x_825 : vec3<f32> = ((vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_832 : vec3<f32> = clamp(vec3<f32>(x_828.x, x_828.y, x_828.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat0;
  let x_838 : vec4<f32> = x_25.x_Lut_Params;
  u_xlat6 = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(x_838.z, x_838.z, x_838.z));
  let x_842 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_842);
  let x_846 : vec4<f32> = x_25.x_Lut_Params;
  let x_848 : vec2<f32> = (vec2<f32>(x_846.x, x_846.y) * vec2<f32>(0.5f, 0.5f));
  let x_849 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_848.x, x_848.y, x_849.z);
  let x_851 : vec3<f32> = u_xlat6;
  let x_854 : vec4<f32> = x_25.x_Lut_Params;
  let x_857 : vec3<f32> = u_xlat1;
  let x_859 : vec2<f32> = ((vec2<f32>(x_851.y, x_851.z) * vec2<f32>(x_854.x, x_854.y)) + vec2<f32>(x_857.x, x_857.y));
  let x_860 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_860.x, x_859.x, x_859.y);
  let x_863 : f32 = u_xlat6.x;
  let x_865 : f32 = x_25.x_Lut_Params.y;
  let x_868 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_863 * x_865) + x_868);
  let x_875 : vec3<f32> = u_xlat1;
  let x_877 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_875.x, x_875.z), 0.0f);
  let x_878 : vec3<f32> = vec3<f32>(x_877.x, x_877.y, x_877.z);
  let x_879 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_882 : f32 = x_25.x_Lut_Params.y;
  u_xlat3.x = x_882;
  u_xlat3.y = 0.0f;
  let x_885 : vec3<f32> = u_xlat1;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_885.x, x_885.z) + vec2<f32>(x_887.x, x_887.y));
  let x_893 : vec2<f32> = u_xlat12;
  let x_894 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_893, 0.0f);
  u_xlat1 = vec3<f32>(x_894.x, x_894.y, x_894.z);
  let x_897 : f32 = u_xlat0.x;
  let x_899 : f32 = x_25.x_Lut_Params.z;
  let x_902 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_897 * x_899) + -(x_902));
  let x_906 : vec4<f32> = u_xlat2;
  let x_909 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_906.x, x_906.y, x_906.z)) + x_909);
  let x_911 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = u_xlat6;
  let x_915 : vec4<f32> = u_xlat2;
  let x_917 : vec3<f32> = ((vec3<f32>(x_911.x, x_911.x, x_911.x) * x_913) + vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_922 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_922);
  let x_924 : bool = u_xlatb18;
  if (x_924) {
    let x_927 : vec4<f32> = u_xlat0;
    let x_928 : vec3<f32> = vec3<f32>(x_927.x, x_927.y, x_927.z);
    let x_929 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
    let x_931 : vec4<f32> = u_xlat0;
    let x_935 : vec3<f32> = clamp(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_936 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_938 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_943 : vec4<f32> = u_xlat0;
    let x_945 : vec3<f32> = log2(vec3<f32>(x_943.x, x_943.y, x_943.z));
    let x_946 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
    let x_948 : vec4<f32> = u_xlat2;
    let x_952 : vec3<f32> = (vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_953 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
    let x_955 : vec4<f32> = u_xlat2;
    let x_957 : vec3<f32> = exp2(vec3<f32>(x_955.x, x_955.y, x_955.z));
    let x_958 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
    let x_960 : vec4<f32> = u_xlat2;
    let x_967 : vec3<f32> = ((vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_968 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
    let x_972 : vec4<f32> = u_xlat0;
    let x_975 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.x));
    u_xlatb3 = vec3<bool>(x_975.x, x_975.y, x_975.z);
    let x_978 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_978;
    let x_980 : bool = u_xlatb3.x;
    if (x_980) {
      let x_985 : f32 = u_xlat1.x;
      x_981 = x_985;
    } else {
      let x_988 : f32 = u_xlat2.x;
      x_981 = x_988;
    }
    let x_989 : f32 = x_981;
    hlslcc_movcTemp.x = x_989;
    let x_992 : bool = u_xlatb3.y;
    if (x_992) {
      let x_997 : f32 = u_xlat1.y;
      x_993 = x_997;
    } else {
      let x_1000 : f32 = u_xlat2.y;
      x_993 = x_1000;
    }
    let x_1001 : f32 = x_993;
    hlslcc_movcTemp.y = x_1001;
    let x_1004 : bool = u_xlatb3.z;
    if (x_1004) {
      let x_1009 : f32 = u_xlat1.z;
      x_1005 = x_1009;
    } else {
      let x_1012 : f32 = u_xlat2.z;
      x_1005 = x_1012;
    }
    let x_1013 : f32 = x_1005;
    hlslcc_movcTemp.z = x_1013;
    let x_1015 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_1015;
    let x_1016 : vec3<f32> = u_xlat1;
    let x_1019 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1021 : vec3<f32> = (vec3<f32>(x_1016.z, x_1016.x, x_1016.y) * vec3<f32>(x_1019.z, x_1019.z, x_1019.z));
    let x_1022 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
    let x_1025 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_1025);
    let x_1028 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1030 : vec2<f32> = (vec2<f32>(x_1028.x, x_1028.y) * vec2<f32>(0.5f, 0.5f));
    let x_1031 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1030.x, x_1031.y, x_1031.z, x_1030.y);
    let x_1033 : vec4<f32> = u_xlat2;
    let x_1036 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1039 : vec4<f32> = u_xlat2;
    let x_1041 : vec2<f32> = ((vec2<f32>(x_1033.y, x_1033.z) * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1039.x, x_1039.w));
    let x_1042 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1042.x, x_1041.x, x_1041.y, x_1042.w);
    let x_1044 : f32 = u_xlat18;
    let x_1046 : f32 = x_25.x_UserLut_Params.y;
    let x_1049 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_1044 * x_1046) + x_1049);
    let x_1056 : vec4<f32> = u_xlat2;
    let x_1058 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1056.x, x_1056.z), 0.0f);
    let x_1059 : vec3<f32> = vec3<f32>(x_1058.x, x_1058.y, x_1058.z);
    let x_1060 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
    let x_1063 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_1063;
    u_xlat4.y = 0.0f;
    let x_1066 : vec4<f32> = u_xlat2;
    let x_1068 : vec2<f32> = u_xlat4;
    let x_1069 : vec2<f32> = (vec2<f32>(x_1066.x, x_1066.z) + x_1068);
    let x_1070 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1069.x, x_1069.y, x_1070.z, x_1070.w);
    let x_1075 : vec4<f32> = u_xlat2;
    let x_1077 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_1075.x, x_1075.y), 0.0f);
    let x_1078 : vec3<f32> = vec3<f32>(x_1077.x, x_1077.y, x_1077.z);
    let x_1079 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
    let x_1082 : f32 = u_xlat1.z;
    let x_1084 : f32 = x_25.x_UserLut_Params.z;
    let x_1086 : f32 = u_xlat18;
    u_xlat18 = ((x_1082 * x_1084) + -(x_1086));
    let x_1089 : vec4<f32> = u_xlat3;
    let x_1092 : vec4<f32> = u_xlat2;
    let x_1094 : vec3<f32> = (-(vec3<f32>(x_1089.x, x_1089.y, x_1089.z)) + vec3<f32>(x_1092.x, x_1092.y, x_1092.z));
    let x_1095 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
    let x_1097 : f32 = u_xlat18;
    let x_1099 : vec4<f32> = u_xlat2;
    let x_1102 : vec4<f32> = u_xlat3;
    let x_1104 : vec3<f32> = ((vec3<f32>(x_1097, x_1097, x_1097) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z)) + vec3<f32>(x_1102.x, x_1102.y, x_1102.z));
    let x_1105 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1107 : vec3<f32> = u_xlat1;
    let x_1109 : vec4<f32> = u_xlat2;
    let x_1111 : vec3<f32> = (-(x_1107) + vec3<f32>(x_1109.x, x_1109.y, x_1109.z));
    let x_1112 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1112.w);
    let x_1115 : vec4<f32> = x_25.x_UserLut_Params;
    let x_1117 : vec4<f32> = u_xlat2;
    let x_1120 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_1115.w, x_1115.w, x_1115.w) * vec3<f32>(x_1117.x, x_1117.y, x_1117.z)) + x_1120);
    let x_1122 : vec3<f32> = u_xlat1;
    let x_1125 : vec3<f32> = (x_1122 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1126 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1126.w);
    let x_1128 : vec3<f32> = u_xlat1;
    let x_1131 : vec3<f32> = (x_1128 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1132 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1132.w);
    let x_1134 : vec4<f32> = u_xlat3;
    let x_1138 : vec3<f32> = (vec3<f32>(x_1134.x, x_1134.y, x_1134.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1139 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
    let x_1141 : vec4<f32> = u_xlat3;
    let x_1144 : vec3<f32> = log2(abs(vec3<f32>(x_1141.x, x_1141.y, x_1141.z)));
    let x_1145 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1144.x, x_1144.y, x_1144.z, x_1145.w);
    let x_1147 : vec4<f32> = u_xlat3;
    let x_1151 : vec3<f32> = (vec3<f32>(x_1147.x, x_1147.y, x_1147.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1152 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
    let x_1154 : vec4<f32> = u_xlat3;
    let x_1156 : vec3<f32> = exp2(vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
    let x_1157 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
    let x_1161 : vec3<f32> = u_xlat1;
    let x_1163 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1161.x));
    u_xlatb1 = vec3<bool>(x_1163.x, x_1163.y, x_1163.z);
    let x_1166 : bool = u_xlatb1.x;
    if (x_1166) {
      let x_1171 : f32 = u_xlat2.x;
      x_1167 = x_1171;
    } else {
      let x_1174 : f32 = u_xlat3.x;
      x_1167 = x_1174;
    }
    let x_1175 : f32 = x_1167;
    u_xlat0.x = x_1175;
    let x_1178 : bool = u_xlatb1.y;
    if (x_1178) {
      let x_1183 : f32 = u_xlat2.y;
      x_1179 = x_1183;
    } else {
      let x_1186 : f32 = u_xlat3.y;
      x_1179 = x_1186;
    }
    let x_1187 : f32 = x_1179;
    u_xlat0.y = x_1187;
    let x_1190 : bool = u_xlatb1.z;
    if (x_1190) {
      let x_1195 : f32 = u_xlat2.z;
      x_1191 = x_1195;
    } else {
      let x_1198 : f32 = u_xlat3.z;
      x_1191 = x_1198;
    }
    let x_1199 : f32 = x_1191;
    u_xlat0.z = x_1199;
  }
  let x_1201 : vec2<f32> = vs_TEXCOORD0;
  let x_1204 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1208 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1210 : vec2<f32> = ((x_1201 * vec2<f32>(x_1204.x, x_1204.y)) + vec2<f32>(x_1208.z, x_1208.w));
  let x_1211 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1210.x, x_1210.y, x_1211.z);
  let x_1218 : vec3<f32> = u_xlat1;
  let x_1221 : f32 = x_25.x_GlobalMipBias.x;
  let x_1222 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1218.x, x_1218.y), x_1221);
  u_xlat18 = x_1222.w;
  let x_1224 : f32 = u_xlat18;
  u_xlat18 = (x_1224 + -0.5f);
  let x_1226 : f32 = u_xlat18;
  let x_1227 : f32 = u_xlat18;
  u_xlat18 = (x_1226 + x_1227);
  let x_1229 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1229.x, x_1229.y, x_1229.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1238 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1238);
  let x_1243 : f32 = x_25.x_Grain_Params.y;
  let x_1245 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1243 * -(x_1245)) + 1.0f);
  let x_1251 : f32 = u_xlat18;
  let x_1253 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1251, x_1251, x_1251) * vec3<f32>(x_1253.x, x_1253.y, x_1253.z));
  let x_1256 : vec3<f32> = u_xlat7;
  let x_1259 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1256 * vec3<f32>(x_1259.x, x_1259.x, x_1259.x));
  let x_1264 : vec3<f32> = u_xlat7;
  let x_1265 : vec3<f32> = u_xlat1;
  let x_1268 : vec4<f32> = u_xlat0;
  let x_1270 : vec3<f32> = ((x_1264 * vec3<f32>(x_1265.x, x_1265.x, x_1265.x)) + vec3<f32>(x_1268.x, x_1268.y, x_1268.z));
  let x_1271 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
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

