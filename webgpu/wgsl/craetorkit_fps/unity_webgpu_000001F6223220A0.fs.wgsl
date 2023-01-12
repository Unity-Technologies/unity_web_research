struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlat14 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat9 : f32;
  var u_xlat15 : f32;
  var u_xlat21 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : vec3<bool>;
  var x_224 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlatb9 : bool;
  var x_381 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_411 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var x_928 : f32;
  var u_xlat18 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1104 : f32;
  var x_1116 : f32;
  var x_1128 : f32;
  var u_xlat12 : vec2<f32>;
  var x_1257 : f32;
  var x_1269 : f32;
  var x_1281 : f32;
  var x_1367 : f32;
  var x_1379 : f32;
  var x_1391 : f32;
  var x_1438 : f32;
  var x_1451 : f32;
  var x_1463 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_23 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_23 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_28 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = x_32.x_Distortion_Amount;
  u_xlat1 = ((x_28 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_32.x_Distortion_Amount;
  let x_50 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = ((x_43 * vec4<f32>(x_45.z, x_45.z, x_45.z, x_45.z)) + -(vec4<f32>(x_50.x, x_50.y, x_50.x, x_50.y)));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = x_32.x_Distortion_CenterScale;
  u_xlat0 = (x_54 * vec4<f32>(x_56.z, x_56.w, x_56.z, x_56.w));
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_71);
  let x_81 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_88 : vec3<f32> = u_xlat2;
    let x_91 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_88.x, x_88.x) * vec2<f32>(x_91.x, x_91.y));
    let x_96 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_96);
    let x_101 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_101);
    let x_105 : f32 = u_xlat3.x;
    let x_107 : f32 = u_xlat4.x;
    u_xlat14.x = (x_105 / x_107);
    let x_114 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_114);
    let x_117 : f32 = u_xlat14.x;
    let x_118 : f32 = u_xlat20;
    u_xlat14.x = ((x_117 * x_118) + -1.0f);
    let x_123 : vec4<f32> = u_xlat0;
    let x_125 : vec2<f32> = u_xlat14;
    let x_128 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_123.x, x_123.y) * vec2<f32>(x_125.x, x_125.x)) + vec2<f32>(x_128.x, x_128.y));
  } else {
    let x_133 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_133);
    let x_137 : f32 = u_xlat3.x;
    let x_139 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_137 * x_139);
    let x_143 : f32 = u_xlat2.x;
    let x_145 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_143 * x_145);
    let x_150 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_150), 1.0f);
    let x_155 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_155), 1.0f);
    let x_158 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_158);
    let x_160 : f32 = u_xlat15;
    let x_161 : f32 = u_xlat9;
    u_xlat9 = (x_160 * x_161);
    let x_163 : f32 = u_xlat9;
    let x_164 : f32 = u_xlat9;
    u_xlat15 = (x_163 * x_164);
    let x_167 : f32 = u_xlat15;
    u_xlat21 = ((x_167 * 0.0208351f) + -0.085133001f);
    let x_172 : f32 = u_xlat15;
    let x_173 : f32 = u_xlat21;
    u_xlat21 = ((x_172 * x_173) + 0.180141002f);
    let x_177 : f32 = u_xlat15;
    let x_178 : f32 = u_xlat21;
    u_xlat21 = ((x_177 * x_178) + -0.330299497f);
    let x_182 : f32 = u_xlat15;
    let x_183 : f32 = u_xlat21;
    u_xlat15 = ((x_182 * x_183) + 0.999866009f);
    let x_187 : f32 = u_xlat15;
    let x_188 : f32 = u_xlat9;
    u_xlat21 = (x_187 * x_188);
    let x_192 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_192));
    let x_195 : f32 = u_xlat21;
    u_xlat21 = ((x_195 * -2.0f) + 1.570796371f);
    let x_200 : bool = u_xlatb4;
    let x_201 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_201, x_200);
    let x_203 : f32 = u_xlat9;
    let x_204 : f32 = u_xlat15;
    let x_206 : f32 = u_xlat21;
    u_xlat9 = ((x_203 * x_204) + x_206);
    let x_209 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_209, 1.0f);
    let x_216 : f32 = u_xlat2.x;
    let x_218 : f32 = u_xlat2.x;
    u_xlatb2.x = (x_216 < -(x_218));
    let x_223 : bool = u_xlatb2.x;
    if (x_223) {
      let x_227 : f32 = u_xlat9;
      x_224 = -(x_227);
    } else {
      let x_230 : f32 = u_xlat9;
      x_224 = x_230;
    }
    let x_231 : f32 = x_224;
    u_xlat2.x = x_231;
    let x_234 : f32 = u_xlat3.x;
    let x_236 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_234 * x_236) + -1.0f);
    let x_240 : vec4<f32> = u_xlat0;
    let x_242 : vec3<f32> = u_xlat2;
    let x_245 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_240.x, x_240.y) * vec2<f32>(x_242.x, x_242.x)) + vec2<f32>(x_245.x, x_245.y));
  }
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_248.z, x_248.w), vec2<f32>(x_250.z, x_250.w));
  let x_255 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_255);
  let x_258 : bool = u_xlatb8;
  if (x_258) {
    let x_261 : vec4<f32> = u_xlat0;
    let x_264 : vec4<f32> = x_32.x_Distortion_Amount;
    let x_266 : vec2<f32> = (vec2<f32>(x_261.x, x_261.x) * vec2<f32>(x_264.x, x_264.y));
    let x_267 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_266.x, x_266.y, x_267.z, x_267.w);
    let x_270 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_270);
    let x_274 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_274);
    let x_279 : f32 = u_xlat1.x;
    let x_281 : f32 = u_xlat2.x;
    u_xlat6.x = (x_279 / x_281);
    let x_285 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_285);
    let x_289 : f32 = u_xlat6.x;
    let x_291 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_289 * x_291) + -1.0f);
    let x_295 : vec4<f32> = u_xlat0;
    let x_297 : vec3<f32> = u_xlat6;
    let x_300 : vec4<f32> = u_xlat1;
    let x_302 : vec2<f32> = ((vec2<f32>(x_295.z, x_295.w) * vec2<f32>(x_297.x, x_297.x)) + vec2<f32>(x_300.z, x_300.w));
    let x_303 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_302.x, x_302.y, x_303.z, x_303.w);
  } else {
    let x_307 : f32 = u_xlat0.x;
    u_xlat6.x = (1.0f / x_307);
    let x_311 : f32 = u_xlat6.x;
    let x_313 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat6.x = (x_311 * x_313);
    let x_317 : f32 = u_xlat0.x;
    let x_319 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat0.x = (x_317 * x_319);
    let x_323 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_323), 1.0f);
    let x_329 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_329), 1.0f);
    let x_332 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_332);
    let x_334 : f32 = u_xlat8;
    let x_336 : f32 = u_xlat2.x;
    u_xlat2.x = (x_334 * x_336);
    let x_340 : f32 = u_xlat2.x;
    let x_342 : f32 = u_xlat2.x;
    u_xlat8 = (x_340 * x_342);
    let x_344 : f32 = u_xlat8;
    u_xlat3.x = ((x_344 * 0.0208351f) + -0.085133001f);
    let x_348 : f32 = u_xlat8;
    let x_350 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_348 * x_350) + 0.180141002f);
    let x_354 : f32 = u_xlat8;
    let x_356 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_354 * x_356) + -0.330299497f);
    let x_360 : f32 = u_xlat8;
    let x_362 : f32 = u_xlat3.x;
    u_xlat8 = ((x_360 * x_362) + 0.999866009f);
    let x_365 : f32 = u_xlat8;
    let x_367 : f32 = u_xlat2.x;
    u_xlat3.x = (x_365 * x_367);
    let x_372 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_372));
    let x_376 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_376 * -2.0f) + 1.570796371f);
    let x_380 : bool = u_xlatb9;
    if (x_380) {
      let x_385 : f32 = u_xlat3.x;
      x_381 = x_385;
    } else {
      x_381 = 0.0f;
    }
    let x_387 : f32 = x_381;
    u_xlat3.x = x_387;
    let x_390 : f32 = u_xlat2.x;
    let x_391 : f32 = u_xlat8;
    let x_394 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_390 * x_391) + x_394);
    let x_398 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_398, 1.0f);
    let x_403 : f32 = u_xlat0.x;
    let x_405 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_403 < -(x_405));
    let x_410 : bool = u_xlatb0.x;
    if (x_410) {
      let x_415 : f32 = u_xlat2.x;
      x_411 = -(x_415);
    } else {
      let x_419 : f32 = u_xlat2.x;
      x_411 = x_419;
    }
    let x_420 : f32 = x_411;
    u_xlat0.x = x_420;
    let x_423 : f32 = u_xlat6.x;
    let x_425 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_423 * x_425) + -1.0f);
    let x_429 : vec4<f32> = u_xlat0;
    let x_431 : vec4<f32> = u_xlat0;
    let x_434 : vec4<f32> = u_xlat1;
    let x_436 : vec2<f32> = ((vec2<f32>(x_429.z, x_429.w) * vec2<f32>(x_431.x, x_431.x)) + vec2<f32>(x_434.z, x_434.w));
    let x_437 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_436.x, x_436.y, x_437.z, x_437.w);
  }
  let x_449 : vec4<f32> = phase0_Input0_1;
  let x_451 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_449.x, x_449.y));
  u_xlat0.x = x_451.x;
  let x_459 : vec4<f32> = u_xlat1;
  let x_461 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_459.x, x_459.y));
  u_xlat1 = x_461;
  let x_462 : vec4<f32> = u_xlat0;
  let x_464 : vec4<f32> = u_xlat1;
  let x_466 : vec3<f32> = (vec3<f32>(x_462.x, x_462.x, x_462.x) * vec3<f32>(x_464.x, x_464.y, x_464.z));
  let x_467 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_466.x, x_466.y, x_466.z, x_467.w);
  let x_471 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_475 : vec4<f32> = u_xlat0;
  let x_481 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_484 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_475.x, x_475.y, x_475.w, x_475.y)) * vec4<f32>(x_481.x, x_481.x, x_481.x, x_481.x)) + vec4<f32>(x_484.x, x_484.y, x_484.x, x_484.y));
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_487, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_491 : vec4<f32> = u_xlat3;
  let x_494 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat3 = (x_491 * vec4<f32>(x_494, x_494, x_494, x_494));
  let x_502 : vec4<f32> = u_xlat3;
  let x_504 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_502.x, x_502.y));
  u_xlat4 = x_504;
  let x_508 : vec4<f32> = u_xlat3;
  let x_510 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_508.z, x_508.w));
  u_xlat3 = x_510;
  let x_511 : vec4<f32> = u_xlat3;
  let x_515 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_511 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_515);
  let x_517 : vec4<f32> = u_xlat0;
  let x_521 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_524 : vec2<f32> = u_xlat14;
  let x_525 : vec2<f32> = ((-(vec2<f32>(x_517.z, x_517.y)) * vec2<f32>(x_521.x, x_521.x)) + x_524);
  let x_526 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_525.x, x_525.y, x_526.z);
  let x_528 : vec3<f32> = u_xlat2;
  let x_532 : vec2<f32> = clamp(vec2<f32>(x_528.x, x_528.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_533 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_532.x, x_532.y, x_533.z);
  let x_535 : vec3<f32> = u_xlat2;
  let x_538 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_540 : vec2<f32> = (vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_538, x_538));
  let x_541 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_540.x, x_540.y, x_541.z);
  let x_546 : vec3<f32> = u_xlat2;
  let x_548 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_546.x, x_546.y));
  u_xlat4 = x_548;
  let x_549 : vec4<f32> = u_xlat3;
  let x_550 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_549 + x_550);
  let x_552 : vec4<f32> = u_xlat0;
  let x_555 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_558 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_552.z, x_552.w, x_552.x, x_552.w) * vec4<f32>(x_555.x, x_555.x, x_555.x, x_555.x)) + vec4<f32>(x_558.x, x_558.y, x_558.x, x_558.y));
  let x_561 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_561, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_565 : vec4<f32> = u_xlat4;
  let x_567 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_565 * vec4<f32>(x_567, x_567, x_567, x_567));
  let x_574 : vec4<f32> = u_xlat4;
  let x_576 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_574.x, x_574.y));
  u_xlat5 = x_576;
  let x_577 : vec4<f32> = u_xlat5;
  let x_579 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_577 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_579);
  let x_581 : vec2<f32> = u_xlat14;
  let x_582 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_581.x, x_581.y, x_582.z);
  let x_584 : vec3<f32> = u_xlat2;
  let x_588 : vec2<f32> = clamp(vec2<f32>(x_584.x, x_584.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_589 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_588.x, x_588.y, x_589.z);
  let x_591 : vec3<f32> = u_xlat2;
  let x_594 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_596 : vec2<f32> = (vec2<f32>(x_591.x, x_591.y) * vec2<f32>(x_594, x_594));
  let x_597 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_602 : vec3<f32> = u_xlat2;
  let x_604 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_602.x, x_602.y));
  u_xlat5 = x_604;
  let x_605 : vec4<f32> = u_xlat5;
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_605 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_609);
  let x_614 : vec4<f32> = u_xlat4;
  let x_616 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_614.z, x_614.w));
  u_xlat4 = x_616;
  let x_617 : vec4<f32> = u_xlat4;
  let x_619 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_617 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_619);
  let x_621 : vec4<f32> = u_xlat0;
  let x_624 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_627 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_621.z, x_621.y, x_621.w, x_621.y) * vec4<f32>(x_624.x, x_624.x, x_624.x, x_624.x)) + vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y));
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_630, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_634 * vec4<f32>(x_636, x_636, x_636, x_636));
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_642.x, x_642.y));
  u_xlat5 = x_644;
  let x_645 : vec4<f32> = u_xlat3;
  let x_646 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_645 + x_646);
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_651.z, x_651.w));
  u_xlat4 = x_653;
  let x_654 : vec4<f32> = u_xlat4;
  let x_656 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_654 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_656);
  let x_658 : vec4<f32> = u_xlat0;
  let x_661 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_664 : vec2<f32> = u_xlat14;
  let x_665 : vec2<f32> = ((vec2<f32>(x_658.x, x_658.y) * vec2<f32>(x_661.x, x_661.x)) + x_664);
  let x_666 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_668 : vec4<f32> = u_xlat0;
  let x_672 : vec2<f32> = clamp(vec2<f32>(x_668.x, x_668.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_673 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
  let x_675 : vec4<f32> = u_xlat0;
  let x_678 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_680 : vec2<f32> = (vec2<f32>(x_675.x, x_675.y) * vec2<f32>(x_678, x_678));
  let x_681 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_680.x, x_680.y, x_681.z, x_681.w);
  let x_686 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_686.x, x_686.y));
  u_xlat0 = x_688;
  let x_689 : vec4<f32> = u_xlat0;
  let x_690 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_689 + x_690);
  let x_692 : vec4<f32> = u_xlat0;
  let x_694 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_692 * vec4<f32>(x_694.y, x_694.y, x_694.y, x_694.y));
  let x_697 : vec2<f32> = u_xlat14;
  let x_700 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_704 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_706 : vec2<f32> = ((x_697 * vec2<f32>(x_700.x, x_700.y)) + vec2<f32>(x_704.z, x_704.w));
  let x_707 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_706.x, x_706.y, x_707.z);
  let x_714 : vec3<f32> = u_xlat2;
  let x_716 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_714.x, x_714.y));
  let x_717 : vec3<f32> = vec3<f32>(x_716.x, x_716.y, x_716.z);
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_720 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_724 : vec4<f32> = u_xlat3;
  let x_727 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * vec3<f32>(x_727.z, x_727.z, x_727.z));
  let x_730 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  u_xlat3.w = 0.0f;
  let x_733 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_733 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_736 : vec4<f32> = u_xlat0;
  let x_740 : vec3<f32> = x_32.x_Bloom_Color;
  let x_741 : vec3<f32> = (vec3<f32>(x_736.x, x_736.y, x_736.z) * x_740);
  let x_742 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_741.x, x_741.y, x_741.z, x_742.w);
  let x_745 : f32 = u_xlat0.w;
  u_xlat5.w = (x_745 * 0.0625f);
  let x_748 : vec4<f32> = u_xlat1;
  let x_749 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_748 + x_749);
  let x_751 : vec4<f32> = u_xlat3;
  let x_752 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_751 * x_752) + x_754);
  let x_759 : f32 = x_32.x_Vignette_Mode;
  u_xlatb1 = (x_759 < 0.5f);
  let x_761 : bool = u_xlatb1;
  if (x_761) {
    let x_764 : vec2<f32> = u_xlat14;
    let x_768 : vec2<f32> = x_32.x_Vignette_Center;
    let x_770 : vec2<f32> = (x_764 + -(x_768));
    let x_771 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
    let x_773 : vec4<f32> = u_xlat1;
    let x_778 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_780 : vec2<f32> = (abs(vec2<f32>(x_773.y, x_773.x)) * vec2<f32>(x_778.x, x_778.x));
    let x_781 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_781.x, x_780.x, x_780.y, x_781.w);
    let x_786 : f32 = x_32.x_ScreenParams.x;
    let x_788 : f32 = x_32.x_ScreenParams.y;
    u_xlat19 = (x_786 / x_788);
    let x_790 : f32 = u_xlat19;
    u_xlat19 = (x_790 + -1.0f);
    let x_793 : f32 = x_32.x_Vignette_Settings.w;
    let x_794 : f32 = u_xlat19;
    u_xlat19 = ((x_793 * x_794) + 1.0f);
    let x_797 : f32 = u_xlat19;
    let x_800 : f32 = u_xlat1.z;
    u_xlat1.x = (x_797 * x_800);
    let x_803 : vec4<f32> = u_xlat1;
    let x_804 : vec2<f32> = vec2<f32>(x_803.x, x_803.y);
    let x_805 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
    let x_807 : vec4<f32> = u_xlat1;
    let x_811 : vec2<f32> = clamp(vec2<f32>(x_807.x, x_807.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_812 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
    let x_814 : vec4<f32> = u_xlat1;
    let x_816 : vec2<f32> = log2(vec2<f32>(x_814.x, x_814.y));
    let x_817 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_816.x, x_816.y, x_817.z, x_817.w);
    let x_819 : vec4<f32> = u_xlat1;
    let x_822 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_824 : vec2<f32> = (vec2<f32>(x_819.x, x_819.y) * vec2<f32>(x_822.z, x_822.z));
    let x_825 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
    let x_827 : vec4<f32> = u_xlat1;
    let x_829 : vec2<f32> = exp2(vec2<f32>(x_827.x, x_827.y));
    let x_830 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_830.z, x_830.w);
    let x_832 : vec4<f32> = u_xlat1;
    let x_834 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_832.x, x_832.y), vec2<f32>(x_834.x, x_834.y));
    let x_839 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_839) + 1.0f);
    let x_844 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_844, 0.0f);
    let x_848 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_848);
    let x_852 : f32 = u_xlat1.x;
    let x_854 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat1.x = (x_852 * x_854);
    let x_858 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_858);
    let x_864 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_864) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_868 : vec4<f32> = u_xlat1;
    let x_870 : vec3<f32> = u_xlat7;
    let x_873 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_868.x, x_868.x, x_868.x) * x_870) + x_873);
    let x_875 : vec4<f32> = u_xlat0;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_875.x, x_875.y, x_875.z) * x_877);
    let x_880 : f32 = u_xlat0.w;
    u_xlat2.x = (x_880 + -1.0f);
    let x_884 : f32 = u_xlat1.x;
    let x_886 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_884 * x_886) + 1.0f);
  } else {
    let x_896 : vec2<f32> = u_xlat14;
    let x_897 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_896);
    u_xlat1.x = x_897.w;
    let x_901 : f32 = u_xlat1.x;
    u_xlat2.x = (x_901 * 0.077399381f);
    let x_906 : f32 = u_xlat1.x;
    u_xlat8 = (x_906 + 0.055f);
    let x_909 : f32 = u_xlat8;
    u_xlat8 = (x_909 * 0.947867334f);
    let x_912 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_912), 1.1920929e-07f);
    let x_916 : f32 = u_xlat8;
    u_xlat8 = log2(x_916);
    let x_918 : f32 = u_xlat8;
    u_xlat8 = (x_918 * 2.400000095f);
    let x_921 : f32 = u_xlat8;
    u_xlat8 = exp2(x_921);
    let x_925 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_925);
    let x_927 : bool = u_xlatb1;
    if (x_927) {
      let x_932 : f32 = u_xlat2.x;
      x_928 = x_932;
    } else {
      let x_934 : f32 = u_xlat8;
      x_928 = x_934;
    }
    let x_935 : f32 = x_928;
    u_xlat1.x = x_935;
    let x_938 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_938) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_941 : vec4<f32> = u_xlat1;
    let x_943 : vec3<f32> = u_xlat2;
    let x_946 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_941.x, x_941.x, x_941.x) * x_943) + x_946);
    let x_948 : vec4<f32> = u_xlat0;
    let x_950 : vec3<f32> = u_xlat2;
    let x_952 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * x_950) + -(vec3<f32>(x_952.x, x_952.y, x_952.z)));
    let x_958 : f32 = x_32.x_Vignette_Opacity;
    let x_960 : vec3<f32> = u_xlat2;
    let x_962 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_958, x_958, x_958) * x_960) + vec3<f32>(x_962.x, x_962.y, x_962.z));
    let x_966 : f32 = u_xlat0.w;
    u_xlat0.x = (x_966 + -1.0f);
    let x_970 : f32 = u_xlat1.x;
    let x_972 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_970 * x_972) + 1.0f);
  }
  let x_976 : vec4<f32> = phase0_Input0_1;
  let x_980 : vec4<f32> = x_32.x_Grain_Params2;
  let x_984 : vec4<f32> = x_32.x_Grain_Params2;
  let x_986 : vec2<f32> = ((vec2<f32>(x_976.z, x_976.w) * vec2<f32>(x_980.x, x_980.y)) + vec2<f32>(x_984.z, x_984.w));
  let x_987 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_986.x, x_986.y, x_987.z, x_987.w);
  let x_994 : vec4<f32> = u_xlat0;
  let x_996 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_994.x, x_994.y));
  let x_997 : vec3<f32> = vec3<f32>(x_996.x, x_996.y, x_996.z);
  let x_998 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec3<f32> = u_xlat7;
  u_xlat2 = x_1000;
  let x_1001 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_1001, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1006 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_1006, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1012 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1012);
  let x_1016 : f32 = x_32.x_Grain_Params1.x;
  let x_1017 : f32 = u_xlat18;
  u_xlat18 = ((x_1016 * -(x_1017)) + 1.0f);
  let x_1021 : vec4<f32> = u_xlat0;
  let x_1023 : vec3<f32> = u_xlat7;
  let x_1024 : vec3<f32> = (vec3<f32>(x_1021.x, x_1021.y, x_1021.z) * x_1023);
  let x_1025 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1030 : f32 = x_32.x_Grain_Params1.y;
  let x_1032 : f32 = x_32.x_Grain_Params1.y;
  let x_1034 : f32 = x_32.x_Grain_Params1.y;
  let x_1036 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) * vec3<f32>(x_1030, x_1032, x_1034));
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat0;
  let x_1041 : f32 = u_xlat18;
  let x_1044 : vec3<f32> = u_xlat7;
  let x_1045 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(x_1041, x_1041, x_1041)) + x_1044);
  let x_1046 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1048;
  let x_1049 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1049, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1053 : vec4<f32> = u_xlat3;
  let x_1057 : vec3<f32> = (vec3<f32>(x_1053.z, x_1053.x, x_1053.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1063 : vec3<f32> = max(vec3<f32>(x_1060.z, x_1060.x, x_1060.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1064 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1066 : vec4<f32> = u_xlat1;
  let x_1068 : vec3<f32> = log2(vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat1;
  let x_1075 : vec3<f32> = (vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1076 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec4<f32> = u_xlat1;
  let x_1080 : vec3<f32> = exp2(vec3<f32>(x_1078.x, x_1078.y, x_1078.z));
  let x_1081 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat1;
  let x_1090 : vec3<f32> = ((vec3<f32>(x_1083.x, x_1083.y, x_1083.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1091 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1090.x, x_1090.y, x_1090.z, x_1091.w);
  let x_1095 : vec4<f32> = u_xlat3;
  let x_1098 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1095.z, x_1095.x, x_1095.y, x_1095.z));
  u_xlatb2 = vec3<bool>(x_1098.x, x_1098.y, x_1098.z);
  let x_1101 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1101;
  let x_1103 : bool = u_xlatb2.x;
  if (x_1103) {
    let x_1108 : f32 = u_xlat0.x;
    x_1104 = x_1108;
  } else {
    let x_1111 : f32 = u_xlat1.x;
    x_1104 = x_1111;
  }
  let x_1112 : f32 = x_1104;
  hlslcc_movcTemp.x = x_1112;
  let x_1115 : bool = u_xlatb2.y;
  if (x_1115) {
    let x_1120 : f32 = u_xlat0.y;
    x_1116 = x_1120;
  } else {
    let x_1123 : f32 = u_xlat1.y;
    x_1116 = x_1123;
  }
  let x_1124 : f32 = x_1116;
  hlslcc_movcTemp.y = x_1124;
  let x_1127 : bool = u_xlatb2.z;
  if (x_1127) {
    let x_1132 : f32 = u_xlat0.z;
    x_1128 = x_1132;
  } else {
    let x_1135 : f32 = u_xlat1.z;
    x_1128 = x_1135;
  }
  let x_1136 : f32 = x_1128;
  hlslcc_movcTemp.z = x_1136;
  let x_1138 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1138;
  let x_1139 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = x_32.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(x_1143.z, x_1143.z, x_1143.z));
  let x_1147 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_1147);
  let x_1151 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_1154 : vec2<f32> = (vec2<f32>(x_1151.x, x_1151.y) * vec2<f32>(0.5f, 0.5f));
  let x_1155 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1154.x, x_1154.y, x_1155.z, x_1155.w);
  let x_1157 : vec3<f32> = u_xlat6;
  let x_1160 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_1163 : vec4<f32> = u_xlat1;
  let x_1165 : vec2<f32> = ((vec2<f32>(x_1157.y, x_1157.z) * vec2<f32>(x_1160.x, x_1160.y)) + vec2<f32>(x_1163.x, x_1163.y));
  let x_1166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1166.x, x_1165.x, x_1165.y, x_1166.w);
  let x_1169 : f32 = u_xlat6.x;
  let x_1171 : f32 = x_32.x_Lut2D_Params.y;
  let x_1174 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1169 * x_1171) + x_1174);
  let x_1182 : vec4<f32> = u_xlat1;
  let x_1184 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1182.x, x_1182.z));
  u_xlat2 = vec3<f32>(x_1184.x, x_1184.y, x_1184.z);
  let x_1187 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat3.x = x_1187;
  u_xlat3.y = 0.0f;
  let x_1191 : vec4<f32> = u_xlat1;
  let x_1193 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_1191.x, x_1191.z) + vec2<f32>(x_1193.x, x_1193.y));
  let x_1199 : vec2<f32> = u_xlat12;
  let x_1200 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1199);
  let x_1201 : vec3<f32> = vec3<f32>(x_1200.x, x_1200.y, x_1200.z);
  let x_1202 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1202.w);
  let x_1205 : f32 = u_xlat0.x;
  let x_1207 : f32 = x_32.x_Lut2D_Params.z;
  let x_1210 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1205 * x_1207) + -(x_1210));
  let x_1214 : vec3<f32> = u_xlat2;
  let x_1216 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(x_1214) + vec3<f32>(x_1216.x, x_1216.y, x_1216.z));
  let x_1219 : vec4<f32> = u_xlat0;
  let x_1221 : vec3<f32> = u_xlat6;
  let x_1223 : vec3<f32> = u_xlat2;
  let x_1224 : vec3<f32> = ((vec3<f32>(x_1219.x, x_1219.x, x_1219.x) * x_1221) + x_1223);
  let x_1225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec4<f32> = u_xlat0;
  let x_1230 : vec3<f32> = (vec3<f32>(x_1227.x, x_1227.y, x_1227.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1231 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1230.x, x_1230.y, x_1230.z, x_1231.w);
  let x_1233 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1233.x, x_1233.y, x_1233.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1237 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1237 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1240 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1240), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1243 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1243);
  let x_1245 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1245 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1248 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1248);
  let x_1251 : vec4<f32> = u_xlat0;
  let x_1253 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1251.x, x_1251.y, x_1251.z, x_1251.x));
  u_xlatb0 = vec3<bool>(x_1253.x, x_1253.y, x_1253.z);
  let x_1256 : bool = u_xlatb0.x;
  if (x_1256) {
    let x_1261 : f32 = u_xlat1.x;
    x_1257 = x_1261;
  } else {
    let x_1264 : f32 = u_xlat2.x;
    x_1257 = x_1264;
  }
  let x_1265 : f32 = x_1257;
  u_xlat0.x = x_1265;
  let x_1268 : bool = u_xlatb0.y;
  if (x_1268) {
    let x_1273 : f32 = u_xlat1.y;
    x_1269 = x_1273;
  } else {
    let x_1276 : f32 = u_xlat2.y;
    x_1269 = x_1276;
  }
  let x_1277 : f32 = x_1269;
  u_xlat0.y = x_1277;
  let x_1280 : bool = u_xlatb0.z;
  if (x_1280) {
    let x_1285 : f32 = u_xlat1.z;
    x_1281 = x_1285;
  } else {
    let x_1288 : f32 = u_xlat2.z;
    x_1281 = x_1288;
  }
  let x_1289 : f32 = x_1281;
  u_xlat0.z = x_1289;
  let x_1291 : vec4<f32> = phase0_Input0_1;
  let x_1295 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_1299 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_1301 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * vec2<f32>(x_1295.x, x_1295.y)) + vec2<f32>(x_1299.z, x_1299.w));
  let x_1302 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1302.w);
  let x_1309 : vec4<f32> = u_xlat1;
  let x_1311 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1309.x, x_1309.y));
  u_xlat18 = x_1311.w;
  let x_1313 : f32 = u_xlat18;
  u_xlat18 = ((x_1313 * 2.0f) + -1.0f);
  let x_1316 : f32 = u_xlat18;
  u_xlat1.x = ((x_1316 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1322 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1322, 0.0f, 1.0f);
  let x_1326 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1326 * 2.0f) + -1.0f);
  let x_1330 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1330)) + 1.0f);
  let x_1334 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1334);
  let x_1336 : f32 = u_xlat18;
  u_xlat18 = (-(x_1336) + 1.0f);
  let x_1339 : f32 = u_xlat18;
  let x_1341 : f32 = u_xlat1.x;
  u_xlat18 = (x_1339 * x_1341);
  let x_1343 : vec4<f32> = u_xlat0;
  let x_1345 : vec3<f32> = (vec3<f32>(x_1343.x, x_1343.y, x_1343.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1346 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1348 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1348.x, x_1348.y, x_1348.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1352 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1352);
  let x_1354 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1354 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1356 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1356);
  let x_1358 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1358 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1361 : vec4<f32> = u_xlat0;
  let x_1363 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1361.x, x_1361.y, x_1361.z, x_1361.x));
  u_xlatb0 = vec3<bool>(x_1363.x, x_1363.y, x_1363.z);
  let x_1366 : bool = u_xlatb0.x;
  if (x_1366) {
    let x_1371 : f32 = u_xlat1.x;
    x_1367 = x_1371;
  } else {
    let x_1374 : f32 = u_xlat2.x;
    x_1367 = x_1374;
  }
  let x_1375 : f32 = x_1367;
  u_xlat0.x = x_1375;
  let x_1378 : bool = u_xlatb0.y;
  if (x_1378) {
    let x_1383 : f32 = u_xlat1.y;
    x_1379 = x_1383;
  } else {
    let x_1386 : f32 = u_xlat2.y;
    x_1379 = x_1386;
  }
  let x_1387 : f32 = x_1379;
  u_xlat0.y = x_1387;
  let x_1390 : bool = u_xlatb0.z;
  if (x_1390) {
    let x_1395 : f32 = u_xlat1.z;
    x_1391 = x_1395;
  } else {
    let x_1398 : f32 = u_xlat2.z;
    x_1391 = x_1398;
  }
  let x_1399 : f32 = x_1391;
  u_xlat0.z = x_1399;
  let x_1401 : f32 = u_xlat18;
  let x_1406 : vec4<f32> = u_xlat0;
  let x_1408 : vec3<f32> = ((vec3<f32>(x_1401, x_1401, x_1401) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1406.x, x_1406.y, x_1406.z));
  let x_1409 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1408.x, x_1408.y, x_1408.z, x_1409.w);
  let x_1411 : vec4<f32> = u_xlat0;
  let x_1413 : vec3<f32> = (vec3<f32>(x_1411.x, x_1411.y, x_1411.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1414 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1413.x, x_1413.y, x_1413.z, x_1414.w);
  let x_1416 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1416.x, x_1416.y, x_1416.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1419 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1419 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1421 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1421), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1424 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1424);
  let x_1426 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1426 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1428 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1428);
  let x_1430 : vec4<f32> = u_xlat0;
  let x_1432 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1430.x, x_1430.y, x_1430.z, x_1430.x));
  u_xlatb0 = vec3<bool>(x_1432.x, x_1432.y, x_1432.z);
  let x_1437 : bool = u_xlatb0.x;
  if (x_1437) {
    let x_1442 : f32 = u_xlat1.x;
    x_1438 = x_1442;
  } else {
    let x_1445 : f32 = u_xlat2.x;
    x_1438 = x_1445;
  }
  let x_1446 : f32 = x_1438;
  SV_Target0.x = x_1446;
  let x_1450 : bool = u_xlatb0.y;
  if (x_1450) {
    let x_1455 : f32 = u_xlat1.y;
    x_1451 = x_1455;
  } else {
    let x_1458 : f32 = u_xlat2.y;
    x_1451 = x_1458;
  }
  let x_1459 : f32 = x_1451;
  SV_Target0.y = x_1459;
  let x_1462 : bool = u_xlatb0.z;
  if (x_1462) {
    let x_1467 : f32 = u_xlat1.z;
    x_1463 = x_1467;
  } else {
    let x_1470 : f32 = u_xlat2.z;
    x_1463 = x_1470;
  }
  let x_1471 : f32 = x_1463;
  SV_Target0.z = x_1471;
  let x_1474 : f32 = u_xlat3.w;
  SV_Target0.w = x_1474;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

