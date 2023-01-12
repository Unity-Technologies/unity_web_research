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

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

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
  var u_xlatb2 : bool;
  var x_220 : f32;
  var u_xlat6 : f32;
  var u_xlat8 : f32;
  var u_xlatb9 : bool;
  var x_371 : f32;
  var u_xlatb0 : bool;
  var x_399 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var x_923 : f32;
  var u_xlat18 : f32;
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
    let x_214 : f32 = u_xlat2.x;
    let x_216 : f32 = u_xlat2.x;
    u_xlatb2 = (x_214 < -(x_216));
    let x_219 : bool = u_xlatb2;
    if (x_219) {
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
    let x_260 : vec4<f32> = x_32.x_Distortion_Amount;
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
    let x_304 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat6 = (x_302 * x_304);
    let x_307 : f32 = u_xlat0.x;
    let x_309 : f32 = x_32.x_Distortion_Amount.y;
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
  let x_458 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_462 : vec4<f32> = u_xlat0;
  let x_468 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_471 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_462.x, x_462.y, x_462.w, x_462.y)) * vec4<f32>(x_468.x, x_468.x, x_468.x, x_468.x)) + vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_474, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_478 : vec4<f32> = u_xlat3;
  let x_481 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_508 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_511 : vec2<f32> = u_xlat14;
  let x_512 : vec2<f32> = ((-(vec2<f32>(x_504.z, x_504.y)) * vec2<f32>(x_508.x, x_508.x)) + x_511);
  let x_513 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_512.x, x_512.y, x_513.z);
  let x_515 : vec3<f32> = u_xlat2;
  let x_519 : vec2<f32> = clamp(vec2<f32>(x_515.x, x_515.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_520 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_519.x, x_519.y, x_520.z);
  let x_522 : vec3<f32> = u_xlat2;
  let x_525 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_542 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_545 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_539.z, x_539.w, x_539.x, x_539.w) * vec4<f32>(x_542.x, x_542.x, x_542.x, x_542.x)) + vec4<f32>(x_545.x, x_545.y, x_545.x, x_545.y));
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_548, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_552 : vec4<f32> = u_xlat4;
  let x_554 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_581 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_611 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_614 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_608.z, x_608.y, x_608.w, x_608.y) * vec4<f32>(x_611.x, x_611.x, x_611.x, x_611.x)) + vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_617, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_648 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_651 : vec2<f32> = u_xlat14;
  let x_652 : vec2<f32> = ((vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648.x, x_648.x)) + x_651);
  let x_653 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_652.x, x_652.y, x_653.z, x_653.w);
  let x_655 : vec4<f32> = u_xlat0;
  let x_659 : vec2<f32> = clamp(vec2<f32>(x_655.x, x_655.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_660 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
  let x_662 : vec4<f32> = u_xlat0;
  let x_665 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_681 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_679 * vec4<f32>(x_681.y, x_681.y, x_681.y, x_681.y));
  let x_684 : vec2<f32> = u_xlat14;
  let x_687 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_691 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_693 : vec2<f32> = ((x_684 * vec2<f32>(x_687.x, x_687.y)) + vec2<f32>(x_691.z, x_691.w));
  let x_694 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_693.x, x_693.y, x_694.z);
  let x_701 : vec3<f32> = u_xlat2;
  let x_703 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_701.x, x_701.y));
  let x_704 : vec3<f32> = vec3<f32>(x_703.x, x_703.y, x_703.z);
  let x_705 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_707 : vec4<f32> = u_xlat0;
  let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_712 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat3;
  let x_717 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_719 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_717.z, x_717.z, x_717.z));
  let x_720 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_722 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_725 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = x_32.x_Bloom_Color;
  let x_730 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * x_729);
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_734 : f32 = u_xlat0.w;
  u_xlat5.w = (x_734 * 0.0625f);
  let x_737 : vec4<f32> = u_xlat1;
  let x_738 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_737 + x_738);
  let x_740 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat3;
  let x_744 : vec3<f32> = (vec3<f32>(x_740.x, x_740.y, x_740.z) * vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  u_xlat1.w = 0.0f;
  let x_748 : vec4<f32> = u_xlat0;
  let x_749 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_748 + x_749);
  let x_754 : f32 = x_32.x_Vignette_Mode;
  u_xlatb1 = (x_754 < 0.5f);
  let x_756 : bool = u_xlatb1;
  if (x_756) {
    let x_759 : vec2<f32> = u_xlat14;
    let x_763 : vec2<f32> = x_32.x_Vignette_Center;
    let x_765 : vec2<f32> = (x_759 + -(x_763));
    let x_766 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_765.x, x_765.y, x_766.z, x_766.w);
    let x_768 : vec4<f32> = u_xlat1;
    let x_773 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_775 : vec2<f32> = (abs(vec2<f32>(x_768.y, x_768.x)) * vec2<f32>(x_773.x, x_773.x));
    let x_776 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_776.x, x_775.x, x_775.y, x_776.w);
    let x_781 : f32 = x_32.x_ScreenParams.x;
    let x_783 : f32 = x_32.x_ScreenParams.y;
    u_xlat19 = (x_781 / x_783);
    let x_785 : f32 = u_xlat19;
    u_xlat19 = (x_785 + -1.0f);
    let x_788 : f32 = x_32.x_Vignette_Settings.w;
    let x_789 : f32 = u_xlat19;
    u_xlat19 = ((x_788 * x_789) + 1.0f);
    let x_792 : f32 = u_xlat19;
    let x_795 : f32 = u_xlat1.z;
    u_xlat1.x = (x_792 * x_795);
    let x_798 : vec4<f32> = u_xlat1;
    let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
    let x_800 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
    let x_802 : vec4<f32> = u_xlat1;
    let x_806 : vec2<f32> = clamp(vec2<f32>(x_802.x, x_802.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_807 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
    let x_809 : vec4<f32> = u_xlat1;
    let x_811 : vec2<f32> = log2(vec2<f32>(x_809.x, x_809.y));
    let x_812 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
    let x_814 : vec4<f32> = u_xlat1;
    let x_817 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_819 : vec2<f32> = (vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.z, x_817.z));
    let x_820 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_819.x, x_819.y, x_820.z, x_820.w);
    let x_822 : vec4<f32> = u_xlat1;
    let x_824 : vec2<f32> = exp2(vec2<f32>(x_822.x, x_822.y));
    let x_825 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_824.x, x_824.y, x_825.z, x_825.w);
    let x_827 : vec4<f32> = u_xlat1;
    let x_829 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_827.x, x_827.y), vec2<f32>(x_829.x, x_829.y));
    let x_834 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_834) + 1.0f);
    let x_839 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_839, 0.0f);
    let x_843 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_843);
    let x_847 : f32 = u_xlat1.x;
    let x_849 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat1.x = (x_847 * x_849);
    let x_853 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_853);
    let x_859 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_859) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_863 : vec4<f32> = u_xlat1;
    let x_865 : vec3<f32> = u_xlat7;
    let x_868 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_863.x, x_863.x, x_863.x) * x_865) + x_868);
    let x_870 : vec4<f32> = u_xlat0;
    let x_872 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_870.x, x_870.y, x_870.z) * x_872);
    let x_875 : f32 = u_xlat0.w;
    u_xlat2.x = (x_875 + -1.0f);
    let x_879 : f32 = u_xlat1.x;
    let x_881 : f32 = u_xlat2.x;
    u_xlat3.w = ((x_879 * x_881) + 1.0f);
  } else {
    let x_891 : vec2<f32> = u_xlat14;
    let x_892 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_891);
    u_xlat1.x = x_892.w;
    let x_896 : f32 = u_xlat1.x;
    u_xlat2.x = (x_896 * 0.077399381f);
    let x_901 : f32 = u_xlat1.x;
    u_xlat8 = (x_901 + 0.055f);
    let x_904 : f32 = u_xlat8;
    u_xlat8 = (x_904 * 0.947867334f);
    let x_907 : f32 = u_xlat8;
    u_xlat8 = max(abs(x_907), 1.1920929e-07f);
    let x_911 : f32 = u_xlat8;
    u_xlat8 = log2(x_911);
    let x_913 : f32 = u_xlat8;
    u_xlat8 = (x_913 * 2.400000095f);
    let x_916 : f32 = u_xlat8;
    u_xlat8 = exp2(x_916);
    let x_920 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_920);
    let x_922 : bool = u_xlatb1;
    if (x_922) {
      let x_927 : f32 = u_xlat2.x;
      x_923 = x_927;
    } else {
      let x_929 : f32 = u_xlat8;
      x_923 = x_929;
    }
    let x_930 : f32 = x_923;
    u_xlat1.x = x_930;
    let x_933 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = (-(x_933) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_936 : vec4<f32> = u_xlat1;
    let x_938 : vec3<f32> = u_xlat2;
    let x_941 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_936.x, x_936.x, x_936.x) * x_938) + x_941);
    let x_943 : vec4<f32> = u_xlat0;
    let x_945 : vec3<f32> = u_xlat2;
    let x_947 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_943.x, x_943.y, x_943.z) * x_945) + -(vec3<f32>(x_947.x, x_947.y, x_947.z)));
    let x_953 : f32 = x_32.x_Vignette_Opacity;
    let x_955 : vec3<f32> = u_xlat2;
    let x_957 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_953, x_953, x_953) * x_955) + vec3<f32>(x_957.x, x_957.y, x_957.z));
    let x_961 : f32 = u_xlat0.w;
    u_xlat0.x = (x_961 + -1.0f);
    let x_965 : f32 = u_xlat1.x;
    let x_967 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_965 * x_967) + 1.0f);
  }
  let x_971 : vec4<f32> = phase0_Input0_1;
  let x_975 : vec4<f32> = x_32.x_Grain_Params2;
  let x_979 : vec4<f32> = x_32.x_Grain_Params2;
  let x_981 : vec2<f32> = ((vec2<f32>(x_971.z, x_971.w) * vec2<f32>(x_975.x, x_975.y)) + vec2<f32>(x_979.z, x_979.w));
  let x_982 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
  let x_989 : vec4<f32> = u_xlat0;
  let x_991 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_989.x, x_989.y));
  let x_992 : vec3<f32> = vec3<f32>(x_991.x, x_991.y, x_991.z);
  let x_993 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_992.x, x_992.y, x_992.z, x_993.w);
  let x_995 : vec3<f32> = u_xlat7;
  u_xlat2 = x_995;
  let x_996 : vec3<f32> = u_xlat2;
  u_xlat2 = clamp(x_996, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1001 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(x_1001, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1007 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_1007);
  let x_1011 : f32 = x_32.x_Grain_Params1.x;
  let x_1012 : f32 = u_xlat18;
  u_xlat18 = ((x_1011 * -(x_1012)) + 1.0f);
  let x_1016 : vec4<f32> = u_xlat0;
  let x_1018 : vec3<f32> = u_xlat7;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * x_1018);
  let x_1020 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec4<f32> = u_xlat0;
  let x_1025 : f32 = x_32.x_Grain_Params1.y;
  let x_1027 : f32 = x_32.x_Grain_Params1.y;
  let x_1029 : f32 = x_32.x_Grain_Params1.y;
  let x_1031 : vec3<f32> = (vec3<f32>(x_1022.x, x_1022.y, x_1022.z) * vec3<f32>(x_1025, x_1027, x_1029));
  let x_1032 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat0;
  let x_1036 : f32 = u_xlat18;
  let x_1039 : vec3<f32> = u_xlat7;
  let x_1040 : vec3<f32> = ((vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(x_1036, x_1036, x_1036)) + x_1039);
  let x_1041 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1045 : f32 = x_32.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_1045);
  let x_1047 : bool = u_xlatb0;
  if (x_1047) {
    let x_1050 : vec4<f32> = u_xlat3;
    let x_1051 : vec3<f32> = vec3<f32>(x_1050.x, x_1050.y, x_1050.z);
    let x_1052 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
    let x_1054 : vec4<f32> = u_xlat0;
    let x_1058 : vec3<f32> = clamp(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1059 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
    let x_1061 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1061.x, x_1061.y, x_1061.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1067 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1067;
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

