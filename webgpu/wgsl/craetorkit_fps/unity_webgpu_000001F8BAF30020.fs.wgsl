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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
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

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

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
  var x_1055 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1380 : f32;
  var x_1392 : f32;
  var x_1404 : f32;
  var x_1471 : f32;
  var x_1484 : f32;
  var x_1496 : f32;
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
  u_xlat4 = (x_828 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_832 : vec4<f32> = u_xlat3;
  let x_835 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_837 : vec3<f32> = (vec3<f32>(x_832.x, x_832.y, x_832.z) * vec3<f32>(x_835.z, x_835.z, x_835.z));
  let x_838 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_837.x, x_837.y, x_837.z, x_838.w);
  u_xlat3.w = 0.0f;
  let x_841 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_841 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_844 : vec4<f32> = u_xlat0;
  let x_848 : vec3<f32> = x_26.x_Bloom_Color;
  let x_849 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * x_848);
  let x_850 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_853 : f32 = u_xlat0.w;
  u_xlat5.w = (x_853 * 0.0625f);
  let x_856 : vec4<f32> = u_xlat2;
  let x_857 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_856 + x_857);
  let x_859 : vec4<f32> = u_xlat3;
  let x_860 : vec4<f32> = u_xlat4;
  let x_862 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_859 * x_860) + x_862);
  let x_866 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_866 < 0.5f);
  let x_868 : bool = u_xlatb1;
  if (x_868) {
    let x_871 : vec2<f32> = u_xlat21;
    let x_875 : vec2<f32> = x_26.x_Vignette_Center;
    let x_877 : vec2<f32> = (x_871 + -(x_875));
    let x_878 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_877.x, x_877.y, x_878.z);
    let x_880 : vec3<f32> = u_xlat1;
    let x_885 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_887 : vec2<f32> = (abs(vec2<f32>(x_880.y, x_880.x)) * vec2<f32>(x_885.x, x_885.x));
    let x_888 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_888.x, x_887.x, x_887.y, x_888.w);
    let x_891 : f32 = x_26.x_ScreenParams.x;
    let x_893 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_891 / x_893);
    let x_897 : f32 = u_xlat1.x;
    u_xlat1.x = (x_897 + -1.0f);
    let x_901 : f32 = x_26.x_Vignette_Settings.w;
    let x_903 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_901 * x_903) + 1.0f);
    let x_908 : f32 = u_xlat1.x;
    let x_910 : f32 = u_xlat2.z;
    u_xlat2.x = (x_908 * x_910);
    let x_913 : vec4<f32> = u_xlat2;
    let x_914 : vec2<f32> = vec2<f32>(x_913.x, x_913.y);
    let x_915 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_914.x, x_914.y, x_915.z, x_915.w);
    let x_917 : vec4<f32> = u_xlat2;
    let x_921 : vec2<f32> = clamp(vec2<f32>(x_917.x, x_917.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_922 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
    let x_924 : vec4<f32> = u_xlat2;
    let x_926 : vec2<f32> = log2(vec2<f32>(x_924.x, x_924.y));
    let x_927 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_926.x, x_926.y, x_927.z);
    let x_929 : vec3<f32> = u_xlat1;
    let x_932 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_934 : vec2<f32> = (vec2<f32>(x_929.x, x_929.y) * vec2<f32>(x_932.z, x_932.z));
    let x_935 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_934.x, x_934.y, x_935.z);
    let x_937 : vec3<f32> = u_xlat1;
    let x_939 : vec2<f32> = exp2(vec2<f32>(x_937.x, x_937.y));
    let x_940 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_939.x, x_939.y, x_940.z);
    let x_942 : vec3<f32> = u_xlat1;
    let x_944 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_942.x, x_942.y), vec2<f32>(x_944.x, x_944.y));
    let x_949 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_949) + 1.0f);
    let x_954 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_954, 0.0f);
    let x_958 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_958);
    let x_962 : f32 = u_xlat1.x;
    let x_964 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_962 * x_964);
    let x_968 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_968);
    let x_973 : vec3<f32> = x_26.x_Vignette_Color;
    let x_976 : vec3<f32> = (-(x_973) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_977 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
    let x_979 : vec3<f32> = u_xlat1;
    let x_981 : vec4<f32> = u_xlat2;
    let x_985 : vec3<f32> = x_26.x_Vignette_Color;
    let x_986 : vec3<f32> = ((vec3<f32>(x_979.x, x_979.x, x_979.x) * vec3<f32>(x_981.x, x_981.y, x_981.z)) + x_985);
    let x_987 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_989 : vec4<f32> = u_xlat0;
    let x_991 : vec4<f32> = u_xlat2;
    let x_993 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991.x, x_991.y, x_991.z));
    let x_994 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
    let x_998 : f32 = u_xlat0.w;
    u_xlat11.x = (x_998 + -1.0f);
    let x_1002 : f32 = u_xlat1.x;
    let x_1004 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1002 * x_1004) + 1.0f);
  } else {
    let x_1014 : vec2<f32> = u_xlat21;
    let x_1015 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1014);
    u_xlat1.x = x_1015.w;
    let x_1019 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1019 + 0.055f);
    let x_1023 : vec3<f32> = u_xlat1;
    let x_1028 : vec2<f32> = (vec2<f32>(x_1023.x, x_1023.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1029 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1028.x, x_1028.y, x_1029.z);
    let x_1032 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1032), 1.1920929e-07f);
    let x_1038 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1038);
    let x_1042 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1042 * 2.400000095f);
    let x_1047 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1047);
    let x_1052 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1052);
    let x_1054 : bool = u_xlatb1;
    if (x_1054) {
      let x_1059 : f32 = u_xlat11.x;
      x_1055 = x_1059;
    } else {
      let x_1062 : f32 = u_xlat21.x;
      x_1055 = x_1062;
    }
    let x_1063 : f32 = x_1055;
    u_xlat1.x = x_1063;
    let x_1066 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1066) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1069 : vec3<f32> = u_xlat1;
    let x_1071 : vec3<f32> = u_xlat11;
    let x_1074 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1069.x, x_1069.x, x_1069.x) * x_1071) + x_1074);
    let x_1076 : vec4<f32> = u_xlat0;
    let x_1078 : vec3<f32> = u_xlat11;
    let x_1080 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * x_1078) + -(vec3<f32>(x_1080.x, x_1080.y, x_1080.z)));
    let x_1085 : f32 = x_26.x_Vignette_Opacity;
    let x_1087 : vec3<f32> = u_xlat11;
    let x_1089 : vec4<f32> = u_xlat0;
    let x_1091 : vec3<f32> = ((vec3<f32>(x_1085, x_1085, x_1085) * x_1087) + vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
    let x_1092 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
    let x_1095 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1095 + -1.0f);
    let x_1099 : f32 = u_xlat1.x;
    let x_1101 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1099 * x_1101) + 1.0f);
  }
  let x_1106 : vec2<f32> = vs_TEXCOORD1;
  let x_1109 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1113 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1115 : vec2<f32> = ((x_1106 * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1113.z, x_1113.w));
  let x_1116 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1115.x, x_1115.y, x_1116.z, x_1116.w);
  let x_1123 : vec4<f32> = u_xlat0;
  let x_1125 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1123.x, x_1123.y));
  let x_1126 : vec3<f32> = vec3<f32>(x_1125.x, x_1125.y, x_1125.z);
  let x_1127 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1126.x, x_1126.y, x_1126.z, x_1127.w);
  let x_1129 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1129.x, x_1129.y, x_1129.z);
  let x_1131 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1131, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1135 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1135, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1141 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1141);
  let x_1145 : f32 = x_26.x_Grain_Params1.x;
  let x_1146 : f32 = u_xlat30;
  u_xlat30 = ((x_1145 * -(x_1146)) + 1.0f);
  let x_1150 : vec4<f32> = u_xlat0;
  let x_1152 : vec4<f32> = u_xlat2;
  let x_1154 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(x_1152.x, x_1152.y, x_1152.z));
  let x_1155 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1154.x, x_1154.y, x_1154.z, x_1155.w);
  let x_1157 : vec4<f32> = u_xlat0;
  let x_1160 : f32 = x_26.x_Grain_Params1.y;
  let x_1162 : f32 = x_26.x_Grain_Params1.y;
  let x_1164 : f32 = x_26.x_Grain_Params1.y;
  let x_1166 : vec3<f32> = (vec3<f32>(x_1157.x, x_1157.y, x_1157.z) * vec3<f32>(x_1160, x_1162, x_1164));
  let x_1167 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1166.x, x_1166.y, x_1166.z, x_1167.w);
  let x_1169 : vec4<f32> = u_xlat0;
  let x_1171 : f32 = u_xlat30;
  let x_1174 : vec4<f32> = u_xlat2;
  let x_1176 : vec3<f32> = ((vec3<f32>(x_1169.x, x_1169.y, x_1169.z) * vec3<f32>(x_1171, x_1171, x_1171)) + vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat3;
  let x_1182 : f32 = x_26.x_PostExposure;
  let x_1184 : f32 = x_26.x_PostExposure;
  let x_1186 : f32 = x_26.x_PostExposure;
  let x_1188 : f32 = x_26.x_PostExposure;
  let x_1189 : vec4<f32> = vec4<f32>(x_1182, x_1184, x_1186, x_1188);
  u_xlat0 = (x_1179 * vec4<f32>(x_1189.x, x_1189.y, x_1189.z, x_1189.w));
  let x_1196 : vec4<f32> = u_xlat0;
  let x_1203 : vec3<f32> = ((vec3<f32>(x_1196.x, x_1196.y, x_1196.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1204 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1203.x, x_1203.y, x_1203.z, x_1204.w);
  let x_1206 : vec4<f32> = u_xlat0;
  let x_1208 : vec3<f32> = log2(vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1209 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  let x_1211 : vec4<f32> = u_xlat0;
  let x_1218 : vec3<f32> = ((vec3<f32>(x_1211.x, x_1211.y, x_1211.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1219 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1219.w);
  let x_1221 : vec4<f32> = u_xlat0;
  let x_1225 : vec3<f32> = clamp(vec3<f32>(x_1221.x, x_1221.y, x_1221.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1226 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1226.w);
  let x_1228 : vec4<f32> = u_xlat0;
  let x_1232 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1234 : vec3<f32> = (vec3<f32>(x_1228.x, x_1228.y, x_1228.z) * vec3<f32>(x_1232.y, x_1232.y, x_1232.y));
  let x_1235 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1238 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_1238 * 0.5f);
  let x_1241 : vec4<f32> = u_xlat0;
  let x_1244 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1247 : vec3<f32> = u_xlat1;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.y, x_1241.z) * vec3<f32>(x_1244.x, x_1244.x, x_1244.x)) + vec3<f32>(x_1247.x, x_1247.x, x_1247.x));
  let x_1250 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1260 : vec4<f32> = u_xlat0;
  let x_1262 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec3<f32> = vec3<f32>(x_1262.x, x_1262.y, x_1262.z);
  let x_1264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1263.x, x_1263.y, x_1263.z, x_1264.w);
  let x_1266 : vec2<f32> = vs_TEXCOORD0;
  let x_1269 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1273 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1275 : vec2<f32> = ((x_1266 * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1273.z, x_1273.w));
  let x_1276 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1275.x, x_1275.y, x_1276.z);
  let x_1283 : vec3<f32> = u_xlat1;
  let x_1285 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1283.x, x_1283.y));
  u_xlat1.x = x_1285.w;
  let x_1289 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1289 * 2.0f) + -1.0f);
  let x_1294 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1294 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1300 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1300, 0.0f, 1.0f);
  let x_1304 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1304 * 2.0f) + -1.0f);
  let x_1309 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1309)) + 1.0f);
  let x_1315 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1315);
  let x_1319 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1319) + 1.0f);
  let x_1324 : f32 = u_xlat1.x;
  let x_1326 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1324 * x_1326);
  let x_1329 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1329.x, x_1329.y, x_1329.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1334 : vec4<f32> = u_xlat0;
  let x_1338 : vec3<f32> = max(abs(vec3<f32>(x_1334.x, x_1334.y, x_1334.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1339 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1338.x, x_1338.y, x_1338.z, x_1339.w);
  let x_1341 : vec4<f32> = u_xlat2;
  let x_1343 : vec3<f32> = log2(vec3<f32>(x_1341.x, x_1341.y, x_1341.z));
  let x_1344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat2;
  let x_1350 : vec3<f32> = (vec3<f32>(x_1346.x, x_1346.y, x_1346.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1351 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1350.x, x_1350.y, x_1350.z, x_1351.w);
  let x_1353 : vec4<f32> = u_xlat2;
  let x_1355 : vec3<f32> = exp2(vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
  let x_1356 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
  let x_1358 : vec4<f32> = u_xlat2;
  let x_1365 : vec3<f32> = ((vec3<f32>(x_1358.x, x_1358.y, x_1358.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1373 : vec4<f32> = u_xlat0;
  let x_1376 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1373.x, x_1373.y, x_1373.z, x_1373.x));
  u_xlatb0 = vec3<bool>(x_1376.x, x_1376.y, x_1376.z);
  let x_1379 : bool = u_xlatb0.x;
  if (x_1379) {
    let x_1384 : f32 = u_xlat11.x;
    x_1380 = x_1384;
  } else {
    let x_1387 : f32 = u_xlat2.x;
    x_1380 = x_1387;
  }
  let x_1388 : f32 = x_1380;
  u_xlat0.x = x_1388;
  let x_1391 : bool = u_xlatb0.y;
  if (x_1391) {
    let x_1396 : f32 = u_xlat11.y;
    x_1392 = x_1396;
  } else {
    let x_1399 : f32 = u_xlat2.y;
    x_1392 = x_1399;
  }
  let x_1400 : f32 = x_1392;
  u_xlat0.y = x_1400;
  let x_1403 : bool = u_xlatb0.z;
  if (x_1403) {
    let x_1408 : f32 = u_xlat11.z;
    x_1404 = x_1408;
  } else {
    let x_1411 : f32 = u_xlat2.z;
    x_1404 = x_1411;
  }
  let x_1412 : f32 = x_1404;
  u_xlat0.z = x_1412;
  let x_1414 : vec3<f32> = u_xlat1;
  let x_1419 : vec4<f32> = u_xlat0;
  let x_1421 : vec3<f32> = ((vec3<f32>(x_1414.x, x_1414.x, x_1414.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1419.x, x_1419.y, x_1419.z));
  let x_1422 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1421.x, x_1421.y, x_1421.z, x_1422.w);
  let x_1424 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1424.x, x_1424.y, x_1424.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1428 : vec4<f32> = u_xlat0;
  let x_1431 : vec3<f32> = (vec3<f32>(x_1428.x, x_1428.y, x_1428.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1432 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1431.x, x_1431.y, x_1431.z, x_1432.w);
  let x_1434 : vec4<f32> = u_xlat2;
  let x_1437 : vec3<f32> = (vec3<f32>(x_1434.x, x_1434.y, x_1434.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1438 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
  let x_1440 : vec4<f32> = u_xlat2;
  let x_1443 : vec3<f32> = max(abs(vec3<f32>(x_1440.x, x_1440.y, x_1440.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1444 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1443.x, x_1443.y, x_1443.z, x_1444.w);
  let x_1446 : vec4<f32> = u_xlat2;
  let x_1448 : vec3<f32> = log2(vec3<f32>(x_1446.x, x_1446.y, x_1446.z));
  let x_1449 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1448.x, x_1448.y, x_1448.z, x_1449.w);
  let x_1451 : vec4<f32> = u_xlat2;
  let x_1454 : vec3<f32> = (vec3<f32>(x_1451.x, x_1451.y, x_1451.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1455 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1454.x, x_1454.y, x_1454.z, x_1455.w);
  let x_1457 : vec4<f32> = u_xlat2;
  let x_1459 : vec3<f32> = exp2(vec3<f32>(x_1457.x, x_1457.y, x_1457.z));
  let x_1460 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1459.x, x_1459.y, x_1459.z, x_1460.w);
  let x_1463 : vec4<f32> = u_xlat0;
  let x_1465 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1463.x));
  u_xlatb0 = vec3<bool>(x_1465.x, x_1465.y, x_1465.z);
  let x_1470 : bool = u_xlatb0.x;
  if (x_1470) {
    let x_1475 : f32 = u_xlat1.x;
    x_1471 = x_1475;
  } else {
    let x_1478 : f32 = u_xlat2.x;
    x_1471 = x_1478;
  }
  let x_1479 : f32 = x_1471;
  SV_Target0.x = x_1479;
  let x_1483 : bool = u_xlatb0.y;
  if (x_1483) {
    let x_1488 : f32 = u_xlat1.y;
    x_1484 = x_1488;
  } else {
    let x_1491 : f32 = u_xlat2.y;
    x_1484 = x_1491;
  }
  let x_1492 : f32 = x_1484;
  SV_Target0.y = x_1492;
  let x_1495 : bool = u_xlatb0.z;
  if (x_1495) {
    let x_1500 : f32 = u_xlat1.z;
    x_1496 = x_1500;
  } else {
    let x_1503 : f32 = u_xlat2.z;
    x_1496 = x_1503;
  }
  let x_1504 : f32 = x_1496;
  SV_Target0.z = x_1504;
  let x_1507 : f32 = u_xlat0.w;
  SV_Target0.w = x_1507;
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

