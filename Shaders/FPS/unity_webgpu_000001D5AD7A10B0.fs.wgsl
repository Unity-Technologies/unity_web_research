struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_BloomTex_TexelSize : vec4<f32>,
  x_Bloom_DirtTileOffset : vec4<f32>,
  x_Bloom_Settings : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_Bloom_Color : vec3<f32>,
  x_ChromaticAberration_Amount : f32,
  x_Lut2D_Params : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : vec3<bool>;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_235 : f32;
  var u_xlati_loop_1 : i32;
  var x_540 : f32;
  var x_1101 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1268 : f32;
  var x_1280 : f32;
  var x_1292 : f32;
  var x_1417 : f32;
  var x_1429 : f32;
  var x_1441 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_17.z, x_17.w);
  let x_21 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec4<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_57.z, x_57.w);
  let x_61 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_61.x, x_61.y), vec2<f32>(x_63.x, x_63.y));
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_71);
  let x_81 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_81);
  let x_83 : bool = u_xlatb11;
  if (x_83) {
    let x_87 : vec3<f32> = u_xlat1;
    let x_90 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_87.x, x_87.x) * vec2<f32>(x_90.x, x_90.y));
    let x_95 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_95);
    let x_100 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_100);
    let x_104 : f32 = u_xlat2.x;
    let x_106 : f32 = u_xlat3.x;
    u_xlat21.x = (x_104 / x_106);
    let x_113 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_113);
    let x_116 : f32 = u_xlat21.x;
    let x_117 : f32 = u_xlat31;
    u_xlat21.x = ((x_116 * x_117) + -1.0f);
    let x_122 : vec4<f32> = u_xlat0;
    let x_124 : vec2<f32> = u_xlat21;
    let x_127 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_122.x, x_122.y) * vec2<f32>(x_124.x, x_124.x)) + x_127);
  } else {
    let x_131 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_131);
    let x_135 : f32 = u_xlat2.x;
    let x_137 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_135 * x_137);
    let x_141 : f32 = u_xlat1.x;
    let x_143 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_141 * x_143);
    let x_148 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_148), 1.0f);
    let x_153 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_153), 1.0f);
    let x_158 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_158);
    let x_162 : f32 = u_xlat22.x;
    let x_163 : f32 = u_xlat12;
    u_xlat12 = (x_162 * x_163);
    let x_165 : f32 = u_xlat12;
    let x_166 : f32 = u_xlat12;
    u_xlat22.x = (x_165 * x_166);
    let x_171 : f32 = u_xlat22.x;
    u_xlat32 = ((x_171 * 0.0208351f) + -0.085133001f);
    let x_177 : f32 = u_xlat22.x;
    let x_178 : f32 = u_xlat32;
    u_xlat32 = ((x_177 * x_178) + 0.180141002f);
    let x_183 : f32 = u_xlat22.x;
    let x_184 : f32 = u_xlat32;
    u_xlat32 = ((x_183 * x_184) + -0.330299497f);
    let x_189 : f32 = u_xlat22.x;
    let x_190 : f32 = u_xlat32;
    u_xlat22.x = ((x_189 * x_190) + 0.999866009f);
    let x_196 : f32 = u_xlat22.x;
    let x_197 : f32 = u_xlat12;
    u_xlat32 = (x_196 * x_197);
    let x_203 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_203));
    let x_207 : f32 = u_xlat32;
    u_xlat32 = ((x_207 * -2.0f) + 1.570796371f);
    let x_213 : bool = u_xlatb3.x;
    let x_214 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_214, x_213);
    let x_216 : f32 = u_xlat12;
    let x_218 : f32 = u_xlat22.x;
    let x_220 : f32 = u_xlat32;
    u_xlat12 = ((x_216 * x_218) + x_220);
    let x_223 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_223, 1.0f);
    let x_228 : f32 = u_xlat1.x;
    let x_230 : f32 = u_xlat1.x;
    u_xlatb1 = (x_228 < -(x_230));
    let x_233 : bool = u_xlatb1;
    if (x_233) {
      let x_238 : f32 = u_xlat12;
      x_235 = -(x_238);
    } else {
      let x_241 : f32 = u_xlat12;
      x_235 = x_241;
    }
    let x_242 : f32 = x_235;
    u_xlat1.x = x_242;
    let x_245 : f32 = u_xlat2.x;
    let x_247 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_245 * x_247) + -1.0f);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec3<f32> = u_xlat1;
    let x_256 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_268 : vec2<f32> = vs_TEXCOORD0;
  let x_269 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_268);
  u_xlat0.x = x_269.x;
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  let x_278 : vec2<f32> = ((x_273 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_279 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_278.x, x_278.y, x_279.z);
  let x_282 : vec3<f32> = u_xlat10;
  let x_284 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_282.x, x_282.y), vec2<f32>(x_284.x, x_284.y));
  let x_287 : f32 = u_xlat30;
  let x_289 : vec3<f32> = u_xlat10;
  let x_291 : vec2<f32> = (vec2<f32>(x_287, x_287) * vec2<f32>(x_289.x, x_289.y));
  let x_292 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_291.x, x_291.y, x_292.z);
  let x_294 : vec3<f32> = u_xlat10;
  let x_298 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_300 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_301 : vec2<f32> = vec2<f32>(x_298, x_300);
  let x_305 : vec2<f32> = (vec2<f32>(x_294.x, x_294.y) * vec2<f32>(x_301.x, x_301.y));
  let x_306 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_305.x, x_305.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat10;
  let x_313 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_315 : vec2<f32> = (-(vec2<f32>(x_308.x, x_308.y)) * vec2<f32>(x_313.z, x_313.w));
  let x_316 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_315.x, x_315.y, x_316.z);
  let x_318 : vec3<f32> = u_xlat2;
  let x_320 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) * vec2<f32>(0.5f, 0.5f));
  let x_321 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_320.x, x_320.y, x_321.z);
  let x_323 : vec3<f32> = u_xlat2;
  let x_325 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_323.x, x_323.y), vec2<f32>(x_325.x, x_325.y));
  let x_328 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_328);
  let x_332 : f32 = u_xlat30;
  u_xlati30 = i32(x_332);
  let x_334 : i32 = u_xlati30;
  u_xlati30 = max(x_334, 3i);
  let x_336 : i32 = u_xlati30;
  u_xlati30 = min(x_336, 16i);
  let x_339 : i32 = u_xlati30;
  u_xlat1.x = f32(x_339);
  let x_342 : vec3<f32> = u_xlat10;
  let x_345 : vec3<f32> = u_xlat1;
  let x_347 : vec2<f32> = (-(vec2<f32>(x_342.x, x_342.y)) / vec2<f32>(x_345.x, x_345.x));
  let x_348 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_347.x, x_347.y, x_348.z);
  u_xlat2.y = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_365 : vec2<f32> = vs_TEXCOORD0;
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_376 : i32 = u_xlati_loop_1;
    let x_377 : i32 = u_xlati30;
    if ((x_376 < x_377)) {
    } else {
      break;
    }
    let x_380 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_380);
    let x_382 : f32 = u_xlat36;
    u_xlat36 = (x_382 + 0.5f);
    let x_384 : f32 = u_xlat36;
    let x_386 : f32 = u_xlat1.x;
    u_xlat2.x = (x_384 / x_386);
    let x_390 : vec4<f32> = u_xlat6;
    let x_392 : vec2<f32> = (vec2<f32>(x_390.x, x_390.y) + vec2<f32>(-0.5f, -0.5f));
    let x_393 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_396 : vec4<f32> = u_xlat7;
    let x_399 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_399.z, x_399.z)) + vec2<f32>(0.5f, 0.5f));
    let x_403 : vec4<f32> = u_xlat7;
    let x_406 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_410 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_413 : vec2<f32> = ((vec2<f32>(x_403.x, x_403.y) * vec2<f32>(x_406.z, x_406.z)) + -(vec2<f32>(x_410.x, x_410.y)));
    let x_414 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
    let x_416 : vec4<f32> = u_xlat7;
    let x_419 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_421 : vec2<f32> = (vec2<f32>(x_416.x, x_416.y) * vec2<f32>(x_419.z, x_419.w));
    let x_422 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_421.x, x_421.y, x_422.z, x_422.w);
    let x_424 : vec4<f32> = u_xlat7;
    let x_426 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_424.x, x_424.y), vec2<f32>(x_426.x, x_426.y));
    let x_429 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_429);
    let x_431 : bool = u_xlatb11;
    if (x_431) {
      let x_435 : f32 = u_xlat36;
      let x_438 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_435, x_435) * vec2<f32>(x_438.x, x_438.y));
      let x_443 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_443);
      let x_446 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_446);
      let x_450 : f32 = u_xlat8.x;
      let x_451 : f32 = u_xlat9;
      u_xlat8.x = (x_450 / x_451);
      let x_456 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_456);
      let x_459 : f32 = u_xlat8.x;
      let x_460 : f32 = u_xlat18;
      u_xlat8.x = ((x_459 * x_460) + -1.0f);
      let x_464 : vec4<f32> = u_xlat7;
      let x_466 : vec2<f32> = u_xlat8;
      let x_469 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_464.x, x_464.y) * vec2<f32>(x_466.x, x_466.x)) + x_469);
    } else {
      let x_473 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_473);
      let x_475 : f32 = u_xlat28;
      let x_477 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_475 * x_477);
      let x_479 : f32 = u_xlat36;
      let x_481 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_479 * x_481);
      let x_484 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_484), 1.0f);
      let x_487 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_487), 1.0f);
      let x_490 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_490);
      let x_492 : f32 = u_xlat38;
      let x_493 : f32 = u_xlat9;
      u_xlat38 = (x_492 * x_493);
      let x_495 : f32 = u_xlat38;
      let x_496 : f32 = u_xlat38;
      u_xlat9 = (x_495 * x_496);
      let x_499 : f32 = u_xlat9;
      u_xlat19 = ((x_499 * 0.0208351f) + -0.085133001f);
      let x_502 : f32 = u_xlat9;
      let x_503 : f32 = u_xlat19;
      u_xlat19 = ((x_502 * x_503) + 0.180141002f);
      let x_506 : f32 = u_xlat9;
      let x_507 : f32 = u_xlat19;
      u_xlat19 = ((x_506 * x_507) + -0.330299497f);
      let x_510 : f32 = u_xlat9;
      let x_511 : f32 = u_xlat19;
      u_xlat9 = ((x_510 * x_511) + 0.999866009f);
      let x_514 : f32 = u_xlat38;
      let x_515 : f32 = u_xlat9;
      u_xlat19 = (x_514 * x_515);
      let x_518 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_518));
      let x_521 : f32 = u_xlat19;
      u_xlat19 = ((x_521 * -2.0f) + 1.570796371f);
      let x_524 : bool = u_xlatb29;
      let x_525 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_525, x_524);
      let x_527 : f32 = u_xlat38;
      let x_528 : f32 = u_xlat9;
      let x_530 : f32 = u_xlat19;
      u_xlat38 = ((x_527 * x_528) + x_530);
      let x_532 : f32 = u_xlat36;
      u_xlat36 = min(x_532, 1.0f);
      let x_535 : f32 = u_xlat36;
      let x_536 : f32 = u_xlat36;
      u_xlatb36 = (x_535 < -(x_536));
      let x_539 : bool = u_xlatb36;
      if (x_539) {
        let x_543 : f32 = u_xlat38;
        x_540 = -(x_543);
      } else {
        let x_546 : f32 = u_xlat38;
        x_540 = x_546;
      }
      let x_547 : f32 = x_540;
      u_xlat36 = x_547;
      let x_548 : f32 = u_xlat28;
      let x_549 : f32 = u_xlat36;
      u_xlat36 = ((x_548 * x_549) + -1.0f);
      let x_552 : vec4<f32> = u_xlat7;
      let x_554 : f32 = u_xlat36;
      let x_557 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_552.x, x_552.y) * vec2<f32>(x_554, x_554)) + x_557);
    }
    let x_559 : vec2<f32> = u_xlat8;
    u_xlat8 = x_559;
    let x_560 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_560, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_564 : vec2<f32> = u_xlat8;
    let x_567 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_569 : vec2<f32> = (x_564 * vec2<f32>(x_567, x_567));
    let x_570 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
    let x_577 : vec4<f32> = u_xlat7;
    let x_579 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_577.x, x_577.y), 0.0f);
    u_xlat7 = x_579;
    let x_585 : vec3<f32> = u_xlat2;
    let x_587 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_585.x, x_585.y), 0.0f);
    let x_588 : vec3<f32> = vec3<f32>(x_587.x, x_587.y, x_587.z);
    let x_589 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat7;
    let x_592 : vec4<f32> = u_xlat3;
    let x_594 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_591 * x_592) + x_594);
    let x_596 : vec4<f32> = u_xlat3;
    let x_597 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_596 + x_597);
    let x_599 : vec3<f32> = u_xlat10;
    let x_601 : vec4<f32> = u_xlat6;
    let x_603 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) + vec2<f32>(x_601.x, x_601.y));
    let x_604 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_603.x, x_603.y, x_604.z, x_604.w);

    continuing {
      let x_606 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_606 + 1i);
    }
  }
  let x_608 : vec4<f32> = u_xlat4;
  let x_609 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_608 / x_609);
  let x_611 : vec4<f32> = u_xlat0;
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec3<f32> = (vec3<f32>(x_611.x, x_611.x, x_611.x) * vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
  let x_620 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_624 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_633 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_624.x, x_624.y, x_624.w, x_624.y)) * vec4<f32>(x_630.x, x_630.x, x_630.x, x_630.x)) + vec4<f32>(x_633.x, x_633.y, x_633.x, x_633.y));
  let x_636 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_636, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_640 * vec4<f32>(x_642, x_642, x_642, x_642));
  let x_650 : vec4<f32> = u_xlat4;
  let x_652 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_650.x, x_650.y));
  u_xlat5 = x_652;
  let x_656 : vec4<f32> = u_xlat4;
  let x_658 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_656.z, x_656.w));
  u_xlat4 = x_658;
  let x_659 : vec4<f32> = u_xlat4;
  let x_662 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_659 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_662);
  let x_664 : vec4<f32> = u_xlat0;
  let x_668 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_671 : vec2<f32> = u_xlat21;
  let x_672 : vec2<f32> = ((-(vec2<f32>(x_664.z, x_664.y)) * vec2<f32>(x_668.x, x_668.x)) + x_671);
  let x_673 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_672.x, x_672.y, x_673.z);
  let x_675 : vec3<f32> = u_xlat1;
  let x_679 : vec2<f32> = clamp(vec2<f32>(x_675.x, x_675.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_680 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_679.x, x_679.y, x_680.z);
  let x_682 : vec3<f32> = u_xlat1;
  let x_685 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_687 : vec2<f32> = (vec2<f32>(x_682.x, x_682.y) * vec2<f32>(x_685, x_685));
  let x_688 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_687.x, x_687.y, x_688.z);
  let x_693 : vec3<f32> = u_xlat1;
  let x_695 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_693.x, x_693.y));
  u_xlat5 = x_695;
  let x_696 : vec4<f32> = u_xlat4;
  let x_697 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_696 + x_697);
  let x_699 : vec4<f32> = u_xlat0;
  let x_702 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_705 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_699.z, x_699.w, x_699.x, x_699.w) * vec4<f32>(x_702.x, x_702.x, x_702.x, x_702.x)) + vec4<f32>(x_705.x, x_705.y, x_705.x, x_705.y));
  let x_708 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_708, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_712 : vec4<f32> = u_xlat5;
  let x_714 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_712 * vec4<f32>(x_714, x_714, x_714, x_714));
  let x_720 : vec4<f32> = u_xlat5;
  let x_722 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_720.x, x_720.y));
  u_xlat6 = x_722;
  let x_723 : vec4<f32> = u_xlat6;
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_723 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_725);
  let x_727 : vec2<f32> = u_xlat21;
  let x_728 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_727.x, x_727.y, x_728.z);
  let x_730 : vec3<f32> = u_xlat1;
  let x_734 : vec2<f32> = clamp(vec2<f32>(x_730.x, x_730.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_735 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_734.x, x_734.y, x_735.z);
  let x_737 : vec3<f32> = u_xlat1;
  let x_740 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_742 : vec2<f32> = (vec2<f32>(x_737.x, x_737.y) * vec2<f32>(x_740, x_740));
  let x_743 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_742.x, x_742.y, x_743.z);
  let x_748 : vec3<f32> = u_xlat1;
  let x_750 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_748.x, x_748.y));
  u_xlat6 = x_750;
  let x_751 : vec4<f32> = u_xlat6;
  let x_755 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_751 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_755);
  let x_760 : vec4<f32> = u_xlat5;
  let x_762 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_760.z, x_760.w));
  u_xlat5 = x_762;
  let x_763 : vec4<f32> = u_xlat5;
  let x_765 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_763 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_765);
  let x_767 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_773 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_767.z, x_767.y, x_767.w, x_767.y) * vec4<f32>(x_770.x, x_770.x, x_770.x, x_770.x)) + vec4<f32>(x_773.x, x_773.y, x_773.x, x_773.y));
  let x_776 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_776, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_780 : vec4<f32> = u_xlat5;
  let x_782 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_780 * vec4<f32>(x_782, x_782, x_782, x_782));
  let x_788 : vec4<f32> = u_xlat5;
  let x_790 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_788.x, x_788.y));
  u_xlat6 = x_790;
  let x_791 : vec4<f32> = u_xlat4;
  let x_792 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_791 + x_792);
  let x_797 : vec4<f32> = u_xlat5;
  let x_799 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_797.z, x_797.w));
  u_xlat5 = x_799;
  let x_800 : vec4<f32> = u_xlat5;
  let x_802 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_800 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_802);
  let x_804 : vec4<f32> = u_xlat0;
  let x_807 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_810 : vec2<f32> = u_xlat21;
  let x_811 : vec2<f32> = ((vec2<f32>(x_804.x, x_804.y) * vec2<f32>(x_807.x, x_807.x)) + x_810);
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_812.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_818 : vec2<f32> = clamp(vec2<f32>(x_814.x, x_814.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_819 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
  let x_821 : vec4<f32> = u_xlat0;
  let x_824 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_826 : vec2<f32> = (vec2<f32>(x_821.x, x_821.y) * vec2<f32>(x_824, x_824));
  let x_827 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_826.x, x_826.y, x_827.z, x_827.w);
  let x_832 : vec4<f32> = u_xlat0;
  let x_834 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_832.x, x_832.y));
  u_xlat0 = x_834;
  let x_835 : vec4<f32> = u_xlat0;
  let x_836 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_835 + x_836);
  let x_838 : vec4<f32> = u_xlat0;
  let x_840 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_838 * vec4<f32>(x_840.y, x_840.y, x_840.y, x_840.y));
  let x_843 : vec2<f32> = u_xlat21;
  let x_846 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_850 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_852 : vec2<f32> = ((x_843 * vec2<f32>(x_846.x, x_846.y)) + vec2<f32>(x_850.z, x_850.w));
  let x_853 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_852.x, x_852.y, x_853.z);
  let x_860 : vec3<f32> = u_xlat1;
  let x_862 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_860.x, x_860.y));
  let x_863 : vec3<f32> = vec3<f32>(x_862.x, x_862.y, x_862.z);
  let x_864 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat0;
  let x_870 : vec3<f32> = (vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_871 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec4<f32> = u_xlat4;
  let x_876 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_878 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_876.z, x_876.z, x_876.z));
  let x_879 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
  let x_881 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_881 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_884 : vec4<f32> = u_xlat0;
  let x_888 : vec3<f32> = x_26.x_Bloom_Color;
  let x_889 : vec3<f32> = (vec3<f32>(x_884.x, x_884.y, x_884.z) * x_888);
  let x_890 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_893 : f32 = u_xlat0.w;
  u_xlat6.w = (x_893 * 0.0625f);
  let x_896 : vec4<f32> = u_xlat3;
  let x_897 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_896 + x_897);
  let x_899 : vec4<f32> = u_xlat5;
  let x_901 : vec4<f32> = u_xlat4;
  let x_903 : vec3<f32> = (vec3<f32>(x_899.x, x_899.y, x_899.z) * vec3<f32>(x_901.x, x_901.y, x_901.z));
  let x_904 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
  u_xlat3.w = 0.0f;
  let x_907 : vec4<f32> = u_xlat0;
  let x_908 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_907 + x_908);
  let x_912 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_912 < 0.5f);
  let x_914 : bool = u_xlatb1;
  if (x_914) {
    let x_917 : vec2<f32> = u_xlat21;
    let x_921 : vec2<f32> = x_26.x_Vignette_Center;
    let x_923 : vec2<f32> = (x_917 + -(x_921));
    let x_924 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_923.x, x_923.y, x_924.z);
    let x_926 : vec3<f32> = u_xlat1;
    let x_931 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_933 : vec2<f32> = (abs(vec2<f32>(x_926.y, x_926.x)) * vec2<f32>(x_931.x, x_931.x));
    let x_934 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_934.x, x_933.x, x_933.y, x_934.w);
    let x_937 : f32 = x_26.x_ScreenParams.x;
    let x_939 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_937 / x_939);
    let x_943 : f32 = u_xlat1.x;
    u_xlat1.x = (x_943 + -1.0f);
    let x_947 : f32 = x_26.x_Vignette_Settings.w;
    let x_949 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_947 * x_949) + 1.0f);
    let x_954 : f32 = u_xlat1.x;
    let x_956 : f32 = u_xlat3.z;
    u_xlat3.x = (x_954 * x_956);
    let x_959 : vec4<f32> = u_xlat3;
    let x_960 : vec2<f32> = vec2<f32>(x_959.x, x_959.y);
    let x_961 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_960.x, x_960.y, x_961.z, x_961.w);
    let x_963 : vec4<f32> = u_xlat3;
    let x_967 : vec2<f32> = clamp(vec2<f32>(x_963.x, x_963.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_968 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_967.x, x_967.y, x_968.z, x_968.w);
    let x_970 : vec4<f32> = u_xlat3;
    let x_972 : vec2<f32> = log2(vec2<f32>(x_970.x, x_970.y));
    let x_973 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_972.x, x_972.y, x_973.z);
    let x_975 : vec3<f32> = u_xlat1;
    let x_978 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_980 : vec2<f32> = (vec2<f32>(x_975.x, x_975.y) * vec2<f32>(x_978.z, x_978.z));
    let x_981 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_980.x, x_980.y, x_981.z);
    let x_983 : vec3<f32> = u_xlat1;
    let x_985 : vec2<f32> = exp2(vec2<f32>(x_983.x, x_983.y));
    let x_986 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_985.x, x_985.y, x_986.z);
    let x_988 : vec3<f32> = u_xlat1;
    let x_990 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_988.x, x_988.y), vec2<f32>(x_990.x, x_990.y));
    let x_995 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_995) + 1.0f);
    let x_1000 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_1000, 0.0f);
    let x_1004 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_1004);
    let x_1008 : f32 = u_xlat1.x;
    let x_1010 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_1008 * x_1010);
    let x_1014 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_1014);
    let x_1019 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1022 : vec3<f32> = (-(x_1019) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1023 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
    let x_1025 : vec3<f32> = u_xlat1;
    let x_1027 : vec4<f32> = u_xlat3;
    let x_1031 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1032 : vec3<f32> = ((vec3<f32>(x_1025.x, x_1025.x, x_1025.x) * vec3<f32>(x_1027.x, x_1027.y, x_1027.z)) + x_1031);
    let x_1033 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
    let x_1035 : vec4<f32> = u_xlat0;
    let x_1037 : vec4<f32> = u_xlat3;
    let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.y, x_1035.z) * vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
    let x_1040 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1044 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1044 + -1.0f);
    let x_1048 : f32 = u_xlat1.x;
    let x_1050 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_1048 * x_1050) + 1.0f);
  } else {
    let x_1060 : vec2<f32> = u_xlat21;
    let x_1061 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1060);
    u_xlat1.x = x_1061.w;
    let x_1065 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1065 + 0.055f);
    let x_1069 : vec3<f32> = u_xlat1;
    let x_1074 : vec2<f32> = (vec2<f32>(x_1069.x, x_1069.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1075 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1074.x, x_1074.y, x_1075.z);
    let x_1078 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1078), 1.1920929e-07f);
    let x_1084 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1084);
    let x_1088 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1088 * 2.400000095f);
    let x_1093 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1093);
    let x_1098 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1098);
    let x_1100 : bool = u_xlatb1;
    if (x_1100) {
      let x_1105 : f32 = u_xlat11.x;
      x_1101 = x_1105;
    } else {
      let x_1108 : f32 = u_xlat21.x;
      x_1101 = x_1108;
    }
    let x_1109 : f32 = x_1101;
    u_xlat1.x = x_1109;
    let x_1112 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1112) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1115 : vec3<f32> = u_xlat1;
    let x_1117 : vec3<f32> = u_xlat11;
    let x_1120 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1115.x, x_1115.x, x_1115.x) * x_1117) + x_1120);
    let x_1122 : vec4<f32> = u_xlat0;
    let x_1124 : vec3<f32> = u_xlat11;
    let x_1126 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1122.x, x_1122.y, x_1122.z) * x_1124) + -(vec3<f32>(x_1126.x, x_1126.y, x_1126.z)));
    let x_1132 : f32 = x_26.x_Vignette_Opacity;
    let x_1134 : vec3<f32> = u_xlat11;
    let x_1136 : vec4<f32> = u_xlat0;
    let x_1138 : vec3<f32> = ((vec3<f32>(x_1132, x_1132, x_1132) * x_1134) + vec3<f32>(x_1136.x, x_1136.y, x_1136.z));
    let x_1139 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1138.x, x_1138.y, x_1138.z, x_1139.w);
    let x_1142 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1142 + -1.0f);
    let x_1146 : f32 = u_xlat1.x;
    let x_1148 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_1146 * x_1148) + 1.0f);
  }
  let x_1153 : vec2<f32> = vs_TEXCOORD1;
  let x_1156 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1160 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1162 : vec2<f32> = ((x_1153 * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1160.z, x_1160.w));
  let x_1163 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1162.x, x_1162.y, x_1163.z, x_1163.w);
  let x_1170 : vec4<f32> = u_xlat0;
  let x_1172 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1170.x, x_1170.y));
  let x_1173 : vec3<f32> = vec3<f32>(x_1172.x, x_1172.y, x_1172.z);
  let x_1174 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1173.x, x_1173.y, x_1173.z, x_1174.w);
  let x_1176 : vec4<f32> = u_xlat3;
  u_xlat1 = vec3<f32>(x_1176.x, x_1176.y, x_1176.z);
  let x_1178 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1178, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1182 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1182, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1188 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1188);
  let x_1191 : f32 = x_26.x_Grain_Params1.x;
  let x_1192 : f32 = u_xlat30;
  u_xlat30 = ((x_1191 * -(x_1192)) + 1.0f);
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1200 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(x_1198.x, x_1198.y, x_1198.z));
  let x_1201 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat0;
  let x_1206 : f32 = x_26.x_Grain_Params1.y;
  let x_1208 : f32 = x_26.x_Grain_Params1.y;
  let x_1210 : f32 = x_26.x_Grain_Params1.y;
  let x_1212 : vec3<f32> = (vec3<f32>(x_1203.x, x_1203.y, x_1203.z) * vec3<f32>(x_1206, x_1208, x_1210));
  let x_1213 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1217 : f32 = u_xlat30;
  let x_1220 : vec4<f32> = u_xlat3;
  let x_1222 : vec3<f32> = ((vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(x_1217, x_1217, x_1217)) + vec3<f32>(x_1220.x, x_1220.y, x_1220.z));
  let x_1223 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1222.x, x_1222.y, x_1222.z, x_1223.w);
  let x_1225 : vec4<f32> = u_xlat4;
  u_xlat4 = x_1225;
  let x_1226 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1226, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1230 : vec4<f32> = u_xlat4;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1230.z, x_1230.x, x_1230.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1237 : vec4<f32> = u_xlat4;
  u_xlat1 = max(vec3<f32>(x_1237.z, x_1237.x, x_1237.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1241 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1241);
  let x_1243 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1243 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1247 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1247);
  let x_1249 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1249 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1258 : vec4<f32> = u_xlat4;
  let x_1261 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1258.z, x_1258.x, x_1258.y, x_1258.z));
  u_xlatb3 = vec3<bool>(x_1261.x, x_1261.y, x_1261.z);
  let x_1265 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1265;
  let x_1267 : bool = u_xlatb3.x;
  if (x_1267) {
    let x_1272 : f32 = u_xlat0.x;
    x_1268 = x_1272;
  } else {
    let x_1275 : f32 = u_xlat1.x;
    x_1268 = x_1275;
  }
  let x_1276 : f32 = x_1268;
  hlslcc_movcTemp.x = x_1276;
  let x_1279 : bool = u_xlatb3.y;
  if (x_1279) {
    let x_1284 : f32 = u_xlat0.y;
    x_1280 = x_1284;
  } else {
    let x_1287 : f32 = u_xlat1.y;
    x_1280 = x_1287;
  }
  let x_1288 : f32 = x_1280;
  hlslcc_movcTemp.y = x_1288;
  let x_1291 : bool = u_xlatb3.z;
  if (x_1291) {
    let x_1296 : f32 = u_xlat0.z;
    x_1292 = x_1296;
  } else {
    let x_1299 : f32 = u_xlat1.z;
    x_1292 = x_1299;
  }
  let x_1300 : f32 = x_1292;
  hlslcc_movcTemp.z = x_1300;
  let x_1302 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1302;
  let x_1303 : vec4<f32> = u_xlat0;
  let x_1307 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1307.z, x_1307.z, x_1307.z));
  let x_1311 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1311);
  let x_1315 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1317 : vec2<f32> = (vec2<f32>(x_1315.x, x_1315.y) * vec2<f32>(0.5f, 0.5f));
  let x_1318 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1317.x, x_1317.y, x_1318.z);
  let x_1320 : vec3<f32> = u_xlat10;
  let x_1323 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1326 : vec3<f32> = u_xlat1;
  let x_1328 : vec2<f32> = ((vec2<f32>(x_1320.y, x_1320.z) * vec2<f32>(x_1323.x, x_1323.y)) + vec2<f32>(x_1326.x, x_1326.y));
  let x_1329 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1329.x, x_1328.x, x_1328.y);
  let x_1332 : f32 = u_xlat10.x;
  let x_1334 : f32 = x_26.x_Lut2D_Params.y;
  let x_1337 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1332 * x_1334) + x_1337);
  let x_1345 : vec3<f32> = u_xlat1;
  let x_1347 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1345.x, x_1345.z));
  let x_1348 : vec3<f32> = vec3<f32>(x_1347.x, x_1347.y, x_1347.z);
  let x_1349 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
  let x_1352 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1352;
  let x_1354 : vec2<f32> = u_xlat22;
  let x_1355 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1354 + vec2<f32>(x_1355.x, x_1355.z));
  let x_1361 : vec2<f32> = u_xlat20;
  let x_1362 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1361);
  u_xlat1 = vec3<f32>(x_1362.x, x_1362.y, x_1362.z);
  let x_1365 : f32 = u_xlat0.x;
  let x_1367 : f32 = x_26.x_Lut2D_Params.z;
  let x_1370 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1365 * x_1367) + -(x_1370));
  let x_1374 : vec4<f32> = u_xlat3;
  let x_1377 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1374.x, x_1374.y, x_1374.z)) + x_1377);
  let x_1379 : vec4<f32> = u_xlat0;
  let x_1381 : vec3<f32> = u_xlat10;
  let x_1383 : vec4<f32> = u_xlat3;
  let x_1385 : vec3<f32> = ((vec3<f32>(x_1379.x, x_1379.x, x_1379.x) * x_1381) + vec3<f32>(x_1383.x, x_1383.y, x_1383.z));
  let x_1386 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1385.x, x_1385.y, x_1385.z, x_1386.w);
  let x_1388 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1388.x, x_1388.y, x_1388.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1392 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1392.x, x_1392.y, x_1392.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1396 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1396 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1399 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1399), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1402 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1402);
  let x_1404 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1404 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1407 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1407);
  let x_1411 : vec4<f32> = u_xlat0;
  let x_1413 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1411.x));
  u_xlatb0 = vec3<bool>(x_1413.x, x_1413.y, x_1413.z);
  let x_1416 : bool = u_xlatb0.x;
  if (x_1416) {
    let x_1421 : f32 = u_xlat1.x;
    x_1417 = x_1421;
  } else {
    let x_1424 : f32 = u_xlat2.x;
    x_1417 = x_1424;
  }
  let x_1425 : f32 = x_1417;
  u_xlat4.x = x_1425;
  let x_1428 : bool = u_xlatb0.y;
  if (x_1428) {
    let x_1433 : f32 = u_xlat1.y;
    x_1429 = x_1433;
  } else {
    let x_1436 : f32 = u_xlat2.y;
    x_1429 = x_1436;
  }
  let x_1437 : f32 = x_1429;
  u_xlat4.y = x_1437;
  let x_1440 : bool = u_xlatb0.z;
  if (x_1440) {
    let x_1445 : f32 = u_xlat1.z;
    x_1441 = x_1445;
  } else {
    let x_1448 : f32 = u_xlat2.z;
    x_1441 = x_1448;
  }
  let x_1449 : f32 = x_1441;
  u_xlat4.z = x_1449;
  let x_1453 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1453);
  let x_1457 : bool = u_xlatb0.x;
  if (x_1457) {
    let x_1460 : vec4<f32> = u_xlat4;
    let x_1461 : vec3<f32> = vec3<f32>(x_1460.x, x_1460.y, x_1460.z);
    let x_1462 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1461.x, x_1461.y, x_1461.z, x_1462.w);
    let x_1464 : vec4<f32> = u_xlat0;
    let x_1468 : vec3<f32> = clamp(vec3<f32>(x_1464.x, x_1464.y, x_1464.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1469 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1468.x, x_1468.y, x_1468.z, x_1469.w);
    let x_1471 : vec4<f32> = u_xlat0;
    u_xlat4.w = dot(vec3<f32>(x_1471.x, x_1471.y, x_1471.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1477 : vec4<f32> = u_xlat4;
  SV_Target0 = x_1477;
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

