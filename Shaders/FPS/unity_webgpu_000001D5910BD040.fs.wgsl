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
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat16 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_402 : f32;
  var x_802 : f32;
  var x_814 : f32;
  var x_827 : f32;
  var x_901 : f32;
  var x_914 : f32;
  var x_926 : f32;
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
  let x_605 : vec4<f32> = phase0_Input0_1;
  let x_609 : vec4<f32> = x_31.x_Grain_Params2;
  let x_613 : vec4<f32> = x_31.x_Grain_Params2;
  let x_615 : vec2<f32> = ((vec2<f32>(x_605.z, x_605.w) * vec2<f32>(x_609.x, x_609.y)) + vec2<f32>(x_613.z, x_613.w));
  let x_616 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_623 : vec4<f32> = u_xlat1;
  let x_625 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_623.x, x_623.y));
  let x_626 : vec3<f32> = vec3<f32>(x_625.x, x_625.y, x_625.z);
  let x_627 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = vec3<f32>(x_629.x, x_629.y, x_629.z);
  let x_631 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_630.z, x_631.w);
  let x_633 : vec4<f32> = u_xlat2;
  let x_637 : vec3<f32> = clamp(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_641 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_641.x, x_641.y, x_641.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_648 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_648);
  let x_652 : f32 = x_31.x_Grain_Params1.x;
  let x_653 : f32 = u_xlat16;
  u_xlat16 = ((x_652 * -(x_653)) + 1.0f);
  let x_657 : vec4<f32> = u_xlat0;
  let x_659 : vec4<f32> = u_xlat1;
  let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.y, x_657.z) * vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec4<f32> = u_xlat1;
  let x_667 : f32 = x_31.x_Grain_Params1.y;
  let x_669 : f32 = x_31.x_Grain_Params1.y;
  let x_671 : f32 = x_31.x_Grain_Params1.y;
  let x_673 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_667, x_669, x_671));
  let x_674 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_676 : vec4<f32> = u_xlat1;
  let x_678 : f32 = u_xlat16;
  let x_681 : vec4<f32> = u_xlat0;
  let x_683 : vec3<f32> = ((vec3<f32>(x_676.x, x_676.y, x_676.z) * vec3<f32>(x_678, x_678, x_678)) + vec3<f32>(x_681.x, x_681.y, x_681.z));
  let x_684 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  let x_686 : vec4<f32> = phase0_Input0_1;
  let x_690 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_694 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_696 : vec2<f32> = ((vec2<f32>(x_686.x, x_686.y) * vec2<f32>(x_690.x, x_690.y)) + vec2<f32>(x_694.z, x_694.w));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
  let x_704 : vec4<f32> = u_xlat1;
  let x_706 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_704.x, x_704.y));
  u_xlat1.x = x_706.w;
  let x_710 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_710 * 2.0f) + -1.0f);
  let x_718 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_718 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_724 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_724, 0.0f, 1.0f);
  let x_728 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_728 * 2.0f) + -1.0f);
  let x_733 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_733)) + 1.0f);
  let x_739 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_739);
  let x_743 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_743) + 1.0f);
  let x_748 : f32 = u_xlat1.x;
  let x_750 : f32 = u_xlat6.x;
  u_xlat1.x = (x_748 * x_750);
  let x_753 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_753.x, x_753.y, x_753.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_758 : vec4<f32> = u_xlat0;
  let x_763 : vec3<f32> = max(abs(vec3<f32>(x_758.x, x_758.y, x_758.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_764 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat2;
  let x_768 : vec3<f32> = log2(vec3<f32>(x_766.x, x_766.y, x_766.z));
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat2;
  let x_775 : vec3<f32> = (vec3<f32>(x_771.x, x_771.y, x_771.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_776 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat2;
  let x_780 : vec3<f32> = exp2(vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat2;
  let x_790 : vec3<f32> = ((vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_791 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_798 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_795.x, x_795.y, x_795.z, x_795.x));
  u_xlatb0 = vec3<bool>(x_798.x, x_798.y, x_798.z);
  let x_801 : bool = u_xlatb0.x;
  if (x_801) {
    let x_806 : f32 = u_xlat6.x;
    x_802 = x_806;
  } else {
    let x_809 : f32 = u_xlat2.x;
    x_802 = x_809;
  }
  let x_810 : f32 = x_802;
  u_xlat0.x = x_810;
  let x_813 : bool = u_xlatb0.y;
  if (x_813) {
    let x_818 : f32 = u_xlat6.y;
    x_814 = x_818;
  } else {
    let x_821 : f32 = u_xlat2.y;
    x_814 = x_821;
  }
  let x_822 : f32 = x_814;
  u_xlat0.y = x_822;
  let x_826 : bool = u_xlatb0.z;
  if (x_826) {
    let x_831 : f32 = u_xlat6.z;
    x_827 = x_831;
  } else {
    let x_834 : f32 = u_xlat2.z;
    x_827 = x_834;
  }
  let x_835 : f32 = x_827;
  u_xlat0.z = x_835;
  let x_837 : vec4<f32> = u_xlat1;
  let x_842 : vec4<f32> = u_xlat0;
  let x_844 : vec3<f32> = ((vec3<f32>(x_837.x, x_837.x, x_837.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_842.x, x_842.y, x_842.z));
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_852 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_858 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_859 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  let x_861 : vec4<f32> = u_xlat2;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat2;
  let x_871 : vec3<f32> = max(abs(vec3<f32>(x_868.x, x_868.y, x_868.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = log2(vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat2;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_884 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat2;
  let x_888 : vec3<f32> = exp2(vec3<f32>(x_886.x, x_886.y, x_886.z));
  let x_889 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_893 : vec4<f32> = u_xlat0;
  let x_895 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_893.x, x_893.y, x_893.z, x_893.x));
  u_xlatb0 = vec3<bool>(x_895.x, x_895.y, x_895.z);
  let x_900 : bool = u_xlatb0.x;
  if (x_900) {
    let x_905 : f32 = u_xlat1.x;
    x_901 = x_905;
  } else {
    let x_908 : f32 = u_xlat2.x;
    x_901 = x_908;
  }
  let x_909 : f32 = x_901;
  SV_Target0.x = x_909;
  let x_913 : bool = u_xlatb0.y;
  if (x_913) {
    let x_918 : f32 = u_xlat1.y;
    x_914 = x_918;
  } else {
    let x_921 : f32 = u_xlat2.y;
    x_914 = x_921;
  }
  let x_922 : f32 = x_914;
  SV_Target0.y = x_922;
  let x_925 : bool = u_xlatb0.z;
  if (x_925) {
    let x_930 : f32 = u_xlat1.z;
    x_926 = x_930;
  } else {
    let x_933 : f32 = u_xlat2.z;
    x_926 = x_933;
  }
  let x_934 : f32 = x_926;
  SV_Target0.z = x_934;
  let x_937 : f32 = u_xlat0.w;
  SV_Target0.w = x_937;
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

