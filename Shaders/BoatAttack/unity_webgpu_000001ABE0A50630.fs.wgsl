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
  x_Vignette_Params1 : vec4<f32>,
  x_Vignette_Params2 : vec4<f32>,
  x_Grain_Params : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_TilingParams : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_LinearClamp : sampler;

@group(0) @binding(1) var x_Bloom_Texture : texture_2d<f32>;

@group(0) @binding(2) var x_LensDirt_Texture : texture_2d<f32>;

@group(0) @binding(4) var x_InternalLut : texture_2d<f32>;

@group(0) @binding(5) var x_UserLut : texture_2d<f32>;

@group(0) @binding(3) var x_Grain_Texture : texture_2d<f32>;

@group(0) @binding(7) var sampler_LinearRepeat : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat10 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
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
  var hlslcc_movcTemp : vec4<f32>;
  var x_601 : f32;
  var x_613 : f32;
  var x_625 : f32;
  var u_xlat4 : vec2<f32>;
  var x_776 : f32;
  var x_788 : f32;
  var x_800 : f32;
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
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Params2.w;
  u_xlatb6 = (0.0f < x_81);
  let x_83 : bool = u_xlatb6;
  if (x_83) {
    let x_87 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Params2;
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
    let x_250 : vec4<f32> = u_xlat1;
    let x_253 : vec2<f32> = u_xlat10;
    let x_254 : vec2<f32> = ((vec2<f32>(x_248.x, x_248.y) * vec2<f32>(x_250.x, x_250.x)) + x_253);
    let x_255 : vec3<f32> = u_xlat6;
    u_xlat6 = vec3<f32>(x_254.x, x_254.y, x_255.z);
  }
  let x_267 : vec3<f32> = u_xlat6;
  let x_271 : f32 = x_26.x_GlobalMipBias.x;
  let x_272 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, vec2<f32>(x_267.x, x_267.y), x_271);
  u_xlat0 = vec3<f32>(x_272.x, x_272.y, x_272.z);
  let x_278 : vec3<f32> = u_xlat6;
  let x_281 : f32 = x_26.x_GlobalMipBias.x;
  let x_282 : vec4<f32> = textureSampleBias(x_Bloom_Texture, sampler_LinearClamp, vec2<f32>(x_278.x, x_278.y), x_281);
  u_xlat2 = x_282;
  let x_286 : f32 = x_26.x_Bloom_RGBM;
  u_xlatb15 = (0.0f < x_286);
  let x_288 : bool = u_xlatb15;
  if (x_288) {
    let x_291 : vec4<f32> = u_xlat2;
    let x_293 : vec4<f32> = u_xlat2;
    u_xlat3 = (vec3<f32>(x_291.w, x_291.w, x_291.w) * vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec3<f32> = u_xlat3;
    let x_299 : vec3<f32> = (x_296 * vec3<f32>(8.0f, 8.0f, 8.0f));
    let x_300 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_299.z, x_300.w);
  }
  let x_302 : vec4<f32> = u_xlat2;
  let x_306 : vec4<f32> = x_26.x_Bloom_Params;
  let x_308 : vec3<f32> = (vec3<f32>(x_302.x, x_302.y, x_302.z) * vec3<f32>(x_306.x, x_306.x, x_306.x));
  let x_309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec4<f32> = u_xlat2;
  let x_314 : vec4<f32> = x_26.x_Bloom_Params;
  let x_317 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_314.y, x_314.z, x_314.w)) + x_317);
  let x_319 : vec3<f32> = u_xlat6;
  let x_323 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_327 : vec4<f32> = x_26.x_LensDirt_Params;
  let x_329 : vec2<f32> = ((vec2<f32>(x_319.x, x_319.y) * vec2<f32>(x_323.x, x_323.y)) + vec2<f32>(x_327.z, x_327.w));
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_329.x, x_330.y, x_330.z, x_329.y);
  let x_336 : vec4<f32> = u_xlat1;
  let x_339 : f32 = x_26.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(x_LensDirt_Texture, sampler_LinearClamp, vec2<f32>(x_336.x, x_336.w), x_339);
  u_xlat3 = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_342 : vec3<f32> = u_xlat3;
  let x_345 : f32 = x_26.x_LensDirt_Intensity;
  u_xlat3 = (x_342 * vec3<f32>(x_345, x_345, x_345));
  let x_348 : vec3<f32> = u_xlat3;
  let x_349 : vec4<f32> = u_xlat2;
  let x_352 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_348 * vec3<f32>(x_349.x, x_349.y, x_349.z)) + x_352);
  let x_357 : f32 = x_26.x_Vignette_Params2.z;
  u_xlatb15 = (0.0f < x_357);
  let x_359 : bool = u_xlatb15;
  if (x_359) {
    let x_362 : vec3<f32> = u_xlat6;
    let x_365 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_368 : vec2<f32> = (vec2<f32>(x_362.x, x_362.y) + -(vec2<f32>(x_365.x, x_365.y)));
    let x_369 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_368.x, x_368.y, x_369.z, x_369.w);
    let x_371 : vec4<f32> = u_xlat1;
    let x_375 : vec4<f32> = x_26.x_Vignette_Params2;
    let x_377 : vec2<f32> = (abs(vec2<f32>(x_371.x, x_371.y)) * vec2<f32>(x_375.z, x_375.z));
    let x_378 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_378.x, x_377.x, x_377.y, x_378.w);
    let x_381 : f32 = u_xlat1.y;
    let x_384 : f32 = x_26.x_Vignette_Params1.w;
    u_xlat1.x = (x_381 * x_384);
    let x_388 : vec4<f32> = u_xlat1;
    let x_390 : vec4<f32> = u_xlat1;
    u_xlat15 = dot(vec2<f32>(x_388.x, x_388.z), vec2<f32>(x_390.x, x_390.z));
    let x_393 : f32 = u_xlat15;
    u_xlat15 = (-(x_393) + 1.0f);
    let x_396 : f32 = u_xlat15;
    u_xlat15 = max(x_396, 0.0f);
    let x_398 : f32 = u_xlat15;
    u_xlat15 = log2(x_398);
    let x_400 : f32 = u_xlat15;
    let x_402 : f32 = x_26.x_Vignette_Params2.w;
    u_xlat15 = (x_400 * x_402);
    let x_404 : f32 = u_xlat15;
    u_xlat15 = exp2(x_404);
    let x_407 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_411 : vec3<f32> = (-(vec3<f32>(x_407.x, x_407.y, x_407.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_412 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_414 : f32 = u_xlat15;
    let x_416 : vec4<f32> = u_xlat1;
    let x_420 : vec4<f32> = x_26.x_Vignette_Params1;
    let x_422 : vec3<f32> = ((vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_416.x, x_416.y, x_416.z)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_425 : vec3<f32> = u_xlat0;
    let x_426 : vec4<f32> = u_xlat1;
    u_xlat0 = (x_425 * vec3<f32>(x_426.x, x_426.y, x_426.z));
  }
  let x_429 : vec3<f32> = u_xlat0;
  let x_433 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat0 = (vec3<f32>(x_429.z, x_429.x, x_429.y) * vec3<f32>(x_433.w, x_433.w, x_433.w));
  let x_436 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_436 * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_443 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_443, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_446 : vec3<f32> = u_xlat0;
  u_xlat0 = log2(x_446);
  let x_448 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_448 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat0 = clamp(x_455, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_460 : vec3<f32> = u_xlat0;
  let x_462 : vec4<f32> = x_26.x_Lut_Params;
  u_xlat5 = (x_460 * vec3<f32>(x_462.z, x_462.z, x_462.z));
  let x_466 : f32 = u_xlat5.x;
  u_xlat5.x = floor(x_466);
  let x_470 : vec4<f32> = x_26.x_Lut_Params;
  let x_472 : vec2<f32> = (vec2<f32>(x_470.x, x_470.y) * vec2<f32>(0.5f, 0.5f));
  let x_473 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_472.x, x_472.y, x_473.z, x_473.w);
  let x_475 : vec3<f32> = u_xlat5;
  let x_478 : vec4<f32> = x_26.x_Lut_Params;
  let x_481 : vec4<f32> = u_xlat1;
  let x_483 : vec2<f32> = ((vec2<f32>(x_475.y, x_475.z) * vec2<f32>(x_478.x, x_478.y)) + vec2<f32>(x_481.x, x_481.y));
  let x_484 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_484.x, x_483.x, x_483.y, x_484.w);
  let x_487 : f32 = u_xlat5.x;
  let x_489 : f32 = x_26.x_Lut_Params.y;
  let x_492 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_487 * x_489) + x_492);
  let x_499 : vec4<f32> = u_xlat1;
  let x_501 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, vec2<f32>(x_499.x, x_499.z), 0.0f);
  let x_502 : vec3<f32> = vec3<f32>(x_501.x, x_501.y, x_501.z);
  let x_503 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_502.x, x_502.y, x_502.z, x_503.w);
  let x_506 : f32 = x_26.x_Lut_Params.y;
  u_xlat3.x = x_506;
  u_xlat3.y = 0.0f;
  let x_509 : vec4<f32> = u_xlat1;
  let x_511 : vec3<f32> = u_xlat3;
  u_xlat10 = (vec2<f32>(x_509.x, x_509.z) + vec2<f32>(x_511.x, x_511.y));
  let x_517 : vec2<f32> = u_xlat10;
  let x_518 : vec4<f32> = textureSampleLevel(x_InternalLut, sampler_LinearClamp, x_517, 0.0f);
  let x_519 : vec3<f32> = vec3<f32>(x_518.x, x_518.y, x_518.z);
  let x_520 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_519.x, x_519.y, x_519.z, x_520.w);
  let x_523 : f32 = u_xlat0.x;
  let x_525 : f32 = x_26.x_Lut_Params.z;
  let x_528 : f32 = u_xlat5.x;
  u_xlat0.x = ((x_523 * x_525) + -(x_528));
  let x_532 : vec4<f32> = u_xlat2;
  let x_535 : vec4<f32> = u_xlat1;
  u_xlat5 = (-(vec3<f32>(x_532.x, x_532.y, x_532.z)) + vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_538 : vec3<f32> = u_xlat0;
  let x_540 : vec3<f32> = u_xlat5;
  let x_542 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_538.x, x_538.x, x_538.x) * x_540) + vec3<f32>(x_542.x, x_542.y, x_542.z));
  let x_547 : f32 = x_26.x_UserLut_Params.w;
  u_xlatb15 = (0.0f < x_547);
  let x_549 : bool = u_xlatb15;
  if (x_549) {
    let x_552 : vec3<f32> = u_xlat0;
    u_xlat0 = x_552;
    let x_553 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_553, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_557 : vec3<f32> = u_xlat0;
    let x_560 : vec3<f32> = (x_557 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
    let x_561 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_560.x, x_560.y, x_560.z, x_561.w);
    let x_563 : vec3<f32> = u_xlat0;
    let x_564 : vec3<f32> = log2(x_563);
    let x_565 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat2;
    let x_571 : vec3<f32> = (vec3<f32>(x_567.x, x_567.y, x_567.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
    let x_572 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat2;
    let x_576 : vec3<f32> = exp2(vec3<f32>(x_574.x, x_574.y, x_574.z));
    let x_577 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
    let x_579 : vec4<f32> = u_xlat2;
    let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
    let x_587 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_592 : vec3<f32> = u_xlat0;
    let x_595 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_592.x, x_592.y, x_592.z, x_592.x));
    u_xlatb3 = vec3<bool>(x_595.x, x_595.y, x_595.z);
    let x_598 : vec4<f32> = u_xlat1;
    hlslcc_movcTemp = x_598;
    let x_600 : bool = u_xlatb3.x;
    if (x_600) {
      let x_605 : f32 = u_xlat1.x;
      x_601 = x_605;
    } else {
      let x_608 : f32 = u_xlat2.x;
      x_601 = x_608;
    }
    let x_609 : f32 = x_601;
    hlslcc_movcTemp.x = x_609;
    let x_612 : bool = u_xlatb3.y;
    if (x_612) {
      let x_617 : f32 = u_xlat1.y;
      x_613 = x_617;
    } else {
      let x_620 : f32 = u_xlat2.y;
      x_613 = x_620;
    }
    let x_621 : f32 = x_613;
    hlslcc_movcTemp.y = x_621;
    let x_624 : bool = u_xlatb3.z;
    if (x_624) {
      let x_629 : f32 = u_xlat1.z;
      x_625 = x_629;
    } else {
      let x_632 : f32 = u_xlat2.z;
      x_625 = x_632;
    }
    let x_633 : f32 = x_625;
    hlslcc_movcTemp.z = x_633;
    let x_635 : vec4<f32> = hlslcc_movcTemp;
    u_xlat1 = x_635;
    let x_636 : vec4<f32> = u_xlat1;
    let x_639 : vec4<f32> = x_26.x_UserLut_Params;
    let x_641 : vec3<f32> = (vec3<f32>(x_636.z, x_636.x, x_636.y) * vec3<f32>(x_639.z, x_639.z, x_639.z));
    let x_642 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
    let x_645 : f32 = u_xlat2.x;
    u_xlat15 = floor(x_645);
    let x_648 : vec4<f32> = x_26.x_UserLut_Params;
    let x_650 : vec2<f32> = (vec2<f32>(x_648.x, x_648.y) * vec2<f32>(0.5f, 0.5f));
    let x_651 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_650.x, x_651.y, x_651.z, x_650.y);
    let x_653 : vec4<f32> = u_xlat2;
    let x_656 : vec4<f32> = x_26.x_UserLut_Params;
    let x_659 : vec4<f32> = u_xlat2;
    let x_661 : vec2<f32> = ((vec2<f32>(x_653.y, x_653.z) * vec2<f32>(x_656.x, x_656.y)) + vec2<f32>(x_659.x, x_659.w));
    let x_662 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_662.x, x_661.x, x_661.y, x_662.w);
    let x_664 : f32 = u_xlat15;
    let x_666 : f32 = x_26.x_UserLut_Params.y;
    let x_669 : f32 = u_xlat2.y;
    u_xlat2.x = ((x_664 * x_666) + x_669);
    let x_676 : vec4<f32> = u_xlat2;
    let x_678 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_676.x, x_676.z), 0.0f);
    u_xlat3 = vec3<f32>(x_678.x, x_678.y, x_678.z);
    let x_682 : f32 = x_26.x_UserLut_Params.y;
    u_xlat4.x = x_682;
    u_xlat4.y = 0.0f;
    let x_685 : vec4<f32> = u_xlat2;
    let x_687 : vec2<f32> = u_xlat4;
    let x_688 : vec2<f32> = (vec2<f32>(x_685.x, x_685.z) + x_687);
    let x_689 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
    let x_694 : vec4<f32> = u_xlat2;
    let x_696 : vec4<f32> = textureSampleLevel(x_UserLut, sampler_LinearClamp, vec2<f32>(x_694.x, x_694.y), 0.0f);
    let x_697 : vec3<f32> = vec3<f32>(x_696.x, x_696.y, x_696.z);
    let x_698 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
    let x_701 : f32 = u_xlat1.z;
    let x_703 : f32 = x_26.x_UserLut_Params.z;
    let x_705 : f32 = u_xlat15;
    u_xlat15 = ((x_701 * x_703) + -(x_705));
    let x_708 : vec3<f32> = u_xlat3;
    let x_710 : vec4<f32> = u_xlat2;
    let x_712 : vec3<f32> = (-(x_708) + vec3<f32>(x_710.x, x_710.y, x_710.z));
    let x_713 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
    let x_715 : f32 = u_xlat15;
    let x_717 : vec4<f32> = u_xlat2;
    let x_720 : vec3<f32> = u_xlat3;
    let x_721 : vec3<f32> = ((vec3<f32>(x_715, x_715, x_715) * vec3<f32>(x_717.x, x_717.y, x_717.z)) + x_720);
    let x_722 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
    let x_724 : vec4<f32> = u_xlat1;
    let x_727 : vec4<f32> = u_xlat2;
    let x_729 : vec3<f32> = (-(vec3<f32>(x_724.x, x_724.y, x_724.z)) + vec3<f32>(x_727.x, x_727.y, x_727.z));
    let x_730 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
    let x_733 : vec4<f32> = x_26.x_UserLut_Params;
    let x_735 : vec4<f32> = u_xlat2;
    let x_738 : vec4<f32> = u_xlat1;
    let x_740 : vec3<f32> = ((vec3<f32>(x_733.w, x_733.w, x_733.w) * vec3<f32>(x_735.x, x_735.y, x_735.z)) + vec3<f32>(x_738.x, x_738.y, x_738.z));
    let x_741 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
    let x_743 : vec4<f32> = u_xlat1;
    let x_747 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
    let x_748 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
    let x_750 : vec4<f32> = u_xlat1;
    u_xlat3 = (vec3<f32>(x_750.x, x_750.y, x_750.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
    let x_755 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_755 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
    let x_759 : vec3<f32> = u_xlat3;
    u_xlat3 = log2(abs(x_759));
    let x_762 : vec3<f32> = u_xlat3;
    u_xlat3 = (x_762 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
    let x_766 : vec3<f32> = u_xlat3;
    u_xlat3 = exp2(x_766);
    let x_770 : vec4<f32> = u_xlat1;
    let x_772 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_770.x, x_770.y, x_770.z, x_770.x));
    u_xlatb1 = vec3<bool>(x_772.x, x_772.y, x_772.z);
    let x_775 : bool = u_xlatb1.x;
    if (x_775) {
      let x_780 : f32 = u_xlat2.x;
      x_776 = x_780;
    } else {
      let x_783 : f32 = u_xlat3.x;
      x_776 = x_783;
    }
    let x_784 : f32 = x_776;
    u_xlat0.x = x_784;
    let x_787 : bool = u_xlatb1.y;
    if (x_787) {
      let x_792 : f32 = u_xlat2.y;
      x_788 = x_792;
    } else {
      let x_795 : f32 = u_xlat3.y;
      x_788 = x_795;
    }
    let x_796 : f32 = x_788;
    u_xlat0.y = x_796;
    let x_799 : bool = u_xlatb1.z;
    if (x_799) {
      let x_804 : f32 = u_xlat2.z;
      x_800 = x_804;
    } else {
      let x_807 : f32 = u_xlat3.z;
      x_800 = x_807;
    }
    let x_808 : f32 = x_800;
    u_xlat0.z = x_808;
  }
  let x_810 : vec2<f32> = vs_TEXCOORD0;
  let x_813 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_817 : vec4<f32> = x_26.x_Grain_TilingParams;
  let x_819 : vec2<f32> = ((x_810 * vec2<f32>(x_813.x, x_813.y)) + vec2<f32>(x_817.z, x_817.w));
  let x_820 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
  let x_827 : vec4<f32> = u_xlat1;
  let x_830 : f32 = x_26.x_GlobalMipBias.x;
  let x_831 : vec4<f32> = textureSampleBias(x_Grain_Texture, sampler_LinearRepeat, vec2<f32>(x_827.x, x_827.y), x_830);
  u_xlat15 = x_831.w;
  let x_833 : f32 = u_xlat15;
  u_xlat15 = (x_833 + -0.5f);
  let x_835 : f32 = u_xlat15;
  let x_836 : f32 = u_xlat15;
  u_xlat15 = (x_835 + x_836);
  let x_838 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(x_838, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_846 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_846);
  let x_851 : f32 = x_26.x_Grain_Params.y;
  let x_853 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_851 * -(x_853)) + 1.0f);
  let x_858 : f32 = u_xlat15;
  let x_860 : vec3<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_858, x_858, x_858) * x_860);
  let x_862 : vec3<f32> = u_xlat6;
  let x_865 : vec2<f32> = x_26.x_Grain_Params;
  u_xlat6 = (x_862 * vec3<f32>(x_865.x, x_865.x, x_865.x));
  let x_868 : vec3<f32> = u_xlat6;
  let x_869 : vec4<f32> = u_xlat1;
  let x_872 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_868 * vec3<f32>(x_869.x, x_869.x, x_869.x)) + x_872);
  let x_876 : vec3<f32> = u_xlat0;
  let x_877 : vec3<f32> = sqrt(x_876);
  let x_878 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
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

