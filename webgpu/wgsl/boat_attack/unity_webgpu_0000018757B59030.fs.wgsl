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

@group(0) @binding(4) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_InternalLut : texture_2d<f32>;

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
  var u_xlatb0 : vec3<bool>;
  var x_631 : f32;
  var u_xlatb18 : bool;
  var u_xlat18 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_856 : f32;
  var x_868 : f32;
  var x_880 : f32;
  var x_1042 : f32;
  var x_1054 : f32;
  var x_1066 : f32;
  var u_xlat7 : vec3<f32>;
  var x_1266 : f32;
  var x_1279 : f32;
  var x_1291 : f32;
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
  let x_796 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(x_794.w, x_794.w, x_794.w));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  let x_803 : vec3<f32> = clamp(vec3<f32>(x_799.x, x_799.y, x_799.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_804 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
  let x_808 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_808);
  let x_810 : bool = u_xlatb18;
  if (x_810) {
    let x_813 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_818 : vec4<f32> = u_xlat0;
    let x_820 : vec3<f32> = log2(vec3<f32>(x_818.x, x_818.y, x_818.z));
    let x_821 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
    let x_823 : vec4<f32> = u_xlat2;
    let x_827 : vec3<f32> = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_828 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
    let x_830 : vec4<f32> = u_xlat2;
    let x_832 : vec3<f32> = exp2(vec3<f32>(x_830.x, x_830.y, x_830.z));
    let x_833 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
    let x_835 : vec4<f32> = u_xlat2;
    let x_842 : vec3<f32> = ((vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_843 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
    let x_847 : vec4<f32> = u_xlat0;
    let x_850 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_847.x, x_847.y, x_847.z, x_847.x));
    u_xlatb3 = vec3<bool>(x_850.x, x_850.y, x_850.z);
    let x_853 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_853;
    let x_855 : bool = u_xlatb3.x;
    if (x_855) {
      let x_860 : f32 = u_xlat1.x;
      x_856 = x_860;
    } else {
      let x_863 : f32 = u_xlat2.x;
      x_856 = x_863;
    }
    let x_864 : f32 = x_856;
    hlslcc_movcTemp.x = x_864;
    let x_867 : bool = u_xlatb3.y;
    if (x_867) {
      let x_872 : f32 = u_xlat1.y;
      x_868 = x_872;
    } else {
      let x_875 : f32 = u_xlat2.y;
      x_868 = x_875;
    }
    let x_876 : f32 = x_868;
    hlslcc_movcTemp.y = x_876;
    let x_879 : bool = u_xlatb3.z;
    if (x_879) {
      let x_884 : f32 = u_xlat1.z;
      x_880 = x_884;
    } else {
      let x_887 : f32 = u_xlat2.z;
      x_880 = x_887;
    }
    let x_888 : f32 = x_880;
    hlslcc_movcTemp.z = x_888;
    let x_890 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_890;
    let x_891 : vec3<f32> = u_xlat1;
    let x_894 : vec4<f32> = x_25.x_UserLut_Params;
    let x_896 : vec3<f32> = (vec3<f32>(x_891.z, x_891.x, x_891.y) * vec3<f32>(x_894.z, x_894.z, x_894.z));
    let x_897 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_900 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_900);
    let x_903 : vec4<f32> = x_25.x_UserLut_Params;
    let x_905 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(0.5f, 0.5f));
    let x_906 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_905.x, x_906.y, x_906.z, x_905.y);
    let x_908 : vec4<f32> = u_xlat2;
    let x_911 : vec4<f32> = x_25.x_UserLut_Params;
    let x_914 : vec4<f32> = u_xlat2;
    let x_916 : vec2<f32> = ((vec2<f32>(x_908.y, x_908.z) * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_914.x, x_914.w));
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_917.x, x_916.x, x_916.y, x_917.w);
    let x_919 : f32 = u_xlat18;
    let x_921 : f32 = x_25.x_UserLut_Params.y;
    let x_924 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_919 * x_921) + x_924);
    let x_931 : vec4<f32> = u_xlat2;
    let x_933 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_931.x, x_931.z), 0.0f);
    let x_934 : vec3<f32> = vec3<f32>(x_933.x, x_933.y, x_933.z);
    let x_935 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
    let x_938 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_938;
    u_xlat4.y = 0.0f;
    let x_941 : vec4<f32> = u_xlat2;
    let x_943 : vec2<f32> = u_xlat4;
    let x_944 : vec2<f32> = (vec2<f32>(x_941.x, x_941.z) + x_943);
    let x_945 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
    let x_950 : vec4<f32> = u_xlat2;
    let x_952 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_950.x, x_950.y), 0.0f);
    let x_953 : vec3<f32> = vec3<f32>(x_952.x, x_952.y, x_952.z);
    let x_954 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
    let x_957 : f32 = u_xlat1.z;
    let x_959 : f32 = x_25.x_UserLut_Params.z;
    let x_961 : f32 = u_xlat18;
    u_xlat18 = ((x_957 * x_959) + -(x_961));
    let x_964 : vec4<f32> = u_xlat3;
    let x_967 : vec4<f32> = u_xlat2;
    let x_969 : vec3<f32> = (-(vec3<f32>(x_964.x, x_964.y, x_964.z)) + vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    let x_972 : f32 = u_xlat18;
    let x_974 : vec4<f32> = u_xlat2;
    let x_977 : vec4<f32> = u_xlat3;
    let x_979 : vec3<f32> = ((vec3<f32>(x_972, x_972, x_972) * vec3<f32>(x_974.x, x_974.y, x_974.z)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
    let x_980 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
    let x_982 : vec3<f32> = u_xlat1;
    let x_984 : vec4<f32> = u_xlat2;
    let x_986 : vec3<f32> = (-(x_982) + vec3<f32>(x_984.x, x_984.y, x_984.z));
    let x_987 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_990 : vec4<f32> = x_25.x_UserLut_Params;
    let x_992 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_990.w, x_990.w, x_990.w) * vec3<f32>(x_992.x, x_992.y, x_992.z)) + x_995);
    let x_997 : vec3<f32> = u_xlat1;
    let x_1000 : vec3<f32> = (x_997 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_1001 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec3<f32> = u_xlat1;
    let x_1006 : vec3<f32> = (x_1003 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_1007 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
    let x_1009 : vec4<f32> = u_xlat3;
    let x_1013 : vec3<f32> = (vec3<f32>(x_1009.x, x_1009.y, x_1009.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_1014 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
    let x_1016 : vec4<f32> = u_xlat3;
    let x_1019 : vec3<f32> = log2(abs(vec3<f32>(x_1016.x, x_1016.y, x_1016.z)));
    let x_1020 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
    let x_1022 : vec4<f32> = u_xlat3;
    let x_1026 : vec3<f32> = (vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_1027 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
    let x_1029 : vec4<f32> = u_xlat3;
    let x_1031 : vec3<f32> = exp2(vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
    let x_1032 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
    let x_1036 : vec3<f32> = u_xlat1;
    let x_1038 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1036.x));
    u_xlatb1 = vec3<bool>(x_1038.x, x_1038.y, x_1038.z);
    let x_1041 : bool = u_xlatb1.x;
    if (x_1041) {
      let x_1046 : f32 = u_xlat2.x;
      x_1042 = x_1046;
    } else {
      let x_1049 : f32 = u_xlat3.x;
      x_1042 = x_1049;
    }
    let x_1050 : f32 = x_1042;
    u_xlat0.x = x_1050;
    let x_1053 : bool = u_xlatb1.y;
    if (x_1053) {
      let x_1058 : f32 = u_xlat2.y;
      x_1054 = x_1058;
    } else {
      let x_1061 : f32 = u_xlat3.y;
      x_1054 = x_1061;
    }
    let x_1062 : f32 = x_1054;
    u_xlat0.y = x_1062;
    let x_1065 : bool = u_xlatb1.z;
    if (x_1065) {
      let x_1070 : f32 = u_xlat2.z;
      x_1066 = x_1070;
    } else {
      let x_1073 : f32 = u_xlat3.z;
      x_1066 = x_1073;
    }
    let x_1074 : f32 = x_1066;
    u_xlat0.z = x_1074;
  }
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1079 : vec4<f32> = x_25.x_Lut_Params;
  let x_1081 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1079.z, x_1079.z, x_1079.z));
  let x_1082 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1081.z);
  let x_1085 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1085);
  let x_1088 : vec4<f32> = x_25.x_Lut_Params;
  let x_1090 : vec2<f32> = (vec2<f32>(x_1088.x, x_1088.y) * vec2<f32>(0.5f, 0.5f));
  let x_1091 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1090.x, x_1090.y, x_1091.z);
  let x_1093 : vec4<f32> = u_xlat0;
  let x_1096 : vec4<f32> = x_25.x_Lut_Params;
  let x_1099 : vec3<f32> = u_xlat1;
  let x_1101 : vec2<f32> = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.x, x_1099.y));
  let x_1102 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1102.x, x_1101.x, x_1101.y);
  let x_1104 : f32 = u_xlat18;
  let x_1106 : f32 = x_25.x_Lut_Params.y;
  let x_1109 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1104 * x_1106) + x_1109);
  let x_1116 : vec3<f32> = u_xlat1;
  let x_1118 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1116.x, x_1116.z), 0.0f);
  let x_1119 : vec3<f32> = vec3<f32>(x_1118.x, x_1118.y, x_1118.z);
  let x_1120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1123 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1123;
  u_xlat0.y = 0.0f;
  let x_1126 : vec4<f32> = u_xlat0;
  let x_1128 : vec3<f32> = u_xlat1;
  let x_1130 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.y) + vec2<f32>(x_1128.x, x_1128.z));
  let x_1131 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1130.x, x_1130.y, x_1131.z, x_1131.w);
  let x_1136 : vec4<f32> = u_xlat0;
  let x_1138 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1136.x, x_1136.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1138.x, x_1138.y, x_1138.z);
  let x_1141 : f32 = u_xlat0.z;
  let x_1143 : f32 = x_25.x_Lut_Params.z;
  let x_1145 : f32 = u_xlat18;
  u_xlat0.x = ((x_1141 * x_1143) + -(x_1145));
  let x_1149 : vec4<f32> = u_xlat2;
  let x_1152 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + x_1152);
  let x_1154 : vec4<f32> = u_xlat0;
  let x_1156 : vec3<f32> = u_xlat6;
  let x_1158 : vec4<f32> = u_xlat2;
  let x_1160 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.x, x_1154.x) * x_1156) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : vec2<f32> = vs_TEXCOORD0;
  let x_1166 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1170 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1172 : vec2<f32> = ((x_1163 * vec2<f32>(x_1166.x, x_1166.y)) + vec2<f32>(x_1170.z, x_1170.w));
  let x_1173 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1172.x, x_1172.y, x_1173.z);
  let x_1180 : vec3<f32> = u_xlat1;
  let x_1183 : f32 = x_25.x_GlobalMipBias.x;
  let x_1184 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1180.x, x_1180.y), x_1183);
  u_xlat18 = x_1184.w;
  let x_1186 : f32 = u_xlat18;
  u_xlat18 = (x_1186 + -0.5f);
  let x_1188 : f32 = u_xlat18;
  let x_1189 : f32 = u_xlat18;
  u_xlat18 = (x_1188 + x_1189);
  let x_1191 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1191.x, x_1191.y, x_1191.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1200 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1200);
  let x_1205 : f32 = x_25.x_Grain_Params.y;
  let x_1207 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1205 * -(x_1207)) + 1.0f);
  let x_1213 : f32 = u_xlat18;
  let x_1215 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1213, x_1213, x_1213) * vec3<f32>(x_1215.x, x_1215.y, x_1215.z));
  let x_1218 : vec3<f32> = u_xlat7;
  let x_1221 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1218 * vec3<f32>(x_1221.x, x_1221.x, x_1221.x));
  let x_1224 : vec3<f32> = u_xlat7;
  let x_1225 : vec3<f32> = u_xlat1;
  let x_1228 : vec4<f32> = u_xlat0;
  let x_1230 : vec3<f32> = ((x_1224 * vec3<f32>(x_1225.x, x_1225.x, x_1225.x)) + vec3<f32>(x_1228.x, x_1228.y, x_1228.z));
  let x_1231 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1236 : vec4<f32> = u_xlat0;
  let x_1239 : vec3<f32> = log2(abs(vec3<f32>(x_1236.x, x_1236.y, x_1236.z)));
  let x_1240 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat2;
  let x_1244 : vec3<f32> = (vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat2;
  let x_1249 : vec3<f32> = exp2(vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat2;
  let x_1255 : vec3<f32> = ((vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1258 : vec4<f32> = u_xlat0;
  let x_1260 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1258.x, x_1258.y, x_1258.z, x_1258.x));
  u_xlatb0 = vec3<bool>(x_1260.x, x_1260.y, x_1260.z);
  let x_1265 : bool = u_xlatb0.x;
  if (x_1265) {
    let x_1270 : f32 = u_xlat1.x;
    x_1266 = x_1270;
  } else {
    let x_1273 : f32 = u_xlat2.x;
    x_1266 = x_1273;
  }
  let x_1274 : f32 = x_1266;
  SV_Target0.x = x_1274;
  let x_1278 : bool = u_xlatb0.y;
  if (x_1278) {
    let x_1283 : f32 = u_xlat1.y;
    x_1279 = x_1283;
  } else {
    let x_1286 : f32 = u_xlat2.y;
    x_1279 = x_1286;
  }
  let x_1287 : f32 = x_1279;
  SV_Target0.y = x_1287;
  let x_1290 : bool = u_xlatb0.z;
  if (x_1290) {
    let x_1295 : f32 = u_xlat1.z;
    x_1291 = x_1295;
  } else {
    let x_1298 : f32 = u_xlat2.z;
    x_1291 = x_1298;
  }
  let x_1299 : f32 = x_1291;
  SV_Target0.z = x_1299;
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

