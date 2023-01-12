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
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_Bloom_DirtTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb8 : bool;
  var u_xlat14 : vec2<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat20 : f32;
  var u_xlat9 : f32;
  var u_xlat15 : f32;
  var u_xlat21 : f32;
  var u_xlatb4 : bool;
  var u_xlatb2 : bool;
  var x_219 : f32;
  var u_xlat6 : f32;
  var u_xlat8 : f32;
  var u_xlatb9 : bool;
  var x_370 : f32;
  var u_xlatb0 : bool;
  var x_398 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlatb1 : bool;
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
  u_xlatb8 = (0.0f < x_80);
  let x_82 : bool = u_xlatb8;
  if (x_82) {
    let x_87 : vec4<f32> = u_xlat2;
    let x_90 : vec4<f32> = x_32.x_Distortion_Amount;
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
    let x_138 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat3.x = (x_136 * x_138);
    let x_142 : f32 = u_xlat2.x;
    let x_144 : f32 = x_32.x_Distortion_Amount.y;
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
    let x_237 : vec4<f32> = u_xlat2;
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
    let x_303 : f32 = x_32.x_Distortion_Amount.x;
    u_xlat6 = (x_301 * x_303);
    let x_306 : f32 = u_xlat0.x;
    let x_308 : f32 = x_32.x_Distortion_Amount.y;
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
  let x_457 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_457.x, x_457.y, x_457.x, x_457.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_461 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_470 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_461.x, x_461.y, x_461.w, x_461.y)) * vec4<f32>(x_467.x, x_467.x, x_467.x, x_467.x)) + vec4<f32>(x_470.x, x_470.y, x_470.x, x_470.y));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_473, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_477 : vec4<f32> = u_xlat3;
  let x_480 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_507 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_510 : vec2<f32> = u_xlat14;
  let x_511 : vec2<f32> = ((-(vec2<f32>(x_503.z, x_503.y)) * vec2<f32>(x_507.x, x_507.x)) + x_510);
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat2;
  let x_518 : vec2<f32> = clamp(vec2<f32>(x_514.x, x_514.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat2;
  let x_524 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_526 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_524, x_524));
  let x_527 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_526.x, x_526.y, x_527.z, x_527.w);
  let x_532 : vec4<f32> = u_xlat2;
  let x_534 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_532.x, x_532.y));
  u_xlat4 = x_534;
  let x_535 : vec4<f32> = u_xlat3;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_535 + x_536);
  let x_538 : vec4<f32> = u_xlat0;
  let x_541 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_544 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.w) * vec4<f32>(x_541.x, x_541.x, x_541.x, x_541.x)) + vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y));
  let x_547 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_547, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_551 * vec4<f32>(x_553, x_553, x_553, x_553));
  let x_560 : vec4<f32> = u_xlat4;
  let x_562 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_560.x, x_560.y));
  u_xlat5 = x_562;
  let x_563 : vec4<f32> = u_xlat5;
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_563 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_565);
  let x_567 : vec2<f32> = u_xlat14;
  let x_568 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat2;
  let x_574 : vec2<f32> = clamp(vec2<f32>(x_570.x, x_570.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_574.x, x_574.y, x_575.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat2;
  let x_580 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_582 : vec2<f32> = (vec2<f32>(x_577.x, x_577.y) * vec2<f32>(x_580, x_580));
  let x_583 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);
  let x_588 : vec4<f32> = u_xlat2;
  let x_590 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_588.x, x_588.y));
  u_xlat5 = x_590;
  let x_591 : vec4<f32> = u_xlat5;
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_591 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_595);
  let x_600 : vec4<f32> = u_xlat4;
  let x_602 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_600.z, x_600.w));
  u_xlat4 = x_602;
  let x_603 : vec4<f32> = u_xlat4;
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_603 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_605);
  let x_607 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_613 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_607.z, x_607.y, x_607.w, x_607.y) * vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.x)) + vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_616, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_620 * vec4<f32>(x_622, x_622, x_622, x_622));
  let x_628 : vec4<f32> = u_xlat4;
  let x_630 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_628.x, x_628.y));
  u_xlat5 = x_630;
  let x_631 : vec4<f32> = u_xlat3;
  let x_632 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_631 + x_632);
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_637.z, x_637.w));
  u_xlat4 = x_639;
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_640 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_650 : vec2<f32> = u_xlat14;
  let x_651 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_647.x, x_647.x)) + x_650);
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_658 : vec2<f32> = clamp(vec2<f32>(x_654.x, x_654.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_664 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_666 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_664, x_664));
  let x_667 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
  let x_672 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_672.x, x_672.y));
  u_xlat0 = x_674;
  let x_675 : vec4<f32> = u_xlat0;
  let x_676 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_675 + x_676);
  let x_678 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_678 * vec4<f32>(x_680.y, x_680.y, x_680.y, x_680.y));
  let x_683 : vec2<f32> = u_xlat14;
  let x_686 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_690 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_692 : vec2<f32> = ((x_683 * vec2<f32>(x_686.x, x_686.y)) + vec2<f32>(x_690.z, x_690.w));
  let x_693 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
  let x_700 : vec4<f32> = u_xlat2;
  let x_702 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_700.x, x_700.y));
  let x_703 : vec3<f32> = vec3<f32>(x_702.x, x_702.y, x_702.z);
  let x_704 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_706 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_710 : vec4<f32> = u_xlat2;
  let x_713 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_715 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_713.z, x_713.z, x_713.z));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  u_xlat2.w = 0.0f;
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_719 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_722 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = x_32.x_Bloom_Color;
  let x_727 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * x_726);
  let x_728 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_731 : f32 = u_xlat0.w;
  u_xlat4.w = (x_731 * 0.0625f);
  let x_734 : vec4<f32> = u_xlat1;
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_734 + x_735);
  let x_737 : vec4<f32> = u_xlat2;
  let x_739 : vec4<f32> = u_xlat3;
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_737.w, x_737.x, x_737.y, x_737.z) * vec4<f32>(x_739.w, x_739.x, x_739.y, x_739.z)) + vec4<f32>(x_742.w, x_742.x, x_742.y, x_742.z));
  let x_748 : f32 = x_32.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_748);
  let x_750 : bool = u_xlatb1;
  if (x_750) {
    let x_753 : vec4<f32> = u_xlat0;
    let x_754 : vec3<f32> = vec3<f32>(x_753.y, x_753.z, x_753.w);
    let x_755 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
    let x_757 : vec4<f32> = u_xlat1;
    let x_761 : vec3<f32> = clamp(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_762 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
    let x_764 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_764.x, x_764.y, x_764.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_774 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_774.y, x_774.z, x_774.w, x_774.x);
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

