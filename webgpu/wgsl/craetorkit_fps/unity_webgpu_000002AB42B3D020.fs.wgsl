struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_4 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_5 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> phase0_Input0_1 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_32 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec2<f32>;
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
  var u_xlat19 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat13 : f32;
  var x_899 : f32;
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
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_71);
  let x_81 : f32 = x_32.x_Distortion_Amount.w;
  u_xlatb8 = (0.0f < x_81);
  let x_83 : bool = u_xlatb8;
  if (x_83) {
    let x_87 : vec2<f32> = u_xlat2;
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
    let x_237 : vec2<f32> = u_xlat2;
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
  u_xlat2 = ((-(vec2<f32>(x_503.z, x_503.y)) * vec2<f32>(x_507.x, x_507.x)) + x_510);
  let x_512 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_512, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_516 : vec2<f32> = u_xlat2;
  let x_518 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat2 = (x_516 * vec2<f32>(x_518, x_518));
  let x_524 : vec2<f32> = u_xlat2;
  let x_525 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_524);
  u_xlat4 = x_525;
  let x_526 : vec4<f32> = u_xlat3;
  let x_527 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_526 + x_527);
  let x_529 : vec4<f32> = u_xlat0;
  let x_532 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_535 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_529.z, x_529.w, x_529.x, x_529.w) * vec4<f32>(x_532.x, x_532.x, x_532.x, x_532.x)) + vec4<f32>(x_535.x, x_535.y, x_535.x, x_535.y));
  let x_538 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_538, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_542 : vec4<f32> = u_xlat4;
  let x_544 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_542 * vec4<f32>(x_544, x_544, x_544, x_544));
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_551.x, x_551.y));
  u_xlat5 = x_553;
  let x_554 : vec4<f32> = u_xlat5;
  let x_556 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_554 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_556);
  let x_558 : vec2<f32> = u_xlat14;
  u_xlat2 = x_558;
  let x_559 : vec2<f32> = u_xlat2;
  u_xlat2 = clamp(x_559, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_563 : vec2<f32> = u_xlat2;
  let x_565 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat2 = (x_563 * vec2<f32>(x_565, x_565));
  let x_571 : vec2<f32> = u_xlat2;
  let x_572 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_571);
  u_xlat5 = x_572;
  let x_573 : vec4<f32> = u_xlat5;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_573 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_577);
  let x_582 : vec4<f32> = u_xlat4;
  let x_584 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_582.z, x_582.w));
  u_xlat4 = x_584;
  let x_585 : vec4<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_585 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_587);
  let x_589 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_595 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_589.z, x_589.y, x_589.w, x_589.y) * vec4<f32>(x_592.x, x_592.x, x_592.x, x_592.x)) + vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y));
  let x_598 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_598, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_602 : vec4<f32> = u_xlat4;
  let x_604 : f32 = x_32.x_RenderViewportScaleFactor;
  u_xlat4 = (x_602 * vec4<f32>(x_604, x_604, x_604, x_604));
  let x_610 : vec4<f32> = u_xlat4;
  let x_612 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_610.x, x_610.y));
  u_xlat5 = x_612;
  let x_613 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_613 + x_614);
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_619.z, x_619.w));
  u_xlat4 = x_621;
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_622 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_624);
  let x_626 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_632 : vec2<f32> = u_xlat14;
  let x_633 : vec2<f32> = ((vec2<f32>(x_626.x, x_626.y) * vec2<f32>(x_629.x, x_629.x)) + x_632);
  let x_634 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_633.x, x_633.y, x_634.z, x_634.w);
  let x_636 : vec4<f32> = u_xlat0;
  let x_640 : vec2<f32> = clamp(vec2<f32>(x_636.x, x_636.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_641 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
  let x_643 : vec4<f32> = u_xlat0;
  let x_646 : f32 = x_32.x_RenderViewportScaleFactor;
  let x_648 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) * vec2<f32>(x_646, x_646));
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_654.x, x_654.y));
  u_xlat0 = x_656;
  let x_657 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_657 + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_662 : vec3<f32> = x_32.x_Bloom_Settings;
  u_xlat0 = (x_660 * vec4<f32>(x_662.y, x_662.y, x_662.y, x_662.y));
  let x_665 : vec2<f32> = u_xlat14;
  let x_668 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  let x_672 : vec4<f32> = x_32.x_Bloom_DirtTileOffset;
  u_xlat2 = ((x_665 * vec2<f32>(x_668.x, x_668.y)) + vec2<f32>(x_672.z, x_672.w));
  let x_680 : vec2<f32> = u_xlat2;
  let x_681 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, x_680);
  let x_682 : vec3<f32> = vec3<f32>(x_681.x, x_681.y, x_681.z);
  let x_683 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
  let x_685 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_685 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_689 : vec4<f32> = u_xlat3;
  let x_692 : vec3<f32> = x_32.x_Bloom_Settings;
  let x_694 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(x_692.z, x_692.z, x_692.z));
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  u_xlat3.w = 0.0f;
  let x_698 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_698 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_701 : vec4<f32> = u_xlat0;
  let x_705 : vec3<f32> = x_32.x_Bloom_Color;
  let x_706 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * x_705);
  let x_707 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_706.x, x_706.y, x_706.z, x_707.w);
  let x_710 : f32 = u_xlat0.w;
  u_xlat5.w = (x_710 * 0.0625f);
  let x_713 : vec4<f32> = u_xlat1;
  let x_714 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_713 + x_714);
  let x_716 : vec4<f32> = u_xlat3;
  let x_717 : vec4<f32> = u_xlat4;
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_716 * x_717) + x_719);
  let x_724 : f32 = x_32.x_Vignette_Mode;
  u_xlatb1 = (x_724 < 0.5f);
  let x_726 : bool = u_xlatb1;
  if (x_726) {
    let x_729 : vec2<f32> = u_xlat14;
    let x_733 : vec2<f32> = x_32.x_Vignette_Center;
    let x_735 : vec2<f32> = (x_729 + -(x_733));
    let x_736 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_735.x, x_735.y, x_736.z, x_736.w);
    let x_738 : vec4<f32> = u_xlat1;
    let x_743 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_745 : vec2<f32> = (abs(vec2<f32>(x_738.y, x_738.x)) * vec2<f32>(x_743.x, x_743.x));
    let x_746 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_746.x, x_745.x, x_745.y, x_746.w);
    let x_751 : f32 = x_32.x_ScreenParams.x;
    let x_753 : f32 = x_32.x_ScreenParams.y;
    u_xlat19 = (x_751 / x_753);
    let x_755 : f32 = u_xlat19;
    u_xlat19 = (x_755 + -1.0f);
    let x_758 : f32 = x_32.x_Vignette_Settings.w;
    let x_759 : f32 = u_xlat19;
    u_xlat19 = ((x_758 * x_759) + 1.0f);
    let x_762 : f32 = u_xlat19;
    let x_765 : f32 = u_xlat1.z;
    u_xlat1.x = (x_762 * x_765);
    let x_768 : vec4<f32> = u_xlat1;
    let x_769 : vec2<f32> = vec2<f32>(x_768.x, x_768.y);
    let x_770 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_769.x, x_769.y, x_770.z, x_770.w);
    let x_772 : vec4<f32> = u_xlat1;
    let x_776 : vec2<f32> = clamp(vec2<f32>(x_772.x, x_772.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_777 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
    let x_779 : vec4<f32> = u_xlat1;
    let x_781 : vec2<f32> = log2(vec2<f32>(x_779.x, x_779.y));
    let x_782 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
    let x_784 : vec4<f32> = u_xlat1;
    let x_787 : vec4<f32> = x_32.x_Vignette_Settings;
    let x_789 : vec2<f32> = (vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787.z, x_787.z));
    let x_790 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
    let x_792 : vec4<f32> = u_xlat1;
    let x_794 : vec2<f32> = exp2(vec2<f32>(x_792.x, x_792.y));
    let x_795 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_794.x, x_794.y, x_795.z, x_795.w);
    let x_797 : vec4<f32> = u_xlat1;
    let x_799 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_797.x, x_797.y), vec2<f32>(x_799.x, x_799.y));
    let x_804 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_804) + 1.0f);
    let x_809 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_809, 0.0f);
    let x_813 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_813);
    let x_817 : f32 = u_xlat1.x;
    let x_819 : f32 = x_32.x_Vignette_Settings.y;
    u_xlat1.x = (x_817 * x_819);
    let x_823 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_823);
    let x_830 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_830) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_834 : vec4<f32> = u_xlat1;
    let x_836 : vec3<f32> = u_xlat7;
    let x_839 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_834.x, x_834.x, x_834.x) * x_836) + x_839);
    let x_841 : vec4<f32> = u_xlat0;
    let x_843 : vec3<f32> = u_xlat7;
    let x_844 : vec3<f32> = (vec3<f32>(x_841.x, x_841.y, x_841.z) * x_843);
    let x_845 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_848 : f32 = u_xlat0.w;
    u_xlat7.x = (x_848 + -1.0f);
    let x_852 : f32 = u_xlat1.x;
    let x_854 : f32 = u_xlat7.x;
    u_xlat3.w = ((x_852 * x_854) + 1.0f);
  } else {
    let x_864 : vec2<f32> = u_xlat14;
    let x_865 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_864);
    u_xlat1.x = x_865.w;
    let x_869 : f32 = u_xlat1.x;
    u_xlat1.z = (x_869 + 0.055f);
    let x_873 : vec4<f32> = u_xlat1;
    let x_878 : vec2<f32> = (vec2<f32>(x_873.x, x_873.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_879 : vec3<f32> = u_xlat7;
    u_xlat7 = vec3<f32>(x_878.x, x_878.y, x_879.z);
    let x_883 : f32 = u_xlat7.y;
    u_xlat13 = max(abs(x_883), 1.1920929e-07f);
    let x_887 : f32 = u_xlat13;
    u_xlat13 = log2(x_887);
    let x_889 : f32 = u_xlat13;
    u_xlat13 = (x_889 * 2.400000095f);
    let x_892 : f32 = u_xlat13;
    u_xlat13 = exp2(x_892);
    let x_896 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_896);
    let x_898 : bool = u_xlatb1;
    if (x_898) {
      let x_903 : f32 = u_xlat7.x;
      x_899 = x_903;
    } else {
      let x_905 : f32 = u_xlat13;
      x_899 = x_905;
    }
    let x_906 : f32 = x_899;
    u_xlat1.x = x_906;
    let x_909 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = (-(x_909) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_912 : vec4<f32> = u_xlat1;
    let x_914 : vec3<f32> = u_xlat7;
    let x_917 : vec3<f32> = x_32.x_Vignette_Color;
    u_xlat7 = ((vec3<f32>(x_912.x, x_912.x, x_912.x) * x_914) + x_917);
    let x_919 : vec4<f32> = u_xlat0;
    let x_921 : vec3<f32> = u_xlat7;
    let x_923 : vec4<f32> = u_xlat0;
    u_xlat7 = ((vec3<f32>(x_919.x, x_919.y, x_919.z) * x_921) + -(vec3<f32>(x_923.x, x_923.y, x_923.z)));
    let x_929 : f32 = x_32.x_Vignette_Opacity;
    let x_931 : vec3<f32> = u_xlat7;
    let x_933 : vec4<f32> = u_xlat0;
    let x_935 : vec3<f32> = ((vec3<f32>(x_929, x_929, x_929) * x_931) + vec3<f32>(x_933.x, x_933.y, x_933.z));
    let x_936 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_939 : f32 = u_xlat0.w;
    u_xlat0.x = (x_939 + -1.0f);
    let x_943 : f32 = u_xlat1.x;
    let x_945 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_943 * x_945) + 1.0f);
  }
  let x_949 : vec4<f32> = u_xlat3;
  let x_953 : f32 = x_32.x_PostExposure;
  let x_955 : f32 = x_32.x_PostExposure;
  let x_957 : f32 = x_32.x_PostExposure;
  let x_959 : f32 = x_32.x_PostExposure;
  let x_960 : vec4<f32> = vec4<f32>(x_953, x_955, x_957, x_959);
  u_xlat0 = (vec4<f32>(x_949.w, x_949.x, x_949.y, x_949.z) * vec4<f32>(x_960.x, x_960.y, x_960.z, x_960.w));
  let x_967 : vec4<f32> = u_xlat0;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967.y, x_967.z, x_967.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_975 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat1;
  let x_979 : vec3<f32> = log2(vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat1;
  let x_989 : vec3<f32> = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_990 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_989.x, x_989.y, x_989.z, x_990.w);
  let x_992 : vec4<f32> = u_xlat1;
  let x_996 : vec3<f32> = clamp(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_997 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat1;
  let x_1003 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_1005 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1003.y, x_1003.y, x_1003.y));
  let x_1006 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1005.x, x_1005.y, x_1005.z, x_1006.w);
  let x_1009 : f32 = x_32.x_Lut3D_Params.x;
  u_xlat19 = (x_1009 * 0.5f);
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1014 : vec2<f32> = x_32.x_Lut3D_Params;
  let x_1017 : f32 = u_xlat19;
  let x_1019 : vec3<f32> = ((vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(x_1014.x, x_1014.x, x_1014.x)) + vec3<f32>(x_1017, x_1017, x_1017));
  let x_1020 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1030 : vec4<f32> = u_xlat1;
  let x_1032 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec3<f32> = vec3<f32>(x_1032.x, x_1032.y, x_1032.z);
  let x_1034 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1033.x, x_1033.y, x_1033.z);
  let x_1038 : f32 = x_32.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1038);
  let x_1040 : bool = u_xlatb1;
  if (x_1040) {
    let x_1043 : vec4<f32> = u_xlat0;
    let x_1044 : vec3<f32> = vec3<f32>(x_1043.y, x_1043.z, x_1043.w);
    let x_1045 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
    let x_1047 : vec4<f32> = u_xlat1;
    let x_1051 : vec3<f32> = clamp(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1052 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
    let x_1054 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_1054.x, x_1054.y, x_1054.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1064 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1064.y, x_1064.z, x_1064.w, x_1064.x);
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

