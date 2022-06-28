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
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_31 : PGlobals;

var<private> u_xlat2 : vec4<f32>;

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

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_402 : f32;
  var x_861 : f32;
  var x_873 : f32;
  var x_886 : f32;
  var x_960 : f32;
  var x_973 : f32;
  var x_985 : f32;
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
  u_xlatb8 = (0.0f < x_79);
  let x_81 : bool = u_xlatb8;
  if (x_81) {
    let x_86 : vec4<f32> = u_xlat2;
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
    let x_413 : f32 = u_xlat6;
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
  u_xlat0 = (vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_465 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_474 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_465.x, x_465.y, x_465.w, x_465.y)) * vec4<f32>(x_471.x, x_471.x, x_471.x, x_471.x)) + vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_477, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_481 : vec4<f32> = u_xlat3;
  let x_484 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat3 = (x_481 * vec4<f32>(x_484, x_484, x_484, x_484));
  let x_492 : vec4<f32> = u_xlat3;
  let x_494 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_492.x, x_492.y));
  u_xlat4 = x_494;
  let x_498 : vec4<f32> = u_xlat3;
  let x_500 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_498.z, x_498.w));
  u_xlat3 = x_500;
  let x_501 : vec4<f32> = u_xlat3;
  let x_505 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_501 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_505);
  let x_507 : vec4<f32> = u_xlat0;
  let x_511 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_514 : vec2<f32> = u_xlat14;
  let x_515 : vec2<f32> = ((-(vec2<f32>(x_507.z, x_507.y)) * vec2<f32>(x_511.x, x_511.x)) + x_514);
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_522 : vec2<f32> = clamp(vec2<f32>(x_518.x, x_518.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_523 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat2;
  let x_528 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_530 : vec2<f32> = (vec2<f32>(x_525.x, x_525.y) * vec2<f32>(x_528, x_528));
  let x_531 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_536 : vec4<f32> = u_xlat2;
  let x_538 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_536.x, x_536.y));
  u_xlat4 = x_538;
  let x_539 : vec4<f32> = u_xlat3;
  let x_540 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_539 + x_540);
  let x_542 : vec4<f32> = u_xlat0;
  let x_545 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_548 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_542.z, x_542.w, x_542.x, x_542.w) * vec4<f32>(x_545.x, x_545.x, x_545.x, x_545.x)) + vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_551, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_555 : vec4<f32> = u_xlat4;
  let x_557 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_555 * vec4<f32>(x_557, x_557, x_557, x_557));
  let x_564 : vec4<f32> = u_xlat4;
  let x_566 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_564.x, x_564.y));
  u_xlat5 = x_566;
  let x_567 : vec4<f32> = u_xlat5;
  let x_569 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_567 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_569);
  let x_571 : vec2<f32> = u_xlat14;
  let x_572 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_571.x, x_571.y, x_572.z, x_572.w);
  let x_574 : vec4<f32> = u_xlat2;
  let x_578 : vec2<f32> = clamp(vec2<f32>(x_574.x, x_574.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_579.z, x_579.w);
  let x_581 : vec4<f32> = u_xlat2;
  let x_584 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_586 : vec2<f32> = (vec2<f32>(x_581.x, x_581.y) * vec2<f32>(x_584, x_584));
  let x_587 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_586.x, x_586.y, x_587.z, x_587.w);
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_592.x, x_592.y));
  u_xlat5 = x_594;
  let x_595 : vec4<f32> = u_xlat5;
  let x_599 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_595 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_599);
  let x_604 : vec4<f32> = u_xlat4;
  let x_606 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_604.z, x_604.w));
  u_xlat4 = x_606;
  let x_607 : vec4<f32> = u_xlat4;
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_607 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_609);
  let x_611 : vec4<f32> = u_xlat0;
  let x_614 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_617 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_611.z, x_611.y, x_611.w, x_611.y) * vec4<f32>(x_614.x, x_614.x, x_614.x, x_614.x)) + vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_620, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : f32 = x_31.x_RenderViewportScaleFactor;
  u_xlat4 = (x_624 * vec4<f32>(x_626, x_626, x_626, x_626));
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_632.x, x_632.y));
  u_xlat5 = x_634;
  let x_635 : vec4<f32> = u_xlat3;
  let x_636 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_635 + x_636);
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_641.z, x_641.w));
  u_xlat4 = x_643;
  let x_644 : vec4<f32> = u_xlat4;
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_644 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_651 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_654 : vec2<f32> = u_xlat14;
  let x_655 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_651.x, x_651.x)) + x_654);
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_662 : vec2<f32> = clamp(vec2<f32>(x_658.x, x_658.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat0;
  let x_668 : f32 = x_31.x_RenderViewportScaleFactor;
  let x_670 : vec2<f32> = (vec2<f32>(x_665.x, x_665.y) * vec2<f32>(x_668, x_668));
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_670.x, x_670.y, x_671.z, x_671.w);
  let x_676 : vec4<f32> = u_xlat0;
  let x_678 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_676.x, x_676.y));
  u_xlat0 = x_678;
  let x_679 : vec4<f32> = u_xlat0;
  let x_680 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_679 + x_680);
  let x_682 : vec4<f32> = u_xlat0;
  let x_684 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_682 * vec4<f32>(x_684.y, x_684.y, x_684.y, x_684.y));
  let x_687 : vec2<f32> = u_xlat14;
  let x_690 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_694 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_696 : vec2<f32> = ((x_687 * vec2<f32>(x_690.x, x_690.y)) + vec2<f32>(x_694.z, x_694.w));
  let x_697 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
  let x_704 : vec4<f32> = u_xlat2;
  let x_706 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_704.x, x_704.y));
  let x_707 : vec3<f32> = vec3<f32>(x_706.x, x_706.y, x_706.z);
  let x_708 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
  let x_710 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_710 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_714 : vec4<f32> = u_xlat2;
  let x_717 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_719 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_717.z, x_717.z, x_717.z));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  u_xlat2.w = 0.0f;
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_723 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_726 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = x_31.x_Bloom_Color;
  let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * x_730);
  let x_732 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : f32 = u_xlat0.w;
  u_xlat4.w = (x_735 * 0.0625f);
  let x_738 : vec4<f32> = u_xlat1;
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_738 + x_739);
  let x_741 : vec4<f32> = u_xlat2;
  let x_742 : vec4<f32> = u_xlat3;
  let x_744 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_741 * x_742) + x_744);
  let x_746 : vec4<f32> = phase0_Input0_1;
  let x_750 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_754 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_756 : vec2<f32> = ((vec2<f32>(x_746.x, x_746.y) * vec2<f32>(x_750.x, x_750.y)) + vec2<f32>(x_754.z, x_754.w));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_764.x, x_764.y));
  u_xlat1.x = x_766.w;
  let x_770 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_770 * 2.0f) + -1.0f);
  let x_777 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_777 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_783 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_783, 0.0f, 1.0f);
  let x_787 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_787 * 2.0f) + -1.0f);
  let x_792 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_792)) + 1.0f);
  let x_798 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_798);
  let x_802 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_802) + 1.0f);
  let x_807 : f32 = u_xlat1.x;
  let x_809 : f32 = u_xlat7.x;
  u_xlat1.x = (x_807 * x_809);
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_812.x, x_812.y, x_812.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_817 : vec4<f32> = u_xlat0;
  let x_822 : vec3<f32> = max(abs(vec3<f32>(x_817.x, x_817.y, x_817.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_823 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_822.x, x_822.y, x_822.z, x_823.w);
  let x_825 : vec4<f32> = u_xlat2;
  let x_827 : vec3<f32> = log2(vec3<f32>(x_825.x, x_825.y, x_825.z));
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat2;
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_835 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = exp2(vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat2;
  let x_849 : vec3<f32> = ((vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_850 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_857 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_854.x, x_854.y, x_854.z, x_854.x));
  u_xlatb0 = vec3<bool>(x_857.x, x_857.y, x_857.z);
  let x_860 : bool = u_xlatb0.x;
  if (x_860) {
    let x_865 : f32 = u_xlat7.x;
    x_861 = x_865;
  } else {
    let x_868 : f32 = u_xlat2.x;
    x_861 = x_868;
  }
  let x_869 : f32 = x_861;
  u_xlat0.x = x_869;
  let x_872 : bool = u_xlatb0.y;
  if (x_872) {
    let x_877 : f32 = u_xlat7.y;
    x_873 = x_877;
  } else {
    let x_880 : f32 = u_xlat2.y;
    x_873 = x_880;
  }
  let x_881 : f32 = x_873;
  u_xlat0.y = x_881;
  let x_885 : bool = u_xlatb0.z;
  if (x_885) {
    let x_890 : f32 = u_xlat7.z;
    x_886 = x_890;
  } else {
    let x_893 : f32 = u_xlat2.z;
    x_886 = x_893;
  }
  let x_894 : f32 = x_886;
  u_xlat0.z = x_894;
  let x_896 : vec4<f32> = u_xlat1;
  let x_901 : vec4<f32> = u_xlat0;
  let x_903 : vec3<f32> = ((vec3<f32>(x_896.x, x_896.x, x_896.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  let x_906 : vec4<f32> = u_xlat0;
  let x_910 : vec3<f32> = (vec3<f32>(x_906.x, x_906.y, x_906.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat0;
  let x_917 : vec3<f32> = (vec3<f32>(x_913.x, x_913.y, x_913.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_918 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat2;
  let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_925 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat2;
  let x_930 : vec3<f32> = max(abs(vec3<f32>(x_927.x, x_927.y, x_927.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_931 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_933 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = log2(vec3<f32>(x_933.x, x_933.y, x_933.z));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat2;
  let x_942 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_943 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_945 : vec4<f32> = u_xlat2;
  let x_947 : vec3<f32> = exp2(vec3<f32>(x_945.x, x_945.y, x_945.z));
  let x_948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_952 : vec4<f32> = u_xlat0;
  let x_954 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_952.x, x_952.y, x_952.z, x_952.x));
  u_xlatb0 = vec3<bool>(x_954.x, x_954.y, x_954.z);
  let x_959 : bool = u_xlatb0.x;
  if (x_959) {
    let x_964 : f32 = u_xlat1.x;
    x_960 = x_964;
  } else {
    let x_967 : f32 = u_xlat2.x;
    x_960 = x_967;
  }
  let x_968 : f32 = x_960;
  SV_Target0.x = x_968;
  let x_972 : bool = u_xlatb0.y;
  if (x_972) {
    let x_977 : f32 = u_xlat1.y;
    x_973 = x_977;
  } else {
    let x_980 : f32 = u_xlat2.y;
    x_973 = x_980;
  }
  let x_981 : f32 = x_973;
  SV_Target0.y = x_981;
  let x_984 : bool = u_xlatb0.z;
  if (x_984) {
    let x_989 : f32 = u_xlat1.z;
    x_985 = x_989;
  } else {
    let x_992 : f32 = u_xlat2.z;
    x_985 = x_992;
  }
  let x_993 : f32 = x_985;
  SV_Target0.z = x_993;
  let x_996 : f32 = u_xlat0.w;
  SV_Target0.w = x_996;
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

