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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_402 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var x_949 : f32;
  var x_961 : f32;
  var x_974 : f32;
  var x_1048 : f32;
  var x_1061 : f32;
  var x_1073 : f32;
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
  let x_461 : vec4<f32> = x_32.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_461.x, x_461.y, x_461.x, x_461.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_465 : vec4<f32> = u_xlat0;
  let x_471 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_474 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_465.x, x_465.y, x_465.w, x_465.y)) * vec4<f32>(x_471.x, x_471.x, x_471.x, x_471.x)) + vec4<f32>(x_474.x, x_474.y, x_474.x, x_474.y));
  let x_477 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_477, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_481 : vec4<f32> = u_xlat3;
  let x_484 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_511 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_514 : vec2<f32> = u_xlat14;
  let x_515 : vec2<f32> = ((-(vec2<f32>(x_507.z, x_507.y)) * vec2<f32>(x_511.x, x_511.x)) + x_514);
  let x_516 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
  let x_518 : vec4<f32> = u_xlat2;
  let x_522 : vec2<f32> = clamp(vec2<f32>(x_518.x, x_518.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_523 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
  let x_525 : vec4<f32> = u_xlat2;
  let x_528 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_545 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_548 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_542.z, x_542.w, x_542.x, x_542.w) * vec4<f32>(x_545.x, x_545.x, x_545.x, x_545.x)) + vec4<f32>(x_548.x, x_548.y, x_548.x, x_548.y));
  let x_551 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_551, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_555 : vec4<f32> = u_xlat4;
  let x_557 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_584 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_614 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_617 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_611.z, x_611.y, x_611.w, x_611.y) * vec4<f32>(x_614.x, x_614.x, x_614.x, x_614.x)) + vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_620, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_651 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_654 : vec2<f32> = u_xlat14;
  let x_655 : vec2<f32> = ((vec2<f32>(x_648.x, x_648.y) * vec2<f32>(x_651.x, x_651.x)) + x_654);
  let x_656 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
  let x_658 : vec4<f32> = u_xlat0;
  let x_662 : vec2<f32> = clamp(vec2<f32>(x_658.x, x_658.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_663 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
  let x_665 : vec4<f32> = u_xlat0;
  let x_668 : f32 = x_32.x_RenderViewportScaleFactor;
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
  let x_684 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_682 * vec4<f32>(x_684.y, x_684.y, x_684.y, x_684.y));
  let x_687 : vec2<f32> = u_xlat14;
  let x_690 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_694 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
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
  let x_717 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_719 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) * vec3<f32>(x_717.z, x_717.z, x_717.z));
  let x_720 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
  u_xlat2.w = 0.0f;
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_723 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_726 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = x_32.x_Bloom_Color;
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
  let x_746 : vec4<f32> = u_xlat0;
  let x_749 : f32 = x_32.x_PostExposure;
  let x_751 : f32 = x_32.x_PostExposure;
  let x_753 : f32 = x_32.x_PostExposure;
  let x_755 : f32 = x_32.x_PostExposure;
  let x_756 : vec4<f32> = vec4<f32>(x_749, x_751, x_753, x_755);
  u_xlat0 = (x_746 * vec4<f32>(x_756.x, x_756.y, x_756.z, x_756.w));
  let x_763 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_771 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat0;
  let x_775 : vec3<f32> = log2(vec3<f32>(x_773.x, x_773.y, x_773.z));
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_785 : vec3<f32> = ((vec3<f32>(x_778.x, x_778.y, x_778.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_786 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_785.x, x_785.y, x_785.z, x_786.w);
  let x_788 : vec4<f32> = u_xlat0;
  let x_792 : vec3<f32> = clamp(vec3<f32>(x_788.x, x_788.y, x_788.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_793 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_800 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_802 : vec3<f32> = (vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_800.y, x_800.y, x_800.y));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  let x_806 : f32 = x_32.x_Lut3D_Params.x;
  u_xlat1.x = (x_806 * 0.5f);
  let x_809 : vec4<f32> = u_xlat0;
  let x_812 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_815 : vec4<f32> = u_xlat1;
  let x_817 : vec3<f32> = ((vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_812.x, x_812.x, x_812.x)) + vec3<f32>(x_815.x, x_815.x, x_815.x));
  let x_818 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_817.x, x_817.y, x_817.z, x_818.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_830 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_828.x, x_828.y, x_828.z));
  let x_831 : vec3<f32> = vec3<f32>(x_830.x, x_830.y, x_830.z);
  let x_832 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_831.x, x_831.y, x_831.z, x_832.w);
  let x_834 : vec4<f32> = phase0_Input0_1;
  let x_838 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_842 : vec4<f32> = x_32.x_Dithering_Coords;
  let x_844 : vec2<f32> = ((vec2<f32>(x_834.x, x_834.y) * vec2<f32>(x_838.x, x_838.y)) + vec2<f32>(x_842.z, x_842.w));
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_845.z, x_845.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_854 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_852.x, x_852.y));
  u_xlat1.x = x_854.w;
  let x_858 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_858 * 2.0f) + -1.0f);
  let x_865 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_865 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_871 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_871, 0.0f, 1.0f);
  let x_875 : f32 = u_xlat7.x;
  u_xlat7.x = ((x_875 * 2.0f) + -1.0f);
  let x_880 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_880)) + 1.0f);
  let x_886 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_886);
  let x_890 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_890) + 1.0f);
  let x_895 : f32 = u_xlat1.x;
  let x_897 : f32 = u_xlat7.x;
  u_xlat1.x = (x_895 * x_897);
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat7 = (vec3<f32>(x_900.x, x_900.y, x_900.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_905 : vec4<f32> = u_xlat0;
  let x_910 : vec3<f32> = max(abs(vec3<f32>(x_905.x, x_905.y, x_905.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_911 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = log2(vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat2;
  let x_927 : vec3<f32> = exp2(vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat2;
  let x_937 : vec3<f32> = ((vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_945 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_942.x, x_942.y, x_942.z, x_942.x));
  u_xlatb0 = vec3<bool>(x_945.x, x_945.y, x_945.z);
  let x_948 : bool = u_xlatb0.x;
  if (x_948) {
    let x_953 : f32 = u_xlat7.x;
    x_949 = x_953;
  } else {
    let x_956 : f32 = u_xlat2.x;
    x_949 = x_956;
  }
  let x_957 : f32 = x_949;
  u_xlat0.x = x_957;
  let x_960 : bool = u_xlatb0.y;
  if (x_960) {
    let x_965 : f32 = u_xlat7.y;
    x_961 = x_965;
  } else {
    let x_968 : f32 = u_xlat2.y;
    x_961 = x_968;
  }
  let x_969 : f32 = x_961;
  u_xlat0.y = x_969;
  let x_973 : bool = u_xlatb0.z;
  if (x_973) {
    let x_978 : f32 = u_xlat7.z;
    x_974 = x_978;
  } else {
    let x_981 : f32 = u_xlat2.z;
    x_974 = x_981;
  }
  let x_982 : f32 = x_974;
  u_xlat0.z = x_982;
  let x_984 : vec4<f32> = u_xlat1;
  let x_989 : vec4<f32> = u_xlat0;
  let x_991 : vec3<f32> = ((vec3<f32>(x_984.x, x_984.x, x_984.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_989.x, x_989.y, x_989.z));
  let x_992 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat0;
  let x_998 : vec3<f32> = (vec3<f32>(x_994.x, x_994.y, x_994.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat0;
  let x_1005 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1006 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1008 : vec4<f32> = u_xlat2;
  let x_1012 : vec3<f32> = (vec3<f32>(x_1008.x, x_1008.y, x_1008.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1013 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat2;
  let x_1018 : vec3<f32> = max(abs(vec3<f32>(x_1015.x, x_1015.y, x_1015.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1023 : vec3<f32> = log2(vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat2;
  let x_1030 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1031 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1033 : vec4<f32> = u_xlat2;
  let x_1035 : vec3<f32> = exp2(vec3<f32>(x_1033.x, x_1033.y, x_1033.z));
  let x_1036 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1042 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1040.x));
  u_xlatb0 = vec3<bool>(x_1042.x, x_1042.y, x_1042.z);
  let x_1047 : bool = u_xlatb0.x;
  if (x_1047) {
    let x_1052 : f32 = u_xlat1.x;
    x_1048 = x_1052;
  } else {
    let x_1055 : f32 = u_xlat2.x;
    x_1048 = x_1055;
  }
  let x_1056 : f32 = x_1048;
  SV_Target0.x = x_1056;
  let x_1060 : bool = u_xlatb0.y;
  if (x_1060) {
    let x_1065 : f32 = u_xlat1.y;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat2.y;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  SV_Target0.y = x_1069;
  let x_1072 : bool = u_xlatb0.z;
  if (x_1072) {
    let x_1077 : f32 = u_xlat1.z;
    x_1073 = x_1077;
  } else {
    let x_1080 : f32 = u_xlat2.z;
    x_1073 = x_1080;
  }
  let x_1081 : f32 = x_1073;
  SV_Target0.z = x_1081;
  let x_1084 : f32 = u_xlat0.w;
  SV_Target0.w = x_1084;
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

