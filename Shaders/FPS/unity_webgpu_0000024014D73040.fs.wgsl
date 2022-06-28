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
  x_PostExposure : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlatb7 : bool;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat17 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlat13 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlatb4 : bool;

var<private> u_xlatb2 : bool;

var<private> u_xlat5 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlatb8 : bool;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_402 : f32;
  var x_867 : f32;
  var x_879 : f32;
  var x_891 : f32;
  var x_965 : f32;
  var x_978 : f32;
  var x_990 : f32;
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
  let x_59 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_59.x, x_59.y), vec2<f32>(x_61.x, x_61.y));
  let x_69 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_69);
  let x_79 : f32 = x_31.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_79);
  let x_81 : bool = u_xlatb7;
  if (x_81) {
    let x_86 : vec4<f32> = u_xlat2;
    let x_89 : vec4<f32> = x_31.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_94);
    let x_99 : f32 = u_xlat12.x;
    u_xlat4.x = cos(x_99);
    let x_103 : f32 = u_xlat3.x;
    let x_105 : f32 = u_xlat4.x;
    u_xlat12.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_112);
    let x_115 : f32 = u_xlat12.x;
    let x_116 : f32 = u_xlat17;
    u_xlat12.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat12;
    let x_126 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + vec2<f32>(x_126.x, x_126.y));
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
    u_xlat8 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_153), 1.0f);
    let x_156 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_156);
    let x_158 : f32 = u_xlat13;
    let x_159 : f32 = u_xlat8;
    u_xlat8 = (x_158 * x_159);
    let x_161 : f32 = u_xlat8;
    let x_162 : f32 = u_xlat8;
    u_xlat13 = (x_161 * x_162);
    let x_165 : f32 = u_xlat13;
    u_xlat18 = ((x_165 * 0.0208351f) + -0.085133001f);
    let x_170 : f32 = u_xlat13;
    let x_171 : f32 = u_xlat18;
    u_xlat18 = ((x_170 * x_171) + 0.180141002f);
    let x_175 : f32 = u_xlat13;
    let x_176 : f32 = u_xlat18;
    u_xlat18 = ((x_175 * x_176) + -0.330299497f);
    let x_180 : f32 = u_xlat13;
    let x_181 : f32 = u_xlat18;
    u_xlat13 = ((x_180 * x_181) + 0.999866009f);
    let x_185 : f32 = u_xlat13;
    let x_186 : f32 = u_xlat8;
    u_xlat18 = (x_185 * x_186);
    let x_190 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_190));
    let x_193 : f32 = u_xlat18;
    u_xlat18 = ((x_193 * -2.0f) + 1.570796371f);
    let x_198 : bool = u_xlatb4;
    let x_199 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_199, x_198);
    let x_201 : f32 = u_xlat8;
    let x_202 : f32 = u_xlat13;
    let x_204 : f32 = u_xlat18;
    u_xlat8 = ((x_201 * x_202) + x_204);
    let x_207 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_207, 1.0f);
    let x_212 : f32 = u_xlat2.x;
    let x_214 : f32 = u_xlat2.x;
    u_xlatb2 = (x_212 < -(x_214));
    let x_217 : bool = u_xlatb2;
    if (x_217) {
      let x_222 : f32 = u_xlat8;
      x_219 = -(x_222);
    } else {
      let x_225 : f32 = u_xlat8;
      x_219 = x_225;
    }
    let x_226 : f32 = x_219;
    u_xlat2.x = x_226;
    let x_229 : f32 = u_xlat3.x;
    let x_231 : f32 = u_xlat2.x;
    u_xlat2.x = ((x_229 * x_231) + -1.0f);
    let x_235 : vec4<f32> = u_xlat0;
    let x_237 : vec4<f32> = u_xlat2;
    let x_240 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_235.x, x_235.y) * vec2<f32>(x_237.x, x_237.x)) + vec2<f32>(x_240.x, x_240.y));
  }
  let x_243 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_243.z, x_243.w), vec2<f32>(x_245.z, x_245.w));
  let x_250 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_250);
  let x_253 : bool = u_xlatb7;
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
    u_xlat5 = (x_274 / x_276);
    let x_279 : f32 = u_xlat1.y;
    u_xlat1.x = (1.0f / x_279);
    let x_282 : f32 = u_xlat5;
    let x_284 : f32 = u_xlat1.x;
    u_xlat5 = ((x_282 * x_284) + -1.0f);
    let x_287 : vec4<f32> = u_xlat0;
    let x_289 : f32 = u_xlat5;
    let x_292 : vec4<f32> = u_xlat1;
    let x_294 : vec2<f32> = ((vec2<f32>(x_287.z, x_287.w) * vec2<f32>(x_289, x_289)) + vec2<f32>(x_292.z, x_292.w));
    let x_295 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_295.z, x_295.w);
  } else {
    let x_299 : f32 = u_xlat0.x;
    u_xlat5 = (1.0f / x_299);
    let x_301 : f32 = u_xlat5;
    let x_303 : f32 = x_31.x_Distortion_Amount.x;
    u_xlat5 = (x_301 * x_303);
    let x_306 : f32 = u_xlat0.x;
    let x_308 : f32 = x_31.x_Distortion_Amount.y;
    u_xlat0.x = (x_306 * x_308);
    let x_312 : f32 = u_xlat0.x;
    u_xlat2.x = min(abs(x_312), 1.0f);
    let x_318 : f32 = u_xlat0.x;
    u_xlat7 = max(abs(x_318), 1.0f);
    let x_321 : f32 = u_xlat7;
    u_xlat7 = (1.0f / x_321);
    let x_323 : f32 = u_xlat7;
    let x_325 : f32 = u_xlat2.x;
    u_xlat2.x = (x_323 * x_325);
    let x_329 : f32 = u_xlat2.x;
    let x_331 : f32 = u_xlat2.x;
    u_xlat7 = (x_329 * x_331);
    let x_333 : f32 = u_xlat7;
    u_xlat3.x = ((x_333 * 0.0208351f) + -0.085133001f);
    let x_337 : f32 = u_xlat7;
    let x_339 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_337 * x_339) + 0.180141002f);
    let x_343 : f32 = u_xlat7;
    let x_345 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_343 * x_345) + -0.330299497f);
    let x_349 : f32 = u_xlat7;
    let x_351 : f32 = u_xlat3.x;
    u_xlat7 = ((x_349 * x_351) + 0.999866009f);
    let x_354 : f32 = u_xlat7;
    let x_356 : f32 = u_xlat2.x;
    u_xlat3.x = (x_354 * x_356);
    let x_361 : f32 = u_xlat0.x;
    u_xlatb8 = (1.0f < abs(x_361));
    let x_365 : f32 = u_xlat3.x;
    u_xlat3.x = ((x_365 * -2.0f) + 1.570796371f);
    let x_369 : bool = u_xlatb8;
    if (x_369) {
      let x_374 : f32 = u_xlat3.x;
      x_370 = x_374;
    } else {
      x_370 = 0.0f;
    }
    let x_376 : f32 = x_370;
    u_xlat3.x = x_376;
    let x_379 : f32 = u_xlat2.x;
    let x_380 : f32 = u_xlat7;
    let x_383 : f32 = u_xlat3.x;
    u_xlat2.x = ((x_379 * x_380) + x_383);
    let x_387 : f32 = u_xlat0.x;
    u_xlat0.x = min(x_387, 1.0f);
    let x_394 : f32 = u_xlat0.x;
    let x_396 : f32 = u_xlat0.x;
    u_xlatb0.x = (x_394 < -(x_396));
    let x_401 : bool = u_xlatb0.x;
    if (x_401) {
      let x_406 : f32 = u_xlat2.x;
      x_402 = -(x_406);
    } else {
      let x_410 : f32 = u_xlat2.x;
      x_402 = x_410;
    }
    let x_411 : f32 = x_402;
    u_xlat0.x = x_411;
    let x_413 : f32 = u_xlat5;
    let x_415 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_413 * x_415) + -1.0f);
    let x_419 : vec4<f32> = u_xlat0;
    let x_421 : vec4<f32> = u_xlat0;
    let x_424 : vec4<f32> = u_xlat1;
    let x_426 : vec2<f32> = ((vec2<f32>(x_419.z, x_419.w) * vec2<f32>(x_421.x, x_421.x)) + vec2<f32>(x_424.z, x_424.w));
    let x_427 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  }
  let x_439 : vec4<f32> = phase0_Input0_1;
  let x_441 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, vec2<f32>(x_439.x, x_439.y));
  u_xlat0.x = x_441.x;
  let x_449 : vec4<f32> = u_xlat1;
  let x_451 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_449.x, x_449.y));
  u_xlat1 = x_451;
  let x_452 : vec4<f32> = u_xlat0;
  let x_454 : vec4<f32> = u_xlat1;
  let x_456 : vec3<f32> = (vec3<f32>(x_452.x, x_452.x, x_452.x) * vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_457 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_456.x, x_456.y, x_456.z, x_457.w);
  let x_461 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_467 : f32 = x_31.x_Bloom_Settings.x;
  u_xlat2.x = (x_467 * 0.5f);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat2;
  let x_475 : vec2<f32> = u_xlat12;
  u_xlat3 = ((vec4<f32>(x_470.x, x_470.y, x_470.z, x_470.y) * vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.x)) + vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y));
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
  let x_503 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_502 + x_503);
  let x_505 : vec4<f32> = u_xlat0;
  let x_507 : vec4<f32> = u_xlat2;
  let x_510 : vec2<f32> = u_xlat12;
  u_xlat0 = ((vec4<f32>(x_505.x, x_505.w, x_505.z, x_505.w) * vec4<f32>(x_507.x, x_507.x, x_507.x, x_507.x)) + vec4<f32>(x_510.x, x_510.y, x_510.x, x_510.y));
  let x_513 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_513, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_517 : vec4<f32> = u_xlat0;
  let x_519 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat0 = (x_517 * vec4<f32>(x_519, x_519, x_519, x_519));
  let x_525 : vec4<f32> = u_xlat0;
  let x_527 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_525.x, x_525.y));
  u_xlat4 = x_527;
  let x_528 : vec4<f32> = u_xlat3;
  let x_529 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_528 + x_529);
  let x_534 : vec4<f32> = u_xlat0;
  let x_536 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_534.z, x_534.w));
  u_xlat0 = x_536;
  let x_537 : vec4<f32> = u_xlat0;
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_537 + x_538);
  let x_540 : vec4<f32> = u_xlat0;
  let x_543 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_540 * vec4<f32>(x_543.y, x_543.y, x_543.y, x_543.y));
  let x_546 : vec2<f32> = u_xlat12;
  let x_549 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_553 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_555 : vec2<f32> = ((x_546 * vec2<f32>(x_549.x, x_549.y)) + vec2<f32>(x_553.z, x_553.w));
  let x_556 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_555.x, x_555.y, x_556.z, x_556.w);
  let x_563 : vec4<f32> = u_xlat2;
  let x_565 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_563.x, x_563.y));
  let x_566 : vec3<f32> = vec3<f32>(x_565.x, x_565.y, x_565.z);
  let x_567 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
  let x_569 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_569 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_573 : vec4<f32> = u_xlat2;
  let x_576 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_578 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_576.z, x_576.z, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  u_xlat2.w = 0.0f;
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_582 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = x_31.x_Bloom_Color;
  let x_590 : vec3<f32> = (vec3<f32>(x_585.x, x_585.y, x_585.z) * x_589);
  let x_591 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_594 : f32 = u_xlat0.w;
  u_xlat4.w = (x_594 * 0.25f);
  let x_597 : vec4<f32> = u_xlat1;
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_597 + x_598);
  let x_600 : vec4<f32> = u_xlat2;
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_600 * x_601) + x_603);
  let x_605 : vec4<f32> = u_xlat0;
  let x_608 : f32 = x_31.x_PostExposure;
  let x_610 : f32 = x_31.x_PostExposure;
  let x_612 : f32 = x_31.x_PostExposure;
  let x_614 : f32 = x_31.x_PostExposure;
  let x_615 : vec4<f32> = vec4<f32>(x_608, x_610, x_612, x_614);
  u_xlat0 = (x_605 * vec4<f32>(x_615.x, x_615.y, x_615.z, x_615.w));
  let x_622 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = ((vec3<f32>(x_622.z, x_622.x, x_622.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_630 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_629.x, x_629.y, x_629.z, x_630.w);
  let x_632 : vec4<f32> = u_xlat0;
  let x_634 : vec3<f32> = log2(vec3<f32>(x_632.x, x_632.y, x_632.z));
  let x_635 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_634.x, x_634.y, x_634.z, x_635.w);
  let x_637 : vec4<f32> = u_xlat0;
  let x_644 : vec3<f32> = ((vec3<f32>(x_637.x, x_637.y, x_637.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_645 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_647 : vec4<f32> = u_xlat0;
  let x_651 : vec3<f32> = clamp(vec3<f32>(x_647.x, x_647.y, x_647.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_658 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_660 : vec3<f32> = (vec3<f32>(x_654.x, x_654.y, x_654.z) * vec3<f32>(x_658.z, x_658.z, x_658.z));
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_664 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_664);
  let x_667 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_670 : vec2<f32> = (vec2<f32>(x_667.x, x_667.y) * vec2<f32>(0.5f, 0.5f));
  let x_671 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_670.x, x_671.y, x_671.z, x_670.y);
  let x_673 : vec4<f32> = u_xlat1;
  let x_676 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_679 : vec4<f32> = u_xlat1;
  let x_681 : vec2<f32> = ((vec2<f32>(x_673.y, x_673.z) * vec2<f32>(x_676.x, x_676.y)) + vec2<f32>(x_679.x, x_679.w));
  let x_682 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_682.x, x_681.x, x_681.y, x_682.w);
  let x_684 : f32 = u_xlat5;
  let x_686 : f32 = x_31.x_Lut2D_Params.y;
  let x_689 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_684 * x_686) + x_689);
  let x_697 : vec4<f32> = u_xlat1;
  let x_699 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_697.x, x_697.z));
  let x_700 : vec3<f32> = vec3<f32>(x_699.x, x_699.y, x_699.z);
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_704;
  u_xlat3.y = 0.0f;
  let x_707 : vec4<f32> = u_xlat1;
  let x_709 : vec4<f32> = u_xlat3;
  let x_711 : vec2<f32> = (vec2<f32>(x_707.x, x_707.z) + vec2<f32>(x_709.x, x_709.y));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
  let x_717 : vec4<f32> = u_xlat1;
  let x_719 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_717.x, x_717.y));
  let x_720 : vec3<f32> = vec3<f32>(x_719.x, x_719.y, x_719.z);
  let x_721 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_724 : f32 = u_xlat0.x;
  let x_727 : f32 = x_31.x_Lut2D_Params.z;
  let x_729 : f32 = u_xlat5;
  u_xlat0.x = ((x_724 * x_727) + -(x_729));
  let x_733 : vec4<f32> = u_xlat2;
  let x_736 : vec4<f32> = u_xlat1;
  let x_738 : vec3<f32> = (-(vec3<f32>(x_733.x, x_733.y, x_733.z)) + vec3<f32>(x_736.x, x_736.y, x_736.z));
  let x_739 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_738.x, x_738.y, x_738.z, x_739.w);
  let x_741 : vec4<f32> = u_xlat0;
  let x_743 : vec4<f32> = u_xlat1;
  let x_746 : vec4<f32> = u_xlat2;
  let x_748 : vec3<f32> = ((vec3<f32>(x_741.x, x_741.x, x_741.x) * vec3<f32>(x_743.x, x_743.y, x_743.z)) + vec3<f32>(x_746.x, x_746.y, x_746.z));
  let x_749 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_751 : vec4<f32> = phase0_Input0_1;
  let x_755 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_759 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_761 : vec2<f32> = ((vec2<f32>(x_751.x, x_751.y) * vec2<f32>(x_755.x, x_755.y)) + vec2<f32>(x_759.z, x_759.w));
  let x_762 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_762.z, x_762.w);
  let x_769 : vec4<f32> = u_xlat1;
  let x_771 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_769.x, x_769.y));
  u_xlat1.x = x_771.w;
  let x_775 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_775 * 2.0f) + -1.0f);
  let x_783 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_783 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_789 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_789, 0.0f, 1.0f);
  let x_793 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_793 * 2.0f) + -1.0f);
  let x_798 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_798)) + 1.0f);
  let x_804 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_804);
  let x_808 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_808) + 1.0f);
  let x_813 : f32 = u_xlat1.x;
  let x_815 : f32 = u_xlat6.x;
  u_xlat1.x = (x_813 * x_815);
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_818.x, x_818.y, x_818.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_823 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = max(abs(vec3<f32>(x_823.x, x_823.y, x_823.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_829 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat2;
  let x_833 : vec3<f32> = log2(vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat2;
  let x_840 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_841 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat2;
  let x_845 : vec3<f32> = exp2(vec3<f32>(x_843.x, x_843.y, x_843.z));
  let x_846 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_848 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = ((vec3<f32>(x_848.x, x_848.y, x_848.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_860 : vec4<f32> = u_xlat0;
  let x_863 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_860.x, x_860.y, x_860.z, x_860.x));
  u_xlatb0 = vec3<bool>(x_863.x, x_863.y, x_863.z);
  let x_866 : bool = u_xlatb0.x;
  if (x_866) {
    let x_871 : f32 = u_xlat6.x;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat2.x;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  u_xlat0.x = x_875;
  let x_878 : bool = u_xlatb0.y;
  if (x_878) {
    let x_883 : f32 = u_xlat6.y;
    x_879 = x_883;
  } else {
    let x_886 : f32 = u_xlat2.y;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat0.y = x_887;
  let x_890 : bool = u_xlatb0.z;
  if (x_890) {
    let x_895 : f32 = u_xlat6.z;
    x_891 = x_895;
  } else {
    let x_898 : f32 = u_xlat2.z;
    x_891 = x_898;
  }
  let x_899 : f32 = x_891;
  u_xlat0.z = x_899;
  let x_901 : vec4<f32> = u_xlat1;
  let x_906 : vec4<f32> = u_xlat0;
  let x_908 : vec3<f32> = ((vec3<f32>(x_901.x, x_901.x, x_901.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat0;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_916 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat0;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat2;
  let x_929 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_930 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_932 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = max(abs(vec3<f32>(x_932.x, x_932.y, x_932.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat2;
  let x_940 : vec3<f32> = log2(vec3<f32>(x_938.x, x_938.y, x_938.z));
  let x_941 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
  let x_943 : vec4<f32> = u_xlat2;
  let x_947 : vec3<f32> = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat2;
  let x_952 : vec3<f32> = exp2(vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_957.x, x_957.y, x_957.z, x_957.x));
  u_xlatb0 = vec3<bool>(x_959.x, x_959.y, x_959.z);
  let x_964 : bool = u_xlatb0.x;
  if (x_964) {
    let x_969 : f32 = u_xlat1.x;
    x_965 = x_969;
  } else {
    let x_972 : f32 = u_xlat2.x;
    x_965 = x_972;
  }
  let x_973 : f32 = x_965;
  SV_Target0.x = x_973;
  let x_977 : bool = u_xlatb0.y;
  if (x_977) {
    let x_982 : f32 = u_xlat1.y;
    x_978 = x_982;
  } else {
    let x_985 : f32 = u_xlat2.y;
    x_978 = x_985;
  }
  let x_986 : f32 = x_978;
  SV_Target0.y = x_986;
  let x_989 : bool = u_xlatb0.z;
  if (x_989) {
    let x_994 : f32 = u_xlat1.z;
    x_990 = x_994;
  } else {
    let x_997 : f32 = u_xlat2.z;
    x_990 = x_997;
  }
  let x_998 : f32 = x_990;
  SV_Target0.z = x_998;
  let x_1001 : f32 = u_xlat0.w;
  SV_Target0.w = x_1001;
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

