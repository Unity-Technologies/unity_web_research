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
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
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

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

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

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(10) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_519 : f32;
  var x_766 : f32;
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
    let x_201 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_201));
    let x_204 : f32 = u_xlat32;
    u_xlat32 = ((x_204 * -2.0f) + 1.570796371f);
    let x_209 : bool = u_xlatb3;
    let x_210 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_210, x_209);
    let x_212 : f32 = u_xlat12;
    let x_214 : f32 = u_xlat22.x;
    let x_216 : f32 = u_xlat32;
    u_xlat12 = ((x_212 * x_214) + x_216);
    let x_219 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_219, 1.0f);
    let x_224 : f32 = u_xlat1.x;
    let x_226 : f32 = u_xlat1.x;
    u_xlatb1 = (x_224 < -(x_226));
    let x_229 : bool = u_xlatb1;
    if (x_229) {
      let x_234 : f32 = u_xlat12;
      x_231 = -(x_234);
    } else {
      let x_237 : f32 = u_xlat12;
      x_231 = x_237;
    }
    let x_238 : f32 = x_231;
    u_xlat1.x = x_238;
    let x_241 : f32 = u_xlat2.x;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec3<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
  }
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_264);
  u_xlat0.x = x_265.x;
  let x_269 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_276 : vec2<f32> = u_xlat10;
  let x_277 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_276, x_277);
  let x_279 : f32 = u_xlat30;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_279, x_279) * x_281);
  let x_283 : vec2<f32> = u_xlat10;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_288 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_289 : vec2<f32> = vec2<f32>(x_286, x_288);
  u_xlat10 = (x_283 * vec2<f32>(x_289.x, x_289.y));
  let x_294 : vec2<f32> = u_xlat10;
  let x_298 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_300 : vec2<f32> = (-(x_294) * vec2<f32>(x_298.z, x_298.w));
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_300.x, x_300.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat2;
  let x_305 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_305.x, x_305.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat2;
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_308.x, x_308.y), vec2<f32>(x_310.x, x_310.y));
  let x_313 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_313);
  let x_317 : f32 = u_xlat30;
  u_xlati30 = i32(x_317);
  let x_319 : i32 = u_xlati30;
  u_xlati30 = max(x_319, 3i);
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(x_327) / vec2<f32>(x_329.x, x_329.x));
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
  let x_347 : vec2<f32> = vs_TEXCOORD0;
  u_xlat6 = x_347;
  u_xlati_loop_1 = 0i;
  loop {
    let x_356 : i32 = u_xlati_loop_1;
    let x_357 : i32 = u_xlati30;
    if ((x_356 < x_357)) {
    } else {
      break;
    }
    let x_360 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_360);
    let x_362 : f32 = u_xlat36;
    u_xlat36 = (x_362 + 0.5f);
    let x_364 : f32 = u_xlat36;
    let x_366 : f32 = u_xlat1.x;
    u_xlat2.x = (x_364 / x_366);
    let x_370 : vec2<f32> = u_xlat6;
    let x_371 : vec2<f32> = (x_370 + vec2<f32>(-0.5f, -0.5f));
    let x_372 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_371.x, x_371.y, x_372.z, x_372.w);
    let x_375 : vec4<f32> = u_xlat7;
    let x_378 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_375.x, x_375.y) * vec2<f32>(x_378.z, x_378.z)) + vec2<f32>(0.5f, 0.5f));
    let x_382 : vec4<f32> = u_xlat7;
    let x_385 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_389 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_392 : vec2<f32> = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_385.z, x_385.z)) + -(vec2<f32>(x_389.x, x_389.y)));
    let x_393 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
    let x_395 : vec4<f32> = u_xlat7;
    let x_398 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_400 : vec2<f32> = (vec2<f32>(x_395.x, x_395.y) * vec2<f32>(x_398.z, x_398.w));
    let x_401 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_400.x, x_400.y, x_401.z, x_401.w);
    let x_403 : vec4<f32> = u_xlat7;
    let x_405 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_403.x, x_403.y), vec2<f32>(x_405.x, x_405.y));
    let x_408 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_408);
    let x_410 : bool = u_xlatb11;
    if (x_410) {
      let x_414 : f32 = u_xlat36;
      let x_417 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_414, x_414) * vec2<f32>(x_417.x, x_417.y));
      let x_422 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_422);
      let x_425 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_425);
      let x_429 : f32 = u_xlat8.x;
      let x_430 : f32 = u_xlat9;
      u_xlat8.x = (x_429 / x_430);
      let x_435 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_435);
      let x_438 : f32 = u_xlat8.x;
      let x_439 : f32 = u_xlat18;
      u_xlat8.x = ((x_438 * x_439) + -1.0f);
      let x_443 : vec4<f32> = u_xlat7;
      let x_445 : vec2<f32> = u_xlat8;
      let x_448 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_443.x, x_443.y) * vec2<f32>(x_445.x, x_445.x)) + x_448);
    } else {
      let x_452 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_452);
      let x_454 : f32 = u_xlat28;
      let x_456 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_454 * x_456);
      let x_458 : f32 = u_xlat36;
      let x_460 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_458 * x_460);
      let x_463 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_463), 1.0f);
      let x_466 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_466), 1.0f);
      let x_469 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_469);
      let x_471 : f32 = u_xlat38;
      let x_472 : f32 = u_xlat9;
      u_xlat38 = (x_471 * x_472);
      let x_474 : f32 = u_xlat38;
      let x_475 : f32 = u_xlat38;
      u_xlat9 = (x_474 * x_475);
      let x_478 : f32 = u_xlat9;
      u_xlat19 = ((x_478 * 0.0208351f) + -0.085133001f);
      let x_481 : f32 = u_xlat9;
      let x_482 : f32 = u_xlat19;
      u_xlat19 = ((x_481 * x_482) + 0.180141002f);
      let x_485 : f32 = u_xlat9;
      let x_486 : f32 = u_xlat19;
      u_xlat19 = ((x_485 * x_486) + -0.330299497f);
      let x_489 : f32 = u_xlat9;
      let x_490 : f32 = u_xlat19;
      u_xlat9 = ((x_489 * x_490) + 0.999866009f);
      let x_493 : f32 = u_xlat38;
      let x_494 : f32 = u_xlat9;
      u_xlat19 = (x_493 * x_494);
      let x_497 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_497));
      let x_500 : f32 = u_xlat19;
      u_xlat19 = ((x_500 * -2.0f) + 1.570796371f);
      let x_503 : bool = u_xlatb29;
      let x_504 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_504, x_503);
      let x_506 : f32 = u_xlat38;
      let x_507 : f32 = u_xlat9;
      let x_509 : f32 = u_xlat19;
      u_xlat38 = ((x_506 * x_507) + x_509);
      let x_511 : f32 = u_xlat36;
      u_xlat36 = min(x_511, 1.0f);
      let x_514 : f32 = u_xlat36;
      let x_515 : f32 = u_xlat36;
      u_xlatb36 = (x_514 < -(x_515));
      let x_518 : bool = u_xlatb36;
      if (x_518) {
        let x_522 : f32 = u_xlat38;
        x_519 = -(x_522);
      } else {
        let x_525 : f32 = u_xlat38;
        x_519 = x_525;
      }
      let x_526 : f32 = x_519;
      u_xlat36 = x_526;
      let x_527 : f32 = u_xlat28;
      let x_528 : f32 = u_xlat36;
      u_xlat36 = ((x_527 * x_528) + -1.0f);
      let x_531 : vec4<f32> = u_xlat7;
      let x_533 : f32 = u_xlat36;
      let x_536 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_531.x, x_531.y) * vec2<f32>(x_533, x_533)) + x_536);
    }
    let x_538 : vec2<f32> = u_xlat8;
    u_xlat8 = x_538;
    let x_539 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_539, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_543 : vec2<f32> = u_xlat8;
    let x_546 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_548 : vec2<f32> = (x_543 * vec2<f32>(x_546, x_546));
    let x_549 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
    let x_556 : vec4<f32> = u_xlat7;
    let x_558 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_556.x, x_556.y), 0.0f);
    u_xlat7 = x_558;
    let x_564 : vec3<f32> = u_xlat2;
    let x_566 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_564.x, x_564.y), 0.0f);
    let x_567 : vec3<f32> = vec3<f32>(x_566.x, x_566.y, x_566.z);
    let x_568 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
    let x_570 : vec4<f32> = u_xlat7;
    let x_571 : vec4<f32> = u_xlat3;
    let x_573 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_570 * x_571) + x_573);
    let x_575 : vec4<f32> = u_xlat3;
    let x_576 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_575 + x_576);
    let x_578 : vec2<f32> = u_xlat10;
    let x_579 : vec2<f32> = u_xlat6;
    u_xlat6 = (x_578 + x_579);

    continuing {
      let x_581 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_581 + 1i);
    }
  }
  let x_583 : vec4<f32> = u_xlat4;
  let x_584 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_583 / x_584);
  let x_586 : vec4<f32> = u_xlat0;
  let x_588 : vec4<f32> = u_xlat3;
  let x_590 : vec3<f32> = (vec3<f32>(x_586.x, x_586.x, x_586.x) * vec3<f32>(x_588.x, x_588.y, x_588.z));
  let x_591 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_590.x, x_590.y, x_590.z, x_591.w);
  let x_596 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_596 < 0.5f);
  let x_598 : bool = u_xlatb30;
  if (x_598) {
    let x_601 : vec2<f32> = u_xlat21;
    let x_605 : vec2<f32> = x_26.x_Vignette_Center;
    let x_607 : vec2<f32> = (x_601 + -(x_605));
    let x_608 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_607.x, x_607.y, x_608.z);
    let x_610 : vec3<f32> = u_xlat1;
    let x_615 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_617 : vec2<f32> = (abs(vec2<f32>(x_610.y, x_610.x)) * vec2<f32>(x_615.x, x_615.x));
    let x_618 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_618.x, x_617.x, x_617.y, x_618.w);
    let x_621 : f32 = x_26.x_ScreenParams.x;
    let x_623 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_621 / x_623);
    let x_625 : f32 = u_xlat30;
    u_xlat30 = (x_625 + -1.0f);
    let x_628 : f32 = x_26.x_Vignette_Settings.w;
    let x_629 : f32 = u_xlat30;
    u_xlat30 = ((x_628 * x_629) + 1.0f);
    let x_632 : f32 = u_xlat30;
    let x_634 : f32 = u_xlat3.z;
    u_xlat3.x = (x_632 * x_634);
    let x_637 : vec4<f32> = u_xlat3;
    let x_638 : vec2<f32> = vec2<f32>(x_637.x, x_637.y);
    let x_639 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
    let x_641 : vec4<f32> = u_xlat3;
    let x_645 : vec2<f32> = clamp(vec2<f32>(x_641.x, x_641.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_646 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
    let x_648 : vec4<f32> = u_xlat3;
    let x_650 : vec2<f32> = log2(vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_650.x, x_650.y, x_651.z);
    let x_653 : vec3<f32> = u_xlat1;
    let x_656 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_658 : vec2<f32> = (vec2<f32>(x_653.x, x_653.y) * vec2<f32>(x_656.z, x_656.z));
    let x_659 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_658.x, x_658.y, x_659.z);
    let x_661 : vec3<f32> = u_xlat1;
    let x_663 : vec2<f32> = exp2(vec2<f32>(x_661.x, x_661.y));
    let x_664 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_663.x, x_663.y, x_664.z);
    let x_666 : vec3<f32> = u_xlat1;
    let x_668 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_666.x, x_666.y), vec2<f32>(x_668.x, x_668.y));
    let x_671 : f32 = u_xlat30;
    u_xlat30 = (-(x_671) + 1.0f);
    let x_674 : f32 = u_xlat30;
    u_xlat30 = max(x_674, 0.0f);
    let x_676 : f32 = u_xlat30;
    u_xlat30 = log2(x_676);
    let x_678 : f32 = u_xlat30;
    let x_680 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_678 * x_680);
    let x_682 : f32 = u_xlat30;
    u_xlat30 = exp2(x_682);
    let x_687 : vec3<f32> = x_26.x_Vignette_Color;
    let x_690 : vec3<f32> = (-(x_687) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_691 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
    let x_693 : f32 = u_xlat30;
    let x_695 : vec4<f32> = u_xlat3;
    let x_699 : vec3<f32> = x_26.x_Vignette_Color;
    let x_700 : vec3<f32> = ((vec3<f32>(x_693, x_693, x_693) * vec3<f32>(x_695.x, x_695.y, x_695.z)) + x_699);
    let x_701 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_700.x, x_700.y, x_700.z, x_701.w);
    let x_703 : vec4<f32> = u_xlat0;
    let x_705 : vec4<f32> = u_xlat3;
    let x_707 : vec3<f32> = (vec3<f32>(x_703.x, x_703.y, x_703.z) * vec3<f32>(x_705.x, x_705.y, x_705.z));
    let x_708 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_707.x, x_707.y, x_707.z, x_708.w);
    let x_711 : f32 = u_xlat3.w;
    u_xlat1.x = (x_711 + -1.0f);
    let x_714 : f32 = u_xlat30;
    let x_716 : f32 = u_xlat1.x;
    u_xlat4.w = ((x_714 * x_716) + 1.0f);
  } else {
    let x_726 : vec2<f32> = u_xlat21;
    let x_727 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_726);
    u_xlat30 = x_727.w;
    let x_729 : f32 = u_xlat30;
    u_xlat1.x = (x_729 * 0.077399381f);
    let x_734 : f32 = u_xlat30;
    u_xlat11.x = (x_734 + 0.055f);
    let x_739 : f32 = u_xlat11.x;
    u_xlat11.x = (x_739 * 0.947867334f);
    let x_744 : f32 = u_xlat11.x;
    u_xlat11.x = max(abs(x_744), 1.1920929e-07f);
    let x_750 : f32 = u_xlat11.x;
    u_xlat11.x = log2(x_750);
    let x_754 : f32 = u_xlat11.x;
    u_xlat11.x = (x_754 * 2.400000095f);
    let x_759 : f32 = u_xlat11.x;
    u_xlat11.x = exp2(x_759);
    let x_763 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_763);
    let x_765 : bool = u_xlatb30;
    if (x_765) {
      let x_770 : f32 = u_xlat1.x;
      x_766 = x_770;
    } else {
      let x_773 : f32 = u_xlat11.x;
      x_766 = x_773;
    }
    let x_774 : f32 = x_766;
    u_xlat30 = x_774;
    let x_776 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_776) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_779 : f32 = u_xlat30;
    let x_781 : vec3<f32> = u_xlat1;
    let x_784 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_779, x_779, x_779) * x_781) + x_784);
    let x_786 : vec4<f32> = u_xlat0;
    let x_788 : vec3<f32> = u_xlat1;
    let x_790 : vec4<f32> = u_xlat0;
    u_xlat1 = ((vec3<f32>(x_786.x, x_786.y, x_786.z) * x_788) + -(vec3<f32>(x_790.x, x_790.y, x_790.z)));
    let x_796 : f32 = x_26.x_Vignette_Opacity;
    let x_798 : vec3<f32> = u_xlat1;
    let x_800 : vec4<f32> = u_xlat0;
    let x_802 : vec3<f32> = ((vec3<f32>(x_796, x_796, x_796) * x_798) + vec3<f32>(x_800.x, x_800.y, x_800.z));
    let x_803 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
    let x_806 : f32 = u_xlat3.w;
    u_xlat0.x = (x_806 + -1.0f);
    let x_809 : f32 = u_xlat30;
    let x_811 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_809 * x_811) + 1.0f);
  }
  let x_816 : vec2<f32> = vs_TEXCOORD1;
  let x_819 : vec4<f32> = x_26.x_Grain_Params2;
  let x_823 : vec4<f32> = x_26.x_Grain_Params2;
  let x_825 : vec2<f32> = ((x_816 * vec2<f32>(x_819.x, x_819.y)) + vec2<f32>(x_823.z, x_823.w));
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
  let x_833 : vec4<f32> = u_xlat0;
  let x_835 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_833.x, x_833.y));
  let x_836 : vec3<f32> = vec3<f32>(x_835.x, x_835.y, x_835.z);
  let x_837 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_836.x, x_836.y, x_836.z, x_837.w);
  let x_839 : vec4<f32> = u_xlat3;
  u_xlat1 = vec3<f32>(x_839.x, x_839.y, x_839.z);
  let x_841 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_841, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_845 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_845, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_851 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_851);
  let x_855 : f32 = x_26.x_Grain_Params1.x;
  let x_856 : f32 = u_xlat30;
  u_xlat30 = ((x_855 * -(x_856)) + 1.0f);
  let x_860 : vec4<f32> = u_xlat0;
  let x_862 : vec4<f32> = u_xlat3;
  let x_864 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) * vec3<f32>(x_862.x, x_862.y, x_862.z));
  let x_865 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_864.x, x_864.y, x_864.z, x_865.w);
  let x_867 : vec4<f32> = u_xlat0;
  let x_870 : f32 = x_26.x_Grain_Params1.y;
  let x_872 : f32 = x_26.x_Grain_Params1.y;
  let x_874 : f32 = x_26.x_Grain_Params1.y;
  let x_876 : vec3<f32> = (vec3<f32>(x_867.x, x_867.y, x_867.z) * vec3<f32>(x_870, x_872, x_874));
  let x_877 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
  let x_879 : vec4<f32> = u_xlat0;
  let x_881 : f32 = u_xlat30;
  let x_884 : vec4<f32> = u_xlat3;
  let x_886 : vec3<f32> = ((vec3<f32>(x_879.x, x_879.y, x_879.z) * vec3<f32>(x_881, x_881, x_881)) + vec3<f32>(x_884.x, x_884.y, x_884.z));
  let x_887 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_886.x, x_886.y, x_886.z, x_887.w);
  let x_889 : vec4<f32> = u_xlat4;
  let x_892 : f32 = x_26.x_PostExposure;
  let x_894 : f32 = x_26.x_PostExposure;
  let x_896 : f32 = x_26.x_PostExposure;
  let x_898 : f32 = x_26.x_PostExposure;
  let x_899 : vec4<f32> = vec4<f32>(x_892, x_894, x_896, x_898);
  u_xlat0 = (x_889 * vec4<f32>(x_899.x, x_899.y, x_899.z, x_899.w));
  let x_906 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_906.z, x_906.x, x_906.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_914 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_914);
  let x_916 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_916 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_923 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_923, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_927 : vec3<f32> = u_xlat1;
  let x_930 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (x_927 * vec3<f32>(x_930.z, x_930.z, x_930.z));
  let x_934 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_934);
  let x_938 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_940 : vec2<f32> = (vec2<f32>(x_938.x, x_938.y) * vec2<f32>(0.5f, 0.5f));
  let x_941 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_940.x, x_940.y, x_941.z);
  let x_943 : vec3<f32> = u_xlat11;
  let x_946 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_949 : vec3<f32> = u_xlat2;
  let x_951 : vec2<f32> = ((vec2<f32>(x_943.y, x_943.z) * vec2<f32>(x_946.x, x_946.y)) + vec2<f32>(x_949.x, x_949.y));
  let x_952 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_952.x, x_951.x, x_951.y, x_952.w);
  let x_955 : f32 = u_xlat11.x;
  let x_957 : f32 = x_26.x_Lut2D_Params.y;
  let x_960 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_955 * x_957) + x_960);
  let x_968 : vec4<f32> = u_xlat3;
  let x_970 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_968.x, x_968.z));
  let x_971 : vec3<f32> = vec3<f32>(x_970.x, x_970.y, x_970.z);
  let x_972 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_975 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_975;
  let x_977 : vec2<f32> = u_xlat22;
  let x_978 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_977 + vec2<f32>(x_978.x, x_978.z));
  let x_984 : vec2<f32> = u_xlat21;
  let x_985 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_984);
  u_xlat2 = vec3<f32>(x_985.x, x_985.y, x_985.z);
  let x_988 : f32 = u_xlat1.x;
  let x_990 : f32 = x_26.x_Lut2D_Params.z;
  let x_993 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_988 * x_990) + -(x_993));
  let x_997 : vec4<f32> = u_xlat4;
  let x_1000 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_997.x, x_997.y, x_997.z)) + x_1000);
  let x_1002 : vec3<f32> = u_xlat1;
  let x_1004 : vec3<f32> = u_xlat11;
  let x_1006 : vec4<f32> = u_xlat4;
  let x_1008 : vec3<f32> = ((vec3<f32>(x_1002.x, x_1002.x, x_1002.x) * x_1004) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1013 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1013);
  let x_1015 : bool = u_xlatb1;
  if (x_1015) {
    let x_1018 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1018.x, x_1018.y, x_1018.z);
    let x_1020 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1020, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1024 : vec3<f32> = u_xlat1;
    u_xlat0.w = dot(x_1024, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1029 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1029;
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

