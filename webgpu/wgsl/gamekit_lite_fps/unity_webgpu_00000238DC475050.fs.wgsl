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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
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

var<private> u_xlatb2 : bool;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_220 : f32;
  var x_377 : f32;
  var x_409 : f32;
  var x_790 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_938 : f32;
  var x_950 : f32;
  var x_962 : f32;
  var x_1012 : f32;
  var x_1024 : f32;
  var x_1036 : f32;
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
    u_xlat6.x = (x_275 / x_277);
    let x_281 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_281);
    let x_285 : f32 = u_xlat6.x;
    let x_287 : f32 = u_xlat1.x;
    u_xlat6.x = ((x_285 * x_287) + -1.0f);
    let x_291 : vec4<f32> = u_xlat0;
    let x_293 : vec3<f32> = u_xlat6;
    let x_296 : vec4<f32> = u_xlat1;
    let x_298 : vec2<f32> = ((vec2<f32>(x_291.z, x_291.w) * vec2<f32>(x_293.x, x_293.x)) + vec2<f32>(x_296.z, x_296.w));
    let x_299 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  } else {
    let x_303 : f32 = u_xlat0.x;
    u_xlat6.x = (1.0f / x_303);
    let x_307 : f32 = u_xlat6.x;
    let x_309 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat6.x = (x_307 * x_309);
    let x_313 : f32 = u_xlat0.x;
    let x_315 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_313 * x_315);
    let x_319 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_319), 1.0f);
    let x_325 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_325), 1.0f);
    let x_328 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_328);
    let x_330 : f32 = u_xlat8;
    let x_332 : f32 = u_xlat2.x;
    u_xlat2.x = (x_330 * x_332);
    let x_336 : f32 = u_xlat2.x;
    let x_338 : f32 = u_xlat2.x;
    u_xlat8 = (x_336 * x_338);
    let x_340 : f32 = u_xlat8;
    u_xlat3.x = ((x_340 * 0.0208351f) + -0.085133001f);
    let x_344 : f32 = u_xlat8;
    let x_346 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_344 * x_346) + 0.180141002f);
    let x_350 : f32 = u_xlat8;
    let x_352 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_350 * x_352) + -0.330299497f);
    let x_356 : f32 = u_xlat8;
    let x_358 : f32 = u_xlat3.x;
    u_xlat8 = ((x_356 * x_358) + 0.999866009f);
    let x_361 : f32 = u_xlat8;
    let x_363 : f32 = u_xlat2.x;
    u_xlat3.x = (x_361 * x_363);
    let x_368 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_368));
    let x_372 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_372 * -2.0f) + 1.570796371f);
    let x_376 : bool = u_xlatb9;
    if (x_376) {
      let x_381 : f32 = u_xlat3.x;
      x_377 = x_381;
    } else {
      x_377 = 0.0f;
    }
    let x_383 : f32 = x_377;
    u_xlat3.x = x_383;
    let x_386 : f32 = u_xlat2.x;
    let x_387 : f32 = u_xlat8;
    let x_390 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_386 * x_387) + x_390);
    let x_394 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_394, 1.0f);
    let x_401 : f32 = u_xlat0.x;
    let x_403 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_401 < -(x_403));
    let x_408 : bool = u_xlatb0.x;
    if (x_408) {
      let x_413 : f32 = u_xlat2.x;
      x_409 = -(x_413);
    } else {
      let x_417 : f32 = u_xlat2.x;
      x_409 = x_417;
    }
    let x_418 : f32 = x_409;
    u_xlat0.x = x_418;
    let x_421 : f32 = u_xlat6.x;
    let x_423 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_421 * x_423) + -1.0f);
    let x_427 : vec4<f32> = u_xlat0;
    let x_429 : vec4<f32> = u_xlat0;
    let x_432 : vec4<f32> = u_xlat1;
    let x_434 : vec2<f32> = ((vec2<f32>(x_427.z, x_427.w) * vec2<f32>(x_429.x, x_429.x)) + vec2<f32>(x_432.z, x_432.w));
    let x_435 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
  }
  let x_447 : vec4<f32> = phase0_Input0_1;
  let x_449 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_447.x, x_447.y));
  u_xlat0.x = x_449.x;
  let x_457 : vec4<f32> = u_xlat1;
  let x_459 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_457.x, x_457.y));
  u_xlat1 = x_459;
  let x_460 : vec4<f32> = u_xlat0;
  let x_462 : vec4<f32> = u_xlat1;
  let x_464 : vec3<f32> = (vec3<f32>(x_460.x, x_460.x, x_460.x) * vec3<f32>(x_462.x, x_462.y, x_462.z));
  let x_465 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
  let x_469 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_475 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_475 * 0.5f);
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec3<f32> = u_xlat2;
  let x_483 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_478.x, x_478.y, x_478.z, x_478.y) * vec4<f32>(x_480.x, x_480.x, x_480.x, x_480.x)) + vec4<f32>(x_483.x, x_483.y, x_483.x, x_483.y));
  let x_486 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_486, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_490 : vec4<f32> = u_xlat3;
  let x_493 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_490 * vec4<f32>(x_493, x_493, x_493, x_493));
  let x_501 : vec4<f32> = u_xlat3;
  let x_503 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_501.x, x_501.y));
  u_xlat4 = x_503;
  let x_507 : vec4<f32> = u_xlat3;
  let x_509 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_507.z, x_507.w));
  u_xlat3 = x_509;
  let x_510 : vec4<f32> = u_xlat3;
  let x_511 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_510 + x_511);
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : vec3<f32> = u_xlat2;
  let x_518 : vec2<f32> = u_xlat14;
  u_xlat0 = ((vec4<f32>(x_513.x, x_513.w, x_513.z, x_513.w) * vec4<f32>(x_515.x, x_515.x, x_515.x, x_515.x)) + vec4<f32>(x_518.x, x_518.y, x_518.x, x_518.y));
  let x_521 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_521, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_525 * vec4<f32>(x_527, x_527, x_527, x_527));
  let x_533 : vec4<f32> = u_xlat0;
  let x_535 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_533.x, x_533.y));
  u_xlat4 = x_535;
  let x_536 : vec4<f32> = u_xlat3;
  let x_537 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_536 + x_537);
  let x_542 : vec4<f32> = u_xlat0;
  let x_544 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_542.z, x_542.w));
  u_xlat0 = x_544;
  let x_545 : vec4<f32> = u_xlat0;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_545 + x_546);
  let x_548 : vec4<f32> = u_xlat0;
  let x_551 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_548 * vec4<f32>(x_551.y, x_551.y, x_551.y, x_551.y));
  let x_554 : vec2<f32> = u_xlat14;
  let x_557 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_561 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_563 : vec2<f32> = ((x_554 * vec2<f32>(x_557.x, x_557.y)) + vec2<f32>(x_561.z, x_561.w));
  let x_564 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_563.x, x_563.y, x_564.z);
  let x_571 : vec3<f32> = u_xlat2;
  let x_573 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_571.x, x_571.y));
  let x_574 : vec3<f32> = vec3<f32>(x_573.x, x_573.y, x_573.z);
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_577 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_581 : vec4<f32> = u_xlat3;
  let x_584 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_586 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_584.z, x_584.z, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  u_xlat3.w = 0.0f;
  let x_590 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_590 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_594 : vec4<f32> = u_xlat0;
  let x_598 : vec3<f32> = x_31.x_Bloom_Color;
  let x_599 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) * x_598);
  let x_600 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_603 : f32 = u_xlat0.w;
  u_xlat5.w = (x_603 * 0.25f);
  let x_606 : vec4<f32> = u_xlat1;
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_606 + x_607);
  let x_609 : vec4<f32> = u_xlat3;
  let x_610 : vec4<f32> = u_xlat4;
  let x_612 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_609 * x_610) + x_612);
  let x_617 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1.x = (x_617 < 0.5f);
  let x_621 : bool = u_xlatb1.x;
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
    u_xlatb1.x = (0.040449999f >= x_785);
    let x_789 : bool = u_xlatb1.x;
    if (x_789) {
      let x_794 : f32 = u_xlat2.x;
      x_790 = x_794;
    } else {
      let x_796 : f32 = u_xlat8;
      x_790 = x_796;
    }
    let x_797 : f32 = x_790;
    u_xlat1.x = x_797;
    let x_800 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_800) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_803 : vec4<f32> = u_xlat1;
    let x_805 : vec3<f32> = u_xlat2;
    let x_808 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_803.x, x_803.x, x_803.x) * x_805) + x_808);
    let x_810 : vec4<f32> = u_xlat0;
    let x_812 : vec3<f32> = u_xlat2;
    let x_814 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_810.x, x_810.y, x_810.z) * x_812) + -(vec3<f32>(x_814.x, x_814.y, x_814.z)));
    let x_820 : f32 = x_31.x_Vignette_Opacity;
    let x_822 : vec3<f32> = u_xlat2;
    let x_824 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_820, x_820, x_820) * x_822) + vec3<f32>(x_824.x, x_824.y, x_824.z));
    let x_828 : f32 = u_xlat0.w;
    u_xlat0.x = (x_828 + -1.0f);
    let x_832 : f32 = u_xlat1.x;
    let x_834 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_832 * x_834) + 1.0f);
  }
  let x_838 : vec4<f32> = phase0_Input0_1;
  let x_842 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_846 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_848 : vec2<f32> = ((vec2<f32>(x_838.x, x_838.y) * vec2<f32>(x_842.x, x_842.y)) + vec2<f32>(x_846.z, x_846.w));
  let x_849 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_848.x, x_848.y, x_849.z, x_849.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_856.x, x_856.y));
  u_xlat0.x = x_858.w;
  let x_862 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_862 * 2.0f) + -1.0f);
  let x_868 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_868 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_874 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_874, 0.0f, 1.0f);
  let x_878 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_878 * 2.0f) + -1.0f);
  let x_883 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_883)) + 1.0f);
  let x_889 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_889);
  let x_893 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_893) + 1.0f);
  let x_898 : f32 = u_xlat0.x;
  let x_900 : f32 = u_xlat6.x;
  u_xlat0.x = (x_898 * x_900);
  let x_903 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_903 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_907 : vec3<f32> = u_xlat7;
  u_xlat2 = max(abs(x_907), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_911 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_911);
  let x_913 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_913 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_917 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_917);
  let x_919 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_919 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_928 : vec3<f32> = u_xlat7;
  let x_931 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_928.x, x_928.y, x_928.z, x_928.x));
  u_xlatb1 = vec3<bool>(x_931.x, x_931.y, x_931.z);
  let x_935 : vec3<f32> = u_xlat6;
  hlslcc_movcTemp = x_935;
  let x_937 : bool = u_xlatb1.x;
  if (x_937) {
    let x_942 : f32 = u_xlat6.x;
    x_938 = x_942;
  } else {
    let x_945 : f32 = u_xlat2.x;
    x_938 = x_945;
  }
  let x_946 : f32 = x_938;
  hlslcc_movcTemp.x = x_946;
  let x_949 : bool = u_xlatb1.y;
  if (x_949) {
    let x_954 : f32 = u_xlat6.y;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.y;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  hlslcc_movcTemp.y = x_958;
  let x_961 : bool = u_xlatb1.z;
  if (x_961) {
    let x_966 : f32 = u_xlat6.z;
    x_962 = x_966;
  } else {
    let x_969 : f32 = u_xlat2.z;
    x_962 = x_969;
  }
  let x_970 : f32 = x_962;
  hlslcc_movcTemp.z = x_970;
  let x_972 : vec3<f32> = hlslcc_movcTemp;
  u_xlat6 = x_972;
  let x_973 : vec4<f32> = u_xlat0;
  let x_978 : vec3<f32> = u_xlat6;
  let x_979 : vec3<f32> = ((vec3<f32>(x_973.x, x_973.x, x_973.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_978);
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat0;
  let x_985 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_986 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_988.x, x_988.y, x_988.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_992 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_992 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_995 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_995), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_998 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_998);
  let x_1000 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1000 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1003 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1003);
  let x_1006 : vec4<f32> = u_xlat0;
  let x_1008 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1006.x));
  u_xlatb0 = vec3<bool>(x_1008.x, x_1008.y, x_1008.z);
  let x_1011 : bool = u_xlatb0.x;
  if (x_1011) {
    let x_1016 : f32 = u_xlat1.x;
    x_1012 = x_1016;
  } else {
    let x_1019 : f32 = u_xlat2.x;
    x_1012 = x_1019;
  }
  let x_1020 : f32 = x_1012;
  u_xlat3.x = x_1020;
  let x_1023 : bool = u_xlatb0.y;
  if (x_1023) {
    let x_1028 : f32 = u_xlat1.y;
    x_1024 = x_1028;
  } else {
    let x_1031 : f32 = u_xlat2.y;
    x_1024 = x_1031;
  }
  let x_1032 : f32 = x_1024;
  u_xlat3.y = x_1032;
  let x_1035 : bool = u_xlatb0.z;
  if (x_1035) {
    let x_1040 : f32 = u_xlat1.z;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat2.z;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  u_xlat3.z = x_1044;
  let x_1048 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1048;
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

