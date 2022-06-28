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

var<private> u_xlat18 : f32;

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
  var x_889 : f32;
  var x_901 : f32;
  var x_914 : f32;
  var x_1072 : f32;
  var x_1084 : f32;
  var x_1096 : f32;
  var x_1208 : f32;
  var x_1220 : f32;
  var x_1232 : f32;
  var x_1296 : f32;
  var x_1309 : f32;
  var x_1321 : f32;
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
  let x_831 : vec3<f32> = clamp(vec3<f32>(x_827.x, x_827.y, x_827.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_836 : f32 = u_xlat0.w;
  u_xlat18 = x_836;
  let x_837 : f32 = u_xlat18;
  u_xlat18 = clamp(x_837, 0.0f, 1.0f);
  let x_839 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = (vec3<f32>(x_839.z, x_839.x, x_839.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = max(vec3<f32>(x_846.z, x_846.x, x_846.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_851 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat2;
  let x_855 : vec3<f32> = log2(vec3<f32>(x_853.x, x_853.y, x_853.z));
  let x_856 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
  let x_858 : vec4<f32> = u_xlat2;
  let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_863 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat2;
  let x_867 : vec3<f32> = exp2(vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_870 : vec4<f32> = u_xlat2;
  let x_877 : vec3<f32> = ((vec3<f32>(x_870.x, x_870.y, x_870.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_878 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_882 : vec4<f32> = u_xlat0;
  let x_885 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_882.z, x_882.x, x_882.y, x_882.z));
  u_xlatb0 = vec3<bool>(x_885.x, x_885.y, x_885.z);
  let x_888 : bool = u_xlatb0.x;
  if (x_888) {
    let x_893 : f32 = u_xlat1.x;
    x_889 = x_893;
  } else {
    let x_896 : f32 = u_xlat2.x;
    x_889 = x_896;
  }
  let x_897 : f32 = x_889;
  u_xlat0.x = x_897;
  let x_900 : bool = u_xlatb0.y;
  if (x_900) {
    let x_905 : f32 = u_xlat1.y;
    x_901 = x_905;
  } else {
    let x_908 : f32 = u_xlat2.y;
    x_901 = x_908;
  }
  let x_909 : f32 = x_901;
  u_xlat0.y = x_909;
  let x_913 : bool = u_xlatb0.z;
  if (x_913) {
    let x_918 : f32 = u_xlat1.z;
    x_914 = x_918;
  } else {
    let x_921 : f32 = u_xlat2.z;
    x_914 = x_921;
  }
  let x_922 : f32 = x_914;
  u_xlat0.z = x_922;
  let x_924 : vec4<f32> = u_xlat0;
  let x_928 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_930 : vec3<f32> = (vec3<f32>(x_924.x, x_924.y, x_924.z) * vec3<f32>(x_928.z, x_928.z, x_928.z));
  let x_931 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_930.x, x_930.y, x_930.z, x_931.w);
  let x_934 : f32 = u_xlat1.x;
  u_xlat6 = floor(x_934);
  let x_937 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_940 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) * vec2<f32>(0.5f, 0.5f));
  let x_941 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_940.x, x_941.y, x_941.z, x_940.y);
  let x_943 : vec4<f32> = u_xlat1;
  let x_946 : vec3<f32> = x_31.x_Lut2D_Params;
  let x_949 : vec4<f32> = u_xlat1;
  let x_951 : vec2<f32> = ((vec2<f32>(x_943.y, x_943.z) * vec2<f32>(x_946.x, x_946.y)) + vec2<f32>(x_949.x, x_949.w));
  let x_952 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_952.x, x_951.x, x_951.y, x_952.w);
  let x_954 : f32 = u_xlat6;
  let x_956 : f32 = x_31.x_Lut2D_Params.y;
  let x_959 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_954 * x_956) + x_959);
  let x_967 : vec4<f32> = u_xlat1;
  let x_969 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_967.x, x_967.z));
  let x_970 : vec3<f32> = vec3<f32>(x_969.x, x_969.y, x_969.z);
  let x_971 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_970.x, x_970.y, x_970.z, x_971.w);
  let x_974 : f32 = x_31.x_Lut2D_Params.y;
  u_xlat3.x = x_974;
  u_xlat3.y = 0.0f;
  let x_977 : vec4<f32> = u_xlat1;
  let x_979 : vec4<f32> = u_xlat3;
  let x_981 : vec2<f32> = (vec2<f32>(x_977.x, x_977.z) + vec2<f32>(x_979.x, x_979.y));
  let x_982 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
  let x_987 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_987.x, x_987.y));
  let x_990 : vec3<f32> = vec3<f32>(x_989.x, x_989.y, x_989.z);
  let x_991 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_994 : f32 = u_xlat0.x;
  let x_996 : f32 = x_31.x_Lut2D_Params.z;
  let x_998 : f32 = u_xlat6;
  u_xlat0.x = ((x_994 * x_996) + -(x_998));
  let x_1002 : vec4<f32> = u_xlat2;
  let x_1005 : vec4<f32> = u_xlat1;
  let x_1007 : vec3<f32> = (-(vec3<f32>(x_1002.x, x_1002.y, x_1002.z)) + vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1007.x, x_1007.y, x_1007.z, x_1008.w);
  let x_1010 : vec4<f32> = u_xlat0;
  let x_1012 : vec4<f32> = u_xlat1;
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1017 : vec3<f32> = ((vec3<f32>(x_1010.x, x_1010.x, x_1010.x) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z)) + vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
  let x_1018 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
  let x_1020 : vec4<f32> = u_xlat0;
  let x_1024 : vec3<f32> = (vec3<f32>(x_1020.x, x_1020.y, x_1020.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1025 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : vec4<f32> = u_xlat0;
  let x_1031 : vec3<f32> = (vec3<f32>(x_1027.x, x_1027.y, x_1027.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1032 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec4<f32> = u_xlat2;
  let x_1038 : vec3<f32> = (vec3<f32>(x_1034.x, x_1034.y, x_1034.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1039 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
  let x_1041 : vec4<f32> = u_xlat2;
  let x_1044 : vec3<f32> = max(abs(vec3<f32>(x_1041.x, x_1041.y, x_1041.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1049 : vec3<f32> = log2(vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1052.x, x_1052.y, x_1052.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat2;
  let x_1061 : vec3<f32> = exp2(vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1066 : vec4<f32> = u_xlat0;
  let x_1068 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1066.x));
  u_xlatb0 = vec3<bool>(x_1068.x, x_1068.y, x_1068.z);
  let x_1071 : bool = u_xlatb0.x;
  if (x_1071) {
    let x_1076 : f32 = u_xlat1.x;
    x_1072 = x_1076;
  } else {
    let x_1079 : f32 = u_xlat2.x;
    x_1072 = x_1079;
  }
  let x_1080 : f32 = x_1072;
  u_xlat0.x = x_1080;
  let x_1083 : bool = u_xlatb0.y;
  if (x_1083) {
    let x_1088 : f32 = u_xlat1.y;
    x_1084 = x_1088;
  } else {
    let x_1091 : f32 = u_xlat2.y;
    x_1084 = x_1091;
  }
  let x_1092 : f32 = x_1084;
  u_xlat0.y = x_1092;
  let x_1095 : bool = u_xlatb0.z;
  if (x_1095) {
    let x_1100 : f32 = u_xlat1.z;
    x_1096 = x_1100;
  } else {
    let x_1103 : f32 = u_xlat2.z;
    x_1096 = x_1103;
  }
  let x_1104 : f32 = x_1096;
  u_xlat0.z = x_1104;
  let x_1106 : vec4<f32> = phase0_Input0_1;
  let x_1110 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1114 : vec4<f32> = x_31.x_Dithering_Coords;
  let x_1116 : vec2<f32> = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1114.z, x_1114.w));
  let x_1117 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1116.x, x_1116.y, x_1117.z, x_1117.w);
  let x_1124 : vec4<f32> = u_xlat1;
  let x_1126 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1124.x, x_1124.y));
  u_xlat1.x = x_1126.w;
  let x_1130 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1130 * 2.0f) + -1.0f);
  let x_1137 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_1137 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1143 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_1143, 0.0f, 1.0f);
  let x_1147 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_1147 * 2.0f) + -1.0f);
  let x_1152 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1152)) + 1.0f);
  let x_1158 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1158);
  let x_1162 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1162) + 1.0f);
  let x_1167 : f32 = u_xlat1.x;
  let x_1169 : f32 = u_xlat7.x;
  u_xlat1.x = (x_1167 * x_1169);
  let x_1172 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1175 : vec4<f32> = u_xlat0;
  let x_1178 : vec3<f32> = max(abs(vec3<f32>(x_1175.x, x_1175.y, x_1175.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1179 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1178.x, x_1178.y, x_1178.z, x_1179.w);
  let x_1181 : vec4<f32> = u_xlat2;
  let x_1183 : vec3<f32> = log2(vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat2;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1189 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat2;
  let x_1193 : vec3<f32> = exp2(vec3<f32>(x_1191.x, x_1191.y, x_1191.z));
  let x_1194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1193.x, x_1193.y, x_1193.z, x_1194.w);
  let x_1196 : vec4<f32> = u_xlat2;
  let x_1199 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1200 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1199.x, x_1199.y, x_1199.z, x_1200.w);
  let x_1202 : vec4<f32> = u_xlat0;
  let x_1204 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1202.x, x_1202.y, x_1202.z, x_1202.x));
  u_xlatb0 = vec3<bool>(x_1204.x, x_1204.y, x_1204.z);
  let x_1207 : bool = u_xlatb0.x;
  if (x_1207) {
    let x_1212 : f32 = u_xlat7.x;
    x_1208 = x_1212;
  } else {
    let x_1215 : f32 = u_xlat2.x;
    x_1208 = x_1215;
  }
  let x_1216 : f32 = x_1208;
  u_xlat0.x = x_1216;
  let x_1219 : bool = u_xlatb0.y;
  if (x_1219) {
    let x_1224 : f32 = u_xlat7.y;
    x_1220 = x_1224;
  } else {
    let x_1227 : f32 = u_xlat2.y;
    x_1220 = x_1227;
  }
  let x_1228 : f32 = x_1220;
  u_xlat0.y = x_1228;
  let x_1231 : bool = u_xlatb0.z;
  if (x_1231) {
    let x_1236 : f32 = u_xlat7.z;
    x_1232 = x_1236;
  } else {
    let x_1239 : f32 = u_xlat2.z;
    x_1232 = x_1239;
  }
  let x_1240 : f32 = x_1232;
  u_xlat0.z = x_1240;
  let x_1242 : vec4<f32> = u_xlat1;
  let x_1247 : vec4<f32> = u_xlat0;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.x, x_1242.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat0;
  let x_1254 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1257 : vec4<f32> = u_xlat0;
  let x_1259 : vec3<f32> = (vec3<f32>(x_1257.x, x_1257.y, x_1257.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1260 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1260.w);
  let x_1262 : vec4<f32> = u_xlat2;
  let x_1264 : vec3<f32> = (vec3<f32>(x_1262.x, x_1262.y, x_1262.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1265 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1265.w);
  let x_1267 : vec4<f32> = u_xlat2;
  let x_1270 : vec3<f32> = max(abs(vec3<f32>(x_1267.x, x_1267.y, x_1267.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1271 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1270.x, x_1270.y, x_1270.z, x_1271.w);
  let x_1273 : vec4<f32> = u_xlat2;
  let x_1275 : vec3<f32> = log2(vec3<f32>(x_1273.x, x_1273.y, x_1273.z));
  let x_1276 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1275.x, x_1275.y, x_1275.z, x_1276.w);
  let x_1278 : vec4<f32> = u_xlat2;
  let x_1280 : vec3<f32> = (vec3<f32>(x_1278.x, x_1278.y, x_1278.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1281 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat2;
  let x_1285 : vec3<f32> = exp2(vec3<f32>(x_1283.x, x_1283.y, x_1283.z));
  let x_1286 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1285.x, x_1285.y, x_1285.z, x_1286.w);
  let x_1288 : vec4<f32> = u_xlat0;
  let x_1290 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1288.x, x_1288.y, x_1288.z, x_1288.x));
  u_xlatb0 = vec3<bool>(x_1290.x, x_1290.y, x_1290.z);
  let x_1295 : bool = u_xlatb0.x;
  if (x_1295) {
    let x_1300 : f32 = u_xlat1.x;
    x_1296 = x_1300;
  } else {
    let x_1303 : f32 = u_xlat2.x;
    x_1296 = x_1303;
  }
  let x_1304 : f32 = x_1296;
  SV_Target0.x = x_1304;
  let x_1308 : bool = u_xlatb0.y;
  if (x_1308) {
    let x_1313 : f32 = u_xlat1.y;
    x_1309 = x_1313;
  } else {
    let x_1316 : f32 = u_xlat2.y;
    x_1309 = x_1316;
  }
  let x_1317 : f32 = x_1309;
  SV_Target0.y = x_1317;
  let x_1320 : bool = u_xlatb0.z;
  if (x_1320) {
    let x_1325 : f32 = u_xlat1.z;
    x_1321 = x_1325;
  } else {
    let x_1328 : f32 = u_xlat2.z;
    x_1321 = x_1328;
  }
  let x_1329 : f32 = x_1321;
  SV_Target0.z = x_1329;
  let x_1331 : f32 = u_xlat18;
  SV_Target0.w = x_1331;
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

