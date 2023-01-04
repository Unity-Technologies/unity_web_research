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
  var x_962 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1129 : f32;
  var x_1141 : f32;
  var x_1153 : f32;
  var x_1278 : f32;
  var x_1290 : f32;
  var x_1302 : f32;
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
  let x_773 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_773 < 0.5f);
  let x_775 : bool = u_xlatb1;
  if (x_775) {
    let x_778 : vec2<f32> = u_xlat21;
    let x_782 : vec2<f32> = x_26.x_Vignette_Center;
    let x_784 : vec2<f32> = (x_778 + -(x_782));
    let x_785 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_784.x, x_784.y, x_785.z);
    let x_787 : vec3<f32> = u_xlat1;
    let x_792 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_794 : vec2<f32> = (abs(vec2<f32>(x_787.y, x_787.x)) * vec2<f32>(x_792.x, x_792.x));
    let x_795 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_795.x, x_794.x, x_794.y, x_795.w);
    let x_798 : f32 = x_26.x_ScreenParams.x;
    let x_800 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_798 / x_800);
    let x_804 : f32 = u_xlat1.x;
    u_xlat1.x = (x_804 + -1.0f);
    let x_808 : f32 = x_26.x_Vignette_Settings.w;
    let x_810 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_808 * x_810) + 1.0f);
    let x_815 : f32 = u_xlat1.x;
    let x_817 : f32 = u_xlat3.z;
    u_xlat3.x = (x_815 * x_817);
    let x_820 : vec4<f32> = u_xlat3;
    let x_821 : vec2<f32> = vec2<f32>(x_820.x, x_820.y);
    let x_822 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_821.x, x_821.y, x_822.z, x_822.w);
    let x_824 : vec4<f32> = u_xlat3;
    let x_828 : vec2<f32> = clamp(vec2<f32>(x_824.x, x_824.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_829 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_828.x, x_828.y, x_829.z, x_829.w);
    let x_831 : vec4<f32> = u_xlat3;
    let x_833 : vec2<f32> = log2(vec2<f32>(x_831.x, x_831.y));
    let x_834 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_833.x, x_833.y, x_834.z);
    let x_836 : vec3<f32> = u_xlat1;
    let x_839 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_841 : vec2<f32> = (vec2<f32>(x_836.x, x_836.y) * vec2<f32>(x_839.z, x_839.z));
    let x_842 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_841.x, x_841.y, x_842.z);
    let x_844 : vec3<f32> = u_xlat1;
    let x_846 : vec2<f32> = exp2(vec2<f32>(x_844.x, x_844.y));
    let x_847 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_846.x, x_846.y, x_847.z);
    let x_849 : vec3<f32> = u_xlat1;
    let x_851 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_849.x, x_849.y), vec2<f32>(x_851.x, x_851.y));
    let x_856 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_856) + 1.0f);
    let x_861 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_861, 0.0f);
    let x_865 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_865);
    let x_869 : f32 = u_xlat1.x;
    let x_871 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_869 * x_871);
    let x_875 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_875);
    let x_880 : vec3<f32> = x_26.x_Vignette_Color;
    let x_883 : vec3<f32> = (-(x_880) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_884 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_883.x, x_883.y, x_883.z, x_884.w);
    let x_886 : vec3<f32> = u_xlat1;
    let x_888 : vec4<f32> = u_xlat3;
    let x_892 : vec3<f32> = x_26.x_Vignette_Color;
    let x_893 : vec3<f32> = ((vec3<f32>(x_886.x, x_886.x, x_886.x) * vec3<f32>(x_888.x, x_888.y, x_888.z)) + x_892);
    let x_894 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_893.x, x_893.y, x_893.z, x_894.w);
    let x_896 : vec4<f32> = u_xlat0;
    let x_898 : vec4<f32> = u_xlat3;
    let x_900 : vec3<f32> = (vec3<f32>(x_896.x, x_896.y, x_896.z) * vec3<f32>(x_898.x, x_898.y, x_898.z));
    let x_901 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
    let x_905 : f32 = u_xlat0.w;
    u_xlat11.x = (x_905 + -1.0f);
    let x_909 : f32 = u_xlat1.x;
    let x_911 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_909 * x_911) + 1.0f);
  } else {
    let x_921 : vec2<f32> = u_xlat21;
    let x_922 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_921);
    u_xlat1.x = x_922.w;
    let x_926 : f32 = u_xlat1.x;
    u_xlat1.z = (x_926 + 0.055f);
    let x_930 : vec3<f32> = u_xlat1;
    let x_935 : vec2<f32> = (vec2<f32>(x_930.x, x_930.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_936 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_935.x, x_935.y, x_936.z);
    let x_939 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_939), 1.1920929e-07f);
    let x_945 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_945);
    let x_949 : f32 = u_xlat21.x;
    u_xlat21.x = (x_949 * 2.400000095f);
    let x_954 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_954);
    let x_959 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_959);
    let x_961 : bool = u_xlatb1;
    if (x_961) {
      let x_966 : f32 = u_xlat11.x;
      x_962 = x_966;
    } else {
      let x_969 : f32 = u_xlat21.x;
      x_962 = x_969;
    }
    let x_970 : f32 = x_962;
    u_xlat1.x = x_970;
    let x_973 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_973) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_976 : vec3<f32> = u_xlat1;
    let x_978 : vec3<f32> = u_xlat11;
    let x_981 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_976.x, x_976.x, x_976.x) * x_978) + x_981);
    let x_983 : vec4<f32> = u_xlat0;
    let x_985 : vec3<f32> = u_xlat11;
    let x_987 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_983.x, x_983.y, x_983.z) * x_985) + -(vec3<f32>(x_987.x, x_987.y, x_987.z)));
    let x_993 : f32 = x_26.x_Vignette_Opacity;
    let x_995 : vec3<f32> = u_xlat11;
    let x_997 : vec4<f32> = u_xlat0;
    let x_999 : vec3<f32> = ((vec3<f32>(x_993, x_993, x_993) * x_995) + vec3<f32>(x_997.x, x_997.y, x_997.z));
    let x_1000 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
    let x_1003 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1003 + -1.0f);
    let x_1007 : f32 = u_xlat1.x;
    let x_1009 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_1007 * x_1009) + 1.0f);
  }
  let x_1014 : vec2<f32> = vs_TEXCOORD1;
  let x_1017 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1021 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1023 : vec2<f32> = ((x_1014 * vec2<f32>(x_1017.x, x_1017.y)) + vec2<f32>(x_1021.z, x_1021.w));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1033 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1031.x, x_1031.y));
  let x_1034 : vec3<f32> = vec3<f32>(x_1033.x, x_1033.y, x_1033.z);
  let x_1035 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat3;
  u_xlat1 = vec3<f32>(x_1037.x, x_1037.y, x_1037.z);
  let x_1039 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1039, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1043 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1043, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1049 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1049);
  let x_1052 : f32 = x_26.x_Grain_Params1.x;
  let x_1053 : f32 = u_xlat30;
  u_xlat30 = ((x_1052 * -(x_1053)) + 1.0f);
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1059 : vec4<f32> = u_xlat3;
  let x_1061 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * vec3<f32>(x_1059.x, x_1059.y, x_1059.z));
  let x_1062 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1061.x, x_1061.y, x_1061.z, x_1062.w);
  let x_1064 : vec4<f32> = u_xlat0;
  let x_1067 : f32 = x_26.x_Grain_Params1.y;
  let x_1069 : f32 = x_26.x_Grain_Params1.y;
  let x_1071 : f32 = x_26.x_Grain_Params1.y;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1064.x, x_1064.y, x_1064.z) * vec3<f32>(x_1067, x_1069, x_1071));
  let x_1074 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat0;
  let x_1078 : f32 = u_xlat30;
  let x_1081 : vec4<f32> = u_xlat3;
  let x_1083 : vec3<f32> = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(x_1078, x_1078, x_1078)) + vec3<f32>(x_1081.x, x_1081.y, x_1081.z));
  let x_1084 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1084.w);
  let x_1086 : vec4<f32> = u_xlat4;
  u_xlat4 = x_1086;
  let x_1087 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_1087, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1091 : vec4<f32> = u_xlat4;
  let x_1095 : vec3<f32> = (vec3<f32>(x_1091.z, x_1091.x, x_1091.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat4;
  u_xlat1 = max(vec3<f32>(x_1098.z, x_1098.x, x_1098.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1102 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1102);
  let x_1104 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1104 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1108 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1108);
  let x_1110 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1110 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1119 : vec4<f32> = u_xlat4;
  let x_1122 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1119.z, x_1119.x, x_1119.y, x_1119.z));
  u_xlatb3 = vec3<bool>(x_1122.x, x_1122.y, x_1122.z);
  let x_1126 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1126;
  let x_1128 : bool = u_xlatb3.x;
  if (x_1128) {
    let x_1133 : f32 = u_xlat0.x;
    x_1129 = x_1133;
  } else {
    let x_1136 : f32 = u_xlat1.x;
    x_1129 = x_1136;
  }
  let x_1137 : f32 = x_1129;
  hlslcc_movcTemp.x = x_1137;
  let x_1140 : bool = u_xlatb3.y;
  if (x_1140) {
    let x_1145 : f32 = u_xlat0.y;
    x_1141 = x_1145;
  } else {
    let x_1148 : f32 = u_xlat1.y;
    x_1141 = x_1148;
  }
  let x_1149 : f32 = x_1141;
  hlslcc_movcTemp.y = x_1149;
  let x_1152 : bool = u_xlatb3.z;
  if (x_1152) {
    let x_1157 : f32 = u_xlat0.z;
    x_1153 = x_1157;
  } else {
    let x_1160 : f32 = u_xlat1.z;
    x_1153 = x_1160;
  }
  let x_1161 : f32 = x_1153;
  hlslcc_movcTemp.z = x_1161;
  let x_1163 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1163;
  let x_1164 : vec4<f32> = u_xlat0;
  let x_1168 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1164.x, x_1164.y, x_1164.z) * vec3<f32>(x_1168.z, x_1168.z, x_1168.z));
  let x_1172 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1172);
  let x_1176 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1178 : vec2<f32> = (vec2<f32>(x_1176.x, x_1176.y) * vec2<f32>(0.5f, 0.5f));
  let x_1179 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1178.x, x_1178.y, x_1179.z);
  let x_1181 : vec3<f32> = u_xlat10;
  let x_1184 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1187 : vec3<f32> = u_xlat1;
  let x_1189 : vec2<f32> = ((vec2<f32>(x_1181.y, x_1181.z) * vec2<f32>(x_1184.x, x_1184.y)) + vec2<f32>(x_1187.x, x_1187.y));
  let x_1190 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1190.x, x_1189.x, x_1189.y);
  let x_1193 : f32 = u_xlat10.x;
  let x_1195 : f32 = x_26.x_Lut2D_Params.y;
  let x_1198 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1193 * x_1195) + x_1198);
  let x_1206 : vec3<f32> = u_xlat1;
  let x_1208 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1206.x, x_1206.z));
  let x_1209 : vec3<f32> = vec3<f32>(x_1208.x, x_1208.y, x_1208.z);
  let x_1210 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1209.x, x_1209.y, x_1209.z, x_1210.w);
  let x_1213 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1213;
  let x_1215 : vec2<f32> = u_xlat22;
  let x_1216 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1215 + vec2<f32>(x_1216.x, x_1216.z));
  let x_1222 : vec2<f32> = u_xlat20;
  let x_1223 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1222);
  u_xlat1 = vec3<f32>(x_1223.x, x_1223.y, x_1223.z);
  let x_1226 : f32 = u_xlat0.x;
  let x_1228 : f32 = x_26.x_Lut2D_Params.z;
  let x_1231 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1226 * x_1228) + -(x_1231));
  let x_1235 : vec4<f32> = u_xlat3;
  let x_1238 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1235.x, x_1235.y, x_1235.z)) + x_1238);
  let x_1240 : vec4<f32> = u_xlat0;
  let x_1242 : vec3<f32> = u_xlat10;
  let x_1244 : vec4<f32> = u_xlat3;
  let x_1246 : vec3<f32> = ((vec3<f32>(x_1240.x, x_1240.x, x_1240.x) * x_1242) + vec3<f32>(x_1244.x, x_1244.y, x_1244.z));
  let x_1247 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1249 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1249.x, x_1249.y, x_1249.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1253 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1253.x, x_1253.y, x_1253.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1257 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1257 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1260 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1260), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1263 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1263);
  let x_1265 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1265 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1268 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1268);
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1274 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.x));
  u_xlatb0 = vec3<bool>(x_1274.x, x_1274.y, x_1274.z);
  let x_1277 : bool = u_xlatb0.x;
  if (x_1277) {
    let x_1282 : f32 = u_xlat1.x;
    x_1278 = x_1282;
  } else {
    let x_1285 : f32 = u_xlat2.x;
    x_1278 = x_1285;
  }
  let x_1286 : f32 = x_1278;
  u_xlat4.x = x_1286;
  let x_1289 : bool = u_xlatb0.y;
  if (x_1289) {
    let x_1294 : f32 = u_xlat1.y;
    x_1290 = x_1294;
  } else {
    let x_1297 : f32 = u_xlat2.y;
    x_1290 = x_1297;
  }
  let x_1298 : f32 = x_1290;
  u_xlat4.y = x_1298;
  let x_1301 : bool = u_xlatb0.z;
  if (x_1301) {
    let x_1306 : f32 = u_xlat1.z;
    x_1302 = x_1306;
  } else {
    let x_1309 : f32 = u_xlat2.z;
    x_1302 = x_1309;
  }
  let x_1310 : f32 = x_1302;
  u_xlat4.z = x_1310;
  let x_1314 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1314);
  let x_1318 : bool = u_xlatb0.x;
  if (x_1318) {
    let x_1321 : vec4<f32> = u_xlat4;
    let x_1322 : vec3<f32> = vec3<f32>(x_1321.x, x_1321.y, x_1321.z);
    let x_1323 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1322.x, x_1322.y, x_1322.z, x_1323.w);
    let x_1325 : vec4<f32> = u_xlat0;
    let x_1329 : vec3<f32> = clamp(vec3<f32>(x_1325.x, x_1325.y, x_1325.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1330 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1329.x, x_1329.y, x_1329.z, x_1330.w);
    let x_1332 : vec4<f32> = u_xlat0;
    u_xlat4.w = dot(vec3<f32>(x_1332.x, x_1332.y, x_1332.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1338 : vec4<f32> = u_xlat4;
  SV_Target0 = x_1338;
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

