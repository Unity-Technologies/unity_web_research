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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb7 : bool;
  var u_xlat12 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat17 : f32;
  var u_xlat8 : f32;
  var u_xlat13 : f32;
  var u_xlat18 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : bool;
  var x_219 : f32;
  var u_xlat5 : f32;
  var u_xlat7 : f32;
  var u_xlatb8 : bool;
  var x_370 : f32;
  var u_xlatb0 : bool;
  var x_398 : f32;
  var u_xlatb3 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_660 : f32;
  var x_672 : f32;
  var x_685 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat11 : vec2<f32>;
  var u_xlatb1 : vec3<bool>;
  var x_843 : f32;
  var x_855 : f32;
  var x_867 : f32;
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
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_70);
  let x_80 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb7 = (0.0f < x_80);
  let x_82 : bool = u_xlatb7;
  if (x_82) {
    let x_87 : vec4<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_32.x_Distortion_Amount;
    u_xlat12 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat12.x;
    u_xlat3.x = sin(x_95);
    let x_100 : f32 = u_xlat12.x;
    u_xlat4.x = cos(x_100);
    let x_104 : f32 = u_xlat3.x;
    let x_106 : f32 = u_xlat4.x;
    u_xlat12.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat12.y;
    u_xlat17 = (1.0f / x_113);
    let x_116 : f32 = u_xlat12.x;
    let x_117 : f32 = u_xlat17;
    u_xlat12.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat12;
    let x_127 : vec4<f32> = u_xlat1;
    u_xlat12 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + vec2<f32>(x_127.x, x_127.y));
  } else {
    let x_132 : f32 = u_xlat2.x;
    u_xlat3.x = (1.0f / x_132);
    let x_136 : f32 = u_xlat3.x;
    let x_138 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_136 * x_138);
    let x_142 : f32 = u_xlat2.x;
    let x_144 : f32 = x_32.x_Distortion_Amount.y;
    u_xlat2.x = (x_142 * x_144);
    let x_149 : f32 = u_xlat2.x;
    u_xlat8 = min(abs(x_149), 1.0f);
    let x_154 : f32 = u_xlat2.x;
    u_xlat13 = max(abs(x_154), 1.0f);
    let x_157 : f32 = u_xlat13;
    u_xlat13 = (1.0f / x_157);
    let x_159 : f32 = u_xlat13;
    let x_160 : f32 = u_xlat8;
    u_xlat8 = (x_159 * x_160);
    let x_162 : f32 = u_xlat8;
    let x_163 : f32 = u_xlat8;
    u_xlat13 = (x_162 * x_163);
    let x_166 : f32 = u_xlat13;
    u_xlat18 = ((x_166 * 0.0208351f) + -0.085133001f);
    let x_171 : f32 = u_xlat13;
    let x_172 : f32 = u_xlat18;
    u_xlat18 = ((x_171 * x_172) + 0.180141002f);
    let x_176 : f32 = u_xlat13;
    let x_177 : f32 = u_xlat18;
    u_xlat18 = ((x_176 * x_177) + -0.330299497f);
    let x_181 : f32 = u_xlat13;
    let x_182 : f32 = u_xlat18;
    u_xlat13 = ((x_181 * x_182) + 0.999866009f);
    let x_186 : f32 = u_xlat13;
    let x_187 : f32 = u_xlat8;
    u_xlat18 = (x_186 * x_187);
    let x_191 : f32 = u_xlat2.x;
    u_xlatb4 = (1.0f < abs(x_191));
    let x_194 : f32 = u_xlat18;
    u_xlat18 = ((x_194 * -2.0f) + 1.570796371f);
    let x_199 : bool = u_xlatb4;
    let x_200 : f32 = u_xlat18;
    u_xlat18 = select(0.0f, x_200, x_199);
    let x_202 : f32 = u_xlat8;
    let x_203 : f32 = u_xlat13;
    let x_205 : f32 = u_xlat18;
    u_xlat8 = ((x_202 * x_203) + x_205);
    let x_208 : f32 = u_xlat2.x;
    u_xlat2.x = min(x_208, 1.0f);
    let x_213 : f32 = u_xlat2.x;
    let x_215 : f32 = u_xlat2.x;
    u_xlatb2 = (x_213 < -(x_215));
    let x_218 : bool = u_xlatb2;
    if (x_218) {
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
    let x_259 : vec4<f32> = x_32.x_Distortion_Amount;
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
    let x_303 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat5 = (x_301 * x_303);
    let x_306 : f32 = u_xlat0.x;
    let x_308 : f32 = x_32.x_Distortion_Amount.y;
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
  let x_457 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_457.x, x_457.y, x_457.x, x_457.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_463 : f32 = x_32.x_Bloom_Settings.x;
  u_xlat2.x = (x_463 * 0.5f);
  let x_466 : vec4<f32> = u_xlat0;
  let x_468 : vec4<f32> = u_xlat2;
  let x_471 : vec2<f32> = u_xlat12;
  u_xlat3 = ((vec4<f32>(x_466.x, x_466.y, x_466.z, x_466.y) * vec4<f32>(x_468.x, x_468.x, x_468.x, x_468.x)) + vec4<f32>(x_471.x, x_471.y, x_471.x, x_471.y));
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
  let x_499 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_498 + x_499);
  let x_501 : vec4<f32> = u_xlat0;
  let x_503 : vec4<f32> = u_xlat2;
  let x_506 : vec2<f32> = u_xlat12;
  u_xlat0 = ((vec4<f32>(x_501.x, x_501.w, x_501.z, x_501.w) * vec4<f32>(x_503.x, x_503.x, x_503.x, x_503.x)) + vec4<f32>(x_506.x, x_506.y, x_506.x, x_506.y));
  let x_509 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_509, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_513 : vec4<f32> = u_xlat0;
  let x_515 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_539 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_536 * vec4<f32>(x_539.y, x_539.y, x_539.y, x_539.y));
  let x_542 : vec2<f32> = u_xlat12;
  let x_545 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_549 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
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
  let x_572 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_574 : vec3<f32> = (vec3<f32>(x_569.x, x_569.y, x_569.z) * vec3<f32>(x_572.z, x_572.z, x_572.z));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  u_xlat2.w = 0.0f;
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_578 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_581 : vec4<f32> = u_xlat0;
  let x_585 : vec3<f32> = x_32.x_Bloom_Color;
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
  let x_601 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_601, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_605 : vec4<f32> = u_xlat0;
  let x_609 : vec3<f32> = (vec3<f32>(x_605.z, x_605.x, x_605.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_610 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_609.x, x_609.y, x_609.z, x_610.w);
  let x_612 : vec4<f32> = u_xlat0;
  let x_616 : vec3<f32> = max(vec3<f32>(x_612.z, x_612.x, x_612.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_617 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
  let x_619 : vec4<f32> = u_xlat2;
  let x_621 : vec3<f32> = log2(vec3<f32>(x_619.x, x_619.y, x_619.z));
  let x_622 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_621.x, x_621.y, x_621.z, x_622.w);
  let x_624 : vec4<f32> = u_xlat2;
  let x_628 : vec3<f32> = (vec3<f32>(x_624.x, x_624.y, x_624.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_629 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
  let x_631 : vec4<f32> = u_xlat2;
  let x_633 : vec3<f32> = exp2(vec3<f32>(x_631.x, x_631.y, x_631.z));
  let x_634 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat2;
  let x_643 : vec3<f32> = ((vec3<f32>(x_636.x, x_636.y, x_636.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_644 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_643.x, x_643.y, x_643.z, x_644.w);
  let x_651 : vec4<f32> = u_xlat0;
  let x_654 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_651.z, x_651.x, x_651.y, x_651.z));
  u_xlatb3 = vec3<bool>(x_654.x, x_654.y, x_654.z);
  let x_657 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_657;
  let x_659 : bool = u_xlatb3.x;
  if (x_659) {
    let x_664 : f32 = u_xlat1.x;
    x_660 = x_664;
  } else {
    let x_667 : f32 = u_xlat2.x;
    x_660 = x_667;
  }
  let x_668 : f32 = x_660;
  hlslcc_movcTemp.x = x_668;
  let x_671 : bool = u_xlatb3.y;
  if (x_671) {
    let x_676 : f32 = u_xlat1.y;
    x_672 = x_676;
  } else {
    let x_679 : f32 = u_xlat2.y;
    x_672 = x_679;
  }
  let x_680 : f32 = x_672;
  hlslcc_movcTemp.y = x_680;
  let x_684 : bool = u_xlatb3.z;
  if (x_684) {
    let x_689 : f32 = u_xlat1.z;
    x_685 = x_689;
  } else {
    let x_692 : f32 = u_xlat2.z;
    x_685 = x_692;
  }
  let x_693 : f32 = x_685;
  hlslcc_movcTemp.z = x_693;
  let x_695 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_695;
  let x_698 : vec4<f32> = u_xlat1;
  let x_702 : vec3<f32> = x_32.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_702.z, x_702.z, x_702.z));
  let x_706 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_706);
  let x_710 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_713 : vec2<f32> = (vec2<f32>(x_710.x, x_710.y) * vec2<f32>(0.5f, 0.5f));
  let x_714 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
  let x_716 : vec3<f32> = u_xlat6;
  let x_719 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_722 : vec4<f32> = u_xlat2;
  let x_724 : vec2<f32> = ((vec2<f32>(x_716.y, x_716.z) * vec2<f32>(x_719.x, x_719.y)) + vec2<f32>(x_722.x, x_722.y));
  let x_725 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_725.x, x_724.x, x_724.y, x_725.w);
  let x_728 : f32 = u_xlat6.x;
  let x_730 : f32 = x_32.x_Lut2D_Params.y;
  let x_733 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_728 * x_730) + x_733);
  let x_741 : vec4<f32> = u_xlat2;
  let x_743 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_741.x, x_741.z));
  let x_744 : vec3<f32> = vec3<f32>(x_743.x, x_743.y, x_743.z);
  let x_745 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  let x_748 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat4.x = x_748;
  u_xlat4.y = 0.0f;
  let x_752 : vec4<f32> = u_xlat2;
  let x_754 : vec4<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_752.x, x_752.z) + vec2<f32>(x_754.x, x_754.y));
  let x_760 : vec2<f32> = u_xlat11;
  let x_761 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_760);
  let x_762 : vec3<f32> = vec3<f32>(x_761.x, x_761.y, x_761.z);
  let x_763 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  let x_766 : f32 = u_xlat1.x;
  let x_768 : f32 = x_32.x_Lut2D_Params.z;
  let x_771 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_766 * x_768) + -(x_771));
  let x_775 : vec4<f32> = u_xlat3;
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat6 = (-(vec3<f32>(x_775.x, x_775.y, x_775.z)) + vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec4<f32> = u_xlat1;
  let x_783 : vec3<f32> = u_xlat6;
  let x_785 : vec4<f32> = u_xlat3;
  let x_787 : vec3<f32> = ((vec3<f32>(x_781.x, x_781.x, x_781.x) * x_783) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat1;
  let x_794 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_795 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat1;
  let x_801 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_802 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat3;
  let x_808 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_809 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat3;
  let x_814 : vec3<f32> = max(abs(vec3<f32>(x_811.x, x_811.y, x_811.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_815 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat3;
  let x_819 : vec3<f32> = log2(vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat3;
  let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_827 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat3;
  let x_831 : vec3<f32> = exp2(vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_837 : vec4<f32> = u_xlat1;
  let x_839 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_837.x, x_837.y, x_837.z, x_837.x));
  u_xlatb1 = vec3<bool>(x_839.x, x_839.y, x_839.z);
  let x_842 : bool = u_xlatb1.x;
  if (x_842) {
    let x_847 : f32 = u_xlat2.x;
    x_843 = x_847;
  } else {
    let x_850 : f32 = u_xlat3.x;
    x_843 = x_850;
  }
  let x_851 : f32 = x_843;
  u_xlat0.x = x_851;
  let x_854 : bool = u_xlatb1.y;
  if (x_854) {
    let x_859 : f32 = u_xlat2.y;
    x_855 = x_859;
  } else {
    let x_862 : f32 = u_xlat3.y;
    x_855 = x_862;
  }
  let x_863 : f32 = x_855;
  u_xlat0.y = x_863;
  let x_866 : bool = u_xlatb1.z;
  if (x_866) {
    let x_871 : f32 = u_xlat2.z;
    x_867 = x_871;
  } else {
    let x_874 : f32 = u_xlat3.z;
    x_867 = x_874;
  }
  let x_875 : f32 = x_867;
  u_xlat0.z = x_875;
  let x_879 : f32 = x_32.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_879);
  let x_883 : bool = u_xlatb1.x;
  if (x_883) {
    let x_886 : vec4<f32> = u_xlat0;
    let x_887 : vec3<f32> = vec3<f32>(x_886.x, x_886.y, x_886.z);
    let x_888 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
    let x_890 : vec4<f32> = u_xlat1;
    let x_894 : vec3<f32> = clamp(vec3<f32>(x_890.x, x_890.y, x_890.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_895 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
    let x_897 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_897.x, x_897.y, x_897.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_907 : vec4<f32> = u_xlat0;
  SV_Target0 = x_907;
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
