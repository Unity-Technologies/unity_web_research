struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(8) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_235 : f32;
  var u_xlati_loop_1 : i32;
  var x_540 : f32;
  var x_961 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1055 : f32;
  var x_1067 : f32;
  var x_1079 : f32;
  var x_1204 : f32;
  var x_1216 : f32;
  var x_1228 : f32;
  var x_1311 : f32;
  var x_1323 : f32;
  var x_1335 : f32;
  var x_1380 : f32;
  var x_1393 : f32;
  var x_1405 : f32;
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
  u_xlat0 = (vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_626 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_626 * 0.5f);
  let x_629 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = u_xlat1;
  let x_634 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_629.x, x_629.y, x_629.z, x_629.y) * vec4<f32>(x_631.x, x_631.x, x_631.x, x_631.x)) + vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y));
  let x_637 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_637, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_641 : vec4<f32> = u_xlat4;
  let x_643 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_641 * vec4<f32>(x_643, x_643, x_643, x_643));
  let x_651 : vec4<f32> = u_xlat4;
  let x_653 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_651.x, x_651.y));
  u_xlat5 = x_653;
  let x_657 : vec4<f32> = u_xlat4;
  let x_659 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_657.z, x_657.w));
  u_xlat4 = x_659;
  let x_660 : vec4<f32> = u_xlat4;
  let x_661 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_660 + x_661);
  let x_663 : vec4<f32> = u_xlat0;
  let x_665 : vec3<f32> = u_xlat1;
  let x_668 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_663.x, x_663.w, x_663.z, x_663.w) * vec4<f32>(x_665.x, x_665.x, x_665.x, x_665.x)) + vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y));
  let x_671 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_671, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_675 : vec4<f32> = u_xlat0;
  let x_677 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_675 * vec4<f32>(x_677, x_677, x_677, x_677));
  let x_683 : vec4<f32> = u_xlat0;
  let x_685 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_683.x, x_683.y));
  u_xlat5 = x_685;
  let x_686 : vec4<f32> = u_xlat4;
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_686 + x_687);
  let x_692 : vec4<f32> = u_xlat0;
  let x_694 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_692.z, x_692.w));
  u_xlat0 = x_694;
  let x_695 : vec4<f32> = u_xlat0;
  let x_696 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_695 + x_696);
  let x_698 : vec4<f32> = u_xlat0;
  let x_701 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_698 * vec4<f32>(x_701.y, x_701.y, x_701.y, x_701.y));
  let x_704 : vec2<f32> = u_xlat21;
  let x_707 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_711 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_713 : vec2<f32> = ((x_704 * vec2<f32>(x_707.x, x_707.y)) + vec2<f32>(x_711.z, x_711.w));
  let x_714 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_713.x, x_713.y, x_714.z);
  let x_721 : vec3<f32> = u_xlat1;
  let x_723 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_721.x, x_721.y));
  let x_724 : vec3<f32> = vec3<f32>(x_723.x, x_723.y, x_723.z);
  let x_725 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  let x_727 : vec4<f32> = u_xlat0;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_732 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_734 : vec4<f32> = u_xlat4;
  let x_737 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_739 : vec3<f32> = (vec3<f32>(x_734.x, x_734.y, x_734.z) * vec3<f32>(x_737.z, x_737.z, x_737.z));
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_742 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_745 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = x_26.x_Bloom_Color;
  let x_750 : vec3<f32> = (vec3<f32>(x_745.x, x_745.y, x_745.z) * x_749);
  let x_751 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_750.x, x_750.y, x_750.z, x_751.w);
  let x_754 : f32 = u_xlat0.w;
  u_xlat6.w = (x_754 * 0.25f);
  let x_757 : vec4<f32> = u_xlat3;
  let x_758 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_757 + x_758);
  let x_760 : vec4<f32> = u_xlat5;
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec3<f32> = (vec3<f32>(x_760.x, x_760.y, x_760.z) * vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  u_xlat3.w = 0.0f;
  let x_768 : vec4<f32> = u_xlat0;
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_768 + x_769);
  let x_772 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_772 < 0.5f);
  let x_774 : bool = u_xlatb1;
  if (x_774) {
    let x_777 : vec2<f32> = u_xlat21;
    let x_781 : vec2<f32> = x_26.x_Vignette_Center;
    let x_783 : vec2<f32> = (x_777 + -(x_781));
    let x_784 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_783.x, x_783.y, x_784.z);
    let x_786 : vec3<f32> = u_xlat1;
    let x_791 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_793 : vec2<f32> = (abs(vec2<f32>(x_786.y, x_786.x)) * vec2<f32>(x_791.x, x_791.x));
    let x_794 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_794.x, x_793.x, x_793.y, x_794.w);
    let x_797 : f32 = x_26.x_ScreenParams.x;
    let x_799 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_797 / x_799);
    let x_803 : f32 = u_xlat1.x;
    u_xlat1.x = (x_803 + -1.0f);
    let x_807 : f32 = x_26.x_Vignette_Settings.w;
    let x_809 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_807 * x_809) + 1.0f);
    let x_814 : f32 = u_xlat1.x;
    let x_816 : f32 = u_xlat3.z;
    u_xlat3.x = (x_814 * x_816);
    let x_819 : vec4<f32> = u_xlat3;
    let x_820 : vec2<f32> = vec2<f32>(x_819.x, x_819.y);
    let x_821 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
    let x_823 : vec4<f32> = u_xlat3;
    let x_827 : vec2<f32> = clamp(vec2<f32>(x_823.x, x_823.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_828 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_827.x, x_827.y, x_828.z, x_828.w);
    let x_830 : vec4<f32> = u_xlat3;
    let x_832 : vec2<f32> = log2(vec2<f32>(x_830.x, x_830.y));
    let x_833 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_832.x, x_832.y, x_833.z);
    let x_835 : vec3<f32> = u_xlat1;
    let x_838 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_840 : vec2<f32> = (vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.z, x_838.z));
    let x_841 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_840.x, x_840.y, x_841.z);
    let x_843 : vec3<f32> = u_xlat1;
    let x_845 : vec2<f32> = exp2(vec2<f32>(x_843.x, x_843.y));
    let x_846 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_845.x, x_845.y, x_846.z);
    let x_848 : vec3<f32> = u_xlat1;
    let x_850 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_848.x, x_848.y), vec2<f32>(x_850.x, x_850.y));
    let x_855 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_855) + 1.0f);
    let x_860 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_860, 0.0f);
    let x_864 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_864);
    let x_868 : f32 = u_xlat1.x;
    let x_870 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_868 * x_870);
    let x_874 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_874);
    let x_879 : vec3<f32> = x_26.x_Vignette_Color;
    let x_882 : vec3<f32> = (-(x_879) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_883 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_885 : vec3<f32> = u_xlat1;
    let x_887 : vec4<f32> = u_xlat3;
    let x_891 : vec3<f32> = x_26.x_Vignette_Color;
    let x_892 : vec3<f32> = ((vec3<f32>(x_885.x, x_885.x, x_885.x) * vec3<f32>(x_887.x, x_887.y, x_887.z)) + x_891);
    let x_893 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
    let x_895 : vec4<f32> = u_xlat0;
    let x_897 : vec4<f32> = u_xlat3;
    let x_899 : vec3<f32> = (vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(x_897.x, x_897.y, x_897.z));
    let x_900 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
    let x_904 : f32 = u_xlat0.w;
    u_xlat11.x = (x_904 + -1.0f);
    let x_908 : f32 = u_xlat1.x;
    let x_910 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_908 * x_910) + 1.0f);
  } else {
    let x_920 : vec2<f32> = u_xlat21;
    let x_921 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_920);
    u_xlat1.x = x_921.w;
    let x_925 : f32 = u_xlat1.x;
    u_xlat1.z = (x_925 + 0.055f);
    let x_929 : vec3<f32> = u_xlat1;
    let x_934 : vec2<f32> = (vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_935 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_934.x, x_934.y, x_935.z);
    let x_938 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_938), 1.1920929e-07f);
    let x_944 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_944);
    let x_948 : f32 = u_xlat21.x;
    u_xlat21.x = (x_948 * 2.400000095f);
    let x_953 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_953);
    let x_958 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_958);
    let x_960 : bool = u_xlatb1;
    if (x_960) {
      let x_965 : f32 = u_xlat11.x;
      x_961 = x_965;
    } else {
      let x_968 : f32 = u_xlat21.x;
      x_961 = x_968;
    }
    let x_969 : f32 = x_961;
    u_xlat1.x = x_969;
    let x_972 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_972) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_975 : vec3<f32> = u_xlat1;
    let x_977 : vec3<f32> = u_xlat11;
    let x_980 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_975.x, x_975.x, x_975.x) * x_977) + x_980);
    let x_982 : vec4<f32> = u_xlat0;
    let x_984 : vec3<f32> = u_xlat11;
    let x_986 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * x_984) + -(vec3<f32>(x_986.x, x_986.y, x_986.z)));
    let x_992 : f32 = x_26.x_Vignette_Opacity;
    let x_994 : vec3<f32> = u_xlat11;
    let x_996 : vec4<f32> = u_xlat0;
    let x_998 : vec3<f32> = ((vec3<f32>(x_992, x_992, x_992) * x_994) + vec3<f32>(x_996.x, x_996.y, x_996.z));
    let x_999 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
    let x_1002 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1002 + -1.0f);
    let x_1006 : f32 = u_xlat1.x;
    let x_1008 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1006 * x_1008) + 1.0f);
  }
  let x_1012 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1012;
  let x_1013 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1013, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1017 : vec4<f32> = u_xlat3;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1017.z, x_1017.x, x_1017.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1022 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1024.z, x_1024.x, x_1024.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1028 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1028);
  let x_1030 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1030 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1034 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1034);
  let x_1036 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1036 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1045 : vec4<f32> = u_xlat3;
  let x_1048 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1045.z, x_1045.x, x_1045.y, x_1045.z));
  u_xlatb3 = vec3<bool>(x_1048.x, x_1048.y, x_1048.z);
  let x_1052 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1052;
  let x_1054 : bool = u_xlatb3.x;
  if (x_1054) {
    let x_1059 : f32 = u_xlat0.x;
    x_1055 = x_1059;
  } else {
    let x_1062 : f32 = u_xlat1.x;
    x_1055 = x_1062;
  }
  let x_1063 : f32 = x_1055;
  hlslcc_movcTemp.x = x_1063;
  let x_1066 : bool = u_xlatb3.y;
  if (x_1066) {
    let x_1071 : f32 = u_xlat0.y;
    x_1067 = x_1071;
  } else {
    let x_1074 : f32 = u_xlat1.y;
    x_1067 = x_1074;
  }
  let x_1075 : f32 = x_1067;
  hlslcc_movcTemp.y = x_1075;
  let x_1078 : bool = u_xlatb3.z;
  if (x_1078) {
    let x_1083 : f32 = u_xlat0.z;
    x_1079 = x_1083;
  } else {
    let x_1086 : f32 = u_xlat1.z;
    x_1079 = x_1086;
  }
  let x_1087 : f32 = x_1079;
  hlslcc_movcTemp.z = x_1087;
  let x_1089 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1089;
  let x_1090 : vec4<f32> = u_xlat0;
  let x_1094 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1090.x, x_1090.y, x_1090.z) * vec3<f32>(x_1094.z, x_1094.z, x_1094.z));
  let x_1098 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1098);
  let x_1102 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1104 : vec2<f32> = (vec2<f32>(x_1102.x, x_1102.y) * vec2<f32>(0.5f, 0.5f));
  let x_1105 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1104.x, x_1104.y, x_1105.z);
  let x_1107 : vec3<f32> = u_xlat10;
  let x_1110 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1113 : vec3<f32> = u_xlat1;
  let x_1115 : vec2<f32> = ((vec2<f32>(x_1107.y, x_1107.z) * vec2<f32>(x_1110.x, x_1110.y)) + vec2<f32>(x_1113.x, x_1113.y));
  let x_1116 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1116.x, x_1115.x, x_1115.y);
  let x_1119 : f32 = u_xlat10.x;
  let x_1121 : f32 = x_26.x_Lut2D_Params.y;
  let x_1124 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1119 * x_1121) + x_1124);
  let x_1132 : vec3<f32> = u_xlat1;
  let x_1134 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1132.x, x_1132.z));
  let x_1135 : vec3<f32> = vec3<f32>(x_1134.x, x_1134.y, x_1134.z);
  let x_1136 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1136.w);
  let x_1139 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1139;
  let x_1141 : vec2<f32> = u_xlat22;
  let x_1142 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1141 + vec2<f32>(x_1142.x, x_1142.z));
  let x_1148 : vec2<f32> = u_xlat20;
  let x_1149 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1148);
  u_xlat1 = vec3<f32>(x_1149.x, x_1149.y, x_1149.z);
  let x_1152 : f32 = u_xlat0.x;
  let x_1154 : f32 = x_26.x_Lut2D_Params.z;
  let x_1157 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1152 * x_1154) + -(x_1157));
  let x_1161 : vec4<f32> = u_xlat3;
  let x_1164 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1161.x, x_1161.y, x_1161.z)) + x_1164);
  let x_1166 : vec4<f32> = u_xlat0;
  let x_1168 : vec3<f32> = u_xlat10;
  let x_1170 : vec4<f32> = u_xlat3;
  let x_1172 : vec3<f32> = ((vec3<f32>(x_1166.x, x_1166.x, x_1166.x) * x_1168) + vec3<f32>(x_1170.x, x_1170.y, x_1170.z));
  let x_1173 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1172.x, x_1172.y, x_1172.z, x_1173.w);
  let x_1175 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1175.x, x_1175.y, x_1175.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1179 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1183 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1183 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1186 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1186), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1189 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1189);
  let x_1191 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1191 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1194 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1194);
  let x_1198 : vec4<f32> = u_xlat0;
  let x_1200 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1198.x));
  u_xlatb0 = vec3<bool>(x_1200.x, x_1200.y, x_1200.z);
  let x_1203 : bool = u_xlatb0.x;
  if (x_1203) {
    let x_1208 : f32 = u_xlat1.x;
    x_1204 = x_1208;
  } else {
    let x_1211 : f32 = u_xlat2.x;
    x_1204 = x_1211;
  }
  let x_1212 : f32 = x_1204;
  u_xlat0.x = x_1212;
  let x_1215 : bool = u_xlatb0.y;
  if (x_1215) {
    let x_1220 : f32 = u_xlat1.y;
    x_1216 = x_1220;
  } else {
    let x_1223 : f32 = u_xlat2.y;
    x_1216 = x_1223;
  }
  let x_1224 : f32 = x_1216;
  u_xlat0.y = x_1224;
  let x_1227 : bool = u_xlatb0.z;
  if (x_1227) {
    let x_1232 : f32 = u_xlat1.z;
    x_1228 = x_1232;
  } else {
    let x_1235 : f32 = u_xlat2.z;
    x_1228 = x_1235;
  }
  let x_1236 : f32 = x_1228;
  u_xlat0.z = x_1236;
  let x_1238 : vec2<f32> = vs_TEXCOORD0;
  let x_1241 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1245 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1247 : vec2<f32> = ((x_1238 * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1245.z, x_1245.w));
  let x_1248 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1247.x, x_1247.y, x_1248.z);
  let x_1255 : vec3<f32> = u_xlat1;
  let x_1257 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1255.x, x_1255.y));
  u_xlat30 = x_1257.w;
  let x_1259 : f32 = u_xlat30;
  u_xlat30 = ((x_1259 * 2.0f) + -1.0f);
  let x_1262 : f32 = u_xlat30;
  u_xlat1.x = ((x_1262 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1268 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1268, 0.0f, 1.0f);
  let x_1272 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1272 * 2.0f) + -1.0f);
  let x_1276 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1276)) + 1.0f);
  let x_1280 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1280);
  let x_1282 : f32 = u_xlat30;
  u_xlat30 = (-(x_1282) + 1.0f);
  let x_1285 : f32 = u_xlat30;
  let x_1287 : f32 = u_xlat1.x;
  u_xlat30 = (x_1285 * x_1287);
  let x_1289 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1289.x, x_1289.y, x_1289.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1292 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1292.x, x_1292.y, x_1292.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1296 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1296);
  let x_1298 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1298 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1300 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1300);
  let x_1302 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1302 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1305 : vec4<f32> = u_xlat0;
  let x_1307 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1305.x));
  u_xlatb0 = vec3<bool>(x_1307.x, x_1307.y, x_1307.z);
  let x_1310 : bool = u_xlatb0.x;
  if (x_1310) {
    let x_1315 : f32 = u_xlat1.x;
    x_1311 = x_1315;
  } else {
    let x_1318 : f32 = u_xlat2.x;
    x_1311 = x_1318;
  }
  let x_1319 : f32 = x_1311;
  u_xlat0.x = x_1319;
  let x_1322 : bool = u_xlatb0.y;
  if (x_1322) {
    let x_1327 : f32 = u_xlat1.y;
    x_1323 = x_1327;
  } else {
    let x_1330 : f32 = u_xlat2.y;
    x_1323 = x_1330;
  }
  let x_1331 : f32 = x_1323;
  u_xlat0.y = x_1331;
  let x_1334 : bool = u_xlatb0.z;
  if (x_1334) {
    let x_1339 : f32 = u_xlat1.z;
    x_1335 = x_1339;
  } else {
    let x_1342 : f32 = u_xlat2.z;
    x_1335 = x_1342;
  }
  let x_1343 : f32 = x_1335;
  u_xlat0.z = x_1343;
  let x_1345 : f32 = u_xlat30;
  let x_1350 : vec4<f32> = u_xlat0;
  let x_1352 : vec3<f32> = ((vec3<f32>(x_1345, x_1345, x_1345) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1350.x, x_1350.y, x_1350.z));
  let x_1353 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1352.x, x_1352.y, x_1352.z, x_1353.w);
  let x_1355 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1355.x, x_1355.y, x_1355.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1358 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1358.x, x_1358.y, x_1358.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1361 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1361 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1363 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1363), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1366 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1366);
  let x_1368 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1368 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1370 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1370);
  let x_1372 : vec4<f32> = u_xlat0;
  let x_1374 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1372.x, x_1372.y, x_1372.z, x_1372.x));
  u_xlatb0 = vec3<bool>(x_1374.x, x_1374.y, x_1374.z);
  let x_1379 : bool = u_xlatb0.x;
  if (x_1379) {
    let x_1384 : f32 = u_xlat1.x;
    x_1380 = x_1384;
  } else {
    let x_1387 : f32 = u_xlat2.x;
    x_1380 = x_1387;
  }
  let x_1388 : f32 = x_1380;
  SV_Target0.x = x_1388;
  let x_1392 : bool = u_xlatb0.y;
  if (x_1392) {
    let x_1397 : f32 = u_xlat1.y;
    x_1393 = x_1397;
  } else {
    let x_1400 : f32 = u_xlat2.y;
    x_1393 = x_1400;
  }
  let x_1401 : f32 = x_1393;
  SV_Target0.y = x_1401;
  let x_1404 : bool = u_xlatb0.z;
  if (x_1404) {
    let x_1409 : f32 = u_xlat1.z;
    x_1405 = x_1409;
  } else {
    let x_1412 : f32 = u_xlat2.z;
    x_1405 = x_1412;
  }
  let x_1413 : f32 = x_1405;
  SV_Target0.z = x_1413;
  let x_1416 : f32 = u_xlat3.w;
  SV_Target0.w = x_1416;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

