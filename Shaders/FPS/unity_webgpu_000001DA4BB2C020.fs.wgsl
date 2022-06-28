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
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
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

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat16 : f32;

var<private> u_xlatb1 : vec3<bool>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

var<private> u_xlat11 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_398 : f32;
  var x_749 : f32;
  var x_761 : f32;
  var x_774 : f32;
  var x_930 : f32;
  var x_942 : f32;
  var x_954 : f32;
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
    let x_409 : f32 = u_xlat5;
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
  let x_468 : vec4<f32> = u_xlat2;
  let x_471 : vec2<f32> = u_xlat12;
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
  let x_503 : vec4<f32> = u_xlat2;
  let x_506 : vec2<f32> = u_xlat12;
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
  let x_542 : vec2<f32> = u_xlat12;
  let x_545 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_549 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_551 : vec2<f32> = ((x_542 * vec2<f32>(x_545.x, x_545.y)) + vec2<f32>(x_549.z, x_549.w));
  let x_552 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
  let x_559 : vec4<f32> = u_xlat2;
  let x_561 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_559.x, x_559.y));
  let x_562 : vec3<f32> = vec3<f32>(x_561.x, x_561.y, x_561.z);
  let x_563 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_565 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_565 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
  let x_569 : vec4<f32> = u_xlat2;
  let x_572 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.z, x_572.z, x_572.z));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  u_xlat2.w = 0.0f;
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_578 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_581 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = x_31.x_Bloom_Color;
  let x_586 : vec3<f32> = (vec3<f32>(x_581.x, x_581.y, x_581.z) * x_585);
  let x_587 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_590 : f32 = u_xlat0.w;
  u_xlat4.w = (x_590 * 0.25f);
  let x_593 : vec4<f32> = u_xlat1;
  let x_594 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_593 + x_594);
  let x_596 : vec4<f32> = u_xlat2;
  let x_597 : vec4<f32> = u_xlat3;
  let x_599 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_596 * x_597) + x_599);
  let x_601 : vec4<f32> = phase0_Input0_1;
  let x_605 : vec4<f32> = x_31.x_Grain_Params2;
  let x_609 : vec4<f32> = x_31.x_Grain_Params2;
  let x_611 : vec2<f32> = ((vec2<f32>(x_601.z, x_601.w) * vec2<f32>(x_605.x, x_605.y)) + vec2<f32>(x_609.z, x_609.w));
  let x_612 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
  let x_619 : vec4<f32> = u_xlat1;
  let x_621 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_619.x, x_619.y));
  let x_622 : vec3<f32> = vec3<f32>(x_621.x, x_621.y, x_621.z);
  let x_623 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
  let x_625 : vec4<f32> = u_xlat0;
  let x_626 : vec3<f32> = vec3<f32>(x_625.x, x_625.y, x_625.z);
  let x_627 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
  let x_629 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = clamp(vec3<f32>(x_629.x, x_629.y, x_629.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_637 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_644 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_644);
  let x_648 : f32 = x_31.x_Grain_Params1.x;
  let x_649 : f32 = u_xlat16;
  u_xlat16 = ((x_648 * -(x_649)) + 1.0f);
  let x_653 : vec4<f32> = u_xlat0;
  let x_655 : vec4<f32> = u_xlat1;
  let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat1;
  let x_663 : f32 = x_31.x_Grain_Params1.y;
  let x_665 : f32 = x_31.x_Grain_Params1.y;
  let x_667 : f32 = x_31.x_Grain_Params1.y;
  let x_669 : vec3<f32> = (vec3<f32>(x_660.x, x_660.y, x_660.z) * vec3<f32>(x_663, x_665, x_667));
  let x_670 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_669.x, x_669.y, x_669.z, x_670.w);
  let x_672 : vec4<f32> = u_xlat1;
  let x_674 : f32 = u_xlat16;
  let x_677 : vec4<f32> = u_xlat0;
  let x_679 : vec3<f32> = ((vec3<f32>(x_672.x, x_672.y, x_672.z) * vec3<f32>(x_674, x_674, x_674)) + vec3<f32>(x_677.x, x_677.y, x_677.z));
  let x_680 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat1;
  let x_686 : vec3<f32> = clamp(vec3<f32>(x_682.x, x_682.y, x_682.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_690 : f32 = u_xlat0.w;
  u_xlat0.w = x_690;
  let x_693 : f32 = u_xlat0.w;
  u_xlat0.w = clamp(x_693, 0.0f, 1.0f);
  let x_696 : vec4<f32> = u_xlat1;
  let x_700 : vec3<f32> = (vec3<f32>(x_696.z, x_696.x, x_696.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_701 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_703 : vec4<f32> = u_xlat1;
  let x_707 : vec3<f32> = max(vec3<f32>(x_703.z, x_703.x, x_703.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat3;
  let x_712 : vec3<f32> = log2(vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat3;
  let x_719 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_720 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  let x_722 : vec4<f32> = u_xlat3;
  let x_724 : vec3<f32> = exp2(vec3<f32>(x_722.x, x_722.y, x_722.z));
  let x_725 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat3;
  let x_734 : vec3<f32> = ((vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_742 : vec4<f32> = u_xlat1;
  let x_745 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_742.z, x_742.x, x_742.y, x_742.z));
  u_xlatb1 = vec3<bool>(x_745.x, x_745.y, x_745.z);
  let x_748 : bool = u_xlatb1.x;
  if (x_748) {
    let x_753 : f32 = u_xlat2.x;
    x_749 = x_753;
  } else {
    let x_756 : f32 = u_xlat3.x;
    x_749 = x_756;
  }
  let x_757 : f32 = x_749;
  u_xlat1.x = x_757;
  let x_760 : bool = u_xlatb1.y;
  if (x_760) {
    let x_765 : f32 = u_xlat2.y;
    x_761 = x_765;
  } else {
    let x_768 : f32 = u_xlat3.y;
    x_761 = x_768;
  }
  let x_769 : f32 = x_761;
  u_xlat1.y = x_769;
  let x_773 : bool = u_xlatb1.z;
  if (x_773) {
    let x_778 : f32 = u_xlat2.z;
    x_774 = x_778;
  } else {
    let x_781 : f32 = u_xlat3.z;
    x_774 = x_781;
  }
  let x_782 : f32 = x_774;
  u_xlat1.z = x_782;
  let x_786 : vec4<f32> = u_xlat1;
  let x_790 : vec3<f32> = x_31.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(x_790.z, x_790.z, x_790.z));
  let x_794 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_794);
  let x_798 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_801 : vec2<f32> = (vec2<f32>(x_798.x, x_798.y) * vec2<f32>(0.5f, 0.5f));
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_804 : vec3<f32> = u_xlat6;
  let x_807 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_810 : vec4<f32> = u_xlat2;
  let x_812 : vec2<f32> = ((vec2<f32>(x_804.y, x_804.z) * vec2<f32>(x_807.x, x_807.y)) + vec2<f32>(x_810.x, x_810.y));
  let x_813 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_813.x, x_812.x, x_812.y, x_813.w);
  let x_816 : f32 = u_xlat6.x;
  let x_818 : f32 = x_31.x_Lut2D_Params.y;
  let x_821 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_816 * x_818) + x_821);
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_829.x, x_829.z));
  let x_832 : vec3<f32> = vec3<f32>(x_831.x, x_831.y, x_831.z);
  let x_833 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_836 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat4.x = x_836;
  u_xlat4.y = 0.0f;
  let x_840 : vec4<f32> = u_xlat2;
  let x_842 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_840.x, x_840.z) + vec2<f32>(x_842.x, x_842.y));
  let x_848 : vec2<f32> = u_xlat11;
  let x_849 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_848);
  let x_850 : vec3<f32> = vec3<f32>(x_849.x, x_849.y, x_849.z);
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_854 : f32 = u_xlat1.x;
  let x_856 : f32 = x_31.x_Lut2D_Params.z;
  let x_859 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_854 * x_856) + -(x_859));
  let x_863 : vec4<f32> = u_xlat3;
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_863.x, x_863.y, x_863.z)) + vec3<f32>(x_866.x, x_866.y, x_866.z));
  let x_869 : vec4<f32> = u_xlat1;
  let x_871 : vec3<f32> = u_xlat6;
  let x_873 : vec4<f32> = u_xlat3;
  let x_875 : vec3<f32> = ((vec3<f32>(x_869.x, x_869.x, x_869.x) * x_871) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat1;
  let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_883 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_885 : vec4<f32> = u_xlat1;
  let x_889 : vec3<f32> = (vec3<f32>(x_885.x, x_885.y, x_885.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_890 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat3;
  let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_897 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat3;
  let x_902 : vec3<f32> = max(abs(vec3<f32>(x_899.x, x_899.y, x_899.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_903 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat3;
  let x_907 : vec3<f32> = log2(vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat3;
  let x_914 : vec3<f32> = (vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_915 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat3;
  let x_919 : vec3<f32> = exp2(vec3<f32>(x_917.x, x_917.y, x_917.z));
  let x_920 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_919.x, x_919.y, x_919.z, x_920.w);
  let x_924 : vec4<f32> = u_xlat1;
  let x_926 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_924.x, x_924.y, x_924.z, x_924.x));
  u_xlatb1 = vec3<bool>(x_926.x, x_926.y, x_926.z);
  let x_929 : bool = u_xlatb1.x;
  if (x_929) {
    let x_934 : f32 = u_xlat2.x;
    x_930 = x_934;
  } else {
    let x_937 : f32 = u_xlat3.x;
    x_930 = x_937;
  }
  let x_938 : f32 = x_930;
  u_xlat0.x = x_938;
  let x_941 : bool = u_xlatb1.y;
  if (x_941) {
    let x_946 : f32 = u_xlat2.y;
    x_942 = x_946;
  } else {
    let x_949 : f32 = u_xlat3.y;
    x_942 = x_949;
  }
  let x_950 : f32 = x_942;
  u_xlat0.y = x_950;
  let x_953 : bool = u_xlatb1.z;
  if (x_953) {
    let x_958 : f32 = u_xlat2.z;
    x_954 = x_958;
  } else {
    let x_961 : f32 = u_xlat3.z;
    x_954 = x_961;
  }
  let x_962 : f32 = x_954;
  u_xlat0.z = x_962;
  let x_966 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_966);
  let x_970 : bool = u_xlatb1.x;
  if (x_970) {
    let x_973 : vec4<f32> = u_xlat0;
    let x_974 : vec3<f32> = vec3<f32>(x_973.x, x_973.y, x_973.z);
    let x_975 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
    let x_977 : vec4<f32> = u_xlat1;
    let x_981 : vec3<f32> = clamp(vec3<f32>(x_977.x, x_977.y, x_977.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_982 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
    let x_984 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_984.x, x_984.y, x_984.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_990 : vec4<f32> = u_xlat0;
  SV_Target0 = x_990;
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

