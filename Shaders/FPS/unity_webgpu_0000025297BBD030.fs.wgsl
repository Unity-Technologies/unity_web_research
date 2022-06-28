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
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
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

var<private> u_xlatb2 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

var<private> u_xlat18 : f32;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_403 : f32;
  var x_919 : f32;
  var x_1278 : f32;
  var x_1290 : f32;
  var x_1302 : f32;
  var x_1354 : f32;
  var x_1367 : f32;
  var x_1379 : f32;
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
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2 = (x_213 < -(x_215));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
      let x_223 : f32 = u_xlat9;
      x_220 = -(x_223);
    } else {
      let x_226 : f32 = u_xlat9;
      x_220 = x_226;
    }
    let x_227 : f32 = x_220;
    u_xlat2.x = x_227;
    let x_230 : f32 = u_xlat3.x;
    let x_232 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_230 * x_232) + -1.0f);
    let x_236 : vec4<f32> = u_xlat0;
    let x_238 : vec3<f32> = u_xlat2;
    let x_241 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_236.x, x_236.y) * vec2<f32>(x_238.x, x_238.x)) + vec2<f32>(x_241.x, x_241.y));
  }
  let x_244 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_244.z, x_244.w), vec2<f32>(x_246.z, x_246.w));
  let x_251 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_251);
  let x_254 : bool = u_xlatb8;
  if (x_254) {
    let x_257 : vec4<f32> = u_xlat0;
    let x_260 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_262 : vec2<f32> = (vec2<f32>(x_257.x, x_257.x) * vec2<f32>(x_260.x, x_260.y));
    let x_263 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_263.z, x_263.w);
    let x_266 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_266);
    let x_270 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_270);
    let x_275 : f32 = u_xlat1.x;
    let x_277 : f32 = u_xlat2.x;
    u_xlat6 = (x_275 / x_277);
    let x_280 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_280);
    let x_283 : f32 = u_xlat6;
    let x_285 : f32 = u_xlat1.x;
    u_xlat6 = ((x_283 * x_285) + -1.0f);
    let x_288 : vec4<f32> = u_xlat0;
    let x_290 : f32 = u_xlat6;
    let x_293 : vec4<f32> = u_xlat1;
    let x_295 : vec2<f32> = ((vec2<f32>(x_288.z, x_288.w) * vec2<f32>(x_290, x_290)) + vec2<f32>(x_293.z, x_293.w));
    let x_296 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_295.x, x_295.y, x_296.z, x_296.w);
  } else {
    let x_300 : f32 = u_xlat0.x;
    u_xlat6 = (1.0f / x_300);
    let x_302 : f32 = u_xlat6;
    let x_304 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat6 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_313), 1.0f);
    let x_319 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_319), 1.0f);
    let x_322 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_322);
    let x_324 : f32 = u_xlat8;
    let x_326 : f32 = u_xlat2.x;
    u_xlat2.x = (x_324 * x_326);
    let x_330 : f32 = u_xlat2.x;
    let x_332 : f32 = u_xlat2.x;
    u_xlat8 = (x_330 * x_332);
    let x_334 : f32 = u_xlat8;
    u_xlat3.x = ((x_334 * 0.0208351f) + -0.085133001f);
    let x_338 : f32 = u_xlat8;
    let x_340 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_338 * x_340) + 0.180141002f);
    let x_344 : f32 = u_xlat8;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + -0.330299497f);
    let x_350 : f32 = u_xlat8;
    let x_352 : f32 = u_xlat3.x;
    u_xlat8 = ((x_350 * x_352) + 0.999866009f);
    let x_355 : f32 = u_xlat8;
    let x_357 : f32 = u_xlat2.x;
    u_xlat3.x = (x_355 * x_357);
    let x_362 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_362));
    let x_366 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_366 * -2.0f) + 1.570796371f);
    let x_370 : bool = u_xlatb9;
    if (x_370) {
      let x_375 : f32 = u_xlat3.x;
      x_371 = x_375;
    } else {
      x_371 = 0.0f;
    }
    let x_377 : f32 = x_371;
    u_xlat3.x = x_377;
    let x_380 : f32 = u_xlat2.x;
    let x_381 : f32 = u_xlat8;
    let x_384 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_380 * x_381) + x_384);
    let x_388 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_388, 1.0f);
    let x_395 : f32 = u_xlat0.x;
    let x_397 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_395 < -(x_397));
    let x_402 : bool = u_xlatb0.x;
    if (x_402) {
      let x_407 : f32 = u_xlat2.x;
      x_403 = -(x_407);
    } else {
      let x_411 : f32 = u_xlat2.x;
      x_403 = x_411;
    }
    let x_412 : f32 = x_403;
    u_xlat0.x = x_412;
    let x_414 : f32 = u_xlat6;
    let x_416 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_414 * x_416) + -1.0f);
    let x_420 : vec4<f32> = u_xlat0;
    let x_422 : vec4<f32> = u_xlat0;
    let x_425 : vec4<f32> = u_xlat1;
    let x_427 : vec2<f32> = ((vec2<f32>(x_420.z, x_420.w) * vec2<f32>(x_422.x, x_422.x)) + vec2<f32>(x_425.z, x_425.w));
    let x_428 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_427.x, x_427.y, x_428.z, x_428.w);
  }
  let x_440 : vec4<f32> = phase0_Input0_1;
  let x_442 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_440.x, x_440.y));
  u_xlat0.x = x_442.x;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_450.x, x_450.y));
  u_xlat1 = x_452;
  let x_453 : vec4<f32> = u_xlat0;
  let x_455 : vec4<f32> = u_xlat1;
  let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.x, x_453.x) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_462 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_462.x, x_462.y, x_462.x, x_462.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_466 : vec4<f32> = u_xlat0;
  let x_472 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_475 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_466.x, x_466.y, x_466.w, x_466.y)) * vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.x)) + vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y));
  let x_478 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_478, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_482 : vec4<f32> = u_xlat3;
  let x_485 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_482 * vec4<f32>(x_485, x_485, x_485, x_485));
  let x_493 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_493.x, x_493.y));
  u_xlat4 = x_495;
  let x_499 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_499.z, x_499.w));
  u_xlat3 = x_501;
  let x_502 : vec4<f32> = u_xlat3;
  let x_506 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_502 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_506);
  let x_508 : vec4<f32> = u_xlat0;
  let x_512 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_515 : vec2<f32> = u_xlat14;
  let x_516 : vec2<f32> = ((-(vec2<f32>(x_508.z, x_508.y)) * vec2<f32>(x_512.x, x_512.x)) + x_515);
  let x_517 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_516.x, x_516.y, x_517.z);
  let x_519 : vec3<f32> = u_xlat2;
  let x_523 : vec2<f32> = clamp(vec2<f32>(x_519.x, x_519.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_524 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_523.x, x_523.y, x_524.z);
  let x_526 : vec3<f32> = u_xlat2;
  let x_529 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_531 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(x_529, x_529));
  let x_532 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_531.x, x_531.y, x_532.z);
  let x_537 : vec3<f32> = u_xlat2;
  let x_539 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_537.x, x_537.y));
  u_xlat4 = x_539;
  let x_540 : vec4<f32> = u_xlat3;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_540 + x_541);
  let x_543 : vec4<f32> = u_xlat0;
  let x_546 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_549 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_543.z, x_543.w, x_543.x, x_543.w) * vec4<f32>(x_546.x, x_546.x, x_546.x, x_546.x)) + vec4<f32>(x_549.x, x_549.y, x_549.x, x_549.y));
  let x_552 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_552, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_556 : vec4<f32> = u_xlat4;
  let x_558 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_556 * vec4<f32>(x_558, x_558, x_558, x_558));
  let x_565 : vec4<f32> = u_xlat4;
  let x_567 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_565.x, x_565.y));
  u_xlat5 = x_567;
  let x_568 : vec4<f32> = u_xlat5;
  let x_570 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_568 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_570);
  let x_572 : vec2<f32> = u_xlat14;
  let x_573 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_572.x, x_572.y, x_573.z);
  let x_575 : vec3<f32> = u_xlat2;
  let x_579 : vec2<f32> = clamp(vec2<f32>(x_575.x, x_575.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_580 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_579.x, x_579.y, x_580.z);
  let x_582 : vec3<f32> = u_xlat2;
  let x_585 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_587 : vec2<f32> = (vec2<f32>(x_582.x, x_582.y) * vec2<f32>(x_585, x_585));
  let x_588 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_587.x, x_587.y, x_588.z);
  let x_593 : vec3<f32> = u_xlat2;
  let x_595 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_593.x, x_593.y));
  u_xlat5 = x_595;
  let x_596 : vec4<f32> = u_xlat5;
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_596 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_600);
  let x_605 : vec4<f32> = u_xlat4;
  let x_607 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_605.z, x_605.w));
  u_xlat4 = x_607;
  let x_608 : vec4<f32> = u_xlat4;
  let x_610 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_608 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_610);
  let x_612 : vec4<f32> = u_xlat0;
  let x_615 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_618 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_612.z, x_612.y, x_612.w, x_612.y) * vec4<f32>(x_615.x, x_615.x, x_615.x, x_615.x)) + vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y));
  let x_621 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_621, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_625 : vec4<f32> = u_xlat4;
  let x_627 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_625 * vec4<f32>(x_627, x_627, x_627, x_627));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_633.x, x_633.y));
  u_xlat5 = x_635;
  let x_636 : vec4<f32> = u_xlat3;
  let x_637 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_636 + x_637);
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_642.z, x_642.w));
  u_xlat4 = x_644;
  let x_645 : vec4<f32> = u_xlat4;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_645 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_647);
  let x_649 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_655 : vec2<f32> = u_xlat14;
  let x_656 : vec2<f32> = ((vec2<f32>(x_649.x, x_649.y) * vec2<f32>(x_652.x, x_652.x)) + x_655);
  let x_657 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat0;
  let x_663 : vec2<f32> = clamp(vec2<f32>(x_659.x, x_659.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_669 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_671 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669, x_669));
  let x_672 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
  let x_677 : vec4<f32> = u_xlat0;
  let x_679 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_677.x, x_677.y));
  u_xlat0 = x_679;
  let x_680 : vec4<f32> = u_xlat0;
  let x_681 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_680 + x_681);
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_683 * vec4<f32>(x_685.y, x_685.y, x_685.y, x_685.y));
  let x_688 : vec2<f32> = u_xlat14;
  let x_691 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_695 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_697 : vec2<f32> = ((x_688 * vec2<f32>(x_691.x, x_691.y)) + vec2<f32>(x_695.z, x_695.w));
  let x_698 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_697.x, x_697.y, x_698.z);
  let x_705 : vec3<f32> = u_xlat2;
  let x_707 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_705.x, x_705.y));
  let x_708 : vec3<f32> = vec3<f32>(x_707.x, x_707.y, x_707.z);
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_711 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_715 : vec4<f32> = u_xlat3;
  let x_718 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_720 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_718.z, x_718.z, x_718.z));
  let x_721 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  u_xlat3.w = 0.0f;
  let x_724 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_724 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_727 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = x_31.x_Bloom_Color;
  let x_732 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * x_731);
  let x_733 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
  let x_736 : f32 = u_xlat0.w;
  u_xlat5.w = (x_736 * 0.0625f);
  let x_739 : vec4<f32> = u_xlat1;
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_739 + x_740);
  let x_742 : vec4<f32> = u_xlat3;
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_742 * x_743) + x_745);
  let x_750 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_750 < 0.5f);
  let x_752 : bool = u_xlatb1;
  if (x_752) {
    let x_755 : vec2<f32> = u_xlat14;
    let x_759 : vec2<f32> = x_31.x_Vignette_Center;
    let x_761 : vec2<f32> = (x_755 + -(x_759));
    let x_762 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
    let x_764 : vec4<f32> = u_xlat1;
    let x_769 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_771 : vec2<f32> = (abs(vec2<f32>(x_764.y, x_764.x)) * vec2<f32>(x_769.x, x_769.x));
    let x_772 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_772.x, x_771.x, x_771.y, x_772.w);
    let x_777 : f32 = x_31.x_ScreenParams.x;
    let x_779 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_777 / x_779);
    let x_781 : f32 = u_xlat19;
    u_xlat19 = (x_781 + -1.0f);
    let x_784 : f32 = x_31.x_Vignette_Settings.w;
    let x_785 : f32 = u_xlat19;
    u_xlat19 = ((x_784 * x_785) + 1.0f);
    let x_788 : f32 = u_xlat19;
    let x_791 : f32 = u_xlat1.z;
    u_xlat1.x = (x_788 * x_791);
    let x_794 : vec4<f32> = u_xlat1;
    let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
    let x_796 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
    let x_798 : vec4<f32> = u_xlat1;
    let x_802 : vec2<f32> = clamp(vec2<f32>(x_798.x, x_798.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_803 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
    let x_805 : vec4<f32> = u_xlat1;
    let x_807 : vec2<f32> = log2(vec2<f32>(x_805.x, x_805.y));
    let x_808 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
    let x_810 : vec4<f32> = u_xlat1;
    let x_813 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_815 : vec2<f32> = (vec2<f32>(x_810.x, x_810.y) * vec2<f32>(x_813.z, x_813.z));
    let x_816 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
    let x_818 : vec4<f32> = u_xlat1;
    let x_820 : vec2<f32> = exp2(vec2<f32>(x_818.x, x_818.y));
    let x_821 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
    let x_823 : vec4<f32> = u_xlat1;
    let x_825 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_823.x, x_823.y), vec2<f32>(x_825.x, x_825.y));
    let x_830 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_830) + 1.0f);
    let x_835 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_835, 0.0f);
    let x_839 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_839);
    let x_843 : f32 = u_xlat1.x;
    let x_845 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_843 * x_845);
    let x_849 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_849);
    let x_855 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_855) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_859 : vec4<f32> = u_xlat1;
    let x_861 : vec3<f32> = u_xlat7;
    let x_864 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_859.x, x_859.x, x_859.x) * x_861) + x_864);
    let x_866 : vec4<f32> = u_xlat0;
    let x_868 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_866.x, x_866.y, x_866.z) * x_868);
    let x_871 : f32 = u_xlat0.w;
    u_xlat2.x = (x_871 + -1.0f);
    let x_875 : f32 = u_xlat1.x;
    let x_877 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_875 * x_877) + 1.0f);
  } else {
    let x_887 : vec2<f32> = u_xlat14;
    let x_888 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_887);
    u_xlat1.x = x_888.w;
    let x_892 : f32 = u_xlat1.x;
    u_xlat2.x = (x_892 * 0.077399381f);
    let x_897 : f32 = u_xlat1.x;
    u_xlat8 = (x_897 + 0.055f);
    let x_900 : f32 = u_xlat8;
    u_xlat8 = (x_900 * 0.947867334f);
    let x_903 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_903), 1.1920929e-07f);
    let x_907 : f32 = u_xlat8;
    u_xlat8 = log2(x_907);
    let x_909 : f32 = u_xlat8;
    u_xlat8 = (x_909 * 2.400000095f);
    let x_912 : f32 = u_xlat8;
    u_xlat8 = exp2(x_912);
    let x_916 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_916);
    let x_918 : bool = u_xlatb1;
    if (x_918) {
      let x_923 : f32 = u_xlat2.x;
      x_919 = x_923;
    } else {
      let x_925 : f32 = u_xlat8;
      x_919 = x_925;
    }
    let x_926 : f32 = x_919;
    u_xlat1.x = x_926;
    let x_929 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_929) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_932 : vec4<f32> = u_xlat1;
    let x_934 : vec3<f32> = u_xlat2;
    let x_937 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_932.x, x_932.x, x_932.x) * x_934) + x_937);
    let x_939 : vec4<f32> = u_xlat0;
    let x_941 : vec3<f32> = u_xlat2;
    let x_943 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_939.x, x_939.y, x_939.z) * x_941) + -(vec3<f32>(x_943.x, x_943.y, x_943.z)));
    let x_949 : f32 = x_31.x_Vignette_Opacity;
    let x_951 : vec3<f32> = u_xlat2;
    let x_953 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_949, x_949, x_949) * x_951) + vec3<f32>(x_953.x, x_953.y, x_953.z));
    let x_957 : f32 = u_xlat0.w;
    u_xlat0.x = (x_957 + -1.0f);
    let x_961 : f32 = u_xlat1.x;
    let x_963 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_961 * x_963) + 1.0f);
  }
  let x_967 : vec4<f32> = phase0_Input0_1;
  let x_971 : vec4<f32> = x_31.x_Grain_Params2;
  let x_975 : vec4<f32> = x_31.x_Grain_Params2;
  let x_977 : vec2<f32> = ((vec2<f32>(x_967.z, x_967.w) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_975.z, x_975.w));
  let x_978 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_977.x, x_977.y, x_978.z, x_978.w);
  let x_985 : vec4<f32> = u_xlat0;
  let x_987 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_985.x, x_985.y));
  let x_988 : vec3<f32> = vec3<f32>(x_987.x, x_987.y, x_987.z);
  let x_989 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec3<f32> = u_xlat7;
  u_xlat2 = x_991;
  let x_992 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_992, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_997 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_997, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1003 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1003);
  let x_1007 : f32 = x_31.x_Grain_Params1.x;
  let x_1008 : f32 = u_xlat18;
  u_xlat18 = ((x_1007 * -(x_1008)) + 1.0f);
  let x_1012 : vec4<f32> = u_xlat0;
  let x_1014 : vec3<f32> = u_xlat7;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1012.x, x_1012.y, x_1012.z) * x_1014);
  let x_1016 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat0;
  let x_1021 : f32 = x_31.x_Grain_Params1.y;
  let x_1023 : f32 = x_31.x_Grain_Params1.y;
  let x_1025 : f32 = x_31.x_Grain_Params1.y;
  let x_1027 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(x_1021, x_1023, x_1025));
  let x_1028 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1030 : vec4<f32> = u_xlat0;
  let x_1032 : f32 = u_xlat18;
  let x_1035 : vec3<f32> = u_xlat7;
  let x_1036 : vec3<f32> = ((vec3<f32>(x_1030.x, x_1030.y, x_1030.z) * vec3<f32>(x_1032, x_1032, x_1032)) + x_1035);
  let x_1037 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1036.x, x_1036.y, x_1036.z, x_1037.w);
  let x_1039 : vec4<f32> = u_xlat3;
  let x_1042 : f32 = x_31.x_PostExposure;
  let x_1044 : f32 = x_31.x_PostExposure;
  let x_1046 : f32 = x_31.x_PostExposure;
  let x_1048 : f32 = x_31.x_PostExposure;
  let x_1049 : vec4<f32> = vec4<f32>(x_1042, x_1044, x_1046, x_1048);
  u_xlat0 = (x_1039 * vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1049.w));
  let x_1056 : vec4<f32> = u_xlat0;
  let x_1063 : vec3<f32> = ((vec3<f32>(x_1056.z, x_1056.x, x_1056.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1064 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1063.x, x_1063.y, x_1063.z, x_1064.w);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec3<f32> = log2(vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat0;
  let x_1078 : vec3<f32> = ((vec3<f32>(x_1071.x, x_1071.y, x_1071.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1079 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1081 : vec4<f32> = u_xlat0;
  let x_1085 : vec3<f32> = clamp(vec3<f32>(x_1081.x, x_1081.y, x_1081.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1086 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1086.w);
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1092 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_1094 : vec3<f32> = (vec3<f32>(x_1088.x, x_1088.y, x_1088.z) * vec3<f32>(x_1092.z, x_1092.z, x_1092.z));
  let x_1095 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1098 : f32 = u_xlat1.x;
  u_xlat6 = floor(x_1098);
  let x_1101 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_1104 : vec2<f32> = (vec2<f32>(x_1101.x, x_1101.y) * vec2<f32>(0.5f, 0.5f));
  let x_1105 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1104.x, x_1105.y, x_1105.z, x_1104.y);
  let x_1107 : vec4<f32> = u_xlat1;
  let x_1110 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_1113 : vec4<f32> = u_xlat1;
  let x_1115 : vec2<f32> = ((vec2<f32>(x_1107.y, x_1107.z) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.x, x_1113.w));
  let x_1116 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1116.x, x_1115.x, x_1115.y, x_1116.w);
  let x_1118 : f32 = u_xlat6;
  let x_1120 : f32 = x_31.x_Lut2D_Params.y;
  let x_1123 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1118 * x_1120) + x_1123);
  let x_1131 : vec4<f32> = u_xlat1;
  let x_1133 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1131.x, x_1131.z));
  u_xlat2 = vec3<f32>(x_1133.x, x_1133.y, x_1133.z);
  let x_1136 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_1136;
  u_xlat3.y = 0.0f;
  let x_1139 : vec4<f32> = u_xlat1;
  let x_1141 : vec4<f32> = u_xlat3;
  let x_1143 : vec2<f32> = (vec2<f32>(x_1139.x, x_1139.z) + vec2<f32>(x_1141.x, x_1141.y));
  let x_1144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
  let x_1149 : vec4<f32> = u_xlat1;
  let x_1151 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1149.x, x_1149.y));
  let x_1152 : vec3<f32> = vec3<f32>(x_1151.x, x_1151.y, x_1151.z);
  let x_1153 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1156 : f32 = u_xlat0.x;
  let x_1158 : f32 = x_31.x_Lut2D_Params.z;
  let x_1160 : f32 = u_xlat6;
  u_xlat0.x = ((x_1156 * x_1158) + -(x_1160));
  let x_1164 : vec3<f32> = u_xlat2;
  let x_1166 : vec4<f32> = u_xlat1;
  let x_1168 : vec3<f32> = (-(x_1164) + vec3<f32>(x_1166.x, x_1166.y, x_1166.z));
  let x_1169 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat0;
  let x_1173 : vec4<f32> = u_xlat1;
  let x_1176 : vec3<f32> = u_xlat2;
  let x_1177 : vec3<f32> = ((vec3<f32>(x_1171.x, x_1171.x, x_1171.x) * vec3<f32>(x_1173.x, x_1173.y, x_1173.z)) + x_1176);
  let x_1178 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
  let x_1180 : vec4<f32> = phase0_Input0_1;
  let x_1184 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1188 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1190 : vec2<f32> = ((vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1188.z, x_1188.w));
  let x_1191 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1190.x, x_1190.y, x_1191.z, x_1191.w);
  let x_1198 : vec4<f32> = u_xlat1;
  let x_1200 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1198.x, x_1198.y));
  u_xlat1.x = x_1200.w;
  let x_1204 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1204 * 2.0f) + -1.0f);
  let x_1209 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1209 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1215 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1215, 0.0f, 1.0f);
  let x_1219 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1219 * 2.0f) + -1.0f);
  let x_1224 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1224)) + 1.0f);
  let x_1230 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1230);
  let x_1234 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1234) + 1.0f);
  let x_1239 : f32 = u_xlat1.x;
  let x_1241 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1239 * x_1241);
  let x_1244 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1244.x, x_1244.y, x_1244.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1249 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1249.x, x_1249.y, x_1249.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1254 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1254);
  let x_1256 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1256 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1260 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1260);
  let x_1262 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1262 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1271 : vec4<f32> = u_xlat0;
  let x_1274 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1271.x));
  u_xlatb0 = vec3<bool>(x_1274.x, x_1274.y, x_1274.z);
  let x_1277 : bool = u_xlatb0.x;
  if (x_1277) {
    let x_1282 : f32 = u_xlat7.x;
    x_1278 = x_1282;
  } else {
    let x_1285 : f32 = u_xlat2.x;
    x_1278 = x_1285;
  }
  let x_1286 : f32 = x_1278;
  u_xlat0.x = x_1286;
  let x_1289 : bool = u_xlatb0.y;
  if (x_1289) {
    let x_1294 : f32 = u_xlat7.y;
    x_1290 = x_1294;
  } else {
    let x_1297 : f32 = u_xlat2.y;
    x_1290 = x_1297;
  }
  let x_1298 : f32 = x_1290;
  u_xlat0.y = x_1298;
  let x_1301 : bool = u_xlatb0.z;
  if (x_1301) {
    let x_1306 : f32 = u_xlat7.z;
    x_1302 = x_1306;
  } else {
    let x_1309 : f32 = u_xlat2.z;
    x_1302 = x_1309;
  }
  let x_1310 : f32 = x_1302;
  u_xlat0.z = x_1310;
  let x_1312 : vec4<f32> = u_xlat1;
  let x_1317 : vec4<f32> = u_xlat0;
  let x_1319 : vec3<f32> = ((vec3<f32>(x_1312.x, x_1312.x, x_1312.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1317.x, x_1317.y, x_1317.z));
  let x_1320 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1319.x, x_1319.y, x_1319.z, x_1320.w);
  let x_1322 : vec4<f32> = u_xlat0;
  let x_1325 : vec3<f32> = (vec3<f32>(x_1322.x, x_1322.y, x_1322.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1328.x, x_1328.y, x_1328.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1332 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1332 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1335 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1335), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1338 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1338);
  let x_1340 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1340 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1343 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1343);
  let x_1346 : vec4<f32> = u_xlat0;
  let x_1348 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1346.x));
  u_xlatb0 = vec3<bool>(x_1348.x, x_1348.y, x_1348.z);
  let x_1353 : bool = u_xlatb0.x;
  if (x_1353) {
    let x_1358 : f32 = u_xlat1.x;
    x_1354 = x_1358;
  } else {
    let x_1361 : f32 = u_xlat2.x;
    x_1354 = x_1361;
  }
  let x_1362 : f32 = x_1354;
  SV_Target0.x = x_1362;
  let x_1366 : bool = u_xlatb0.y;
  if (x_1366) {
    let x_1371 : f32 = u_xlat1.y;
    x_1367 = x_1371;
  } else {
    let x_1374 : f32 = u_xlat2.y;
    x_1367 = x_1374;
  }
  let x_1375 : f32 = x_1367;
  SV_Target0.y = x_1375;
  let x_1378 : bool = u_xlatb0.z;
  if (x_1378) {
    let x_1383 : f32 = u_xlat1.z;
    x_1379 = x_1383;
  } else {
    let x_1386 : f32 = u_xlat2.z;
    x_1379 = x_1386;
  }
  let x_1387 : f32 = x_1379;
  SV_Target0.z = x_1387;
  let x_1390 : f32 = u_xlat0.w;
  SV_Target0.w = x_1390;
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

