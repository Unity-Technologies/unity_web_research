struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_Lut_Params : vec4<f32>,
  x_UserLut_Params : vec4<f32>,
  x_Distortion_Params1 : vec4<f32>,
  x_Distortion_Params2 : vec4<f32>,
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_1 : u32,
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
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb6 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat11 : f32;
  var u_xlat16 : f32;
  var u_xlat7 : f32;
  var u_xlat12 : f32;
  var u_xlatb17 : bool;
  var u_xlatb1 : vec3<bool>;
  var x_231 : f32;
  var u_xlatb15 : bool;
  var u_xlat15 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_416 : f32;
  var x_428 : f32;
  var x_440 : f32;
  var u_xlat4 : vec2<f32>;
  var x_585 : f32;
  var x_597 : f32;
  var x_609 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_855 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var x_934 : f32;
  var x_946 : f32;
  var x_958 : f32;
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
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_30.z, x_30.z)) + vec2<f32>(0.5f, 0.5f));
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
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_25.x_Distortion_Params2;
    let x_92 : vec2<f32> = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_93 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_92.x, x_92.y, x_93.z);
    let x_97 : f32 = u_xlat6.x;
    u_xlat2.x = sin(x_97);
    let x_102 : f32 = u_xlat6.x;
    u_xlat3.x = cos(x_102);
    let x_106 : f32 = u_xlat2.x;
    let x_108 : f32 = u_xlat3.x;
    u_xlat6.x = (x_106 / x_108);
    let x_115 : f32 = u_xlat6.y;
    u_xlat11 = (1.0f / x_115);
    let x_118 : f32 = u_xlat6.x;
    let x_119 : f32 = u_xlat11;
    u_xlat6.x = ((x_118 * x_119) + -1.0f);
    let x_124 : vec4<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_25.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_25.x_Distortion_Params2.y;
    u_xlat1.x = (x_143 * x_145);
    let x_149 : f32 = u_xlat1.x;
    u_xlat2.x = min(abs(x_149), 1.0f);
    let x_155 : f32 = u_xlat1.x;
    u_xlat7 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_158);
    let x_160 : f32 = u_xlat7;
    let x_162 : f32 = u_xlat2.x;
    u_xlat2.x = (x_160 * x_162);
    let x_166 : f32 = u_xlat2.x;
    let x_168 : f32 = u_xlat2.x;
    u_xlat7 = (x_166 * x_168);
    let x_171 : f32 = u_xlat7;
    u_xlat12 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat7;
    let x_177 : f32 = u_xlat12;
    u_xlat12 = ((x_176 * x_177) + 0.180141002f);
    let x_181 : f32 = u_xlat7;
    let x_182 : f32 = u_xlat12;
    u_xlat12 = ((x_181 * x_182) + -0.330299497f);
    let x_186 : f32 = u_xlat7;
    let x_187 : f32 = u_xlat12;
    u_xlat7 = ((x_186 * x_187) + 0.999866009f);
    let x_191 : f32 = u_xlat7;
    let x_193 : f32 = u_xlat2.x;
    u_xlat12 = (x_191 * x_193);
    let x_197 : f32 = u_xlat1.x;
    u_xlatb17 = (1.0f < abs(x_197));
    let x_200 : f32 = u_xlat12;
    u_xlat12 = ((x_200 * -2.0f) + 1.570796371f);
    let x_205 : bool = u_xlatb17;
    let x_206 : f32 = u_xlat12;
    u_xlat12 = select(0.0f, x_206, x_205);
    let x_209 : f32 = u_xlat2.x;
    let x_210 : f32 = u_xlat7;
    let x_212 : f32 = u_xlat12;
    u_xlat2.x = ((x_209 * x_210) + x_212);
    let x_216 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_216, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_223 < -(x_225));
    let x_230 : bool = u_xlatb1.x;
    if (x_230) {
      let x_235 : f32 = u_xlat2.x;
      x_231 = -(x_235);
    } else {
      let x_239 : f32 = u_xlat2.x;
      x_231 = x_239;
    }
    let x_240 : f32 = x_231;
    u_xlat1.x = x_240;
    let x_242 : f32 = u_xlat16;
    let x_244 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_242 * x_244) + -1.0f);
    let x_248 : vec4<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_25.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  let x_273 : vec3<f32> = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_280 : f32 = x_25.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_280);
  let x_282 : bool = u_xlatb15;
  if (x_282) {
    let x_285 : vec3<f32> = u_xlat6;
    let x_288 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_291 : vec2<f32> = (vec2<f32>(x_285.x, x_285.y) + -(vec2<f32>(x_288.x, x_288.y)));
    let x_292 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_291.x, x_291.y, x_292.z);
    let x_294 : vec3<f32> = u_xlat1;
    let x_298 : vec4<f32> = x_25.x_Vignette_Params2;
    let x_300 : vec2<f32> = (abs(vec2<f32>(x_294.x, x_294.y)) * vec2<f32>(x_298.z, x_298.z));
    let x_301 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_301.x, x_300.x, x_300.y);
    let x_304 : f32 = u_xlat1.y;
    let x_307 : f32 = x_25.x_Vignette_Params1.w;
    u_xlat1.x = (x_304 * x_307);
    let x_311 : vec3<f32> = u_xlat1;
    let x_313 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_311.x, x_311.z), vec2<f32>(x_313.x, x_313.z));
    let x_316 : f32 = u_xlat15;
    u_xlat15 = (-(x_316) + 1.0f);
    let x_319 : f32 = u_xlat15;
    u_xlat15 = max(x_319, 0.0f);
    let x_321 : f32 = u_xlat15;
    u_xlat15 = log2(x_321);
    let x_323 : f32 = u_xlat15;
    let x_325 : f32 = x_25.x_Vignette_Params2.w;
    u_xlat15 = (x_323 * x_325);
    let x_327 : f32 = u_xlat15;
    u_xlat15 = exp2(x_327);
    let x_330 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_330.x, x_330.y, x_330.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_335 : f32 = u_xlat15;
    let x_337 : vec3<f32> = u_xlat1;
    let x_340 : vec4<f32> = x_25.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_335, x_335, x_335) * x_337) + vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat0;
    let x_345 : vec3<f32> = u_xlat1;
    let x_346 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) * x_345);
    let x_347 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_346.x, x_346.y, x_346.z, x_347.w);
  }
  let x_349 : vec4<f32> = u_xlat0;
  let x_353 : vec4<f32> = x_25.x_Lut_Params;
  let x_355 : vec3<f32> = (vec3<f32>(x_349.x, x_349.y, x_349.z) * vec3<f32>(x_353.w, x_353.w, x_353.w));
  let x_356 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec4<f32> = u_xlat0;
  let x_362 : vec3<f32> = clamp(vec3<f32>(x_358.x, x_358.y, x_358.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_363 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_367 : f32 = x_25.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_367);
  let x_369 : bool = u_xlatb15;
  if (x_369) {
    let x_372 : vec4<f32> = u_xlat0;
    u_xlat1 = (vec3<f32>(x_372.x, x_372.y, x_372.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_377 : vec4<f32> = u_xlat0;
    let x_379 : vec3<f32> = log2(vec3<f32>(x_377.x, x_377.y, x_377.z));
    let x_380 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_379.x, x_379.y, x_379.z, x_380.w);
    let x_382 : vec4<f32> = u_xlat2;
    let x_386 : vec3<f32> = (vec3<f32>(x_382.x, x_382.y, x_382.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_387 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_389 : vec4<f32> = u_xlat2;
    let x_391 : vec3<f32> = exp2(vec3<f32>(x_389.x, x_389.y, x_389.z));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_391.y, x_391.z, x_392.w);
    let x_394 : vec4<f32> = u_xlat2;
    let x_401 : vec3<f32> = ((vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_402 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_401.x, x_401.y, x_401.z, x_402.w);
    let x_407 : vec4<f32> = u_xlat0;
    let x_410 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_407.x, x_407.y, x_407.z, x_407.x));
    u_xlatb3 = vec3<bool>(x_410.x, x_410.y, x_410.z);
    let x_413 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_413;
    let x_415 : bool = u_xlatb3.x;
    if (x_415) {
      let x_420 : f32 = u_xlat1.x;
      x_416 = x_420;
    } else {
      let x_423 : f32 = u_xlat2.x;
      x_416 = x_423;
    }
    let x_424 : f32 = x_416;
    hlslcc_movcTemp.x = x_424;
    let x_427 : bool = u_xlatb3.y;
    if (x_427) {
      let x_432 : f32 = u_xlat1.y;
      x_428 = x_432;
    } else {
      let x_435 : f32 = u_xlat2.y;
      x_428 = x_435;
    }
    let x_436 : f32 = x_428;
    hlslcc_movcTemp.y = x_436;
    let x_439 : bool = u_xlatb3.z;
    if (x_439) {
      let x_444 : f32 = u_xlat1.z;
      x_440 = x_444;
    } else {
      let x_447 : f32 = u_xlat2.z;
      x_440 = x_447;
    }
    let x_448 : f32 = x_440;
    hlslcc_movcTemp.z = x_448;
    let x_450 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_450;
    let x_451 : vec3<f32> = u_xlat1;
    let x_454 : vec4<f32> = x_25.x_UserLut_Params;
    let x_456 : vec3<f32> = (vec3<f32>(x_451.z, x_451.x, x_451.y) * vec3<f32>(x_454.z, x_454.z, x_454.z));
    let x_457 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
    let x_460 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_460);
    let x_463 : vec4<f32> = x_25.x_UserLut_Params;
    let x_465 : vec2<f32> = (vec2<f32>(x_463.x, x_463.y) * vec2<f32>(0.5f, 0.5f));
    let x_466 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_465.x, x_466.y, x_466.z, x_465.y);
    let x_468 : vec4<f32> = u_xlat2;
    let x_471 : vec4<f32> = x_25.x_UserLut_Params;
    let x_474 : vec4<f32> = u_xlat2;
    let x_476 : vec2<f32> = ((vec2<f32>(x_468.y, x_468.z) * vec2<f32>(x_471.x, x_471.y)) + vec2<f32>(x_474.x, x_474.w));
    let x_477 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_477.x, x_476.x, x_476.y, x_477.w);
    let x_479 : f32 = u_xlat15;
    let x_481 : f32 = x_25.x_UserLut_Params.y;
    let x_484 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_479 * x_481) + x_484);
    let x_491 : vec4<f32> = u_xlat2;
    let x_493 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_491.x, x_491.z), 0.0f);
    u_xlat3 = vec3<f32>(x_493.x, x_493.y, x_493.z);
    let x_497 : f32 = x_25.x_UserLut_Params.y;
    u_xlat4.x = x_497;
    u_xlat4.y = 0.0f;
    let x_500 : vec4<f32> = u_xlat2;
    let x_502 : vec2<f32> = u_xlat4;
    let x_503 : vec2<f32> = (vec2<f32>(x_500.x, x_500.z) + x_502);
    let x_504 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_503.x, x_503.y, x_504.z, x_504.w);
    let x_509 : vec4<f32> = u_xlat2;
    let x_511 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_509.x, x_509.y), 0.0f);
    let x_512 : vec3<f32> = vec3<f32>(x_511.x, x_511.y, x_511.z);
    let x_513 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    let x_516 : f32 = u_xlat1.z;
    let x_518 : f32 = x_25.x_UserLut_Params.z;
    let x_520 : f32 = u_xlat15;
    u_xlat15 = ((x_516 * x_518) + -(x_520));
    let x_523 : vec3<f32> = u_xlat3;
    let x_525 : vec4<f32> = u_xlat2;
    let x_527 : vec3<f32> = (-(x_523) + vec3<f32>(x_525.x, x_525.y, x_525.z));
    let x_528 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_527.x, x_527.y, x_527.z, x_528.w);
    let x_530 : f32 = u_xlat15;
    let x_532 : vec4<f32> = u_xlat2;
    let x_535 : vec3<f32> = u_xlat3;
    let x_536 : vec3<f32> = ((vec3<f32>(x_530, x_530, x_530) * vec3<f32>(x_532.x, x_532.y, x_532.z)) + x_535);
    let x_537 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
    let x_539 : vec3<f32> = u_xlat1;
    let x_541 : vec4<f32> = u_xlat2;
    let x_543 : vec3<f32> = (-(x_539) + vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_544 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_547 : vec4<f32> = x_25.x_UserLut_Params;
    let x_549 : vec4<f32> = u_xlat2;
    let x_552 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_547.w, x_547.w, x_547.w) * vec3<f32>(x_549.x, x_549.y, x_549.z)) + x_552);
    let x_554 : vec3<f32> = u_xlat1;
    let x_557 : vec3<f32> = (x_554 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_558 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
    let x_560 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_560 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_564 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_564 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_568 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_568));
    let x_571 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_571 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_575 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_575);
    let x_579 : vec3<f32> = u_xlat1;
    let x_581 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_579.x, x_579.y, x_579.z, x_579.x));
    u_xlatb1 = vec3<bool>(x_581.x, x_581.y, x_581.z);
    let x_584 : bool = u_xlatb1.x;
    if (x_584) {
      let x_589 : f32 = u_xlat2.x;
      x_585 = x_589;
    } else {
      let x_592 : f32 = u_xlat3.x;
      x_585 = x_592;
    }
    let x_593 : f32 = x_585;
    u_xlat0.x = x_593;
    let x_596 : bool = u_xlatb1.y;
    if (x_596) {
      let x_601 : f32 = u_xlat2.y;
      x_597 = x_601;
    } else {
      let x_604 : f32 = u_xlat3.y;
      x_597 = x_604;
    }
    let x_605 : f32 = x_597;
    u_xlat0.y = x_605;
    let x_608 : bool = u_xlatb1.z;
    if (x_608) {
      let x_613 : f32 = u_xlat2.z;
      x_609 = x_613;
    } else {
      let x_616 : f32 = u_xlat3.z;
      x_609 = x_616;
    }
    let x_617 : f32 = x_609;
    u_xlat0.z = x_617;
  }
  let x_619 : vec4<f32> = u_xlat0;
  let x_622 : vec4<f32> = x_25.x_Lut_Params;
  let x_624 : vec3<f32> = (vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_622.z, x_622.z, x_622.z));
  let x_625 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_624.x, x_624.y, x_625.z, x_624.z);
  let x_628 : f32 = u_xlat0.w;
  u_xlat15 = floor(x_628);
  let x_631 : vec4<f32> = x_25.x_Lut_Params;
  let x_633 : vec2<f32> = (vec2<f32>(x_631.x, x_631.y) * vec2<f32>(0.5f, 0.5f));
  let x_634 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_633.x, x_633.y, x_634.z);
  let x_636 : vec4<f32> = u_xlat0;
  let x_639 : vec4<f32> = x_25.x_Lut_Params;
  let x_642 : vec3<f32> = u_xlat1;
  let x_644 : vec2<f32> = ((vec2<f32>(x_636.x, x_636.y) * vec2<f32>(x_639.x, x_639.y)) + vec2<f32>(x_642.x, x_642.y));
  let x_645 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_645.x, x_644.x, x_644.y);
  let x_647 : f32 = u_xlat15;
  let x_649 : f32 = x_25.x_Lut_Params.y;
  let x_652 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_647 * x_649) + x_652);
  let x_659 : vec3<f32> = u_xlat1;
  let x_661 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_659.x, x_659.z), 0.0f);
  let x_662 : vec3<f32> = vec3<f32>(x_661.x, x_661.y, x_661.z);
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = x_25.x_Lut_Params.y;
  u_xlat0.x = x_666;
  u_xlat0.y = 0.0f;
  let x_669 : vec4<f32> = u_xlat0;
  let x_671 : vec3<f32> = u_xlat1;
  let x_673 : vec2<f32> = (vec2<f32>(x_669.x, x_669.y) + vec2<f32>(x_671.x, x_671.z));
  let x_674 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_673.x, x_673.y, x_674.z, x_674.w);
  let x_679 : vec4<f32> = u_xlat0;
  let x_681 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_679.x, x_679.y), 0.0f);
  u_xlat1 = vec3<f32>(x_681.x, x_681.y, x_681.z);
  let x_684 : f32 = u_xlat0.z;
  let x_686 : f32 = x_25.x_Lut_Params.z;
  let x_688 : f32 = u_xlat15;
  u_xlat0.x = ((x_684 * x_686) + -(x_688));
  let x_693 : vec4<f32> = u_xlat2;
  let x_696 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_693.x, x_693.y, x_693.z)) + x_696);
  let x_698 : vec4<f32> = u_xlat0;
  let x_700 : vec3<f32> = u_xlat5;
  let x_702 : vec4<f32> = u_xlat2;
  let x_704 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.x, x_698.x) * x_700) + vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec2<f32> = vs_TEXCOORD0;
  let x_710 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_714 : vec4<f32> = x_25.x_Grain_TilingParams;
  let x_716 : vec2<f32> = ((x_707 * vec2<f32>(x_710.x, x_710.y)) + vec2<f32>(x_714.z, x_714.w));
  let x_717 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_716.x, x_716.y, x_717.z);
  let x_724 : vec3<f32> = u_xlat1;
  let x_727 : f32 = x_25.x_GlobalMipBias.x;
  let x_728 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_724.x, x_724.y), x_727);
  u_xlat15 = x_728.w;
  let x_730 : f32 = u_xlat15;
  u_xlat15 = (x_730 + -0.5f);
  let x_732 : f32 = u_xlat15;
  let x_733 : f32 = u_xlat15;
  u_xlat15 = (x_732 + x_733);
  let x_735 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec3<f32>(x_735.x, x_735.y, x_735.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_744 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_744);
  let x_749 : f32 = x_25.x_Grain_Params.y;
  let x_751 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_749 * -(x_751)) + 1.0f);
  let x_756 : f32 = u_xlat15;
  let x_758 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_756, x_756, x_756) * vec3<f32>(x_758.x, x_758.y, x_758.z));
  let x_761 : vec3<f32> = u_xlat6;
  let x_764 : vec2<f32> = x_25.x_Grain_Params;
  u_xlat6 = (x_761 * vec3<f32>(x_764.x, x_764.x, x_764.x));
  let x_767 : vec3<f32> = u_xlat6;
  let x_768 : vec3<f32> = u_xlat1;
  let x_771 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = ((x_767 * vec3<f32>(x_768.x, x_768.x, x_768.x)) + vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec2<f32> = vs_TEXCOORD0;
  let x_779 : vec4<f32> = x_25.x_Dithering_Params;
  let x_783 : vec4<f32> = x_25.x_Dithering_Params;
  let x_785 : vec2<f32> = ((x_776 * vec2<f32>(x_779.x, x_779.y)) + vec2<f32>(x_783.z, x_783.w));
  let x_786 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_785.x, x_785.y, x_786.z);
  let x_793 : vec3<f32> = u_xlat1;
  let x_796 : f32 = x_25.x_GlobalMipBias.x;
  let x_797 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_793.x, x_793.y), x_796);
  u_xlat15 = x_797.w;
  let x_799 : f32 = u_xlat15;
  u_xlat15 = ((x_799 * 2.0f) + -1.0f);
  let x_803 : f32 = u_xlat15;
  u_xlatb1.x = (x_803 >= 0.0f);
  let x_807 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_807);
  let x_810 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_810)) + 1.0f);
  let x_814 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_814);
  let x_816 : f32 = u_xlat15;
  u_xlat15 = (-(x_816) + 1.0f);
  let x_819 : f32 = u_xlat15;
  let x_821 : f32 = u_xlat1.x;
  u_xlat15 = (x_819 * x_821);
  let x_823 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_823.x, x_823.y, x_823.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_826 : vec4<f32> = u_xlat0;
  let x_829 : vec3<f32> = log2(abs(vec3<f32>(x_826.x, x_826.y, x_826.z)));
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_832 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = exp2(vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat2;
  let x_845 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_849.x, x_849.y, x_849.z, x_849.x));
  u_xlatb0 = vec3<bool>(x_851.x, x_851.y, x_851.z);
  let x_854 : bool = u_xlatb0.x;
  if (x_854) {
    let x_859 : f32 = u_xlat1.x;
    x_855 = x_859;
  } else {
    let x_862 : f32 = u_xlat2.x;
    x_855 = x_862;
  }
  let x_863 : f32 = x_855;
  u_xlat0.x = x_863;
  let x_866 : bool = u_xlatb0.y;
  if (x_866) {
    let x_871 : f32 = u_xlat1.y;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat2.y;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  u_xlat0.y = x_875;
  let x_878 : bool = u_xlatb0.z;
  if (x_878) {
    let x_883 : f32 = u_xlat1.z;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat2.z;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat0.z = x_887;
  let x_889 : f32 = u_xlat15;
  let x_894 : vec4<f32> = u_xlat0;
  let x_896 : vec3<f32> = ((vec3<f32>(x_889, x_889, x_889) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_894.x, x_894.y, x_894.z));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_902 : vec4<f32> = u_xlat0;
  let x_904 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat2;
  let x_909 : vec3<f32> = (vec3<f32>(x_907.x, x_907.y, x_907.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_910 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = log2(abs(vec3<f32>(x_912.x, x_912.y, x_912.z)));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : vec3<f32> = exp2(vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat0;
  let x_930 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_928.x, x_928.y, x_928.z, x_928.x));
  u_xlatb0 = vec3<bool>(x_930.x, x_930.y, x_930.z);
  let x_933 : bool = u_xlatb0.x;
  if (x_933) {
    let x_938 : f32 = u_xlat1.x;
    x_934 = x_938;
  } else {
    let x_941 : f32 = u_xlat2.x;
    x_934 = x_941;
  }
  let x_942 : f32 = x_934;
  u_xlat0.x = x_942;
  let x_945 : bool = u_xlatb0.y;
  if (x_945) {
    let x_950 : f32 = u_xlat1.y;
    x_946 = x_950;
  } else {
    let x_953 : f32 = u_xlat2.y;
    x_946 = x_953;
  }
  let x_954 : f32 = x_946;
  u_xlat0.y = x_954;
  let x_957 : bool = u_xlatb0.z;
  if (x_957) {
    let x_962 : f32 = u_xlat1.z;
    x_958 = x_962;
  } else {
    let x_965 : f32 = u_xlat2.z;
    x_958 = x_965;
  }
  let x_966 : f32 = x_958;
  u_xlat0.z = x_966;
  let x_970 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = max(vec3<f32>(x_970.x, x_970.y, x_970.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_974 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
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

