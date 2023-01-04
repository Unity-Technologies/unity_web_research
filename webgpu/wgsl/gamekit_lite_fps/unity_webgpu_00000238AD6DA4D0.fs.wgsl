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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec2<f32>;

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

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlatb1 : bool;

var<private> u_xlat19 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat13 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_398 : f32;
  var x_777 : f32;
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
    let x_86 : vec2<f32> = u_xlat2;
    let x_89 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat14 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat14.x;
    u_xlat3.x = sin(x_94);
    let x_99 : f32 = u_xlat14.x;
    u_xlat4.x = cos(x_99);
    let x_103 : f32 = u_xlat3.x;
    let x_105 : f32 = u_xlat4.x;
    u_xlat14.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat14.y;
    u_xlat20 = (1.0f / x_112);
    let x_115 : f32 = u_xlat14.x;
    let x_116 : f32 = u_xlat20;
    u_xlat14.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat14;
    let x_126 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + vec2<f32>(x_126.x, x_126.y));
  } else {
    let x_131 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat3.x;
    let x_137 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat3.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat2.x;
    let x_143 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat2.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat2.x;
    u_xlat9 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat2.x;
    u_xlat15 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat15;
    u_xlat15 = (1.0f / x_156);
    let x_158 : f32 = u_xlat15;
    let x_159 : f32 = u_xlat9;
    u_xlat9 = (x_158 * x_159);
    let x_161 : f32 = u_xlat9;
    let x_162 : f32 = u_xlat9;
    u_xlat15 = (x_161 * x_162);
    let x_165 : f32 = u_xlat15;
    u_xlat21 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat15;
    let x_171 : f32 = u_xlat21;
    u_xlat21 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat15;
    let x_176 : f32 = u_xlat21;
    u_xlat21 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat15;
    let x_181 : f32 = u_xlat21;
    u_xlat15 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat15;
    let x_186 : f32 = u_xlat9;
    u_xlat21 = (x_185 * x_186);
    let x_190 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_190));
    let x_193 : f32 = u_xlat21;
    u_xlat21 = ((x_193 * -2.0f) + 1.570796371f);
    let x_198 : bool = u_xlatb4;
    let x_199 : f32 = u_xlat21;
    u_xlat21 = select(0.0f, x_199, x_198);
    let x_201 : f32 = u_xlat9;
    let x_202 : f32 = u_xlat15;
    let x_204 : f32 = u_xlat21;
    u_xlat9 = ((x_201 * x_202) + x_204);
    let x_207 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_207, 1.0f);
    let x_212 : f32 = u_xlat2.x;
    let x_214 : f32 = u_xlat2.x;
    u_xlatb2 = (x_212 < -(x_214));
    let x_217 : bool = u_xlatb2;
    if (x_217) {
      let x_222 : f32 = u_xlat9;
      x_219 = -(x_222);
    } else {
      let x_225 : f32 = u_xlat9;
      x_219 = x_225;
    }
    let x_226 : f32 = x_219;
    u_xlat2.x = x_226;
    let x_229 : f32 = u_xlat3.x;
    let x_231 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_229 * x_231) + -1.0f);
    let x_235 : vec4<f32> = u_xlat0;
    let x_237 : vec2<f32> = u_xlat2;
    let x_240 : vec4<f32> = u_xlat1;
    u_xlat14 = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(x_237.x, x_237.x)) + vec2<f32>(x_240.x, x_240.y));
  }
  let x_243 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_243.z, x_243.w), vec2<f32>(x_245.z, x_245.w));
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_250);
  let x_253 : bool = u_xlatb8;
  if (x_253) {
    let x_256 : vec4<f32> = u_xlat0;
    let x_259 : vec4<f32> = x_31.x_Distortion_Amount;
    let x_261 : vec2<f32> = (vec2<f32>(x_256.x, x_256.x) * vec2<f32>(x_259.x, x_259.y));
    let x_262 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_262.z, x_262.w);
    let x_265 : f32 = u_xlat1.x;
    u_xlat2.x = cos(x_265);
    let x_269 : f32 = u_xlat1.x;
    u_xlat1.x = sin(x_269);
    let x_274 : f32 = u_xlat1.x;
    let x_276 : f32 = u_xlat2.x;
    u_xlat6 = (x_274 / x_276);
    let x_279 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_279);
    let x_282 : f32 = u_xlat6;
    let x_284 : f32 = u_xlat1.x;
    u_xlat6 = ((x_282 * x_284) + -1.0f);
    let x_287 : vec4<f32> = u_xlat0;
    let x_289 : f32 = u_xlat6;
    let x_292 : vec4<f32> = u_xlat1;
    let x_294 : vec2<f32> = ((vec2<f32>(x_287.z, x_287.w) * vec2<f32>(x_289, x_289)) + vec2<f32>(x_292.z, x_292.w));
    let x_295 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_295.w);
  } else {
    let x_299 : f32 = u_xlat0.x;
    u_xlat6 = (1.0f / x_299);
    let x_301 : f32 = u_xlat6;
    let x_303 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat6 = (x_301 * x_303);
    let x_306 : f32 = u_xlat0.x;
    let x_308 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_306 * x_308);
    let x_312 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_312), 1.0f);
    let x_318 : f32 = u_xlat0.x;
    u_xlat8 = max(abs(x_318), 1.0f);
    let x_321 : f32 = u_xlat8;
    u_xlat8 = (1.0f / x_321);
    let x_323 : f32 = u_xlat8;
    let x_325 : f32 = u_xlat2.x;
    u_xlat2.x = (x_323 * x_325);
    let x_329 : f32 = u_xlat2.x;
    let x_331 : f32 = u_xlat2.x;
    u_xlat8 = (x_329 * x_331);
    let x_333 : f32 = u_xlat8;
    u_xlat3.x = ((x_333 * 0.0208351f) + -0.085133001f);
    let x_337 : f32 = u_xlat8;
    let x_339 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_337 * x_339) + 0.180141002f);
    let x_343 : f32 = u_xlat8;
    let x_345 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_343 * x_345) + -0.330299497f);
    let x_349 : f32 = u_xlat8;
    let x_351 : f32 = u_xlat3.x;
    u_xlat8 = ((x_349 * x_351) + 0.999866009f);
    let x_354 : f32 = u_xlat8;
    let x_356 : f32 = u_xlat2.x;
    u_xlat3.x = (x_354 * x_356);
    let x_361 : f32 = u_xlat0.x;
    u_xlatb9 = (1.0f < abs(x_361));
    let x_365 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_365 * -2.0f) + 1.570796371f);
    let x_369 : bool = u_xlatb9;
    if (x_369) {
      let x_374 : f32 = u_xlat3.x;
      x_370 = x_374;
    } else {
      x_370 = 0.0f;
    }
    let x_376 : f32 = x_370;
    u_xlat3.x = x_376;
    let x_379 : f32 = u_xlat2.x;
    let x_380 : f32 = u_xlat8;
    let x_383 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_379 * x_380) + x_383);
    let x_387 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_387, 1.0f);
    let x_392 : f32 = u_xlat0.x;
    let x_394 : f32 = u_xlat0.x;
    u_xlatb0 = (x_392 < -(x_394));
    let x_397 : bool = u_xlatb0;
    if (x_397) {
      let x_402 : f32 = u_xlat2.x;
      x_398 = -(x_402);
    } else {
      let x_406 : f32 = u_xlat2.x;
      x_398 = x_406;
    }
    let x_407 : f32 = x_398;
    u_xlat0.x = x_407;
    let x_409 : f32 = u_xlat6;
    let x_411 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_409 * x_411) + -1.0f);
    let x_415 : vec4<f32> = u_xlat0;
    let x_417 : vec4<f32> = u_xlat0;
    let x_420 : vec4<f32> = u_xlat1;
    let x_422 : vec2<f32> = ((vec2<f32>(x_415.z, x_415.w) * vec2<f32>(x_417.x, x_417.x)) + vec2<f32>(x_420.z, x_420.w));
    let x_423 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
  }
  let x_435 : vec4<f32> = phase0_Input0_1;
  let x_437 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_435.x, x_435.y));
  u_xlat0.x = x_437.x;
  let x_445 : vec4<f32> = u_xlat1;
  let x_447 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_445.x, x_445.y));
  u_xlat1 = x_447;
  let x_448 : vec4<f32> = u_xlat0;
  let x_450 : vec4<f32> = u_xlat1;
  let x_452 : vec3<f32> = (vec3<f32>(x_448.x, x_448.x, x_448.x) * vec3<f32>(x_450.x, x_450.y, x_450.z));
  let x_453 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_452.x, x_452.y, x_452.z, x_453.w);
  let x_457 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_457.x, x_457.y, x_457.x, x_457.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_463 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_463 * 0.5f);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec2<f32> = u_xlat2;
  let x_471 : vec2<f32> = u_xlat14;
  u_xlat3 = ((vec4<f32>(x_466.x, x_466.y, x_466.z, x_466.y) * vec4<f32>(x_468.x, x_468.x, x_468.x, x_468.x)) + vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y));
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
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_498 + x_499);
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec2<f32> = u_xlat2;
  let x_506 : vec2<f32> = u_xlat14;
  u_xlat0 = ((vec4<f32>(x_501.x, x_501.w, x_501.z, x_501.w) * vec4<f32>(x_503.x, x_503.x, x_503.x, x_503.x)) + vec4<f32>(x_506.x, x_506.y, x_506.x, x_506.y));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_509, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_513 * vec4<f32>(x_515, x_515, x_515, x_515));
  let x_521 : vec4<f32> = u_xlat0;
  let x_523 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_521.x, x_521.y));
  u_xlat4 = x_523;
  let x_524 : vec4<f32> = u_xlat3;
  let x_525 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_524 + x_525);
  let x_530 : vec4<f32> = u_xlat0;
  let x_532 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_530.z, x_530.w));
  u_xlat0 = x_532;
  let x_533 : vec4<f32> = u_xlat0;
  let x_534 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_533 + x_534);
  let x_536 : vec4<f32> = u_xlat0;
  let x_539 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_536 * vec4<f32>(x_539.y, x_539.y, x_539.y, x_539.y));
  let x_542 : vec2<f32> = u_xlat14;
  let x_545 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_549 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  u_xlat2 = ((x_542 * vec2<f32>(x_545.x, x_545.y)) + vec2<f32>(x_549.z, x_549.w));
  let x_557 : vec2<f32> = u_xlat2;
  let x_558 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, x_557);
  let x_559 : vec3<f32> = vec3<f32>(x_558.x, x_558.y, x_558.z);
  let x_560 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
  let x_562 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_562 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_566 : vec4<f32> = u_xlat3;
  let x_569 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_571 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) * vec3<f32>(x_569.z, x_569.z, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  u_xlat3.w = 0.0f;
  let x_575 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_575 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_579 : vec4<f32> = u_xlat0;
  let x_583 : vec3<f32> = x_31.x_Bloom_Color;
  let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) * x_583);
  let x_585 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_588 : f32 = u_xlat0.w;
  u_xlat5.w = (x_588 * 0.25f);
  let x_591 : vec4<f32> = u_xlat1;
  let x_592 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_591 + x_592);
  let x_594 : vec4<f32> = u_xlat3;
  let x_595 : vec4<f32> = u_xlat4;
  let x_597 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_594 * x_595) + x_597);
  let x_602 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_602 < 0.5f);
  let x_604 : bool = u_xlatb1;
  if (x_604) {
    let x_607 : vec2<f32> = u_xlat14;
    let x_611 : vec2<f32> = x_31.x_Vignette_Center;
    let x_613 : vec2<f32> = (x_607 + -(x_611));
    let x_614 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_613.x, x_613.y, x_614.z, x_614.w);
    let x_616 : vec4<f32> = u_xlat1;
    let x_621 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_623 : vec2<f32> = (abs(vec2<f32>(x_616.y, x_616.x)) * vec2<f32>(x_621.x, x_621.x));
    let x_624 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_624.x, x_623.x, x_623.y, x_624.w);
    let x_629 : f32 = x_31.x_ScreenParams.x;
    let x_631 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_629 / x_631);
    let x_633 : f32 = u_xlat19;
    u_xlat19 = (x_633 + -1.0f);
    let x_636 : f32 = x_31.x_Vignette_Settings.w;
    let x_637 : f32 = u_xlat19;
    u_xlat19 = ((x_636 * x_637) + 1.0f);
    let x_640 : f32 = u_xlat19;
    let x_643 : f32 = u_xlat1.z;
    u_xlat1.x = (x_640 * x_643);
    let x_646 : vec4<f32> = u_xlat1;
    let x_647 : vec2<f32> = vec2<f32>(x_646.x, x_646.y);
    let x_648 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
    let x_650 : vec4<f32> = u_xlat1;
    let x_654 : vec2<f32> = clamp(vec2<f32>(x_650.x, x_650.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_655 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
    let x_657 : vec4<f32> = u_xlat1;
    let x_659 : vec2<f32> = log2(vec2<f32>(x_657.x, x_657.y));
    let x_660 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
    let x_662 : vec4<f32> = u_xlat1;
    let x_665 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_667 : vec2<f32> = (vec2<f32>(x_662.x, x_662.y) * vec2<f32>(x_665.z, x_665.z));
    let x_668 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_667.x, x_667.y, x_668.z, x_668.w);
    let x_670 : vec4<f32> = u_xlat1;
    let x_672 : vec2<f32> = exp2(vec2<f32>(x_670.x, x_670.y));
    let x_673 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
    let x_675 : vec4<f32> = u_xlat1;
    let x_677 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_675.x, x_675.y), vec2<f32>(x_677.x, x_677.y));
    let x_682 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_682) + 1.0f);
    let x_687 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_687, 0.0f);
    let x_691 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_691);
    let x_695 : f32 = u_xlat1.x;
    let x_697 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_695 * x_697);
    let x_701 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_701);
    let x_708 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_708) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_712 : vec4<f32> = u_xlat1;
    let x_714 : vec3<f32> = u_xlat7;
    let x_717 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_712.x, x_712.x, x_712.x) * x_714) + x_717);
    let x_719 : vec4<f32> = u_xlat0;
    let x_721 : vec3<f32> = u_xlat7;
    let x_722 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) * x_721);
    let x_723 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
    let x_726 : f32 = u_xlat0.w;
    u_xlat7.x = (x_726 + -1.0f);
    let x_730 : f32 = u_xlat1.x;
    let x_732 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_730 * x_732) + 1.0f);
  } else {
    let x_742 : vec2<f32> = u_xlat14;
    let x_743 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_742);
    u_xlat1.x = x_743.w;
    let x_747 : f32 = u_xlat1.x;
    u_xlat1.z = (x_747 + 0.055f);
    let x_751 : vec4<f32> = u_xlat1;
    let x_756 : vec2<f32> = (vec2<f32>(x_751.x, x_751.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_757 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_756.x, x_756.y, x_757.z);
    let x_761 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_761), 1.1920929e-07f);
    let x_765 : f32 = u_xlat13;
    u_xlat13 = log2(x_765);
    let x_767 : f32 = u_xlat13;
    u_xlat13 = (x_767 * 2.400000095f);
    let x_770 : f32 = u_xlat13;
    u_xlat13 = exp2(x_770);
    let x_774 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_774);
    let x_776 : bool = u_xlatb1;
    if (x_776) {
      let x_781 : f32 = u_xlat7.x;
      x_777 = x_781;
    } else {
      let x_783 : f32 = u_xlat13;
      x_777 = x_783;
    }
    let x_784 : f32 = x_777;
    u_xlat1.x = x_784;
    let x_787 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_787) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_790 : vec4<f32> = u_xlat1;
    let x_792 : vec3<f32> = u_xlat7;
    let x_795 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_790.x, x_790.x, x_790.x) * x_792) + x_795);
    let x_797 : vec4<f32> = u_xlat0;
    let x_799 : vec3<f32> = u_xlat7;
    let x_801 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * x_799) + -(vec3<f32>(x_801.x, x_801.y, x_801.z)));
    let x_807 : f32 = x_31.x_Vignette_Opacity;
    let x_809 : vec3<f32> = u_xlat7;
    let x_811 : vec4<f32> = u_xlat0;
    let x_813 : vec3<f32> = ((vec3<f32>(x_807, x_807, x_807) * x_809) + vec3<f32>(x_811.x, x_811.y, x_811.z));
    let x_814 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
    let x_817 : f32 = u_xlat0.w;
    u_xlat0.x = (x_817 + -1.0f);
    let x_821 : f32 = u_xlat1.x;
    let x_823 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_821 * x_823) + 1.0f);
  }
  let x_829 : f32 = x_31.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_829);
  let x_831 : bool = u_xlatb0;
  if (x_831) {
    let x_834 : vec4<f32> = u_xlat3;
    let x_835 : vec3<f32> = vec3<f32>(x_834.x, x_834.y, x_834.z);
    let x_836 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_835.x, x_835.y, x_835.z, x_836.w);
    let x_838 : vec4<f32> = u_xlat0;
    let x_842 : vec3<f32> = clamp(vec3<f32>(x_838.x, x_838.y, x_838.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_843 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
    let x_845 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_845.x, x_845.y, x_845.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_855 : vec4<f32> = u_xlat3;
  SV_Target0 = x_855;
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

