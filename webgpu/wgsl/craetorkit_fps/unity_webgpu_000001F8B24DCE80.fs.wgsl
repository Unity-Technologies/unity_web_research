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
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
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
  var u_xlatb3 : bool;
  var u_xlatb1 : bool;
  var x_230 : f32;
  var u_xlat10 : vec2<f32>;
  var u_xlat30 : f32;
  var u_xlati30 : i32;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
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
  var x_520 : f32;
  var u_xlat11 : vec3<f32>;
  var x_1079 : f32;
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
      let x_233 : f32 = u_xlat12;
      x_230 = -(x_233);
    } else {
      let x_236 : f32 = u_xlat12;
      x_230 = x_236;
    }
    let x_237 : f32 = x_230;
    u_xlat1.x = x_237;
    let x_240 : f32 = u_xlat2.x;
    let x_242 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_240 * x_242) + -1.0f);
    let x_246 : vec4<f32> = u_xlat0;
    let x_248 : vec3<f32> = u_xlat1;
    let x_251 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_246.x, x_246.y) * vec2<f32>(x_248.x, x_248.x)) + x_251);
  }
  let x_263 : vec2<f32> = vs_TEXCOORD0;
  let x_264 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_263);
  u_xlat0.x = x_264.x;
  let x_268 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_268 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_275 : vec2<f32> = u_xlat10;
  let x_276 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_275, x_276);
  let x_278 : f32 = u_xlat30;
  let x_280 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_278, x_278) * x_280);
  let x_282 : vec2<f32> = u_xlat10;
  let x_285 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_287 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_288 : vec2<f32> = vec2<f32>(x_285, x_287);
  u_xlat10 = (x_282 * vec2<f32>(x_288.x, x_288.y));
  let x_293 : vec2<f32> = u_xlat10;
  let x_297 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_299 : vec2<f32> = (-(x_293) * vec2<f32>(x_297.z, x_297.w));
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_299.x, x_299.y, x_300.z);
  let x_302 : vec3<f32> = u_xlat2;
  let x_304 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) * vec2<f32>(0.5f, 0.5f));
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat2;
  let x_309 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_307.x, x_307.y), vec2<f32>(x_309.x, x_309.y));
  let x_312 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_312);
  let x_316 : f32 = u_xlat30;
  u_xlati30 = i32(x_316);
  let x_318 : i32 = u_xlati30;
  u_xlati30 = max(x_318, 3i);
  let x_320 : i32 = u_xlati30;
  u_xlati30 = min(x_320, 16i);
  let x_323 : i32 = u_xlati30;
  u_xlat1.x = f32(x_323);
  let x_326 : vec2<f32> = u_xlat10;
  let x_328 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(x_326) / vec2<f32>(x_328.x, x_328.x));
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
  let x_346 : vec2<f32> = vs_TEXCOORD0;
  let x_347 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_346.x, x_346.y, x_347.z, x_347.w);
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
    let x_370 : vec4<f32> = u_xlat6;
    let x_372 : vec2<f32> = (vec2<f32>(x_370.x, x_370.y) + vec2<f32>(-0.5f, -0.5f));
    let x_373 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_372.x, x_372.y, x_373.z, x_373.w);
    let x_376 : vec4<f32> = u_xlat7;
    let x_379 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_376.x, x_376.y) * vec2<f32>(x_379.z, x_379.z)) + vec2<f32>(0.5f, 0.5f));
    let x_383 : vec4<f32> = u_xlat7;
    let x_386 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_390 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_393 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(x_386.z, x_386.z)) + -(vec2<f32>(x_390.x, x_390.y)));
    let x_394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
    let x_396 : vec4<f32> = u_xlat7;
    let x_399 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_401 : vec2<f32> = (vec2<f32>(x_396.x, x_396.y) * vec2<f32>(x_399.z, x_399.w));
    let x_402 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_401.x, x_401.y, x_402.z, x_402.w);
    let x_404 : vec4<f32> = u_xlat7;
    let x_406 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_404.x, x_404.y), vec2<f32>(x_406.x, x_406.y));
    let x_409 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_409);
    let x_411 : bool = u_xlatb11;
    if (x_411) {
      let x_415 : f32 = u_xlat36;
      let x_418 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_415, x_415) * vec2<f32>(x_418.x, x_418.y));
      let x_423 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_423);
      let x_426 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_426);
      let x_430 : f32 = u_xlat8.x;
      let x_431 : f32 = u_xlat9;
      u_xlat8.x = (x_430 / x_431);
      let x_436 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_436);
      let x_439 : f32 = u_xlat8.x;
      let x_440 : f32 = u_xlat18;
      u_xlat8.x = ((x_439 * x_440) + -1.0f);
      let x_444 : vec4<f32> = u_xlat7;
      let x_446 : vec2<f32> = u_xlat8;
      let x_449 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_444.x, x_444.y) * vec2<f32>(x_446.x, x_446.x)) + x_449);
    } else {
      let x_453 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_453);
      let x_455 : f32 = u_xlat28;
      let x_457 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_455 * x_457);
      let x_459 : f32 = u_xlat36;
      let x_461 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_459 * x_461);
      let x_464 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_464), 1.0f);
      let x_467 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_467), 1.0f);
      let x_470 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_470);
      let x_472 : f32 = u_xlat38;
      let x_473 : f32 = u_xlat9;
      u_xlat38 = (x_472 * x_473);
      let x_475 : f32 = u_xlat38;
      let x_476 : f32 = u_xlat38;
      u_xlat9 = (x_475 * x_476);
      let x_479 : f32 = u_xlat9;
      u_xlat19 = ((x_479 * 0.0208351f) + -0.085133001f);
      let x_482 : f32 = u_xlat9;
      let x_483 : f32 = u_xlat19;
      u_xlat19 = ((x_482 * x_483) + 0.180141002f);
      let x_486 : f32 = u_xlat9;
      let x_487 : f32 = u_xlat19;
      u_xlat19 = ((x_486 * x_487) + -0.330299497f);
      let x_490 : f32 = u_xlat9;
      let x_491 : f32 = u_xlat19;
      u_xlat9 = ((x_490 * x_491) + 0.999866009f);
      let x_494 : f32 = u_xlat38;
      let x_495 : f32 = u_xlat9;
      u_xlat19 = (x_494 * x_495);
      let x_498 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_498));
      let x_501 : f32 = u_xlat19;
      u_xlat19 = ((x_501 * -2.0f) + 1.570796371f);
      let x_504 : bool = u_xlatb29;
      let x_505 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_505, x_504);
      let x_507 : f32 = u_xlat38;
      let x_508 : f32 = u_xlat9;
      let x_510 : f32 = u_xlat19;
      u_xlat38 = ((x_507 * x_508) + x_510);
      let x_512 : f32 = u_xlat36;
      u_xlat36 = min(x_512, 1.0f);
      let x_515 : f32 = u_xlat36;
      let x_516 : f32 = u_xlat36;
      u_xlatb36 = (x_515 < -(x_516));
      let x_519 : bool = u_xlatb36;
      if (x_519) {
        let x_523 : f32 = u_xlat38;
        x_520 = -(x_523);
      } else {
        let x_526 : f32 = u_xlat38;
        x_520 = x_526;
      }
      let x_527 : f32 = x_520;
      u_xlat36 = x_527;
      let x_528 : f32 = u_xlat28;
      let x_529 : f32 = u_xlat36;
      u_xlat36 = ((x_528 * x_529) + -1.0f);
      let x_532 : vec4<f32> = u_xlat7;
      let x_534 : f32 = u_xlat36;
      let x_537 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_532.x, x_532.y) * vec2<f32>(x_534, x_534)) + x_537);
    }
    let x_539 : vec2<f32> = u_xlat8;
    u_xlat8 = x_539;
    let x_540 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_540, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_544 : vec2<f32> = u_xlat8;
    let x_547 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_549 : vec2<f32> = (x_544 * vec2<f32>(x_547, x_547));
    let x_550 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
    let x_557 : vec4<f32> = u_xlat7;
    let x_559 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_557.x, x_557.y), 0.0f);
    u_xlat7 = x_559;
    let x_565 : vec3<f32> = u_xlat2;
    let x_567 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_565.x, x_565.y), 0.0f);
    let x_568 : vec3<f32> = vec3<f32>(x_567.x, x_567.y, x_567.z);
    let x_569 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat7;
    let x_572 : vec4<f32> = u_xlat3;
    let x_574 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_571 * x_572) + x_574);
    let x_576 : vec4<f32> = u_xlat3;
    let x_577 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_576 + x_577);
    let x_579 : vec2<f32> = u_xlat10;
    let x_580 : vec4<f32> = u_xlat6;
    let x_582 : vec2<f32> = (x_579 + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);

    continuing {
      let x_585 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_585 + 1i);
    }
  }
  let x_587 : vec4<f32> = u_xlat4;
  let x_588 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_587 / x_588);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.x, x_590.x) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_603 : vec4<f32> = u_xlat0;
  let x_609 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_612 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_603.x, x_603.y, x_603.w, x_603.y)) * vec4<f32>(x_609.x, x_609.x, x_609.x, x_609.x)) + vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y));
  let x_615 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_615, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_619 * vec4<f32>(x_621, x_621, x_621, x_621));
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_629.x, x_629.y));
  u_xlat5 = x_631;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_635.z, x_635.w));
  u_xlat4 = x_637;
  let x_638 : vec4<f32> = u_xlat4;
  let x_641 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_638 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_641);
  let x_643 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_650 : vec2<f32> = u_xlat21;
  let x_651 : vec2<f32> = ((-(vec2<f32>(x_643.z, x_643.y)) * vec2<f32>(x_647.x, x_647.x)) + x_650);
  let x_652 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_651.x, x_651.y, x_652.z);
  let x_654 : vec3<f32> = u_xlat1;
  let x_658 : vec2<f32> = clamp(vec2<f32>(x_654.x, x_654.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_659 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_658.x, x_658.y, x_659.z);
  let x_661 : vec3<f32> = u_xlat1;
  let x_664 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_666 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_664, x_664));
  let x_667 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_666.x, x_666.y, x_667.z);
  let x_672 : vec3<f32> = u_xlat1;
  let x_674 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_672.x, x_672.y));
  u_xlat5 = x_674;
  let x_675 : vec4<f32> = u_xlat4;
  let x_676 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_675 + x_676);
  let x_678 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_684 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_678.z, x_678.w, x_678.x, x_678.w) * vec4<f32>(x_681.x, x_681.x, x_681.x, x_681.x)) + vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y));
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_687, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_691 : vec4<f32> = u_xlat5;
  let x_693 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_691 * vec4<f32>(x_693, x_693, x_693, x_693));
  let x_699 : vec4<f32> = u_xlat5;
  let x_701 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_699.x, x_699.y));
  u_xlat6 = x_701;
  let x_702 : vec4<f32> = u_xlat6;
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_702 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_704);
  let x_706 : vec2<f32> = u_xlat21;
  let x_707 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_706.x, x_706.y, x_707.z);
  let x_709 : vec3<f32> = u_xlat1;
  let x_713 : vec2<f32> = clamp(vec2<f32>(x_709.x, x_709.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_714 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_713.x, x_713.y, x_714.z);
  let x_716 : vec3<f32> = u_xlat1;
  let x_719 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_721 : vec2<f32> = (vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_719, x_719));
  let x_722 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_721.x, x_721.y, x_722.z);
  let x_727 : vec3<f32> = u_xlat1;
  let x_729 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_727.x, x_727.y));
  u_xlat6 = x_729;
  let x_730 : vec4<f32> = u_xlat6;
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_730 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_734);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_739.z, x_739.w));
  u_xlat5 = x_741;
  let x_742 : vec4<f32> = u_xlat5;
  let x_744 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_742 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_744);
  let x_746 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_752 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_746.z, x_746.y, x_746.w, x_746.y) * vec4<f32>(x_749.x, x_749.x, x_749.x, x_749.x)) + vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y));
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_755, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_759 : vec4<f32> = u_xlat5;
  let x_761 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_759 * vec4<f32>(x_761, x_761, x_761, x_761));
  let x_767 : vec4<f32> = u_xlat5;
  let x_769 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_767.x, x_767.y));
  u_xlat6 = x_769;
  let x_770 : vec4<f32> = u_xlat4;
  let x_771 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_770 + x_771);
  let x_776 : vec4<f32> = u_xlat5;
  let x_778 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_776.z, x_776.w));
  u_xlat5 = x_778;
  let x_779 : vec4<f32> = u_xlat5;
  let x_781 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_779 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_781);
  let x_783 : vec4<f32> = u_xlat0;
  let x_786 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_789 : vec2<f32> = u_xlat21;
  let x_790 : vec2<f32> = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_786.x, x_786.x)) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_797 : vec2<f32> = clamp(vec2<f32>(x_793.x, x_793.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_805 : vec2<f32> = (vec2<f32>(x_800.x, x_800.y) * vec2<f32>(x_803, x_803));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
  let x_811 : vec4<f32> = u_xlat0;
  let x_813 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_811.x, x_811.y));
  u_xlat0 = x_813;
  let x_814 : vec4<f32> = u_xlat0;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_814 + x_815);
  let x_817 : vec4<f32> = u_xlat0;
  let x_819 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_817 * vec4<f32>(x_819.y, x_819.y, x_819.y, x_819.y));
  let x_822 : vec2<f32> = u_xlat21;
  let x_825 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_829 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_831 : vec2<f32> = ((x_822 * vec2<f32>(x_825.x, x_825.y)) + vec2<f32>(x_829.z, x_829.w));
  let x_832 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_831.x, x_831.y, x_832.z);
  let x_839 : vec3<f32> = u_xlat1;
  let x_841 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_839.x, x_839.y));
  let x_842 : vec3<f32> = vec3<f32>(x_841.x, x_841.y, x_841.z);
  let x_843 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_850 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat4;
  let x_855 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_857 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_855.z, x_855.z, x_855.z));
  let x_858 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_860 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_863 : vec4<f32> = u_xlat0;
  let x_867 : vec3<f32> = x_26.x_Bloom_Color;
  let x_868 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * x_867);
  let x_869 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = u_xlat0.w;
  u_xlat6.w = (x_872 * 0.0625f);
  let x_875 : vec4<f32> = u_xlat3;
  let x_876 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_875 + x_876);
  let x_878 : vec4<f32> = u_xlat5;
  let x_880 : vec4<f32> = u_xlat4;
  let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  u_xlat3.w = 0.0f;
  let x_886 : vec4<f32> = u_xlat0;
  let x_887 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_886 + x_887);
  let x_890 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_890 < 0.5f);
  let x_892 : bool = u_xlatb1;
  if (x_892) {
    let x_895 : vec2<f32> = u_xlat21;
    let x_899 : vec2<f32> = x_26.x_Vignette_Center;
    let x_901 : vec2<f32> = (x_895 + -(x_899));
    let x_902 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_901.x, x_901.y, x_902.z);
    let x_904 : vec3<f32> = u_xlat1;
    let x_909 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_911 : vec2<f32> = (abs(vec2<f32>(x_904.y, x_904.x)) * vec2<f32>(x_909.x, x_909.x));
    let x_912 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_912.x, x_911.x, x_911.y, x_912.w);
    let x_915 : f32 = x_26.x_ScreenParams.x;
    let x_917 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_915 / x_917);
    let x_921 : f32 = u_xlat1.x;
    u_xlat1.x = (x_921 + -1.0f);
    let x_925 : f32 = x_26.x_Vignette_Settings.w;
    let x_927 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_925 * x_927) + 1.0f);
    let x_932 : f32 = u_xlat1.x;
    let x_934 : f32 = u_xlat3.z;
    u_xlat3.x = (x_932 * x_934);
    let x_937 : vec4<f32> = u_xlat3;
    let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
    let x_939 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_938.x, x_938.y, x_939.z, x_939.w);
    let x_941 : vec4<f32> = u_xlat3;
    let x_945 : vec2<f32> = clamp(vec2<f32>(x_941.x, x_941.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_946 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_945.x, x_945.y, x_946.z, x_946.w);
    let x_948 : vec4<f32> = u_xlat3;
    let x_950 : vec2<f32> = log2(vec2<f32>(x_948.x, x_948.y));
    let x_951 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_950.x, x_950.y, x_951.z);
    let x_953 : vec3<f32> = u_xlat1;
    let x_956 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_958 : vec2<f32> = (vec2<f32>(x_953.x, x_953.y) * vec2<f32>(x_956.z, x_956.z));
    let x_959 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_958.x, x_958.y, x_959.z);
    let x_961 : vec3<f32> = u_xlat1;
    let x_963 : vec2<f32> = exp2(vec2<f32>(x_961.x, x_961.y));
    let x_964 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_963.x, x_963.y, x_964.z);
    let x_966 : vec3<f32> = u_xlat1;
    let x_968 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_966.x, x_966.y), vec2<f32>(x_968.x, x_968.y));
    let x_973 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_973) + 1.0f);
    let x_978 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_978, 0.0f);
    let x_982 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_982);
    let x_986 : f32 = u_xlat1.x;
    let x_988 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_986 * x_988);
    let x_992 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_992);
    let x_997 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1000 : vec3<f32> = (-(x_997) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1001 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
    let x_1003 : vec3<f32> = u_xlat1;
    let x_1005 : vec4<f32> = u_xlat3;
    let x_1009 : vec3<f32> = x_26.x_Vignette_Color;
    let x_1010 : vec3<f32> = ((vec3<f32>(x_1003.x, x_1003.x, x_1003.x) * vec3<f32>(x_1005.x, x_1005.y, x_1005.z)) + x_1009);
    let x_1011 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
    let x_1013 : vec4<f32> = u_xlat0;
    let x_1015 : vec4<f32> = u_xlat3;
    let x_1017 : vec3<f32> = (vec3<f32>(x_1013.x, x_1013.y, x_1013.z) * vec3<f32>(x_1015.x, x_1015.y, x_1015.z));
    let x_1018 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
    let x_1022 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1022 + -1.0f);
    let x_1026 : f32 = u_xlat1.x;
    let x_1028 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1026 * x_1028) + 1.0f);
  } else {
    let x_1038 : vec2<f32> = u_xlat21;
    let x_1039 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1038);
    u_xlat1.x = x_1039.w;
    let x_1043 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1043 + 0.055f);
    let x_1047 : vec3<f32> = u_xlat1;
    let x_1052 : vec2<f32> = (vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1053 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1052.x, x_1052.y, x_1053.z);
    let x_1056 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1056), 1.1920929e-07f);
    let x_1062 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1062);
    let x_1066 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1066 * 2.400000095f);
    let x_1071 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1071);
    let x_1076 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1076);
    let x_1078 : bool = u_xlatb1;
    if (x_1078) {
      let x_1083 : f32 = u_xlat11.x;
      x_1079 = x_1083;
    } else {
      let x_1086 : f32 = u_xlat21.x;
      x_1079 = x_1086;
    }
    let x_1087 : f32 = x_1079;
    u_xlat1.x = x_1087;
    let x_1090 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1090) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1093 : vec3<f32> = u_xlat1;
    let x_1095 : vec3<f32> = u_xlat11;
    let x_1098 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1093.x, x_1093.x, x_1093.x) * x_1095) + x_1098);
    let x_1100 : vec4<f32> = u_xlat0;
    let x_1102 : vec3<f32> = u_xlat11;
    let x_1104 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1100.x, x_1100.y, x_1100.z) * x_1102) + -(vec3<f32>(x_1104.x, x_1104.y, x_1104.z)));
    let x_1110 : f32 = x_26.x_Vignette_Opacity;
    let x_1112 : vec3<f32> = u_xlat11;
    let x_1114 : vec4<f32> = u_xlat0;
    let x_1116 : vec3<f32> = ((vec3<f32>(x_1110, x_1110, x_1110) * x_1112) + vec3<f32>(x_1114.x, x_1114.y, x_1114.z));
    let x_1117 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1117.w);
    let x_1120 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1120 + -1.0f);
    let x_1124 : f32 = u_xlat1.x;
    let x_1126 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1124 * x_1126) + 1.0f);
  }
  let x_1130 : vec4<f32> = u_xlat3;
  let x_1133 : f32 = x_26.x_PostExposure;
  let x_1135 : f32 = x_26.x_PostExposure;
  let x_1137 : f32 = x_26.x_PostExposure;
  let x_1139 : f32 = x_26.x_PostExposure;
  let x_1140 : vec4<f32> = vec4<f32>(x_1133, x_1135, x_1137, x_1139);
  u_xlat0 = (x_1130 * vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.w));
  let x_1147 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1147.z, x_1147.x, x_1147.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1155 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1155);
  let x_1157 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1157 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1164 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1164, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1168 : vec3<f32> = u_xlat1;
  let x_1171 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (x_1168 * vec3<f32>(x_1171.z, x_1171.z, x_1171.z));
  let x_1175 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1175);
  let x_1179 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1181 : vec2<f32> = (vec2<f32>(x_1179.x, x_1179.y) * vec2<f32>(0.5f, 0.5f));
  let x_1182 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1181.x, x_1181.y, x_1182.z);
  let x_1184 : vec3<f32> = u_xlat11;
  let x_1187 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1190 : vec3<f32> = u_xlat2;
  let x_1192 : vec2<f32> = ((vec2<f32>(x_1184.y, x_1184.z) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.x, x_1190.y));
  let x_1193 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1193.x, x_1192.x, x_1192.y, x_1193.w);
  let x_1196 : f32 = u_xlat11.x;
  let x_1198 : f32 = x_26.x_Lut2D_Params.y;
  let x_1201 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_1196 * x_1198) + x_1201);
  let x_1209 : vec4<f32> = u_xlat3;
  let x_1211 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1209.x, x_1209.z));
  let x_1212 : vec3<f32> = vec3<f32>(x_1211.x, x_1211.y, x_1211.z);
  let x_1213 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1216 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1216;
  let x_1218 : vec2<f32> = u_xlat22;
  let x_1219 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_1218 + vec2<f32>(x_1219.x, x_1219.z));
  let x_1225 : vec2<f32> = u_xlat21;
  let x_1226 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1225);
  u_xlat2 = vec3<f32>(x_1226.x, x_1226.y, x_1226.z);
  let x_1229 : f32 = u_xlat1.x;
  let x_1231 : f32 = x_26.x_Lut2D_Params.z;
  let x_1234 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1229 * x_1231) + -(x_1234));
  let x_1238 : vec4<f32> = u_xlat4;
  let x_1241 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1238.x, x_1238.y, x_1238.z)) + x_1241);
  let x_1243 : vec3<f32> = u_xlat1;
  let x_1245 : vec3<f32> = u_xlat11;
  let x_1247 : vec4<f32> = u_xlat4;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1243.x, x_1243.x, x_1243.x) * x_1245) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1254 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1254);
  let x_1256 : bool = u_xlatb1;
  if (x_1256) {
    let x_1259 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1259.x, x_1259.y, x_1259.z);
    let x_1261 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1261, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1265 : vec3<f32> = u_xlat1;
    u_xlat0.w = dot(x_1265, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1274 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1274;
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

