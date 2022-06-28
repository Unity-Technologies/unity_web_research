struct PGlobals {
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

var<private> u_xlatb1 : bool;

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

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

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

@group(0) @binding(7) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_523 : f32;
  var x_948 : f32;
  var x_960 : f32;
  var x_972 : f32;
  var x_1113 : f32;
  var x_1125 : f32;
  var x_1137 : f32;
  var x_1232 : f32;
  var x_1244 : f32;
  var x_1256 : f32;
  var x_1303 : f32;
  var x_1316 : f32;
  var x_1328 : f32;
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
    let x_249 : vec4<f32> = u_xlat1;
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
  let x_322 : i32 = u_xlati30;
  u_xlati30 = min(x_322, 16i);
  let x_325 : i32 = u_xlati30;
  u_xlat1.x = f32(x_325);
  let x_328 : vec2<f32> = u_xlat10;
  let x_330 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_328) / vec2<f32>(x_330.x, x_330.x));
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
  let x_348 : vec2<f32> = vs_TEXCOORD0;
  let x_349 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_349.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_359 : i32 = u_xlati_loop_1;
    let x_360 : i32 = u_xlati30;
    if ((x_359 < x_360)) {
    } else {
      break;
    }
    let x_363 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_363);
    let x_365 : f32 = u_xlat36;
    u_xlat36 = (x_365 + 0.5f);
    let x_367 : f32 = u_xlat36;
    let x_369 : f32 = u_xlat1.x;
    u_xlat2.x = (x_367 / x_369);
    let x_373 : vec4<f32> = u_xlat6;
    let x_375 : vec2<f32> = (vec2<f32>(x_373.x, x_373.y) + vec2<f32>(-0.5f, -0.5f));
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
    let x_582 : vec4<f32> = u_xlat6;
    let x_584 : vec2<f32> = (x_581 + vec2<f32>(x_582.x, x_582.y));
    let x_585 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);

    continuing {
      let x_587 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_587 + 1i);
    }
  }
  let x_589 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_589 / x_590);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_601 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_605 : vec4<f32> = u_xlat0;
  let x_611 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_614 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_605.x, x_605.y, x_605.w, x_605.y)) * vec4<f32>(x_611.x, x_611.x, x_611.x, x_611.x)) + vec4<f32>(x_614.x, x_614.y, x_614.x, x_614.y));
  let x_617 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_617, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_621 : vec4<f32> = u_xlat4;
  let x_623 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_621 * vec4<f32>(x_623, x_623, x_623, x_623));
  let x_631 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_631.x, x_631.y));
  u_xlat5 = x_633;
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_637.z, x_637.w));
  u_xlat4 = x_639;
  let x_640 : vec4<f32> = u_xlat4;
  let x_643 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_640 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_643);
  let x_645 : vec4<f32> = u_xlat0;
  let x_649 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_652 : vec2<f32> = u_xlat21;
  let x_653 : vec2<f32> = ((-(vec2<f32>(x_645.z, x_645.y)) * vec2<f32>(x_649.x, x_649.x)) + x_652);
  let x_654 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_653.x, x_653.y, x_654.z, x_654.w);
  let x_656 : vec4<f32> = u_xlat1;
  let x_660 : vec2<f32> = clamp(vec2<f32>(x_656.x, x_656.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_661 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_660.x, x_660.y, x_661.z, x_661.w);
  let x_663 : vec4<f32> = u_xlat1;
  let x_666 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_668 : vec2<f32> = (vec2<f32>(x_663.x, x_663.y) * vec2<f32>(x_666, x_666));
  let x_669 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_668.x, x_668.y, x_669.z, x_669.w);
  let x_674 : vec4<f32> = u_xlat1;
  let x_676 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_674.x, x_674.y));
  u_xlat5 = x_676;
  let x_677 : vec4<f32> = u_xlat4;
  let x_678 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_677 + x_678);
  let x_680 : vec4<f32> = u_xlat0;
  let x_683 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_686 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_680.z, x_680.w, x_680.x, x_680.w) * vec4<f32>(x_683.x, x_683.x, x_683.x, x_683.x)) + vec4<f32>(x_686.x, x_686.y, x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_689, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_693 : vec4<f32> = u_xlat5;
  let x_695 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_693 * vec4<f32>(x_695, x_695, x_695, x_695));
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_701.x, x_701.y));
  u_xlat6 = x_703;
  let x_704 : vec4<f32> = u_xlat6;
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_704 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_706);
  let x_708 : vec2<f32> = u_xlat21;
  let x_709 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_708.x, x_708.y, x_709.z, x_709.w);
  let x_711 : vec4<f32> = u_xlat1;
  let x_715 : vec2<f32> = clamp(vec2<f32>(x_711.x, x_711.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_716.w);
  let x_718 : vec4<f32> = u_xlat1;
  let x_721 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_723 : vec2<f32> = (vec2<f32>(x_718.x, x_718.y) * vec2<f32>(x_721, x_721));
  let x_724 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_723.x, x_723.y, x_724.z, x_724.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_731 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_729.x, x_729.y));
  u_xlat6 = x_731;
  let x_732 : vec4<f32> = u_xlat6;
  let x_736 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_732 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_736);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_741.z, x_741.w));
  u_xlat5 = x_743;
  let x_744 : vec4<f32> = u_xlat5;
  let x_746 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_744 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_746);
  let x_748 : vec4<f32> = u_xlat0;
  let x_751 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_754 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_748.z, x_748.y, x_748.w, x_748.y) * vec4<f32>(x_751.x, x_751.x, x_751.x, x_751.x)) + vec4<f32>(x_754.x, x_754.y, x_754.x, x_754.y));
  let x_757 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_757, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_761 * vec4<f32>(x_763, x_763, x_763, x_763));
  let x_769 : vec4<f32> = u_xlat5;
  let x_771 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_769.x, x_769.y));
  u_xlat6 = x_771;
  let x_772 : vec4<f32> = u_xlat4;
  let x_773 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_772 + x_773);
  let x_778 : vec4<f32> = u_xlat5;
  let x_780 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_778.z, x_778.w));
  u_xlat5 = x_780;
  let x_781 : vec4<f32> = u_xlat5;
  let x_783 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_781 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_783);
  let x_785 : vec4<f32> = u_xlat0;
  let x_788 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_791 : vec2<f32> = u_xlat21;
  let x_792 : vec2<f32> = ((vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_788.x, x_788.x)) + x_791);
  let x_793 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_792.x, x_792.y, x_793.z, x_793.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_799 : vec2<f32> = clamp(vec2<f32>(x_795.x, x_795.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_800 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
  let x_802 : vec4<f32> = u_xlat0;
  let x_805 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_807 : vec2<f32> = (vec2<f32>(x_802.x, x_802.y) * vec2<f32>(x_805, x_805));
  let x_808 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_815 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_813.x, x_813.y));
  u_xlat0 = x_815;
  let x_816 : vec4<f32> = u_xlat0;
  let x_817 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_816 + x_817);
  let x_819 : vec4<f32> = u_xlat0;
  let x_821 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_819 * vec4<f32>(x_821.y, x_821.y, x_821.y, x_821.y));
  let x_824 : vec2<f32> = u_xlat21;
  let x_827 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_831 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_833 : vec2<f32> = ((x_824 * vec2<f32>(x_827.x, x_827.y)) + vec2<f32>(x_831.z, x_831.w));
  let x_834 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_833.x, x_833.y, x_834.z, x_834.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_841.x, x_841.y));
  let x_844 : vec3<f32> = vec3<f32>(x_843.x, x_843.y, x_843.z);
  let x_845 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
  let x_847 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_852 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat1;
  let x_857 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_859 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_857.z, x_857.z, x_857.z));
  let x_860 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_862 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_865 : vec4<f32> = u_xlat0;
  let x_869 : vec3<f32> = x_26.x_Bloom_Color;
  let x_870 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * x_869);
  let x_871 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_874 : f32 = u_xlat0.w;
  u_xlat5.w = (x_874 * 0.0625f);
  let x_877 : vec4<f32> = u_xlat3;
  let x_878 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_877 + x_878);
  let x_880 : vec4<f32> = u_xlat4;
  let x_882 : vec4<f32> = u_xlat1;
  let x_884 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_882.x, x_882.y, x_882.z));
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  u_xlat1.w = 0.0f;
  let x_888 : vec4<f32> = u_xlat0;
  let x_889 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_888 + x_889);
  let x_891 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_891, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_895 : vec4<f32> = u_xlat0;
  let x_899 : vec3<f32> = (vec3<f32>(x_895.z, x_895.x, x_895.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat0;
  let x_906 : vec3<f32> = max(vec3<f32>(x_902.z, x_902.x, x_902.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_907 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
  let x_909 : vec4<f32> = u_xlat3;
  let x_911 : vec3<f32> = log2(vec3<f32>(x_909.x, x_909.y, x_909.z));
  let x_912 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_911.x, x_911.y, x_911.z, x_912.w);
  let x_914 : vec4<f32> = u_xlat3;
  let x_918 : vec3<f32> = (vec3<f32>(x_914.x, x_914.y, x_914.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_919 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat3;
  let x_923 : vec3<f32> = exp2(vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_926 : vec4<f32> = u_xlat3;
  let x_933 : vec3<f32> = ((vec3<f32>(x_926.x, x_926.y, x_926.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_934 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_941 : vec4<f32> = u_xlat0;
  let x_944 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_941.z, x_941.x, x_941.y, x_941.z));
  u_xlatb0 = vec3<bool>(x_944.x, x_944.y, x_944.z);
  let x_947 : bool = u_xlatb0.x;
  if (x_947) {
    let x_952 : f32 = u_xlat1.x;
    x_948 = x_952;
  } else {
    let x_955 : f32 = u_xlat3.x;
    x_948 = x_955;
  }
  let x_956 : f32 = x_948;
  u_xlat0.x = x_956;
  let x_959 : bool = u_xlatb0.y;
  if (x_959) {
    let x_964 : f32 = u_xlat1.y;
    x_960 = x_964;
  } else {
    let x_967 : f32 = u_xlat3.y;
    x_960 = x_967;
  }
  let x_968 : f32 = x_960;
  u_xlat0.y = x_968;
  let x_971 : bool = u_xlatb0.z;
  if (x_971) {
    let x_976 : f32 = u_xlat1.z;
    x_972 = x_976;
  } else {
    let x_979 : f32 = u_xlat3.z;
    x_972 = x_979;
  }
  let x_980 : f32 = x_972;
  u_xlat0.z = x_980;
  let x_982 : vec4<f32> = u_xlat0;
  let x_986 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_988 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(x_986.z, x_986.z, x_986.z));
  let x_989 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_992 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_992);
  let x_996 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_998 : vec2<f32> = (vec2<f32>(x_996.x, x_996.y) * vec2<f32>(0.5f, 0.5f));
  let x_999 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_998.x, x_999.y, x_999.z, x_998.y);
  let x_1001 : vec4<f32> = u_xlat1;
  let x_1004 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1007 : vec4<f32> = u_xlat1;
  let x_1009 : vec2<f32> = ((vec2<f32>(x_1001.y, x_1001.z) * vec2<f32>(x_1004.x, x_1004.y)) + vec2<f32>(x_1007.x, x_1007.w));
  let x_1010 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1010.x, x_1009.x, x_1009.y, x_1010.w);
  let x_1013 : f32 = u_xlat10.x;
  let x_1015 : f32 = x_26.x_Lut2D_Params.y;
  let x_1018 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1013 * x_1015) + x_1018);
  let x_1026 : vec4<f32> = u_xlat1;
  let x_1028 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1026.x, x_1026.z));
  let x_1029 : vec3<f32> = vec3<f32>(x_1028.x, x_1028.y, x_1028.z);
  let x_1030 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1033 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1033;
  let x_1035 : vec2<f32> = u_xlat22;
  let x_1036 : vec4<f32> = u_xlat1;
  let x_1038 : vec2<f32> = (x_1035 + vec2<f32>(x_1036.x, x_1036.z));
  let x_1039 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1038.x, x_1038.y, x_1039.z, x_1039.w);
  let x_1044 : vec4<f32> = u_xlat1;
  let x_1046 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1044.x, x_1044.y));
  let x_1047 : vec3<f32> = vec3<f32>(x_1046.x, x_1046.y, x_1046.z);
  let x_1048 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1051 : f32 = u_xlat0.x;
  let x_1053 : f32 = x_26.x_Lut2D_Params.z;
  let x_1056 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1051 * x_1053) + -(x_1056));
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1063 : vec4<f32> = u_xlat1;
  let x_1065 : vec3<f32> = (-(vec3<f32>(x_1060.x, x_1060.y, x_1060.z)) + vec3<f32>(x_1063.x, x_1063.y, x_1063.z));
  let x_1066 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1065.x, x_1065.y, x_1065.z, x_1066.w);
  let x_1068 : vec4<f32> = u_xlat0;
  let x_1070 : vec4<f32> = u_xlat1;
  let x_1073 : vec4<f32> = u_xlat3;
  let x_1075 : vec3<f32> = ((vec3<f32>(x_1068.x, x_1068.x, x_1068.x) * vec3<f32>(x_1070.x, x_1070.y, x_1070.z)) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
  let x_1076 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec4<f32> = u_xlat0;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1083 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1090 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1090 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1094 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1094), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1097 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1097);
  let x_1099 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1099 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1103 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1103);
  let x_1107 : vec4<f32> = u_xlat0;
  let x_1109 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1107.x));
  u_xlatb0 = vec3<bool>(x_1109.x, x_1109.y, x_1109.z);
  let x_1112 : bool = u_xlatb0.x;
  if (x_1112) {
    let x_1117 : f32 = u_xlat1.x;
    x_1113 = x_1117;
  } else {
    let x_1120 : f32 = u_xlat2.x;
    x_1113 = x_1120;
  }
  let x_1121 : f32 = x_1113;
  u_xlat0.x = x_1121;
  let x_1124 : bool = u_xlatb0.y;
  if (x_1124) {
    let x_1129 : f32 = u_xlat1.y;
    x_1125 = x_1129;
  } else {
    let x_1132 : f32 = u_xlat2.y;
    x_1125 = x_1132;
  }
  let x_1133 : f32 = x_1125;
  u_xlat0.y = x_1133;
  let x_1136 : bool = u_xlatb0.z;
  if (x_1136) {
    let x_1141 : f32 = u_xlat1.z;
    x_1137 = x_1141;
  } else {
    let x_1144 : f32 = u_xlat2.z;
    x_1137 = x_1144;
  }
  let x_1145 : f32 = x_1137;
  u_xlat0.z = x_1145;
  let x_1147 : vec2<f32> = vs_TEXCOORD0;
  let x_1149 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1153 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1155 : vec2<f32> = ((x_1147 * vec2<f32>(x_1149.x, x_1149.y)) + vec2<f32>(x_1153.z, x_1153.w));
  let x_1156 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1155.x, x_1155.y, x_1156.z, x_1156.w);
  let x_1163 : vec4<f32> = u_xlat1;
  let x_1165 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1163.x, x_1163.y));
  u_xlat1.x = x_1165.w;
  let x_1169 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1169 * 2.0f) + -1.0f);
  let x_1175 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1175 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1181 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1181, 0.0f, 1.0f);
  let x_1185 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1185 * 2.0f) + -1.0f);
  let x_1190 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1190)) + 1.0f);
  let x_1196 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1196);
  let x_1200 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1200) + 1.0f);
  let x_1205 : f32 = u_xlat1.x;
  let x_1207 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1205 * x_1207);
  let x_1210 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1210.x, x_1210.y, x_1210.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1213 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1213.x, x_1213.y, x_1213.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1217 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1217);
  let x_1219 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1219 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1221 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1221);
  let x_1223 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1223 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1226 : vec4<f32> = u_xlat0;
  let x_1228 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1226.x, x_1226.y, x_1226.z, x_1226.x));
  u_xlatb0 = vec3<bool>(x_1228.x, x_1228.y, x_1228.z);
  let x_1231 : bool = u_xlatb0.x;
  if (x_1231) {
    let x_1236 : f32 = u_xlat11.x;
    x_1232 = x_1236;
  } else {
    let x_1239 : f32 = u_xlat2.x;
    x_1232 = x_1239;
  }
  let x_1240 : f32 = x_1232;
  u_xlat0.x = x_1240;
  let x_1243 : bool = u_xlatb0.y;
  if (x_1243) {
    let x_1248 : f32 = u_xlat11.y;
    x_1244 = x_1248;
  } else {
    let x_1251 : f32 = u_xlat2.y;
    x_1244 = x_1251;
  }
  let x_1252 : f32 = x_1244;
  u_xlat0.y = x_1252;
  let x_1255 : bool = u_xlatb0.z;
  if (x_1255) {
    let x_1260 : f32 = u_xlat11.z;
    x_1256 = x_1260;
  } else {
    let x_1263 : f32 = u_xlat2.z;
    x_1256 = x_1263;
  }
  let x_1264 : f32 = x_1256;
  u_xlat0.z = x_1264;
  let x_1266 : vec4<f32> = u_xlat1;
  let x_1271 : vec4<f32> = u_xlat0;
  let x_1273 : vec3<f32> = ((vec3<f32>(x_1266.x, x_1266.x, x_1266.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1271.x, x_1271.y, x_1271.z));
  let x_1274 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1273.x, x_1273.y, x_1273.z, x_1274.w);
  let x_1276 : vec4<f32> = u_xlat0;
  let x_1278 : vec3<f32> = (vec3<f32>(x_1276.x, x_1276.y, x_1276.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1279 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1278.x, x_1278.y, x_1278.z, x_1279.w);
  let x_1281 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1281.x, x_1281.y, x_1281.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1284 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1284 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1286 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1286), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1289 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1289);
  let x_1291 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1291 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1293 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1293);
  let x_1295 : vec4<f32> = u_xlat0;
  let x_1297 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1295.x, x_1295.y, x_1295.z, x_1295.x));
  u_xlatb0 = vec3<bool>(x_1297.x, x_1297.y, x_1297.z);
  let x_1302 : bool = u_xlatb0.x;
  if (x_1302) {
    let x_1307 : f32 = u_xlat1.x;
    x_1303 = x_1307;
  } else {
    let x_1310 : f32 = u_xlat2.x;
    x_1303 = x_1310;
  }
  let x_1311 : f32 = x_1303;
  SV_Target0.x = x_1311;
  let x_1315 : bool = u_xlatb0.y;
  if (x_1315) {
    let x_1320 : f32 = u_xlat1.y;
    x_1316 = x_1320;
  } else {
    let x_1323 : f32 = u_xlat2.y;
    x_1316 = x_1323;
  }
  let x_1324 : f32 = x_1316;
  SV_Target0.y = x_1324;
  let x_1327 : bool = u_xlatb0.z;
  if (x_1327) {
    let x_1332 : f32 = u_xlat1.z;
    x_1328 = x_1332;
  } else {
    let x_1335 : f32 = u_xlat2.z;
    x_1328 = x_1335;
  }
  let x_1336 : f32 = x_1328;
  SV_Target0.z = x_1336;
  let x_1339 : f32 = u_xlat0.w;
  SV_Target0.w = x_1339;
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

