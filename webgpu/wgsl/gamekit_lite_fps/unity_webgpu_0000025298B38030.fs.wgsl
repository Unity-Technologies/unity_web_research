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

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

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
  var x_930 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1077 : f32;
  var x_1089 : f32;
  var x_1101 : f32;
  var x_1151 : f32;
  var x_1163 : f32;
  var x_1175 : f32;
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
  u_xlat0 = (vec4<f32>(x_469.x, x_469.y, x_469.x, x_469.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_473 : vec4<f32> = u_xlat0;
  let x_479 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_482 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_473.x, x_473.y, x_473.w, x_473.y)) * vec4<f32>(x_479.x, x_479.x, x_479.x, x_479.x)) + vec4<f32>(x_482.x, x_482.y, x_482.x, x_482.y));
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_485, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_489 : vec4<f32> = u_xlat3;
  let x_492 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_489 * vec4<f32>(x_492, x_492, x_492, x_492));
  let x_500 : vec4<f32> = u_xlat3;
  let x_502 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_500.x, x_500.y));
  u_xlat4 = x_502;
  let x_506 : vec4<f32> = u_xlat3;
  let x_508 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_506.z, x_506.w));
  u_xlat3 = x_508;
  let x_509 : vec4<f32> = u_xlat3;
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_509 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_513);
  let x_515 : vec4<f32> = u_xlat0;
  let x_519 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_522 : vec2<f32> = u_xlat14;
  let x_523 : vec2<f32> = ((-(vec2<f32>(x_515.z, x_515.y)) * vec2<f32>(x_519.x, x_519.x)) + x_522);
  let x_524 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_523.x, x_523.y, x_524.z);
  let x_526 : vec3<f32> = u_xlat2;
  let x_530 : vec2<f32> = clamp(vec2<f32>(x_526.x, x_526.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_531 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_530.x, x_530.y, x_531.z);
  let x_533 : vec3<f32> = u_xlat2;
  let x_536 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_538 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_536, x_536));
  let x_539 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_538.x, x_538.y, x_539.z);
  let x_544 : vec3<f32> = u_xlat2;
  let x_546 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_544.x, x_544.y));
  u_xlat4 = x_546;
  let x_547 : vec4<f32> = u_xlat3;
  let x_548 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_547 + x_548);
  let x_550 : vec4<f32> = u_xlat0;
  let x_553 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_556 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_550.z, x_550.w, x_550.x, x_550.w) * vec4<f32>(x_553.x, x_553.x, x_553.x, x_553.x)) + vec4<f32>(x_556.x, x_556.y, x_556.x, x_556.y));
  let x_559 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_559, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_563 * vec4<f32>(x_565, x_565, x_565, x_565));
  let x_572 : vec4<f32> = u_xlat4;
  let x_574 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_572.x, x_572.y));
  u_xlat5 = x_574;
  let x_575 : vec4<f32> = u_xlat5;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_575 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_577);
  let x_579 : vec2<f32> = u_xlat14;
  let x_580 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_579.x, x_579.y, x_580.z);
  let x_582 : vec3<f32> = u_xlat2;
  let x_586 : vec2<f32> = clamp(vec2<f32>(x_582.x, x_582.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_587 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_586.x, x_586.y, x_587.z);
  let x_589 : vec3<f32> = u_xlat2;
  let x_592 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_594 : vec2<f32> = (vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592, x_592));
  let x_595 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_594.x, x_594.y, x_595.z);
  let x_600 : vec3<f32> = u_xlat2;
  let x_602 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_600.x, x_600.y));
  u_xlat5 = x_602;
  let x_603 : vec4<f32> = u_xlat5;
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_603 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_607);
  let x_612 : vec4<f32> = u_xlat4;
  let x_614 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_612.z, x_612.w));
  u_xlat4 = x_614;
  let x_615 : vec4<f32> = u_xlat4;
  let x_617 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_615 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_617);
  let x_619 : vec4<f32> = u_xlat0;
  let x_622 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_625 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_619.z, x_619.y, x_619.w, x_619.y) * vec4<f32>(x_622.x, x_622.x, x_622.x, x_622.x)) + vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y));
  let x_628 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_628, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_632 * vec4<f32>(x_634, x_634, x_634, x_634));
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_640.x, x_640.y));
  u_xlat5 = x_642;
  let x_643 : vec4<f32> = u_xlat3;
  let x_644 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_643 + x_644);
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_649.z, x_649.w));
  u_xlat4 = x_651;
  let x_652 : vec4<f32> = u_xlat4;
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_652 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_654);
  let x_656 : vec4<f32> = u_xlat0;
  let x_659 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_662 : vec2<f32> = u_xlat14;
  let x_663 : vec2<f32> = ((vec2<f32>(x_656.x, x_656.y) * vec2<f32>(x_659.x, x_659.x)) + x_662);
  let x_664 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat0;
  let x_670 : vec2<f32> = clamp(vec2<f32>(x_666.x, x_666.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_673 : vec4<f32> = u_xlat0;
  let x_676 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_678 : vec2<f32> = (vec2<f32>(x_673.x, x_673.y) * vec2<f32>(x_676, x_676));
  let x_679 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_678.x, x_678.y, x_679.z, x_679.w);
  let x_684 : vec4<f32> = u_xlat0;
  let x_686 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_684.x, x_684.y));
  u_xlat0 = x_686;
  let x_687 : vec4<f32> = u_xlat0;
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_687 + x_688);
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_690 * vec4<f32>(x_692.y, x_692.y, x_692.y, x_692.y));
  let x_695 : vec2<f32> = u_xlat14;
  let x_698 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_702 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_704 : vec2<f32> = ((x_695 * vec2<f32>(x_698.x, x_698.y)) + vec2<f32>(x_702.z, x_702.w));
  let x_705 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_704.x, x_704.y, x_705.z);
  let x_712 : vec3<f32> = u_xlat2;
  let x_714 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_712.x, x_712.y));
  let x_715 : vec3<f32> = vec3<f32>(x_714.x, x_714.y, x_714.z);
  let x_716 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_718 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_722 : vec4<f32> = u_xlat3;
  let x_725 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_727 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_725.z, x_725.z, x_725.z));
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  u_xlat3.w = 0.0f;
  let x_731 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_731 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_734 : vec4<f32> = u_xlat0;
  let x_738 : vec3<f32> = x_31.x_Bloom_Color;
  let x_739 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * x_738);
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : f32 = u_xlat0.w;
  u_xlat5.w = (x_743 * 0.0625f);
  let x_746 : vec4<f32> = u_xlat1;
  let x_747 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_746 + x_747);
  let x_749 : vec4<f32> = u_xlat3;
  let x_750 : vec4<f32> = u_xlat4;
  let x_752 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_749 * x_750) + x_752);
  let x_757 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1.x = (x_757 < 0.5f);
  let x_761 : bool = u_xlatb1.x;
  if (x_761) {
    let x_764 : vec2<f32> = u_xlat14;
    let x_768 : vec2<f32> = x_31.x_Vignette_Center;
    let x_770 : vec2<f32> = (x_764 + -(x_768));
    let x_771 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
    let x_773 : vec4<f32> = u_xlat1;
    let x_778 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_780 : vec2<f32> = (abs(vec2<f32>(x_773.y, x_773.x)) * vec2<f32>(x_778.x, x_778.x));
    let x_781 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_781.x, x_780.x, x_780.y, x_781.w);
    let x_786 : f32 = x_31.x_ScreenParams.x;
    let x_788 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_786 / x_788);
    let x_790 : f32 = u_xlat19;
    u_xlat19 = (x_790 + -1.0f);
    let x_793 : f32 = x_31.x_Vignette_Settings.w;
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
    let x_822 : vec4<f32> = x_31.x_Vignette_Settings;
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
    let x_854 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_852 * x_854);
    let x_858 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_858);
    let x_864 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_864) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_868 : vec4<f32> = u_xlat1;
    let x_870 : vec3<f32> = u_xlat7;
    let x_873 : vec3<f32> = x_31.x_Vignette_Color;
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
    u_xlatb1.x = (0.040449999f >= x_925);
    let x_929 : bool = u_xlatb1.x;
    if (x_929) {
      let x_934 : f32 = u_xlat2.x;
      x_930 = x_934;
    } else {
      let x_936 : f32 = u_xlat8;
      x_930 = x_936;
    }
    let x_937 : f32 = x_930;
    u_xlat1.x = x_937;
    let x_940 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = (-(x_940) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_943 : vec4<f32> = u_xlat1;
    let x_945 : vec3<f32> = u_xlat2;
    let x_948 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat2 = ((vec3<f32>(x_943.x, x_943.x, x_943.x) * x_945) + x_948);
    let x_950 : vec4<f32> = u_xlat0;
    let x_952 : vec3<f32> = u_xlat2;
    let x_954 : vec4<f32> = u_xlat0;
    u_xlat2 = ((vec3<f32>(x_950.x, x_950.y, x_950.z) * x_952) + -(vec3<f32>(x_954.x, x_954.y, x_954.z)));
    let x_960 : f32 = x_31.x_Vignette_Opacity;
    let x_962 : vec3<f32> = u_xlat2;
    let x_964 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_960, x_960, x_960) * x_962) + vec3<f32>(x_964.x, x_964.y, x_964.z));
    let x_968 : f32 = u_xlat0.w;
    u_xlat0.x = (x_968 + -1.0f);
    let x_972 : f32 = u_xlat1.x;
    let x_974 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_972 * x_974) + 1.0f);
  }
  let x_978 : vec4<f32> = phase0_Input0_1;
  let x_982 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_986 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_988 : vec2<f32> = ((vec2<f32>(x_978.x, x_978.y) * vec2<f32>(x_982.x, x_982.y)) + vec2<f32>(x_986.z, x_986.w));
  let x_989 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_988.x, x_988.y, x_989.z, x_989.w);
  let x_996 : vec4<f32> = u_xlat0;
  let x_998 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_996.x, x_996.y));
  u_xlat0.x = x_998.w;
  let x_1002 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1002 * 2.0f) + -1.0f);
  let x_1007 : f32 = u_xlat0.x;
  u_xlat6.x = ((x_1007 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1013 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1013, 0.0f, 1.0f);
  let x_1017 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1017 * 2.0f) + -1.0f);
  let x_1022 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1022)) + 1.0f);
  let x_1028 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_1028);
  let x_1032 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1032) + 1.0f);
  let x_1037 : f32 = u_xlat0.x;
  let x_1039 : f32 = u_xlat6.x;
  u_xlat0.x = (x_1037 * x_1039);
  let x_1042 : vec3<f32> = u_xlat7;
  u_xlat6 = (x_1042 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1046 : vec3<f32> = u_xlat7;
  u_xlat2 = max(abs(x_1046), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1050 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1050);
  let x_1052 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1052 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1056 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1056);
  let x_1058 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1058 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1067 : vec3<f32> = u_xlat7;
  let x_1070 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1067.x));
  u_xlatb1 = vec3<bool>(x_1070.x, x_1070.y, x_1070.z);
  let x_1074 : vec3<f32> = u_xlat6;
  hlslcc_movcTemp = x_1074;
  let x_1076 : bool = u_xlatb1.x;
  if (x_1076) {
    let x_1081 : f32 = u_xlat6.x;
    x_1077 = x_1081;
  } else {
    let x_1084 : f32 = u_xlat2.x;
    x_1077 = x_1084;
  }
  let x_1085 : f32 = x_1077;
  hlslcc_movcTemp.x = x_1085;
  let x_1088 : bool = u_xlatb1.y;
  if (x_1088) {
    let x_1093 : f32 = u_xlat6.y;
    x_1089 = x_1093;
  } else {
    let x_1096 : f32 = u_xlat2.y;
    x_1089 = x_1096;
  }
  let x_1097 : f32 = x_1089;
  hlslcc_movcTemp.y = x_1097;
  let x_1100 : bool = u_xlatb1.z;
  if (x_1100) {
    let x_1105 : f32 = u_xlat6.z;
    x_1101 = x_1105;
  } else {
    let x_1108 : f32 = u_xlat2.z;
    x_1101 = x_1108;
  }
  let x_1109 : f32 = x_1101;
  hlslcc_movcTemp.z = x_1109;
  let x_1111 : vec3<f32> = hlslcc_movcTemp;
  u_xlat6 = x_1111;
  let x_1112 : vec4<f32> = u_xlat0;
  let x_1117 : vec3<f32> = u_xlat6;
  let x_1118 : vec3<f32> = ((vec3<f32>(x_1112.x, x_1112.x, x_1112.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1117);
  let x_1119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat0;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1125 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1131 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1131 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1134 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1134), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1137 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1137);
  let x_1139 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1139 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1142 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1142);
  let x_1145 : vec4<f32> = u_xlat0;
  let x_1147 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.x));
  u_xlatb0 = vec3<bool>(x_1147.x, x_1147.y, x_1147.z);
  let x_1150 : bool = u_xlatb0.x;
  if (x_1150) {
    let x_1155 : f32 = u_xlat1.x;
    x_1151 = x_1155;
  } else {
    let x_1158 : f32 = u_xlat2.x;
    x_1151 = x_1158;
  }
  let x_1159 : f32 = x_1151;
  u_xlat3.x = x_1159;
  let x_1162 : bool = u_xlatb0.y;
  if (x_1162) {
    let x_1167 : f32 = u_xlat1.y;
    x_1163 = x_1167;
  } else {
    let x_1170 : f32 = u_xlat2.y;
    x_1163 = x_1170;
  }
  let x_1171 : f32 = x_1163;
  u_xlat3.y = x_1171;
  let x_1174 : bool = u_xlatb0.z;
  if (x_1174) {
    let x_1179 : f32 = u_xlat1.z;
    x_1175 = x_1179;
  } else {
    let x_1182 : f32 = u_xlat2.z;
    x_1175 = x_1182;
  }
  let x_1183 : f32 = x_1175;
  u_xlat3.z = x_1183;
  let x_1187 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1187;
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

