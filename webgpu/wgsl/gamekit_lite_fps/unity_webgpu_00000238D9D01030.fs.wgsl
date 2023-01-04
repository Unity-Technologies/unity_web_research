struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec3<f32>;

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

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec2<f32>;

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

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(9) var sampler_Lut2D : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_235 : f32;
  var u_xlati_loop_1 : i32;
  var x_537 : f32;
  var x_771 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_857 : f32;
  var x_869 : f32;
  var x_881 : f32;
  var x_1001 : f32;
  var x_1013 : f32;
  var x_1025 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec3<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
    let x_94 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_94);
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
    let x_122 : vec3<f32> = u_xlat0;
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
    let x_251 : vec3<f32> = u_xlat0;
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
  u_xlat6 = x_365;
  u_xlati_loop_1 = 0i;
  loop {
    let x_374 : i32 = u_xlati_loop_1;
    let x_375 : i32 = u_xlati30;
    if ((x_374 < x_375)) {
    } else {
      break;
    }
    let x_378 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_378);
    let x_380 : f32 = u_xlat36;
    u_xlat36 = (x_380 + 0.5f);
    let x_382 : f32 = u_xlat36;
    let x_384 : f32 = u_xlat1.x;
    u_xlat2.x = (x_382 / x_384);
    let x_388 : vec2<f32> = u_xlat6;
    let x_389 : vec2<f32> = (x_388 + vec2<f32>(-0.5f, -0.5f));
    let x_390 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
    let x_393 : vec4<f32> = u_xlat7;
    let x_396 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_396.z, x_396.z)) + vec2<f32>(0.5f, 0.5f));
    let x_400 : vec4<f32> = u_xlat7;
    let x_403 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_407 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_410 : vec2<f32> = ((vec2<f32>(x_400.x, x_400.y) * vec2<f32>(x_403.z, x_403.z)) + -(vec2<f32>(x_407.x, x_407.y)));
    let x_411 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_410.x, x_410.y, x_411.z, x_411.w);
    let x_413 : vec4<f32> = u_xlat7;
    let x_416 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_418 : vec2<f32> = (vec2<f32>(x_413.x, x_413.y) * vec2<f32>(x_416.z, x_416.w));
    let x_419 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_418.x, x_418.y, x_419.z, x_419.w);
    let x_421 : vec4<f32> = u_xlat7;
    let x_423 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_421.x, x_421.y), vec2<f32>(x_423.x, x_423.y));
    let x_426 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_426);
    let x_428 : bool = u_xlatb11;
    if (x_428) {
      let x_432 : f32 = u_xlat36;
      let x_435 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_432, x_432) * vec2<f32>(x_435.x, x_435.y));
      let x_440 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_440);
      let x_443 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_443);
      let x_447 : f32 = u_xlat8.x;
      let x_448 : f32 = u_xlat9;
      u_xlat8.x = (x_447 / x_448);
      let x_453 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_453);
      let x_456 : f32 = u_xlat8.x;
      let x_457 : f32 = u_xlat18;
      u_xlat8.x = ((x_456 * x_457) + -1.0f);
      let x_461 : vec4<f32> = u_xlat7;
      let x_463 : vec2<f32> = u_xlat8;
      let x_466 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_461.x, x_461.y) * vec2<f32>(x_463.x, x_463.x)) + x_466);
    } else {
      let x_470 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_470);
      let x_472 : f32 = u_xlat28;
      let x_474 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_472 * x_474);
      let x_476 : f32 = u_xlat36;
      let x_478 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_476 * x_478);
      let x_481 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_481), 1.0f);
      let x_484 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_484), 1.0f);
      let x_487 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_487);
      let x_489 : f32 = u_xlat38;
      let x_490 : f32 = u_xlat9;
      u_xlat38 = (x_489 * x_490);
      let x_492 : f32 = u_xlat38;
      let x_493 : f32 = u_xlat38;
      u_xlat9 = (x_492 * x_493);
      let x_496 : f32 = u_xlat9;
      u_xlat19 = ((x_496 * 0.0208351f) + -0.085133001f);
      let x_499 : f32 = u_xlat9;
      let x_500 : f32 = u_xlat19;
      u_xlat19 = ((x_499 * x_500) + 0.180141002f);
      let x_503 : f32 = u_xlat9;
      let x_504 : f32 = u_xlat19;
      u_xlat19 = ((x_503 * x_504) + -0.330299497f);
      let x_507 : f32 = u_xlat9;
      let x_508 : f32 = u_xlat19;
      u_xlat9 = ((x_507 * x_508) + 0.999866009f);
      let x_511 : f32 = u_xlat38;
      let x_512 : f32 = u_xlat9;
      u_xlat19 = (x_511 * x_512);
      let x_515 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_515));
      let x_518 : f32 = u_xlat19;
      u_xlat19 = ((x_518 * -2.0f) + 1.570796371f);
      let x_521 : bool = u_xlatb29;
      let x_522 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_522, x_521);
      let x_524 : f32 = u_xlat38;
      let x_525 : f32 = u_xlat9;
      let x_527 : f32 = u_xlat19;
      u_xlat38 = ((x_524 * x_525) + x_527);
      let x_529 : f32 = u_xlat36;
      u_xlat36 = min(x_529, 1.0f);
      let x_532 : f32 = u_xlat36;
      let x_533 : f32 = u_xlat36;
      u_xlatb36 = (x_532 < -(x_533));
      let x_536 : bool = u_xlatb36;
      if (x_536) {
        let x_540 : f32 = u_xlat38;
        x_537 = -(x_540);
      } else {
        let x_543 : f32 = u_xlat38;
        x_537 = x_543;
      }
      let x_544 : f32 = x_537;
      u_xlat36 = x_544;
      let x_545 : f32 = u_xlat28;
      let x_546 : f32 = u_xlat36;
      u_xlat36 = ((x_545 * x_546) + -1.0f);
      let x_549 : vec4<f32> = u_xlat7;
      let x_551 : f32 = u_xlat36;
      let x_554 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_549.x, x_549.y) * vec2<f32>(x_551, x_551)) + x_554);
    }
    let x_556 : vec2<f32> = u_xlat8;
    u_xlat8 = x_556;
    let x_557 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_557, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_561 : vec2<f32> = u_xlat8;
    let x_564 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_566 : vec2<f32> = (x_561 * vec2<f32>(x_564, x_564));
    let x_567 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
    let x_574 : vec4<f32> = u_xlat7;
    let x_576 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_574.x, x_574.y), 0.0f);
    u_xlat7 = x_576;
    let x_582 : vec3<f32> = u_xlat2;
    let x_584 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_582.x, x_582.y), 0.0f);
    let x_585 : vec3<f32> = vec3<f32>(x_584.x, x_584.y, x_584.z);
    let x_586 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
    let x_588 : vec4<f32> = u_xlat7;
    let x_589 : vec4<f32> = u_xlat3;
    let x_591 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_588 * x_589) + x_591);
    let x_593 : vec4<f32> = u_xlat3;
    let x_594 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_593 + x_594);
    let x_596 : vec3<f32> = u_xlat10;
    let x_598 : vec2<f32> = u_xlat6;
    u_xlat6 = (vec2<f32>(x_596.x, x_596.y) + x_598);

    continuing {
      let x_600 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_600 + 1i);
    }
  }
  let x_602 : vec4<f32> = u_xlat4;
  let x_603 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_602 / x_603);
  let x_605 : vec3<f32> = u_xlat0;
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_605.x, x_605.x, x_605.x) * vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_613 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_613 < 0.5f);
  let x_615 : bool = u_xlatb30;
  if (x_615) {
    let x_618 : vec2<f32> = u_xlat21;
    let x_622 : vec2<f32> = x_26.x_Vignette_Center;
    let x_624 : vec2<f32> = (x_618 + -(x_622));
    let x_625 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_624.x, x_624.y, x_625.z);
    let x_627 : vec3<f32> = u_xlat1;
    let x_632 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_634 : vec2<f32> = (abs(vec2<f32>(x_627.y, x_627.x)) * vec2<f32>(x_632.x, x_632.x));
    let x_635 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_635.x, x_634.x, x_634.y, x_635.w);
    let x_638 : f32 = x_26.x_ScreenParams.x;
    let x_640 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_638 / x_640);
    let x_642 : f32 = u_xlat30;
    u_xlat30 = (x_642 + -1.0f);
    let x_645 : f32 = x_26.x_Vignette_Settings.w;
    let x_646 : f32 = u_xlat30;
    u_xlat30 = ((x_645 * x_646) + 1.0f);
    let x_649 : f32 = u_xlat30;
    let x_651 : f32 = u_xlat3.z;
    u_xlat3.x = (x_649 * x_651);
    let x_654 : vec4<f32> = u_xlat3;
    let x_655 : vec2<f32> = vec2<f32>(x_654.x, x_654.y);
    let x_656 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
    let x_658 : vec4<f32> = u_xlat3;
    let x_662 : vec2<f32> = clamp(vec2<f32>(x_658.x, x_658.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_663 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_662.x, x_662.y, x_663.z, x_663.w);
    let x_665 : vec4<f32> = u_xlat3;
    let x_667 : vec2<f32> = log2(vec2<f32>(x_665.x, x_665.y));
    let x_668 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_667.x, x_667.y, x_668.z);
    let x_670 : vec3<f32> = u_xlat1;
    let x_673 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_675 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) * vec2<f32>(x_673.z, x_673.z));
    let x_676 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_675.x, x_675.y, x_676.z);
    let x_678 : vec3<f32> = u_xlat1;
    let x_680 : vec2<f32> = exp2(vec2<f32>(x_678.x, x_678.y));
    let x_681 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_680.x, x_680.y, x_681.z);
    let x_683 : vec3<f32> = u_xlat1;
    let x_685 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_683.x, x_683.y), vec2<f32>(x_685.x, x_685.y));
    let x_688 : f32 = u_xlat30;
    u_xlat30 = (-(x_688) + 1.0f);
    let x_691 : f32 = u_xlat30;
    u_xlat30 = max(x_691, 0.0f);
    let x_693 : f32 = u_xlat30;
    u_xlat30 = log2(x_693);
    let x_695 : f32 = u_xlat30;
    let x_697 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_695 * x_697);
    let x_699 : f32 = u_xlat30;
    u_xlat30 = exp2(x_699);
    let x_704 : vec3<f32> = x_26.x_Vignette_Color;
    let x_707 : vec3<f32> = (-(x_704) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_708 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
    let x_710 : f32 = u_xlat30;
    let x_712 : vec4<f32> = u_xlat3;
    let x_716 : vec3<f32> = x_26.x_Vignette_Color;
    let x_717 : vec3<f32> = ((vec3<f32>(x_710, x_710, x_710) * vec3<f32>(x_712.x, x_712.y, x_712.z)) + x_716);
    let x_718 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
    let x_720 : vec3<f32> = u_xlat0;
    let x_721 : vec4<f32> = u_xlat3;
    let x_723 : vec3<f32> = (x_720 * vec3<f32>(x_721.x, x_721.y, x_721.z));
    let x_724 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_723.x, x_723.y, x_723.z, x_724.w);
    let x_727 : f32 = u_xlat3.w;
    u_xlat1.x = (x_727 + -1.0f);
    let x_730 : f32 = u_xlat30;
    let x_732 : f32 = u_xlat1.x;
    u_xlat4.w = ((x_730 * x_732) + 1.0f);
  } else {
    let x_742 : vec2<f32> = u_xlat21;
    let x_743 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_742);
    u_xlat30 = x_743.w;
    let x_745 : f32 = u_xlat30;
    u_xlat1.x = (x_745 * 0.077399381f);
    let x_750 : f32 = u_xlat30;
    u_xlat11 = (x_750 + 0.055f);
    let x_753 : f32 = u_xlat11;
    u_xlat11 = (x_753 * 0.947867334f);
    let x_756 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_756), 1.1920929e-07f);
    let x_760 : f32 = u_xlat11;
    u_xlat11 = log2(x_760);
    let x_762 : f32 = u_xlat11;
    u_xlat11 = (x_762 * 2.400000095f);
    let x_765 : f32 = u_xlat11;
    u_xlat11 = exp2(x_765);
    let x_768 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_768);
    let x_770 : bool = u_xlatb30;
    if (x_770) {
      let x_775 : f32 = u_xlat1.x;
      x_771 = x_775;
    } else {
      let x_777 : f32 = u_xlat11;
      x_771 = x_777;
    }
    let x_778 : f32 = x_771;
    u_xlat30 = x_778;
    let x_780 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_780) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_783 : f32 = u_xlat30;
    let x_785 : vec3<f32> = u_xlat1;
    let x_788 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_783, x_783, x_783) * x_785) + x_788);
    let x_790 : vec3<f32> = u_xlat0;
    let x_791 : vec3<f32> = u_xlat1;
    let x_793 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_790 * x_791) + -(x_793));
    let x_798 : f32 = x_26.x_Vignette_Opacity;
    let x_800 : vec3<f32> = u_xlat1;
    let x_802 : vec3<f32> = u_xlat0;
    let x_803 : vec3<f32> = ((vec3<f32>(x_798, x_798, x_798) * x_800) + x_802);
    let x_804 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
    let x_807 : f32 = u_xlat3.w;
    u_xlat0.x = (x_807 + -1.0f);
    let x_810 : f32 = u_xlat30;
    let x_812 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_810 * x_812) + 1.0f);
  }
  let x_816 : vec4<f32> = u_xlat4;
  u_xlat4 = x_816;
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_817, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_821 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_821.z, x_821.x, x_821.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_826 : vec4<f32> = u_xlat4;
  u_xlat1 = max(vec3<f32>(x_826.z, x_826.x, x_826.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_830 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_830);
  let x_832 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_832 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_836 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_836);
  let x_838 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_838 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_847 : vec4<f32> = u_xlat4;
  let x_850 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_847.z, x_847.x, x_847.y, x_847.z));
  u_xlatb3 = vec3<bool>(x_850.x, x_850.y, x_850.z);
  let x_854 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_854;
  let x_856 : bool = u_xlatb3.x;
  if (x_856) {
    let x_861 : f32 = u_xlat0.x;
    x_857 = x_861;
  } else {
    let x_864 : f32 = u_xlat1.x;
    x_857 = x_864;
  }
  let x_865 : f32 = x_857;
  hlslcc_movcTemp.x = x_865;
  let x_868 : bool = u_xlatb3.y;
  if (x_868) {
    let x_873 : f32 = u_xlat0.y;
    x_869 = x_873;
  } else {
    let x_876 : f32 = u_xlat1.y;
    x_869 = x_876;
  }
  let x_877 : f32 = x_869;
  hlslcc_movcTemp.y = x_877;
  let x_880 : bool = u_xlatb3.z;
  if (x_880) {
    let x_885 : f32 = u_xlat0.z;
    x_881 = x_885;
  } else {
    let x_888 : f32 = u_xlat1.z;
    x_881 = x_888;
  }
  let x_889 : f32 = x_881;
  hlslcc_movcTemp.z = x_889;
  let x_891 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_891;
  let x_892 : vec3<f32> = u_xlat0;
  let x_895 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (x_892 * vec3<f32>(x_895.z, x_895.z, x_895.z));
  let x_899 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_899);
  let x_903 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_905 : vec2<f32> = (vec2<f32>(x_903.x, x_903.y) * vec2<f32>(0.5f, 0.5f));
  let x_906 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_905.x, x_905.y, x_906.z);
  let x_908 : vec3<f32> = u_xlat10;
  let x_911 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_914 : vec3<f32> = u_xlat1;
  let x_916 : vec2<f32> = ((vec2<f32>(x_908.y, x_908.z) * vec2<f32>(x_911.x, x_911.y)) + vec2<f32>(x_914.x, x_914.y));
  let x_917 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_917.x, x_916.x, x_916.y);
  let x_920 : f32 = u_xlat10.x;
  let x_922 : f32 = x_26.x_Lut2D_Params.y;
  let x_925 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_920 * x_922) + x_925);
  let x_933 : vec3<f32> = u_xlat1;
  let x_935 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_933.x, x_933.z));
  let x_936 : vec3<f32> = vec3<f32>(x_935.x, x_935.y, x_935.z);
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_940 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_940;
  let x_942 : vec2<f32> = u_xlat22;
  let x_943 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_942 + vec2<f32>(x_943.x, x_943.z));
  let x_949 : vec2<f32> = u_xlat20;
  let x_950 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_949);
  u_xlat1 = vec3<f32>(x_950.x, x_950.y, x_950.z);
  let x_953 : f32 = u_xlat0.x;
  let x_955 : f32 = x_26.x_Lut2D_Params.z;
  let x_958 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_953 * x_955) + -(x_958));
  let x_962 : vec4<f32> = u_xlat3;
  let x_965 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_962.x, x_962.y, x_962.z)) + x_965);
  let x_967 : vec3<f32> = u_xlat0;
  let x_969 : vec3<f32> = u_xlat10;
  let x_971 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_967.x, x_967.x, x_967.x) * x_969) + vec3<f32>(x_971.x, x_971.y, x_971.z));
  let x_974 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_974 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_977 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_977 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_980 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_980 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_983 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_983), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_986 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_986);
  let x_988 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_988 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_991 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_991);
  let x_995 : vec3<f32> = u_xlat0;
  let x_997 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_995.x, x_995.y, x_995.z, x_995.x));
  u_xlatb0 = vec3<bool>(x_997.x, x_997.y, x_997.z);
  let x_1000 : bool = u_xlatb0.x;
  if (x_1000) {
    let x_1005 : f32 = u_xlat1.x;
    x_1001 = x_1005;
  } else {
    let x_1008 : f32 = u_xlat2.x;
    x_1001 = x_1008;
  }
  let x_1009 : f32 = x_1001;
  u_xlat4.x = x_1009;
  let x_1012 : bool = u_xlatb0.y;
  if (x_1012) {
    let x_1017 : f32 = u_xlat1.y;
    x_1013 = x_1017;
  } else {
    let x_1020 : f32 = u_xlat2.y;
    x_1013 = x_1020;
  }
  let x_1021 : f32 = x_1013;
  u_xlat4.y = x_1021;
  let x_1024 : bool = u_xlatb0.z;
  if (x_1024) {
    let x_1029 : f32 = u_xlat1.z;
    x_1025 = x_1029;
  } else {
    let x_1032 : f32 = u_xlat2.z;
    x_1025 = x_1032;
  }
  let x_1033 : f32 = x_1025;
  u_xlat4.z = x_1033;
  let x_1037 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1037);
  let x_1041 : bool = u_xlatb0.x;
  if (x_1041) {
    let x_1044 : vec4<f32> = u_xlat4;
    u_xlat0 = vec3<f32>(x_1044.x, x_1044.y, x_1044.z);
    let x_1046 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_1046, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1050 : vec3<f32> = u_xlat0;
    u_xlat4.w = dot(x_1050, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1059 : vec4<f32> = u_xlat4;
  SV_Target0 = x_1059;
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

