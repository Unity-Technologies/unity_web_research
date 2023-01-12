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

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(7) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(8) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : f32;
  var u_xlat22 : vec2<f32>;
  var u_xlat32 : f32;
  var u_xlatb3 : vec3<bool>;
  var u_xlatb1 : bool;
  var x_234 : f32;
  var u_xlat10 : vec3<f32>;
  var u_xlat30 : f32;
  var u_xlati30 : i32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec2<f32>;
  var u_xlati_loop_1 : i32;
  var u_xlat36 : f32;
  var u_xlat7 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlat19 : f32;
  var u_xlatb29 : bool;
  var u_xlatb36 : bool;
  var x_535 : f32;
  var u_xlatb30 : bool;
  var u_xlat11 : f32;
  var x_769 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_854 : f32;
  var x_866 : f32;
  var x_878 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_998 : f32;
  var x_1010 : f32;
  var x_1022 : f32;
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
      let x_237 : f32 = u_xlat12;
      x_234 = -(x_237);
    } else {
      let x_240 : f32 = u_xlat12;
      x_234 = x_240;
    }
    let x_241 : f32 = x_234;
    u_xlat1.x = x_241;
    let x_244 : f32 = u_xlat2.x;
    let x_246 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_244 * x_246) + -1.0f);
    let x_250 : vec3<f32> = u_xlat0;
    let x_252 : vec3<f32> = u_xlat1;
    let x_255 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_250.x, x_250.y) * vec2<f32>(x_252.x, x_252.x)) + x_255);
  }
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_267);
  u_xlat0.x = x_268.x;
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  let x_277 : vec2<f32> = ((x_272 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_278 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_281 : vec3<f32> = u_xlat10;
  let x_283 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_281.x, x_281.y), vec2<f32>(x_283.x, x_283.y));
  let x_286 : f32 = u_xlat30;
  let x_288 : vec3<f32> = u_xlat10;
  let x_290 : vec2<f32> = (vec2<f32>(x_286, x_286) * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_290.x, x_290.y, x_291.z);
  let x_293 : vec3<f32> = u_xlat10;
  let x_297 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_299 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_300 : vec2<f32> = vec2<f32>(x_297, x_299);
  let x_304 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) * vec2<f32>(x_300.x, x_300.y));
  let x_305 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat10;
  let x_312 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_314 : vec2<f32> = (-(vec2<f32>(x_307.x, x_307.y)) * vec2<f32>(x_312.z, x_312.w));
  let x_315 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_314.x, x_314.y, x_315.z);
  let x_317 : vec3<f32> = u_xlat2;
  let x_319 : vec2<f32> = (vec2<f32>(x_317.x, x_317.y) * vec2<f32>(0.5f, 0.5f));
  let x_320 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_319.x, x_319.y, x_320.z);
  let x_322 : vec3<f32> = u_xlat2;
  let x_324 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_322.x, x_322.y), vec2<f32>(x_324.x, x_324.y));
  let x_327 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_327);
  let x_331 : f32 = u_xlat30;
  u_xlati30 = i32(x_331);
  let x_333 : i32 = u_xlati30;
  u_xlati30 = max(x_333, 3i);
  let x_335 : i32 = u_xlati30;
  u_xlati30 = min(x_335, 16i);
  let x_338 : i32 = u_xlati30;
  u_xlat1.x = f32(x_338);
  let x_341 : vec3<f32> = u_xlat10;
  let x_344 : vec3<f32> = u_xlat1;
  let x_346 : vec2<f32> = (-(vec2<f32>(x_341.x, x_341.y)) / vec2<f32>(x_344.x, x_344.x));
  let x_347 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_346.x, x_346.y, x_347.z);
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
  let x_364 : vec2<f32> = vs_TEXCOORD0;
  u_xlat6 = x_364;
  u_xlati_loop_1 = 0i;
  loop {
    let x_372 : i32 = u_xlati_loop_1;
    let x_373 : i32 = u_xlati30;
    if ((x_372 < x_373)) {
    } else {
      break;
    }
    let x_376 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_376);
    let x_378 : f32 = u_xlat36;
    u_xlat36 = (x_378 + 0.5f);
    let x_380 : f32 = u_xlat36;
    let x_382 : f32 = u_xlat1.x;
    u_xlat2.x = (x_380 / x_382);
    let x_386 : vec2<f32> = u_xlat6;
    let x_387 : vec2<f32> = (x_386 + vec2<f32>(-0.5f, -0.5f));
    let x_388 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
    let x_391 : vec4<f32> = u_xlat7;
    let x_394 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_391.x, x_391.y) * vec2<f32>(x_394.z, x_394.z)) + vec2<f32>(0.5f, 0.5f));
    let x_398 : vec4<f32> = u_xlat7;
    let x_401 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_405 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_408 : vec2<f32> = ((vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.z, x_401.z)) + -(vec2<f32>(x_405.x, x_405.y)));
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_408.x, x_408.y, x_409.z, x_409.w);
    let x_411 : vec4<f32> = u_xlat7;
    let x_414 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_416 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(x_414.z, x_414.w));
    let x_417 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_416.x, x_416.y, x_417.z, x_417.w);
    let x_419 : vec4<f32> = u_xlat7;
    let x_421 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_419.x, x_419.y), vec2<f32>(x_421.x, x_421.y));
    let x_424 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_424);
    let x_426 : bool = u_xlatb11;
    if (x_426) {
      let x_430 : f32 = u_xlat36;
      let x_433 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_430, x_430) * vec2<f32>(x_433.x, x_433.y));
      let x_438 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_438);
      let x_441 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_441);
      let x_445 : f32 = u_xlat8.x;
      let x_446 : f32 = u_xlat9;
      u_xlat8.x = (x_445 / x_446);
      let x_451 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_451);
      let x_454 : f32 = u_xlat8.x;
      let x_455 : f32 = u_xlat18;
      u_xlat8.x = ((x_454 * x_455) + -1.0f);
      let x_459 : vec4<f32> = u_xlat7;
      let x_461 : vec2<f32> = u_xlat8;
      let x_464 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_459.x, x_459.y) * vec2<f32>(x_461.x, x_461.x)) + x_464);
    } else {
      let x_468 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_468);
      let x_470 : f32 = u_xlat28;
      let x_472 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_470 * x_472);
      let x_474 : f32 = u_xlat36;
      let x_476 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_474 * x_476);
      let x_479 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_479), 1.0f);
      let x_482 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_482), 1.0f);
      let x_485 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_485);
      let x_487 : f32 = u_xlat38;
      let x_488 : f32 = u_xlat9;
      u_xlat38 = (x_487 * x_488);
      let x_490 : f32 = u_xlat38;
      let x_491 : f32 = u_xlat38;
      u_xlat9 = (x_490 * x_491);
      let x_494 : f32 = u_xlat9;
      u_xlat19 = ((x_494 * 0.0208351f) + -0.085133001f);
      let x_497 : f32 = u_xlat9;
      let x_498 : f32 = u_xlat19;
      u_xlat19 = ((x_497 * x_498) + 0.180141002f);
      let x_501 : f32 = u_xlat9;
      let x_502 : f32 = u_xlat19;
      u_xlat19 = ((x_501 * x_502) + -0.330299497f);
      let x_505 : f32 = u_xlat9;
      let x_506 : f32 = u_xlat19;
      u_xlat9 = ((x_505 * x_506) + 0.999866009f);
      let x_509 : f32 = u_xlat38;
      let x_510 : f32 = u_xlat9;
      u_xlat19 = (x_509 * x_510);
      let x_513 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_513));
      let x_516 : f32 = u_xlat19;
      u_xlat19 = ((x_516 * -2.0f) + 1.570796371f);
      let x_519 : bool = u_xlatb29;
      let x_520 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_520, x_519);
      let x_522 : f32 = u_xlat38;
      let x_523 : f32 = u_xlat9;
      let x_525 : f32 = u_xlat19;
      u_xlat38 = ((x_522 * x_523) + x_525);
      let x_527 : f32 = u_xlat36;
      u_xlat36 = min(x_527, 1.0f);
      let x_530 : f32 = u_xlat36;
      let x_531 : f32 = u_xlat36;
      u_xlatb36 = (x_530 < -(x_531));
      let x_534 : bool = u_xlatb36;
      if (x_534) {
        let x_538 : f32 = u_xlat38;
        x_535 = -(x_538);
      } else {
        let x_541 : f32 = u_xlat38;
        x_535 = x_541;
      }
      let x_542 : f32 = x_535;
      u_xlat36 = x_542;
      let x_543 : f32 = u_xlat28;
      let x_544 : f32 = u_xlat36;
      u_xlat36 = ((x_543 * x_544) + -1.0f);
      let x_547 : vec4<f32> = u_xlat7;
      let x_549 : f32 = u_xlat36;
      let x_552 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_549, x_549)) + x_552);
    }
    let x_554 : vec2<f32> = u_xlat8;
    u_xlat8 = x_554;
    let x_555 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_555, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_559 : vec2<f32> = u_xlat8;
    let x_562 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_564 : vec2<f32> = (x_559 * vec2<f32>(x_562, x_562));
    let x_565 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
    let x_572 : vec4<f32> = u_xlat7;
    let x_574 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_572.x, x_572.y), 0.0f);
    u_xlat7 = x_574;
    let x_580 : vec3<f32> = u_xlat2;
    let x_582 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_580.x, x_580.y), 0.0f);
    let x_583 : vec3<f32> = vec3<f32>(x_582.x, x_582.y, x_582.z);
    let x_584 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_583.x, x_583.y, x_583.z, x_584.w);
    let x_586 : vec4<f32> = u_xlat7;
    let x_587 : vec4<f32> = u_xlat3;
    let x_589 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_586 * x_587) + x_589);
    let x_591 : vec4<f32> = u_xlat3;
    let x_592 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_591 + x_592);
    let x_594 : vec3<f32> = u_xlat10;
    let x_596 : vec2<f32> = u_xlat6;
    u_xlat6 = (vec2<f32>(x_594.x, x_594.y) + x_596);

    continuing {
      let x_598 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_598 + 1i);
    }
  }
  let x_600 : vec4<f32> = u_xlat4;
  let x_601 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_600 / x_601);
  let x_603 : vec3<f32> = u_xlat0;
  let x_605 : vec4<f32> = u_xlat3;
  u_xlat0 = (vec3<f32>(x_603.x, x_603.x, x_603.x) * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_611 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_611 < 0.5f);
  let x_613 : bool = u_xlatb30;
  if (x_613) {
    let x_616 : vec2<f32> = u_xlat21;
    let x_620 : vec2<f32> = x_26.x_Vignette_Center;
    let x_622 : vec2<f32> = (x_616 + -(x_620));
    let x_623 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_622.x, x_622.y, x_623.z);
    let x_625 : vec3<f32> = u_xlat1;
    let x_630 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_632 : vec2<f32> = (abs(vec2<f32>(x_625.y, x_625.x)) * vec2<f32>(x_630.x, x_630.x));
    let x_633 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_633.x, x_632.x, x_632.y, x_633.w);
    let x_636 : f32 = x_26.x_ScreenParams.x;
    let x_638 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_636 / x_638);
    let x_640 : f32 = u_xlat30;
    u_xlat30 = (x_640 + -1.0f);
    let x_643 : f32 = x_26.x_Vignette_Settings.w;
    let x_644 : f32 = u_xlat30;
    u_xlat30 = ((x_643 * x_644) + 1.0f);
    let x_647 : f32 = u_xlat30;
    let x_649 : f32 = u_xlat3.z;
    u_xlat3.x = (x_647 * x_649);
    let x_652 : vec4<f32> = u_xlat3;
    let x_653 : vec2<f32> = vec2<f32>(x_652.x, x_652.y);
    let x_654 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
    let x_656 : vec4<f32> = u_xlat3;
    let x_660 : vec2<f32> = clamp(vec2<f32>(x_656.x, x_656.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_661 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
    let x_663 : vec4<f32> = u_xlat3;
    let x_665 : vec2<f32> = log2(vec2<f32>(x_663.x, x_663.y));
    let x_666 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_665.x, x_665.y, x_666.z);
    let x_668 : vec3<f32> = u_xlat1;
    let x_671 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_673 : vec2<f32> = (vec2<f32>(x_668.x, x_668.y) * vec2<f32>(x_671.z, x_671.z));
    let x_674 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_673.x, x_673.y, x_674.z);
    let x_676 : vec3<f32> = u_xlat1;
    let x_678 : vec2<f32> = exp2(vec2<f32>(x_676.x, x_676.y));
    let x_679 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_678.x, x_678.y, x_679.z);
    let x_681 : vec3<f32> = u_xlat1;
    let x_683 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_681.x, x_681.y), vec2<f32>(x_683.x, x_683.y));
    let x_686 : f32 = u_xlat30;
    u_xlat30 = (-(x_686) + 1.0f);
    let x_689 : f32 = u_xlat30;
    u_xlat30 = max(x_689, 0.0f);
    let x_691 : f32 = u_xlat30;
    u_xlat30 = log2(x_691);
    let x_693 : f32 = u_xlat30;
    let x_695 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_693 * x_695);
    let x_697 : f32 = u_xlat30;
    u_xlat30 = exp2(x_697);
    let x_702 : vec3<f32> = x_26.x_Vignette_Color;
    let x_705 : vec3<f32> = (-(x_702) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_706 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_708 : f32 = u_xlat30;
    let x_710 : vec4<f32> = u_xlat3;
    let x_714 : vec3<f32> = x_26.x_Vignette_Color;
    let x_715 : vec3<f32> = ((vec3<f32>(x_708, x_708, x_708) * vec3<f32>(x_710.x, x_710.y, x_710.z)) + x_714);
    let x_716 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_718 : vec3<f32> = u_xlat0;
    let x_719 : vec4<f32> = u_xlat3;
    let x_721 : vec3<f32> = (x_718 * vec3<f32>(x_719.x, x_719.y, x_719.z));
    let x_722 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
    let x_725 : f32 = u_xlat3.w;
    u_xlat1.x = (x_725 + -1.0f);
    let x_728 : f32 = u_xlat30;
    let x_730 : f32 = u_xlat1.x;
    u_xlat4.w = ((x_728 * x_730) + 1.0f);
  } else {
    let x_740 : vec2<f32> = u_xlat21;
    let x_741 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_740);
    u_xlat30 = x_741.w;
    let x_743 : f32 = u_xlat30;
    u_xlat1.x = (x_743 * 0.077399381f);
    let x_748 : f32 = u_xlat30;
    u_xlat11 = (x_748 + 0.055f);
    let x_751 : f32 = u_xlat11;
    u_xlat11 = (x_751 * 0.947867334f);
    let x_754 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_754), 1.1920929e-07f);
    let x_758 : f32 = u_xlat11;
    u_xlat11 = log2(x_758);
    let x_760 : f32 = u_xlat11;
    u_xlat11 = (x_760 * 2.400000095f);
    let x_763 : f32 = u_xlat11;
    u_xlat11 = exp2(x_763);
    let x_766 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_766);
    let x_768 : bool = u_xlatb30;
    if (x_768) {
      let x_773 : f32 = u_xlat1.x;
      x_769 = x_773;
    } else {
      let x_775 : f32 = u_xlat11;
      x_769 = x_775;
    }
    let x_776 : f32 = x_769;
    u_xlat30 = x_776;
    let x_778 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_778) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_781 : f32 = u_xlat30;
    let x_783 : vec3<f32> = u_xlat1;
    let x_786 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_781, x_781, x_781) * x_783) + x_786);
    let x_788 : vec3<f32> = u_xlat0;
    let x_789 : vec3<f32> = u_xlat1;
    let x_791 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_788 * x_789) + -(x_791));
    let x_796 : f32 = x_26.x_Vignette_Opacity;
    let x_798 : vec3<f32> = u_xlat1;
    let x_800 : vec3<f32> = u_xlat0;
    let x_801 : vec3<f32> = ((vec3<f32>(x_796, x_796, x_796) * x_798) + x_800);
    let x_802 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
    let x_805 : f32 = u_xlat3.w;
    u_xlat0.x = (x_805 + -1.0f);
    let x_808 : f32 = u_xlat30;
    let x_810 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_808 * x_810) + 1.0f);
  }
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat4 = x_814;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_815, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_819 : vec4<f32> = u_xlat4;
  u_xlat0 = (vec3<f32>(x_819.z, x_819.x, x_819.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_824 : vec4<f32> = u_xlat4;
  u_xlat1 = max(vec3<f32>(x_824.z, x_824.x, x_824.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_828 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_828);
  let x_830 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_830 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_834 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_834);
  let x_836 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_836 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_845 : vec4<f32> = u_xlat4;
  let x_848 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_845.z, x_845.x, x_845.y, x_845.z));
  u_xlatb3 = vec3<bool>(x_848.x, x_848.y, x_848.z);
  let x_851 : vec3<f32> = u_xlat0;
  hlslcc_movcTemp = x_851;
  let x_853 : bool = u_xlatb3.x;
  if (x_853) {
    let x_858 : f32 = u_xlat0.x;
    x_854 = x_858;
  } else {
    let x_861 : f32 = u_xlat1.x;
    x_854 = x_861;
  }
  let x_862 : f32 = x_854;
  hlslcc_movcTemp.x = x_862;
  let x_865 : bool = u_xlatb3.y;
  if (x_865) {
    let x_870 : f32 = u_xlat0.y;
    x_866 = x_870;
  } else {
    let x_873 : f32 = u_xlat1.y;
    x_866 = x_873;
  }
  let x_874 : f32 = x_866;
  hlslcc_movcTemp.y = x_874;
  let x_877 : bool = u_xlatb3.z;
  if (x_877) {
    let x_882 : f32 = u_xlat0.z;
    x_878 = x_882;
  } else {
    let x_885 : f32 = u_xlat1.z;
    x_878 = x_885;
  }
  let x_886 : f32 = x_878;
  hlslcc_movcTemp.z = x_886;
  let x_888 : vec3<f32> = hlslcc_movcTemp;
  u_xlat0 = x_888;
  let x_889 : vec3<f32> = u_xlat0;
  let x_892 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (x_889 * vec3<f32>(x_892.z, x_892.z, x_892.z));
  let x_896 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_896);
  let x_900 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_902 : vec2<f32> = (vec2<f32>(x_900.x, x_900.y) * vec2<f32>(0.5f, 0.5f));
  let x_903 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_902.x, x_902.y, x_903.z);
  let x_905 : vec3<f32> = u_xlat10;
  let x_908 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_911 : vec3<f32> = u_xlat1;
  let x_913 : vec2<f32> = ((vec2<f32>(x_905.y, x_905.z) * vec2<f32>(x_908.x, x_908.y)) + vec2<f32>(x_911.x, x_911.y));
  let x_914 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_914.x, x_913.x, x_913.y);
  let x_917 : f32 = u_xlat10.x;
  let x_919 : f32 = x_26.x_Lut2D_Params.y;
  let x_922 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_917 * x_919) + x_922);
  let x_930 : vec3<f32> = u_xlat1;
  let x_932 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_930.x, x_930.z));
  let x_933 : vec3<f32> = vec3<f32>(x_932.x, x_932.y, x_932.z);
  let x_934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_937 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_937;
  let x_939 : vec2<f32> = u_xlat22;
  let x_940 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_939 + vec2<f32>(x_940.x, x_940.z));
  let x_946 : vec2<f32> = u_xlat20;
  let x_947 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_946);
  u_xlat1 = vec3<f32>(x_947.x, x_947.y, x_947.z);
  let x_950 : f32 = u_xlat0.x;
  let x_952 : f32 = x_26.x_Lut2D_Params.z;
  let x_955 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_950 * x_952) + -(x_955));
  let x_959 : vec4<f32> = u_xlat3;
  let x_962 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_959.x, x_959.y, x_959.z)) + x_962);
  let x_964 : vec3<f32> = u_xlat0;
  let x_966 : vec3<f32> = u_xlat10;
  let x_968 : vec4<f32> = u_xlat3;
  u_xlat0 = ((vec3<f32>(x_964.x, x_964.x, x_964.x) * x_966) + vec3<f32>(x_968.x, x_968.y, x_968.z));
  let x_971 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_971 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_974 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_974 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_977 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_977 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_980 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_980), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_983 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_983);
  let x_985 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_985 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_988 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_988);
  let x_992 : vec3<f32> = u_xlat0;
  let x_994 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_992.x, x_992.y, x_992.z, x_992.x));
  u_xlatb0 = vec3<bool>(x_994.x, x_994.y, x_994.z);
  let x_997 : bool = u_xlatb0.x;
  if (x_997) {
    let x_1002 : f32 = u_xlat1.x;
    x_998 = x_1002;
  } else {
    let x_1005 : f32 = u_xlat2.x;
    x_998 = x_1005;
  }
  let x_1006 : f32 = x_998;
  u_xlat4.x = x_1006;
  let x_1009 : bool = u_xlatb0.y;
  if (x_1009) {
    let x_1014 : f32 = u_xlat1.y;
    x_1010 = x_1014;
  } else {
    let x_1017 : f32 = u_xlat2.y;
    x_1010 = x_1017;
  }
  let x_1018 : f32 = x_1010;
  u_xlat4.y = x_1018;
  let x_1021 : bool = u_xlatb0.z;
  if (x_1021) {
    let x_1026 : f32 = u_xlat1.z;
    x_1022 = x_1026;
  } else {
    let x_1029 : f32 = u_xlat2.z;
    x_1022 = x_1029;
  }
  let x_1030 : f32 = x_1022;
  u_xlat4.z = x_1030;
  let x_1034 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0.x = (0.5f < x_1034);
  let x_1038 : bool = u_xlatb0.x;
  if (x_1038) {
    let x_1041 : vec4<f32> = u_xlat4;
    u_xlat0 = vec3<f32>(x_1041.x, x_1041.y, x_1041.z);
    let x_1043 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_1043, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1047 : vec3<f32> = u_xlat0;
    u_xlat4.w = dot(x_1047, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1056 : vec4<f32> = u_xlat4;
  SV_Target0 = x_1056;
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

