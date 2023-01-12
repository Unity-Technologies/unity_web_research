struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

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
  var u_xlat13 : f32;
  var x_933 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1039 : f32;
  var x_1051 : f32;
  var x_1063 : f32;
  var u_xlat12 : vec2<f32>;
  var x_1192 : f32;
  var x_1204 : f32;
  var x_1216 : f32;
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
    let x_878 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) * x_877);
    let x_879 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
    let x_882 : f32 = u_xlat0.w;
    u_xlat7.x = (x_882 + -1.0f);
    let x_886 : f32 = u_xlat1.x;
    let x_888 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_886 * x_888) + 1.0f);
  } else {
    let x_898 : vec2<f32> = u_xlat14;
    let x_899 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_898);
    u_xlat1.x = x_899.w;
    let x_903 : f32 = u_xlat1.x;
    u_xlat1.z = (x_903 + 0.055f);
    let x_907 : vec4<f32> = u_xlat1;
    let x_912 : vec2<f32> = (vec2<f32>(x_907.x, x_907.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_913 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_912.x, x_912.y, x_913.z);
    let x_917 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_917), 1.1920929e-07f);
    let x_921 : f32 = u_xlat13;
    u_xlat13 = log2(x_921);
    let x_923 : f32 = u_xlat13;
    u_xlat13 = (x_923 * 2.400000095f);
    let x_926 : f32 = u_xlat13;
    u_xlat13 = exp2(x_926);
    let x_930 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_930);
    let x_932 : bool = u_xlatb1;
    if (x_932) {
      let x_937 : f32 = u_xlat7.x;
      x_933 = x_937;
    } else {
      let x_939 : f32 = u_xlat13;
      x_933 = x_939;
    }
    let x_940 : f32 = x_933;
    u_xlat1.x = x_940;
    let x_943 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_943) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_946 : vec4<f32> = u_xlat1;
    let x_948 : vec3<f32> = u_xlat7;
    let x_951 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_946.x, x_946.x, x_946.x) * x_948) + x_951);
    let x_953 : vec4<f32> = u_xlat0;
    let x_955 : vec3<f32> = u_xlat7;
    let x_957 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_953.x, x_953.y, x_953.z) * x_955) + -(vec3<f32>(x_957.x, x_957.y, x_957.z)));
    let x_963 : f32 = x_32.x_Vignette_Opacity;
    let x_965 : vec3<f32> = u_xlat7;
    let x_967 : vec4<f32> = u_xlat0;
    let x_969 : vec3<f32> = ((vec3<f32>(x_963, x_963, x_963) * x_965) + vec3<f32>(x_967.x, x_967.y, x_967.z));
    let x_970 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_969.x, x_969.y, x_969.z, x_970.w);
    let x_973 : f32 = u_xlat0.w;
    u_xlat0.x = (x_973 + -1.0f);
    let x_977 : f32 = u_xlat1.x;
    let x_979 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_977 * x_979) + 1.0f);
  }
  let x_983 : vec4<f32> = u_xlat3;
  u_xlat3 = x_983;
  let x_984 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_984, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_988 : vec4<f32> = u_xlat3;
  let x_992 : vec3<f32> = (vec3<f32>(x_988.z, x_988.x, x_988.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_993 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec4<f32> = u_xlat3;
  let x_998 : vec3<f32> = max(vec3<f32>(x_995.z, x_995.x, x_995.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1003 : vec3<f32> = log2(vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat1;
  let x_1010 : vec3<f32> = (vec3<f32>(x_1006.x, x_1006.y, x_1006.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1011 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1015 : vec3<f32> = exp2(vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat1;
  let x_1025 : vec3<f32> = ((vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1030 : vec4<f32> = u_xlat3;
  let x_1033 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1030.z, x_1030.x, x_1030.y, x_1030.z));
  u_xlatb2 = vec3<bool>(x_1033.x, x_1033.y, x_1033.z);
  let x_1036 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1036;
  let x_1038 : bool = u_xlatb2.x;
  if (x_1038) {
    let x_1043 : f32 = u_xlat0.x;
    x_1039 = x_1043;
  } else {
    let x_1046 : f32 = u_xlat1.x;
    x_1039 = x_1046;
  }
  let x_1047 : f32 = x_1039;
  hlslcc_movcTemp.x = x_1047;
  let x_1050 : bool = u_xlatb2.y;
  if (x_1050) {
    let x_1055 : f32 = u_xlat0.y;
    x_1051 = x_1055;
  } else {
    let x_1058 : f32 = u_xlat1.y;
    x_1051 = x_1058;
  }
  let x_1059 : f32 = x_1051;
  hlslcc_movcTemp.y = x_1059;
  let x_1062 : bool = u_xlatb2.z;
  if (x_1062) {
    let x_1067 : f32 = u_xlat0.z;
    x_1063 = x_1067;
  } else {
    let x_1070 : f32 = u_xlat1.z;
    x_1063 = x_1070;
  }
  let x_1071 : f32 = x_1063;
  hlslcc_movcTemp.z = x_1071;
  let x_1073 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1073;
  let x_1074 : vec4<f32> = u_xlat0;
  let x_1078 : vec3<f32> = x_32.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_1074.x, x_1074.y, x_1074.z) * vec3<f32>(x_1078.z, x_1078.z, x_1078.z));
  let x_1082 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_1082);
  let x_1086 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_1089 : vec2<f32> = (vec2<f32>(x_1086.x, x_1086.y) * vec2<f32>(0.5f, 0.5f));
  let x_1090 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
  let x_1092 : vec3<f32> = u_xlat6;
  let x_1095 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_1098 : vec4<f32> = u_xlat1;
  let x_1100 : vec2<f32> = ((vec2<f32>(x_1092.y, x_1092.z) * vec2<f32>(x_1095.x, x_1095.y)) + vec2<f32>(x_1098.x, x_1098.y));
  let x_1101 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1101.x, x_1100.x, x_1100.y, x_1101.w);
  let x_1104 : f32 = u_xlat6.x;
  let x_1106 : f32 = x_32.x_Lut2D_Params.y;
  let x_1109 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1104 * x_1106) + x_1109);
  let x_1117 : vec4<f32> = u_xlat1;
  let x_1119 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1117.x, x_1117.z));
  u_xlat2 = vec3<f32>(x_1119.x, x_1119.y, x_1119.z);
  let x_1122 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat4.x = x_1122;
  u_xlat4.y = 0.0f;
  let x_1126 : vec4<f32> = u_xlat1;
  let x_1128 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec2<f32>(x_1126.x, x_1126.z) + vec2<f32>(x_1128.x, x_1128.y));
  let x_1134 : vec2<f32> = u_xlat12;
  let x_1135 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1134);
  let x_1136 : vec3<f32> = vec3<f32>(x_1135.x, x_1135.y, x_1135.z);
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1140 : f32 = u_xlat0.x;
  let x_1142 : f32 = x_32.x_Lut2D_Params.z;
  let x_1145 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1140 * x_1142) + -(x_1145));
  let x_1149 : vec3<f32> = u_xlat2;
  let x_1151 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(x_1149) + vec3<f32>(x_1151.x, x_1151.y, x_1151.z));
  let x_1154 : vec4<f32> = u_xlat0;
  let x_1156 : vec3<f32> = u_xlat6;
  let x_1158 : vec3<f32> = u_xlat2;
  let x_1159 : vec3<f32> = ((vec3<f32>(x_1154.x, x_1154.x, x_1154.x) * x_1156) + x_1158);
  let x_1160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : vec4<f32> = u_xlat0;
  let x_1165 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1166 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1165.x, x_1165.y, x_1165.z, x_1166.w);
  let x_1168 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1168.x, x_1168.y, x_1168.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1172 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1172 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1175 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1175), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1178 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1178);
  let x_1180 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1180 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1183 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1183);
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.x));
  u_xlatb0 = vec3<bool>(x_1188.x, x_1188.y, x_1188.z);
  let x_1191 : bool = u_xlatb0.x;
  if (x_1191) {
    let x_1196 : f32 = u_xlat1.x;
    x_1192 = x_1196;
  } else {
    let x_1199 : f32 = u_xlat2.x;
    x_1192 = x_1199;
  }
  let x_1200 : f32 = x_1192;
  u_xlat3.x = x_1200;
  let x_1203 : bool = u_xlatb0.y;
  if (x_1203) {
    let x_1208 : f32 = u_xlat1.y;
    x_1204 = x_1208;
  } else {
    let x_1211 : f32 = u_xlat2.y;
    x_1204 = x_1211;
  }
  let x_1212 : f32 = x_1204;
  u_xlat3.y = x_1212;
  let x_1215 : bool = u_xlatb0.z;
  if (x_1215) {
    let x_1220 : f32 = u_xlat1.z;
    x_1216 = x_1220;
  } else {
    let x_1223 : f32 = u_xlat2.z;
    x_1216 = x_1223;
  }
  let x_1224 : f32 = x_1216;
  u_xlat3.z = x_1224;
  let x_1228 : f32 = x_32.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1228);
  let x_1232 : bool = u_xlatb0.x;
  if (x_1232) {
    let x_1235 : vec4<f32> = u_xlat3;
    let x_1236 : vec3<f32> = vec3<f32>(x_1235.x, x_1235.y, x_1235.z);
    let x_1237 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1237.w);
    let x_1239 : vec4<f32> = u_xlat0;
    let x_1243 : vec3<f32> = clamp(vec3<f32>(x_1239.x, x_1239.y, x_1239.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1244 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1243.x, x_1243.y, x_1243.z, x_1244.w);
    let x_1246 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1246.x, x_1246.y, x_1246.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1256 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1256;
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

