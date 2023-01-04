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

var<private> u_xlatb0 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

var<private> u_xlat19 : f32;

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
  let x_457 : vec4<f32> = x_31.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_457.x, x_457.y, x_457.x, x_457.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_461 : vec4<f32> = u_xlat0;
  let x_467 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_470 : vec2<f32> = u_xlat14;
  u_xlat3 = ((-(vec4<f32>(x_461.x, x_461.y, x_461.w, x_461.y)) * vec4<f32>(x_467.x, x_467.x, x_467.x, x_467.x)) + vec4<f32>(x_470.x, x_470.y, x_470.x, x_470.y));
  let x_473 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_473, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_477 : vec4<f32> = u_xlat3;
  let x_480 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_507 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_510 : vec2<f32> = u_xlat14;
  let x_511 : vec2<f32> = ((-(vec2<f32>(x_503.z, x_503.y)) * vec2<f32>(x_507.x, x_507.x)) + x_510);
  let x_512 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_511.x, x_511.y, x_512.z, x_512.w);
  let x_514 : vec4<f32> = u_xlat2;
  let x_518 : vec2<f32> = clamp(vec2<f32>(x_514.x, x_514.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_519 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
  let x_521 : vec4<f32> = u_xlat2;
  let x_524 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_541 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_544 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_538.z, x_538.w, x_538.x, x_538.w) * vec4<f32>(x_541.x, x_541.x, x_541.x, x_541.x)) + vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y));
  let x_547 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_547, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_580 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_610 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_613 : vec2<f32> = u_xlat14;
  u_xlat4 = ((vec4<f32>(x_607.z, x_607.y, x_607.w, x_607.y) * vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.x)) + vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_616, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_647 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_650 : vec2<f32> = u_xlat14;
  let x_651 : vec2<f32> = ((vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_647.x, x_647.x)) + x_650);
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat0;
  let x_658 : vec2<f32> = clamp(vec2<f32>(x_654.x, x_654.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_659 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat0;
  let x_664 : f32 = x_31.x_RenderViewportScaleFactor;
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
  let x_680 : vec3<f32> = x_31.x_Bloom_Settings;
  u_xlat0 = (x_678 * vec4<f32>(x_680.y, x_680.y, x_680.y, x_680.y));
  let x_683 : vec2<f32> = u_xlat14;
  let x_686 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
  let x_690 : vec4<f32> = x_31.x_Bloom_DirtTileOffset;
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
  let x_713 : vec3<f32> = x_31.x_Bloom_Settings;
  let x_715 : vec3<f32> = (vec3<f32>(x_710.x, x_710.y, x_710.z) * vec3<f32>(x_713.z, x_713.z, x_713.z));
  let x_716 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  u_xlat2.w = 0.0f;
  let x_719 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_719 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_722 : vec4<f32> = u_xlat0;
  let x_726 : vec3<f32> = x_31.x_Bloom_Color;
  let x_727 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * x_726);
  let x_728 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  let x_731 : f32 = u_xlat0.w;
  u_xlat4.w = (x_731 * 0.0625f);
  let x_734 : vec4<f32> = u_xlat1;
  let x_735 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_734 + x_735);
  let x_737 : vec4<f32> = u_xlat2;
  let x_738 : vec4<f32> = u_xlat3;
  let x_740 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_737 * x_738) + x_740);
  let x_742 : vec4<f32> = phase0_Input0_1;
  let x_746 : vec4<f32> = x_31.x_Grain_Params2;
  let x_750 : vec4<f32> = x_31.x_Grain_Params2;
  let x_752 : vec2<f32> = ((vec2<f32>(x_742.z, x_742.w) * vec2<f32>(x_746.x, x_746.y)) + vec2<f32>(x_750.z, x_750.w));
  let x_753 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_752.x, x_752.y, x_753.z, x_753.w);
  let x_760 : vec4<f32> = u_xlat1;
  let x_762 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_760.x, x_760.y));
  let x_763 : vec3<f32> = vec3<f32>(x_762.x, x_762.y, x_762.z);
  let x_764 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat0;
  let x_767 : vec3<f32> = vec3<f32>(x_766.x, x_766.y, x_766.z);
  let x_768 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_767.x, x_767.y, x_767.z, x_768.w);
  let x_770 : vec4<f32> = u_xlat2;
  let x_774 : vec3<f32> = clamp(vec3<f32>(x_770.x, x_770.y, x_770.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat19 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_785 : f32 = u_xlat19;
  u_xlat19 = sqrt(x_785);
  let x_789 : f32 = x_31.x_Grain_Params1.x;
  let x_790 : f32 = u_xlat19;
  u_xlat19 = ((x_789 * -(x_790)) + 1.0f);
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = u_xlat1;
  let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat1;
  let x_804 : f32 = x_31.x_Grain_Params1.y;
  let x_806 : f32 = x_31.x_Grain_Params1.y;
  let x_808 : f32 = x_31.x_Grain_Params1.y;
  let x_810 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_804, x_806, x_808));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : f32 = u_xlat19;
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815, x_815, x_815)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_827 : f32 = x_31.x_PostExposure;
  let x_829 : f32 = x_31.x_PostExposure;
  let x_831 : f32 = x_31.x_PostExposure;
  let x_833 : f32 = x_31.x_PostExposure;
  let x_834 : vec4<f32> = vec4<f32>(x_827, x_829, x_831, x_833);
  u_xlat0 = (vec4<f32>(x_823.w, x_823.x, x_823.y, x_823.z) * vec4<f32>(x_834.x, x_834.y, x_834.z, x_834.w));
  let x_841 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = ((vec3<f32>(x_841.y, x_841.z, x_841.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_849 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = log2(vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat1;
  let x_863 : vec3<f32> = ((vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_864 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat1;
  let x_870 : vec3<f32> = clamp(vec3<f32>(x_866.x, x_866.y, x_866.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_871 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat1;
  let x_878 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_880 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_878.y, x_878.y, x_878.y));
  let x_881 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
  let x_884 : f32 = x_31.x_Lut3D_Params.x;
  u_xlat19 = (x_884 * 0.5f);
  let x_886 : vec4<f32> = u_xlat1;
  let x_889 : vec2<f32> = x_31.x_Lut3D_Params;
  let x_892 : f32 = u_xlat19;
  let x_894 : vec3<f32> = ((vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(x_889.x, x_889.x, x_889.x)) + vec3<f32>(x_892, x_892, x_892));
  let x_895 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
  let x_905 : vec4<f32> = u_xlat1;
  let x_907 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec3<f32> = vec3<f32>(x_907.x, x_907.y, x_907.z);
  let x_909 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_909.x, x_908.x, x_908.y, x_908.z);
  let x_914 : f32 = x_31.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_914);
  let x_916 : bool = u_xlatb1;
  if (x_916) {
    let x_919 : vec4<f32> = u_xlat0;
    let x_920 : vec3<f32> = vec3<f32>(x_919.y, x_919.z, x_919.w);
    let x_921 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
    let x_923 : vec4<f32> = u_xlat1;
    let x_927 : vec3<f32> = clamp(vec3<f32>(x_923.x, x_923.y, x_923.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_928 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
    let x_930 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_936 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_936.y, x_936.z, x_936.w, x_936.x);
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

