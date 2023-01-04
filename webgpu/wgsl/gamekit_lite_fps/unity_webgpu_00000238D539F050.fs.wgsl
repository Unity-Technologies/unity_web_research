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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> u_xlat13 : f32;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat18 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_224 : f32;
  var x_381 : f32;
  var x_411 : f32;
  var x_801 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_908 : f32;
  var x_920 : f32;
  var x_932 : f32;
  var x_1061 : f32;
  var x_1073 : f32;
  var x_1085 : f32;
  var x_1173 : f32;
  var x_1185 : f32;
  var x_1197 : f32;
  var x_1244 : f32;
  var x_1257 : f32;
  var x_1269 : f32;
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
  let x_583 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_584 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
  let x_586 : vec4<f32> = u_xlat3;
  let x_589 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_591 : vec3<f32> = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_589.z, x_589.z, x_589.z));
  let x_592 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_594 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_598 : vec4<f32> = u_xlat0;
  let x_602 : vec3<f32> = x_31.x_Bloom_Color;
  let x_603 : vec3<f32> = (vec3<f32>(x_598.x, x_598.y, x_598.z) * x_602);
  let x_604 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_607 : f32 = u_xlat0.w;
  u_xlat5.w = (x_607 * 0.25f);
  let x_610 : vec4<f32> = u_xlat1;
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_610 + x_611);
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : vec4<f32> = u_xlat3;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) * vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  u_xlat1.w = 0.0f;
  let x_621 : vec4<f32> = u_xlat0;
  let x_622 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_621 + x_622);
  let x_627 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_627 < 0.5f);
  let x_629 : bool = u_xlatb1;
  if (x_629) {
    let x_632 : vec2<f32> = u_xlat14;
    let x_636 : vec2<f32> = x_31.x_Vignette_Center;
    let x_638 : vec2<f32> = (x_632 + -(x_636));
    let x_639 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
    let x_641 : vec4<f32> = u_xlat1;
    let x_646 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_648 : vec2<f32> = (abs(vec2<f32>(x_641.y, x_641.x)) * vec2<f32>(x_646.x, x_646.x));
    let x_649 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_649.x, x_648.x, x_648.y, x_649.w);
    let x_654 : f32 = x_31.x_ScreenParams.x;
    let x_656 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_654 / x_656);
    let x_658 : f32 = u_xlat19;
    u_xlat19 = (x_658 + -1.0f);
    let x_661 : f32 = x_31.x_Vignette_Settings.w;
    let x_662 : f32 = u_xlat19;
    u_xlat19 = ((x_661 * x_662) + 1.0f);
    let x_665 : f32 = u_xlat19;
    let x_668 : f32 = u_xlat1.z;
    u_xlat1.x = (x_665 * x_668);
    let x_671 : vec4<f32> = u_xlat1;
    let x_672 : vec2<f32> = vec2<f32>(x_671.x, x_671.y);
    let x_673 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
    let x_675 : vec4<f32> = u_xlat1;
    let x_679 : vec2<f32> = clamp(vec2<f32>(x_675.x, x_675.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_680 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
    let x_682 : vec4<f32> = u_xlat1;
    let x_684 : vec2<f32> = log2(vec2<f32>(x_682.x, x_682.y));
    let x_685 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_684.x, x_684.y, x_685.z, x_685.w);
    let x_687 : vec4<f32> = u_xlat1;
    let x_690 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_692 : vec2<f32> = (vec2<f32>(x_687.x, x_687.y) * vec2<f32>(x_690.z, x_690.z));
    let x_693 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
    let x_695 : vec4<f32> = u_xlat1;
    let x_697 : vec2<f32> = exp2(vec2<f32>(x_695.x, x_695.y));
    let x_698 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
    let x_700 : vec4<f32> = u_xlat1;
    let x_702 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_700.x, x_700.y), vec2<f32>(x_702.x, x_702.y));
    let x_707 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_707) + 1.0f);
    let x_712 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_712, 0.0f);
    let x_716 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_716);
    let x_720 : f32 = u_xlat1.x;
    let x_722 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_720 * x_722);
    let x_726 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_726);
    let x_732 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_732) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_736 : vec4<f32> = u_xlat1;
    let x_738 : vec3<f32> = u_xlat7;
    let x_741 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_736.x, x_736.x, x_736.x) * x_738) + x_741);
    let x_743 : vec4<f32> = u_xlat0;
    let x_745 : vec3<f32> = u_xlat7;
    let x_746 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) * x_745);
    let x_747 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_746.x, x_746.y, x_746.z, x_747.w);
    let x_750 : f32 = u_xlat0.w;
    u_xlat7.x = (x_750 + -1.0f);
    let x_754 : f32 = u_xlat1.x;
    let x_756 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_754 * x_756) + 1.0f);
  } else {
    let x_766 : vec2<f32> = u_xlat14;
    let x_767 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_766);
    u_xlat1.x = x_767.w;
    let x_771 : f32 = u_xlat1.x;
    u_xlat1.z = (x_771 + 0.055f);
    let x_775 : vec4<f32> = u_xlat1;
    let x_780 : vec2<f32> = (vec2<f32>(x_775.x, x_775.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_781 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_780.x, x_780.y, x_781.z);
    let x_785 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_785), 1.1920929e-07f);
    let x_789 : f32 = u_xlat13;
    u_xlat13 = log2(x_789);
    let x_791 : f32 = u_xlat13;
    u_xlat13 = (x_791 * 2.400000095f);
    let x_794 : f32 = u_xlat13;
    u_xlat13 = exp2(x_794);
    let x_798 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_798);
    let x_800 : bool = u_xlatb1;
    if (x_800) {
      let x_805 : f32 = u_xlat7.x;
      x_801 = x_805;
    } else {
      let x_807 : f32 = u_xlat13;
      x_801 = x_807;
    }
    let x_808 : f32 = x_801;
    u_xlat1.x = x_808;
    let x_811 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_811) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_814 : vec4<f32> = u_xlat1;
    let x_816 : vec3<f32> = u_xlat7;
    let x_819 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_814.x, x_814.x, x_814.x) * x_816) + x_819);
    let x_821 : vec4<f32> = u_xlat0;
    let x_823 : vec3<f32> = u_xlat7;
    let x_825 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * x_823) + -(vec3<f32>(x_825.x, x_825.y, x_825.z)));
    let x_831 : f32 = x_31.x_Vignette_Opacity;
    let x_833 : vec3<f32> = u_xlat7;
    let x_835 : vec4<f32> = u_xlat0;
    let x_837 : vec3<f32> = ((vec3<f32>(x_831, x_831, x_831) * x_833) + vec3<f32>(x_835.x, x_835.y, x_835.z));
    let x_838 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
    let x_841 : f32 = u_xlat0.w;
    u_xlat0.x = (x_841 + -1.0f);
    let x_845 : f32 = u_xlat1.x;
    let x_847 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_845 * x_847) + 1.0f);
  }
  let x_851 : vec4<f32> = u_xlat3;
  u_xlat3 = x_851;
  let x_852 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_852, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_856 : vec4<f32> = u_xlat3;
  let x_860 : vec3<f32> = (vec3<f32>(x_856.z, x_856.x, x_856.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat3;
  let x_866 : vec3<f32> = max(vec3<f32>(x_863.z, x_863.x, x_863.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_867 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat1;
  let x_871 : vec3<f32> = log2(vec3<f32>(x_869.x, x_869.y, x_869.z));
  let x_872 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat1;
  let x_878 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat1;
  let x_883 : vec3<f32> = exp2(vec3<f32>(x_881.x, x_881.y, x_881.z));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat1;
  let x_893 : vec3<f32> = ((vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_894 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
  let x_898 : vec4<f32> = u_xlat3;
  let x_901 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_898.z, x_898.x, x_898.y, x_898.z));
  u_xlatb2 = vec3<bool>(x_901.x, x_901.y, x_901.z);
  let x_905 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_905;
  let x_907 : bool = u_xlatb2.x;
  if (x_907) {
    let x_912 : f32 = u_xlat0.x;
    x_908 = x_912;
  } else {
    let x_915 : f32 = u_xlat1.x;
    x_908 = x_915;
  }
  let x_916 : f32 = x_908;
  hlslcc_movcTemp.x = x_916;
  let x_919 : bool = u_xlatb2.y;
  if (x_919) {
    let x_924 : f32 = u_xlat0.y;
    x_920 = x_924;
  } else {
    let x_927 : f32 = u_xlat1.y;
    x_920 = x_927;
  }
  let x_928 : f32 = x_920;
  hlslcc_movcTemp.y = x_928;
  let x_931 : bool = u_xlatb2.z;
  if (x_931) {
    let x_936 : f32 = u_xlat0.z;
    x_932 = x_936;
  } else {
    let x_939 : f32 = u_xlat1.z;
    x_932 = x_939;
  }
  let x_940 : f32 = x_932;
  hlslcc_movcTemp.z = x_940;
  let x_942 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_942;
  let x_943 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(x_947.z, x_947.z, x_947.z));
  let x_951 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_951);
  let x_955 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_958 : vec2<f32> = (vec2<f32>(x_955.x, x_955.y) * vec2<f32>(0.5f, 0.5f));
  let x_959 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_958.x, x_958.y, x_959.z, x_959.w);
  let x_961 : vec3<f32> = u_xlat6;
  let x_964 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_967 : vec4<f32> = u_xlat1;
  let x_969 : vec2<f32> = ((vec2<f32>(x_961.y, x_961.z) * vec2<f32>(x_964.x, x_964.y)) + vec2<f32>(x_967.x, x_967.y));
  let x_970 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_970.x, x_969.x, x_969.y, x_970.w);
  let x_973 : f32 = u_xlat6.x;
  let x_975 : f32 = x_31.x_Lut2D_Params.y;
  let x_978 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_973 * x_975) + x_978);
  let x_986 : vec4<f32> = u_xlat1;
  let x_988 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_986.x, x_986.z));
  u_xlat2 = vec3<f32>(x_988.x, x_988.y, x_988.z);
  let x_991 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_991;
  u_xlat3.y = 0.0f;
  let x_995 : vec4<f32> = u_xlat1;
  let x_997 : vec4<f32> = u_xlat3;
  u_xlat12 = (vec2<f32>(x_995.x, x_995.z) + vec2<f32>(x_997.x, x_997.y));
  let x_1003 : vec2<f32> = u_xlat12;
  let x_1004 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1003);
  let x_1005 : vec3<f32> = vec3<f32>(x_1004.x, x_1004.y, x_1004.z);
  let x_1006 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = u_xlat0.x;
  let x_1011 : f32 = x_31.x_Lut2D_Params.z;
  let x_1014 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1009 * x_1011) + -(x_1014));
  let x_1018 : vec3<f32> = u_xlat2;
  let x_1020 : vec4<f32> = u_xlat1;
  u_xlat6 = (-(x_1018) + vec3<f32>(x_1020.x, x_1020.y, x_1020.z));
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1025 : vec3<f32> = u_xlat6;
  let x_1027 : vec3<f32> = u_xlat2;
  let x_1028 : vec3<f32> = ((vec3<f32>(x_1023.x, x_1023.x, x_1023.x) * x_1025) + x_1027);
  let x_1029 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1034 : vec3<f32> = (vec3<f32>(x_1031.x, x_1031.y, x_1031.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1037.x, x_1037.y, x_1037.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1041 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1041 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1044 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1044), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1047 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1047);
  let x_1049 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1049 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1052 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1052);
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1057 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1055.x, x_1055.y, x_1055.z, x_1055.x));
  u_xlatb0 = vec3<bool>(x_1057.x, x_1057.y, x_1057.z);
  let x_1060 : bool = u_xlatb0.x;
  if (x_1060) {
    let x_1065 : f32 = u_xlat1.x;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat2.x;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  u_xlat0.x = x_1069;
  let x_1072 : bool = u_xlatb0.y;
  if (x_1072) {
    let x_1077 : f32 = u_xlat1.y;
    x_1073 = x_1077;
  } else {
    let x_1080 : f32 = u_xlat2.y;
    x_1073 = x_1080;
  }
  let x_1081 : f32 = x_1073;
  u_xlat0.y = x_1081;
  let x_1084 : bool = u_xlatb0.z;
  if (x_1084) {
    let x_1089 : f32 = u_xlat1.z;
    x_1085 = x_1089;
  } else {
    let x_1092 : f32 = u_xlat2.z;
    x_1085 = x_1092;
  }
  let x_1093 : f32 = x_1085;
  u_xlat0.z = x_1093;
  let x_1095 : vec4<f32> = phase0_Input0_1;
  let x_1099 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1103 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1105 : vec2<f32> = ((vec2<f32>(x_1095.x, x_1095.y) * vec2<f32>(x_1099.x, x_1099.y)) + vec2<f32>(x_1103.z, x_1103.w));
  let x_1106 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
  let x_1114 : vec4<f32> = u_xlat1;
  let x_1116 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1114.x, x_1114.y));
  u_xlat18 = x_1116.w;
  let x_1118 : f32 = u_xlat18;
  u_xlat18 = ((x_1118 * 2.0f) + -1.0f);
  let x_1122 : f32 = u_xlat18;
  u_xlat1.x = ((x_1122 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1128 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1128, 0.0f, 1.0f);
  let x_1132 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1132 * 2.0f) + -1.0f);
  let x_1136 : f32 = u_xlat18;
  u_xlat18 = (-(abs(x_1136)) + 1.0f);
  let x_1140 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1140);
  let x_1142 : f32 = u_xlat18;
  u_xlat18 = (-(x_1142) + 1.0f);
  let x_1145 : f32 = u_xlat18;
  let x_1147 : f32 = u_xlat1.x;
  u_xlat18 = (x_1145 * x_1147);
  let x_1149 : vec4<f32> = u_xlat0;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1152 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1154.x, x_1154.y, x_1154.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1158 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1158);
  let x_1160 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1160 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1162 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1162);
  let x_1164 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1164 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1167 : vec4<f32> = u_xlat0;
  let x_1169 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.x));
  u_xlatb0 = vec3<bool>(x_1169.x, x_1169.y, x_1169.z);
  let x_1172 : bool = u_xlatb0.x;
  if (x_1172) {
    let x_1177 : f32 = u_xlat1.x;
    x_1173 = x_1177;
  } else {
    let x_1180 : f32 = u_xlat2.x;
    x_1173 = x_1180;
  }
  let x_1181 : f32 = x_1173;
  u_xlat0.x = x_1181;
  let x_1184 : bool = u_xlatb0.y;
  if (x_1184) {
    let x_1189 : f32 = u_xlat1.y;
    x_1185 = x_1189;
  } else {
    let x_1192 : f32 = u_xlat2.y;
    x_1185 = x_1192;
  }
  let x_1193 : f32 = x_1185;
  u_xlat0.y = x_1193;
  let x_1196 : bool = u_xlatb0.z;
  if (x_1196) {
    let x_1201 : f32 = u_xlat1.z;
    x_1197 = x_1201;
  } else {
    let x_1204 : f32 = u_xlat2.z;
    x_1197 = x_1204;
  }
  let x_1205 : f32 = x_1197;
  u_xlat0.z = x_1205;
  let x_1207 : f32 = u_xlat18;
  let x_1212 : vec4<f32> = u_xlat0;
  let x_1214 : vec3<f32> = ((vec3<f32>(x_1207, x_1207, x_1207) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
  let x_1215 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
  let x_1217 : vec4<f32> = u_xlat0;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1217.x, x_1217.y, x_1217.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1222.x, x_1222.y, x_1222.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1225 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1225 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1227 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1227), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1230 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1230);
  let x_1232 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1232 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1234 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1234);
  let x_1236 : vec4<f32> = u_xlat0;
  let x_1238 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1236.x, x_1236.y, x_1236.z, x_1236.x));
  u_xlatb0 = vec3<bool>(x_1238.x, x_1238.y, x_1238.z);
  let x_1243 : bool = u_xlatb0.x;
  if (x_1243) {
    let x_1248 : f32 = u_xlat1.x;
    x_1244 = x_1248;
  } else {
    let x_1251 : f32 = u_xlat2.x;
    x_1244 = x_1251;
  }
  let x_1252 : f32 = x_1244;
  SV_Target0.x = x_1252;
  let x_1256 : bool = u_xlatb0.y;
  if (x_1256) {
    let x_1261 : f32 = u_xlat1.y;
    x_1257 = x_1261;
  } else {
    let x_1264 : f32 = u_xlat2.y;
    x_1257 = x_1264;
  }
  let x_1265 : f32 = x_1257;
  SV_Target0.y = x_1265;
  let x_1268 : bool = u_xlatb0.z;
  if (x_1268) {
    let x_1273 : f32 = u_xlat1.z;
    x_1269 = x_1273;
  } else {
    let x_1276 : f32 = u_xlat2.z;
    x_1269 = x_1276;
  }
  let x_1277 : f32 = x_1269;
  SV_Target0.z = x_1277;
  let x_1280 : f32 = u_xlat3.w;
  SV_Target0.w = x_1280;
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

