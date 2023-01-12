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
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

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
  var x_923 : f32;
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
  let x_734 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_734 < 0.5f);
  let x_736 : bool = u_xlatb1;
  if (x_736) {
    let x_739 : vec2<f32> = u_xlat21;
    let x_743 : vec2<f32> = x_26.x_Vignette_Center;
    let x_745 : vec2<f32> = (x_739 + -(x_743));
    let x_746 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_745.x, x_745.y, x_746.z);
    let x_748 : vec3<f32> = u_xlat1;
    let x_753 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_755 : vec2<f32> = (abs(vec2<f32>(x_748.y, x_748.x)) * vec2<f32>(x_753.x, x_753.x));
    let x_756 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_756.x, x_755.x, x_755.y, x_756.w);
    let x_759 : f32 = x_26.x_ScreenParams.x;
    let x_761 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_759 / x_761);
    let x_765 : f32 = u_xlat1.x;
    u_xlat1.x = (x_765 + -1.0f);
    let x_769 : f32 = x_26.x_Vignette_Settings.w;
    let x_771 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_769 * x_771) + 1.0f);
    let x_776 : f32 = u_xlat1.x;
    let x_778 : f32 = u_xlat2.z;
    u_xlat2.x = (x_776 * x_778);
    let x_781 : vec4<f32> = u_xlat2;
    let x_782 : vec2<f32> = vec2<f32>(x_781.x, x_781.y);
    let x_783 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
    let x_785 : vec4<f32> = u_xlat2;
    let x_789 : vec2<f32> = clamp(vec2<f32>(x_785.x, x_785.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_790 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
    let x_792 : vec4<f32> = u_xlat2;
    let x_794 : vec2<f32> = log2(vec2<f32>(x_792.x, x_792.y));
    let x_795 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_794.x, x_794.y, x_795.z);
    let x_797 : vec3<f32> = u_xlat1;
    let x_800 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_802 : vec2<f32> = (vec2<f32>(x_797.x, x_797.y) * vec2<f32>(x_800.z, x_800.z));
    let x_803 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_802.x, x_802.y, x_803.z);
    let x_805 : vec3<f32> = u_xlat1;
    let x_807 : vec2<f32> = exp2(vec2<f32>(x_805.x, x_805.y));
    let x_808 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_807.x, x_807.y, x_808.z);
    let x_810 : vec3<f32> = u_xlat1;
    let x_812 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_810.x, x_810.y), vec2<f32>(x_812.x, x_812.y));
    let x_817 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_817) + 1.0f);
    let x_822 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_822, 0.0f);
    let x_826 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_826);
    let x_830 : f32 = u_xlat1.x;
    let x_832 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_830 * x_832);
    let x_836 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_836);
    let x_841 : vec3<f32> = x_26.x_Vignette_Color;
    let x_844 : vec3<f32> = (-(x_841) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_845 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_844.x, x_844.y, x_844.z, x_845.w);
    let x_847 : vec3<f32> = u_xlat1;
    let x_849 : vec4<f32> = u_xlat2;
    let x_853 : vec3<f32> = x_26.x_Vignette_Color;
    let x_854 : vec3<f32> = ((vec3<f32>(x_847.x, x_847.x, x_847.x) * vec3<f32>(x_849.x, x_849.y, x_849.z)) + x_853);
    let x_855 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
    let x_857 : vec4<f32> = u_xlat0;
    let x_859 : vec4<f32> = u_xlat2;
    let x_861 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_859.x, x_859.y, x_859.z));
    let x_862 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_861.x, x_861.y, x_861.z, x_862.w);
    let x_866 : f32 = u_xlat0.w;
    u_xlat11.x = (x_866 + -1.0f);
    let x_870 : f32 = u_xlat1.x;
    let x_872 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_870 * x_872) + 1.0f);
  } else {
    let x_882 : vec2<f32> = u_xlat21;
    let x_883 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_882);
    u_xlat1.x = x_883.w;
    let x_887 : f32 = u_xlat1.x;
    u_xlat1.z = (x_887 + 0.055f);
    let x_891 : vec3<f32> = u_xlat1;
    let x_896 : vec2<f32> = (vec2<f32>(x_891.x, x_891.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_897 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_896.x, x_896.y, x_897.z);
    let x_900 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_900), 1.1920929e-07f);
    let x_906 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_906);
    let x_910 : f32 = u_xlat21.x;
    u_xlat21.x = (x_910 * 2.400000095f);
    let x_915 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_915);
    let x_920 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_920);
    let x_922 : bool = u_xlatb1;
    if (x_922) {
      let x_927 : f32 = u_xlat11.x;
      x_923 = x_927;
    } else {
      let x_930 : f32 = u_xlat21.x;
      x_923 = x_930;
    }
    let x_931 : f32 = x_923;
    u_xlat1.x = x_931;
    let x_934 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_934) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_937 : vec3<f32> = u_xlat1;
    let x_939 : vec3<f32> = u_xlat11;
    let x_942 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_937.x, x_937.x, x_937.x) * x_939) + x_942);
    let x_944 : vec4<f32> = u_xlat0;
    let x_946 : vec3<f32> = u_xlat11;
    let x_948 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_944.x, x_944.y, x_944.z) * x_946) + -(vec3<f32>(x_948.x, x_948.y, x_948.z)));
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
  let x_1052 : f32 = x_26.x_PostExposure;
  let x_1054 : f32 = x_26.x_PostExposure;
  let x_1056 : f32 = x_26.x_PostExposure;
  let x_1058 : f32 = x_26.x_PostExposure;
  let x_1059 : vec4<f32> = vec4<f32>(x_1052, x_1054, x_1056, x_1058);
  u_xlat0 = (vec4<f32>(x_1048.w, x_1048.x, x_1048.y, x_1048.z) * vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1059.w));
  let x_1066 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1066.y, x_1066.z, x_1066.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1074 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1074);
  let x_1076 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1076 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1083 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1083, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1087 : vec3<f32> = u_xlat1;
  let x_1090 : vec2<f32> = x_26.x_Lut3D_Params;
  u_xlat1 = (x_1087 * vec3<f32>(x_1090.y, x_1090.y, x_1090.y));
  let x_1094 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_1094 * 0.5f);
  let x_1096 : vec3<f32> = u_xlat1;
  let x_1098 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_1101 : f32 = u_xlat31;
  u_xlat1 = ((x_1096 * vec3<f32>(x_1098.x, x_1098.x, x_1098.x)) + vec3<f32>(x_1101, x_1101, x_1101));
  let x_1112 : vec3<f32> = u_xlat1;
  let x_1113 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, x_1112);
  let x_1114 : vec3<f32> = vec3<f32>(x_1113.x, x_1113.y, x_1113.z);
  let x_1115 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1115.x, x_1114.x, x_1114.y, x_1114.z);
  let x_1119 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1119);
  let x_1121 : bool = u_xlatb1;
  if (x_1121) {
    let x_1124 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1124.y, x_1124.z, x_1124.w);
    let x_1126 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1126, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1130 : vec3<f32> = u_xlat1;
    u_xlat0.x = dot(x_1130, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1135 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_1135.y, x_1135.z, x_1135.w, x_1135.x);
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

