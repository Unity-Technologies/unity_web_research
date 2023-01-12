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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

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
  var x_940 : f32;
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
  u_xlat0 = (vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_605 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_605 * 0.5f);
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = u_xlat1;
  let x_613 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.y) * vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.x)) + vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_616, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat4;
  let x_622 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_620 * vec4<f32>(x_622, x_622, x_622, x_622));
  let x_630 : vec4<f32> = u_xlat4;
  let x_632 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_630.x, x_630.y));
  u_xlat5 = x_632;
  let x_636 : vec4<f32> = u_xlat4;
  let x_638 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_636.z, x_636.w));
  u_xlat4 = x_638;
  let x_639 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_639 + x_640);
  let x_642 : vec4<f32> = u_xlat0;
  let x_644 : vec3<f32> = u_xlat1;
  let x_647 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_642.x, x_642.w, x_642.z, x_642.w) * vec4<f32>(x_644.x, x_644.x, x_644.x, x_644.x)) + vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y));
  let x_650 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_650, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_654 * vec4<f32>(x_656, x_656, x_656, x_656));
  let x_662 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_662.x, x_662.y));
  u_xlat5 = x_664;
  let x_665 : vec4<f32> = u_xlat4;
  let x_666 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_665 + x_666);
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_671.z, x_671.w));
  u_xlat0 = x_673;
  let x_674 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_674 + x_675);
  let x_677 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_677 * vec4<f32>(x_680.y, x_680.y, x_680.y, x_680.y));
  let x_683 : vec2<f32> = u_xlat21;
  let x_686 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_690 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_692 : vec2<f32> = ((x_683 * vec2<f32>(x_686.x, x_686.y)) + vec2<f32>(x_690.z, x_690.w));
  let x_693 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_692.x, x_692.y, x_693.z);
  let x_700 : vec3<f32> = u_xlat1;
  let x_702 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_700.x, x_700.y));
  let x_703 : vec3<f32> = vec3<f32>(x_702.x, x_702.y, x_702.z);
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_711 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat4;
  let x_716 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_718 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_716.z, x_716.z, x_716.z));
  let x_719 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_721 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_724 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = x_26.x_Bloom_Color;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * x_728);
  let x_730 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : f32 = u_xlat0.w;
  u_xlat6.w = (x_733 * 0.25f);
  let x_736 : vec4<f32> = u_xlat3;
  let x_737 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_736 + x_737);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec4<f32> = u_xlat4;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  u_xlat3.w = 0.0f;
  let x_747 : vec4<f32> = u_xlat0;
  let x_748 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_747 + x_748);
  let x_751 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_751 < 0.5f);
  let x_753 : bool = u_xlatb1;
  if (x_753) {
    let x_756 : vec2<f32> = u_xlat21;
    let x_760 : vec2<f32> = x_26.x_Vignette_Center;
    let x_762 : vec2<f32> = (x_756 + -(x_760));
    let x_763 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_762.x, x_762.y, x_763.z);
    let x_765 : vec3<f32> = u_xlat1;
    let x_770 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_772 : vec2<f32> = (abs(vec2<f32>(x_765.y, x_765.x)) * vec2<f32>(x_770.x, x_770.x));
    let x_773 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_773.x, x_772.x, x_772.y, x_773.w);
    let x_776 : f32 = x_26.x_ScreenParams.x;
    let x_778 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_776 / x_778);
    let x_782 : f32 = u_xlat1.x;
    u_xlat1.x = (x_782 + -1.0f);
    let x_786 : f32 = x_26.x_Vignette_Settings.w;
    let x_788 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_786 * x_788) + 1.0f);
    let x_793 : f32 = u_xlat1.x;
    let x_795 : f32 = u_xlat3.z;
    u_xlat3.x = (x_793 * x_795);
    let x_798 : vec4<f32> = u_xlat3;
    let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
    let x_800 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
    let x_802 : vec4<f32> = u_xlat3;
    let x_806 : vec2<f32> = clamp(vec2<f32>(x_802.x, x_802.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_807 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_806.x, x_806.y, x_807.z, x_807.w);
    let x_809 : vec4<f32> = u_xlat3;
    let x_811 : vec2<f32> = log2(vec2<f32>(x_809.x, x_809.y));
    let x_812 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_811.x, x_811.y, x_812.z);
    let x_814 : vec3<f32> = u_xlat1;
    let x_817 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_819 : vec2<f32> = (vec2<f32>(x_814.x, x_814.y) * vec2<f32>(x_817.z, x_817.z));
    let x_820 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_819.x, x_819.y, x_820.z);
    let x_822 : vec3<f32> = u_xlat1;
    let x_824 : vec2<f32> = exp2(vec2<f32>(x_822.x, x_822.y));
    let x_825 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_824.x, x_824.y, x_825.z);
    let x_827 : vec3<f32> = u_xlat1;
    let x_829 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_827.x, x_827.y), vec2<f32>(x_829.x, x_829.y));
    let x_834 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_834) + 1.0f);
    let x_839 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_839, 0.0f);
    let x_843 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_843);
    let x_847 : f32 = u_xlat1.x;
    let x_849 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_847 * x_849);
    let x_853 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_853);
    let x_858 : vec3<f32> = x_26.x_Vignette_Color;
    let x_861 : vec3<f32> = (-(x_858) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_862 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
    let x_864 : vec3<f32> = u_xlat1;
    let x_866 : vec4<f32> = u_xlat3;
    let x_870 : vec3<f32> = x_26.x_Vignette_Color;
    let x_871 : vec3<f32> = ((vec3<f32>(x_864.x, x_864.x, x_864.x) * vec3<f32>(x_866.x, x_866.y, x_866.z)) + x_870);
    let x_872 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_871.x, x_871.y, x_871.z, x_872.w);
    let x_874 : vec4<f32> = u_xlat0;
    let x_876 : vec4<f32> = u_xlat3;
    let x_878 : vec3<f32> = (vec3<f32>(x_874.x, x_874.y, x_874.z) * vec3<f32>(x_876.x, x_876.y, x_876.z));
    let x_879 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_878.x, x_878.y, x_878.z, x_879.w);
    let x_883 : f32 = u_xlat0.w;
    u_xlat11.x = (x_883 + -1.0f);
    let x_887 : f32 = u_xlat1.x;
    let x_889 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_887 * x_889) + 1.0f);
  } else {
    let x_899 : vec2<f32> = u_xlat21;
    let x_900 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_899);
    u_xlat1.x = x_900.w;
    let x_904 : f32 = u_xlat1.x;
    u_xlat1.z = (x_904 + 0.055f);
    let x_908 : vec3<f32> = u_xlat1;
    let x_913 : vec2<f32> = (vec2<f32>(x_908.x, x_908.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_914 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_913.x, x_913.y, x_914.z);
    let x_917 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_917), 1.1920929e-07f);
    let x_923 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_923);
    let x_927 : f32 = u_xlat21.x;
    u_xlat21.x = (x_927 * 2.400000095f);
    let x_932 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_932);
    let x_937 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_937);
    let x_939 : bool = u_xlatb1;
    if (x_939) {
      let x_944 : f32 = u_xlat11.x;
      x_940 = x_944;
    } else {
      let x_947 : f32 = u_xlat21.x;
      x_940 = x_947;
    }
    let x_948 : f32 = x_940;
    u_xlat1.x = x_948;
    let x_951 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_951) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_954 : vec3<f32> = u_xlat1;
    let x_956 : vec3<f32> = u_xlat11;
    let x_959 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_954.x, x_954.x, x_954.x) * x_956) + x_959);
    let x_961 : vec4<f32> = u_xlat0;
    let x_963 : vec3<f32> = u_xlat11;
    let x_965 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_961.x, x_961.y, x_961.z) * x_963) + -(vec3<f32>(x_965.x, x_965.y, x_965.z)));
    let x_971 : f32 = x_26.x_Vignette_Opacity;
    let x_973 : vec3<f32> = u_xlat11;
    let x_975 : vec4<f32> = u_xlat0;
    let x_977 : vec3<f32> = ((vec3<f32>(x_971, x_971, x_971) * x_973) + vec3<f32>(x_975.x, x_975.y, x_975.z));
    let x_978 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_977.x, x_977.y, x_977.z, x_978.w);
    let x_981 : f32 = u_xlat0.w;
    u_xlat0.x = (x_981 + -1.0f);
    let x_985 : f32 = u_xlat1.x;
    let x_987 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_985 * x_987) + 1.0f);
  }
  let x_992 : vec2<f32> = vs_TEXCOORD1;
  let x_995 : vec4<f32> = x_26.x_Grain_Params2;
  let x_999 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1001 : vec2<f32> = ((x_992 * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_999.z, x_999.w));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
  let x_1009 : vec4<f32> = u_xlat0;
  let x_1011 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1009.x, x_1009.y));
  let x_1012 : vec3<f32> = vec3<f32>(x_1011.x, x_1011.y, x_1011.z);
  let x_1013 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1012.x, x_1012.y, x_1012.z, x_1013.w);
  let x_1015 : vec4<f32> = u_xlat3;
  u_xlat1 = vec3<f32>(x_1015.x, x_1015.y, x_1015.z);
  let x_1017 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1017, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1021 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1021, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1027 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1027);
  let x_1031 : f32 = x_26.x_Grain_Params1.x;
  let x_1032 : f32 = u_xlat30;
  u_xlat30 = ((x_1031 * -(x_1032)) + 1.0f);
  let x_1036 : vec4<f32> = u_xlat0;
  let x_1038 : vec4<f32> = u_xlat3;
  let x_1040 : vec3<f32> = (vec3<f32>(x_1036.x, x_1036.y, x_1036.z) * vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat0;
  let x_1046 : f32 = x_26.x_Grain_Params1.y;
  let x_1048 : f32 = x_26.x_Grain_Params1.y;
  let x_1050 : f32 = x_26.x_Grain_Params1.y;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(x_1046, x_1048, x_1050));
  let x_1053 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat0;
  let x_1057 : f32 = u_xlat30;
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1062 : vec3<f32> = ((vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(x_1057, x_1057, x_1057)) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat4;
  let x_1068 : f32 = x_26.x_PostExposure;
  let x_1070 : f32 = x_26.x_PostExposure;
  let x_1072 : f32 = x_26.x_PostExposure;
  let x_1074 : f32 = x_26.x_PostExposure;
  let x_1075 : vec4<f32> = vec4<f32>(x_1068, x_1070, x_1072, x_1074);
  u_xlat0 = (x_1065 * vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1075.w));
  let x_1082 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1082.z, x_1082.x, x_1082.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1090 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1090);
  let x_1092 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1092 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1099 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1099, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1103 : vec3<f32> = u_xlat1;
  let x_1106 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (x_1103 * vec3<f32>(x_1106.z, x_1106.z, x_1106.z));
  let x_1110 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1110);
  let x_1114 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1116 : vec2<f32> = (vec2<f32>(x_1114.x, x_1114.y) * vec2<f32>(0.5f, 0.5f));
  let x_1117 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1116.x, x_1116.y, x_1117.z);
  let x_1119 : vec3<f32> = u_xlat11;
  let x_1122 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1125 : vec3<f32> = u_xlat2;
  let x_1127 : vec2<f32> = ((vec2<f32>(x_1119.y, x_1119.z) * vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(x_1125.x, x_1125.y));
  let x_1128 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1128.x, x_1127.x, x_1127.y, x_1128.w);
  let x_1131 : f32 = u_xlat11.x;
  let x_1133 : f32 = x_26.x_Lut2D_Params.y;
  let x_1136 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_1131 * x_1133) + x_1136);
  let x_1144 : vec4<f32> = u_xlat3;
  let x_1146 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1144.x, x_1144.z));
  let x_1147 : vec3<f32> = vec3<f32>(x_1146.x, x_1146.y, x_1146.z);
  let x_1148 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1151 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1151;
  let x_1153 : vec2<f32> = u_xlat22;
  let x_1154 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_1153 + vec2<f32>(x_1154.x, x_1154.z));
  let x_1160 : vec2<f32> = u_xlat21;
  let x_1161 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1160);
  u_xlat2 = vec3<f32>(x_1161.x, x_1161.y, x_1161.z);
  let x_1164 : f32 = u_xlat1.x;
  let x_1166 : f32 = x_26.x_Lut2D_Params.z;
  let x_1169 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1164 * x_1166) + -(x_1169));
  let x_1173 : vec4<f32> = u_xlat4;
  let x_1176 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1173.x, x_1173.y, x_1173.z)) + x_1176);
  let x_1178 : vec3<f32> = u_xlat1;
  let x_1180 : vec3<f32> = u_xlat11;
  let x_1182 : vec4<f32> = u_xlat4;
  let x_1184 : vec3<f32> = ((vec3<f32>(x_1178.x, x_1178.x, x_1178.x) * x_1180) + vec3<f32>(x_1182.x, x_1182.y, x_1182.z));
  let x_1185 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1184.x, x_1184.y, x_1184.z, x_1185.w);
  let x_1189 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1189);
  let x_1191 : bool = u_xlatb1;
  if (x_1191) {
    let x_1194 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1194.x, x_1194.y, x_1194.z);
    let x_1196 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1196, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1200 : vec3<f32> = u_xlat1;
    u_xlat0.w = dot(x_1200, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1205 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1205;
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

