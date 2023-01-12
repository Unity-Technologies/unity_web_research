struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
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

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec4<f32>;
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
  var u_xlati_loop_1 : i32;
  var u_xlat16 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat36 : f32;
  var u_xlat27 : vec2<f32>;
  var u_xlat8 : f32;
  var u_xlat9 : f32;
  var u_xlat37 : f32;
  var u_xlat18 : f32;
  var u_xlat28 : f32;
  var u_xlat38 : f32;
  var u_xlatb9 : bool;
  var u_xlatb36 : bool;
  var x_509 : f32;
  var u_xlatb30 : bool;
  var u_xlat11 : f32;
  var x_742 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_950 : f32;
  var x_962 : f32;
  var x_974 : f32;
  var x_1034 : f32;
  var x_1046 : f32;
  var x_1058 : f32;
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
    let x_246 : vec3<f32> = u_xlat0;
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
  let x_300 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_299.x, x_299.y, x_300.z, x_300.w);
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) * vec2<f32>(0.5f, 0.5f));
  let x_305 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_304.x, x_304.y, x_305.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat2;
  let x_309 : vec4<f32> = u_xlat2;
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
  u_xlat3.w = 1.0f;
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlat4.w = 0.0f;
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlat5.w = 0.0f;
  let x_344 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_344;
  u_xlati_loop_1 = 0i;
  loop {
    let x_352 : i32 = u_xlati_loop_1;
    let x_353 : i32 = u_xlati30;
    if ((x_352 < x_353)) {
    } else {
      break;
    }
    let x_356 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_356);
    let x_360 : f32 = u_xlat16.x;
    u_xlat16.x = (x_360 + 0.5f);
    let x_364 : f32 = u_xlat16.x;
    let x_366 : f32 = u_xlat1.x;
    u_xlat2.x = (x_364 / x_366);
    let x_369 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_369 + vec2<f32>(-0.5f, -0.5f));
    let x_372 : vec2<f32> = u_xlat16;
    let x_374 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_377 : vec2<f32> = ((x_372 * vec2<f32>(x_374.z, x_374.z)) + vec2<f32>(0.5f, 0.5f));
    let x_378 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_377.x, x_377.y, x_378.z, x_378.w);
    let x_380 : vec2<f32> = u_xlat16;
    let x_382 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_386 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_380 * vec2<f32>(x_382.z, x_382.z)) + -(vec2<f32>(x_386.x, x_386.y)));
    let x_390 : vec2<f32> = u_xlat16;
    let x_392 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_390 * vec2<f32>(x_392.z, x_392.w));
    let x_396 : vec2<f32> = u_xlat16;
    let x_397 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_396, x_397);
    let x_399 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_399);
    let x_401 : bool = u_xlatb11;
    if (x_401) {
      let x_405 : f32 = u_xlat36;
      let x_408 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_405, x_405) * vec2<f32>(x_408.x, x_408.y));
      let x_413 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_413);
      let x_417 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_417);
      let x_419 : f32 = u_xlat8;
      let x_420 : f32 = u_xlat9;
      u_xlat27.x = (x_419 / x_420);
      let x_425 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_425);
      let x_428 : f32 = u_xlat27.x;
      let x_429 : f32 = u_xlat37;
      u_xlat27.x = ((x_428 * x_429) + -1.0f);
      let x_433 : vec2<f32> = u_xlat16;
      let x_434 : vec2<f32> = u_xlat27;
      let x_437 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_433 * vec2<f32>(x_434.x, x_434.x)) + vec2<f32>(x_437.x, x_437.y));
    } else {
      let x_441 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_441);
      let x_443 : f32 = u_xlat8;
      let x_445 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_443 * x_445);
      let x_447 : f32 = u_xlat36;
      let x_449 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_447 * x_449);
      let x_452 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_452), 1.0f);
      let x_456 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_456), 1.0f);
      let x_459 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_459);
      let x_461 : f32 = u_xlat28;
      let x_462 : f32 = u_xlat18;
      u_xlat18 = (x_461 * x_462);
      let x_464 : f32 = u_xlat18;
      let x_465 : f32 = u_xlat18;
      u_xlat28 = (x_464 * x_465);
      let x_468 : f32 = u_xlat28;
      u_xlat38 = ((x_468 * 0.0208351f) + -0.085133001f);
      let x_471 : f32 = u_xlat28;
      let x_472 : f32 = u_xlat38;
      u_xlat38 = ((x_471 * x_472) + 0.180141002f);
      let x_475 : f32 = u_xlat28;
      let x_476 : f32 = u_xlat38;
      u_xlat38 = ((x_475 * x_476) + -0.330299497f);
      let x_479 : f32 = u_xlat28;
      let x_480 : f32 = u_xlat38;
      u_xlat28 = ((x_479 * x_480) + 0.999866009f);
      let x_483 : f32 = u_xlat28;
      let x_484 : f32 = u_xlat18;
      u_xlat38 = (x_483 * x_484);
      let x_487 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_487));
      let x_490 : f32 = u_xlat38;
      u_xlat38 = ((x_490 * -2.0f) + 1.570796371f);
      let x_493 : bool = u_xlatb9;
      let x_494 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_494, x_493);
      let x_496 : f32 = u_xlat18;
      let x_497 : f32 = u_xlat28;
      let x_499 : f32 = u_xlat38;
      u_xlat18 = ((x_496 * x_497) + x_499);
      let x_501 : f32 = u_xlat36;
      u_xlat36 = min(x_501, 1.0f);
      let x_504 : f32 = u_xlat36;
      let x_505 : f32 = u_xlat36;
      u_xlatb36 = (x_504 < -(x_505));
      let x_508 : bool = u_xlatb36;
      if (x_508) {
        let x_512 : f32 = u_xlat18;
        x_509 = -(x_512);
      } else {
        let x_515 : f32 = u_xlat18;
        x_509 = x_515;
      }
      let x_516 : f32 = x_509;
      u_xlat36 = x_516;
      let x_517 : f32 = u_xlat8;
      let x_518 : f32 = u_xlat36;
      u_xlat36 = ((x_517 * x_518) + -1.0f);
      let x_521 : vec2<f32> = u_xlat16;
      let x_522 : f32 = u_xlat36;
      let x_525 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_521 * vec2<f32>(x_522, x_522)) + vec2<f32>(x_525.x, x_525.y));
    }
    let x_528 : vec2<f32> = u_xlat27;
    u_xlat27 = x_528;
    let x_529 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_529, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_533 : vec2<f32> = u_xlat27;
    let x_536 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_533 * vec2<f32>(x_536, x_536));
    let x_544 : vec2<f32> = u_xlat16;
    let x_545 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_544, 0.0f);
    u_xlat7 = x_545;
    let x_551 : vec4<f32> = u_xlat2;
    let x_553 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_551.x, x_551.y), 0.0f);
    let x_554 : vec3<f32> = vec3<f32>(x_553.x, x_553.y, x_553.z);
    let x_555 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
    let x_557 : vec4<f32> = u_xlat7;
    let x_558 : vec4<f32> = u_xlat3;
    let x_560 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_557 * x_558) + x_560);
    let x_562 : vec4<f32> = u_xlat3;
    let x_563 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_562 + x_563);
    let x_565 : vec2<f32> = u_xlat10;
    let x_566 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_565 + x_566);

    continuing {
      let x_568 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_568 + 1i);
    }
  }
  let x_570 : vec4<f32> = u_xlat4;
  let x_571 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_570 / x_571);
  let x_573 : vec3<f32> = u_xlat0;
  let x_575 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_581 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_581 < 0.5f);
  let x_583 : bool = u_xlatb30;
  if (x_583) {
    let x_586 : vec2<f32> = u_xlat21;
    let x_590 : vec2<f32> = x_26.x_Vignette_Center;
    let x_592 : vec2<f32> = (x_586 + -(x_590));
    let x_593 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_592.x, x_592.y, x_593.z);
    let x_595 : vec3<f32> = u_xlat1;
    let x_600 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_602 : vec2<f32> = (abs(vec2<f32>(x_595.y, x_595.x)) * vec2<f32>(x_600.x, x_600.x));
    let x_603 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_603.x, x_602.x, x_602.y, x_603.w);
    let x_606 : f32 = x_26.x_ScreenParams.x;
    let x_608 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_606 / x_608);
    let x_610 : f32 = u_xlat30;
    u_xlat30 = (x_610 + -1.0f);
    let x_613 : f32 = x_26.x_Vignette_Settings.w;
    let x_614 : f32 = u_xlat30;
    u_xlat30 = ((x_613 * x_614) + 1.0f);
    let x_617 : f32 = u_xlat30;
    let x_619 : f32 = u_xlat2.z;
    u_xlat2.x = (x_617 * x_619);
    let x_622 : vec4<f32> = u_xlat2;
    let x_623 : vec2<f32> = vec2<f32>(x_622.x, x_622.y);
    let x_624 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
    let x_626 : vec4<f32> = u_xlat2;
    let x_630 : vec2<f32> = clamp(vec2<f32>(x_626.x, x_626.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_631 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
    let x_633 : vec4<f32> = u_xlat2;
    let x_635 : vec2<f32> = log2(vec2<f32>(x_633.x, x_633.y));
    let x_636 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_635.x, x_635.y, x_636.z);
    let x_638 : vec3<f32> = u_xlat1;
    let x_641 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_643 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) * vec2<f32>(x_641.z, x_641.z));
    let x_644 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_643.x, x_643.y, x_644.z);
    let x_646 : vec3<f32> = u_xlat1;
    let x_648 : vec2<f32> = exp2(vec2<f32>(x_646.x, x_646.y));
    let x_649 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_648.x, x_648.y, x_649.z);
    let x_651 : vec3<f32> = u_xlat1;
    let x_653 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_651.x, x_651.y), vec2<f32>(x_653.x, x_653.y));
    let x_656 : f32 = u_xlat30;
    u_xlat30 = (-(x_656) + 1.0f);
    let x_659 : f32 = u_xlat30;
    u_xlat30 = max(x_659, 0.0f);
    let x_661 : f32 = u_xlat30;
    u_xlat30 = log2(x_661);
    let x_663 : f32 = u_xlat30;
    let x_665 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_663 * x_665);
    let x_667 : f32 = u_xlat30;
    u_xlat30 = exp2(x_667);
    let x_672 : vec3<f32> = x_26.x_Vignette_Color;
    let x_675 : vec3<f32> = (-(x_672) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_676 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
    let x_678 : f32 = u_xlat30;
    let x_680 : vec4<f32> = u_xlat2;
    let x_684 : vec3<f32> = x_26.x_Vignette_Color;
    let x_685 : vec3<f32> = ((vec3<f32>(x_678, x_678, x_678) * vec3<f32>(x_680.x, x_680.y, x_680.z)) + x_684);
    let x_686 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_685.x, x_685.y, x_685.z, x_686.w);
    let x_688 : vec3<f32> = u_xlat0;
    let x_689 : vec4<f32> = u_xlat2;
    let x_691 : vec3<f32> = (x_688 * vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_692 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
    let x_695 : f32 = u_xlat2.w;
    u_xlat1.x = (x_695 + -1.0f);
    let x_700 : f32 = u_xlat30;
    let x_702 : f32 = u_xlat1.x;
    SV_Target0.w = ((x_700 * x_702) + 1.0f);
  } else {
    let x_713 : vec2<f32> = u_xlat21;
    let x_714 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_713);
    u_xlat30 = x_714.w;
    let x_716 : f32 = u_xlat30;
    u_xlat1.x = (x_716 * 0.077399381f);
    let x_721 : f32 = u_xlat30;
    u_xlat11 = (x_721 + 0.055f);
    let x_724 : f32 = u_xlat11;
    u_xlat11 = (x_724 * 0.947867334f);
    let x_727 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_727), 1.1920929e-07f);
    let x_731 : f32 = u_xlat11;
    u_xlat11 = log2(x_731);
    let x_733 : f32 = u_xlat11;
    u_xlat11 = (x_733 * 2.400000095f);
    let x_736 : f32 = u_xlat11;
    u_xlat11 = exp2(x_736);
    let x_739 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_739);
    let x_741 : bool = u_xlatb30;
    if (x_741) {
      let x_746 : f32 = u_xlat1.x;
      x_742 = x_746;
    } else {
      let x_748 : f32 = u_xlat11;
      x_742 = x_748;
    }
    let x_749 : f32 = x_742;
    u_xlat30 = x_749;
    let x_751 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_751) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_754 : f32 = u_xlat30;
    let x_756 : vec3<f32> = u_xlat1;
    let x_759 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_754, x_754, x_754) * x_756) + x_759);
    let x_761 : vec3<f32> = u_xlat0;
    let x_762 : vec3<f32> = u_xlat1;
    let x_764 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_761 * x_762) + -(x_764));
    let x_769 : f32 = x_26.x_Vignette_Opacity;
    let x_771 : vec3<f32> = u_xlat1;
    let x_773 : vec3<f32> = u_xlat0;
    let x_774 : vec3<f32> = ((vec3<f32>(x_769, x_769, x_769) * x_771) + x_773);
    let x_775 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_774.z, x_775.w);
    let x_778 : f32 = u_xlat2.w;
    u_xlat0.x = (x_778 + -1.0f);
    let x_781 : f32 = u_xlat30;
    let x_783 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_781 * x_783) + 1.0f);
  }
  let x_788 : vec2<f32> = vs_TEXCOORD1;
  let x_791 : vec4<f32> = x_26.x_Grain_Params2;
  let x_795 : vec4<f32> = x_26.x_Grain_Params2;
  let x_797 : vec2<f32> = ((x_788 * vec2<f32>(x_791.x, x_791.y)) + vec2<f32>(x_795.z, x_795.w));
  let x_798 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_797.x, x_797.y, x_798.z);
  let x_805 : vec3<f32> = u_xlat0;
  let x_807 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_805.x, x_805.y));
  u_xlat0 = vec3<f32>(x_807.x, x_807.y, x_807.z);
  let x_809 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_809.x, x_809.y, x_809.z);
  let x_811 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_811, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_815 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_815, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_821 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_821);
  let x_825 : f32 = x_26.x_Grain_Params1.x;
  let x_826 : f32 = u_xlat30;
  u_xlat30 = ((x_825 * -(x_826)) + 1.0f);
  let x_830 : vec3<f32> = u_xlat0;
  let x_831 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_830 * vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec3<f32> = u_xlat0;
  let x_836 : f32 = x_26.x_Grain_Params1.y;
  let x_838 : f32 = x_26.x_Grain_Params1.y;
  let x_840 : f32 = x_26.x_Grain_Params1.y;
  u_xlat0 = (x_834 * vec3<f32>(x_836, x_838, x_840));
  let x_843 : vec3<f32> = u_xlat0;
  let x_844 : f32 = u_xlat30;
  let x_847 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_843 * vec3<f32>(x_844, x_844, x_844)) + vec3<f32>(x_847.x, x_847.y, x_847.z));
  let x_850 : vec2<f32> = vs_TEXCOORD0;
  let x_853 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_857 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_859 : vec2<f32> = ((x_850 * vec2<f32>(x_853.x, x_853.y)) + vec2<f32>(x_857.z, x_857.w));
  let x_860 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_859.x, x_859.y, x_860.z);
  let x_867 : vec3<f32> = u_xlat1;
  let x_869 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_867.x, x_867.y));
  u_xlat30 = x_869.w;
  let x_871 : f32 = u_xlat30;
  u_xlat30 = ((x_871 * 2.0f) + -1.0f);
  let x_874 : f32 = u_xlat30;
  u_xlat1.x = ((x_874 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_880 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_880, 0.0f, 1.0f);
  let x_884 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_884 * 2.0f) + -1.0f);
  let x_888 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_888)) + 1.0f);
  let x_892 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_892);
  let x_894 : f32 = u_xlat30;
  u_xlat30 = (-(x_894) + 1.0f);
  let x_897 : f32 = u_xlat30;
  let x_899 : f32 = u_xlat1.x;
  u_xlat30 = (x_897 * x_899);
  let x_901 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_901 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_905 : vec3<f32> = u_xlat0;
  let x_908 : vec3<f32> = max(abs(x_905), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat2;
  let x_913 : vec3<f32> = log2(vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat2;
  let x_920 : vec3<f32> = (vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_921 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_920.x, x_920.y, x_920.z, x_921.w);
  let x_923 : vec4<f32> = u_xlat2;
  let x_925 : vec3<f32> = exp2(vec3<f32>(x_923.x, x_923.y, x_923.z));
  let x_926 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_925.x, x_925.y, x_925.z, x_926.w);
  let x_928 : vec4<f32> = u_xlat2;
  let x_935 : vec3<f32> = ((vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_936 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_943 : vec3<f32> = u_xlat0;
  let x_946 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_943.x, x_943.y, x_943.z, x_943.x));
  u_xlatb0 = vec3<bool>(x_946.x, x_946.y, x_946.z);
  let x_949 : bool = u_xlatb0.x;
  if (x_949) {
    let x_954 : f32 = u_xlat1.x;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.x;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  u_xlat0.x = x_958;
  let x_961 : bool = u_xlatb0.y;
  if (x_961) {
    let x_966 : f32 = u_xlat1.y;
    x_962 = x_966;
  } else {
    let x_969 : f32 = u_xlat2.y;
    x_962 = x_969;
  }
  let x_970 : f32 = x_962;
  u_xlat0.y = x_970;
  let x_973 : bool = u_xlatb0.z;
  if (x_973) {
    let x_978 : f32 = u_xlat1.z;
    x_974 = x_978;
  } else {
    let x_981 : f32 = u_xlat2.z;
    x_974 = x_981;
  }
  let x_982 : f32 = x_974;
  u_xlat0.z = x_982;
  let x_984 : f32 = u_xlat30;
  let x_989 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_984, x_984, x_984) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_989);
  let x_991 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_991 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_994 : vec3<f32> = u_xlat0;
  let x_996 : vec3<f32> = (x_994 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_997 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat2;
  let x_1002 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1003 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1002.x, x_1002.y, x_1002.z, x_1003.w);
  let x_1005 : vec4<f32> = u_xlat2;
  let x_1008 : vec3<f32> = max(abs(vec3<f32>(x_1005.x, x_1005.y, x_1005.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1009 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat2;
  let x_1013 : vec3<f32> = log2(vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat2;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1016.x, x_1016.y, x_1016.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1020 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec4<f32> = u_xlat2;
  let x_1024 : vec3<f32> = exp2(vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1028 : vec3<f32> = u_xlat0;
  let x_1030 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.x));
  u_xlatb0 = vec3<bool>(x_1030.x, x_1030.y, x_1030.z);
  let x_1033 : bool = u_xlatb0.x;
  if (x_1033) {
    let x_1038 : f32 = u_xlat1.x;
    x_1034 = x_1038;
  } else {
    let x_1041 : f32 = u_xlat2.x;
    x_1034 = x_1041;
  }
  let x_1042 : f32 = x_1034;
  SV_Target0.x = x_1042;
  let x_1045 : bool = u_xlatb0.y;
  if (x_1045) {
    let x_1050 : f32 = u_xlat1.y;
    x_1046 = x_1050;
  } else {
    let x_1053 : f32 = u_xlat2.y;
    x_1046 = x_1053;
  }
  let x_1054 : f32 = x_1046;
  SV_Target0.y = x_1054;
  let x_1057 : bool = u_xlatb0.z;
  if (x_1057) {
    let x_1062 : f32 = u_xlat1.z;
    x_1058 = x_1062;
  } else {
    let x_1065 : f32 = u_xlat2.z;
    x_1058 = x_1065;
  }
  let x_1066 : f32 = x_1058;
  SV_Target0.z = x_1066;
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

