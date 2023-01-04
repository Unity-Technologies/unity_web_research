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

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

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
  var x_907 : f32;
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
  u_xlat0 = (vec4<f32>(x_457.x, x_457.y, x_457.x, x_457.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_461 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_470 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_461.x, x_461.y, x_461.w, x_461.y)) * vec4<f32>(x_467.x, x_467.x, x_467.x, x_467.x)) + vec4<f32>(x_470.x, x_470.y, x_470.x, x_470.y));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_473, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_477 : vec4<f32> = u_xlat3;
  let x_480 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_477 * vec4<f32>(x_480, x_480, x_480, x_480));
  let x_488 : vec4<f32> = u_xlat3;
  let x_490 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_488.x, x_488.y));
  u_xlat4 = x_490;
  let x_494 : vec4<f32> = u_xlat3;
  let x_496 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_494.z, x_494.w));
  u_xlat3 = x_496;
  let x_497 : vec4<f32> = u_xlat3;
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_497 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_501);
  let x_503 : vec4<f32> = u_xlat0;
  let x_507 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_510 : vec2<f32> = u_xlat14;
  u_xlat2 = ((-(vec2<f32>(x_503.z, x_503.y)) * vec2<f32>(x_507.x, x_507.x)) + x_510);
  let x_512 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_512, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_516 : vec2<f32> = u_xlat2;
  let x_518 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat2 = (x_516 * vec2<f32>(x_518, x_518));
  let x_524 : vec2<f32> = u_xlat2;
  let x_525 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_524);
  u_xlat4 = x_525;
  let x_526 : vec4<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_526 + x_527);
  let x_529 : vec4<f32> = u_xlat0;
  let x_532 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_535 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_529.z, x_529.w, x_529.x, x_529.w) * vec4<f32>(x_532.x, x_532.x, x_532.x, x_532.x)) + vec4<f32>(x_535.x, x_535.y, x_535.x, x_535.y));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_538, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_542 * vec4<f32>(x_544, x_544, x_544, x_544));
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_551.x, x_551.y));
  u_xlat5 = x_553;
  let x_554 : vec4<f32> = u_xlat5;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_554 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_556);
  let x_558 : vec2<f32> = u_xlat14;
  u_xlat2 = x_558;
  let x_559 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_559, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_563 : vec2<f32> = u_xlat2;
  let x_565 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat2 = (x_563 * vec2<f32>(x_565, x_565));
  let x_571 : vec2<f32> = u_xlat2;
  let x_572 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_571);
  u_xlat5 = x_572;
  let x_573 : vec4<f32> = u_xlat5;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_573 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_577);
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_582.z, x_582.w));
  u_xlat4 = x_584;
  let x_585 : vec4<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_585 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_587);
  let x_589 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_595 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_589.z, x_589.y, x_589.w, x_589.y) * vec4<f32>(x_592.x, x_592.x, x_592.x, x_592.x)) + vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y));
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_598, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_602 * vec4<f32>(x_604, x_604, x_604, x_604));
  let x_610 : vec4<f32> = u_xlat4;
  let x_612 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_610.x, x_610.y));
  u_xlat5 = x_612;
  let x_613 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_613 + x_614);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_619.z, x_619.w));
  u_xlat4 = x_621;
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_622 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_624);
  let x_626 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_632 : vec2<f32> = u_xlat14;
  let x_633 : vec2<f32> = ((vec2<f32>(x_626.x, x_626.y) * vec2<f32>(x_629.x, x_629.x)) + x_632);
  let x_634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat0;
  let x_640 : vec2<f32> = clamp(vec2<f32>(x_636.x, x_636.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_648 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_646, x_646));
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_654.x, x_654.y));
  u_xlat0 = x_656;
  let x_657 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_657 + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_660 * vec4<f32>(x_662.y, x_662.y, x_662.y, x_662.y));
  let x_665 : vec2<f32> = u_xlat14;
  let x_668 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_672 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  u_xlat2 = ((x_665 * vec2<f32>(x_668.x, x_668.y)) + vec2<f32>(x_672.z, x_672.w));
  let x_680 : vec2<f32> = u_xlat2;
  let x_681 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, x_680);
  let x_682 : vec3<f32> = vec3<f32>(x_681.x, x_681.y, x_681.z);
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat0;
  let x_689 : vec3<f32> = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_690 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
  let x_692 : vec4<f32> = u_xlat3;
  let x_695 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_697 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(x_695.z, x_695.z, x_695.z));
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_697.x, x_697.y, x_697.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_700 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_703 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = x_31.x_Bloom_Color;
  let x_708 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * x_707);
  let x_709 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
  let x_712 : f32 = u_xlat0.w;
  u_xlat5.w = (x_712 * 0.0625f);
  let x_715 : vec4<f32> = u_xlat1;
  let x_716 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_715 + x_716);
  let x_718 : vec4<f32> = u_xlat4;
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec3<f32> = (vec3<f32>(x_718.x, x_718.y, x_718.z) * vec3<f32>(x_720.x, x_720.y, x_720.z));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  u_xlat1.w = 0.0f;
  let x_726 : vec4<f32> = u_xlat0;
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_726 + x_727);
  let x_732 : f32 = x_31.x_Vignette_Mode;
  u_xlatb1 = (x_732 < 0.5f);
  let x_734 : bool = u_xlatb1;
  if (x_734) {
    let x_737 : vec2<f32> = u_xlat14;
    let x_741 : vec2<f32> = x_31.x_Vignette_Center;
    let x_743 : vec2<f32> = (x_737 + -(x_741));
    let x_744 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
    let x_746 : vec4<f32> = u_xlat1;
    let x_751 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_753 : vec2<f32> = (abs(vec2<f32>(x_746.y, x_746.x)) * vec2<f32>(x_751.x, x_751.x));
    let x_754 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_754.x, x_753.x, x_753.y, x_754.w);
    let x_759 : f32 = x_31.x_ScreenParams.x;
    let x_761 : f32 = x_31.x_ScreenParams.y;
    u_xlat19 = (x_759 / x_761);
    let x_763 : f32 = u_xlat19;
    u_xlat19 = (x_763 + -1.0f);
    let x_766 : f32 = x_31.x_Vignette_Settings.w;
    let x_767 : f32 = u_xlat19;
    u_xlat19 = ((x_766 * x_767) + 1.0f);
    let x_770 : f32 = u_xlat19;
    let x_773 : f32 = u_xlat1.z;
    u_xlat1.x = (x_770 * x_773);
    let x_776 : vec4<f32> = u_xlat1;
    let x_777 : vec2<f32> = vec2<f32>(x_776.x, x_776.y);
    let x_778 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_777.x, x_777.y, x_778.z, x_778.w);
    let x_780 : vec4<f32> = u_xlat1;
    let x_784 : vec2<f32> = clamp(vec2<f32>(x_780.x, x_780.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_785 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_784.x, x_784.y, x_785.z, x_785.w);
    let x_787 : vec4<f32> = u_xlat1;
    let x_789 : vec2<f32> = log2(vec2<f32>(x_787.x, x_787.y));
    let x_790 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
    let x_792 : vec4<f32> = u_xlat1;
    let x_795 : vec4<f32> = x_31.x_Vignette_Settings;
    let x_797 : vec2<f32> = (vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.z, x_795.z));
    let x_798 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
    let x_800 : vec4<f32> = u_xlat1;
    let x_802 : vec2<f32> = exp2(vec2<f32>(x_800.x, x_800.y));
    let x_803 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
    let x_805 : vec4<f32> = u_xlat1;
    let x_807 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_805.x, x_805.y), vec2<f32>(x_807.x, x_807.y));
    let x_812 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_812) + 1.0f);
    let x_817 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_817, 0.0f);
    let x_821 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_821);
    let x_825 : f32 = u_xlat1.x;
    let x_827 : f32 = x_31.x_Vignette_Settings.y;
    u_xlat1.x = (x_825 * x_827);
    let x_831 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_831);
    let x_838 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_838) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_842 : vec4<f32> = u_xlat1;
    let x_844 : vec3<f32> = u_xlat7;
    let x_847 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_842.x, x_842.x, x_842.x) * x_844) + x_847);
    let x_849 : vec4<f32> = u_xlat0;
    let x_851 : vec3<f32> = u_xlat7;
    let x_852 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * x_851);
    let x_853 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
    let x_856 : f32 = u_xlat0.w;
    u_xlat7.x = (x_856 + -1.0f);
    let x_860 : f32 = u_xlat1.x;
    let x_862 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_860 * x_862) + 1.0f);
  } else {
    let x_872 : vec2<f32> = u_xlat14;
    let x_873 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_872);
    u_xlat1.x = x_873.w;
    let x_877 : f32 = u_xlat1.x;
    u_xlat1.z = (x_877 + 0.055f);
    let x_881 : vec4<f32> = u_xlat1;
    let x_886 : vec2<f32> = (vec2<f32>(x_881.x, x_881.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_887 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_886.x, x_886.y, x_887.z);
    let x_891 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_891), 1.1920929e-07f);
    let x_895 : f32 = u_xlat13;
    u_xlat13 = log2(x_895);
    let x_897 : f32 = u_xlat13;
    u_xlat13 = (x_897 * 2.400000095f);
    let x_900 : f32 = u_xlat13;
    u_xlat13 = exp2(x_900);
    let x_904 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_904);
    let x_906 : bool = u_xlatb1;
    if (x_906) {
      let x_911 : f32 = u_xlat7.x;
      x_907 = x_911;
    } else {
      let x_913 : f32 = u_xlat13;
      x_907 = x_913;
    }
    let x_914 : f32 = x_907;
    u_xlat1.x = x_914;
    let x_917 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = (-(x_917) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_920 : vec4<f32> = u_xlat1;
    let x_922 : vec3<f32> = u_xlat7;
    let x_925 : vec3<f32> = x_31.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_920.x, x_920.x, x_920.x) * x_922) + x_925);
    let x_927 : vec4<f32> = u_xlat0;
    let x_929 : vec3<f32> = u_xlat7;
    let x_931 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_927.x, x_927.y, x_927.z) * x_929) + -(vec3<f32>(x_931.x, x_931.y, x_931.z)));
    let x_937 : f32 = x_31.x_Vignette_Opacity;
    let x_939 : vec3<f32> = u_xlat7;
    let x_941 : vec4<f32> = u_xlat0;
    let x_943 : vec3<f32> = ((vec3<f32>(x_937, x_937, x_937) * x_939) + vec3<f32>(x_941.x, x_941.y, x_941.z));
    let x_944 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_943.x, x_943.y, x_943.z, x_944.w);
    let x_947 : f32 = u_xlat0.w;
    u_xlat0.x = (x_947 + -1.0f);
    let x_951 : f32 = u_xlat1.x;
    let x_953 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_951 * x_953) + 1.0f);
  }
  let x_959 : f32 = x_31.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_959);
  let x_961 : bool = u_xlatb0;
  if (x_961) {
    let x_964 : vec4<f32> = u_xlat3;
    let x_965 : vec3<f32> = vec3<f32>(x_964.x, x_964.y, x_964.z);
    let x_966 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_965.x, x_965.y, x_965.z, x_966.w);
    let x_968 : vec4<f32> = u_xlat0;
    let x_972 : vec3<f32> = clamp(vec3<f32>(x_968.x, x_968.y, x_968.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_973 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    let x_975 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_975.x, x_975.y, x_975.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_985 : vec4<f32> = u_xlat3;
  SV_Target0 = x_985;
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

