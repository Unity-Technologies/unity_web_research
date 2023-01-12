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
  x_Lut2D_Params : vec3<f32>,
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
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat31 : f32;
  var u_xlat12 : f32;
  var u_xlat22 : vec2<f32>;
  var u_xlat32 : f32;
  var u_xlatb3 : vec3<bool>;
  var u_xlatb1 : bool;
  var x_234 : f32;
  var u_xlat10 : vec3<f32>;
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
  var x_538 : f32;
  var u_xlat11 : vec3<f32>;
  var x_959 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_1052 : f32;
  var x_1064 : f32;
  var x_1076 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1201 : f32;
  var x_1213 : f32;
  var x_1225 : f32;
  var x_1308 : f32;
  var x_1320 : f32;
  var x_1332 : f32;
  var x_1377 : f32;
  var x_1390 : f32;
  var x_1402 : f32;
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
    let x_203 : f32 = u_xlat1.x;
    u_xlatb3.x = (1.0f < abs(x_203));
    let x_207 : f32 = u_xlat32;
    u_xlat32 = ((x_207 * -2.0f) + 1.570796371f);
    let x_213 : bool = u_xlatb3.x;
    let x_214 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_214, x_213);
    let x_216 : f32 = u_xlat12;
    let x_218 : f32 = u_xlat22.x;
    let x_220 : f32 = u_xlat32;
    u_xlat12 = ((x_216 * x_218) + x_220);
    let x_223 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_223, 1.0f);
    let x_228 : f32 = u_xlat1.x;
    let x_230 : f32 = u_xlat1.x;
    u_xlatb1 = (x_228 < -(x_230));
    let x_233 : bool = u_xlatb1;
    if (x_233) {
      let x_237 : f32 = u_xlat12;
      x_234 = -(x_237);
    } else {
      let x_240 : f32 = u_xlat12;
      x_234 = x_240;
    }
    let x_241 : f32 = x_234;
    u_xlat1.x = x_241;
    let x_244 : f32 = u_xlat2.x;
    let x_246 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_244 * x_246) + -1.0f);
    let x_250 : vec4<f32> = u_xlat0;
    let x_252 : vec3<f32> = u_xlat1;
    let x_255 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_250.x, x_250.y) * vec2<f32>(x_252.x, x_252.x)) + x_255);
  }
  let x_267 : vec2<f32> = vs_TEXCOORD0;
  let x_268 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_267);
  u_xlat0.x = x_268.x;
  let x_272 : vec2<f32> = vs_TEXCOORD0;
  let x_277 : vec2<f32> = ((x_272 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_278 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_277.x, x_277.y, x_278.z);
  let x_281 : vec3<f32> = u_xlat10;
  let x_283 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_281.x, x_281.y), vec2<f32>(x_283.x, x_283.y));
  let x_286 : f32 = u_xlat30;
  let x_288 : vec3<f32> = u_xlat10;
  let x_290 : vec2<f32> = (vec2<f32>(x_286, x_286) * vec2<f32>(x_288.x, x_288.y));
  let x_291 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_290.x, x_290.y, x_291.z);
  let x_293 : vec3<f32> = u_xlat10;
  let x_297 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_299 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_300 : vec2<f32> = vec2<f32>(x_297, x_299);
  let x_304 : vec2<f32> = (vec2<f32>(x_293.x, x_293.y) * vec2<f32>(x_300.x, x_300.y));
  let x_305 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat10;
  let x_312 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_314 : vec2<f32> = (-(vec2<f32>(x_307.x, x_307.y)) * vec2<f32>(x_312.z, x_312.w));
  let x_315 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_314.x, x_314.y, x_315.z);
  let x_317 : vec3<f32> = u_xlat2;
  let x_319 : vec2<f32> = (vec2<f32>(x_317.x, x_317.y) * vec2<f32>(0.5f, 0.5f));
  let x_320 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_319.x, x_319.y, x_320.z);
  let x_322 : vec3<f32> = u_xlat2;
  let x_324 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_322.x, x_322.y), vec2<f32>(x_324.x, x_324.y));
  let x_327 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_327);
  let x_331 : f32 = u_xlat30;
  u_xlati30 = i32(x_331);
  let x_333 : i32 = u_xlati30;
  u_xlati30 = max(x_333, 3i);
  let x_335 : i32 = u_xlati30;
  u_xlati30 = min(x_335, 16i);
  let x_338 : i32 = u_xlati30;
  u_xlat1.x = f32(x_338);
  let x_341 : vec3<f32> = u_xlat10;
  let x_344 : vec3<f32> = u_xlat1;
  let x_346 : vec2<f32> = (-(vec2<f32>(x_341.x, x_341.y)) / vec2<f32>(x_344.x, x_344.x));
  let x_347 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_346.x, x_346.y, x_347.z);
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
  let x_364 : vec2<f32> = vs_TEXCOORD0;
  let x_365 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_374 : i32 = u_xlati_loop_1;
    let x_375 : i32 = u_xlati30;
    if ((x_374 < x_375)) {
    } else {
      break;
    }
    let x_378 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_378);
    let x_380 : f32 = u_xlat36;
    u_xlat36 = (x_380 + 0.5f);
    let x_382 : f32 = u_xlat36;
    let x_384 : f32 = u_xlat1.x;
    u_xlat2.x = (x_382 / x_384);
    let x_388 : vec4<f32> = u_xlat6;
    let x_390 : vec2<f32> = (vec2<f32>(x_388.x, x_388.y) + vec2<f32>(-0.5f, -0.5f));
    let x_391 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_394 : vec4<f32> = u_xlat7;
    let x_397 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_394.x, x_394.y) * vec2<f32>(x_397.z, x_397.z)) + vec2<f32>(0.5f, 0.5f));
    let x_401 : vec4<f32> = u_xlat7;
    let x_404 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_408 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_411 : vec2<f32> = ((vec2<f32>(x_401.x, x_401.y) * vec2<f32>(x_404.z, x_404.z)) + -(vec2<f32>(x_408.x, x_408.y)));
    let x_412 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_412.w);
    let x_414 : vec4<f32> = u_xlat7;
    let x_417 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_419 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_417.z, x_417.w));
    let x_420 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
    let x_422 : vec4<f32> = u_xlat7;
    let x_424 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_422.x, x_422.y), vec2<f32>(x_424.x, x_424.y));
    let x_427 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_427);
    let x_429 : bool = u_xlatb11;
    if (x_429) {
      let x_433 : f32 = u_xlat36;
      let x_436 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_433, x_433) * vec2<f32>(x_436.x, x_436.y));
      let x_441 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_441);
      let x_444 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_444);
      let x_448 : f32 = u_xlat8.x;
      let x_449 : f32 = u_xlat9;
      u_xlat8.x = (x_448 / x_449);
      let x_454 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_454);
      let x_457 : f32 = u_xlat8.x;
      let x_458 : f32 = u_xlat18;
      u_xlat8.x = ((x_457 * x_458) + -1.0f);
      let x_462 : vec4<f32> = u_xlat7;
      let x_464 : vec2<f32> = u_xlat8;
      let x_467 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_462.x, x_462.y) * vec2<f32>(x_464.x, x_464.x)) + x_467);
    } else {
      let x_471 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_471);
      let x_473 : f32 = u_xlat28;
      let x_475 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_473 * x_475);
      let x_477 : f32 = u_xlat36;
      let x_479 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_477 * x_479);
      let x_482 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_482), 1.0f);
      let x_485 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_485), 1.0f);
      let x_488 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_488);
      let x_490 : f32 = u_xlat38;
      let x_491 : f32 = u_xlat9;
      u_xlat38 = (x_490 * x_491);
      let x_493 : f32 = u_xlat38;
      let x_494 : f32 = u_xlat38;
      u_xlat9 = (x_493 * x_494);
      let x_497 : f32 = u_xlat9;
      u_xlat19 = ((x_497 * 0.0208351f) + -0.085133001f);
      let x_500 : f32 = u_xlat9;
      let x_501 : f32 = u_xlat19;
      u_xlat19 = ((x_500 * x_501) + 0.180141002f);
      let x_504 : f32 = u_xlat9;
      let x_505 : f32 = u_xlat19;
      u_xlat19 = ((x_504 * x_505) + -0.330299497f);
      let x_508 : f32 = u_xlat9;
      let x_509 : f32 = u_xlat19;
      u_xlat9 = ((x_508 * x_509) + 0.999866009f);
      let x_512 : f32 = u_xlat38;
      let x_513 : f32 = u_xlat9;
      u_xlat19 = (x_512 * x_513);
      let x_516 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_516));
      let x_519 : f32 = u_xlat19;
      u_xlat19 = ((x_519 * -2.0f) + 1.570796371f);
      let x_522 : bool = u_xlatb29;
      let x_523 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_523, x_522);
      let x_525 : f32 = u_xlat38;
      let x_526 : f32 = u_xlat9;
      let x_528 : f32 = u_xlat19;
      u_xlat38 = ((x_525 * x_526) + x_528);
      let x_530 : f32 = u_xlat36;
      u_xlat36 = min(x_530, 1.0f);
      let x_533 : f32 = u_xlat36;
      let x_534 : f32 = u_xlat36;
      u_xlatb36 = (x_533 < -(x_534));
      let x_537 : bool = u_xlatb36;
      if (x_537) {
        let x_541 : f32 = u_xlat38;
        x_538 = -(x_541);
      } else {
        let x_544 : f32 = u_xlat38;
        x_538 = x_544;
      }
      let x_545 : f32 = x_538;
      u_xlat36 = x_545;
      let x_546 : f32 = u_xlat28;
      let x_547 : f32 = u_xlat36;
      u_xlat36 = ((x_546 * x_547) + -1.0f);
      let x_550 : vec4<f32> = u_xlat7;
      let x_552 : f32 = u_xlat36;
      let x_555 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_550.x, x_550.y) * vec2<f32>(x_552, x_552)) + x_555);
    }
    let x_557 : vec2<f32> = u_xlat8;
    u_xlat8 = x_557;
    let x_558 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_558, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_562 : vec2<f32> = u_xlat8;
    let x_565 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_567 : vec2<f32> = (x_562 * vec2<f32>(x_565, x_565));
    let x_568 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
    let x_575 : vec4<f32> = u_xlat7;
    let x_577 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_575.x, x_575.y), 0.0f);
    u_xlat7 = x_577;
    let x_583 : vec3<f32> = u_xlat2;
    let x_585 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_583.x, x_583.y), 0.0f);
    let x_586 : vec3<f32> = vec3<f32>(x_585.x, x_585.y, x_585.z);
    let x_587 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
    let x_589 : vec4<f32> = u_xlat7;
    let x_590 : vec4<f32> = u_xlat3;
    let x_592 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_589 * x_590) + x_592);
    let x_594 : vec4<f32> = u_xlat3;
    let x_595 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_594 + x_595);
    let x_597 : vec3<f32> = u_xlat10;
    let x_599 : vec4<f32> = u_xlat6;
    let x_601 : vec2<f32> = (vec2<f32>(x_597.x, x_597.y) + vec2<f32>(x_599.x, x_599.y));
    let x_602 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);

    continuing {
      let x_604 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_604 + 1i);
    }
  }
  let x_606 : vec4<f32> = u_xlat4;
  let x_607 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_606 / x_607);
  let x_609 : vec4<f32> = u_xlat0;
  let x_611 : vec4<f32> = u_xlat3;
  let x_613 : vec3<f32> = (vec3<f32>(x_609.x, x_609.x, x_609.x) * vec3<f32>(x_611.x, x_611.y, x_611.z));
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
  let x_618 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_624 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_624 * 0.5f);
  let x_627 : vec4<f32> = u_xlat0;
  let x_629 : vec3<f32> = u_xlat1;
  let x_632 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_627.x, x_627.y, x_627.z, x_627.y) * vec4<f32>(x_629.x, x_629.x, x_629.x, x_629.x)) + vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y));
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_635, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_639 : vec4<f32> = u_xlat4;
  let x_641 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_639 * vec4<f32>(x_641, x_641, x_641, x_641));
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_649.x, x_649.y));
  u_xlat5 = x_651;
  let x_655 : vec4<f32> = u_xlat4;
  let x_657 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_655.z, x_655.w));
  u_xlat4 = x_657;
  let x_658 : vec4<f32> = u_xlat4;
  let x_659 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_658 + x_659);
  let x_661 : vec4<f32> = u_xlat0;
  let x_663 : vec3<f32> = u_xlat1;
  let x_666 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_661.x, x_661.w, x_661.z, x_661.w) * vec4<f32>(x_663.x, x_663.x, x_663.x, x_663.x)) + vec4<f32>(x_666.x, x_666.y, x_666.x, x_666.y));
  let x_669 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_669, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_673 * vec4<f32>(x_675, x_675, x_675, x_675));
  let x_681 : vec4<f32> = u_xlat0;
  let x_683 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_681.x, x_681.y));
  u_xlat5 = x_683;
  let x_684 : vec4<f32> = u_xlat4;
  let x_685 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_684 + x_685);
  let x_690 : vec4<f32> = u_xlat0;
  let x_692 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_690.z, x_690.w));
  u_xlat0 = x_692;
  let x_693 : vec4<f32> = u_xlat0;
  let x_694 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_693 + x_694);
  let x_696 : vec4<f32> = u_xlat0;
  let x_699 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_696 * vec4<f32>(x_699.y, x_699.y, x_699.y, x_699.y));
  let x_702 : vec2<f32> = u_xlat21;
  let x_705 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_709 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_711 : vec2<f32> = ((x_702 * vec2<f32>(x_705.x, x_705.y)) + vec2<f32>(x_709.z, x_709.w));
  let x_712 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_711.x, x_711.y, x_712.z);
  let x_719 : vec3<f32> = u_xlat1;
  let x_721 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_719.x, x_719.y));
  let x_722 : vec3<f32> = vec3<f32>(x_721.x, x_721.y, x_721.z);
  let x_723 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = (vec3<f32>(x_725.x, x_725.y, x_725.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_732 : vec4<f32> = u_xlat4;
  let x_735 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_737 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(x_735.z, x_735.z, x_735.z));
  let x_738 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_740 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_743 : vec4<f32> = u_xlat0;
  let x_747 : vec3<f32> = x_26.x_Bloom_Color;
  let x_748 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) * x_747);
  let x_749 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_748.x, x_748.y, x_748.z, x_749.w);
  let x_752 : f32 = u_xlat0.w;
  u_xlat6.w = (x_752 * 0.25f);
  let x_755 : vec4<f32> = u_xlat3;
  let x_756 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_755 + x_756);
  let x_758 : vec4<f32> = u_xlat5;
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec3<f32> = (vec3<f32>(x_758.x, x_758.y, x_758.z) * vec3<f32>(x_760.x, x_760.y, x_760.z));
  let x_763 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_762.x, x_762.y, x_762.z, x_763.w);
  u_xlat3.w = 0.0f;
  let x_766 : vec4<f32> = u_xlat0;
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_766 + x_767);
  let x_770 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_770 < 0.5f);
  let x_772 : bool = u_xlatb1;
  if (x_772) {
    let x_775 : vec2<f32> = u_xlat21;
    let x_779 : vec2<f32> = x_26.x_Vignette_Center;
    let x_781 : vec2<f32> = (x_775 + -(x_779));
    let x_782 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_781.x, x_781.y, x_782.z);
    let x_784 : vec3<f32> = u_xlat1;
    let x_789 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_791 : vec2<f32> = (abs(vec2<f32>(x_784.y, x_784.x)) * vec2<f32>(x_789.x, x_789.x));
    let x_792 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_792.x, x_791.x, x_791.y, x_792.w);
    let x_795 : f32 = x_26.x_ScreenParams.x;
    let x_797 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_795 / x_797);
    let x_801 : f32 = u_xlat1.x;
    u_xlat1.x = (x_801 + -1.0f);
    let x_805 : f32 = x_26.x_Vignette_Settings.w;
    let x_807 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_805 * x_807) + 1.0f);
    let x_812 : f32 = u_xlat1.x;
    let x_814 : f32 = u_xlat3.z;
    u_xlat3.x = (x_812 * x_814);
    let x_817 : vec4<f32> = u_xlat3;
    let x_818 : vec2<f32> = vec2<f32>(x_817.x, x_817.y);
    let x_819 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_818.x, x_818.y, x_819.z, x_819.w);
    let x_821 : vec4<f32> = u_xlat3;
    let x_825 : vec2<f32> = clamp(vec2<f32>(x_821.x, x_821.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_826 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_825.x, x_825.y, x_826.z, x_826.w);
    let x_828 : vec4<f32> = u_xlat3;
    let x_830 : vec2<f32> = log2(vec2<f32>(x_828.x, x_828.y));
    let x_831 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_830.x, x_830.y, x_831.z);
    let x_833 : vec3<f32> = u_xlat1;
    let x_836 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_838 : vec2<f32> = (vec2<f32>(x_833.x, x_833.y) * vec2<f32>(x_836.z, x_836.z));
    let x_839 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_838.x, x_838.y, x_839.z);
    let x_841 : vec3<f32> = u_xlat1;
    let x_843 : vec2<f32> = exp2(vec2<f32>(x_841.x, x_841.y));
    let x_844 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_843.x, x_843.y, x_844.z);
    let x_846 : vec3<f32> = u_xlat1;
    let x_848 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_846.x, x_846.y), vec2<f32>(x_848.x, x_848.y));
    let x_853 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_853) + 1.0f);
    let x_858 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_858, 0.0f);
    let x_862 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_862);
    let x_866 : f32 = u_xlat1.x;
    let x_868 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_866 * x_868);
    let x_872 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_872);
    let x_877 : vec3<f32> = x_26.x_Vignette_Color;
    let x_880 : vec3<f32> = (-(x_877) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_881 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_883 : vec3<f32> = u_xlat1;
    let x_885 : vec4<f32> = u_xlat3;
    let x_889 : vec3<f32> = x_26.x_Vignette_Color;
    let x_890 : vec3<f32> = ((vec3<f32>(x_883.x, x_883.x, x_883.x) * vec3<f32>(x_885.x, x_885.y, x_885.z)) + x_889);
    let x_891 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
    let x_893 : vec4<f32> = u_xlat0;
    let x_895 : vec4<f32> = u_xlat3;
    let x_897 : vec3<f32> = (vec3<f32>(x_893.x, x_893.y, x_893.z) * vec3<f32>(x_895.x, x_895.y, x_895.z));
    let x_898 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
    let x_902 : f32 = u_xlat0.w;
    u_xlat11.x = (x_902 + -1.0f);
    let x_906 : f32 = u_xlat1.x;
    let x_908 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_906 * x_908) + 1.0f);
  } else {
    let x_918 : vec2<f32> = u_xlat21;
    let x_919 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_918);
    u_xlat1.x = x_919.w;
    let x_923 : f32 = u_xlat1.x;
    u_xlat1.z = (x_923 + 0.055f);
    let x_927 : vec3<f32> = u_xlat1;
    let x_932 : vec2<f32> = (vec2<f32>(x_927.x, x_927.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_933 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_932.x, x_932.y, x_933.z);
    let x_936 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_936), 1.1920929e-07f);
    let x_942 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_942);
    let x_946 : f32 = u_xlat21.x;
    u_xlat21.x = (x_946 * 2.400000095f);
    let x_951 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_951);
    let x_956 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_956);
    let x_958 : bool = u_xlatb1;
    if (x_958) {
      let x_963 : f32 = u_xlat11.x;
      x_959 = x_963;
    } else {
      let x_966 : f32 = u_xlat21.x;
      x_959 = x_966;
    }
    let x_967 : f32 = x_959;
    u_xlat1.x = x_967;
    let x_970 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_970) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_973 : vec3<f32> = u_xlat1;
    let x_975 : vec3<f32> = u_xlat11;
    let x_978 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_973.x, x_973.x, x_973.x) * x_975) + x_978);
    let x_980 : vec4<f32> = u_xlat0;
    let x_982 : vec3<f32> = u_xlat11;
    let x_984 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_980.x, x_980.y, x_980.z) * x_982) + -(vec3<f32>(x_984.x, x_984.y, x_984.z)));
    let x_990 : f32 = x_26.x_Vignette_Opacity;
    let x_992 : vec3<f32> = u_xlat11;
    let x_994 : vec4<f32> = u_xlat0;
    let x_996 : vec3<f32> = ((vec3<f32>(x_990, x_990, x_990) * x_992) + vec3<f32>(x_994.x, x_994.y, x_994.z));
    let x_997 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
    let x_1000 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1000 + -1.0f);
    let x_1004 : f32 = u_xlat1.x;
    let x_1006 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1004 * x_1006) + 1.0f);
  }
  let x_1010 : vec4<f32> = u_xlat3;
  u_xlat3 = x_1010;
  let x_1011 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_1011, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_1015 : vec4<f32> = u_xlat3;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1015.z, x_1015.x, x_1015.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1020 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec4<f32> = u_xlat3;
  u_xlat1 = max(vec3<f32>(x_1022.z, x_1022.x, x_1022.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1026 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1026);
  let x_1028 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1028 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1032 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1032);
  let x_1034 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1034 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1043 : vec4<f32> = u_xlat3;
  let x_1046 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1043.z, x_1043.x, x_1043.y, x_1043.z));
  u_xlatb3 = vec3<bool>(x_1046.x, x_1046.y, x_1046.z);
  let x_1049 : vec4<f32> = u_xlat0;
  hlslcc_movcTemp = x_1049;
  let x_1051 : bool = u_xlatb3.x;
  if (x_1051) {
    let x_1056 : f32 = u_xlat0.x;
    x_1052 = x_1056;
  } else {
    let x_1059 : f32 = u_xlat1.x;
    x_1052 = x_1059;
  }
  let x_1060 : f32 = x_1052;
  hlslcc_movcTemp.x = x_1060;
  let x_1063 : bool = u_xlatb3.y;
  if (x_1063) {
    let x_1068 : f32 = u_xlat0.y;
    x_1064 = x_1068;
  } else {
    let x_1071 : f32 = u_xlat1.y;
    x_1064 = x_1071;
  }
  let x_1072 : f32 = x_1064;
  hlslcc_movcTemp.y = x_1072;
  let x_1075 : bool = u_xlatb3.z;
  if (x_1075) {
    let x_1080 : f32 = u_xlat0.z;
    x_1076 = x_1080;
  } else {
    let x_1083 : f32 = u_xlat1.z;
    x_1076 = x_1083;
  }
  let x_1084 : f32 = x_1076;
  hlslcc_movcTemp.z = x_1084;
  let x_1086 : vec4<f32> = hlslcc_movcTemp;
  u_xlat0 = x_1086;
  let x_1087 : vec4<f32> = u_xlat0;
  let x_1091 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat10 = (vec3<f32>(x_1087.x, x_1087.y, x_1087.z) * vec3<f32>(x_1091.z, x_1091.z, x_1091.z));
  let x_1095 : f32 = u_xlat10.x;
  u_xlat10.x = floor(x_1095);
  let x_1099 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1101 : vec2<f32> = (vec2<f32>(x_1099.x, x_1099.y) * vec2<f32>(0.5f, 0.5f));
  let x_1102 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1101.x, x_1101.y, x_1102.z);
  let x_1104 : vec3<f32> = u_xlat10;
  let x_1107 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1110 : vec3<f32> = u_xlat1;
  let x_1112 : vec2<f32> = ((vec2<f32>(x_1104.y, x_1104.z) * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.x, x_1110.y));
  let x_1113 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1113.x, x_1112.x, x_1112.y);
  let x_1116 : f32 = u_xlat10.x;
  let x_1118 : f32 = x_26.x_Lut2D_Params.y;
  let x_1121 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1116 * x_1118) + x_1121);
  let x_1129 : vec3<f32> = u_xlat1;
  let x_1131 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1129.x, x_1129.z));
  let x_1132 : vec3<f32> = vec3<f32>(x_1131.x, x_1131.y, x_1131.z);
  let x_1133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1136 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1136;
  let x_1138 : vec2<f32> = u_xlat22;
  let x_1139 : vec3<f32> = u_xlat1;
  u_xlat20 = (x_1138 + vec2<f32>(x_1139.x, x_1139.z));
  let x_1145 : vec2<f32> = u_xlat20;
  let x_1146 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1145);
  u_xlat1 = vec3<f32>(x_1146.x, x_1146.y, x_1146.z);
  let x_1149 : f32 = u_xlat0.x;
  let x_1151 : f32 = x_26.x_Lut2D_Params.z;
  let x_1154 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1149 * x_1151) + -(x_1154));
  let x_1158 : vec4<f32> = u_xlat3;
  let x_1161 : vec3<f32> = u_xlat1;
  u_xlat10 = (-(vec3<f32>(x_1158.x, x_1158.y, x_1158.z)) + x_1161);
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1165 : vec3<f32> = u_xlat10;
  let x_1167 : vec4<f32> = u_xlat3;
  let x_1169 : vec3<f32> = ((vec3<f32>(x_1163.x, x_1163.x, x_1163.x) * x_1165) + vec3<f32>(x_1167.x, x_1167.y, x_1167.z));
  let x_1170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1172.x, x_1172.y, x_1172.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1176 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1176.x, x_1176.y, x_1176.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1180 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1180 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1183 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1183), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1186 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1186);
  let x_1188 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1188 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1191 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1191);
  let x_1195 : vec4<f32> = u_xlat0;
  let x_1197 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1195.x, x_1195.y, x_1195.z, x_1195.x));
  u_xlatb0 = vec3<bool>(x_1197.x, x_1197.y, x_1197.z);
  let x_1200 : bool = u_xlatb0.x;
  if (x_1200) {
    let x_1205 : f32 = u_xlat1.x;
    x_1201 = x_1205;
  } else {
    let x_1208 : f32 = u_xlat2.x;
    x_1201 = x_1208;
  }
  let x_1209 : f32 = x_1201;
  u_xlat0.x = x_1209;
  let x_1212 : bool = u_xlatb0.y;
  if (x_1212) {
    let x_1217 : f32 = u_xlat1.y;
    x_1213 = x_1217;
  } else {
    let x_1220 : f32 = u_xlat2.y;
    x_1213 = x_1220;
  }
  let x_1221 : f32 = x_1213;
  u_xlat0.y = x_1221;
  let x_1224 : bool = u_xlatb0.z;
  if (x_1224) {
    let x_1229 : f32 = u_xlat1.z;
    x_1225 = x_1229;
  } else {
    let x_1232 : f32 = u_xlat2.z;
    x_1225 = x_1232;
  }
  let x_1233 : f32 = x_1225;
  u_xlat0.z = x_1233;
  let x_1235 : vec2<f32> = vs_TEXCOORD0;
  let x_1238 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1242 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1244 : vec2<f32> = ((x_1235 * vec2<f32>(x_1238.x, x_1238.y)) + vec2<f32>(x_1242.z, x_1242.w));
  let x_1245 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1244.x, x_1244.y, x_1245.z);
  let x_1252 : vec3<f32> = u_xlat1;
  let x_1254 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1252.x, x_1252.y));
  u_xlat30 = x_1254.w;
  let x_1256 : f32 = u_xlat30;
  u_xlat30 = ((x_1256 * 2.0f) + -1.0f);
  let x_1259 : f32 = u_xlat30;
  u_xlat1.x = ((x_1259 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1265 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1265, 0.0f, 1.0f);
  let x_1269 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1269 * 2.0f) + -1.0f);
  let x_1273 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1273)) + 1.0f);
  let x_1277 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1277);
  let x_1279 : f32 = u_xlat30;
  u_xlat30 = (-(x_1279) + 1.0f);
  let x_1282 : f32 = u_xlat30;
  let x_1284 : f32 = u_xlat1.x;
  u_xlat30 = (x_1282 * x_1284);
  let x_1286 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1286.x, x_1286.y, x_1286.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1289 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1289.x, x_1289.y, x_1289.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1293 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1293);
  let x_1295 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1295 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1297 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1297);
  let x_1299 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1299 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1302 : vec4<f32> = u_xlat0;
  let x_1304 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1302.x));
  u_xlatb0 = vec3<bool>(x_1304.x, x_1304.y, x_1304.z);
  let x_1307 : bool = u_xlatb0.x;
  if (x_1307) {
    let x_1312 : f32 = u_xlat1.x;
    x_1308 = x_1312;
  } else {
    let x_1315 : f32 = u_xlat2.x;
    x_1308 = x_1315;
  }
  let x_1316 : f32 = x_1308;
  u_xlat0.x = x_1316;
  let x_1319 : bool = u_xlatb0.y;
  if (x_1319) {
    let x_1324 : f32 = u_xlat1.y;
    x_1320 = x_1324;
  } else {
    let x_1327 : f32 = u_xlat2.y;
    x_1320 = x_1327;
  }
  let x_1328 : f32 = x_1320;
  u_xlat0.y = x_1328;
  let x_1331 : bool = u_xlatb0.z;
  if (x_1331) {
    let x_1336 : f32 = u_xlat1.z;
    x_1332 = x_1336;
  } else {
    let x_1339 : f32 = u_xlat2.z;
    x_1332 = x_1339;
  }
  let x_1340 : f32 = x_1332;
  u_xlat0.z = x_1340;
  let x_1342 : f32 = u_xlat30;
  let x_1347 : vec4<f32> = u_xlat0;
  let x_1349 : vec3<f32> = ((vec3<f32>(x_1342, x_1342, x_1342) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1347.x, x_1347.y, x_1347.z));
  let x_1350 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1352 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1352.x, x_1352.y, x_1352.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1355 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1355.x, x_1355.y, x_1355.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1358 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1358 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1360 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1360), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1363 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1363);
  let x_1365 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1365 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1367 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1367);
  let x_1369 : vec4<f32> = u_xlat0;
  let x_1371 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.x));
  u_xlatb0 = vec3<bool>(x_1371.x, x_1371.y, x_1371.z);
  let x_1376 : bool = u_xlatb0.x;
  if (x_1376) {
    let x_1381 : f32 = u_xlat1.x;
    x_1377 = x_1381;
  } else {
    let x_1384 : f32 = u_xlat2.x;
    x_1377 = x_1384;
  }
  let x_1385 : f32 = x_1377;
  SV_Target0.x = x_1385;
  let x_1389 : bool = u_xlatb0.y;
  if (x_1389) {
    let x_1394 : f32 = u_xlat1.y;
    x_1390 = x_1394;
  } else {
    let x_1397 : f32 = u_xlat2.y;
    x_1390 = x_1397;
  }
  let x_1398 : f32 = x_1390;
  SV_Target0.y = x_1398;
  let x_1401 : bool = u_xlatb0.z;
  if (x_1401) {
    let x_1406 : f32 = u_xlat1.z;
    x_1402 = x_1406;
  } else {
    let x_1409 : f32 = u_xlat2.z;
    x_1402 = x_1409;
  }
  let x_1410 : f32 = x_1402;
  SV_Target0.z = x_1410;
  let x_1413 : f32 = u_xlat3.w;
  SV_Target0.w = x_1413;
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

