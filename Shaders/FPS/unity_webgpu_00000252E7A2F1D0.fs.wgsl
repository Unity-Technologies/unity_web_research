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

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlat19 : f32;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlat7 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_219 : f32;
  var x_370 : f32;
  var x_402 : f32;
  var x_1088 : f32;
  var x_1100 : f32;
  var x_1112 : f32;
  var x_1186 : f32;
  var x_1199 : f32;
  var x_1211 : f32;
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
  let x_750 : vec4<f32> = x_31.x_Grain_Params2;
  let x_754 : vec4<f32> = x_31.x_Grain_Params2;
  let x_756 : vec2<f32> = ((vec2<f32>(x_746.z, x_746.w) * vec2<f32>(x_750.x, x_750.y)) + vec2<f32>(x_754.z, x_754.w));
  let x_757 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_756.x, x_756.y, x_757.z, x_757.w);
  let x_764 : vec4<f32> = u_xlat1;
  let x_766 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_764.x, x_764.y));
  let x_767 : vec3<f32> = vec3<f32>(x_766.x, x_766.y, x_766.z);
  let x_768 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat0;
  let x_771 : vec3<f32> = vec3<f32>(x_770.x, x_770.y, x_770.z);
  let x_772 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
  let x_774 : vec4<f32> = u_xlat2;
  let x_778 : vec3<f32> = clamp(vec3<f32>(x_774.x, x_774.y, x_774.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_779 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_782.x, x_782.y, x_782.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_789 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_789);
  let x_793 : f32 = x_31.x_Grain_Params1.x;
  let x_794 : f32 = u_xlat19;
  u_xlat19 = ((x_793 * -(x_794)) + 1.0f);
  let x_798 : vec4<f32> = u_xlat0;
  let x_800 : vec4<f32> = u_xlat1;
  let x_802 : vec3<f32> = (vec3<f32>(x_798.x, x_798.y, x_798.z) * vec3<f32>(x_800.x, x_800.y, x_800.z));
  let x_803 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat1;
  let x_808 : f32 = x_31.x_Grain_Params1.y;
  let x_810 : f32 = x_31.x_Grain_Params1.y;
  let x_812 : f32 = x_31.x_Grain_Params1.y;
  let x_814 : vec3<f32> = (vec3<f32>(x_805.x, x_805.y, x_805.z) * vec3<f32>(x_808, x_810, x_812));
  let x_815 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
  let x_817 : vec4<f32> = u_xlat1;
  let x_819 : f32 = u_xlat19;
  let x_822 : vec4<f32> = u_xlat0;
  let x_824 : vec3<f32> = ((vec3<f32>(x_817.x, x_817.y, x_817.z) * vec3<f32>(x_819, x_819, x_819)) + vec3<f32>(x_822.x, x_822.y, x_822.z));
  let x_825 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_824.x, x_824.y, x_824.z, x_825.w);
  let x_827 : vec4<f32> = u_xlat0;
  let x_830 : f32 = x_31.x_PostExposure;
  let x_832 : f32 = x_31.x_PostExposure;
  let x_834 : f32 = x_31.x_PostExposure;
  let x_836 : f32 = x_31.x_PostExposure;
  let x_837 : vec4<f32> = vec4<f32>(x_830, x_832, x_834, x_836);
  u_xlat0 = (x_827 * vec4<f32>(x_837.x, x_837.y, x_837.z, x_837.w));
  let x_844 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = ((vec3<f32>(x_844.z, x_844.x, x_844.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : vec3<f32> = log2(vec3<f32>(x_854.x, x_854.y, x_854.z));
  let x_857 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  let x_866 : vec3<f32> = ((vec3<f32>(x_859.x, x_859.y, x_859.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_867 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  let x_869 : vec4<f32> = u_xlat0;
  let x_873 : vec3<f32> = clamp(vec3<f32>(x_869.x, x_869.y, x_869.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_874 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat0;
  let x_880 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_882 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_880.z, x_880.z, x_880.z));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  let x_886 : f32 = u_xlat1.x;
  u_xlat6 = floor(x_886);
  let x_889 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_892 : vec2<f32> = (vec2<f32>(x_889.x, x_889.y) * vec2<f32>(0.5f, 0.5f));
  let x_893 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_892.x, x_893.y, x_893.z, x_892.y);
  let x_895 : vec4<f32> = u_xlat1;
  let x_898 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_901 : vec4<f32> = u_xlat1;
  let x_903 : vec2<f32> = ((vec2<f32>(x_895.y, x_895.z) * vec2<f32>(x_898.x, x_898.y)) + vec2<f32>(x_901.x, x_901.w));
  let x_904 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_904.x, x_903.x, x_903.y, x_904.w);
  let x_906 : f32 = u_xlat6;
  let x_908 : f32 = x_31.x_Lut2D_Params.y;
  let x_911 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_906 * x_908) + x_911);
  let x_919 : vec4<f32> = u_xlat1;
  let x_921 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_919.x, x_919.z));
  let x_922 : vec3<f32> = vec3<f32>(x_921.x, x_921.y, x_921.z);
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_926 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_926;
  u_xlat3.y = 0.0f;
  let x_929 : vec4<f32> = u_xlat1;
  let x_931 : vec4<f32> = u_xlat3;
  let x_933 : vec2<f32> = (vec2<f32>(x_929.x, x_929.z) + vec2<f32>(x_931.x, x_931.y));
  let x_934 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
  let x_939 : vec4<f32> = u_xlat1;
  let x_941 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_939.x, x_939.y));
  let x_942 : vec3<f32> = vec3<f32>(x_941.x, x_941.y, x_941.z);
  let x_943 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_942.x, x_942.y, x_942.z, x_943.w);
  let x_946 : f32 = u_xlat0.x;
  let x_949 : f32 = x_31.x_Lut2D_Params.z;
  let x_951 : f32 = u_xlat6;
  u_xlat0.x = ((x_946 * x_949) + -(x_951));
  let x_955 : vec4<f32> = u_xlat2;
  let x_958 : vec4<f32> = u_xlat1;
  let x_960 : vec3<f32> = (-(vec3<f32>(x_955.x, x_955.y, x_955.z)) + vec3<f32>(x_958.x, x_958.y, x_958.z));
  let x_961 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec4<f32> = u_xlat0;
  let x_965 : vec4<f32> = u_xlat1;
  let x_968 : vec4<f32> = u_xlat2;
  let x_970 : vec3<f32> = ((vec3<f32>(x_963.x, x_963.x, x_963.x) * vec3<f32>(x_965.x, x_965.y, x_965.z)) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_973 : vec4<f32> = phase0_Input0_1;
  let x_977 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_981 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_983 : vec2<f32> = ((vec2<f32>(x_973.x, x_973.y) * vec2<f32>(x_977.x, x_977.y)) + vec2<f32>(x_981.z, x_981.w));
  let x_984 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_983.x, x_983.y, x_984.z, x_984.w);
  let x_991 : vec4<f32> = u_xlat1;
  let x_993 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_991.x, x_991.y));
  u_xlat1.x = x_993.w;
  let x_997 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_997 * 2.0f) + -1.0f);
  let x_1004 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1004 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1010 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1010, 0.0f, 1.0f);
  let x_1014 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1014 * 2.0f) + -1.0f);
  let x_1019 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1019)) + 1.0f);
  let x_1025 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1025);
  let x_1029 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1029) + 1.0f);
  let x_1034 : f32 = u_xlat1.x;
  let x_1036 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1034 * x_1036);
  let x_1039 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1049 : vec3<f32> = max(abs(vec3<f32>(x_1044.x, x_1044.y, x_1044.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1050 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1054 : vec3<f32> = log2(vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat2;
  let x_1061 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1062 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat2;
  let x_1066 : vec3<f32> = exp2(vec3<f32>(x_1064.x, x_1064.y, x_1064.z));
  let x_1067 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat2;
  let x_1076 : vec3<f32> = ((vec3<f32>(x_1069.x, x_1069.y, x_1069.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1077 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1077.w);
  let x_1081 : vec4<f32> = u_xlat0;
  let x_1084 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1081.x));
  u_xlatb0 = vec3<bool>(x_1084.x, x_1084.y, x_1084.z);
  let x_1087 : bool = u_xlatb0.x;
  if (x_1087) {
    let x_1092 : f32 = u_xlat7.x;
    x_1088 = x_1092;
  } else {
    let x_1095 : f32 = u_xlat2.x;
    x_1088 = x_1095;
  }
  let x_1096 : f32 = x_1088;
  u_xlat0.x = x_1096;
  let x_1099 : bool = u_xlatb0.y;
  if (x_1099) {
    let x_1104 : f32 = u_xlat7.y;
    x_1100 = x_1104;
  } else {
    let x_1107 : f32 = u_xlat2.y;
    x_1100 = x_1107;
  }
  let x_1108 : f32 = x_1100;
  u_xlat0.y = x_1108;
  let x_1111 : bool = u_xlatb0.z;
  if (x_1111) {
    let x_1116 : f32 = u_xlat7.z;
    x_1112 = x_1116;
  } else {
    let x_1119 : f32 = u_xlat2.z;
    x_1112 = x_1119;
  }
  let x_1120 : f32 = x_1112;
  u_xlat0.z = x_1120;
  let x_1122 : vec4<f32> = u_xlat1;
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1129 : vec3<f32> = ((vec3<f32>(x_1122.x, x_1122.x, x_1122.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1127.x, x_1127.y, x_1127.z));
  let x_1130 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  let x_1132 : vec4<f32> = u_xlat0;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1132.x, x_1132.y, x_1132.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat0;
  let x_1143 : vec3<f32> = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1144 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
  let x_1146 : vec4<f32> = u_xlat2;
  let x_1150 : vec3<f32> = (vec3<f32>(x_1146.x, x_1146.y, x_1146.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1151 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat2;
  let x_1156 : vec3<f32> = max(abs(vec3<f32>(x_1153.x, x_1153.y, x_1153.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec4<f32> = u_xlat2;
  let x_1161 : vec3<f32> = log2(vec3<f32>(x_1159.x, x_1159.y, x_1159.z));
  let x_1162 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1161.x, x_1161.y, x_1161.z, x_1162.w);
  let x_1164 : vec4<f32> = u_xlat2;
  let x_1168 : vec3<f32> = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1168.x, x_1168.y, x_1168.z, x_1169.w);
  let x_1171 : vec4<f32> = u_xlat2;
  let x_1173 : vec3<f32> = exp2(vec3<f32>(x_1171.x, x_1171.y, x_1171.z));
  let x_1174 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1178 : vec4<f32> = u_xlat0;
  let x_1180 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1178.x));
  u_xlatb0 = vec3<bool>(x_1180.x, x_1180.y, x_1180.z);
  let x_1185 : bool = u_xlatb0.x;
  if (x_1185) {
    let x_1190 : f32 = u_xlat1.x;
    x_1186 = x_1190;
  } else {
    let x_1193 : f32 = u_xlat2.x;
    x_1186 = x_1193;
  }
  let x_1194 : f32 = x_1186;
  SV_Target0.x = x_1194;
  let x_1198 : bool = u_xlatb0.y;
  if (x_1198) {
    let x_1203 : f32 = u_xlat1.y;
    x_1199 = x_1203;
  } else {
    let x_1206 : f32 = u_xlat2.y;
    x_1199 = x_1206;
  }
  let x_1207 : f32 = x_1199;
  SV_Target0.y = x_1207;
  let x_1210 : bool = u_xlatb0.z;
  if (x_1210) {
    let x_1215 : f32 = u_xlat1.z;
    x_1211 = x_1215;
  } else {
    let x_1218 : f32 = u_xlat2.z;
    x_1211 = x_1218;
  }
  let x_1219 : f32 = x_1211;
  SV_Target0.z = x_1219;
  let x_1222 : f32 = u_xlat0.w;
  SV_Target0.w = x_1222;
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

