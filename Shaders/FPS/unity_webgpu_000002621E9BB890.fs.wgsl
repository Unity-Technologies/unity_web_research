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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_398 : f32;
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
  let x_680 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
  let x_682 : vec4<f32> = u_xlat0;
  let x_686 : f32 = x_31.x_PostExposure;
  let x_688 : f32 = x_31.x_PostExposure;
  let x_690 : f32 = x_31.x_PostExposure;
  let x_692 : f32 = x_31.x_PostExposure;
  let x_693 : vec4<f32> = vec4<f32>(x_686, x_688, x_690, x_692);
  u_xlat0 = (vec4<f32>(x_682.w, x_682.x, x_682.y, x_682.z) * vec4<f32>(x_693.x, x_693.y, x_693.z, x_693.w));
  let x_700 : vec4<f32> = u_xlat0;
  let x_707 : vec3<f32> = ((vec3<f32>(x_700.y, x_700.z, x_700.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_708 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat1;
  let x_712 : vec3<f32> = log2(vec3<f32>(x_710.x, x_710.y, x_710.z));
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat1;
  let x_722 : vec3<f32> = ((vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_723 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat1;
  let x_729 : vec3<f32> = clamp(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_730 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_737 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_739 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(x_737.y, x_737.y, x_737.y));
  let x_740 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_743 : f32 = x_31.x_Lut3D_Params.x;
  u_xlat16 = (x_743 * 0.5f);
  let x_745 : vec4<f32> = u_xlat1;
  let x_748 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_751 : f32 = u_xlat16;
  let x_753 : vec3<f32> = ((vec3<f32>(x_745.x, x_745.y, x_745.z) * vec3<f32>(x_748.x, x_748.x, x_748.x)) + vec3<f32>(x_751, x_751, x_751));
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec3<f32> = vec3<f32>(x_766.x, x_766.y, x_766.z);
  let x_768 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_768.x, x_767.x, x_767.y, x_767.z);
  let x_773 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_773);
  let x_775 : bool = u_xlatb1;
  if (x_775) {
    let x_778 : vec4<f32> = u_xlat0;
    let x_779 : vec3<f32> = vec3<f32>(x_778.y, x_778.z, x_778.w);
    let x_780 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
    let x_782 : vec4<f32> = u_xlat1;
    let x_786 : vec3<f32> = clamp(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_787 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
    let x_789 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_789.x, x_789.y, x_789.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_795 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_795.y, x_795.z, x_795.w, x_795.x);
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

