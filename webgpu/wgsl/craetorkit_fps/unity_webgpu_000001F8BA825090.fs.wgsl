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

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
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
  var u_xlat11 : vec3<f32>;
  var x_1063 : f32;
  var u_xlatb0 : bool;
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
  let x_573 : vec4<f32> = u_xlat0;
  let x_575 : vec4<f32> = u_xlat2;
  let x_577 : vec3<f32> = (vec3<f32>(x_573.x, x_573.x, x_573.x) * vec3<f32>(x_575.x, x_575.y, x_575.z));
  let x_578 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_582 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_586 : vec4<f32> = u_xlat0;
  let x_592 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_595 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_586.x, x_586.y, x_586.w, x_586.y)) * vec4<f32>(x_592.x, x_592.x, x_592.x, x_592.x)) + vec4<f32>(x_595.x, x_595.y, x_595.x, x_595.y));
  let x_598 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_598, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_602 * vec4<f32>(x_604, x_604, x_604, x_604));
  let x_612 : vec4<f32> = u_xlat3;
  let x_614 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_612.x, x_612.y));
  u_xlat4 = x_614;
  let x_618 : vec4<f32> = u_xlat3;
  let x_620 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_618.z, x_618.w));
  u_xlat3 = x_620;
  let x_621 : vec4<f32> = u_xlat3;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_621 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_624);
  let x_626 : vec4<f32> = u_xlat0;
  let x_630 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_633 : vec2<f32> = u_xlat21;
  let x_634 : vec2<f32> = ((-(vec2<f32>(x_626.z, x_626.y)) * vec2<f32>(x_630.x, x_630.x)) + x_633);
  let x_635 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_634.x, x_634.y, x_635.z);
  let x_637 : vec3<f32> = u_xlat1;
  let x_641 : vec2<f32> = clamp(vec2<f32>(x_637.x, x_637.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_642 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_641.x, x_641.y, x_642.z);
  let x_644 : vec3<f32> = u_xlat1;
  let x_647 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_649 : vec2<f32> = (vec2<f32>(x_644.x, x_644.y) * vec2<f32>(x_647, x_647));
  let x_650 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_649.x, x_649.y, x_650.z);
  let x_655 : vec3<f32> = u_xlat1;
  let x_657 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_655.x, x_655.y));
  u_xlat4 = x_657;
  let x_658 : vec4<f32> = u_xlat3;
  let x_659 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_658 + x_659);
  let x_661 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_667 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_661.z, x_661.w, x_661.x, x_661.w) * vec4<f32>(x_664.x, x_664.x, x_664.x, x_664.x)) + vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y));
  let x_670 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_670, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_674 : vec4<f32> = u_xlat4;
  let x_676 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_674 * vec4<f32>(x_676, x_676, x_676, x_676));
  let x_682 : vec4<f32> = u_xlat4;
  let x_684 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_682.x, x_682.y));
  u_xlat5 = x_684;
  let x_685 : vec4<f32> = u_xlat5;
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_685 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_687);
  let x_689 : vec2<f32> = u_xlat21;
  let x_690 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_689.x, x_689.y, x_690.z);
  let x_692 : vec3<f32> = u_xlat1;
  let x_696 : vec2<f32> = clamp(vec2<f32>(x_692.x, x_692.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_697 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_696.x, x_696.y, x_697.z);
  let x_699 : vec3<f32> = u_xlat1;
  let x_702 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_704 : vec2<f32> = (vec2<f32>(x_699.x, x_699.y) * vec2<f32>(x_702, x_702));
  let x_705 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_704.x, x_704.y, x_705.z);
  let x_710 : vec3<f32> = u_xlat1;
  let x_712 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_710.x, x_710.y));
  u_xlat5 = x_712;
  let x_713 : vec4<f32> = u_xlat5;
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_713 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_717);
  let x_722 : vec4<f32> = u_xlat4;
  let x_724 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_722.z, x_722.w));
  u_xlat4 = x_724;
  let x_725 : vec4<f32> = u_xlat4;
  let x_727 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_725 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_727);
  let x_729 : vec4<f32> = u_xlat0;
  let x_732 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_735 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_729.z, x_729.y, x_729.w, x_729.y) * vec4<f32>(x_732.x, x_732.x, x_732.x, x_732.x)) + vec4<f32>(x_735.x, x_735.y, x_735.x, x_735.y));
  let x_738 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_738, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_742 : vec4<f32> = u_xlat4;
  let x_744 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_742 * vec4<f32>(x_744, x_744, x_744, x_744));
  let x_750 : vec4<f32> = u_xlat4;
  let x_752 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_750.x, x_750.y));
  u_xlat5 = x_752;
  let x_753 : vec4<f32> = u_xlat3;
  let x_754 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_753 + x_754);
  let x_759 : vec4<f32> = u_xlat4;
  let x_761 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_759.z, x_759.w));
  u_xlat4 = x_761;
  let x_762 : vec4<f32> = u_xlat4;
  let x_764 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_762 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_764);
  let x_766 : vec4<f32> = u_xlat0;
  let x_769 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_772 : vec2<f32> = u_xlat21;
  let x_773 : vec2<f32> = ((vec2<f32>(x_766.x, x_766.y) * vec2<f32>(x_769.x, x_769.x)) + x_772);
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_774.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_780 : vec2<f32> = clamp(vec2<f32>(x_776.x, x_776.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_781.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_786 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_788 : vec2<f32> = (vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_786, x_786));
  let x_789 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_788.x, x_788.y, x_789.z, x_789.w);
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_794.x, x_794.y));
  u_xlat0 = x_796;
  let x_797 : vec4<f32> = u_xlat0;
  let x_798 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_797 + x_798);
  let x_800 : vec4<f32> = u_xlat0;
  let x_802 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_800 * vec4<f32>(x_802.y, x_802.y, x_802.y, x_802.y));
  let x_805 : vec2<f32> = u_xlat21;
  let x_808 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_812 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_814 : vec2<f32> = ((x_805 * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_812.z, x_812.w));
  let x_815 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_814.x, x_814.y, x_815.z);
  let x_822 : vec3<f32> = u_xlat1;
  let x_824 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_822.x, x_822.y));
  let x_825 : vec3<f32> = vec3<f32>(x_824.x, x_824.y, x_824.z);
  let x_826 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat0;
  let x_832 : vec3<f32> = (vec3<f32>(x_828.x, x_828.y, x_828.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_833 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_832.x, x_832.y, x_832.z, x_833.w);
  let x_835 : vec4<f32> = u_xlat3;
  let x_838 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_840 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(x_838.z, x_838.z, x_838.z));
  let x_841 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_840.x, x_840.y, x_840.z, x_841.w);
  let x_843 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_843 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = x_26.x_Bloom_Color;
  let x_851 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * x_850);
  let x_852 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.w;
  u_xlat5.w = (x_855 * 0.0625f);
  let x_858 : vec4<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_858 + x_859);
  let x_861 : vec4<f32> = u_xlat4;
  let x_863 : vec4<f32> = u_xlat3;
  let x_865 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) * vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_866 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  u_xlat2.w = 0.0f;
  let x_869 : vec4<f32> = u_xlat0;
  let x_870 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_869 + x_870);
  let x_874 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_874 < 0.5f);
  let x_876 : bool = u_xlatb1;
  if (x_876) {
    let x_879 : vec2<f32> = u_xlat21;
    let x_883 : vec2<f32> = x_26.x_Vignette_Center;
    let x_885 : vec2<f32> = (x_879 + -(x_883));
    let x_886 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_885.x, x_885.y, x_886.z);
    let x_888 : vec3<f32> = u_xlat1;
    let x_893 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_895 : vec2<f32> = (abs(vec2<f32>(x_888.y, x_888.x)) * vec2<f32>(x_893.x, x_893.x));
    let x_896 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_896.x, x_895.x, x_895.y, x_896.w);
    let x_899 : f32 = x_26.x_ScreenParams.x;
    let x_901 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_899 / x_901);
    let x_905 : f32 = u_xlat1.x;
    u_xlat1.x = (x_905 + -1.0f);
    let x_909 : f32 = x_26.x_Vignette_Settings.w;
    let x_911 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_909 * x_911) + 1.0f);
    let x_916 : f32 = u_xlat1.x;
    let x_918 : f32 = u_xlat2.z;
    u_xlat2.x = (x_916 * x_918);
    let x_921 : vec4<f32> = u_xlat2;
    let x_922 : vec2<f32> = vec2<f32>(x_921.x, x_921.y);
    let x_923 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_923.z, x_923.w);
    let x_925 : vec4<f32> = u_xlat2;
    let x_929 : vec2<f32> = clamp(vec2<f32>(x_925.x, x_925.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_930 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_929.x, x_929.y, x_930.z, x_930.w);
    let x_932 : vec4<f32> = u_xlat2;
    let x_934 : vec2<f32> = log2(vec2<f32>(x_932.x, x_932.y));
    let x_935 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_934.x, x_934.y, x_935.z);
    let x_937 : vec3<f32> = u_xlat1;
    let x_940 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_942 : vec2<f32> = (vec2<f32>(x_937.x, x_937.y) * vec2<f32>(x_940.z, x_940.z));
    let x_943 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_942.x, x_942.y, x_943.z);
    let x_945 : vec3<f32> = u_xlat1;
    let x_947 : vec2<f32> = exp2(vec2<f32>(x_945.x, x_945.y));
    let x_948 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_947.x, x_947.y, x_948.z);
    let x_950 : vec3<f32> = u_xlat1;
    let x_952 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_950.x, x_950.y), vec2<f32>(x_952.x, x_952.y));
    let x_957 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_957) + 1.0f);
    let x_962 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_962, 0.0f);
    let x_966 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_966);
    let x_970 : f32 = u_xlat1.x;
    let x_972 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_970 * x_972);
    let x_976 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_976);
    let x_981 : vec3<f32> = x_26.x_Vignette_Color;
    let x_984 : vec3<f32> = (-(x_981) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_985 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
    let x_987 : vec3<f32> = u_xlat1;
    let x_989 : vec4<f32> = u_xlat2;
    let x_993 : vec3<f32> = x_26.x_Vignette_Color;
    let x_994 : vec3<f32> = ((vec3<f32>(x_987.x, x_987.x, x_987.x) * vec3<f32>(x_989.x, x_989.y, x_989.z)) + x_993);
    let x_995 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_994.x, x_994.y, x_994.z, x_995.w);
    let x_997 : vec4<f32> = u_xlat0;
    let x_999 : vec4<f32> = u_xlat2;
    let x_1001 : vec3<f32> = (vec3<f32>(x_997.x, x_997.y, x_997.z) * vec3<f32>(x_999.x, x_999.y, x_999.z));
    let x_1002 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1002.w);
    let x_1006 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1006 + -1.0f);
    let x_1010 : f32 = u_xlat1.x;
    let x_1012 : f32 = u_xlat11.x;
    u_xlat2.w = ((x_1010 * x_1012) + 1.0f);
  } else {
    let x_1022 : vec2<f32> = u_xlat21;
    let x_1023 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1022);
    u_xlat1.x = x_1023.w;
    let x_1027 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1027 + 0.055f);
    let x_1031 : vec3<f32> = u_xlat1;
    let x_1036 : vec2<f32> = (vec2<f32>(x_1031.x, x_1031.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1037 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1036.x, x_1036.y, x_1037.z);
    let x_1040 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1040), 1.1920929e-07f);
    let x_1046 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1046);
    let x_1050 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1050 * 2.400000095f);
    let x_1055 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1055);
    let x_1060 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1060);
    let x_1062 : bool = u_xlatb1;
    if (x_1062) {
      let x_1067 : f32 = u_xlat11.x;
      x_1063 = x_1067;
    } else {
      let x_1070 : f32 = u_xlat21.x;
      x_1063 = x_1070;
    }
    let x_1071 : f32 = x_1063;
    u_xlat1.x = x_1071;
    let x_1074 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1074) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1077 : vec3<f32> = u_xlat1;
    let x_1079 : vec3<f32> = u_xlat11;
    let x_1082 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1077.x, x_1077.x, x_1077.x) * x_1079) + x_1082);
    let x_1084 : vec4<f32> = u_xlat0;
    let x_1086 : vec3<f32> = u_xlat11;
    let x_1088 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1084.x, x_1084.y, x_1084.z) * x_1086) + -(vec3<f32>(x_1088.x, x_1088.y, x_1088.z)));
    let x_1094 : f32 = x_26.x_Vignette_Opacity;
    let x_1096 : vec3<f32> = u_xlat11;
    let x_1098 : vec4<f32> = u_xlat0;
    let x_1100 : vec3<f32> = ((vec3<f32>(x_1094, x_1094, x_1094) * x_1096) + vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
    let x_1101 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
    let x_1104 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1104 + -1.0f);
    let x_1108 : f32 = u_xlat1.x;
    let x_1110 : f32 = u_xlat0.x;
    u_xlat2.w = ((x_1108 * x_1110) + 1.0f);
  }
  let x_1117 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_1117);
  let x_1119 : bool = u_xlatb0;
  if (x_1119) {
    let x_1122 : vec4<f32> = u_xlat2;
    let x_1123 : vec3<f32> = vec3<f32>(x_1122.x, x_1122.y, x_1122.z);
    let x_1124 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1123.x, x_1123.y, x_1123.z, x_1124.w);
    let x_1126 : vec4<f32> = u_xlat0;
    let x_1130 : vec3<f32> = clamp(vec3<f32>(x_1126.x, x_1126.y, x_1126.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1131 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
    let x_1133 : vec4<f32> = u_xlat0;
    u_xlat2.w = dot(vec3<f32>(x_1133.x, x_1133.y, x_1133.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1143 : vec4<f32> = u_xlat2;
  SV_Target0 = x_1143;
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

