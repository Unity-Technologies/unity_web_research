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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : vec3<bool>;

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

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_235 : f32;
  var u_xlati_loop_1 : i32;
  var x_523 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_807 : f32;
  var x_819 : f32;
  var x_831 : f32;
  var x_978 : f32;
  var x_990 : f32;
  var x_1002 : f32;
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
    let x_226 : f32 = u_xlat1.x;
    let x_228 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_226 < -(x_228));
    let x_233 : bool = u_xlatb1.x;
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
    let x_253 : vec4<f32> = u_xlat1;
    let x_256 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_268 : vec2<f32> = vs_TEXCOORD0;
  let x_269 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_268);
  u_xlat0.x = x_269.x;
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_273 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_280 : vec2<f32> = u_xlat10;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_280, x_281);
  let x_283 : f32 = u_xlat30;
  let x_285 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_283, x_283) * x_285);
  let x_287 : vec2<f32> = u_xlat10;
  let x_290 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_292 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_293 : vec2<f32> = vec2<f32>(x_290, x_292);
  u_xlat10 = (x_287 * vec2<f32>(x_293.x, x_293.y));
  let x_298 : vec2<f32> = u_xlat10;
  let x_302 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_304 : vec2<f32> = (-(x_298) * vec2<f32>(x_302.z, x_302.w));
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat2;
  let x_309 : vec2<f32> = (vec2<f32>(x_307.x, x_307.y) * vec2<f32>(0.5f, 0.5f));
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_309.x, x_309.y, x_310.z);
  let x_312 : vec3<f32> = u_xlat2;
  let x_314 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_312.x, x_312.y), vec2<f32>(x_314.x, x_314.y));
  let x_317 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_317);
  let x_321 : f32 = u_xlat30;
  u_xlati30 = i32(x_321);
  let x_323 : i32 = u_xlati30;
  u_xlati30 = max(x_323, 3i);
  let x_325 : i32 = u_xlati30;
  u_xlati30 = min(x_325, 16i);
  let x_328 : i32 = u_xlati30;
  u_xlat1.x = f32(x_328);
  let x_331 : vec2<f32> = u_xlat10;
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_331) / vec2<f32>(x_333.x, x_333.x));
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
  let x_351 : vec2<f32> = vs_TEXCOORD0;
  u_xlat6 = x_351;
  u_xlati_loop_1 = 0i;
  loop {
    let x_360 : i32 = u_xlati_loop_1;
    let x_361 : i32 = u_xlati30;
    if ((x_360 < x_361)) {
    } else {
      break;
    }
    let x_364 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_364);
    let x_366 : f32 = u_xlat36;
    u_xlat36 = (x_366 + 0.5f);
    let x_368 : f32 = u_xlat36;
    let x_370 : f32 = u_xlat1.x;
    u_xlat2.x = (x_368 / x_370);
    let x_374 : vec2<f32> = u_xlat6;
    let x_375 : vec2<f32> = (x_374 + vec2<f32>(-0.5f, -0.5f));
    let x_376 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_375.x, x_375.y, x_376.z, x_376.w);
    let x_379 : vec4<f32> = u_xlat7;
    let x_382 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_379.x, x_379.y) * vec2<f32>(x_382.z, x_382.z)) + vec2<f32>(0.5f, 0.5f));
    let x_386 : vec4<f32> = u_xlat7;
    let x_389 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_393 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_396 : vec2<f32> = ((vec2<f32>(x_386.x, x_386.y) * vec2<f32>(x_389.z, x_389.z)) + -(vec2<f32>(x_393.x, x_393.y)));
    let x_397 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_396.x, x_396.y, x_397.z, x_397.w);
    let x_399 : vec4<f32> = u_xlat7;
    let x_402 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_404 : vec2<f32> = (vec2<f32>(x_399.x, x_399.y) * vec2<f32>(x_402.z, x_402.w));
    let x_405 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_404.x, x_404.y, x_405.z, x_405.w);
    let x_407 : vec4<f32> = u_xlat7;
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_407.x, x_407.y), vec2<f32>(x_409.x, x_409.y));
    let x_412 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_412);
    let x_414 : bool = u_xlatb11;
    if (x_414) {
      let x_418 : f32 = u_xlat36;
      let x_421 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_418, x_418) * vec2<f32>(x_421.x, x_421.y));
      let x_426 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_426);
      let x_429 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_429);
      let x_433 : f32 = u_xlat8.x;
      let x_434 : f32 = u_xlat9;
      u_xlat8.x = (x_433 / x_434);
      let x_439 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_439);
      let x_442 : f32 = u_xlat8.x;
      let x_443 : f32 = u_xlat18;
      u_xlat8.x = ((x_442 * x_443) + -1.0f);
      let x_447 : vec4<f32> = u_xlat7;
      let x_449 : vec2<f32> = u_xlat8;
      let x_452 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_447.x, x_447.y) * vec2<f32>(x_449.x, x_449.x)) + x_452);
    } else {
      let x_456 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_456);
      let x_458 : f32 = u_xlat28;
      let x_460 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_458 * x_460);
      let x_462 : f32 = u_xlat36;
      let x_464 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_462 * x_464);
      let x_467 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_467), 1.0f);
      let x_470 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_470), 1.0f);
      let x_473 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_473);
      let x_475 : f32 = u_xlat38;
      let x_476 : f32 = u_xlat9;
      u_xlat38 = (x_475 * x_476);
      let x_478 : f32 = u_xlat38;
      let x_479 : f32 = u_xlat38;
      u_xlat9 = (x_478 * x_479);
      let x_482 : f32 = u_xlat9;
      u_xlat19 = ((x_482 * 0.0208351f) + -0.085133001f);
      let x_485 : f32 = u_xlat9;
      let x_486 : f32 = u_xlat19;
      u_xlat19 = ((x_485 * x_486) + 0.180141002f);
      let x_489 : f32 = u_xlat9;
      let x_490 : f32 = u_xlat19;
      u_xlat19 = ((x_489 * x_490) + -0.330299497f);
      let x_493 : f32 = u_xlat9;
      let x_494 : f32 = u_xlat19;
      u_xlat9 = ((x_493 * x_494) + 0.999866009f);
      let x_497 : f32 = u_xlat38;
      let x_498 : f32 = u_xlat9;
      u_xlat19 = (x_497 * x_498);
      let x_501 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_501));
      let x_504 : f32 = u_xlat19;
      u_xlat19 = ((x_504 * -2.0f) + 1.570796371f);
      let x_507 : bool = u_xlatb29;
      let x_508 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_508, x_507);
      let x_510 : f32 = u_xlat38;
      let x_511 : f32 = u_xlat9;
      let x_513 : f32 = u_xlat19;
      u_xlat38 = ((x_510 * x_511) + x_513);
      let x_515 : f32 = u_xlat36;
      u_xlat36 = min(x_515, 1.0f);
      let x_518 : f32 = u_xlat36;
      let x_519 : f32 = u_xlat36;
      u_xlatb36 = (x_518 < -(x_519));
      let x_522 : bool = u_xlatb36;
      if (x_522) {
        let x_526 : f32 = u_xlat38;
        x_523 = -(x_526);
      } else {
        let x_529 : f32 = u_xlat38;
        x_523 = x_529;
      }
      let x_530 : f32 = x_523;
      u_xlat36 = x_530;
      let x_531 : f32 = u_xlat28;
      let x_532 : f32 = u_xlat36;
      u_xlat36 = ((x_531 * x_532) + -1.0f);
      let x_535 : vec4<f32> = u_xlat7;
      let x_537 : f32 = u_xlat36;
      let x_540 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_537, x_537)) + x_540);
    }
    let x_542 : vec2<f32> = u_xlat8;
    u_xlat8 = x_542;
    let x_543 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_543, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_547 : vec2<f32> = u_xlat8;
    let x_549 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_551 : vec2<f32> = (x_547 * vec2<f32>(x_549, x_549));
    let x_552 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_561 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_559.x, x_559.y), 0.0f);
    u_xlat7 = x_561;
    let x_567 : vec3<f32> = u_xlat2;
    let x_569 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_567.x, x_567.y), 0.0f);
    let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.z);
    let x_571 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
    let x_573 : vec4<f32> = u_xlat7;
    let x_574 : vec4<f32> = u_xlat3;
    let x_576 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_573 * x_574) + x_576);
    let x_578 : vec4<f32> = u_xlat3;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_578 + x_579);
    let x_581 : vec2<f32> = u_xlat10;
    let x_582 : vec2<f32> = u_xlat6;
    u_xlat6 = (x_581 + x_582);

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
  u_xlat0 = (vec4<f32>(x_598.x, x_598.y, x_598.x, x_598.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_604 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_604 * 0.5f);
  let x_607 : vec4<f32> = u_xlat0;
  let x_609 : vec4<f32> = u_xlat1;
  let x_612 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_607.x, x_607.y, x_607.z, x_607.y) * vec4<f32>(x_609.x, x_609.x, x_609.x, x_609.x)) + vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y));
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
  let x_639 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_638 + x_639);
  let x_641 : vec4<f32> = u_xlat0;
  let x_643 : vec4<f32> = u_xlat1;
  let x_646 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_641.x, x_641.w, x_641.z, x_641.w) * vec4<f32>(x_643.x, x_643.x, x_643.x, x_643.x)) + vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y));
  let x_649 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_649, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_653 : vec4<f32> = u_xlat0;
  let x_655 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_653 * vec4<f32>(x_655, x_655, x_655, x_655));
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_661.x, x_661.y));
  u_xlat5 = x_663;
  let x_664 : vec4<f32> = u_xlat4;
  let x_665 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_664 + x_665);
  let x_670 : vec4<f32> = u_xlat0;
  let x_672 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_670.z, x_670.w));
  u_xlat0 = x_672;
  let x_673 : vec4<f32> = u_xlat0;
  let x_674 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_673 + x_674);
  let x_676 : vec4<f32> = u_xlat0;
  let x_679 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_676 * vec4<f32>(x_679.y, x_679.y, x_679.y, x_679.y));
  let x_682 : vec2<f32> = u_xlat21;
  let x_685 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_689 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_691 : vec2<f32> = ((x_682 * vec2<f32>(x_685.x, x_685.y)) + vec2<f32>(x_689.z, x_689.w));
  let x_692 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
  let x_699 : vec4<f32> = u_xlat1;
  let x_701 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec3<f32> = vec3<f32>(x_701.x, x_701.y, x_701.z);
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat0;
  let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_710 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  let x_712 : vec4<f32> = u_xlat1;
  let x_715 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_717 : vec3<f32> = (vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_715.z, x_715.z, x_715.z));
  let x_718 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_720 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_723 : vec4<f32> = u_xlat0;
  let x_727 : vec3<f32> = x_26.x_Bloom_Color;
  let x_728 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * x_727);
  let x_729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  let x_732 : f32 = u_xlat0.w;
  u_xlat5.w = (x_732 * 0.25f);
  let x_735 : vec4<f32> = u_xlat3;
  let x_736 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_735 + x_736);
  let x_738 : vec4<f32> = u_xlat4;
  let x_740 : vec4<f32> = u_xlat1;
  let x_742 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) * vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_743 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_742.x, x_742.y, x_742.z, x_743.w);
  u_xlat1.w = 0.0f;
  let x_746 : vec4<f32> = u_xlat0;
  let x_747 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_746 + x_747);
  let x_749 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_749, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_753 : vec4<f32> = u_xlat0;
  let x_757 : vec3<f32> = (vec3<f32>(x_753.z, x_753.x, x_753.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_758 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_757.x, x_757.y, x_757.z, x_758.w);
  let x_760 : vec4<f32> = u_xlat0;
  let x_764 : vec3<f32> = max(vec3<f32>(x_760.z, x_760.x, x_760.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat3;
  let x_769 : vec3<f32> = log2(vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec4<f32> = u_xlat3;
  let x_776 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_777 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
  let x_779 : vec4<f32> = u_xlat3;
  let x_781 : vec3<f32> = exp2(vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat3;
  let x_791 : vec3<f32> = ((vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_792 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_797.z, x_797.x, x_797.y, x_797.z));
  u_xlatb4 = vec3<bool>(x_800.x, x_800.y, x_800.z);
  let x_804 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_804;
  let x_806 : bool = u_xlatb4.x;
  if (x_806) {
    let x_811 : f32 = u_xlat1.x;
    x_807 = x_811;
  } else {
    let x_814 : f32 = u_xlat3.x;
    x_807 = x_814;
  }
  let x_815 : f32 = x_807;
  hlslcc_movcTemp.x = x_815;
  let x_818 : bool = u_xlatb4.y;
  if (x_818) {
    let x_823 : f32 = u_xlat1.y;
    x_819 = x_823;
  } else {
    let x_826 : f32 = u_xlat3.y;
    x_819 = x_826;
  }
  let x_827 : f32 = x_819;
  hlslcc_movcTemp.y = x_827;
  let x_830 : bool = u_xlatb4.z;
  if (x_830) {
    let x_835 : f32 = u_xlat1.z;
    x_831 = x_835;
  } else {
    let x_838 : f32 = u_xlat3.z;
    x_831 = x_838;
  }
  let x_839 : f32 = x_831;
  hlslcc_movcTemp.z = x_839;
  let x_841 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_841;
  let x_843 : vec4<f32> = u_xlat1;
  let x_847 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_843.x, x_843.y, x_843.z) * vec3<f32>(x_847.z, x_847.z, x_847.z));
  let x_851 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_851);
  let x_855 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_857 : vec2<f32> = (vec2<f32>(x_855.x, x_855.y) * vec2<f32>(0.5f, 0.5f));
  let x_858 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_857.x, x_857.y, x_858.z);
  let x_860 : vec3<f32> = u_xlat11;
  let x_863 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_866 : vec3<f32> = u_xlat2;
  let x_868 : vec2<f32> = ((vec2<f32>(x_860.y, x_860.z) * vec2<f32>(x_863.x, x_863.y)) + vec2<f32>(x_866.x, x_866.y));
  let x_869 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_869.x, x_868.x, x_868.y, x_869.w);
  let x_872 : f32 = u_xlat11.x;
  let x_874 : f32 = x_26.x_Lut2D_Params.y;
  let x_877 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_872 * x_874) + x_877);
  let x_885 : vec4<f32> = u_xlat3;
  let x_887 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_885.x, x_885.z));
  let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_892 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_892;
  let x_894 : vec2<f32> = u_xlat22;
  let x_895 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_894 + vec2<f32>(x_895.x, x_895.z));
  let x_901 : vec2<f32> = u_xlat21;
  let x_902 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_901);
  u_xlat2 = vec3<f32>(x_902.x, x_902.y, x_902.z);
  let x_905 : f32 = u_xlat1.x;
  let x_907 : f32 = x_26.x_Lut2D_Params.z;
  let x_910 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_905 * x_907) + -(x_910));
  let x_914 : vec4<f32> = u_xlat4;
  let x_917 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_914.x, x_914.y, x_914.z)) + x_917);
  let x_919 : vec4<f32> = u_xlat1;
  let x_921 : vec3<f32> = u_xlat11;
  let x_923 : vec4<f32> = u_xlat4;
  let x_925 : vec3<f32> = ((vec3<f32>(x_919.x, x_919.x, x_919.x) * x_921) + vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_933 : vec4<f32> = u_xlat1;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_938 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_940 : vec4<f32> = u_xlat3;
  let x_944 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_945 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat3;
  let x_950 : vec3<f32> = max(abs(vec3<f32>(x_947.x, x_947.y, x_947.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_951 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
  let x_953 : vec4<f32> = u_xlat3;
  let x_955 : vec3<f32> = log2(vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_958 : vec4<f32> = u_xlat3;
  let x_962 : vec3<f32> = (vec3<f32>(x_958.x, x_958.y, x_958.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_963 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec4<f32> = u_xlat3;
  let x_967 : vec3<f32> = exp2(vec3<f32>(x_965.x, x_965.y, x_965.z));
  let x_968 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_967.x, x_967.y, x_967.z, x_968.w);
  let x_972 : vec4<f32> = u_xlat1;
  let x_974 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_972.x, x_972.y, x_972.z, x_972.x));
  u_xlatb1 = vec3<bool>(x_974.x, x_974.y, x_974.z);
  let x_977 : bool = u_xlatb1.x;
  if (x_977) {
    let x_982 : f32 = u_xlat2.x;
    x_978 = x_982;
  } else {
    let x_985 : f32 = u_xlat3.x;
    x_978 = x_985;
  }
  let x_986 : f32 = x_978;
  u_xlat0.x = x_986;
  let x_989 : bool = u_xlatb1.y;
  if (x_989) {
    let x_994 : f32 = u_xlat2.y;
    x_990 = x_994;
  } else {
    let x_997 : f32 = u_xlat3.y;
    x_990 = x_997;
  }
  let x_998 : f32 = x_990;
  u_xlat0.y = x_998;
  let x_1001 : bool = u_xlatb1.z;
  if (x_1001) {
    let x_1006 : f32 = u_xlat2.z;
    x_1002 = x_1006;
  } else {
    let x_1009 : f32 = u_xlat3.z;
    x_1002 = x_1009;
  }
  let x_1010 : f32 = x_1002;
  u_xlat0.z = x_1010;
  let x_1014 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1014);
  let x_1018 : bool = u_xlatb1.x;
  if (x_1018) {
    let x_1021 : vec4<f32> = u_xlat0;
    let x_1022 : vec3<f32> = vec3<f32>(x_1021.x, x_1021.y, x_1021.z);
    let x_1023 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
    let x_1025 : vec4<f32> = u_xlat1;
    let x_1029 : vec3<f32> = clamp(vec3<f32>(x_1025.x, x_1025.y, x_1025.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1030 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
    let x_1032 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1042 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1042;
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

