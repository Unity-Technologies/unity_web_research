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
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
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

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat16 : f32;

var<private> u_xlat15 : f32;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_402 : f32;
  var x_748 : f32;
  var x_760 : f32;
  var x_773 : f32;
  var x_931 : f32;
  var x_943 : f32;
  var x_955 : f32;
  var x_1068 : f32;
  var x_1080 : f32;
  var x_1092 : f32;
  var x_1156 : f32;
  var x_1169 : f32;
  var x_1181 : f32;
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
  let x_686 : vec4<f32> = u_xlat0;
  let x_690 : vec3<f32> = clamp(vec3<f32>(x_686.x, x_686.y, x_686.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_691 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  let x_695 : f32 = u_xlat0.w;
  u_xlat15 = x_695;
  let x_696 : f32 = u_xlat15;
  u_xlat15 = clamp(x_696, 0.0f, 1.0f);
  let x_698 : vec4<f32> = u_xlat0;
  let x_702 : vec3<f32> = (vec3<f32>(x_698.z, x_698.x, x_698.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = max(vec3<f32>(x_705.z, x_705.x, x_705.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_710 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat2;
  let x_714 : vec3<f32> = log2(vec3<f32>(x_712.x, x_712.y, x_712.z));
  let x_715 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
  let x_717 : vec4<f32> = u_xlat2;
  let x_721 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_722 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_724 : vec4<f32> = u_xlat2;
  let x_726 : vec3<f32> = exp2(vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat2;
  let x_736 : vec3<f32> = ((vec3<f32>(x_729.x, x_729.y, x_729.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_737 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_741 : vec4<f32> = u_xlat0;
  let x_744 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_741.z, x_741.x, x_741.y, x_741.z));
  u_xlatb0 = vec3<bool>(x_744.x, x_744.y, x_744.z);
  let x_747 : bool = u_xlatb0.x;
  if (x_747) {
    let x_752 : f32 = u_xlat1.x;
    x_748 = x_752;
  } else {
    let x_755 : f32 = u_xlat2.x;
    x_748 = x_755;
  }
  let x_756 : f32 = x_748;
  u_xlat0.x = x_756;
  let x_759 : bool = u_xlatb0.y;
  if (x_759) {
    let x_764 : f32 = u_xlat1.y;
    x_760 = x_764;
  } else {
    let x_767 : f32 = u_xlat2.y;
    x_760 = x_767;
  }
  let x_768 : f32 = x_760;
  u_xlat0.y = x_768;
  let x_772 : bool = u_xlatb0.z;
  if (x_772) {
    let x_777 : f32 = u_xlat1.z;
    x_773 = x_777;
  } else {
    let x_780 : f32 = u_xlat2.z;
    x_773 = x_780;
  }
  let x_781 : f32 = x_773;
  u_xlat0.z = x_781;
  let x_783 : vec4<f32> = u_xlat0;
  let x_787 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_789 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_787.z, x_787.z, x_787.z));
  let x_790 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_793 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_793);
  let x_796 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_799 : vec2<f32> = (vec2<f32>(x_796.x, x_796.y) * vec2<f32>(0.5f, 0.5f));
  let x_800 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_799.x, x_800.y, x_800.z, x_799.y);
  let x_802 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_808 : vec4<f32> = u_xlat1;
  let x_810 : vec2<f32> = ((vec2<f32>(x_802.y, x_802.z) * vec2<f32>(x_805.x, x_805.y)) + vec2<f32>(x_808.x, x_808.w));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_811.x, x_810.x, x_810.y, x_811.w);
  let x_813 : f32 = u_xlat5;
  let x_815 : f32 = x_31.x_Lut2D_Params.y;
  let x_818 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_813 * x_815) + x_818);
  let x_826 : vec4<f32> = u_xlat1;
  let x_828 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_826.x, x_826.z));
  let x_829 : vec3<f32> = vec3<f32>(x_828.x, x_828.y, x_828.z);
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_829.x, x_829.y, x_829.z, x_830.w);
  let x_833 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_833;
  u_xlat3.y = 0.0f;
  let x_836 : vec4<f32> = u_xlat1;
  let x_838 : vec4<f32> = u_xlat3;
  let x_840 : vec2<f32> = (vec2<f32>(x_836.x, x_836.z) + vec2<f32>(x_838.x, x_838.y));
  let x_841 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_840.x, x_840.y, x_841.z, x_841.w);
  let x_846 : vec4<f32> = u_xlat1;
  let x_848 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_846.x, x_846.y));
  let x_849 : vec3<f32> = vec3<f32>(x_848.x, x_848.y, x_848.z);
  let x_850 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_853 : f32 = u_xlat0.x;
  let x_855 : f32 = x_31.x_Lut2D_Params.z;
  let x_857 : f32 = u_xlat5;
  u_xlat0.x = ((x_853 * x_855) + -(x_857));
  let x_861 : vec4<f32> = u_xlat2;
  let x_864 : vec4<f32> = u_xlat1;
  let x_866 : vec3<f32> = (-(vec3<f32>(x_861.x, x_861.y, x_861.z)) + vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat0;
  let x_871 : vec4<f32> = u_xlat1;
  let x_874 : vec4<f32> = u_xlat2;
  let x_876 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.x, x_869.x) * vec3<f32>(x_871.x, x_871.y, x_871.z)) + vec3<f32>(x_874.x, x_874.y, x_874.z));
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat0;
  let x_883 : vec3<f32> = (vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_884 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
  let x_886 : vec4<f32> = u_xlat0;
  let x_890 : vec3<f32> = (vec3<f32>(x_886.x, x_886.y, x_886.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_891 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat2;
  let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_898 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  let x_900 : vec4<f32> = u_xlat2;
  let x_903 : vec3<f32> = max(abs(vec3<f32>(x_900.x, x_900.y, x_900.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_904 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat2;
  let x_908 : vec3<f32> = log2(vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = (vec3<f32>(x_911.x, x_911.y, x_911.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = exp2(vec3<f32>(x_918.x, x_918.y, x_918.z));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_925 : vec4<f32> = u_xlat0;
  let x_927 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_925.x, x_925.y, x_925.z, x_925.x));
  u_xlatb0 = vec3<bool>(x_927.x, x_927.y, x_927.z);
  let x_930 : bool = u_xlatb0.x;
  if (x_930) {
    let x_935 : f32 = u_xlat1.x;
    x_931 = x_935;
  } else {
    let x_938 : f32 = u_xlat2.x;
    x_931 = x_938;
  }
  let x_939 : f32 = x_931;
  u_xlat0.x = x_939;
  let x_942 : bool = u_xlatb0.y;
  if (x_942) {
    let x_947 : f32 = u_xlat1.y;
    x_943 = x_947;
  } else {
    let x_950 : f32 = u_xlat2.y;
    x_943 = x_950;
  }
  let x_951 : f32 = x_943;
  u_xlat0.y = x_951;
  let x_954 : bool = u_xlatb0.z;
  if (x_954) {
    let x_959 : f32 = u_xlat1.z;
    x_955 = x_959;
  } else {
    let x_962 : f32 = u_xlat2.z;
    x_955 = x_962;
  }
  let x_963 : f32 = x_955;
  u_xlat0.z = x_963;
  let x_965 : vec4<f32> = phase0_Input0_1;
  let x_969 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_973 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_975 : vec2<f32> = ((vec2<f32>(x_965.x, x_965.y) * vec2<f32>(x_969.x, x_969.y)) + vec2<f32>(x_973.z, x_973.w));
  let x_976 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
  let x_983 : vec4<f32> = u_xlat1;
  let x_985 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_983.x, x_983.y));
  u_xlat1.x = x_985.w;
  let x_989 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_989 * 2.0f) + -1.0f);
  let x_997 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_997 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1003 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1003, 0.0f, 1.0f);
  let x_1007 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1007 * 2.0f) + -1.0f);
  let x_1012 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1012)) + 1.0f);
  let x_1018 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1018);
  let x_1022 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1022) + 1.0f);
  let x_1027 : f32 = u_xlat1.x;
  let x_1029 : f32 = u_xlat6.x;
  u_xlat1.x = (x_1027 * x_1029);
  let x_1032 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_1032.x, x_1032.y, x_1032.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1035 : vec4<f32> = u_xlat0;
  let x_1038 : vec3<f32> = max(abs(vec3<f32>(x_1035.x, x_1035.y, x_1035.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat2;
  let x_1043 : vec3<f32> = log2(vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1044 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
  let x_1046 : vec4<f32> = u_xlat2;
  let x_1048 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1049 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1049.w);
  let x_1051 : vec4<f32> = u_xlat2;
  let x_1053 : vec3<f32> = exp2(vec3<f32>(x_1051.x, x_1051.y, x_1051.z));
  let x_1054 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1053.x, x_1053.y, x_1053.z, x_1054.w);
  let x_1056 : vec4<f32> = u_xlat2;
  let x_1059 : vec3<f32> = ((vec3<f32>(x_1056.x, x_1056.y, x_1056.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1060 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1064 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1062.x));
  u_xlatb0 = vec3<bool>(x_1064.x, x_1064.y, x_1064.z);
  let x_1067 : bool = u_xlatb0.x;
  if (x_1067) {
    let x_1072 : f32 = u_xlat6.x;
    x_1068 = x_1072;
  } else {
    let x_1075 : f32 = u_xlat2.x;
    x_1068 = x_1075;
  }
  let x_1076 : f32 = x_1068;
  u_xlat0.x = x_1076;
  let x_1079 : bool = u_xlatb0.y;
  if (x_1079) {
    let x_1084 : f32 = u_xlat6.y;
    x_1080 = x_1084;
  } else {
    let x_1087 : f32 = u_xlat2.y;
    x_1080 = x_1087;
  }
  let x_1088 : f32 = x_1080;
  u_xlat0.y = x_1088;
  let x_1091 : bool = u_xlatb0.z;
  if (x_1091) {
    let x_1096 : f32 = u_xlat6.z;
    x_1092 = x_1096;
  } else {
    let x_1099 : f32 = u_xlat2.z;
    x_1092 = x_1099;
  }
  let x_1100 : f32 = x_1092;
  u_xlat0.z = x_1100;
  let x_1102 : vec4<f32> = u_xlat1;
  let x_1107 : vec4<f32> = u_xlat0;
  let x_1109 : vec3<f32> = ((vec3<f32>(x_1102.x, x_1102.x, x_1102.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1107.x, x_1107.y, x_1107.z));
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1109.x, x_1109.y, x_1109.z, x_1110.w);
  let x_1112 : vec4<f32> = u_xlat0;
  let x_1114 : vec3<f32> = (vec3<f32>(x_1112.x, x_1112.y, x_1112.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1115 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1117 : vec4<f32> = u_xlat0;
  let x_1119 : vec3<f32> = (vec3<f32>(x_1117.x, x_1117.y, x_1117.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1120 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
  let x_1122 : vec4<f32> = u_xlat2;
  let x_1124 : vec3<f32> = (vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1125 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1125.w);
  let x_1127 : vec4<f32> = u_xlat2;
  let x_1130 : vec3<f32> = max(abs(vec3<f32>(x_1127.x, x_1127.y, x_1127.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat2;
  let x_1135 : vec3<f32> = log2(vec3<f32>(x_1133.x, x_1133.y, x_1133.z));
  let x_1136 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1138 : vec4<f32> = u_xlat2;
  let x_1140 : vec3<f32> = (vec3<f32>(x_1138.x, x_1138.y, x_1138.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec4<f32> = u_xlat2;
  let x_1145 : vec3<f32> = exp2(vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat0;
  let x_1150 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1148.x, x_1148.y, x_1148.z, x_1148.x));
  u_xlatb0 = vec3<bool>(x_1150.x, x_1150.y, x_1150.z);
  let x_1155 : bool = u_xlatb0.x;
  if (x_1155) {
    let x_1160 : f32 = u_xlat1.x;
    x_1156 = x_1160;
  } else {
    let x_1163 : f32 = u_xlat2.x;
    x_1156 = x_1163;
  }
  let x_1164 : f32 = x_1156;
  SV_Target0.x = x_1164;
  let x_1168 : bool = u_xlatb0.y;
  if (x_1168) {
    let x_1173 : f32 = u_xlat1.y;
    x_1169 = x_1173;
  } else {
    let x_1176 : f32 = u_xlat2.y;
    x_1169 = x_1176;
  }
  let x_1177 : f32 = x_1169;
  SV_Target0.y = x_1177;
  let x_1180 : bool = u_xlatb0.z;
  if (x_1180) {
    let x_1185 : f32 = u_xlat1.z;
    x_1181 = x_1185;
  } else {
    let x_1188 : f32 = u_xlat2.z;
    x_1181 = x_1188;
  }
  let x_1189 : f32 = x_1181;
  SV_Target0.z = x_1189;
  let x_1191 : f32 = u_xlat15;
  SV_Target0.w = x_1191;
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

