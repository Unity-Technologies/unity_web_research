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
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_402 : f32;
  var x_659 : f32;
  var x_671 : f32;
  var x_684 : f32;
  var x_842 : f32;
  var x_854 : f32;
  var x_866 : f32;
  var u_xlat6 : vec3<f32>;
  var x_979 : f32;
  var x_991 : f32;
  var x_1003 : f32;
  var x_1067 : f32;
  var x_1080 : f32;
  var x_1092 : f32;
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
  let x_461 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_467 : f32 = x_32.x_Bloom_Settings.x;
  u_xlat2.x = (x_467 * 0.5f);
  let x_470 : vec4<f32> = u_xlat0;
  let x_472 : vec4<f32> = u_xlat2;
  let x_475 : vec2<f32> = u_xlat12;
  u_xlat3 = ((vec4<f32>(x_470.x, x_470.y, x_470.z, x_470.y) * vec4<f32>(x_472.x, x_472.x, x_472.x, x_472.x)) + vec4<f32>(x_475.x, x_475.y, x_475.x, x_475.y));
  let x_478 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_478, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_482 : vec4<f32> = u_xlat3;
  let x_485 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_519 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_543 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_540 * vec4<f32>(x_543.y, x_543.y, x_543.y, x_543.y));
  let x_546 : vec2<f32> = u_xlat12;
  let x_549 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_553 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
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
  let x_576 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_578 : vec3<f32> = (vec3<f32>(x_573.x, x_573.y, x_573.z) * vec3<f32>(x_576.z, x_576.z, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  u_xlat2.w = 0.0f;
  let x_582 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_582 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_585 : vec4<f32> = u_xlat0;
  let x_589 : vec3<f32> = x_32.x_Bloom_Color;
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
  u_xlat0 = clamp(x_605, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_609 : vec4<f32> = u_xlat0;
  let x_613 : vec3<f32> = (vec3<f32>(x_609.z, x_609.x, x_609.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_614 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_616 : vec4<f32> = u_xlat0;
  let x_620 : vec3<f32> = max(vec3<f32>(x_616.z, x_616.x, x_616.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_621 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_623 : vec4<f32> = u_xlat2;
  let x_625 : vec3<f32> = log2(vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_626 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_625.z, x_626.w);
  let x_628 : vec4<f32> = u_xlat2;
  let x_632 : vec3<f32> = (vec3<f32>(x_628.x, x_628.y, x_628.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_633 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_632.z, x_633.w);
  let x_635 : vec4<f32> = u_xlat2;
  let x_637 : vec3<f32> = exp2(vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
  let x_640 : vec4<f32> = u_xlat2;
  let x_647 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_648 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_647.z, x_648.w);
  let x_652 : vec4<f32> = u_xlat0;
  let x_655 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_652.z, x_652.x, x_652.y, x_652.z));
  u_xlatb0 = vec3<bool>(x_655.x, x_655.y, x_655.z);
  let x_658 : bool = u_xlatb0.x;
  if (x_658) {
    let x_663 : f32 = u_xlat1.x;
    x_659 = x_663;
  } else {
    let x_666 : f32 = u_xlat2.x;
    x_659 = x_666;
  }
  let x_667 : f32 = x_659;
  u_xlat0.x = x_667;
  let x_670 : bool = u_xlatb0.y;
  if (x_670) {
    let x_675 : f32 = u_xlat1.y;
    x_671 = x_675;
  } else {
    let x_678 : f32 = u_xlat2.y;
    x_671 = x_678;
  }
  let x_679 : f32 = x_671;
  u_xlat0.y = x_679;
  let x_683 : bool = u_xlatb0.z;
  if (x_683) {
    let x_688 : f32 = u_xlat1.z;
    x_684 = x_688;
  } else {
    let x_691 : f32 = u_xlat2.z;
    x_684 = x_691;
  }
  let x_692 : f32 = x_684;
  u_xlat0.z = x_692;
  let x_694 : vec4<f32> = u_xlat0;
  let x_698 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_700 : vec3<f32> = (vec3<f32>(x_694.x, x_694.y, x_694.z) * vec3<f32>(x_698.z, x_698.z, x_698.z));
  let x_701 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
  let x_704 : f32 = u_xlat1.x;
  u_xlat5 = floor(x_704);
  let x_707 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_710 : vec2<f32> = (vec2<f32>(x_707.x, x_707.y) * vec2<f32>(0.5f, 0.5f));
  let x_711 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_710.x, x_711.y, x_711.z, x_710.y);
  let x_713 : vec4<f32> = u_xlat1;
  let x_716 : vec3<f32> = x_32.x_Lut2D_Params;
  let x_719 : vec4<f32> = u_xlat1;
  let x_721 : vec2<f32> = ((vec2<f32>(x_713.y, x_713.z) * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_719.x, x_719.w));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_722.x, x_721.x, x_721.y, x_722.w);
  let x_724 : f32 = u_xlat5;
  let x_726 : f32 = x_32.x_Lut2D_Params.y;
  let x_729 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_724 * x_726) + x_729);
  let x_737 : vec4<f32> = u_xlat1;
  let x_739 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_737.x, x_737.z));
  let x_740 : vec3<f32> = vec3<f32>(x_739.x, x_739.y, x_739.z);
  let x_741 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
  let x_744 : f32 = x_32.x_Lut2D_Params.y;
  u_xlat3.x = x_744;
  u_xlat3.y = 0.0f;
  let x_747 : vec4<f32> = u_xlat1;
  let x_749 : vec4<f32> = u_xlat3;
  let x_751 : vec2<f32> = (vec2<f32>(x_747.x, x_747.z) + vec2<f32>(x_749.x, x_749.y));
  let x_752 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_751.x, x_751.y, x_752.z, x_752.w);
  let x_757 : vec4<f32> = u_xlat1;
  let x_759 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_757.x, x_757.y));
  let x_760 : vec3<f32> = vec3<f32>(x_759.x, x_759.y, x_759.z);
  let x_761 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_764 : f32 = u_xlat0.x;
  let x_766 : f32 = x_32.x_Lut2D_Params.z;
  let x_768 : f32 = u_xlat5;
  u_xlat0.x = ((x_764 * x_766) + -(x_768));
  let x_772 : vec4<f32> = u_xlat2;
  let x_775 : vec4<f32> = u_xlat1;
  let x_777 : vec3<f32> = (-(vec3<f32>(x_772.x, x_772.y, x_772.z)) + vec3<f32>(x_775.x, x_775.y, x_775.z));
  let x_778 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
  let x_780 : vec4<f32> = u_xlat0;
  let x_782 : vec4<f32> = u_xlat1;
  let x_785 : vec4<f32> = u_xlat2;
  let x_787 : vec3<f32> = ((vec3<f32>(x_780.x, x_780.x, x_780.x) * vec3<f32>(x_782.x, x_782.y, x_782.z)) + vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
  let x_790 : vec4<f32> = u_xlat0;
  let x_794 : vec3<f32> = (vec3<f32>(x_790.x, x_790.y, x_790.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_795 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_801 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_802 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat2;
  let x_808 : vec3<f32> = (vec3<f32>(x_804.x, x_804.y, x_804.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_808.x, x_808.y, x_808.z, x_809.w);
  let x_811 : vec4<f32> = u_xlat2;
  let x_814 : vec3<f32> = max(abs(vec3<f32>(x_811.x, x_811.y, x_811.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_815 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat2;
  let x_819 : vec3<f32> = log2(vec3<f32>(x_817.x, x_817.y, x_817.z));
  let x_820 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec4<f32> = u_xlat2;
  let x_826 : vec3<f32> = (vec3<f32>(x_822.x, x_822.y, x_822.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_827 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat2;
  let x_831 : vec3<f32> = exp2(vec3<f32>(x_829.x, x_829.y, x_829.z));
  let x_832 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_838 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_836.x, x_836.y, x_836.z, x_836.x));
  u_xlatb0 = vec3<bool>(x_838.x, x_838.y, x_838.z);
  let x_841 : bool = u_xlatb0.x;
  if (x_841) {
    let x_846 : f32 = u_xlat1.x;
    x_842 = x_846;
  } else {
    let x_849 : f32 = u_xlat2.x;
    x_842 = x_849;
  }
  let x_850 : f32 = x_842;
  u_xlat0.x = x_850;
  let x_853 : bool = u_xlatb0.y;
  if (x_853) {
    let x_858 : f32 = u_xlat1.y;
    x_854 = x_858;
  } else {
    let x_861 : f32 = u_xlat2.y;
    x_854 = x_861;
  }
  let x_862 : f32 = x_854;
  u_xlat0.y = x_862;
  let x_865 : bool = u_xlatb0.z;
  if (x_865) {
    let x_870 : f32 = u_xlat1.z;
    x_866 = x_870;
  } else {
    let x_873 : f32 = u_xlat2.z;
    x_866 = x_873;
  }
  let x_874 : f32 = x_866;
  u_xlat0.z = x_874;
  let x_876 : vec4<f32> = phase0_Input0_1;
  let x_880 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_884 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_886 : vec2<f32> = ((vec2<f32>(x_876.x, x_876.y) * vec2<f32>(x_880.x, x_880.y)) + vec2<f32>(x_884.z, x_884.w));
  let x_887 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_886.x, x_886.y, x_887.z, x_887.w);
  let x_894 : vec4<f32> = u_xlat1;
  let x_896 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_894.x, x_894.y));
  u_xlat1.x = x_896.w;
  let x_900 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_900 * 2.0f) + -1.0f);
  let x_908 : f32 = u_xlat1.x;
  u_xlat6.x = ((x_908 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_914 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_914, 0.0f, 1.0f);
  let x_918 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_918 * 2.0f) + -1.0f);
  let x_923 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_923)) + 1.0f);
  let x_929 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_929);
  let x_933 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_933) + 1.0f);
  let x_938 : f32 = u_xlat1.x;
  let x_940 : f32 = u_xlat6.x;
  u_xlat1.x = (x_938 * x_940);
  let x_943 : vec4<f32> = u_xlat0;
  u_xlat6 = (vec3<f32>(x_943.x, x_943.y, x_943.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_946 : vec4<f32> = u_xlat0;
  let x_949 : vec3<f32> = max(abs(vec3<f32>(x_946.x, x_946.y, x_946.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_949.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_954 : vec3<f32> = log2(vec3<f32>(x_952.x, x_952.y, x_952.z));
  let x_955 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_954.x, x_954.y, x_954.z, x_955.w);
  let x_957 : vec4<f32> = u_xlat2;
  let x_959 : vec3<f32> = (vec3<f32>(x_957.x, x_957.y, x_957.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat2;
  let x_964 : vec3<f32> = exp2(vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec4<f32> = u_xlat2;
  let x_970 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_971 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = u_xlat0;
  let x_975 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_973.x, x_973.y, x_973.z, x_973.x));
  u_xlatb0 = vec3<bool>(x_975.x, x_975.y, x_975.z);
  let x_978 : bool = u_xlatb0.x;
  if (x_978) {
    let x_983 : f32 = u_xlat6.x;
    x_979 = x_983;
  } else {
    let x_986 : f32 = u_xlat2.x;
    x_979 = x_986;
  }
  let x_987 : f32 = x_979;
  u_xlat0.x = x_987;
  let x_990 : bool = u_xlatb0.y;
  if (x_990) {
    let x_995 : f32 = u_xlat6.y;
    x_991 = x_995;
  } else {
    let x_998 : f32 = u_xlat2.y;
    x_991 = x_998;
  }
  let x_999 : f32 = x_991;
  u_xlat0.y = x_999;
  let x_1002 : bool = u_xlatb0.z;
  if (x_1002) {
    let x_1007 : f32 = u_xlat6.z;
    x_1003 = x_1007;
  } else {
    let x_1010 : f32 = u_xlat2.z;
    x_1003 = x_1010;
  }
  let x_1011 : f32 = x_1003;
  u_xlat0.z = x_1011;
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1018 : vec4<f32> = u_xlat0;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1013.x, x_1013.x, x_1013.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1023 : vec4<f32> = u_xlat0;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : vec3<f32> = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1031 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1036 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat2;
  let x_1041 : vec3<f32> = max(abs(vec3<f32>(x_1038.x, x_1038.y, x_1038.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1042 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1041.x, x_1041.y, x_1041.z, x_1042.w);
  let x_1044 : vec4<f32> = u_xlat2;
  let x_1046 : vec3<f32> = log2(vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat2;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1052 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat2;
  let x_1056 : vec3<f32> = exp2(vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat0;
  let x_1061 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.x));
  u_xlatb0 = vec3<bool>(x_1061.x, x_1061.y, x_1061.z);
  let x_1066 : bool = u_xlatb0.x;
  if (x_1066) {
    let x_1071 : f32 = u_xlat1.x;
    x_1067 = x_1071;
  } else {
    let x_1074 : f32 = u_xlat2.x;
    x_1067 = x_1074;
  }
  let x_1075 : f32 = x_1067;
  SV_Target0.x = x_1075;
  let x_1079 : bool = u_xlatb0.y;
  if (x_1079) {
    let x_1084 : f32 = u_xlat1.y;
    x_1080 = x_1084;
  } else {
    let x_1087 : f32 = u_xlat2.y;
    x_1080 = x_1087;
  }
  let x_1088 : f32 = x_1080;
  SV_Target0.y = x_1088;
  let x_1091 : bool = u_xlatb0.z;
  if (x_1091) {
    let x_1096 : f32 = u_xlat1.z;
    x_1092 = x_1096;
  } else {
    let x_1099 : f32 = u_xlat2.z;
    x_1092 = x_1099;
  }
  let x_1100 : f32 = x_1092;
  SV_Target0.z = x_1100;
  let x_1103 : f32 = u_xlat0.w;
  SV_Target0.w = x_1103;
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

