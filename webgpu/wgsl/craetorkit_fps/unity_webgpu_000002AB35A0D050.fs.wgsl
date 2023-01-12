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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(16) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(17) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(15) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
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
  var x_941 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1316 : f32;
  var x_1328 : f32;
  var x_1340 : f32;
  var x_1392 : f32;
  var x_1405 : f32;
  var x_1417 : f32;
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
  let x_60 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec4<f32> = u_xlat1;
    let x_89 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat21 = (vec2<f32>(x_86.x, x_86.x) * vec2<f32>(x_89.x, x_89.y));
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
    let x_248 : vec4<f32> = u_xlat1;
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
  let x_328 : vec4<f32> = u_xlat1;
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
  let x_610 : vec4<f32> = u_xlat1;
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
  let x_644 : vec4<f32> = u_xlat1;
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
  let x_693 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
  let x_700 : vec4<f32> = u_xlat1;
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
  let x_752 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_752 < 0.5f);
  let x_754 : bool = u_xlatb1;
  if (x_754) {
    let x_757 : vec2<f32> = u_xlat21;
    let x_761 : vec2<f32> = x_26.x_Vignette_Center;
    let x_763 : vec2<f32> = (x_757 + -(x_761));
    let x_764 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_763.x, x_763.y, x_764.z, x_764.w);
    let x_766 : vec4<f32> = u_xlat1;
    let x_771 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_773 : vec2<f32> = (abs(vec2<f32>(x_766.y, x_766.x)) * vec2<f32>(x_771.x, x_771.x));
    let x_774 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_774.x, x_773.x, x_773.y, x_774.w);
    let x_777 : f32 = x_26.x_ScreenParams.x;
    let x_779 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_777 / x_779);
    let x_783 : f32 = u_xlat1.x;
    u_xlat1.x = (x_783 + -1.0f);
    let x_787 : f32 = x_26.x_Vignette_Settings.w;
    let x_789 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_787 * x_789) + 1.0f);
    let x_794 : f32 = u_xlat1.x;
    let x_796 : f32 = u_xlat3.z;
    u_xlat3.x = (x_794 * x_796);
    let x_799 : vec4<f32> = u_xlat3;
    let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
    let x_801 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
    let x_803 : vec4<f32> = u_xlat3;
    let x_807 : vec2<f32> = clamp(vec2<f32>(x_803.x, x_803.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_808 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
    let x_810 : vec4<f32> = u_xlat3;
    let x_812 : vec2<f32> = log2(vec2<f32>(x_810.x, x_810.y));
    let x_813 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
    let x_815 : vec4<f32> = u_xlat1;
    let x_818 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_820 : vec2<f32> = (vec2<f32>(x_815.x, x_815.y) * vec2<f32>(x_818.z, x_818.z));
    let x_821 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_820.x, x_820.y, x_821.z, x_821.w);
    let x_823 : vec4<f32> = u_xlat1;
    let x_825 : vec2<f32> = exp2(vec2<f32>(x_823.x, x_823.y));
    let x_826 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
    let x_828 : vec4<f32> = u_xlat1;
    let x_830 : vec4<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_828.x, x_828.y), vec2<f32>(x_830.x, x_830.y));
    let x_835 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_835) + 1.0f);
    let x_840 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_840, 0.0f);
    let x_844 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_844);
    let x_848 : f32 = u_xlat1.x;
    let x_850 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_848 * x_850);
    let x_854 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_854);
    let x_859 : vec3<f32> = x_26.x_Vignette_Color;
    let x_862 : vec3<f32> = (-(x_859) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_863 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_865 : vec4<f32> = u_xlat1;
    let x_867 : vec4<f32> = u_xlat3;
    let x_871 : vec3<f32> = x_26.x_Vignette_Color;
    let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.x, x_865.x) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + x_871);
    let x_873 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_875 : vec4<f32> = u_xlat0;
    let x_877 : vec4<f32> = u_xlat3;
    let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_877.x, x_877.y, x_877.z));
    let x_880 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
    let x_884 : f32 = u_xlat0.w;
    u_xlat11.x = (x_884 + -1.0f);
    let x_888 : f32 = u_xlat1.x;
    let x_890 : f32 = u_xlat11.x;
    u_xlat4.w = ((x_888 * x_890) + 1.0f);
  } else {
    let x_900 : vec2<f32> = u_xlat21;
    let x_901 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_900);
    u_xlat1.x = x_901.w;
    let x_905 : f32 = u_xlat1.x;
    u_xlat1.z = (x_905 + 0.055f);
    let x_909 : vec4<f32> = u_xlat1;
    let x_914 : vec2<f32> = (vec2<f32>(x_909.x, x_909.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_915 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_914.x, x_914.y, x_915.z);
    let x_918 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_918), 1.1920929e-07f);
    let x_924 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_924);
    let x_928 : f32 = u_xlat21.x;
    u_xlat21.x = (x_928 * 2.400000095f);
    let x_933 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_933);
    let x_938 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_938);
    let x_940 : bool = u_xlatb1;
    if (x_940) {
      let x_945 : f32 = u_xlat11.x;
      x_941 = x_945;
    } else {
      let x_948 : f32 = u_xlat21.x;
      x_941 = x_948;
    }
    let x_949 : f32 = x_941;
    u_xlat1.x = x_949;
    let x_952 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_952) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_955 : vec4<f32> = u_xlat1;
    let x_957 : vec3<f32> = u_xlat11;
    let x_960 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * x_957) + x_960);
    let x_962 : vec4<f32> = u_xlat0;
    let x_964 : vec3<f32> = u_xlat11;
    let x_966 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_962.x, x_962.y, x_962.z) * x_964) + -(vec3<f32>(x_966.x, x_966.y, x_966.z)));
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
  let x_1016 : vec3<f32> = vec3<f32>(x_1015.x, x_1015.y, x_1015.z);
  let x_1017 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1019 : vec4<f32> = u_xlat1;
  let x_1023 : vec3<f32> = clamp(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1024 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_1026.x, x_1026.y, x_1026.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1033 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1033);
  let x_1037 : f32 = x_26.x_Grain_Params1.x;
  let x_1038 : f32 = u_xlat30;
  u_xlat30 = ((x_1037 * -(x_1038)) + 1.0f);
  let x_1042 : vec4<f32> = u_xlat0;
  let x_1044 : vec4<f32> = u_xlat3;
  let x_1046 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat0;
  let x_1052 : f32 = x_26.x_Grain_Params1.y;
  let x_1054 : f32 = x_26.x_Grain_Params1.y;
  let x_1056 : f32 = x_26.x_Grain_Params1.y;
  let x_1058 : vec3<f32> = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(x_1052, x_1054, x_1056));
  let x_1059 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1059.w);
  let x_1061 : vec4<f32> = u_xlat0;
  let x_1063 : f32 = u_xlat30;
  let x_1066 : vec4<f32> = u_xlat3;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1061.x, x_1061.y, x_1061.z) * vec3<f32>(x_1063, x_1063, x_1063)) + vec3<f32>(x_1066.x, x_1066.y, x_1066.z));
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat4;
  let x_1074 : f32 = x_26.x_PostExposure;
  let x_1076 : f32 = x_26.x_PostExposure;
  let x_1078 : f32 = x_26.x_PostExposure;
  let x_1080 : f32 = x_26.x_PostExposure;
  let x_1081 : vec4<f32> = vec4<f32>(x_1074, x_1076, x_1078, x_1080);
  u_xlat0 = (x_1071 * vec4<f32>(x_1081.x, x_1081.y, x_1081.z, x_1081.w));
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1095 : vec3<f32> = ((vec3<f32>(x_1088.z, x_1088.x, x_1088.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat0;
  let x_1100 : vec3<f32> = log2(vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat0;
  let x_1110 : vec3<f32> = ((vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1111 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1110.x, x_1110.y, x_1110.z, x_1111.w);
  let x_1113 : vec4<f32> = u_xlat0;
  let x_1117 : vec3<f32> = clamp(vec3<f32>(x_1113.x, x_1113.y, x_1113.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1118.w);
  let x_1120 : vec4<f32> = u_xlat0;
  let x_1124 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1126 : vec3<f32> = (vec3<f32>(x_1120.x, x_1120.y, x_1120.z) * vec3<f32>(x_1124.z, x_1124.z, x_1124.z));
  let x_1127 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1130 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_1130);
  let x_1134 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1136 : vec2<f32> = (vec2<f32>(x_1134.x, x_1134.y) * vec2<f32>(0.5f, 0.5f));
  let x_1137 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1136.x, x_1137.y, x_1137.z, x_1136.y);
  let x_1139 : vec4<f32> = u_xlat1;
  let x_1142 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1145 : vec4<f32> = u_xlat1;
  let x_1147 : vec2<f32> = ((vec2<f32>(x_1139.y, x_1139.z) * vec2<f32>(x_1142.x, x_1142.y)) + vec2<f32>(x_1145.x, x_1145.w));
  let x_1148 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1148.x, x_1147.x, x_1147.y, x_1148.w);
  let x_1151 : f32 = u_xlat10.x;
  let x_1153 : f32 = x_26.x_Lut2D_Params.y;
  let x_1156 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1151 * x_1153) + x_1156);
  let x_1164 : vec4<f32> = u_xlat1;
  let x_1166 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1164.x, x_1164.z));
  let x_1167 : vec3<f32> = vec3<f32>(x_1166.x, x_1166.y, x_1166.z);
  let x_1168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1171 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1171;
  let x_1173 : vec2<f32> = u_xlat22;
  let x_1174 : vec4<f32> = u_xlat1;
  let x_1176 : vec2<f32> = (x_1173 + vec2<f32>(x_1174.x, x_1174.z));
  let x_1177 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1176.x, x_1176.y, x_1177.z, x_1177.w);
  let x_1182 : vec4<f32> = u_xlat1;
  let x_1184 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1182.x, x_1182.y));
  let x_1185 : vec3<f32> = vec3<f32>(x_1184.x, x_1184.y, x_1184.z);
  let x_1186 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1185.x, x_1185.y, x_1185.z, x_1186.w);
  let x_1189 : f32 = u_xlat0.x;
  let x_1191 : f32 = x_26.x_Lut2D_Params.z;
  let x_1194 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1189 * x_1191) + -(x_1194));
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1201 : vec4<f32> = u_xlat1;
  let x_1203 : vec3<f32> = (-(vec3<f32>(x_1198.x, x_1198.y, x_1198.z)) + vec3<f32>(x_1201.x, x_1201.y, x_1201.z));
  let x_1204 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat0;
  let x_1208 : vec4<f32> = u_xlat1;
  let x_1211 : vec4<f32> = u_xlat3;
  let x_1213 : vec3<f32> = ((vec3<f32>(x_1206.x, x_1206.x, x_1206.x) * vec3<f32>(x_1208.x, x_1208.y, x_1208.z)) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
  let x_1214 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1213.x, x_1213.y, x_1213.z, x_1214.w);
  let x_1216 : vec2<f32> = vs_TEXCOORD0;
  let x_1219 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1223 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1225 : vec2<f32> = ((x_1216 * vec2<f32>(x_1219.x, x_1219.y)) + vec2<f32>(x_1223.z, x_1223.w));
  let x_1226 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1225.x, x_1225.y, x_1226.z, x_1226.w);
  let x_1233 : vec4<f32> = u_xlat1;
  let x_1235 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1233.x, x_1233.y));
  u_xlat1.x = x_1235.w;
  let x_1239 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1239 * 2.0f) + -1.0f);
  let x_1244 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1244 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1250 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1250, 0.0f, 1.0f);
  let x_1254 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1254 * 2.0f) + -1.0f);
  let x_1259 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1259)) + 1.0f);
  let x_1265 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1265);
  let x_1269 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1269) + 1.0f);
  let x_1274 : f32 = u_xlat1.x;
  let x_1276 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1274 * x_1276);
  let x_1279 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1279.x, x_1279.y, x_1279.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1284 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1284.x, x_1284.y, x_1284.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1289 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1289);
  let x_1291 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1291 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1295 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1295);
  let x_1297 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1297 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1309 : vec4<f32> = u_xlat0;
  let x_1312 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1309.x));
  u_xlatb0 = vec3<bool>(x_1312.x, x_1312.y, x_1312.z);
  let x_1315 : bool = u_xlatb0.x;
  if (x_1315) {
    let x_1320 : f32 = u_xlat11.x;
    x_1316 = x_1320;
  } else {
    let x_1323 : f32 = u_xlat2.x;
    x_1316 = x_1323;
  }
  let x_1324 : f32 = x_1316;
  u_xlat0.x = x_1324;
  let x_1327 : bool = u_xlatb0.y;
  if (x_1327) {
    let x_1332 : f32 = u_xlat11.y;
    x_1328 = x_1332;
  } else {
    let x_1335 : f32 = u_xlat2.y;
    x_1328 = x_1335;
  }
  let x_1336 : f32 = x_1328;
  u_xlat0.y = x_1336;
  let x_1339 : bool = u_xlatb0.z;
  if (x_1339) {
    let x_1344 : f32 = u_xlat11.z;
    x_1340 = x_1344;
  } else {
    let x_1347 : f32 = u_xlat2.z;
    x_1340 = x_1347;
  }
  let x_1348 : f32 = x_1340;
  u_xlat0.z = x_1348;
  let x_1350 : vec4<f32> = u_xlat1;
  let x_1355 : vec4<f32> = u_xlat0;
  let x_1357 : vec3<f32> = ((vec3<f32>(x_1350.x, x_1350.x, x_1350.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1355.x, x_1355.y, x_1355.z));
  let x_1358 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1357.x, x_1357.y, x_1357.z, x_1358.w);
  let x_1360 : vec4<f32> = u_xlat0;
  let x_1363 : vec3<f32> = (vec3<f32>(x_1360.x, x_1360.y, x_1360.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1370 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1370 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1373 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1373), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1376 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1376);
  let x_1378 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1378 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1381 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1381);
  let x_1384 : vec4<f32> = u_xlat0;
  let x_1386 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1384.x, x_1384.y, x_1384.z, x_1384.x));
  u_xlatb0 = vec3<bool>(x_1386.x, x_1386.y, x_1386.z);
  let x_1391 : bool = u_xlatb0.x;
  if (x_1391) {
    let x_1396 : f32 = u_xlat1.x;
    x_1392 = x_1396;
  } else {
    let x_1399 : f32 = u_xlat2.x;
    x_1392 = x_1399;
  }
  let x_1400 : f32 = x_1392;
  SV_Target0.x = x_1400;
  let x_1404 : bool = u_xlatb0.y;
  if (x_1404) {
    let x_1409 : f32 = u_xlat1.y;
    x_1405 = x_1409;
  } else {
    let x_1412 : f32 = u_xlat2.y;
    x_1405 = x_1412;
  }
  let x_1413 : f32 = x_1405;
  SV_Target0.y = x_1413;
  let x_1416 : bool = u_xlatb0.z;
  if (x_1416) {
    let x_1421 : f32 = u_xlat1.z;
    x_1417 = x_1421;
  } else {
    let x_1424 : f32 = u_xlat2.z;
    x_1417 = x_1424;
  }
  let x_1425 : f32 = x_1417;
  SV_Target0.z = x_1425;
  let x_1428 : f32 = u_xlat0.w;
  SV_Target0.w = x_1428;
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

