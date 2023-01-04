struct PGlobals {
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

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_403 : f32;
  var x_789 : f32;
  var x_801 : f32;
  var x_814 : f32;
  var x_951 : f32;
  var x_963 : f32;
  var x_975 : f32;
  var x_1072 : f32;
  var x_1084 : f32;
  var x_1096 : f32;
  var x_1143 : f32;
  var x_1156 : f32;
  var x_1168 : f32;
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
  u_xlat2 = vec3<f32>(x_707.x, x_707.y, x_707.z);
  let x_709 : vec4<f32> = u_xlat0;
  let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_714 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_716 : vec3<f32> = u_xlat2;
  let x_718 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat2 = (x_716 * vec3<f32>(x_718.z, x_718.z, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_721 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_724 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = x_31.x_Bloom_Color;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * x_728);
  let x_730 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : f32 = u_xlat0.w;
  u_xlat4.w = (x_733 * 0.0625f);
  let x_736 : vec4<f32> = u_xlat1;
  let x_737 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_736 + x_737);
  let x_739 : vec4<f32> = u_xlat3;
  let x_741 : vec3<f32> = u_xlat2;
  let x_742 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * x_741);
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  u_xlat1.w = 0.0f;
  let x_746 : vec4<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_746 + x_747);
  let x_749 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_749, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_753 : vec4<f32> = u_xlat0;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.z, x_753.x, x_753.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_758 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat0;
  u_xlat2 = max(vec3<f32>(x_760.z, x_760.x, x_760.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_765 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_765);
  let x_767 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_767 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_771);
  let x_773 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_773 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_782 : vec4<f32> = u_xlat0;
  let x_785 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_782.z, x_782.x, x_782.y, x_782.z));
  u_xlatb0 = vec3<bool>(x_785.x, x_785.y, x_785.z);
  let x_788 : bool = u_xlatb0.x;
  if (x_788) {
    let x_793 : f32 = u_xlat1.x;
    x_789 = x_793;
  } else {
    let x_796 : f32 = u_xlat2.x;
    x_789 = x_796;
  }
  let x_797 : f32 = x_789;
  u_xlat0.x = x_797;
  let x_800 : bool = u_xlatb0.y;
  if (x_800) {
    let x_805 : f32 = u_xlat1.y;
    x_801 = x_805;
  } else {
    let x_808 : f32 = u_xlat2.y;
    x_801 = x_808;
  }
  let x_809 : f32 = x_801;
  u_xlat0.y = x_809;
  let x_813 : bool = u_xlatb0.z;
  if (x_813) {
    let x_818 : f32 = u_xlat1.z;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat2.z;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  u_xlat0.z = x_822;
  let x_824 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_830 : vec3<f32> = (vec3<f32>(x_824.x, x_824.y, x_824.z) * vec3<f32>(x_828.z, x_828.z, x_828.z));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_830.z, x_831.w);
  let x_834 : f32 = u_xlat1.x;
  u_xlat6 = floor(x_834);
  let x_837 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_840 : vec2<f32> = (vec2<f32>(x_837.x, x_837.y) * vec2<f32>(0.5f, 0.5f));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_841.y, x_841.z, x_840.y);
  let x_843 : vec4<f32> = u_xlat1;
  let x_846 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_849 : vec4<f32> = u_xlat1;
  let x_851 : vec2<f32> = ((vec2<f32>(x_843.y, x_843.z) * vec2<f32>(x_846.x, x_846.y)) + vec2<f32>(x_849.x, x_849.w));
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_851.x, x_851.y, x_852.w);
  let x_854 : f32 = u_xlat6;
  let x_856 : f32 = x_31.x_Lut2D_Params.y;
  let x_859 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_854 * x_856) + x_859);
  let x_867 : vec4<f32> = u_xlat1;
  let x_869 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_867.x, x_867.z));
  u_xlat2 = vec3<f32>(x_869.x, x_869.y, x_869.z);
  let x_872 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_872;
  u_xlat3.y = 0.0f;
  let x_875 : vec4<f32> = u_xlat1;
  let x_877 : vec4<f32> = u_xlat3;
  let x_879 : vec2<f32> = (vec2<f32>(x_875.x, x_875.z) + vec2<f32>(x_877.x, x_877.y));
  let x_880 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_879.x, x_879.y, x_880.z, x_880.w);
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_885.x, x_885.y));
  let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_892 : f32 = u_xlat0.x;
  let x_894 : f32 = x_31.x_Lut2D_Params.z;
  let x_896 : f32 = u_xlat6;
  u_xlat0.x = ((x_892 * x_894) + -(x_896));
  let x_900 : vec3<f32> = u_xlat2;
  let x_902 : vec4<f32> = u_xlat1;
  let x_904 : vec3<f32> = (-(x_900) + vec3<f32>(x_902.x, x_902.y, x_902.z));
  let x_905 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_904.x, x_904.y, x_904.z, x_905.w);
  let x_907 : vec4<f32> = u_xlat0;
  let x_909 : vec4<f32> = u_xlat1;
  let x_912 : vec3<f32> = u_xlat2;
  let x_913 : vec3<f32> = ((vec3<f32>(x_907.x, x_907.x, x_907.x) * vec3<f32>(x_909.x, x_909.y, x_909.z)) + x_912);
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat0;
  let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_921 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_923.x, x_923.y, x_923.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_928 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_928 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_932 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_932), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_935 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_935);
  let x_937 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_937 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_941 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_941);
  let x_945 : vec4<f32> = u_xlat0;
  let x_947 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_945.x, x_945.y, x_945.z, x_945.x));
  u_xlatb0 = vec3<bool>(x_947.x, x_947.y, x_947.z);
  let x_950 : bool = u_xlatb0.x;
  if (x_950) {
    let x_955 : f32 = u_xlat1.x;
    x_951 = x_955;
  } else {
    let x_958 : f32 = u_xlat2.x;
    x_951 = x_958;
  }
  let x_959 : f32 = x_951;
  u_xlat0.x = x_959;
  let x_962 : bool = u_xlatb0.y;
  if (x_962) {
    let x_967 : f32 = u_xlat1.y;
    x_963 = x_967;
  } else {
    let x_970 : f32 = u_xlat2.y;
    x_963 = x_970;
  }
  let x_971 : f32 = x_963;
  u_xlat0.y = x_971;
  let x_974 : bool = u_xlatb0.z;
  if (x_974) {
    let x_979 : f32 = u_xlat1.z;
    x_975 = x_979;
  } else {
    let x_982 : f32 = u_xlat2.z;
    x_975 = x_982;
  }
  let x_983 : f32 = x_975;
  u_xlat0.z = x_983;
  let x_985 : vec4<f32> = phase0_Input0_1;
  let x_989 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_993 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_995 : vec2<f32> = ((vec2<f32>(x_985.x, x_985.y) * vec2<f32>(x_989.x, x_989.y)) + vec2<f32>(x_993.z, x_993.w));
  let x_996 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
  let x_1003 : vec4<f32> = u_xlat1;
  let x_1005 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1003.x, x_1003.y));
  u_xlat1.x = x_1005.w;
  let x_1009 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1009 * 2.0f) + -1.0f);
  let x_1015 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1015 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1021 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1021, 0.0f, 1.0f);
  let x_1025 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1025 * 2.0f) + -1.0f);
  let x_1030 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1030)) + 1.0f);
  let x_1036 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1036);
  let x_1040 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1040) + 1.0f);
  let x_1045 : f32 = u_xlat1.x;
  let x_1047 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1045 * x_1047);
  let x_1050 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1050.x, x_1050.y, x_1050.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1053 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1053.x, x_1053.y, x_1053.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1057 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1057);
  let x_1059 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1059 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1061 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1061);
  let x_1063 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1063 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.x));
  u_xlatb0 = vec3<bool>(x_1068.x, x_1068.y, x_1068.z);
  let x_1071 : bool = u_xlatb0.x;
  if (x_1071) {
    let x_1076 : f32 = u_xlat7.x;
    x_1072 = x_1076;
  } else {
    let x_1079 : f32 = u_xlat2.x;
    x_1072 = x_1079;
  }
  let x_1080 : f32 = x_1072;
  u_xlat0.x = x_1080;
  let x_1083 : bool = u_xlatb0.y;
  if (x_1083) {
    let x_1088 : f32 = u_xlat7.y;
    x_1084 = x_1088;
  } else {
    let x_1091 : f32 = u_xlat2.y;
    x_1084 = x_1091;
  }
  let x_1092 : f32 = x_1084;
  u_xlat0.y = x_1092;
  let x_1095 : bool = u_xlatb0.z;
  if (x_1095) {
    let x_1100 : f32 = u_xlat7.z;
    x_1096 = x_1100;
  } else {
    let x_1103 : f32 = u_xlat2.z;
    x_1096 = x_1103;
  }
  let x_1104 : f32 = x_1096;
  u_xlat0.z = x_1104;
  let x_1106 : vec4<f32> = u_xlat1;
  let x_1111 : vec4<f32> = u_xlat0;
  let x_1113 : vec3<f32> = ((vec3<f32>(x_1106.x, x_1106.x, x_1106.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1111.x, x_1111.y, x_1111.z));
  let x_1114 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
  let x_1116 : vec4<f32> = u_xlat0;
  let x_1118 : vec3<f32> = (vec3<f32>(x_1116.x, x_1116.y, x_1116.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1119 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1124 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1124 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1126 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1126), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1129 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1129);
  let x_1131 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1131 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1133 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1133);
  let x_1135 : vec4<f32> = u_xlat0;
  let x_1137 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.x));
  u_xlatb0 = vec3<bool>(x_1137.x, x_1137.y, x_1137.z);
  let x_1142 : bool = u_xlatb0.x;
  if (x_1142) {
    let x_1147 : f32 = u_xlat1.x;
    x_1143 = x_1147;
  } else {
    let x_1150 : f32 = u_xlat2.x;
    x_1143 = x_1150;
  }
  let x_1151 : f32 = x_1143;
  SV_Target0.x = x_1151;
  let x_1155 : bool = u_xlatb0.y;
  if (x_1155) {
    let x_1160 : f32 = u_xlat1.y;
    x_1156 = x_1160;
  } else {
    let x_1163 : f32 = u_xlat2.y;
    x_1156 = x_1163;
  }
  let x_1164 : f32 = x_1156;
  SV_Target0.y = x_1164;
  let x_1167 : bool = u_xlatb0.z;
  if (x_1167) {
    let x_1172 : f32 = u_xlat1.z;
    x_1168 = x_1172;
  } else {
    let x_1175 : f32 = u_xlat2.z;
    x_1168 = x_1175;
  }
  let x_1176 : f32 = x_1168;
  SV_Target0.z = x_1176;
  let x_1179 : f32 = u_xlat0.w;
  SV_Target0.w = x_1179;
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

