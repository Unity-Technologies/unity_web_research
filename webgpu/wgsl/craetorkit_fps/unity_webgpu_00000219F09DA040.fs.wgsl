struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
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
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_GrainTex : sampler;

@group(0) @binding(3) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(9) var sampler_Lut3D : sampler;

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
  var u_xlat11 : f32;
  var x_742 : f32;
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
    let x_761 : vec4<f32> = u_xlat0;
    let x_763 : vec3<f32> = u_xlat1;
    let x_765 : vec4<f32> = u_xlat0;
    u_xlat1 = ((vec3<f32>(x_761.x, x_761.y, x_761.z) * x_763) + -(vec3<f32>(x_765.x, x_765.y, x_765.z)));
    let x_771 : f32 = x_26.x_Vignette_Opacity;
    let x_773 : vec3<f32> = u_xlat1;
    let x_775 : vec4<f32> = u_xlat0;
    let x_777 : vec3<f32> = ((vec3<f32>(x_771, x_771, x_771) * x_773) + vec3<f32>(x_775.x, x_775.y, x_775.z));
    let x_778 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
    let x_781 : f32 = u_xlat2.w;
    u_xlat0.x = (x_781 + -1.0f);
    let x_784 : f32 = u_xlat30;
    let x_786 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_784 * x_786) + 1.0f);
  }
  let x_791 : vec2<f32> = vs_TEXCOORD1;
  let x_794 : vec4<f32> = x_26.x_Grain_Params2;
  let x_798 : vec4<f32> = x_26.x_Grain_Params2;
  let x_800 : vec2<f32> = ((x_791 * vec2<f32>(x_794.x, x_794.y)) + vec2<f32>(x_798.z, x_798.w));
  let x_801 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_808.x, x_808.y));
  let x_811 : vec3<f32> = vec3<f32>(x_810.x, x_810.y, x_810.z);
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_814.x, x_814.y, x_814.z);
  let x_816 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_816, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_820 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_820, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_826 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_826);
  let x_830 : f32 = x_26.x_Grain_Params1.x;
  let x_831 : f32 = u_xlat30;
  u_xlat30 = ((x_830 * -(x_831)) + 1.0f);
  let x_835 : vec4<f32> = u_xlat0;
  let x_837 : vec4<f32> = u_xlat2;
  let x_839 : vec3<f32> = (vec3<f32>(x_835.x, x_835.y, x_835.z) * vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat0;
  let x_845 : f32 = x_26.x_Grain_Params1.y;
  let x_847 : f32 = x_26.x_Grain_Params1.y;
  let x_849 : f32 = x_26.x_Grain_Params1.y;
  let x_851 : vec3<f32> = (vec3<f32>(x_842.x, x_842.y, x_842.z) * vec3<f32>(x_845, x_847, x_849));
  let x_852 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_854 : vec4<f32> = u_xlat0;
  let x_856 : f32 = u_xlat30;
  let x_859 : vec4<f32> = u_xlat2;
  let x_861 : vec3<f32> = ((vec3<f32>(x_854.x, x_854.y, x_854.z) * vec3<f32>(x_856, x_856, x_856)) + vec3<f32>(x_859.x, x_859.y, x_859.z));
  let x_862 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
  let x_864 : vec4<f32> = u_xlat3;
  let x_868 : f32 = x_26.x_PostExposure;
  let x_870 : f32 = x_26.x_PostExposure;
  let x_872 : f32 = x_26.x_PostExposure;
  let x_874 : f32 = x_26.x_PostExposure;
  let x_875 : vec4<f32> = vec4<f32>(x_868, x_870, x_872, x_874);
  u_xlat0 = (vec4<f32>(x_864.w, x_864.x, x_864.y, x_864.z) * vec4<f32>(x_875.x, x_875.y, x_875.z, x_875.w));
  let x_882 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_882.y, x_882.z, x_882.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_890 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_890);
  let x_892 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_892 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_899 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_899, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_903 : vec3<f32> = u_xlat1;
  let x_906 : vec2<f32> = x_26.x_Lut3D_Params;
  u_xlat1 = (x_903 * vec3<f32>(x_906.y, x_906.y, x_906.y));
  let x_910 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_910 * 0.5f);
  let x_912 : vec3<f32> = u_xlat1;
  let x_914 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_917 : f32 = u_xlat31;
  u_xlat1 = ((x_912 * vec3<f32>(x_914.x, x_914.x, x_914.x)) + vec3<f32>(x_917, x_917, x_917));
  let x_928 : vec3<f32> = u_xlat1;
  let x_929 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, x_928);
  let x_930 : vec3<f32> = vec3<f32>(x_929.x, x_929.y, x_929.z);
  let x_931 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_931.x, x_930.x, x_930.y, x_930.z);
  let x_935 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_935);
  let x_937 : bool = u_xlatb1;
  if (x_937) {
    let x_940 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_940.y, x_940.z, x_940.w);
    let x_942 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_942, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_946 : vec3<f32> = u_xlat1;
    u_xlat0.x = dot(x_946, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_951 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_951.y, x_951.z, x_951.w, x_951.x);
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

