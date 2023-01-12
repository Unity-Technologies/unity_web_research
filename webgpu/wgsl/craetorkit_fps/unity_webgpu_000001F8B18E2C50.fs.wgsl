struct PGlobals {
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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_2 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(1) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(3) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

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
  var u_xlat11 : vec3<f32>;
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
    let x_543 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_545 : vec2<f32> = (x_541 * vec2<f32>(x_543, x_543));
    let x_546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_546.z, x_546.w);
    let x_553 : vec4<f32> = u_xlat7;
    let x_555 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_553.x, x_553.y), 0.0f);
    u_xlat7 = x_555;
    let x_561 : vec3<f32> = u_xlat2;
    let x_563 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_561.x, x_561.y), 0.0f);
    let x_564 : vec3<f32> = vec3<f32>(x_563.x, x_563.y, x_563.z);
    let x_565 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec4<f32> = u_xlat7;
    let x_568 : vec4<f32> = u_xlat3;
    let x_570 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_567 * x_568) + x_570);
    let x_572 : vec4<f32> = u_xlat3;
    let x_573 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_572 + x_573);
    let x_575 : vec2<f32> = u_xlat10;
    let x_576 : vec2<f32> = u_xlat6;
    u_xlat6 = (x_575 + x_576);

    continuing {
      let x_578 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_578 + 1i);
    }
  }
  let x_580 : vec4<f32> = u_xlat4;
  let x_581 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_580 / x_581);
  let x_583 : vec4<f32> = u_xlat0;
  let x_585 : vec4<f32> = u_xlat3;
  let x_587 : vec3<f32> = (vec3<f32>(x_583.x, x_583.x, x_583.x) * vec3<f32>(x_585.x, x_585.y, x_585.z));
  let x_588 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_587.x, x_587.y, x_587.z, x_588.w);
  let x_592 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_592.x, x_592.y, x_592.x, x_592.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_598 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_598 * 0.5f);
  let x_601 : vec4<f32> = u_xlat0;
  let x_603 : vec4<f32> = u_xlat1;
  let x_606 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_601.x, x_601.y, x_601.z, x_601.y) * vec4<f32>(x_603.x, x_603.x, x_603.x, x_603.x)) + vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y));
  let x_609 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_609, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_613 : vec4<f32> = u_xlat4;
  let x_615 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_613 * vec4<f32>(x_615, x_615, x_615, x_615));
  let x_623 : vec4<f32> = u_xlat4;
  let x_625 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_623.x, x_623.y));
  u_xlat5 = x_625;
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_629.z, x_629.w));
  u_xlat4 = x_631;
  let x_632 : vec4<f32> = u_xlat4;
  let x_633 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_632 + x_633);
  let x_635 : vec4<f32> = u_xlat0;
  let x_637 : vec4<f32> = u_xlat1;
  let x_640 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_635.x, x_635.w, x_635.z, x_635.w) * vec4<f32>(x_637.x, x_637.x, x_637.x, x_637.x)) + vec4<f32>(x_640.x, x_640.y, x_640.x, x_640.y));
  let x_643 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_643, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_647 : vec4<f32> = u_xlat0;
  let x_649 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_647 * vec4<f32>(x_649, x_649, x_649, x_649));
  let x_655 : vec4<f32> = u_xlat0;
  let x_657 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_655.x, x_655.y));
  u_xlat5 = x_657;
  let x_658 : vec4<f32> = u_xlat4;
  let x_659 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_658 + x_659);
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_664.z, x_664.w));
  u_xlat0 = x_666;
  let x_667 : vec4<f32> = u_xlat0;
  let x_668 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_667 + x_668);
  let x_670 : vec4<f32> = u_xlat0;
  let x_673 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_670 * vec4<f32>(x_673.y, x_673.y, x_673.y, x_673.y));
  let x_676 : vec2<f32> = u_xlat21;
  let x_679 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_683 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_685 : vec2<f32> = ((x_676 * vec2<f32>(x_679.x, x_679.y)) + vec2<f32>(x_683.z, x_683.w));
  let x_686 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_685.x, x_685.y, x_686.z, x_686.w);
  let x_693 : vec4<f32> = u_xlat1;
  let x_695 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_693.x, x_693.y));
  let x_696 : vec3<f32> = vec3<f32>(x_695.x, x_695.y, x_695.z);
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat0;
  let x_703 : vec3<f32> = (vec3<f32>(x_699.x, x_699.y, x_699.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat1;
  let x_709 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_711 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(x_709.z, x_709.z, x_709.z));
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_714 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_717 : vec4<f32> = u_xlat0;
  let x_721 : vec3<f32> = x_26.x_Bloom_Color;
  let x_722 : vec3<f32> = (vec3<f32>(x_717.x, x_717.y, x_717.z) * x_721);
  let x_723 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_726 : f32 = u_xlat0.w;
  u_xlat5.w = (x_726 * 0.25f);
  let x_729 : vec4<f32> = u_xlat3;
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_729 + x_730);
  let x_732 : vec4<f32> = u_xlat4;
  let x_734 : vec4<f32> = u_xlat1;
  let x_736 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(x_734.x, x_734.y, x_734.z));
  let x_737 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  u_xlat1.w = 0.0f;
  let x_740 : vec4<f32> = u_xlat0;
  let x_741 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_740 + x_741);
  let x_744 : vec2<f32> = vs_TEXCOORD1;
  let x_747 : vec4<f32> = x_26.x_Grain_Params2;
  let x_751 : vec4<f32> = x_26.x_Grain_Params2;
  let x_753 : vec2<f32> = ((x_744 * vec2<f32>(x_747.x, x_747.y)) + vec2<f32>(x_751.z, x_751.w));
  let x_754 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_753.x, x_753.y, x_754.z, x_754.w);
  let x_761 : vec4<f32> = u_xlat1;
  let x_763 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_761.x, x_761.y));
  let x_764 : vec3<f32> = vec3<f32>(x_763.x, x_763.y, x_763.z);
  let x_765 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_764.x, x_764.y, x_764.z, x_765.w);
  let x_767 : vec4<f32> = u_xlat0;
  let x_768 : vec3<f32> = vec3<f32>(x_767.x, x_767.y, x_767.z);
  let x_769 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_768.x, x_768.y, x_768.z, x_769.w);
  let x_771 : vec4<f32> = u_xlat3;
  let x_775 : vec3<f32> = clamp(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_776 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_775.x, x_775.y, x_775.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(vec3<f32>(x_778.x, x_778.y, x_778.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_785 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_785);
  let x_789 : f32 = x_26.x_Grain_Params1.x;
  let x_790 : f32 = u_xlat31;
  u_xlat31 = ((x_789 * -(x_790)) + 1.0f);
  let x_794 : vec4<f32> = u_xlat0;
  let x_796 : vec4<f32> = u_xlat1;
  let x_798 : vec3<f32> = (vec3<f32>(x_794.x, x_794.y, x_794.z) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat1;
  let x_804 : f32 = x_26.x_Grain_Params1.y;
  let x_806 : f32 = x_26.x_Grain_Params1.y;
  let x_808 : f32 = x_26.x_Grain_Params1.y;
  let x_810 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) * vec3<f32>(x_804, x_806, x_808));
  let x_811 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat1;
  let x_815 : f32 = u_xlat31;
  let x_818 : vec4<f32> = u_xlat0;
  let x_820 : vec3<f32> = ((vec3<f32>(x_813.x, x_813.y, x_813.z) * vec3<f32>(x_815, x_815, x_815)) + vec3<f32>(x_818.x, x_818.y, x_818.z));
  let x_821 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_820.x, x_820.y, x_820.z, x_821.w);
  let x_823 : vec4<f32> = u_xlat0;
  let x_826 : f32 = x_26.x_PostExposure;
  let x_828 : f32 = x_26.x_PostExposure;
  let x_830 : f32 = x_26.x_PostExposure;
  let x_832 : f32 = x_26.x_PostExposure;
  let x_833 : vec4<f32> = vec4<f32>(x_826, x_828, x_830, x_832);
  u_xlat0 = (x_823 * vec4<f32>(x_833.x, x_833.y, x_833.z, x_833.w));
  let x_840 : vec4<f32> = u_xlat0;
  let x_847 : vec3<f32> = ((vec3<f32>(x_840.z, x_840.x, x_840.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat1;
  let x_852 : vec3<f32> = log2(vec3<f32>(x_850.x, x_850.y, x_850.z));
  let x_853 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_855 : vec4<f32> = u_xlat1;
  let x_862 : vec3<f32> = ((vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat1;
  let x_869 : vec3<f32> = clamp(vec3<f32>(x_865.x, x_865.y, x_865.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_870 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_869.x, x_869.y, x_869.z, x_870.w);
  let x_873 : vec4<f32> = u_xlat1;
  let x_877 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_873.x, x_873.y, x_873.z) * vec3<f32>(x_877.z, x_877.z, x_877.z));
  let x_881 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_881);
  let x_885 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_887 : vec2<f32> = (vec2<f32>(x_885.x, x_885.y) * vec2<f32>(0.5f, 0.5f));
  let x_888 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_887.x, x_887.y, x_888.z);
  let x_890 : vec3<f32> = u_xlat11;
  let x_893 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_896 : vec3<f32> = u_xlat2;
  let x_898 : vec2<f32> = ((vec2<f32>(x_890.y, x_890.z) * vec2<f32>(x_893.x, x_893.y)) + vec2<f32>(x_896.x, x_896.y));
  let x_899 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_899.x, x_898.x, x_898.y, x_899.w);
  let x_902 : f32 = u_xlat11.x;
  let x_904 : f32 = x_26.x_Lut2D_Params.y;
  let x_907 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_902 * x_904) + x_907);
  let x_915 : vec4<f32> = u_xlat3;
  let x_917 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_915.x, x_915.z));
  let x_918 : vec3<f32> = vec3<f32>(x_917.x, x_917.y, x_917.z);
  let x_919 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_922 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_922;
  let x_924 : vec2<f32> = u_xlat22;
  let x_925 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_924 + vec2<f32>(x_925.x, x_925.z));
  let x_931 : vec2<f32> = u_xlat21;
  let x_932 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_931);
  u_xlat2 = vec3<f32>(x_932.x, x_932.y, x_932.z);
  let x_935 : f32 = u_xlat1.x;
  let x_937 : f32 = x_26.x_Lut2D_Params.z;
  let x_940 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_935 * x_937) + -(x_940));
  let x_944 : vec4<f32> = u_xlat4;
  let x_947 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_944.x, x_944.y, x_944.z)) + x_947);
  let x_949 : vec4<f32> = u_xlat1;
  let x_951 : vec3<f32> = u_xlat11;
  let x_953 : vec4<f32> = u_xlat4;
  let x_955 : vec3<f32> = ((vec3<f32>(x_949.x, x_949.x, x_949.x) * x_951) + vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_955.x, x_955.y, x_955.z, x_956.w);
  let x_960 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_960);
  let x_962 : bool = u_xlatb1;
  if (x_962) {
    let x_965 : vec4<f32> = u_xlat0;
    let x_966 : vec3<f32> = vec3<f32>(x_965.x, x_965.y, x_965.z);
    let x_967 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
    let x_969 : vec4<f32> = u_xlat1;
    let x_973 : vec3<f32> = clamp(vec3<f32>(x_969.x, x_969.y, x_969.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_974 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
    let x_976 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_976.x, x_976.y, x_976.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_982 : vec4<f32> = u_xlat0;
  SV_Target0 = x_982;
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

