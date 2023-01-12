struct PGlobals {
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
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

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
    let x_546 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_548 : vec2<f32> = (x_544 * vec2<f32>(x_546, x_546));
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
    let x_579 : vec4<f32> = u_xlat6;
    let x_581 : vec2<f32> = (x_578 + vec2<f32>(x_579.x, x_579.y));
    let x_582 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_581.x, x_581.y, x_582.z, x_582.w);

    continuing {
      let x_584 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_584 + 1i);
    }
  }
  let x_586 : vec4<f32> = u_xlat4;
  let x_587 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_586 / x_587);
  let x_589 : vec4<f32> = u_xlat0;
  let x_591 : vec4<f32> = u_xlat3;
  let x_593 : vec3<f32> = (vec3<f32>(x_589.x, x_589.x, x_589.x) * vec3<f32>(x_591.x, x_591.y, x_591.z));
  let x_594 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_598 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_602 : vec4<f32> = u_xlat0;
  let x_608 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_611 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_602.x, x_602.y, x_602.w, x_602.y)) * vec4<f32>(x_608.x, x_608.x, x_608.x, x_608.x)) + vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y));
  let x_614 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_614, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_618 : vec4<f32> = u_xlat4;
  let x_620 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_618 * vec4<f32>(x_620, x_620, x_620, x_620));
  let x_628 : vec4<f32> = u_xlat4;
  let x_630 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_628.x, x_628.y));
  u_xlat5 = x_630;
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_634.z, x_634.w));
  u_xlat4 = x_636;
  let x_637 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_637 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_640);
  let x_642 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_649 : vec2<f32> = u_xlat21;
  let x_650 : vec2<f32> = ((-(vec2<f32>(x_642.z, x_642.y)) * vec2<f32>(x_646.x, x_646.x)) + x_649);
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat1;
  let x_657 : vec2<f32> = clamp(vec2<f32>(x_653.x, x_653.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_658 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_657.x, x_657.y, x_658.z, x_658.w);
  let x_660 : vec4<f32> = u_xlat1;
  let x_663 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_665 : vec2<f32> = (vec2<f32>(x_660.x, x_660.y) * vec2<f32>(x_663, x_663));
  let x_666 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_665.x, x_665.y, x_666.z, x_666.w);
  let x_671 : vec4<f32> = u_xlat1;
  let x_673 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_671.x, x_671.y));
  u_xlat5 = x_673;
  let x_674 : vec4<f32> = u_xlat4;
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_674 + x_675);
  let x_677 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_683 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_677.z, x_677.w, x_677.x, x_677.w) * vec4<f32>(x_680.x, x_680.x, x_680.x, x_680.x)) + vec4<f32>(x_683.x, x_683.y, x_683.x, x_683.y));
  let x_686 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_686, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_690 : vec4<f32> = u_xlat5;
  let x_692 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_690 * vec4<f32>(x_692, x_692, x_692, x_692));
  let x_698 : vec4<f32> = u_xlat5;
  let x_700 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_698.x, x_698.y));
  u_xlat6 = x_700;
  let x_701 : vec4<f32> = u_xlat6;
  let x_703 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_701 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_703);
  let x_705 : vec2<f32> = u_xlat21;
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat1;
  let x_712 : vec2<f32> = clamp(vec2<f32>(x_708.x, x_708.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_713 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_712.x, x_712.y, x_713.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat1;
  let x_718 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_720 : vec2<f32> = (vec2<f32>(x_715.x, x_715.y) * vec2<f32>(x_718, x_718));
  let x_721 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
  let x_726 : vec4<f32> = u_xlat1;
  let x_728 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_726.x, x_726.y));
  u_xlat6 = x_728;
  let x_729 : vec4<f32> = u_xlat6;
  let x_733 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_729 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_733);
  let x_738 : vec4<f32> = u_xlat5;
  let x_740 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_738.z, x_738.w));
  u_xlat5 = x_740;
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_741 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_743);
  let x_745 : vec4<f32> = u_xlat0;
  let x_748 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_751 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_745.z, x_745.y, x_745.w, x_745.y) * vec4<f32>(x_748.x, x_748.x, x_748.x, x_748.x)) + vec4<f32>(x_751.x, x_751.y, x_751.x, x_751.y));
  let x_754 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_754, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_758 : vec4<f32> = u_xlat5;
  let x_760 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_758 * vec4<f32>(x_760, x_760, x_760, x_760));
  let x_766 : vec4<f32> = u_xlat5;
  let x_768 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_766.x, x_766.y));
  u_xlat6 = x_768;
  let x_769 : vec4<f32> = u_xlat4;
  let x_770 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_769 + x_770);
  let x_775 : vec4<f32> = u_xlat5;
  let x_777 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_775.z, x_775.w));
  u_xlat5 = x_777;
  let x_778 : vec4<f32> = u_xlat5;
  let x_780 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_778 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_780);
  let x_782 : vec4<f32> = u_xlat0;
  let x_785 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_788 : vec2<f32> = u_xlat21;
  let x_789 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_785.x, x_785.x)) + x_788);
  let x_790 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat0;
  let x_796 : vec2<f32> = clamp(vec2<f32>(x_792.x, x_792.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_797 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_796.x, x_796.y, x_797.z, x_797.w);
  let x_799 : vec4<f32> = u_xlat0;
  let x_802 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_804 : vec2<f32> = (vec2<f32>(x_799.x, x_799.y) * vec2<f32>(x_802, x_802));
  let x_805 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_804.x, x_804.y, x_805.z, x_805.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_810.x, x_810.y));
  u_xlat0 = x_812;
  let x_813 : vec4<f32> = u_xlat0;
  let x_814 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_813 + x_814);
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_816 * vec4<f32>(x_818.y, x_818.y, x_818.y, x_818.y));
  let x_821 : vec2<f32> = u_xlat21;
  let x_824 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_828 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_830 : vec2<f32> = ((x_821 * vec2<f32>(x_824.x, x_824.y)) + vec2<f32>(x_828.z, x_828.w));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_838.x, x_838.y));
  let x_841 : vec3<f32> = vec3<f32>(x_840.x, x_840.y, x_840.z);
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_849 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_851 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_856 : vec3<f32> = (vec3<f32>(x_851.x, x_851.y, x_851.z) * vec3<f32>(x_854.z, x_854.z, x_854.z));
  let x_857 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_856.x, x_856.y, x_856.z, x_857.w);
  let x_859 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_859 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_862 : vec4<f32> = u_xlat0;
  let x_866 : vec3<f32> = x_26.x_Bloom_Color;
  let x_867 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * x_866);
  let x_868 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  let x_871 : f32 = u_xlat0.w;
  u_xlat5.w = (x_871 * 0.0625f);
  let x_874 : vec4<f32> = u_xlat3;
  let x_875 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_874 + x_875);
  let x_877 : vec4<f32> = u_xlat4;
  let x_879 : vec4<f32> = u_xlat1;
  let x_881 : vec3<f32> = (vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_879.x, x_879.y, x_879.z));
  let x_882 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_881.x, x_881.y, x_881.z, x_882.w);
  u_xlat1.w = 0.0f;
  let x_885 : vec4<f32> = u_xlat0;
  let x_886 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_885 + x_886);
  let x_888 : vec4<f32> = u_xlat0;
  let x_891 : f32 = x_26.x_PostExposure;
  let x_893 : f32 = x_26.x_PostExposure;
  let x_895 : f32 = x_26.x_PostExposure;
  let x_897 : f32 = x_26.x_PostExposure;
  let x_898 : vec4<f32> = vec4<f32>(x_891, x_893, x_895, x_897);
  u_xlat0 = (x_888 * vec4<f32>(x_898.x, x_898.y, x_898.z, x_898.w));
  let x_905 : vec4<f32> = u_xlat0;
  let x_912 : vec3<f32> = ((vec3<f32>(x_905.z, x_905.x, x_905.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_913 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_912.x, x_912.y, x_912.z, x_913.w);
  let x_915 : vec4<f32> = u_xlat1;
  let x_917 : vec3<f32> = log2(vec3<f32>(x_915.x, x_915.y, x_915.z));
  let x_918 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat1;
  let x_927 : vec3<f32> = ((vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_928 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat1;
  let x_934 : vec3<f32> = clamp(vec3<f32>(x_930.x, x_930.y, x_930.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_935 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
  let x_938 : vec4<f32> = u_xlat1;
  let x_942 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(x_942.z, x_942.z, x_942.z));
  let x_946 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_946);
  let x_950 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_952 : vec2<f32> = (vec2<f32>(x_950.x, x_950.y) * vec2<f32>(0.5f, 0.5f));
  let x_953 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_952.x, x_952.y, x_953.z);
  let x_955 : vec3<f32> = u_xlat11;
  let x_958 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_961 : vec3<f32> = u_xlat2;
  let x_963 : vec2<f32> = ((vec2<f32>(x_955.y, x_955.z) * vec2<f32>(x_958.x, x_958.y)) + vec2<f32>(x_961.x, x_961.y));
  let x_964 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_964.x, x_963.x, x_963.y, x_964.w);
  let x_967 : f32 = u_xlat11.x;
  let x_969 : f32 = x_26.x_Lut2D_Params.y;
  let x_972 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_967 * x_969) + x_972);
  let x_980 : vec4<f32> = u_xlat3;
  let x_982 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_980.x, x_980.z));
  let x_983 : vec3<f32> = vec3<f32>(x_982.x, x_982.y, x_982.z);
  let x_984 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_987 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_987;
  let x_989 : vec2<f32> = u_xlat22;
  let x_990 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_989 + vec2<f32>(x_990.x, x_990.z));
  let x_996 : vec2<f32> = u_xlat21;
  let x_997 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_996);
  u_xlat2 = vec3<f32>(x_997.x, x_997.y, x_997.z);
  let x_1000 : f32 = u_xlat1.x;
  let x_1002 : f32 = x_26.x_Lut2D_Params.z;
  let x_1005 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1000 * x_1002) + -(x_1005));
  let x_1009 : vec4<f32> = u_xlat4;
  let x_1012 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1009.x, x_1009.y, x_1009.z)) + x_1012);
  let x_1014 : vec4<f32> = u_xlat1;
  let x_1016 : vec3<f32> = u_xlat11;
  let x_1018 : vec4<f32> = u_xlat4;
  let x_1020 : vec3<f32> = ((vec3<f32>(x_1014.x, x_1014.x, x_1014.x) * x_1016) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1020.x, x_1020.y, x_1020.z, x_1021.w);
  let x_1025 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1025);
  let x_1027 : bool = u_xlatb1;
  if (x_1027) {
    let x_1030 : vec4<f32> = u_xlat0;
    let x_1031 : vec3<f32> = vec3<f32>(x_1030.x, x_1030.y, x_1030.z);
    let x_1032 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
    let x_1034 : vec4<f32> = u_xlat1;
    let x_1038 : vec3<f32> = clamp(vec3<f32>(x_1034.x, x_1034.y, x_1034.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1039 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1038.x, x_1038.y, x_1038.z, x_1039.w);
    let x_1041 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1051 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1051;
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

