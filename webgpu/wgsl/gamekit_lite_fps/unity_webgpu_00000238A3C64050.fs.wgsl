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

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb8 : bool;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat20 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat12 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_381 : f32;
  var x_411 : f32;
  var x_793 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_900 : f32;
  var x_912 : f32;
  var x_924 : f32;
  var x_1053 : f32;
  var x_1065 : f32;
  var x_1077 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_15 : vec2<f32> = vs_TEXCOORD1;
  phase0_Input0_1 = vec4<f32>(x_13.x, x_13.y, x_15.x, x_15.y);
  let x_22 : vec4<f32> = phase0_Input0_1;
  u_xlat0 = (x_22 + vec4<f32>(-0.5f, -0.5f, -0.5f, -0.5f));
  let x_27 : vec4<f32> = u_xlat0;
  let x_36 : vec4<f32> = x_31.x_Distortion_Amount;
  u_xlat1 = ((x_27 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + vec4<f32>(0.5f, 0.5f, 0.5f, 0.5f));
  let x_42 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_31.x_Distortion_Amount;
  let x_49 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = ((x_42 * vec4<f32>(x_44.z, x_44.z, x_44.z, x_44.z)) + -(vec4<f32>(x_49.x, x_49.y, x_49.x, x_49.y)));
  let x_53 : vec4<f32> = u_xlat0;
  let x_55 : vec4<f32> = x_31.x_Distortion_CenterScale;
  u_xlat0 = (x_53 * vec4<f32>(x_55.z, x_55.w, x_55.z, x_55.w));
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_70);
  let x_80 : f32 = x_31.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_80);
  let x_82 : bool = u_xlatb8;
  if (x_82) {
    let x_87 : vec3<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_95);
    let x_100 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_100);
    let x_104 : f32 = u_xlat3.x;
    let x_106 : f32 = u_xlat4.x;
    u_xlat14.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_113);
    let x_116 : f32 = u_xlat14.x;
    let x_117 : f32 = u_xlat20;
    u_xlat14.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat14;
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + vec2<f32>(x_127.x, x_127.y));
  } else {
    let x_132 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_132);
    let x_136 : f32 = u_xlat3.x;
    let x_138 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_136 * x_138);
    let x_142 : f32 = u_xlat2.x;
    let x_144 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_157);
    let x_159 : f32 = u_xlat15;
    let x_160 : f32 = u_xlat9;
    u_xlat9 = (x_159 * x_160);
    let x_162 : f32 = u_xlat9;
    let x_163 : f32 = u_xlat9;
    u_xlat15 = (x_162 * x_163);
    let x_166 : f32 = u_xlat15;
    u_xlat21 = ((x_166 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat15;
    let x_172 : f32 = u_xlat21;
    u_xlat21 = ((x_171 * x_172) + 0.180141002f);
    let x_176 : f32 = u_xlat15;
    let x_177 : f32 = u_xlat21;
    u_xlat21 = ((x_176 * x_177) + -0.330299497f);
    let x_181 : f32 = u_xlat15;
    let x_182 : f32 = u_xlat21;
    u_xlat15 = ((x_181 * x_182) + 0.999866009f);
    let x_186 : f32 = u_xlat15;
    let x_187 : f32 = u_xlat9;
    u_xlat21 = (x_186 * x_187);
    let x_191 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat21;
    u_xlat21 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb4;
    let x_200 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_200, x_199);
    let x_202 : f32 = u_xlat9;
    let x_203 : f32 = u_xlat15;
    let x_205 : f32 = u_xlat21;
    u_xlat9 = ((x_202 * x_203) + x_205);
    let x_208 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_208, 1.0f);
    let x_215 : f32 = u_xlat2.x;
    let x_217 : f32 = u_xlat2.x;
    u_xlatb2.x = (x_215 < -(x_217));
    let x_222 : bool = u_xlatb2.x;
    if (x_222) {
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
    let x_264 : vec4<f32> = x_31.x_Distortion_Amount;
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
    let x_313 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat6.x = (x_311 * x_313);
    let x_317 : f32 = u_xlat0.x;
    let x_319 : f32 = x_31.x_Distortion_Amount.y;
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
  let x_471 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_477 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_477 * 0.5f);
  let x_480 : vec4<f32> = u_xlat0;
  let x_482 : vec3<f32> = u_xlat2;
  let x_485 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_480.x, x_480.y, x_480.z, x_480.y) * vec4<f32>(x_482.x, x_482.x, x_482.x, x_482.x)) + vec4<f32>(x_485.x, x_485.y, x_485.x, x_485.y));
  let x_488 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_488, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_492 * vec4<f32>(x_495, x_495, x_495, x_495));
  let x_503 : vec4<f32> = u_xlat3;
  let x_505 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_503.x, x_503.y));
  u_xlat4 = x_505;
  let x_509 : vec4<f32> = u_xlat3;
  let x_511 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_509.z, x_509.w));
  u_xlat3 = x_511;
  let x_512 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_512 + x_513);
  let x_515 : vec4<f32> = u_xlat0;
  let x_517 : vec3<f32> = u_xlat2;
  let x_520 : vec2<f32> = u_xlat14;
  u_xlat0 = ((vec4<f32>(x_515.x, x_515.w, x_515.z, x_515.w) * vec4<f32>(x_517.x, x_517.x, x_517.x, x_517.x)) + vec4<f32>(x_520.x, x_520.y, x_520.x, x_520.y));
  let x_523 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_523, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_527 : vec4<f32> = u_xlat0;
  let x_529 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_527 * vec4<f32>(x_529, x_529, x_529, x_529));
  let x_535 : vec4<f32> = u_xlat0;
  let x_537 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_535.x, x_535.y));
  u_xlat4 = x_537;
  let x_538 : vec4<f32> = u_xlat3;
  let x_539 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_538 + x_539);
  let x_544 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_544.z, x_544.w));
  u_xlat0 = x_546;
  let x_547 : vec4<f32> = u_xlat0;
  let x_548 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_547 + x_548);
  let x_550 : vec4<f32> = u_xlat0;
  let x_553 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_550 * vec4<f32>(x_553.y, x_553.y, x_553.y, x_553.y));
  let x_556 : vec2<f32> = u_xlat14;
  let x_559 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_563 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_565 : vec2<f32> = ((x_556 * vec2<f32>(x_559.x, x_559.y)) + vec2<f32>(x_563.z, x_563.w));
  let x_566 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_565.x, x_565.y, x_566.z);
  let x_573 : vec3<f32> = u_xlat2;
  let x_575 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_573.x, x_573.y));
  let x_576 : vec3<f32> = vec3<f32>(x_575.x, x_575.y, x_575.z);
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
  let x_579 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_579 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_583 : vec4<f32> = u_xlat3;
  let x_586 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_588 : vec3<f32> = (vec3<f32>(x_583.x, x_583.y, x_583.z) * vec3<f32>(x_586.z, x_586.z, x_586.z));
  let x_589 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  u_xlat3.w = 0.0f;
  let x_592 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_592 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_596 : vec4<f32> = u_xlat0;
  let x_600 : vec3<f32> = x_31.x_Bloom_Color;
  let x_601 : vec3<f32> = (vec3<f32>(x_596.x, x_596.y, x_596.z) * x_600);
  let x_602 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_601.x, x_601.y, x_601.z, x_602.w);
  let x_605 : f32 = u_xlat0.w;
  u_xlat5.w = (x_605 * 0.25f);
  let x_608 : vec4<f32> = u_xlat1;
  let x_609 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_608 + x_609);
  let x_611 : vec4<f32> = u_xlat3;
  let x_612 : vec4<f32> = u_xlat4;
  let x_614 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_611 * x_612) + x_614);
  let x_619 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_619 < 0.5f);
  let x_621 : bool = u_xlatb1;
  if (x_621) {
    let x_624 : vec2<f32> = u_xlat14;
    let x_628 : vec2<f32> = x_31.x_Vignette_Center;
    let x_630 : vec2<f32> = (x_624 + -(x_628));
    let x_631 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
    let x_633 : vec4<f32> = u_xlat1;
    let x_638 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_640 : vec2<f32> = (abs(vec2<f32>(x_633.y, x_633.x)) * vec2<f32>(x_638.x, x_638.x));
    let x_641 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_641.x, x_640.x, x_640.y, x_641.w);
    let x_646 : f32 = x_31.x_ScreenParams.x;
    let x_648 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_646 / x_648);
    let x_650 : f32 = u_xlat19;
    u_xlat19 = (x_650 + -1.0f);
    let x_653 : f32 = x_31.x_Vignette_Settings.w;
    let x_654 : f32 = u_xlat19;
    u_xlat19 = ((x_653 * x_654) + 1.0f);
    let x_657 : f32 = u_xlat19;
    let x_660 : f32 = u_xlat1.z;
    u_xlat1.x = (x_657 * x_660);
    let x_663 : vec4<f32> = u_xlat1;
    let x_664 : vec2<f32> = vec2<f32>(x_663.x, x_663.y);
    let x_665 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat1;
    let x_671 : vec2<f32> = clamp(vec2<f32>(x_667.x, x_667.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_672 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
    let x_674 : vec4<f32> = u_xlat1;
    let x_676 : vec2<f32> = log2(vec2<f32>(x_674.x, x_674.y));
    let x_677 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
    let x_679 : vec4<f32> = u_xlat1;
    let x_682 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_684 : vec2<f32> = (vec2<f32>(x_679.x, x_679.y) * vec2<f32>(x_682.z, x_682.z));
    let x_685 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat1;
    let x_689 : vec2<f32> = exp2(vec2<f32>(x_687.x, x_687.y));
    let x_690 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_689.x, x_689.y, x_690.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat1;
    let x_694 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_692.x, x_692.y), vec2<f32>(x_694.x, x_694.y));
    let x_699 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_699) + 1.0f);
    let x_704 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_704, 0.0f);
    let x_708 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_708);
    let x_712 : f32 = u_xlat1.x;
    let x_714 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_712 * x_714);
    let x_718 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_718);
    let x_724 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_724) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_728 : vec4<f32> = u_xlat1;
    let x_730 : vec3<f32> = u_xlat7;
    let x_733 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_728.x, x_728.x, x_728.x) * x_730) + x_733);
    let x_735 : vec4<f32> = u_xlat0;
    let x_737 : vec3<f32> = u_xlat7;
    let x_738 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * x_737);
    let x_739 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
    let x_742 : f32 = u_xlat0.w;
    u_xlat7.x = (x_742 + -1.0f);
    let x_746 : f32 = u_xlat1.x;
    let x_748 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_746 * x_748) + 1.0f);
  } else {
    let x_758 : vec2<f32> = u_xlat14;
    let x_759 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_758);
    u_xlat1.x = x_759.w;
    let x_763 : f32 = u_xlat1.x;
    u_xlat1.z = (x_763 + 0.055f);
    let x_767 : vec4<f32> = u_xlat1;
    let x_772 : vec2<f32> = (vec2<f32>(x_767.x, x_767.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_773 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_772.x, x_772.y, x_773.z);
    let x_777 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_777), 1.1920929e-07f);
    let x_781 : f32 = u_xlat13;
    u_xlat13 = log2(x_781);
    let x_783 : f32 = u_xlat13;
    u_xlat13 = (x_783 * 2.400000095f);
    let x_786 : f32 = u_xlat13;
    u_xlat13 = exp2(x_786);
    let x_790 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_790);
    let x_792 : bool = u_xlatb1;
    if (x_792) {
      let x_797 : f32 = u_xlat7.x;
      x_793 = x_797;
    } else {
      let x_799 : f32 = u_xlat13;
      x_793 = x_799;
    }
    let x_800 : f32 = x_793;
    u_xlat1.x = x_800;
    let x_803 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_803) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_806 : vec4<f32> = u_xlat1;
    let x_808 : vec3<f32> = u_xlat7;
    let x_811 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_806.x, x_806.x, x_806.x) * x_808) + x_811);
    let x_813 : vec4<f32> = u_xlat0;
    let x_815 : vec3<f32> = u_xlat7;
    let x_817 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * x_815) + -(vec3<f32>(x_817.x, x_817.y, x_817.z)));
    let x_823 : f32 = x_31.x_Vignette_Opacity;
    let x_825 : vec3<f32> = u_xlat7;
    let x_827 : vec4<f32> = u_xlat0;
    let x_829 : vec3<f32> = ((vec3<f32>(x_823, x_823, x_823) * x_825) + vec3<f32>(x_827.x, x_827.y, x_827.z));
    let x_830 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
    let x_833 : f32 = u_xlat0.w;
    u_xlat0.x = (x_833 + -1.0f);
    let x_837 : f32 = u_xlat1.x;
    let x_839 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_837 * x_839) + 1.0f);
  }
  let x_843 : vec4<f32> = u_xlat3;
  u_xlat3 = x_843;
  let x_844 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_844, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_848 : vec4<f32> = u_xlat3;
  let x_852 : vec3<f32> = (vec3<f32>(x_848.z, x_848.x, x_848.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_853 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat3;
  let x_858 : vec3<f32> = max(vec3<f32>(x_855.z, x_855.x, x_855.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_859 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat1;
  let x_863 : vec3<f32> = log2(vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat1;
  let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_871 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat1;
  let x_875 : vec3<f32> = exp2(vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = ((vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_886 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_890 : vec4<f32> = u_xlat3;
  let x_893 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_890.z, x_890.x, x_890.y, x_890.z));
  u_xlatb2 = vec3<bool>(x_893.x, x_893.y, x_893.z);
  let x_897 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_897;
  let x_899 : bool = u_xlatb2.x;
  if (x_899) {
    let x_904 : f32 = u_xlat0.x;
    x_900 = x_904;
  } else {
    let x_907 : f32 = u_xlat1.x;
    x_900 = x_907;
  }
  let x_908 : f32 = x_900;
  hlslcc_movcTemp.x = x_908;
  let x_911 : bool = u_xlatb2.y;
  if (x_911) {
    let x_916 : f32 = u_xlat0.y;
    x_912 = x_916;
  } else {
    let x_919 : f32 = u_xlat1.y;
    x_912 = x_919;
  }
  let x_920 : f32 = x_912;
  hlslcc_movcTemp.y = x_920;
  let x_923 : bool = u_xlatb2.z;
  if (x_923) {
    let x_928 : f32 = u_xlat0.z;
    x_924 = x_928;
  } else {
    let x_931 : f32 = u_xlat1.z;
    x_924 = x_931;
  }
  let x_932 : f32 = x_924;
  hlslcc_movcTemp.z = x_932;
  let x_934 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_934;
  let x_935 : vec4<f32> = u_xlat0;
  let x_939 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_935.x, x_935.y, x_935.z) * vec3<f32>(x_939.z, x_939.z, x_939.z));
  let x_943 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_943);
  let x_947 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_950 : vec2<f32> = (vec2<f32>(x_947.x, x_947.y) * vec2<f32>(0.5f, 0.5f));
  let x_951 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_950.x, x_950.y, x_951.z, x_951.w);
  let x_953 : vec3<f32> = u_xlat6;
  let x_956 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : vec2<f32> = ((vec2<f32>(x_953.y, x_953.z) * vec2<f32>(x_956.x, x_956.y)) + vec2<f32>(x_959.x, x_959.y));
  let x_962 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_962.x, x_961.x, x_961.y, x_962.w);
  let x_965 : f32 = u_xlat6.x;
  let x_967 : f32 = x_31.x_Lut2D_Params.y;
  let x_970 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_965 * x_967) + x_970);
  let x_978 : vec4<f32> = u_xlat1;
  let x_980 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_978.x, x_978.z));
  u_xlat2 = vec3<f32>(x_980.x, x_980.y, x_980.z);
  let x_983 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_983;
  u_xlat4.y = 0.0f;
  let x_987 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec2<f32>(x_987.x, x_987.z) + vec2<f32>(x_989.x, x_989.y));
  let x_995 : vec2<f32> = u_xlat12;
  let x_996 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_995);
  let x_997 : vec3<f32> = vec3<f32>(x_996.x, x_996.y, x_996.z);
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1001 : f32 = u_xlat0.x;
  let x_1003 : f32 = x_31.x_Lut2D_Params.z;
  let x_1006 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1001 * x_1003) + -(x_1006));
  let x_1010 : vec3<f32> = u_xlat2;
  let x_1012 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(x_1010) + vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat0;
  let x_1017 : vec3<f32> = u_xlat6;
  let x_1019 : vec3<f32> = u_xlat2;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1015.x, x_1015.x, x_1015.x) * x_1017) + x_1019);
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1026 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1027 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1029 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1029.x, x_1029.y, x_1029.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1033 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1033 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1036 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1036), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1039 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1039);
  let x_1041 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1041 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1044 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1044);
  let x_1047 : vec4<f32> = u_xlat0;
  let x_1049 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1047.x));
  u_xlatb0 = vec3<bool>(x_1049.x, x_1049.y, x_1049.z);
  let x_1052 : bool = u_xlatb0.x;
  if (x_1052) {
    let x_1057 : f32 = u_xlat1.x;
    x_1053 = x_1057;
  } else {
    let x_1060 : f32 = u_xlat2.x;
    x_1053 = x_1060;
  }
  let x_1061 : f32 = x_1053;
  u_xlat3.x = x_1061;
  let x_1064 : bool = u_xlatb0.y;
  if (x_1064) {
    let x_1069 : f32 = u_xlat1.y;
    x_1065 = x_1069;
  } else {
    let x_1072 : f32 = u_xlat2.y;
    x_1065 = x_1072;
  }
  let x_1073 : f32 = x_1065;
  u_xlat3.y = x_1073;
  let x_1076 : bool = u_xlatb0.z;
  if (x_1076) {
    let x_1081 : f32 = u_xlat1.z;
    x_1077 = x_1081;
  } else {
    let x_1084 : f32 = u_xlat2.z;
    x_1077 = x_1084;
  }
  let x_1085 : f32 = x_1077;
  u_xlat3.z = x_1085;
  let x_1089 : f32 = x_31.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1089);
  let x_1093 : bool = u_xlatb0.x;
  if (x_1093) {
    let x_1096 : vec4<f32> = u_xlat3;
    let x_1097 : vec3<f32> = vec3<f32>(x_1096.x, x_1096.y, x_1096.z);
    let x_1098 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1100 : vec4<f32> = u_xlat0;
    let x_1104 : vec3<f32> = clamp(vec3<f32>(x_1100.x, x_1100.y, x_1100.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1105 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1104.x, x_1104.y, x_1104.z, x_1105.w);
    let x_1107 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1107.x, x_1107.y, x_1107.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1117 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1117;
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

