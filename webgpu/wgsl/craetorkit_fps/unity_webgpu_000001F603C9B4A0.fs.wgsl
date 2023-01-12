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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(4) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(11) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat20 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb11 : bool;
  var u_xlat21 : vec2<f32>;
  var u_xlat2 : vec3<f32>;
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
  var u_xlat6 : vec2<f32>;
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
  var x_517 : f32;
  var u_xlatb30 : bool;
  var u_xlat11 : vec3<f32>;
  var x_764 : f32;
  var u_xlatb0 : vec3<bool>;
  var x_1147 : f32;
  var x_1159 : f32;
  var x_1171 : f32;
  var x_1223 : f32;
  var x_1236 : f32;
  var x_1248 : f32;
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
    let x_248 : vec4<f32> = u_xlat1;
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
  let x_300 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_299.x, x_299.y, x_300.z);
  let x_302 : vec3<f32> = u_xlat2;
  let x_304 : vec2<f32> = (vec2<f32>(x_302.x, x_302.y) * vec2<f32>(0.5f, 0.5f));
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat2;
  let x_309 : vec3<f32> = u_xlat2;
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
  let x_328 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_326) / vec2<f32>(x_328.x, x_328.x));
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
  let x_346 : vec2<f32> = vs_TEXCOORD0;
  u_xlat6 = x_346;
  u_xlati_loop_1 = 0i;
  loop {
    let x_354 : i32 = u_xlati_loop_1;
    let x_355 : i32 = u_xlati30;
    if ((x_354 < x_355)) {
    } else {
      break;
    }
    let x_358 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_358);
    let x_360 : f32 = u_xlat36;
    u_xlat36 = (x_360 + 0.5f);
    let x_362 : f32 = u_xlat36;
    let x_364 : f32 = u_xlat1.x;
    u_xlat2.x = (x_362 / x_364);
    let x_368 : vec2<f32> = u_xlat6;
    let x_369 : vec2<f32> = (x_368 + vec2<f32>(-0.5f, -0.5f));
    let x_370 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
    let x_373 : vec4<f32> = u_xlat7;
    let x_376 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(x_376.z, x_376.z)) + vec2<f32>(0.5f, 0.5f));
    let x_380 : vec4<f32> = u_xlat7;
    let x_383 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_387 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_390 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_383.z, x_383.z)) + -(vec2<f32>(x_387.x, x_387.y)));
    let x_391 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
    let x_393 : vec4<f32> = u_xlat7;
    let x_396 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_398 : vec2<f32> = (vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_396.z, x_396.w));
    let x_399 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
    let x_401 : vec4<f32> = u_xlat7;
    let x_403 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_401.x, x_401.y), vec2<f32>(x_403.x, x_403.y));
    let x_406 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_406);
    let x_408 : bool = u_xlatb11;
    if (x_408) {
      let x_412 : f32 = u_xlat36;
      let x_415 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_412, x_412) * vec2<f32>(x_415.x, x_415.y));
      let x_420 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_420);
      let x_423 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_423);
      let x_427 : f32 = u_xlat8.x;
      let x_428 : f32 = u_xlat9;
      u_xlat8.x = (x_427 / x_428);
      let x_433 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_433);
      let x_436 : f32 = u_xlat8.x;
      let x_437 : f32 = u_xlat18;
      u_xlat8.x = ((x_436 * x_437) + -1.0f);
      let x_441 : vec4<f32> = u_xlat7;
      let x_443 : vec2<f32> = u_xlat8;
      let x_446 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_441.x, x_441.y) * vec2<f32>(x_443.x, x_443.x)) + x_446);
    } else {
      let x_450 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_450);
      let x_452 : f32 = u_xlat28;
      let x_454 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_452 * x_454);
      let x_456 : f32 = u_xlat36;
      let x_458 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_456 * x_458);
      let x_461 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_461), 1.0f);
      let x_464 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_464), 1.0f);
      let x_467 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_467);
      let x_469 : f32 = u_xlat38;
      let x_470 : f32 = u_xlat9;
      u_xlat38 = (x_469 * x_470);
      let x_472 : f32 = u_xlat38;
      let x_473 : f32 = u_xlat38;
      u_xlat9 = (x_472 * x_473);
      let x_476 : f32 = u_xlat9;
      u_xlat19 = ((x_476 * 0.0208351f) + -0.085133001f);
      let x_479 : f32 = u_xlat9;
      let x_480 : f32 = u_xlat19;
      u_xlat19 = ((x_479 * x_480) + 0.180141002f);
      let x_483 : f32 = u_xlat9;
      let x_484 : f32 = u_xlat19;
      u_xlat19 = ((x_483 * x_484) + -0.330299497f);
      let x_487 : f32 = u_xlat9;
      let x_488 : f32 = u_xlat19;
      u_xlat9 = ((x_487 * x_488) + 0.999866009f);
      let x_491 : f32 = u_xlat38;
      let x_492 : f32 = u_xlat9;
      u_xlat19 = (x_491 * x_492);
      let x_495 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_495));
      let x_498 : f32 = u_xlat19;
      u_xlat19 = ((x_498 * -2.0f) + 1.570796371f);
      let x_501 : bool = u_xlatb29;
      let x_502 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_502, x_501);
      let x_504 : f32 = u_xlat38;
      let x_505 : f32 = u_xlat9;
      let x_507 : f32 = u_xlat19;
      u_xlat38 = ((x_504 * x_505) + x_507);
      let x_509 : f32 = u_xlat36;
      u_xlat36 = min(x_509, 1.0f);
      let x_512 : f32 = u_xlat36;
      let x_513 : f32 = u_xlat36;
      u_xlatb36 = (x_512 < -(x_513));
      let x_516 : bool = u_xlatb36;
      if (x_516) {
        let x_520 : f32 = u_xlat38;
        x_517 = -(x_520);
      } else {
        let x_523 : f32 = u_xlat38;
        x_517 = x_523;
      }
      let x_524 : f32 = x_517;
      u_xlat36 = x_524;
      let x_525 : f32 = u_xlat28;
      let x_526 : f32 = u_xlat36;
      u_xlat36 = ((x_525 * x_526) + -1.0f);
      let x_529 : vec4<f32> = u_xlat7;
      let x_531 : f32 = u_xlat36;
      let x_534 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_529.x, x_529.y) * vec2<f32>(x_531, x_531)) + x_534);
    }
    let x_536 : vec2<f32> = u_xlat8;
    u_xlat8 = x_536;
    let x_537 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_537, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_541 : vec2<f32> = u_xlat8;
    let x_544 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_546 : vec2<f32> = (x_541 * vec2<f32>(x_544, x_544));
    let x_547 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_546.x, x_546.y, x_547.z, x_547.w);
    let x_554 : vec4<f32> = u_xlat7;
    let x_556 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_554.x, x_554.y), 0.0f);
    u_xlat7 = x_556;
    let x_562 : vec3<f32> = u_xlat2;
    let x_564 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_562.x, x_562.y), 0.0f);
    let x_565 : vec3<f32> = vec3<f32>(x_564.x, x_564.y, x_564.z);
    let x_566 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
    let x_568 : vec4<f32> = u_xlat7;
    let x_569 : vec4<f32> = u_xlat3;
    let x_571 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_568 * x_569) + x_571);
    let x_573 : vec4<f32> = u_xlat3;
    let x_574 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_573 + x_574);
    let x_576 : vec2<f32> = u_xlat10;
    let x_577 : vec2<f32> = u_xlat6;
    u_xlat6 = (x_576 + x_577);

    continuing {
      let x_579 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_579 + 1i);
    }
  }
  let x_581 : vec4<f32> = u_xlat4;
  let x_582 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_581 / x_582);
  let x_584 : vec4<f32> = u_xlat0;
  let x_586 : vec4<f32> = u_xlat3;
  let x_588 : vec3<f32> = (vec3<f32>(x_584.x, x_584.x, x_584.x) * vec3<f32>(x_586.x, x_586.y, x_586.z));
  let x_589 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
  let x_594 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_594 < 0.5f);
  let x_596 : bool = u_xlatb30;
  if (x_596) {
    let x_599 : vec2<f32> = u_xlat21;
    let x_603 : vec2<f32> = x_26.x_Vignette_Center;
    let x_605 : vec2<f32> = (x_599 + -(x_603));
    let x_606 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_605.x, x_605.y, x_606.z, x_606.w);
    let x_608 : vec4<f32> = u_xlat1;
    let x_613 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_615 : vec2<f32> = (abs(vec2<f32>(x_608.y, x_608.x)) * vec2<f32>(x_613.x, x_613.x));
    let x_616 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_616.x, x_615.x, x_615.y, x_616.w);
    let x_619 : f32 = x_26.x_ScreenParams.x;
    let x_621 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_619 / x_621);
    let x_623 : f32 = u_xlat30;
    u_xlat30 = (x_623 + -1.0f);
    let x_626 : f32 = x_26.x_Vignette_Settings.w;
    let x_627 : f32 = u_xlat30;
    u_xlat30 = ((x_626 * x_627) + 1.0f);
    let x_630 : f32 = u_xlat30;
    let x_632 : f32 = u_xlat3.z;
    u_xlat3.x = (x_630 * x_632);
    let x_635 : vec4<f32> = u_xlat3;
    let x_636 : vec2<f32> = vec2<f32>(x_635.x, x_635.y);
    let x_637 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_636.x, x_636.y, x_637.z, x_637.w);
    let x_639 : vec4<f32> = u_xlat3;
    let x_643 : vec2<f32> = clamp(vec2<f32>(x_639.x, x_639.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_644 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_643.x, x_643.y, x_644.z, x_644.w);
    let x_646 : vec4<f32> = u_xlat3;
    let x_648 : vec2<f32> = log2(vec2<f32>(x_646.x, x_646.y));
    let x_649 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
    let x_651 : vec4<f32> = u_xlat1;
    let x_654 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_656 : vec2<f32> = (vec2<f32>(x_651.x, x_651.y) * vec2<f32>(x_654.z, x_654.z));
    let x_657 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
    let x_659 : vec4<f32> = u_xlat1;
    let x_661 : vec2<f32> = exp2(vec2<f32>(x_659.x, x_659.y));
    let x_662 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_661.x, x_661.y, x_662.z, x_662.w);
    let x_664 : vec4<f32> = u_xlat1;
    let x_666 : vec4<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_664.x, x_664.y), vec2<f32>(x_666.x, x_666.y));
    let x_669 : f32 = u_xlat30;
    u_xlat30 = (-(x_669) + 1.0f);
    let x_672 : f32 = u_xlat30;
    u_xlat30 = max(x_672, 0.0f);
    let x_674 : f32 = u_xlat30;
    u_xlat30 = log2(x_674);
    let x_676 : f32 = u_xlat30;
    let x_678 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_676 * x_678);
    let x_680 : f32 = u_xlat30;
    u_xlat30 = exp2(x_680);
    let x_685 : vec3<f32> = x_26.x_Vignette_Color;
    let x_688 : vec3<f32> = (-(x_685) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_689 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
    let x_691 : f32 = u_xlat30;
    let x_693 : vec4<f32> = u_xlat3;
    let x_697 : vec3<f32> = x_26.x_Vignette_Color;
    let x_698 : vec3<f32> = ((vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z)) + x_697);
    let x_699 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
    let x_701 : vec4<f32> = u_xlat0;
    let x_703 : vec4<f32> = u_xlat3;
    let x_705 : vec3<f32> = (vec3<f32>(x_701.x, x_701.y, x_701.z) * vec3<f32>(x_703.x, x_703.y, x_703.z));
    let x_706 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_709 : f32 = u_xlat3.w;
    u_xlat1.x = (x_709 + -1.0f);
    let x_712 : f32 = u_xlat30;
    let x_714 : f32 = u_xlat1.x;
    u_xlat4.w = ((x_712 * x_714) + 1.0f);
  } else {
    let x_724 : vec2<f32> = u_xlat21;
    let x_725 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_724);
    u_xlat30 = x_725.w;
    let x_727 : f32 = u_xlat30;
    u_xlat1.x = (x_727 * 0.077399381f);
    let x_732 : f32 = u_xlat30;
    u_xlat11.x = (x_732 + 0.055f);
    let x_737 : f32 = u_xlat11.x;
    u_xlat11.x = (x_737 * 0.947867334f);
    let x_742 : f32 = u_xlat11.x;
    u_xlat11.x = max(abs(x_742), 1.1920929e-07f);
    let x_748 : f32 = u_xlat11.x;
    u_xlat11.x = log2(x_748);
    let x_752 : f32 = u_xlat11.x;
    u_xlat11.x = (x_752 * 2.400000095f);
    let x_757 : f32 = u_xlat11.x;
    u_xlat11.x = exp2(x_757);
    let x_761 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_761);
    let x_763 : bool = u_xlatb30;
    if (x_763) {
      let x_768 : f32 = u_xlat1.x;
      x_764 = x_768;
    } else {
      let x_771 : f32 = u_xlat11.x;
      x_764 = x_771;
    }
    let x_772 : f32 = x_764;
    u_xlat30 = x_772;
    let x_774 : vec3<f32> = x_26.x_Vignette_Color;
    let x_776 : vec3<f32> = (-(x_774) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_777 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
    let x_779 : f32 = u_xlat30;
    let x_781 : vec4<f32> = u_xlat1;
    let x_785 : vec3<f32> = x_26.x_Vignette_Color;
    let x_786 : vec3<f32> = ((vec3<f32>(x_779, x_779, x_779) * vec3<f32>(x_781.x, x_781.y, x_781.z)) + x_785);
    let x_787 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
    let x_789 : vec4<f32> = u_xlat0;
    let x_791 : vec4<f32> = u_xlat1;
    let x_794 : vec4<f32> = u_xlat0;
    let x_797 : vec3<f32> = ((vec3<f32>(x_789.x, x_789.y, x_789.z) * vec3<f32>(x_791.x, x_791.y, x_791.z)) + -(vec3<f32>(x_794.x, x_794.y, x_794.z)));
    let x_798 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
    let x_802 : f32 = x_26.x_Vignette_Opacity;
    let x_804 : vec4<f32> = u_xlat1;
    let x_807 : vec4<f32> = u_xlat0;
    let x_809 : vec3<f32> = ((vec3<f32>(x_802, x_802, x_802) * vec3<f32>(x_804.x, x_804.y, x_804.z)) + vec3<f32>(x_807.x, x_807.y, x_807.z));
    let x_810 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_809.x, x_809.y, x_809.z, x_810.w);
    let x_813 : f32 = u_xlat3.w;
    u_xlat0.x = (x_813 + -1.0f);
    let x_816 : f32 = u_xlat30;
    let x_818 : f32 = u_xlat0.x;
    u_xlat4.w = ((x_816 * x_818) + 1.0f);
  }
  let x_823 : vec2<f32> = vs_TEXCOORD1;
  let x_826 : vec4<f32> = x_26.x_Grain_Params2;
  let x_830 : vec4<f32> = x_26.x_Grain_Params2;
  let x_832 : vec2<f32> = ((x_823 * vec2<f32>(x_826.x, x_826.y)) + vec2<f32>(x_830.z, x_830.w));
  let x_833 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_832.x, x_832.y, x_833.z, x_833.w);
  let x_840 : vec4<f32> = u_xlat0;
  let x_842 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_840.x, x_840.y));
  let x_843 : vec3<f32> = vec3<f32>(x_842.x, x_842.y, x_842.z);
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat3;
  let x_847 : vec3<f32> = vec3<f32>(x_846.x, x_846.y, x_846.z);
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat1;
  let x_854 : vec3<f32> = clamp(vec3<f32>(x_850.x, x_850.y, x_850.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_855 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat1;
  u_xlat30 = dot(vec3<f32>(x_857.x, x_857.y, x_857.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_864 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_864);
  let x_868 : f32 = x_26.x_Grain_Params1.x;
  let x_869 : f32 = u_xlat30;
  u_xlat30 = ((x_868 * -(x_869)) + 1.0f);
  let x_873 : vec4<f32> = u_xlat0;
  let x_875 : vec4<f32> = u_xlat3;
  let x_877 : vec3<f32> = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_877.x, x_877.y, x_877.z, x_878.w);
  let x_880 : vec4<f32> = u_xlat0;
  let x_883 : f32 = x_26.x_Grain_Params1.y;
  let x_885 : f32 = x_26.x_Grain_Params1.y;
  let x_887 : f32 = x_26.x_Grain_Params1.y;
  let x_889 : vec3<f32> = (vec3<f32>(x_880.x, x_880.y, x_880.z) * vec3<f32>(x_883, x_885, x_887));
  let x_890 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_889.x, x_889.y, x_889.z, x_890.w);
  let x_892 : vec4<f32> = u_xlat0;
  let x_894 : f32 = u_xlat30;
  let x_897 : vec4<f32> = u_xlat3;
  let x_899 : vec3<f32> = ((vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(x_894, x_894, x_894)) + vec3<f32>(x_897.x, x_897.y, x_897.z));
  let x_900 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec4<f32> = u_xlat4;
  let x_905 : f32 = x_26.x_PostExposure;
  let x_907 : f32 = x_26.x_PostExposure;
  let x_909 : f32 = x_26.x_PostExposure;
  let x_911 : f32 = x_26.x_PostExposure;
  let x_912 : vec4<f32> = vec4<f32>(x_905, x_907, x_909, x_911);
  u_xlat0 = (x_902 * vec4<f32>(x_912.x, x_912.y, x_912.z, x_912.w));
  let x_919 : vec4<f32> = u_xlat0;
  let x_926 : vec3<f32> = ((vec3<f32>(x_919.z, x_919.x, x_919.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_927 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat0;
  let x_931 : vec3<f32> = log2(vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat0;
  let x_941 : vec3<f32> = ((vec3<f32>(x_934.x, x_934.y, x_934.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_942 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_941.x, x_941.y, x_941.z, x_942.w);
  let x_944 : vec4<f32> = u_xlat0;
  let x_948 : vec3<f32> = clamp(vec3<f32>(x_944.x, x_944.y, x_944.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_949 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat0;
  let x_955 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_957 : vec3<f32> = (vec3<f32>(x_951.x, x_951.y, x_951.z) * vec3<f32>(x_955.z, x_955.z, x_955.z));
  let x_958 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_961 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_961);
  let x_965 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_967 : vec2<f32> = (vec2<f32>(x_965.x, x_965.y) * vec2<f32>(0.5f, 0.5f));
  let x_968 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_967.x, x_968.y, x_968.z, x_967.y);
  let x_970 : vec4<f32> = u_xlat1;
  let x_973 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_976 : vec4<f32> = u_xlat1;
  let x_978 : vec2<f32> = ((vec2<f32>(x_970.y, x_970.z) * vec2<f32>(x_973.x, x_973.y)) + vec2<f32>(x_976.x, x_976.w));
  let x_979 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_979.x, x_978.x, x_978.y, x_979.w);
  let x_982 : f32 = u_xlat10.x;
  let x_984 : f32 = x_26.x_Lut2D_Params.y;
  let x_987 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_982 * x_984) + x_987);
  let x_995 : vec4<f32> = u_xlat1;
  let x_997 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_995.x, x_995.z));
  let x_998 : vec3<f32> = vec3<f32>(x_997.x, x_997.y, x_997.z);
  let x_999 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1002 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1002;
  let x_1004 : vec2<f32> = u_xlat22;
  let x_1005 : vec4<f32> = u_xlat1;
  let x_1007 : vec2<f32> = (x_1004 + vec2<f32>(x_1005.x, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1007.x, x_1007.y, x_1008.z, x_1008.w);
  let x_1013 : vec4<f32> = u_xlat1;
  let x_1015 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1013.x, x_1013.y));
  let x_1016 : vec3<f32> = vec3<f32>(x_1015.x, x_1015.y, x_1015.z);
  let x_1017 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1016.x, x_1016.y, x_1016.z, x_1017.w);
  let x_1020 : f32 = u_xlat0.x;
  let x_1022 : f32 = x_26.x_Lut2D_Params.z;
  let x_1025 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1020 * x_1022) + -(x_1025));
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1032 : vec4<f32> = u_xlat1;
  let x_1034 : vec3<f32> = (-(vec3<f32>(x_1029.x, x_1029.y, x_1029.z)) + vec3<f32>(x_1032.x, x_1032.y, x_1032.z));
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1034.x, x_1034.y, x_1034.z, x_1035.w);
  let x_1037 : vec4<f32> = u_xlat0;
  let x_1039 : vec4<f32> = u_xlat1;
  let x_1042 : vec4<f32> = u_xlat3;
  let x_1044 : vec3<f32> = ((vec3<f32>(x_1037.x, x_1037.x, x_1037.x) * vec3<f32>(x_1039.x, x_1039.y, x_1039.z)) + vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1045 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec2<f32> = vs_TEXCOORD0;
  let x_1050 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1054 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1056 : vec2<f32> = ((x_1047 * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1054.z, x_1054.w));
  let x_1057 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1056.x, x_1056.y, x_1057.z, x_1057.w);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1064.x, x_1064.y));
  u_xlat1.x = x_1066.w;
  let x_1070 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1070 * 2.0f) + -1.0f);
  let x_1075 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1075 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1081 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1081, 0.0f, 1.0f);
  let x_1085 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1085 * 2.0f) + -1.0f);
  let x_1090 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1090)) + 1.0f);
  let x_1096 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1096);
  let x_1100 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1100) + 1.0f);
  let x_1105 : f32 = u_xlat1.x;
  let x_1107 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1105 * x_1107);
  let x_1110 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1110.x, x_1110.y, x_1110.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1115 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1115.x, x_1115.y, x_1115.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1120 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1120);
  let x_1122 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1122 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1126 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1126);
  let x_1128 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1128 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1140 : vec4<f32> = u_xlat0;
  let x_1143 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1140.x));
  u_xlatb0 = vec3<bool>(x_1143.x, x_1143.y, x_1143.z);
  let x_1146 : bool = u_xlatb0.x;
  if (x_1146) {
    let x_1151 : f32 = u_xlat11.x;
    x_1147 = x_1151;
  } else {
    let x_1154 : f32 = u_xlat2.x;
    x_1147 = x_1154;
  }
  let x_1155 : f32 = x_1147;
  u_xlat0.x = x_1155;
  let x_1158 : bool = u_xlatb0.y;
  if (x_1158) {
    let x_1163 : f32 = u_xlat11.y;
    x_1159 = x_1163;
  } else {
    let x_1166 : f32 = u_xlat2.y;
    x_1159 = x_1166;
  }
  let x_1167 : f32 = x_1159;
  u_xlat0.y = x_1167;
  let x_1170 : bool = u_xlatb0.z;
  if (x_1170) {
    let x_1175 : f32 = u_xlat11.z;
    x_1171 = x_1175;
  } else {
    let x_1178 : f32 = u_xlat2.z;
    x_1171 = x_1178;
  }
  let x_1179 : f32 = x_1171;
  u_xlat0.z = x_1179;
  let x_1181 : vec4<f32> = u_xlat1;
  let x_1186 : vec4<f32> = u_xlat0;
  let x_1188 : vec3<f32> = ((vec3<f32>(x_1181.x, x_1181.x, x_1181.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1186.x, x_1186.y, x_1186.z));
  let x_1189 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat0;
  let x_1194 : vec3<f32> = (vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1195 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1195.w);
  let x_1197 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1197.x, x_1197.y, x_1197.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1201 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1201 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1204 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1204), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1207 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1207);
  let x_1209 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1209 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1212 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1212);
  let x_1215 : vec4<f32> = u_xlat0;
  let x_1217 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1215.x, x_1215.y, x_1215.z, x_1215.x));
  u_xlatb0 = vec3<bool>(x_1217.x, x_1217.y, x_1217.z);
  let x_1222 : bool = u_xlatb0.x;
  if (x_1222) {
    let x_1227 : f32 = u_xlat1.x;
    x_1223 = x_1227;
  } else {
    let x_1230 : f32 = u_xlat2.x;
    x_1223 = x_1230;
  }
  let x_1231 : f32 = x_1223;
  SV_Target0.x = x_1231;
  let x_1235 : bool = u_xlatb0.y;
  if (x_1235) {
    let x_1240 : f32 = u_xlat1.y;
    x_1236 = x_1240;
  } else {
    let x_1243 : f32 = u_xlat2.y;
    x_1236 = x_1243;
  }
  let x_1244 : f32 = x_1236;
  SV_Target0.y = x_1244;
  let x_1247 : bool = u_xlatb0.z;
  if (x_1247) {
    let x_1252 : f32 = u_xlat1.z;
    x_1248 = x_1252;
  } else {
    let x_1255 : f32 = u_xlat2.z;
    x_1248 = x_1255;
  }
  let x_1256 : f32 = x_1248;
  SV_Target0.z = x_1256;
  let x_1259 : f32 = u_xlat0.w;
  SV_Target0.w = x_1259;
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

