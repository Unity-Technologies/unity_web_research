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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat18 : f32;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> u_xlat12 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_381 : f32;
  var x_411 : f32;
  var x_788 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_965 : f32;
  var x_977 : f32;
  var x_989 : f32;
  var x_1118 : f32;
  var x_1130 : f32;
  var x_1142 : f32;
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
    u_xlat7 = (vec3<f32>(x_735.x, x_735.y, x_735.z) * x_737);
    let x_740 : f32 = u_xlat0.w;
    u_xlat2.x = (x_740 + -1.0f);
    let x_744 : f32 = u_xlat1.x;
    let x_746 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_744 * x_746) + 1.0f);
  } else {
    let x_756 : vec2<f32> = u_xlat14;
    let x_757 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_756);
    u_xlat1.x = x_757.w;
    let x_761 : f32 = u_xlat1.x;
    u_xlat2.x = (x_761 * 0.077399381f);
    let x_766 : f32 = u_xlat1.x;
    u_xlat8 = (x_766 + 0.055f);
    let x_769 : f32 = u_xlat8;
    u_xlat8 = (x_769 * 0.947867334f);
    let x_772 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_772), 1.1920929e-07f);
    let x_776 : f32 = u_xlat8;
    u_xlat8 = log2(x_776);
    let x_778 : f32 = u_xlat8;
    u_xlat8 = (x_778 * 2.400000095f);
    let x_781 : f32 = u_xlat8;
    u_xlat8 = exp2(x_781);
    let x_785 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_785);
    let x_787 : bool = u_xlatb1;
    if (x_787) {
      let x_792 : f32 = u_xlat2.x;
      x_788 = x_792;
    } else {
      let x_794 : f32 = u_xlat8;
      x_788 = x_794;
    }
    let x_795 : f32 = x_788;
    u_xlat1.x = x_795;
    let x_798 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_798) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_801 : vec4<f32> = u_xlat1;
    let x_803 : vec3<f32> = u_xlat2;
    let x_806 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_801.x, x_801.x, x_801.x) * x_803) + x_806);
    let x_808 : vec4<f32> = u_xlat0;
    let x_810 : vec3<f32> = u_xlat2;
    let x_812 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_808.x, x_808.y, x_808.z) * x_810) + -(vec3<f32>(x_812.x, x_812.y, x_812.z)));
    let x_818 : f32 = x_31.x_Vignette_Opacity;
    let x_820 : vec3<f32> = u_xlat2;
    let x_822 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_818, x_818, x_818) * x_820) + vec3<f32>(x_822.x, x_822.y, x_822.z));
    let x_826 : f32 = u_xlat0.w;
    u_xlat0.x = (x_826 + -1.0f);
    let x_830 : f32 = u_xlat1.x;
    let x_832 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_830 * x_832) + 1.0f);
  }
  let x_836 : vec4<f32> = phase0_Input0_1;
  let x_840 : vec4<f32> = x_31.x_Grain_Params2;
  let x_844 : vec4<f32> = x_31.x_Grain_Params2;
  let x_846 : vec2<f32> = ((vec2<f32>(x_836.z, x_836.w) * vec2<f32>(x_840.x, x_840.y)) + vec2<f32>(x_844.z, x_844.w));
  let x_847 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_846.x, x_846.y, x_847.z, x_847.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_854.x, x_854.y));
  let x_857 : vec3<f32> = vec3<f32>(x_856.x, x_856.y, x_856.z);
  let x_858 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec3<f32> = u_xlat7;
  u_xlat2 = x_860;
  let x_861 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_861, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_866 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_866, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_872 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_872);
  let x_876 : f32 = x_31.x_Grain_Params1.x;
  let x_877 : f32 = u_xlat18;
  u_xlat18 = ((x_876 * -(x_877)) + 1.0f);
  let x_881 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = u_xlat7;
  let x_884 : vec3<f32> = (vec3<f32>(x_881.x, x_881.y, x_881.z) * x_883);
  let x_885 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_887 : vec4<f32> = u_xlat0;
  let x_890 : f32 = x_31.x_Grain_Params1.y;
  let x_892 : f32 = x_31.x_Grain_Params1.y;
  let x_894 : f32 = x_31.x_Grain_Params1.y;
  let x_896 : vec3<f32> = (vec3<f32>(x_887.x, x_887.y, x_887.z) * vec3<f32>(x_890, x_892, x_894));
  let x_897 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat0;
  let x_901 : f32 = u_xlat18;
  let x_904 : vec3<f32> = u_xlat7;
  let x_905 : vec3<f32> = ((vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901, x_901, x_901)) + x_904);
  let x_906 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat3 = x_908;
  let x_909 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_909, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_913 : vec4<f32> = u_xlat3;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.z, x_913.x, x_913.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat3;
  let x_923 : vec3<f32> = max(vec3<f32>(x_920.z, x_920.x, x_920.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_924 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat1;
  let x_928 : vec3<f32> = log2(vec3<f32>(x_926.x, x_926.y, x_926.z));
  let x_929 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat1;
  let x_935 : vec3<f32> = (vec3<f32>(x_931.x, x_931.y, x_931.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_936 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat1;
  let x_940 : vec3<f32> = exp2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat1;
  let x_950 : vec3<f32> = ((vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_951 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_955 : vec4<f32> = u_xlat3;
  let x_958 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_955.z, x_955.x, x_955.y, x_955.z));
  u_xlatb2 = vec3<bool>(x_958.x, x_958.y, x_958.z);
  let x_962 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_962;
  let x_964 : bool = u_xlatb2.x;
  if (x_964) {
    let x_969 : f32 = u_xlat0.x;
    x_965 = x_969;
  } else {
    let x_972 : f32 = u_xlat1.x;
    x_965 = x_972;
  }
  let x_973 : f32 = x_965;
  hlslcc_movcTemp.x = x_973;
  let x_976 : bool = u_xlatb2.y;
  if (x_976) {
    let x_981 : f32 = u_xlat0.y;
    x_977 = x_981;
  } else {
    let x_984 : f32 = u_xlat1.y;
    x_977 = x_984;
  }
  let x_985 : f32 = x_977;
  hlslcc_movcTemp.y = x_985;
  let x_988 : bool = u_xlatb2.z;
  if (x_988) {
    let x_993 : f32 = u_xlat0.z;
    x_989 = x_993;
  } else {
    let x_996 : f32 = u_xlat1.z;
    x_989 = x_996;
  }
  let x_997 : f32 = x_989;
  hlslcc_movcTemp.z = x_997;
  let x_999 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_999;
  let x_1000 : vec4<f32> = u_xlat0;
  let x_1004 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_1000.x, x_1000.y, x_1000.z) * vec3<f32>(x_1004.z, x_1004.z, x_1004.z));
  let x_1008 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_1008);
  let x_1012 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_1015 : vec2<f32> = (vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(0.5f, 0.5f));
  let x_1016 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1015.x, x_1015.y, x_1016.z, x_1016.w);
  let x_1018 : vec3<f32> = u_xlat6;
  let x_1021 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_1024 : vec4<f32> = u_xlat1;
  let x_1026 : vec2<f32> = ((vec2<f32>(x_1018.y, x_1018.z) * vec2<f32>(x_1021.x, x_1021.y)) + vec2<f32>(x_1024.x, x_1024.y));
  let x_1027 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1027.x, x_1026.x, x_1026.y, x_1027.w);
  let x_1030 : f32 = u_xlat6.x;
  let x_1032 : f32 = x_31.x_Lut2D_Params.y;
  let x_1035 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1030 * x_1032) + x_1035);
  let x_1043 : vec4<f32> = u_xlat1;
  let x_1045 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1043.x, x_1043.z));
  u_xlat2 = vec3<f32>(x_1045.x, x_1045.y, x_1045.z);
  let x_1048 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_1048;
  u_xlat4.y = 0.0f;
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1054 : vec4<f32> = u_xlat4;
  u_xlat12 = (vec2<f32>(x_1052.x, x_1052.z) + vec2<f32>(x_1054.x, x_1054.y));
  let x_1060 : vec2<f32> = u_xlat12;
  let x_1061 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1060);
  let x_1062 : vec3<f32> = vec3<f32>(x_1061.x, x_1061.y, x_1061.z);
  let x_1063 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1066 : f32 = u_xlat0.x;
  let x_1068 : f32 = x_31.x_Lut2D_Params.z;
  let x_1071 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1066 * x_1068) + -(x_1071));
  let x_1075 : vec3<f32> = u_xlat2;
  let x_1077 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(x_1075) + vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1082 : vec3<f32> = u_xlat6;
  let x_1084 : vec3<f32> = u_xlat2;
  let x_1085 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.x, x_1080.x) * x_1082) + x_1084);
  let x_1086 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1091 : vec3<f32> = (vec3<f32>(x_1088.x, x_1088.y, x_1088.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1092 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1098 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1098 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1101 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1101), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1104 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1104);
  let x_1106 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1106 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1109 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1109);
  let x_1112 : vec4<f32> = u_xlat0;
  let x_1114 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.x));
  u_xlatb0 = vec3<bool>(x_1114.x, x_1114.y, x_1114.z);
  let x_1117 : bool = u_xlatb0.x;
  if (x_1117) {
    let x_1122 : f32 = u_xlat1.x;
    x_1118 = x_1122;
  } else {
    let x_1125 : f32 = u_xlat2.x;
    x_1118 = x_1125;
  }
  let x_1126 : f32 = x_1118;
  u_xlat3.x = x_1126;
  let x_1129 : bool = u_xlatb0.y;
  if (x_1129) {
    let x_1134 : f32 = u_xlat1.y;
    x_1130 = x_1134;
  } else {
    let x_1137 : f32 = u_xlat2.y;
    x_1130 = x_1137;
  }
  let x_1138 : f32 = x_1130;
  u_xlat3.y = x_1138;
  let x_1141 : bool = u_xlatb0.z;
  if (x_1141) {
    let x_1146 : f32 = u_xlat1.z;
    x_1142 = x_1146;
  } else {
    let x_1149 : f32 = u_xlat2.z;
    x_1142 = x_1149;
  }
  let x_1150 : f32 = x_1142;
  u_xlat3.z = x_1150;
  let x_1154 : f32 = x_31.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1154);
  let x_1158 : bool = u_xlatb0.x;
  if (x_1158) {
    let x_1161 : vec4<f32> = u_xlat3;
    let x_1162 : vec3<f32> = vec3<f32>(x_1161.x, x_1161.y, x_1161.z);
    let x_1163 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1163.w);
    let x_1165 : vec4<f32> = u_xlat0;
    let x_1169 : vec3<f32> = clamp(vec3<f32>(x_1165.x, x_1165.y, x_1165.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1170 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
    let x_1172 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1172.x, x_1172.y, x_1172.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1178 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1178;
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

