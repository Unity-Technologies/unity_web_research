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
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
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
  x_Grain_Params1 : vec2<f32>,
  x_Grain_Params2 : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

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
  var u_xlatb30 : bool;
  var u_xlat11 : vec3<f32>;
  var x_753 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1077 : f32;
  var x_1089 : f32;
  var x_1101 : f32;
  var x_1168 : f32;
  var x_1181 : f32;
  var x_1193 : f32;
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
  let x_578 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_577.x, x_577.y, x_577.z, x_578.w);
  let x_583 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_583 < 0.5f);
  let x_585 : bool = u_xlatb30;
  if (x_585) {
    let x_588 : vec2<f32> = u_xlat21;
    let x_592 : vec2<f32> = x_26.x_Vignette_Center;
    let x_594 : vec2<f32> = (x_588 + -(x_592));
    let x_595 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_594.x, x_594.y, x_595.z);
    let x_597 : vec3<f32> = u_xlat1;
    let x_602 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_604 : vec2<f32> = (abs(vec2<f32>(x_597.y, x_597.x)) * vec2<f32>(x_602.x, x_602.x));
    let x_605 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_605.x, x_604.x, x_604.y, x_605.w);
    let x_608 : f32 = x_26.x_ScreenParams.x;
    let x_610 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_608 / x_610);
    let x_612 : f32 = u_xlat30;
    u_xlat30 = (x_612 + -1.0f);
    let x_615 : f32 = x_26.x_Vignette_Settings.w;
    let x_616 : f32 = u_xlat30;
    u_xlat30 = ((x_615 * x_616) + 1.0f);
    let x_619 : f32 = u_xlat30;
    let x_621 : f32 = u_xlat2.z;
    u_xlat2.x = (x_619 * x_621);
    let x_624 : vec4<f32> = u_xlat2;
    let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
    let x_628 : vec4<f32> = u_xlat2;
    let x_632 : vec2<f32> = clamp(vec2<f32>(x_628.x, x_628.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_633 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
    let x_635 : vec4<f32> = u_xlat2;
    let x_637 : vec2<f32> = log2(vec2<f32>(x_635.x, x_635.y));
    let x_638 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_637.x, x_637.y, x_638.z);
    let x_640 : vec3<f32> = u_xlat1;
    let x_643 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_645 : vec2<f32> = (vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.z, x_643.z));
    let x_646 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_645.x, x_645.y, x_646.z);
    let x_648 : vec3<f32> = u_xlat1;
    let x_650 : vec2<f32> = exp2(vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_650.x, x_650.y, x_651.z);
    let x_653 : vec3<f32> = u_xlat1;
    let x_655 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_653.x, x_653.y), vec2<f32>(x_655.x, x_655.y));
    let x_658 : f32 = u_xlat30;
    u_xlat30 = (-(x_658) + 1.0f);
    let x_661 : f32 = u_xlat30;
    u_xlat30 = max(x_661, 0.0f);
    let x_663 : f32 = u_xlat30;
    u_xlat30 = log2(x_663);
    let x_665 : f32 = u_xlat30;
    let x_667 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_665 * x_667);
    let x_669 : f32 = u_xlat30;
    u_xlat30 = exp2(x_669);
    let x_674 : vec3<f32> = x_26.x_Vignette_Color;
    let x_677 : vec3<f32> = (-(x_674) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_678 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : f32 = u_xlat30;
    let x_682 : vec4<f32> = u_xlat2;
    let x_686 : vec3<f32> = x_26.x_Vignette_Color;
    let x_687 : vec3<f32> = ((vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_682.x, x_682.y, x_682.z)) + x_686);
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec4<f32> = u_xlat0;
    let x_692 : vec4<f32> = u_xlat2;
    let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_698 : f32 = u_xlat2.w;
    u_xlat1.x = (x_698 + -1.0f);
    let x_701 : f32 = u_xlat30;
    let x_703 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_701 * x_703) + 1.0f);
  } else {
    let x_713 : vec2<f32> = u_xlat21;
    let x_714 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_713);
    u_xlat30 = x_714.w;
    let x_716 : f32 = u_xlat30;
    u_xlat1.x = (x_716 * 0.077399381f);
    let x_721 : f32 = u_xlat30;
    u_xlat11.x = (x_721 + 0.055f);
    let x_726 : f32 = u_xlat11.x;
    u_xlat11.x = (x_726 * 0.947867334f);
    let x_731 : f32 = u_xlat11.x;
    u_xlat11.x = max(abs(x_731), 1.1920929e-07f);
    let x_737 : f32 = u_xlat11.x;
    u_xlat11.x = log2(x_737);
    let x_741 : f32 = u_xlat11.x;
    u_xlat11.x = (x_741 * 2.400000095f);
    let x_746 : f32 = u_xlat11.x;
    u_xlat11.x = exp2(x_746);
    let x_750 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_750);
    let x_752 : bool = u_xlatb30;
    if (x_752) {
      let x_757 : f32 = u_xlat1.x;
      x_753 = x_757;
    } else {
      let x_760 : f32 = u_xlat11.x;
      x_753 = x_760;
    }
    let x_761 : f32 = x_753;
    u_xlat30 = x_761;
    let x_763 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_763) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_766 : f32 = u_xlat30;
    let x_768 : vec3<f32> = u_xlat1;
    let x_771 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_766, x_766, x_766) * x_768) + x_771);
    let x_773 : vec4<f32> = u_xlat0;
    let x_775 : vec3<f32> = u_xlat1;
    let x_777 : vec4<f32> = u_xlat0;
    u_xlat1 = ((vec3<f32>(x_773.x, x_773.y, x_773.z) * x_775) + -(vec3<f32>(x_777.x, x_777.y, x_777.z)));
    let x_783 : f32 = x_26.x_Vignette_Opacity;
    let x_785 : vec3<f32> = u_xlat1;
    let x_787 : vec4<f32> = u_xlat0;
    let x_789 : vec3<f32> = ((vec3<f32>(x_783, x_783, x_783) * x_785) + vec3<f32>(x_787.x, x_787.y, x_787.z));
    let x_790 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
    let x_793 : f32 = u_xlat2.w;
    u_xlat0.x = (x_793 + -1.0f);
    let x_796 : f32 = u_xlat30;
    let x_798 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_796 * x_798) + 1.0f);
  }
  let x_803 : vec2<f32> = vs_TEXCOORD1;
  let x_806 : vec4<f32> = x_26.x_Grain_Params2;
  let x_810 : vec4<f32> = x_26.x_Grain_Params2;
  let x_812 : vec2<f32> = ((x_803 * vec2<f32>(x_806.x, x_806.y)) + vec2<f32>(x_810.z, x_810.w));
  let x_813 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_812.x, x_812.y, x_813.z, x_813.w);
  let x_820 : vec4<f32> = u_xlat0;
  let x_822 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_820.x, x_820.y));
  let x_823 : vec3<f32> = vec3<f32>(x_822.x, x_822.y, x_822.z);
  let x_824 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_823.x, x_823.y, x_823.z, x_824.w);
  let x_826 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_826.x, x_826.y, x_826.z);
  let x_828 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_828, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_832 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_832, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_838 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_838);
  let x_842 : f32 = x_26.x_Grain_Params1.x;
  let x_843 : f32 = u_xlat30;
  u_xlat30 = ((x_842 * -(x_843)) + 1.0f);
  let x_847 : vec4<f32> = u_xlat0;
  let x_849 : vec4<f32> = u_xlat2;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_857 : f32 = x_26.x_Grain_Params1.y;
  let x_859 : f32 = x_26.x_Grain_Params1.y;
  let x_861 : f32 = x_26.x_Grain_Params1.y;
  let x_863 : vec3<f32> = (vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_857, x_859, x_861));
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat0;
  let x_868 : f32 = u_xlat30;
  let x_871 : vec4<f32> = u_xlat2;
  let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_868, x_868, x_868)) + vec3<f32>(x_871.x, x_871.y, x_871.z));
  let x_874 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_876 : vec4<f32> = u_xlat3;
  let x_879 : f32 = x_26.x_PostExposure;
  let x_881 : f32 = x_26.x_PostExposure;
  let x_883 : f32 = x_26.x_PostExposure;
  let x_885 : f32 = x_26.x_PostExposure;
  let x_886 : vec4<f32> = vec4<f32>(x_879, x_881, x_883, x_885);
  u_xlat0 = (x_876 * vec4<f32>(x_886.x, x_886.y, x_886.z, x_886.w));
  let x_893 : vec4<f32> = u_xlat0;
  let x_900 : vec3<f32> = ((vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_901 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_900.x, x_900.y, x_900.z, x_901.w);
  let x_903 : vec4<f32> = u_xlat0;
  let x_905 : vec3<f32> = log2(vec3<f32>(x_903.x, x_903.y, x_903.z));
  let x_906 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_905.x, x_905.y, x_905.z, x_906.w);
  let x_908 : vec4<f32> = u_xlat0;
  let x_915 : vec3<f32> = ((vec3<f32>(x_908.x, x_908.y, x_908.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_916 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat0;
  let x_922 : vec3<f32> = clamp(vec3<f32>(x_918.x, x_918.y, x_918.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_923 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat0;
  let x_929 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_931 : vec3<f32> = (vec3<f32>(x_925.x, x_925.y, x_925.z) * vec3<f32>(x_929.y, x_929.y, x_929.y));
  let x_932 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_935 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_935 * 0.5f);
  let x_938 : vec4<f32> = u_xlat0;
  let x_941 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_944 : vec3<f32> = u_xlat1;
  let x_946 : vec3<f32> = ((vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(x_941.x, x_941.x, x_941.x)) + vec3<f32>(x_944.x, x_944.x, x_944.x));
  let x_947 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  let x_957 : vec4<f32> = u_xlat0;
  let x_959 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_957.x, x_957.y, x_957.z));
  let x_960 : vec3<f32> = vec3<f32>(x_959.x, x_959.y, x_959.z);
  let x_961 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
  let x_963 : vec2<f32> = vs_TEXCOORD0;
  let x_966 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_970 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_972 : vec2<f32> = ((x_963 * vec2<f32>(x_966.x, x_966.y)) + vec2<f32>(x_970.z, x_970.w));
  let x_973 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_972.x, x_972.y, x_973.z);
  let x_980 : vec3<f32> = u_xlat1;
  let x_982 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_980.x, x_980.y));
  u_xlat1.x = x_982.w;
  let x_986 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_986 * 2.0f) + -1.0f);
  let x_991 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_991 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_997 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_997, 0.0f, 1.0f);
  let x_1001 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1001 * 2.0f) + -1.0f);
  let x_1006 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1006)) + 1.0f);
  let x_1012 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1012);
  let x_1016 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1016) + 1.0f);
  let x_1021 : f32 = u_xlat1.x;
  let x_1023 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1021 * x_1023);
  let x_1026 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1031 : vec4<f32> = u_xlat0;
  let x_1035 : vec3<f32> = max(abs(vec3<f32>(x_1031.x, x_1031.y, x_1031.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1036 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat2;
  let x_1040 : vec3<f32> = log2(vec3<f32>(x_1038.x, x_1038.y, x_1038.z));
  let x_1041 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  let x_1043 : vec4<f32> = u_xlat2;
  let x_1047 : vec3<f32> = (vec3<f32>(x_1043.x, x_1043.y, x_1043.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1048 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  let x_1050 : vec4<f32> = u_xlat2;
  let x_1052 : vec3<f32> = exp2(vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1053 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec4<f32> = u_xlat2;
  let x_1062 : vec3<f32> = ((vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1063 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1070 : vec4<f32> = u_xlat0;
  let x_1073 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.x));
  u_xlatb0 = vec3<bool>(x_1073.x, x_1073.y, x_1073.z);
  let x_1076 : bool = u_xlatb0.x;
  if (x_1076) {
    let x_1081 : f32 = u_xlat11.x;
    x_1077 = x_1081;
  } else {
    let x_1084 : f32 = u_xlat2.x;
    x_1077 = x_1084;
  }
  let x_1085 : f32 = x_1077;
  u_xlat0.x = x_1085;
  let x_1088 : bool = u_xlatb0.y;
  if (x_1088) {
    let x_1093 : f32 = u_xlat11.y;
    x_1089 = x_1093;
  } else {
    let x_1096 : f32 = u_xlat2.y;
    x_1089 = x_1096;
  }
  let x_1097 : f32 = x_1089;
  u_xlat0.y = x_1097;
  let x_1100 : bool = u_xlatb0.z;
  if (x_1100) {
    let x_1105 : f32 = u_xlat11.z;
    x_1101 = x_1105;
  } else {
    let x_1108 : f32 = u_xlat2.z;
    x_1101 = x_1108;
  }
  let x_1109 : f32 = x_1101;
  u_xlat0.z = x_1109;
  let x_1111 : vec3<f32> = u_xlat1;
  let x_1116 : vec4<f32> = u_xlat0;
  let x_1118 : vec3<f32> = ((vec3<f32>(x_1111.x, x_1111.x, x_1111.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1116.x, x_1116.y, x_1116.z));
  let x_1119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1121 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1121.x, x_1121.y, x_1121.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1125 : vec4<f32> = u_xlat0;
  let x_1128 : vec3<f32> = (vec3<f32>(x_1125.x, x_1125.y, x_1125.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1129 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1129.w);
  let x_1131 : vec4<f32> = u_xlat2;
  let x_1134 : vec3<f32> = (vec3<f32>(x_1131.x, x_1131.y, x_1131.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1134.x, x_1134.y, x_1134.z, x_1135.w);
  let x_1137 : vec4<f32> = u_xlat2;
  let x_1140 : vec3<f32> = max(abs(vec3<f32>(x_1137.x, x_1137.y, x_1137.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  let x_1143 : vec4<f32> = u_xlat2;
  let x_1145 : vec3<f32> = log2(vec3<f32>(x_1143.x, x_1143.y, x_1143.z));
  let x_1146 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
  let x_1148 : vec4<f32> = u_xlat2;
  let x_1151 : vec3<f32> = (vec3<f32>(x_1148.x, x_1148.y, x_1148.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1152 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1151.x, x_1151.y, x_1151.z, x_1152.w);
  let x_1154 : vec4<f32> = u_xlat2;
  let x_1156 : vec3<f32> = exp2(vec3<f32>(x_1154.x, x_1154.y, x_1154.z));
  let x_1157 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1160.x));
  u_xlatb0 = vec3<bool>(x_1162.x, x_1162.y, x_1162.z);
  let x_1167 : bool = u_xlatb0.x;
  if (x_1167) {
    let x_1172 : f32 = u_xlat1.x;
    x_1168 = x_1172;
  } else {
    let x_1175 : f32 = u_xlat2.x;
    x_1168 = x_1175;
  }
  let x_1176 : f32 = x_1168;
  SV_Target0.x = x_1176;
  let x_1180 : bool = u_xlatb0.y;
  if (x_1180) {
    let x_1185 : f32 = u_xlat1.y;
    x_1181 = x_1185;
  } else {
    let x_1188 : f32 = u_xlat2.y;
    x_1181 = x_1188;
  }
  let x_1189 : f32 = x_1181;
  SV_Target0.y = x_1189;
  let x_1192 : bool = u_xlatb0.z;
  if (x_1192) {
    let x_1197 : f32 = u_xlat1.z;
    x_1193 = x_1197;
  } else {
    let x_1200 : f32 = u_xlat2.z;
    x_1193 = x_1200;
  }
  let x_1201 : f32 = x_1193;
  SV_Target0.z = x_1201;
  let x_1204 : f32 = u_xlat0.w;
  SV_Target0.w = x_1204;
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

