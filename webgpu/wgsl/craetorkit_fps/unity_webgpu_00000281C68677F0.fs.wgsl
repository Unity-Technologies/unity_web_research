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
  var x_924 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1249 : f32;
  var x_1261 : f32;
  var x_1273 : f32;
  var x_1340 : f32;
  var x_1353 : f32;
  var x_1365 : f32;
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
  u_xlat0 = (vec4<f32>(x_582.x, x_582.y, x_582.x, x_582.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_588 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_588 * 0.5f);
  let x_591 : vec4<f32> = u_xlat0;
  let x_593 : vec3<f32> = u_xlat1;
  let x_596 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_591.x, x_591.y, x_591.z, x_591.y) * vec4<f32>(x_593.x, x_593.x, x_593.x, x_593.x)) + vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y));
  let x_599 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_599, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_603 : vec4<f32> = u_xlat3;
  let x_605 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_603 * vec4<f32>(x_605, x_605, x_605, x_605));
  let x_613 : vec4<f32> = u_xlat3;
  let x_615 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_613.x, x_613.y));
  u_xlat4 = x_615;
  let x_619 : vec4<f32> = u_xlat3;
  let x_621 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_619.z, x_619.w));
  u_xlat3 = x_621;
  let x_622 : vec4<f32> = u_xlat3;
  let x_623 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_622 + x_623);
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = u_xlat1;
  let x_630 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_625.x, x_625.w, x_625.z, x_625.w) * vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.x)) + vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y));
  let x_633 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_633, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_637 : vec4<f32> = u_xlat0;
  let x_639 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_637 * vec4<f32>(x_639, x_639, x_639, x_639));
  let x_645 : vec4<f32> = u_xlat0;
  let x_647 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_645.x, x_645.y));
  u_xlat4 = x_647;
  let x_648 : vec4<f32> = u_xlat3;
  let x_649 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_648 + x_649);
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_654.z, x_654.w));
  u_xlat0 = x_656;
  let x_657 : vec4<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_657 + x_658);
  let x_660 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_660 * vec4<f32>(x_663.y, x_663.y, x_663.y, x_663.y));
  let x_666 : vec2<f32> = u_xlat21;
  let x_669 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_673 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_675 : vec2<f32> = ((x_666 * vec2<f32>(x_669.x, x_669.y)) + vec2<f32>(x_673.z, x_673.w));
  let x_676 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_675.x, x_675.y, x_676.z);
  let x_683 : vec3<f32> = u_xlat1;
  let x_685 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_683.x, x_683.y));
  let x_686 : vec3<f32> = vec3<f32>(x_685.x, x_685.y, x_685.z);
  let x_687 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat3;
  let x_699 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_701 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_699.z, x_699.z, x_699.z));
  let x_702 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_704 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_707 : vec4<f32> = u_xlat0;
  let x_711 : vec3<f32> = x_26.x_Bloom_Color;
  let x_712 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * x_711);
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_716 : f32 = u_xlat0.w;
  u_xlat5.w = (x_716 * 0.25f);
  let x_719 : vec4<f32> = u_xlat2;
  let x_720 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_719 + x_720);
  let x_722 : vec4<f32> = u_xlat4;
  let x_724 : vec4<f32> = u_xlat3;
  let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  u_xlat2.w = 0.0f;
  let x_730 : vec4<f32> = u_xlat0;
  let x_731 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_730 + x_731);
  let x_735 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_735 < 0.5f);
  let x_737 : bool = u_xlatb1;
  if (x_737) {
    let x_740 : vec2<f32> = u_xlat21;
    let x_744 : vec2<f32> = x_26.x_Vignette_Center;
    let x_746 : vec2<f32> = (x_740 + -(x_744));
    let x_747 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_746.x, x_746.y, x_747.z);
    let x_749 : vec3<f32> = u_xlat1;
    let x_754 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_756 : vec2<f32> = (abs(vec2<f32>(x_749.y, x_749.x)) * vec2<f32>(x_754.x, x_754.x));
    let x_757 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_757.x, x_756.x, x_756.y, x_757.w);
    let x_760 : f32 = x_26.x_ScreenParams.x;
    let x_762 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_760 / x_762);
    let x_766 : f32 = u_xlat1.x;
    u_xlat1.x = (x_766 + -1.0f);
    let x_770 : f32 = x_26.x_Vignette_Settings.w;
    let x_772 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_770 * x_772) + 1.0f);
    let x_777 : f32 = u_xlat1.x;
    let x_779 : f32 = u_xlat2.z;
    u_xlat2.x = (x_777 * x_779);
    let x_782 : vec4<f32> = u_xlat2;
    let x_783 : vec2<f32> = vec2<f32>(x_782.x, x_782.y);
    let x_784 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
    let x_786 : vec4<f32> = u_xlat2;
    let x_790 : vec2<f32> = clamp(vec2<f32>(x_786.x, x_786.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_791 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
    let x_793 : vec4<f32> = u_xlat2;
    let x_795 : vec2<f32> = log2(vec2<f32>(x_793.x, x_793.y));
    let x_796 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_795.x, x_795.y, x_796.z);
    let x_798 : vec3<f32> = u_xlat1;
    let x_801 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_803 : vec2<f32> = (vec2<f32>(x_798.x, x_798.y) * vec2<f32>(x_801.z, x_801.z));
    let x_804 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_803.x, x_803.y, x_804.z);
    let x_806 : vec3<f32> = u_xlat1;
    let x_808 : vec2<f32> = exp2(vec2<f32>(x_806.x, x_806.y));
    let x_809 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_808.x, x_808.y, x_809.z);
    let x_811 : vec3<f32> = u_xlat1;
    let x_813 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_811.x, x_811.y), vec2<f32>(x_813.x, x_813.y));
    let x_818 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_818) + 1.0f);
    let x_823 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_823, 0.0f);
    let x_827 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_827);
    let x_831 : f32 = u_xlat1.x;
    let x_833 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_831 * x_833);
    let x_837 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_837);
    let x_842 : vec3<f32> = x_26.x_Vignette_Color;
    let x_845 : vec3<f32> = (-(x_842) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_846 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
    let x_848 : vec3<f32> = u_xlat1;
    let x_850 : vec4<f32> = u_xlat2;
    let x_854 : vec3<f32> = x_26.x_Vignette_Color;
    let x_855 : vec3<f32> = ((vec3<f32>(x_848.x, x_848.x, x_848.x) * vec3<f32>(x_850.x, x_850.y, x_850.z)) + x_854);
    let x_856 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_855.x, x_855.y, x_855.z, x_856.w);
    let x_858 : vec4<f32> = u_xlat0;
    let x_860 : vec4<f32> = u_xlat2;
    let x_862 : vec3<f32> = (vec3<f32>(x_858.x, x_858.y, x_858.z) * vec3<f32>(x_860.x, x_860.y, x_860.z));
    let x_863 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_867 : f32 = u_xlat0.w;
    u_xlat11.x = (x_867 + -1.0f);
    let x_871 : f32 = u_xlat1.x;
    let x_873 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_871 * x_873) + 1.0f);
  } else {
    let x_883 : vec2<f32> = u_xlat21;
    let x_884 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_883);
    u_xlat1.x = x_884.w;
    let x_888 : f32 = u_xlat1.x;
    u_xlat1.z = (x_888 + 0.055f);
    let x_892 : vec3<f32> = u_xlat1;
    let x_897 : vec2<f32> = (vec2<f32>(x_892.x, x_892.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_898 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_897.x, x_897.y, x_898.z);
    let x_901 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_901), 1.1920929e-07f);
    let x_907 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_907);
    let x_911 : f32 = u_xlat21.x;
    u_xlat21.x = (x_911 * 2.400000095f);
    let x_916 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_916);
    let x_921 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_921);
    let x_923 : bool = u_xlatb1;
    if (x_923) {
      let x_928 : f32 = u_xlat11.x;
      x_924 = x_928;
    } else {
      let x_931 : f32 = u_xlat21.x;
      x_924 = x_931;
    }
    let x_932 : f32 = x_924;
    u_xlat1.x = x_932;
    let x_935 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_935) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_938 : vec3<f32> = u_xlat1;
    let x_940 : vec3<f32> = u_xlat11;
    let x_943 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_938.x, x_938.x, x_938.x) * x_940) + x_943);
    let x_945 : vec4<f32> = u_xlat0;
    let x_947 : vec3<f32> = u_xlat11;
    let x_949 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_945.x, x_945.y, x_945.z) * x_947) + -(vec3<f32>(x_949.x, x_949.y, x_949.z)));
    let x_954 : f32 = x_26.x_Vignette_Opacity;
    let x_956 : vec3<f32> = u_xlat11;
    let x_958 : vec4<f32> = u_xlat0;
    let x_960 : vec3<f32> = ((vec3<f32>(x_954, x_954, x_954) * x_956) + vec3<f32>(x_958.x, x_958.y, x_958.z));
    let x_961 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_960.x, x_960.y, x_960.z, x_961.w);
    let x_964 : f32 = u_xlat0.w;
    u_xlat0.x = (x_964 + -1.0f);
    let x_968 : f32 = u_xlat1.x;
    let x_970 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_968 * x_970) + 1.0f);
  }
  let x_975 : vec2<f32> = vs_TEXCOORD1;
  let x_978 : vec4<f32> = x_26.x_Grain_Params2;
  let x_982 : vec4<f32> = x_26.x_Grain_Params2;
  let x_984 : vec2<f32> = ((x_975 * vec2<f32>(x_978.x, x_978.y)) + vec2<f32>(x_982.z, x_982.w));
  let x_985 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_984.x, x_984.y, x_985.z, x_985.w);
  let x_992 : vec4<f32> = u_xlat0;
  let x_994 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_992.x, x_992.y));
  let x_995 : vec3<f32> = vec3<f32>(x_994.x, x_994.y, x_994.z);
  let x_996 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
  let x_998 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_998.x, x_998.y, x_998.z);
  let x_1000 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1000, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1004 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1004, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1010 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1010);
  let x_1014 : f32 = x_26.x_Grain_Params1.x;
  let x_1015 : f32 = u_xlat30;
  u_xlat30 = ((x_1014 * -(x_1015)) + 1.0f);
  let x_1019 : vec4<f32> = u_xlat0;
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1023 : vec3<f32> = (vec3<f32>(x_1019.x, x_1019.y, x_1019.z) * vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1029 : f32 = x_26.x_Grain_Params1.y;
  let x_1031 : f32 = x_26.x_Grain_Params1.y;
  let x_1033 : f32 = x_26.x_Grain_Params1.y;
  let x_1035 : vec3<f32> = (vec3<f32>(x_1026.x, x_1026.y, x_1026.z) * vec3<f32>(x_1029, x_1031, x_1033));
  let x_1036 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1035.x, x_1035.y, x_1035.z, x_1036.w);
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1040 : f32 = u_xlat30;
  let x_1043 : vec4<f32> = u_xlat2;
  let x_1045 : vec3<f32> = ((vec3<f32>(x_1038.x, x_1038.y, x_1038.z) * vec3<f32>(x_1040, x_1040, x_1040)) + vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1046 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1045.x, x_1045.y, x_1045.z, x_1046.w);
  let x_1048 : vec4<f32> = u_xlat3;
  let x_1051 : f32 = x_26.x_PostExposure;
  let x_1053 : f32 = x_26.x_PostExposure;
  let x_1055 : f32 = x_26.x_PostExposure;
  let x_1057 : f32 = x_26.x_PostExposure;
  let x_1058 : vec4<f32> = vec4<f32>(x_1051, x_1053, x_1055, x_1057);
  u_xlat0 = (x_1048 * vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.w));
  let x_1065 : vec4<f32> = u_xlat0;
  let x_1072 : vec3<f32> = ((vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1073 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1073.w);
  let x_1075 : vec4<f32> = u_xlat0;
  let x_1077 : vec3<f32> = log2(vec3<f32>(x_1075.x, x_1075.y, x_1075.z));
  let x_1078 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1077.x, x_1077.y, x_1077.z, x_1078.w);
  let x_1080 : vec4<f32> = u_xlat0;
  let x_1087 : vec3<f32> = ((vec3<f32>(x_1080.x, x_1080.y, x_1080.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1088 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1087.x, x_1087.y, x_1087.z, x_1088.w);
  let x_1090 : vec4<f32> = u_xlat0;
  let x_1094 : vec3<f32> = clamp(vec3<f32>(x_1090.x, x_1090.y, x_1090.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1095 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1095.w);
  let x_1097 : vec4<f32> = u_xlat0;
  let x_1101 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1103 : vec3<f32> = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(x_1101.y, x_1101.y, x_1101.y));
  let x_1104 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1107 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_1107 * 0.5f);
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1113 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1116 : vec3<f32> = u_xlat1;
  let x_1118 : vec3<f32> = ((vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(x_1113.x, x_1113.x, x_1113.x)) + vec3<f32>(x_1116.x, x_1116.x, x_1116.x));
  let x_1119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1118.x, x_1118.y, x_1118.z, x_1119.w);
  let x_1129 : vec4<f32> = u_xlat0;
  let x_1131 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_1129.x, x_1129.y, x_1129.z));
  let x_1132 : vec3<f32> = vec3<f32>(x_1131.x, x_1131.y, x_1131.z);
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec2<f32> = vs_TEXCOORD0;
  let x_1138 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1142 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1144 : vec2<f32> = ((x_1135 * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1142.z, x_1142.w));
  let x_1145 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1144.x, x_1144.y, x_1145.z);
  let x_1152 : vec3<f32> = u_xlat1;
  let x_1154 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1152.x, x_1152.y));
  u_xlat1.x = x_1154.w;
  let x_1158 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1158 * 2.0f) + -1.0f);
  let x_1163 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1163 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1169 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1169, 0.0f, 1.0f);
  let x_1173 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1173 * 2.0f) + -1.0f);
  let x_1178 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1178)) + 1.0f);
  let x_1184 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1184);
  let x_1188 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1188) + 1.0f);
  let x_1193 : f32 = u_xlat1.x;
  let x_1195 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1193 * x_1195);
  let x_1198 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1198.x, x_1198.y, x_1198.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1203 : vec4<f32> = u_xlat0;
  let x_1207 : vec3<f32> = max(abs(vec3<f32>(x_1203.x, x_1203.y, x_1203.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1208 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1207.x, x_1207.y, x_1207.z, x_1208.w);
  let x_1210 : vec4<f32> = u_xlat2;
  let x_1212 : vec3<f32> = log2(vec3<f32>(x_1210.x, x_1210.y, x_1210.z));
  let x_1213 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1212.x, x_1212.y, x_1212.z, x_1213.w);
  let x_1215 : vec4<f32> = u_xlat2;
  let x_1219 : vec3<f32> = (vec3<f32>(x_1215.x, x_1215.y, x_1215.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1220 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1219.x, x_1219.y, x_1219.z, x_1220.w);
  let x_1222 : vec4<f32> = u_xlat2;
  let x_1224 : vec3<f32> = exp2(vec3<f32>(x_1222.x, x_1222.y, x_1222.z));
  let x_1225 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1224.x, x_1224.y, x_1224.z, x_1225.w);
  let x_1227 : vec4<f32> = u_xlat2;
  let x_1234 : vec3<f32> = ((vec3<f32>(x_1227.x, x_1227.y, x_1227.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1234.x, x_1234.y, x_1234.z, x_1235.w);
  let x_1242 : vec4<f32> = u_xlat0;
  let x_1245 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1242.x, x_1242.y, x_1242.z, x_1242.x));
  u_xlatb0 = vec3<bool>(x_1245.x, x_1245.y, x_1245.z);
  let x_1248 : bool = u_xlatb0.x;
  if (x_1248) {
    let x_1253 : f32 = u_xlat11.x;
    x_1249 = x_1253;
  } else {
    let x_1256 : f32 = u_xlat2.x;
    x_1249 = x_1256;
  }
  let x_1257 : f32 = x_1249;
  u_xlat0.x = x_1257;
  let x_1260 : bool = u_xlatb0.y;
  if (x_1260) {
    let x_1265 : f32 = u_xlat11.y;
    x_1261 = x_1265;
  } else {
    let x_1268 : f32 = u_xlat2.y;
    x_1261 = x_1268;
  }
  let x_1269 : f32 = x_1261;
  u_xlat0.y = x_1269;
  let x_1272 : bool = u_xlatb0.z;
  if (x_1272) {
    let x_1277 : f32 = u_xlat11.z;
    x_1273 = x_1277;
  } else {
    let x_1280 : f32 = u_xlat2.z;
    x_1273 = x_1280;
  }
  let x_1281 : f32 = x_1273;
  u_xlat0.z = x_1281;
  let x_1283 : vec3<f32> = u_xlat1;
  let x_1288 : vec4<f32> = u_xlat0;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1283.x, x_1283.x, x_1283.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1297 : vec4<f32> = u_xlat0;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1297.x, x_1297.y, x_1297.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1301 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1300.x, x_1300.y, x_1300.z, x_1301.w);
  let x_1303 : vec4<f32> = u_xlat2;
  let x_1306 : vec3<f32> = (vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1307 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1306.x, x_1306.y, x_1306.z, x_1307.w);
  let x_1309 : vec4<f32> = u_xlat2;
  let x_1312 : vec3<f32> = max(abs(vec3<f32>(x_1309.x, x_1309.y, x_1309.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1312.x, x_1312.y, x_1312.z, x_1313.w);
  let x_1315 : vec4<f32> = u_xlat2;
  let x_1317 : vec3<f32> = log2(vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : vec4<f32> = u_xlat2;
  let x_1323 : vec3<f32> = (vec3<f32>(x_1320.x, x_1320.y, x_1320.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1324 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1323.x, x_1323.y, x_1323.z, x_1324.w);
  let x_1326 : vec4<f32> = u_xlat2;
  let x_1328 : vec3<f32> = exp2(vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1328.x, x_1328.y, x_1328.z, x_1329.w);
  let x_1332 : vec4<f32> = u_xlat0;
  let x_1334 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1332.x));
  u_xlatb0 = vec3<bool>(x_1334.x, x_1334.y, x_1334.z);
  let x_1339 : bool = u_xlatb0.x;
  if (x_1339) {
    let x_1344 : f32 = u_xlat1.x;
    x_1340 = x_1344;
  } else {
    let x_1347 : f32 = u_xlat2.x;
    x_1340 = x_1347;
  }
  let x_1348 : f32 = x_1340;
  SV_Target0.x = x_1348;
  let x_1352 : bool = u_xlatb0.y;
  if (x_1352) {
    let x_1357 : f32 = u_xlat1.y;
    x_1353 = x_1357;
  } else {
    let x_1360 : f32 = u_xlat2.y;
    x_1353 = x_1360;
  }
  let x_1361 : f32 = x_1353;
  SV_Target0.y = x_1361;
  let x_1364 : bool = u_xlatb0.z;
  if (x_1364) {
    let x_1369 : f32 = u_xlat1.z;
    x_1365 = x_1369;
  } else {
    let x_1372 : f32 = u_xlat2.z;
    x_1365 = x_1372;
  }
  let x_1373 : f32 = x_1365;
  SV_Target0.z = x_1373;
  let x_1376 : f32 = u_xlat0.w;
  SV_Target0.w = x_1376;
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

