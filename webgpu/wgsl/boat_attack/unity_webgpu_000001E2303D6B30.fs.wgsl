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

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

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
  var u_xlat0 : vec3<f32>;
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
  var u_xlat5 : vec3<f32>;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_511 : f32;
  var x_523 : f32;
  var x_535 : f32;
  var u_xlat4 : vec2<f32>;
  var x_680 : f32;
  var x_692 : f32;
  var x_704 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_855 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var x_929 : f32;
  var x_941 : f32;
  var x_953 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Params2;
  u_xlat10 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Params2;
  let x_45 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_Params1;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_80);
  let x_82 : bool = u_xlatb6;
  if (x_82) {
    let x_86 : vec3<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Params2;
    let x_91 : vec2<f32> = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_92 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_91.x, x_91.y, x_92.z);
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
    let x_124 : vec3<f32> = u_xlat0;
    let x_126 : vec3<f32> = u_xlat6;
    let x_129 : vec2<f32> = u_xlat10;
    let x_130 : vec2<f32> = ((vec2<f32>(x_124.x, x_124.y) * vec2<f32>(x_126.x, x_126.x)) + x_129);
    let x_131 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_130.x, x_130.y, x_131.z);
  } else {
    let x_136 : f32 = u_xlat1.x;
    u_xlat16 = (1.0f / x_136);
    let x_138 : f32 = u_xlat16;
    let x_140 : f32 = x_26.x_Distortion_Params2.x;
    u_xlat16 = (x_138 * x_140);
    let x_143 : f32 = u_xlat1.x;
    let x_145 : f32 = x_26.x_Distortion_Params2.y;
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
    let x_248 : vec3<f32> = u_xlat0;
    let x_250 : vec3<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_26.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  u_xlat0 = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_278 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_278);
  let x_280 : bool = u_xlatb15;
  if (x_280) {
    let x_283 : vec3<f32> = u_xlat6;
    let x_286 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_289 : vec2<f32> = (vec2<f32>(x_283.x, x_283.y) + -(vec2<f32>(x_286.x, x_286.y)));
    let x_290 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_289.x, x_289.y, x_290.z);
    let x_292 : vec3<f32> = u_xlat1;
    let x_296 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_298 : vec2<f32> = (abs(vec2<f32>(x_292.x, x_292.y)) * vec2<f32>(x_296.z, x_296.z));
    let x_299 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_299.x, x_298.x, x_298.y);
    let x_302 : f32 = u_xlat1.y;
    let x_305 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_302 * x_305);
    let x_309 : vec3<f32> = u_xlat1;
    let x_311 : vec3<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_309.x, x_309.z), vec2<f32>(x_311.x, x_311.z));
    let x_314 : f32 = u_xlat15;
    u_xlat15 = (-(x_314) + 1.0f);
    let x_317 : f32 = u_xlat15;
    u_xlat15 = max(x_317, 0.0f);
    let x_319 : f32 = u_xlat15;
    u_xlat15 = log2(x_319);
    let x_321 : f32 = u_xlat15;
    let x_323 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_321 * x_323);
    let x_325 : f32 = u_xlat15;
    u_xlat15 = exp2(x_325);
    let x_328 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = (-(vec3<f32>(x_328.x, x_328.y, x_328.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_333 : f32 = u_xlat15;
    let x_335 : vec3<f32> = u_xlat1;
    let x_338 : vec4<f32> = x_26.x_Vignette_Params1;
    u_xlat1 = ((vec3<f32>(x_333, x_333, x_333) * x_335) + vec3<f32>(x_338.x, x_338.y, x_338.z));
    let x_341 : vec3<f32> = u_xlat0;
    let x_342 : vec3<f32> = u_xlat1;
    u_xlat0 = (x_341 * x_342);
  }
  let x_344 : vec3<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_344.z, x_344.x, x_344.y) * vec3<f32>(x_348.w, x_348.w, x_348.w));
  let x_351 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_351 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_358 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_358, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_361 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_361);
  let x_363 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_363 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_370 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_370, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_375 : vec3<f32> = u_xlat0;
  let x_377 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat5 = (x_375 * vec3<f32>(x_377.z, x_377.z, x_377.z));
  let x_381 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_381);
  let x_385 : vec4<f32> = x_26.x_Lut_Params;
  let x_387 : vec2<f32> = (vec2<f32>(x_385.x, x_385.y) * vec2<f32>(0.5f, 0.5f));
  let x_388 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_387.x, x_387.y, x_388.z);
  let x_390 : vec3<f32> = u_xlat5;
  let x_393 : vec4<f32> = x_26.x_Lut_Params;
  let x_396 : vec3<f32> = u_xlat1;
  let x_398 : vec2<f32> = ((vec2<f32>(x_390.y, x_390.z) * vec2<f32>(x_393.x, x_393.y)) + vec2<f32>(x_396.x, x_396.y));
  let x_399 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_399.x, x_398.x, x_398.y);
  let x_402 : f32 = u_xlat5.x;
  let x_404 : f32 = x_26.x_Lut_Params.y;
  let x_407 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_402 * x_404) + x_407);
  let x_414 : vec3<f32> = u_xlat1;
  let x_416 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_414.x, x_414.z), 0.0f);
  let x_417 : vec3<f32> = vec3<f32>(x_416.x, x_416.y, x_416.z);
  let x_418 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_421 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_421;
  u_xlat3.y = 0.0f;
  let x_424 : vec3<f32> = u_xlat1;
  let x_426 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_424.x, x_424.z) + vec2<f32>(x_426.x, x_426.y));
  let x_432 : vec2<f32> = u_xlat10;
  let x_433 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_432, 0.0f);
  u_xlat1 = vec3<f32>(x_433.x, x_433.y, x_433.z);
  let x_436 : f32 = u_xlat0.x;
  let x_438 : f32 = x_26.x_Lut_Params.z;
  let x_441 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_436 * x_438) + -(x_441));
  let x_445 : vec4<f32> = u_xlat2;
  let x_448 : vec3<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_445.x, x_445.y, x_445.z)) + x_448);
  let x_450 : vec3<f32> = u_xlat0;
  let x_452 : vec3<f32> = u_xlat5;
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_450.x, x_450.x, x_450.x) * x_452) + vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_459 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_459);
  let x_461 : bool = u_xlatb15;
  if (x_461) {
    let x_464 : vec3<f32> = u_xlat0;
    u_xlat0 = x_464;
    let x_465 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_465, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_469 : vec3<f32> = u_xlat0;
    u_xlat1 = (x_469 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_473 : vec3<f32> = u_xlat0;
    let x_474 : vec3<f32> = log2(x_473);
    let x_475 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_474.x, x_474.y, x_474.z, x_475.w);
    let x_477 : vec4<f32> = u_xlat2;
    let x_481 : vec3<f32> = (vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_482 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
    let x_484 : vec4<f32> = u_xlat2;
    let x_486 : vec3<f32> = exp2(vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat2;
    let x_496 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_497 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
    let x_502 : vec3<f32> = u_xlat0;
    let x_505 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_502.x, x_502.y, x_502.z, x_502.x));
    u_xlatb3 = vec3<bool>(x_505.x, x_505.y, x_505.z);
    let x_508 : vec3<f32> = u_xlat1;
    hlslcc_movcTemp = x_508;
    let x_510 : bool = u_xlatb3.x;
    if (x_510) {
      let x_515 : f32 = u_xlat1.x;
      x_511 = x_515;
    } else {
      let x_518 : f32 = u_xlat2.x;
      x_511 = x_518;
    }
    let x_519 : f32 = x_511;
    hlslcc_movcTemp.x = x_519;
    let x_522 : bool = u_xlatb3.y;
    if (x_522) {
      let x_527 : f32 = u_xlat1.y;
      x_523 = x_527;
    } else {
      let x_530 : f32 = u_xlat2.y;
      x_523 = x_530;
    }
    let x_531 : f32 = x_523;
    hlslcc_movcTemp.y = x_531;
    let x_534 : bool = u_xlatb3.z;
    if (x_534) {
      let x_539 : f32 = u_xlat1.z;
      x_535 = x_539;
    } else {
      let x_542 : f32 = u_xlat2.z;
      x_535 = x_542;
    }
    let x_543 : f32 = x_535;
    hlslcc_movcTemp.z = x_543;
    let x_545 : vec3<f32> = hlslcc_movcTemp;
    u_xlat1 = x_545;
    let x_546 : vec3<f32> = u_xlat1;
    let x_549 : vec4<f32> = x_26.x_UserLut_Params;
    let x_551 : vec3<f32> = (vec3<f32>(x_546.z, x_546.x, x_546.y) * vec3<f32>(x_549.z, x_549.z, x_549.z));
    let x_552 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_555 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_555);
    let x_558 : vec4<f32> = x_26.x_UserLut_Params;
    let x_560 : vec2<f32> = (vec2<f32>(x_558.x, x_558.y) * vec2<f32>(0.5f, 0.5f));
    let x_561 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_560.x, x_561.y, x_561.z, x_560.y);
    let x_563 : vec4<f32> = u_xlat2;
    let x_566 : vec4<f32> = x_26.x_UserLut_Params;
    let x_569 : vec4<f32> = u_xlat2;
    let x_571 : vec2<f32> = ((vec2<f32>(x_563.y, x_563.z) * vec2<f32>(x_566.x, x_566.y)) + vec2<f32>(x_569.x, x_569.w));
    let x_572 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_572.x, x_571.x, x_571.y, x_572.w);
    let x_574 : f32 = u_xlat15;
    let x_576 : f32 = x_26.x_UserLut_Params.y;
    let x_579 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_574 * x_576) + x_579);
    let x_586 : vec4<f32> = u_xlat2;
    let x_588 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_586.x, x_586.z), 0.0f);
    u_xlat3 = vec3<f32>(x_588.x, x_588.y, x_588.z);
    let x_592 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_592;
    u_xlat4.y = 0.0f;
    let x_595 : vec4<f32> = u_xlat2;
    let x_597 : vec2<f32> = u_xlat4;
    let x_598 : vec2<f32> = (vec2<f32>(x_595.x, x_595.z) + x_597);
    let x_599 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
    let x_604 : vec4<f32> = u_xlat2;
    let x_606 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_604.x, x_604.y), 0.0f);
    let x_607 : vec3<f32> = vec3<f32>(x_606.x, x_606.y, x_606.z);
    let x_608 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
    let x_611 : f32 = u_xlat1.z;
    let x_613 : f32 = x_26.x_UserLut_Params.z;
    let x_615 : f32 = u_xlat15;
    u_xlat15 = ((x_611 * x_613) + -(x_615));
    let x_618 : vec3<f32> = u_xlat3;
    let x_620 : vec4<f32> = u_xlat2;
    let x_622 : vec3<f32> = (-(x_618) + vec3<f32>(x_620.x, x_620.y, x_620.z));
    let x_623 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
    let x_625 : f32 = u_xlat15;
    let x_627 : vec4<f32> = u_xlat2;
    let x_630 : vec3<f32> = u_xlat3;
    let x_631 : vec3<f32> = ((vec3<f32>(x_625, x_625, x_625) * vec3<f32>(x_627.x, x_627.y, x_627.z)) + x_630);
    let x_632 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_631.x, x_631.y, x_631.z, x_632.w);
    let x_634 : vec3<f32> = u_xlat1;
    let x_636 : vec4<f32> = u_xlat2;
    let x_638 : vec3<f32> = (-(x_634) + vec3<f32>(x_636.x, x_636.y, x_636.z));
    let x_639 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_638.x, x_638.y, x_638.z, x_639.w);
    let x_642 : vec4<f32> = x_26.x_UserLut_Params;
    let x_644 : vec4<f32> = u_xlat2;
    let x_647 : vec3<f32> = u_xlat1;
    u_xlat1 = ((vec3<f32>(x_642.w, x_642.w, x_642.w) * vec3<f32>(x_644.x, x_644.y, x_644.z)) + x_647);
    let x_649 : vec3<f32> = u_xlat1;
    let x_652 : vec3<f32> = (x_649 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_653 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
    let x_655 : vec3<f32> = u_xlat1;
    u_xlat3 = (x_655 + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_659 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_659 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_663 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_663));
    let x_666 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_666 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_670 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_670);
    let x_674 : vec3<f32> = u_xlat1;
    let x_676 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_674.x, x_674.y, x_674.z, x_674.x));
    u_xlatb1 = vec3<bool>(x_676.x, x_676.y, x_676.z);
    let x_679 : bool = u_xlatb1.x;
    if (x_679) {
      let x_684 : f32 = u_xlat2.x;
      x_680 = x_684;
    } else {
      let x_687 : f32 = u_xlat3.x;
      x_680 = x_687;
    }
    let x_688 : f32 = x_680;
    u_xlat0.x = x_688;
    let x_691 : bool = u_xlatb1.y;
    if (x_691) {
      let x_696 : f32 = u_xlat2.y;
      x_692 = x_696;
    } else {
      let x_699 : f32 = u_xlat3.y;
      x_692 = x_699;
    }
    let x_700 : f32 = x_692;
    u_xlat0.y = x_700;
    let x_703 : bool = u_xlatb1.z;
    if (x_703) {
      let x_708 : f32 = u_xlat2.z;
      x_704 = x_708;
    } else {
      let x_711 : f32 = u_xlat3.z;
      x_704 = x_711;
    }
    let x_712 : f32 = x_704;
    u_xlat0.z = x_712;
  }
  let x_714 : vec2<f32> = vs_TEXCOORD0;
  let x_717 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_721 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_723 : vec2<f32> = ((x_714 * vec2<f32>(x_717.x, x_717.y)) + vec2<f32>(x_721.z, x_721.w));
  let x_724 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_723.x, x_723.y, x_724.z);
  let x_731 : vec3<f32> = u_xlat1;
  let x_734 : f32 = x_26.x_GlobalMipBias.x;
  let x_735 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_731.x, x_731.y), x_734);
  u_xlat15 = x_735.w;
  let x_737 : f32 = u_xlat15;
  u_xlat15 = (x_737 + -0.5f);
  let x_739 : f32 = u_xlat15;
  let x_740 : f32 = u_xlat15;
  u_xlat15 = (x_739 + x_740);
  let x_742 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_742, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_750 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_750);
  let x_755 : f32 = x_26.x_Grain_Params.y;
  let x_757 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_755 * -(x_757)) + 1.0f);
  let x_762 : f32 = u_xlat15;
  let x_764 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_762, x_762, x_762) * x_764);
  let x_766 : vec3<f32> = u_xlat6;
  let x_769 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_766 * vec3<f32>(x_769.x, x_769.x, x_769.x));
  let x_772 : vec3<f32> = u_xlat6;
  let x_773 : vec3<f32> = u_xlat1;
  let x_776 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_772 * vec3<f32>(x_773.x, x_773.x, x_773.x)) + x_776);
  let x_778 : vec2<f32> = vs_TEXCOORD0;
  let x_781 : vec4<f32> = x_26.x_Dithering_Params;
  let x_785 : vec4<f32> = x_26.x_Dithering_Params;
  let x_787 : vec2<f32> = ((x_778 * vec2<f32>(x_781.x, x_781.y)) + vec2<f32>(x_785.z, x_785.w));
  let x_788 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_787.x, x_787.y, x_788.z);
  let x_795 : vec3<f32> = u_xlat1;
  let x_798 : f32 = x_26.x_GlobalMipBias.x;
  let x_799 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_795.x, x_795.y), x_798);
  u_xlat15 = x_799.w;
  let x_801 : f32 = u_xlat15;
  u_xlat15 = ((x_801 * 2.0f) + -1.0f);
  let x_805 : f32 = u_xlat15;
  u_xlatb1.x = (x_805 >= 0.0f);
  let x_809 : bool = u_xlatb1.x;
  u_xlat1.x = select(-1.0f, 1.0f, x_809);
  let x_812 : f32 = u_xlat15;
  u_xlat15 = (-(abs(x_812)) + 1.0f);
  let x_816 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_816);
  let x_818 : f32 = u_xlat15;
  u_xlat15 = (-(x_818) + 1.0f);
  let x_821 : f32 = u_xlat15;
  let x_823 : f32 = u_xlat1.x;
  u_xlat15 = (x_821 * x_823);
  let x_825 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_825 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_827 : vec3<f32> = u_xlat0;
  let x_829 : vec3<f32> = log2(abs(x_827));
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
  let x_849 : vec3<f32> = u_xlat0;
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
  let x_894 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_889, x_889, x_889) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_894);
  let x_896 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_896 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_898 : vec3<f32> = u_xlat0;
  let x_899 : vec3<f32> = (x_898 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_900 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat2;
  let x_904 : vec3<f32> = (vec3<f32>(x_902.x, x_902.y, x_902.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_905 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat2;
  let x_910 : vec3<f32> = log2(abs(vec3<f32>(x_907.x, x_907.y, x_907.z)));
  let x_911 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = exp2(vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec3<f32> = u_xlat0;
  let x_925 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_923.x, x_923.y, x_923.z, x_923.x));
  u_xlatb0 = vec3<bool>(x_925.x, x_925.y, x_925.z);
  let x_928 : bool = u_xlatb0.x;
  if (x_928) {
    let x_933 : f32 = u_xlat1.x;
    x_929 = x_933;
  } else {
    let x_936 : f32 = u_xlat2.x;
    x_929 = x_936;
  }
  let x_937 : f32 = x_929;
  u_xlat0.x = x_937;
  let x_940 : bool = u_xlatb0.y;
  if (x_940) {
    let x_945 : f32 = u_xlat1.y;
    x_941 = x_945;
  } else {
    let x_948 : f32 = u_xlat2.y;
    x_941 = x_948;
  }
  let x_949 : f32 = x_941;
  u_xlat0.y = x_949;
  let x_952 : bool = u_xlatb0.z;
  if (x_952) {
    let x_957 : f32 = u_xlat1.z;
    x_953 = x_957;
  } else {
    let x_960 : f32 = u_xlat2.z;
    x_953 = x_960;
  }
  let x_961 : f32 = x_953;
  u_xlat0.z = x_961;
  let x_965 : vec3<f32> = u_xlat0;
  let x_966 : vec3<f32> = max(x_965, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_967 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
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

