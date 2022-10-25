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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_25 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(4) var sampler_LinearClamp : sampler;

@group(0) @binding(3) var x_UserLut : texture_2d<f32>;

@group(0) @binding(2) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(1) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(5) var sampler_LinearRepeat : sampler;

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
  var hlslcc_movcTemp : vec3<f32>;
  var x_816 : f32;
  var x_828 : f32;
  var x_840 : f32;
  var u_xlat18 : f32;
  var x_1003 : f32;
  var x_1015 : f32;
  var x_1027 : f32;
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
  let x_668 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb0 = (0.0f < x_668);
  let x_670 : bool = u_xlatb0;
  if (x_670) {
    let x_673 : vec2<f32> = u_xlat13;
    let x_675 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_678 : vec2<f32> = (x_673 + -(vec2<f32>(x_675.x, x_675.y)));
    let x_679 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
    let x_681 : vec4<f32> = u_xlat0;
    let x_685 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_687 : vec2<f32> = (abs(vec2<f32>(x_681.x, x_681.y)) * vec2<f32>(x_685.z, x_685.z));
    let x_688 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_688.x, x_687.x, x_687.y, x_688.w);
    let x_691 : f32 = u_xlat0.y;
    let x_694 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat0.x = (x_691 * x_694);
    let x_697 : vec4<f32> = u_xlat0;
    let x_699 : vec4<f32> = u_xlat0;
    u_xlat0.x = dot(vec2<f32>(x_697.x, x_697.z), vec2<f32>(x_699.x, x_699.z));
    let x_704 : f32 = u_xlat0.x;
    u_xlat0.x = (-(x_704) + 1.0f);
    let x_709 : f32 = u_xlat0.x;
    u_xlat0.x = max(x_709, 0.0f);
    let x_713 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_713);
    let x_717 : f32 = u_xlat0.x;
    let x_719 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat0.x = (x_717 * x_719);
    let x_723 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_723);
    let x_727 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat6 = (-(vec3<f32>(x_727.x, x_727.y, x_727.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_732 : vec4<f32> = u_xlat0;
    let x_734 : vec3<f32> = u_xlat6;
    let x_737 : vec4<f32> = x_25.x_Vignette_Params1;
    let x_739 : vec3<f32> = ((vec3<f32>(x_732.x, x_732.x, x_732.x) * x_734) + vec3<f32>(x_737.x, x_737.y, x_737.z));
    let x_740 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
    let x_742 : vec4<f32> = u_xlat0;
    let x_744 : vec4<f32> = u_xlat2;
    let x_746 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744.x, x_744.y, x_744.z));
    let x_747 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
  }
  let x_749 : vec4<f32> = u_xlat2;
  let x_753 : vec4<f32> = x_25.x_Lut_Params;
  let x_755 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_753.w, x_753.w, x_753.w));
  let x_756 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat0;
  let x_762 : vec3<f32> = clamp(vec3<f32>(x_758.x, x_758.y, x_758.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_763 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_768 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb18 = (0.0f < x_768);
  let x_770 : bool = u_xlatb18;
  if (x_770) {
    let x_773 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_773.x, x_773.y, x_773.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_778 : vec4<f32> = u_xlat0;
    let x_780 : vec3<f32> = log2(vec3<f32>(x_778.x, x_778.y, x_778.z));
    let x_781 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
    let x_783 : vec4<f32> = u_xlat2;
    let x_787 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_788 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
    let x_790 : vec4<f32> = u_xlat2;
    let x_792 : vec3<f32> = exp2(vec3<f32>(x_790.x, x_790.y, x_790.z));
    let x_793 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
    let x_795 : vec4<f32> = u_xlat2;
    let x_802 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_803 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
    let x_807 : vec4<f32> = u_xlat0;
    let x_810 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_807.x, x_807.y, x_807.z, x_807.x));
    u_xlatb3 = vec3<bool>(x_810.x, x_810.y, x_810.z);
    let x_813 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_813;
    let x_815 : bool = u_xlatb3.x;
    if (x_815) {
      let x_820 : f32 = u_xlat1.x;
      x_816 = x_820;
    } else {
      let x_823 : f32 = u_xlat2.x;
      x_816 = x_823;
    }
    let x_824 : f32 = x_816;
    hlslcc_movcTemp.x = x_824;
    let x_827 : bool = u_xlatb3.y;
    if (x_827) {
      let x_832 : f32 = u_xlat1.y;
      x_828 = x_832;
    } else {
      let x_835 : f32 = u_xlat2.y;
      x_828 = x_835;
    }
    let x_836 : f32 = x_828;
    hlslcc_movcTemp.y = x_836;
    let x_839 : bool = u_xlatb3.z;
    if (x_839) {
      let x_844 : f32 = u_xlat1.z;
      x_840 = x_844;
    } else {
      let x_847 : f32 = u_xlat2.z;
      x_840 = x_847;
    }
    let x_848 : f32 = x_840;
    hlslcc_movcTemp.z = x_848;
    let x_850 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_850;
    let x_851 : vec3<f32> = u_xlat1;
    let x_854 : vec4<f32> = x_25.x_UserLut_Params;
    let x_856 : vec3<f32> = (vec3<f32>(x_851.z, x_851.x, x_851.y) * vec3<f32>(x_854.z, x_854.z, x_854.z));
    let x_857 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
    let x_861 : f32 = u_xlat2.x;
    u_xlat18 = floor(x_861);
    let x_864 : vec4<f32> = x_25.x_UserLut_Params;
    let x_866 : vec2<f32> = (vec2<f32>(x_864.x, x_864.y) * vec2<f32>(0.5f, 0.5f));
    let x_867 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_866.x, x_867.y, x_867.z, x_866.y);
    let x_869 : vec4<f32> = u_xlat2;
    let x_872 : vec4<f32> = x_25.x_UserLut_Params;
    let x_875 : vec4<f32> = u_xlat2;
    let x_877 : vec2<f32> = ((vec2<f32>(x_869.y, x_869.z) * vec2<f32>(x_872.x, x_872.y)) + vec2<f32>(x_875.x, x_875.w));
    let x_878 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_878.x, x_877.x, x_877.y, x_878.w);
    let x_880 : f32 = u_xlat18;
    let x_882 : f32 = x_25.x_UserLut_Params.y;
    let x_885 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_880 * x_882) + x_885);
    let x_892 : vec4<f32> = u_xlat2;
    let x_894 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_892.x, x_892.z), 0.0f);
    let x_895 : vec3<f32> = vec3<f32>(x_894.x, x_894.y, x_894.z);
    let x_896 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
    let x_899 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_899;
    u_xlat4.y = 0.0f;
    let x_902 : vec4<f32> = u_xlat2;
    let x_904 : vec2<f32> = u_xlat4;
    let x_905 : vec2<f32> = (vec2<f32>(x_902.x, x_902.z) + x_904);
    let x_906 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_905.x, x_905.y, x_906.z, x_906.w);
    let x_911 : vec4<f32> = u_xlat2;
    let x_913 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_911.x, x_911.y), 0.0f);
    let x_914 : vec3<f32> = vec3<f32>(x_913.x, x_913.y, x_913.z);
    let x_915 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
    let x_918 : f32 = u_xlat1.z;
    let x_920 : f32 = x_25.x_UserLut_Params.z;
    let x_922 : f32 = u_xlat18;
    u_xlat18 = ((x_918 * x_920) + -(x_922));
    let x_925 : vec4<f32> = u_xlat3;
    let x_928 : vec4<f32> = u_xlat2;
    let x_930 : vec3<f32> = (-(vec3<f32>(x_925.x, x_925.y, x_925.z)) + vec3<f32>(x_928.x, x_928.y, x_928.z));
    let x_931 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
    let x_933 : f32 = u_xlat18;
    let x_935 : vec4<f32> = u_xlat2;
    let x_938 : vec4<f32> = u_xlat3;
    let x_940 : vec3<f32> = ((vec3<f32>(x_933, x_933, x_933) * vec3<f32>(x_935.x, x_935.y, x_935.z)) + vec3<f32>(x_938.x, x_938.y, x_938.z));
    let x_941 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
    let x_943 : vec3<f32> = u_xlat1;
    let x_945 : vec4<f32> = u_xlat2;
    let x_947 : vec3<f32> = (-(x_943) + vec3<f32>(x_945.x, x_945.y, x_945.z));
    let x_948 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
    let x_951 : vec4<f32> = x_25.x_UserLut_Params;
    let x_953 : vec4<f32> = u_xlat2;
    let x_956 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_951.w, x_951.w, x_951.w) * vec3<f32>(x_953.x, x_953.y, x_953.z)) + x_956);
    let x_958 : vec3<f32> = u_xlat1;
    let x_961 : vec3<f32> = (x_958 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_962 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_964 : vec3<f32> = u_xlat1;
    let x_967 : vec3<f32> = (x_964 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_968 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
    let x_970 : vec4<f32> = u_xlat3;
    let x_974 : vec3<f32> = (vec3<f32>(x_970.x, x_970.y, x_970.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_975 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    let x_977 : vec4<f32> = u_xlat3;
    let x_980 : vec3<f32> = log2(abs(vec3<f32>(x_977.x, x_977.y, x_977.z)));
    let x_981 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
    let x_983 : vec4<f32> = u_xlat3;
    let x_987 : vec3<f32> = (vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_988 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_987.x, x_987.y, x_987.z, x_988.w);
    let x_990 : vec4<f32> = u_xlat3;
    let x_992 : vec3<f32> = exp2(vec3<f32>(x_990.x, x_990.y, x_990.z));
    let x_993 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
    let x_997 : vec3<f32> = u_xlat1;
    let x_999 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_997.x, x_997.y, x_997.z, x_997.x));
    u_xlatb1 = vec3<bool>(x_999.x, x_999.y, x_999.z);
    let x_1002 : bool = u_xlatb1.x;
    if (x_1002) {
      let x_1007 : f32 = u_xlat2.x;
      x_1003 = x_1007;
    } else {
      let x_1010 : f32 = u_xlat3.x;
      x_1003 = x_1010;
    }
    let x_1011 : f32 = x_1003;
    u_xlat0.x = x_1011;
    let x_1014 : bool = u_xlatb1.y;
    if (x_1014) {
      let x_1019 : f32 = u_xlat2.y;
      x_1015 = x_1019;
    } else {
      let x_1022 : f32 = u_xlat3.y;
      x_1015 = x_1022;
    }
    let x_1023 : f32 = x_1015;
    u_xlat0.y = x_1023;
    let x_1026 : bool = u_xlatb1.z;
    if (x_1026) {
      let x_1031 : f32 = u_xlat2.z;
      x_1027 = x_1031;
    } else {
      let x_1034 : f32 = u_xlat3.z;
      x_1027 = x_1034;
    }
    let x_1035 : f32 = x_1027;
    u_xlat0.z = x_1035;
  }
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1040 : vec4<f32> = x_25.x_Lut_Params;
  let x_1042 : vec3<f32> = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) * vec3<f32>(x_1040.z, x_1040.z, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1042.z);
  let x_1046 : f32 = u_xlat0.w;
  u_xlat18 = floor(x_1046);
  let x_1049 : vec4<f32> = x_25.x_Lut_Params;
  let x_1051 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.y) * vec2<f32>(0.5f, 0.5f));
  let x_1052 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1051.x, x_1051.y, x_1052.z);
  let x_1054 : vec4<f32> = u_xlat0;
  let x_1057 : vec4<f32> = x_25.x_Lut_Params;
  let x_1060 : vec3<f32> = u_xlat1;
  let x_1062 : vec2<f32> = ((vec2<f32>(x_1054.x, x_1054.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1060.x, x_1060.y));
  let x_1063 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1063.x, x_1062.x, x_1062.y);
  let x_1065 : f32 = u_xlat18;
  let x_1067 : f32 = x_25.x_Lut_Params.y;
  let x_1070 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1065 * x_1067) + x_1070);
  let x_1077 : vec3<f32> = u_xlat1;
  let x_1079 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1077.x, x_1077.z), 0.0f);
  let x_1080 : vec3<f32> = vec3<f32>(x_1079.x, x_1079.y, x_1079.z);
  let x_1081 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1084 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_1084;
  u_xlat0.y = 0.0f;
  let x_1087 : vec4<f32> = u_xlat0;
  let x_1089 : vec3<f32> = u_xlat1;
  let x_1091 : vec2<f32> = (vec2<f32>(x_1087.x, x_1087.y) + vec2<f32>(x_1089.x, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1091.x, x_1091.y, x_1092.z, x_1092.w);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1099 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_1097.x, x_1097.y), 0.0f);
  u_xlat1 = vec3<f32>(x_1099.x, x_1099.y, x_1099.z);
  let x_1102 : f32 = u_xlat0.z;
  let x_1104 : f32 = x_25.x_Lut_Params.z;
  let x_1106 : f32 = u_xlat18;
  u_xlat0.x = ((x_1102 * x_1104) + -(x_1106));
  let x_1110 : vec4<f32> = u_xlat2;
  let x_1113 : vec3<f32> = u_xlat1;
  u_xlat6 = (-(vec3<f32>(x_1110.x, x_1110.y, x_1110.z)) + x_1113);
  let x_1115 : vec4<f32> = u_xlat0;
  let x_1117 : vec3<f32> = u_xlat6;
  let x_1119 : vec4<f32> = u_xlat2;
  let x_1121 : vec3<f32> = ((vec3<f32>(x_1115.x, x_1115.x, x_1115.x) * x_1117) + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec2<f32> = vs_TEXCOORD0;
  let x_1127 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1131 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_1133 : vec2<f32> = ((x_1124 * vec2<f32>(x_1127.x, x_1127.y)) + vec2<f32>(x_1131.z, x_1131.w));
  let x_1134 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1133.x, x_1133.y, x_1134.z);
  let x_1141 : vec3<f32> = u_xlat1;
  let x_1144 : f32 = x_25.x_GlobalMipBias.x;
  let x_1145 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_1141.x, x_1141.y), x_1144);
  u_xlat18 = x_1145.w;
  let x_1147 : f32 = u_xlat18;
  u_xlat18 = (x_1147 + -0.5f);
  let x_1149 : f32 = u_xlat18;
  let x_1150 : f32 = u_xlat18;
  u_xlat18 = (x_1149 + x_1150);
  let x_1152 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_1152.x, x_1152.y, x_1152.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1161 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1161);
  let x_1166 : f32 = x_25.x_Grain_Params.y;
  let x_1168 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1166 * -(x_1168)) + 1.0f);
  let x_1174 : f32 = u_xlat18;
  let x_1176 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1174, x_1174, x_1174) * vec3<f32>(x_1176.x, x_1176.y, x_1176.z));
  let x_1179 : vec3<f32> = u_xlat7;
  let x_1182 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat7 = (x_1179 * vec3<f32>(x_1182.x, x_1182.x, x_1182.x));
  let x_1187 : vec3<f32> = u_xlat7;
  let x_1188 : vec3<f32> = u_xlat1;
  let x_1191 : vec4<f32> = u_xlat0;
  let x_1193 : vec3<f32> = ((x_1187 * vec3<f32>(x_1188.x, x_1188.x, x_1188.x)) + vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
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

