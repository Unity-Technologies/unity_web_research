struct PGlobals {
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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
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

var<private> u_xlatb2 : bool;

var<private> u_xlat6 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlat19 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_371 : f32;
  var x_399 : f32;
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
    let x_393 : f32 = u_xlat0.x;
    let x_395 : f32 = u_xlat0.x;
    u_xlatb0 = (x_393 < -(x_395));
    let x_398 : bool = u_xlatb0;
    if (x_398) {
      let x_403 : f32 = u_xlat2.x;
      x_399 = -(x_403);
    } else {
      let x_407 : f32 = u_xlat2.x;
      x_399 = x_407;
    }
    let x_408 : f32 = x_399;
    u_xlat0.x = x_408;
    let x_410 : f32 = u_xlat6;
    let x_412 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_410 * x_412) + -1.0f);
    let x_416 : vec4<f32> = u_xlat0;
    let x_418 : vec4<f32> = u_xlat0;
    let x_421 : vec4<f32> = u_xlat1;
    let x_423 : vec2<f32> = ((vec2<f32>(x_416.z, x_416.w) * vec2<f32>(x_418.x, x_418.x)) + vec2<f32>(x_421.z, x_421.w));
    let x_424 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
  }
  let x_436 : vec4<f32> = phase0_Input0_1;
  let x_438 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_436.x, x_436.y));
  u_xlat0.x = x_438.x;
  let x_446 : vec4<f32> = u_xlat1;
  let x_448 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_446.x, x_446.y));
  u_xlat1 = x_448;
  let x_449 : vec4<f32> = u_xlat0;
  let x_451 : vec4<f32> = u_xlat1;
  let x_453 : vec3<f32> = (vec3<f32>(x_449.x, x_449.x, x_449.x) * vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_453.x, x_453.y, x_453.z, x_454.w);
  let x_458 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat0;
  let x_468 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_471 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_462.x, x_462.y, x_462.w, x_462.y)) * vec4<f32>(x_468.x, x_468.x, x_468.x, x_468.x)) + vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_474, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_478 : vec4<f32> = u_xlat3;
  let x_481 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_478 * vec4<f32>(x_481, x_481, x_481, x_481));
  let x_489 : vec4<f32> = u_xlat3;
  let x_491 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_489.x, x_489.y));
  u_xlat4 = x_491;
  let x_495 : vec4<f32> = u_xlat3;
  let x_497 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_495.z, x_495.w));
  u_xlat3 = x_497;
  let x_498 : vec4<f32> = u_xlat3;
  let x_502 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_498 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_502);
  let x_504 : vec4<f32> = u_xlat0;
  let x_508 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_511 : vec2<f32> = u_xlat14;
  let x_512 : vec2<f32> = ((-(vec2<f32>(x_504.z, x_504.y)) * vec2<f32>(x_508.x, x_508.x)) + x_511);
  let x_513 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_512.x, x_512.y, x_513.z);
  let x_515 : vec3<f32> = u_xlat2;
  let x_519 : vec2<f32> = clamp(vec2<f32>(x_515.x, x_515.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_520 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_519.x, x_519.y, x_520.z);
  let x_522 : vec3<f32> = u_xlat2;
  let x_525 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_527 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525, x_525));
  let x_528 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_527.x, x_527.y, x_528.z);
  let x_533 : vec3<f32> = u_xlat2;
  let x_535 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_533.x, x_533.y));
  u_xlat4 = x_535;
  let x_536 : vec4<f32> = u_xlat3;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_536 + x_537);
  let x_539 : vec4<f32> = u_xlat0;
  let x_542 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_545 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_539.z, x_539.w, x_539.x, x_539.w) * vec4<f32>(x_542.x, x_542.x, x_542.x, x_542.x)) + vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y));
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_548, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_552 * vec4<f32>(x_554, x_554, x_554, x_554));
  let x_561 : vec4<f32> = u_xlat4;
  let x_563 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_561.x, x_561.y));
  u_xlat5 = x_563;
  let x_564 : vec4<f32> = u_xlat5;
  let x_566 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_564 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_566);
  let x_568 : vec2<f32> = u_xlat14;
  let x_569 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_568.x, x_568.y, x_569.z);
  let x_571 : vec3<f32> = u_xlat2;
  let x_575 : vec2<f32> = clamp(vec2<f32>(x_571.x, x_571.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_576 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_575.x, x_575.y, x_576.z);
  let x_578 : vec3<f32> = u_xlat2;
  let x_581 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_583 : vec2<f32> = (vec2<f32>(x_578.x, x_578.y) * vec2<f32>(x_581, x_581));
  let x_584 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_583.x, x_583.y, x_584.z);
  let x_589 : vec3<f32> = u_xlat2;
  let x_591 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_589.x, x_589.y));
  u_xlat5 = x_591;
  let x_592 : vec4<f32> = u_xlat5;
  let x_596 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_592 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_596);
  let x_601 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_601.z, x_601.w));
  u_xlat4 = x_603;
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_604 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_606);
  let x_608 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_614 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_608.z, x_608.y, x_608.w, x_608.y) * vec4<f32>(x_611.x, x_611.x, x_611.x, x_611.x)) + vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_617, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_621 * vec4<f32>(x_623, x_623, x_623, x_623));
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_629.x, x_629.y));
  u_xlat5 = x_631;
  let x_632 : vec4<f32> = u_xlat3;
  let x_633 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_632 + x_633);
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_638.z, x_638.w));
  u_xlat4 = x_640;
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_641 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_643);
  let x_645 : vec4<f32> = u_xlat0;
  let x_648 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_651 : vec2<f32> = u_xlat14;
  let x_652 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.x, x_648.x)) + x_651);
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat0;
  let x_659 : vec2<f32> = clamp(vec2<f32>(x_655.x, x_655.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat0;
  let x_665 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_667 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) * vec2<f32>(x_665, x_665));
  let x_668 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_673.x, x_673.y));
  u_xlat0 = x_675;
  let x_676 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_676 + x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_679 * vec4<f32>(x_681.y, x_681.y, x_681.y, x_681.y));
  let x_684 : vec2<f32> = u_xlat14;
  let x_687 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_691 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_693 : vec2<f32> = ((x_684 * vec2<f32>(x_687.x, x_687.y)) + vec2<f32>(x_691.z, x_691.w));
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_701 : vec3<f32> = u_xlat2;
  let x_703 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_701.x, x_701.y));
  u_xlat2 = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_705 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_710 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec3<f32> = u_xlat2;
  let x_714 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat2 = (x_712 * vec3<f32>(x_714.z, x_714.z, x_714.z));
  let x_717 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_717 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_720 : vec4<f32> = u_xlat0;
  let x_724 : vec3<f32> = x_31.x_Bloom_Color;
  let x_725 : vec3<f32> = (vec3<f32>(x_720.x, x_720.y, x_720.z) * x_724);
  let x_726 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_725.x, x_725.y, x_725.z, x_726.w);
  let x_729 : f32 = u_xlat0.w;
  u_xlat4.w = (x_729 * 0.0625f);
  let x_732 : vec4<f32> = u_xlat1;
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_732 + x_733);
  let x_735 : vec4<f32> = u_xlat3;
  let x_737 : vec3<f32> = u_xlat2;
  let x_738 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * x_737);
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  u_xlat1.w = 0.0f;
  let x_742 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_742 + x_743);
  let x_745 : vec4<f32> = phase0_Input0_1;
  let x_749 : vec4<f32> = x_31.x_Grain_Params2;
  let x_753 : vec4<f32> = x_31.x_Grain_Params2;
  let x_755 : vec2<f32> = ((vec2<f32>(x_745.z, x_745.w) * vec2<f32>(x_749.x, x_749.y)) + vec2<f32>(x_753.z, x_753.w));
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_756.z, x_756.w);
  let x_763 : vec4<f32> = u_xlat1;
  let x_765 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_763.x, x_763.y));
  let x_766 : vec3<f32> = vec3<f32>(x_765.x, x_765.y, x_765.z);
  let x_767 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat0;
  u_xlat2 = vec3<f32>(x_769.x, x_769.y, x_769.z);
  let x_771 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_771, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_776 : vec3<f32> = u_xlat2;
  u_xlat19 = dot(x_776, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_782 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_782);
  let x_786 : f32 = x_31.x_Grain_Params1.x;
  let x_787 : f32 = u_xlat19;
  u_xlat19 = ((x_786 * -(x_787)) + 1.0f);
  let x_791 : vec4<f32> = u_xlat0;
  let x_793 : vec4<f32> = u_xlat1;
  let x_795 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat1;
  let x_801 : f32 = x_31.x_Grain_Params1.y;
  let x_803 : f32 = x_31.x_Grain_Params1.y;
  let x_805 : f32 = x_31.x_Grain_Params1.y;
  let x_807 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_801, x_803, x_805));
  let x_808 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  let x_810 : vec4<f32> = u_xlat1;
  let x_812 : f32 = u_xlat19;
  let x_815 : vec4<f32> = u_xlat0;
  let x_817 : vec3<f32> = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * vec3<f32>(x_812, x_812, x_812)) + vec3<f32>(x_815.x, x_815.y, x_815.z));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_823 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_823);
  let x_825 : bool = u_xlatb1;
  if (x_825) {
    let x_828 : vec4<f32> = u_xlat0;
    let x_829 : vec3<f32> = vec3<f32>(x_828.x, x_828.y, x_828.z);
    let x_830 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
    let x_832 : vec4<f32> = u_xlat1;
    let x_836 : vec3<f32> = clamp(vec3<f32>(x_832.x, x_832.y, x_832.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_837 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
    let x_839 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_839.x, x_839.y, x_839.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_845 : vec4<f32> = u_xlat0;
  SV_Target0 = x_845;
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

