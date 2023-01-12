struct PGlobals {
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
  x_PostExposure : f32,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

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
  var x_521 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlatb0 : vec3<bool>;
  var x_1135 : f32;
  var x_1147 : f32;
  var x_1159 : f32;
  var x_1216 : f32;
  var x_1229 : f32;
  var x_1241 : f32;
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
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_327) / vec2<f32>(x_329.x, x_329.x));
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
  let x_347 : vec2<f32> = vs_TEXCOORD0;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_357 : i32 = u_xlati_loop_1;
    let x_358 : i32 = u_xlati30;
    if ((x_357 < x_358)) {
    } else {
      break;
    }
    let x_361 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_361);
    let x_363 : f32 = u_xlat36;
    u_xlat36 = (x_363 + 0.5f);
    let x_365 : f32 = u_xlat36;
    let x_367 : f32 = u_xlat1.x;
    u_xlat2.x = (x_365 / x_367);
    let x_371 : vec4<f32> = u_xlat6;
    let x_373 : vec2<f32> = (vec2<f32>(x_371.x, x_371.y) + vec2<f32>(-0.5f, -0.5f));
    let x_374 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
    let x_377 : vec4<f32> = u_xlat7;
    let x_380 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_380.z, x_380.z)) + vec2<f32>(0.5f, 0.5f));
    let x_384 : vec4<f32> = u_xlat7;
    let x_387 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_391 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_394 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(x_387.z, x_387.z)) + -(vec2<f32>(x_391.x, x_391.y)));
    let x_395 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_394.x, x_394.y, x_395.z, x_395.w);
    let x_397 : vec4<f32> = u_xlat7;
    let x_400 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_402 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) * vec2<f32>(x_400.z, x_400.w));
    let x_403 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
    let x_405 : vec4<f32> = u_xlat7;
    let x_407 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_405.x, x_405.y), vec2<f32>(x_407.x, x_407.y));
    let x_410 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_410);
    let x_412 : bool = u_xlatb11;
    if (x_412) {
      let x_416 : f32 = u_xlat36;
      let x_419 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_416, x_416) * vec2<f32>(x_419.x, x_419.y));
      let x_424 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_424);
      let x_427 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_427);
      let x_431 : f32 = u_xlat8.x;
      let x_432 : f32 = u_xlat9;
      u_xlat8.x = (x_431 / x_432);
      let x_437 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_437);
      let x_440 : f32 = u_xlat8.x;
      let x_441 : f32 = u_xlat18;
      u_xlat8.x = ((x_440 * x_441) + -1.0f);
      let x_445 : vec4<f32> = u_xlat7;
      let x_447 : vec2<f32> = u_xlat8;
      let x_450 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_447.x, x_447.x)) + x_450);
    } else {
      let x_454 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_454);
      let x_456 : f32 = u_xlat28;
      let x_458 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_456 * x_458);
      let x_460 : f32 = u_xlat36;
      let x_462 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_460 * x_462);
      let x_465 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_465), 1.0f);
      let x_468 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_468), 1.0f);
      let x_471 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_471);
      let x_473 : f32 = u_xlat38;
      let x_474 : f32 = u_xlat9;
      u_xlat38 = (x_473 * x_474);
      let x_476 : f32 = u_xlat38;
      let x_477 : f32 = u_xlat38;
      u_xlat9 = (x_476 * x_477);
      let x_480 : f32 = u_xlat9;
      u_xlat19 = ((x_480 * 0.0208351f) + -0.085133001f);
      let x_483 : f32 = u_xlat9;
      let x_484 : f32 = u_xlat19;
      u_xlat19 = ((x_483 * x_484) + 0.180141002f);
      let x_487 : f32 = u_xlat9;
      let x_488 : f32 = u_xlat19;
      u_xlat19 = ((x_487 * x_488) + -0.330299497f);
      let x_491 : f32 = u_xlat9;
      let x_492 : f32 = u_xlat19;
      u_xlat9 = ((x_491 * x_492) + 0.999866009f);
      let x_495 : f32 = u_xlat38;
      let x_496 : f32 = u_xlat9;
      u_xlat19 = (x_495 * x_496);
      let x_499 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_499));
      let x_502 : f32 = u_xlat19;
      u_xlat19 = ((x_502 * -2.0f) + 1.570796371f);
      let x_505 : bool = u_xlatb29;
      let x_506 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_506, x_505);
      let x_508 : f32 = u_xlat38;
      let x_509 : f32 = u_xlat9;
      let x_511 : f32 = u_xlat19;
      u_xlat38 = ((x_508 * x_509) + x_511);
      let x_513 : f32 = u_xlat36;
      u_xlat36 = min(x_513, 1.0f);
      let x_516 : f32 = u_xlat36;
      let x_517 : f32 = u_xlat36;
      u_xlatb36 = (x_516 < -(x_517));
      let x_520 : bool = u_xlatb36;
      if (x_520) {
        let x_524 : f32 = u_xlat38;
        x_521 = -(x_524);
      } else {
        let x_527 : f32 = u_xlat38;
        x_521 = x_527;
      }
      let x_528 : f32 = x_521;
      u_xlat36 = x_528;
      let x_529 : f32 = u_xlat28;
      let x_530 : f32 = u_xlat36;
      u_xlat36 = ((x_529 * x_530) + -1.0f);
      let x_533 : vec4<f32> = u_xlat7;
      let x_535 : f32 = u_xlat36;
      let x_538 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_535, x_535)) + x_538);
    }
    let x_540 : vec2<f32> = u_xlat8;
    u_xlat8 = x_540;
    let x_541 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_541, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_545 : vec2<f32> = u_xlat8;
    let x_547 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_549 : vec2<f32> = (x_545 * vec2<f32>(x_547, x_547));
    let x_550 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_549.x, x_549.y, x_550.z, x_550.w);
    let x_557 : vec4<f32> = u_xlat7;
    let x_559 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_557.x, x_557.y), 0.0f);
    u_xlat7 = x_559;
    let x_565 : vec3<f32> = u_xlat2;
    let x_567 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_565.x, x_565.y), 0.0f);
    let x_568 : vec3<f32> = vec3<f32>(x_567.x, x_567.y, x_567.z);
    let x_569 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_571 : vec4<f32> = u_xlat7;
    let x_572 : vec4<f32> = u_xlat3;
    let x_574 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_571 * x_572) + x_574);
    let x_576 : vec4<f32> = u_xlat3;
    let x_577 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_576 + x_577);
    let x_579 : vec2<f32> = u_xlat10;
    let x_580 : vec4<f32> = u_xlat6;
    let x_582 : vec2<f32> = (x_579 + vec2<f32>(x_580.x, x_580.y));
    let x_583 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_582.x, x_582.y, x_583.z, x_583.w);

    continuing {
      let x_585 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_585 + 1i);
    }
  }
  let x_587 : vec4<f32> = u_xlat4;
  let x_588 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_587 / x_588);
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat3;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.x, x_590.x) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_603 : vec4<f32> = u_xlat0;
  let x_609 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_612 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_603.x, x_603.y, x_603.w, x_603.y)) * vec4<f32>(x_609.x, x_609.x, x_609.x, x_609.x)) + vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y));
  let x_615 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_615, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_619 : vec4<f32> = u_xlat4;
  let x_621 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_619 * vec4<f32>(x_621, x_621, x_621, x_621));
  let x_629 : vec4<f32> = u_xlat4;
  let x_631 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_629.x, x_629.y));
  u_xlat5 = x_631;
  let x_635 : vec4<f32> = u_xlat4;
  let x_637 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_635.z, x_635.w));
  u_xlat4 = x_637;
  let x_638 : vec4<f32> = u_xlat4;
  let x_641 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_638 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_641);
  let x_643 : vec4<f32> = u_xlat0;
  let x_647 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_650 : vec2<f32> = u_xlat21;
  let x_651 : vec2<f32> = ((-(vec2<f32>(x_643.z, x_643.y)) * vec2<f32>(x_647.x, x_647.x)) + x_650);
  let x_652 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_654 : vec4<f32> = u_xlat1;
  let x_658 : vec2<f32> = clamp(vec2<f32>(x_654.x, x_654.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_659 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
  let x_661 : vec4<f32> = u_xlat1;
  let x_664 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_666 : vec2<f32> = (vec2<f32>(x_661.x, x_661.y) * vec2<f32>(x_664, x_664));
  let x_667 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_667.z, x_667.w);
  let x_672 : vec4<f32> = u_xlat1;
  let x_674 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_672.x, x_672.y));
  u_xlat5 = x_674;
  let x_675 : vec4<f32> = u_xlat4;
  let x_676 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_675 + x_676);
  let x_678 : vec4<f32> = u_xlat0;
  let x_681 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_684 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_678.z, x_678.w, x_678.x, x_678.w) * vec4<f32>(x_681.x, x_681.x, x_681.x, x_681.x)) + vec4<f32>(x_684.x, x_684.y, x_684.x, x_684.y));
  let x_687 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_687, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_691 : vec4<f32> = u_xlat5;
  let x_693 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_691 * vec4<f32>(x_693, x_693, x_693, x_693));
  let x_699 : vec4<f32> = u_xlat5;
  let x_701 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_699.x, x_699.y));
  u_xlat6 = x_701;
  let x_702 : vec4<f32> = u_xlat6;
  let x_704 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_702 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_704);
  let x_706 : vec2<f32> = u_xlat21;
  let x_707 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
  let x_709 : vec4<f32> = u_xlat1;
  let x_713 : vec2<f32> = clamp(vec2<f32>(x_709.x, x_709.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_714 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_713.x, x_713.y, x_714.z, x_714.w);
  let x_716 : vec4<f32> = u_xlat1;
  let x_719 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_721 : vec2<f32> = (vec2<f32>(x_716.x, x_716.y) * vec2<f32>(x_719, x_719));
  let x_722 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_721.x, x_721.y, x_722.z, x_722.w);
  let x_727 : vec4<f32> = u_xlat1;
  let x_729 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_727.x, x_727.y));
  u_xlat6 = x_729;
  let x_730 : vec4<f32> = u_xlat6;
  let x_734 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_730 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_734);
  let x_739 : vec4<f32> = u_xlat5;
  let x_741 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_739.z, x_739.w));
  u_xlat5 = x_741;
  let x_742 : vec4<f32> = u_xlat5;
  let x_744 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_742 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_744);
  let x_746 : vec4<f32> = u_xlat0;
  let x_749 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_752 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_746.z, x_746.y, x_746.w, x_746.y) * vec4<f32>(x_749.x, x_749.x, x_749.x, x_749.x)) + vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y));
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_755, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_759 : vec4<f32> = u_xlat5;
  let x_761 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_759 * vec4<f32>(x_761, x_761, x_761, x_761));
  let x_767 : vec4<f32> = u_xlat5;
  let x_769 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_767.x, x_767.y));
  u_xlat6 = x_769;
  let x_770 : vec4<f32> = u_xlat4;
  let x_771 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_770 + x_771);
  let x_776 : vec4<f32> = u_xlat5;
  let x_778 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_776.z, x_776.w));
  u_xlat5 = x_778;
  let x_779 : vec4<f32> = u_xlat5;
  let x_781 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_779 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_781);
  let x_783 : vec4<f32> = u_xlat0;
  let x_786 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_789 : vec2<f32> = u_xlat21;
  let x_790 : vec2<f32> = ((vec2<f32>(x_783.x, x_783.y) * vec2<f32>(x_786.x, x_786.x)) + x_789);
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_793 : vec4<f32> = u_xlat0;
  let x_797 : vec2<f32> = clamp(vec2<f32>(x_793.x, x_793.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_798 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
  let x_800 : vec4<f32> = u_xlat0;
  let x_803 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_805 : vec2<f32> = (vec2<f32>(x_800.x, x_800.y) * vec2<f32>(x_803, x_803));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
  let x_811 : vec4<f32> = u_xlat0;
  let x_813 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_811.x, x_811.y));
  u_xlat0 = x_813;
  let x_814 : vec4<f32> = u_xlat0;
  let x_815 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_814 + x_815);
  let x_817 : vec4<f32> = u_xlat0;
  let x_819 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_817 * vec4<f32>(x_819.y, x_819.y, x_819.y, x_819.y));
  let x_822 : vec2<f32> = u_xlat21;
  let x_825 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_829 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_831 : vec2<f32> = ((x_822 * vec2<f32>(x_825.x, x_825.y)) + vec2<f32>(x_829.z, x_829.w));
  let x_832 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_831.x, x_831.y, x_832.z, x_832.w);
  let x_839 : vec4<f32> = u_xlat1;
  let x_841 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_839.x, x_839.y));
  let x_842 : vec3<f32> = vec3<f32>(x_841.x, x_841.y, x_841.z);
  let x_843 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  let x_849 : vec3<f32> = (vec3<f32>(x_845.x, x_845.y, x_845.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_850 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
  let x_852 : vec4<f32> = u_xlat1;
  let x_855 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_857 : vec3<f32> = (vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_855.z, x_855.z, x_855.z));
  let x_858 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_857.x, x_857.y, x_857.z, x_858.w);
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_860 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_863 : vec4<f32> = u_xlat0;
  let x_867 : vec3<f32> = x_26.x_Bloom_Color;
  let x_868 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * x_867);
  let x_869 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_868.x, x_868.y, x_868.z, x_869.w);
  let x_872 : f32 = u_xlat0.w;
  u_xlat5.w = (x_872 * 0.0625f);
  let x_875 : vec4<f32> = u_xlat3;
  let x_876 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_875 + x_876);
  let x_878 : vec4<f32> = u_xlat4;
  let x_880 : vec4<f32> = u_xlat1;
  let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) * vec3<f32>(x_880.x, x_880.y, x_880.z));
  let x_883 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
  u_xlat1.w = 0.0f;
  let x_886 : vec4<f32> = u_xlat0;
  let x_887 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_886 + x_887);
  let x_889 : vec4<f32> = u_xlat0;
  let x_892 : f32 = x_26.x_PostExposure;
  let x_894 : f32 = x_26.x_PostExposure;
  let x_896 : f32 = x_26.x_PostExposure;
  let x_898 : f32 = x_26.x_PostExposure;
  let x_899 : vec4<f32> = vec4<f32>(x_892, x_894, x_896, x_898);
  u_xlat0 = (x_889 * vec4<f32>(x_899.x, x_899.y, x_899.z, x_899.w));
  let x_906 : vec4<f32> = u_xlat0;
  let x_913 : vec3<f32> = ((vec3<f32>(x_906.z, x_906.x, x_906.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat0;
  let x_918 : vec3<f32> = log2(vec3<f32>(x_916.x, x_916.y, x_916.z));
  let x_919 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  let x_921 : vec4<f32> = u_xlat0;
  let x_928 : vec3<f32> = ((vec3<f32>(x_921.x, x_921.y, x_921.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_929 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_931 : vec4<f32> = u_xlat0;
  let x_935 : vec3<f32> = clamp(vec3<f32>(x_931.x, x_931.y, x_931.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_936 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
  let x_938 : vec4<f32> = u_xlat0;
  let x_942 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_944 : vec3<f32> = (vec3<f32>(x_938.x, x_938.y, x_938.z) * vec3<f32>(x_942.z, x_942.z, x_942.z));
  let x_945 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_948 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_948);
  let x_952 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_954 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(0.5f, 0.5f));
  let x_955 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_954.x, x_955.y, x_955.z, x_954.y);
  let x_957 : vec4<f32> = u_xlat1;
  let x_960 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_963 : vec4<f32> = u_xlat1;
  let x_965 : vec2<f32> = ((vec2<f32>(x_957.y, x_957.z) * vec2<f32>(x_960.x, x_960.y)) + vec2<f32>(x_963.x, x_963.w));
  let x_966 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_966.x, x_965.x, x_965.y, x_966.w);
  let x_969 : f32 = u_xlat10.x;
  let x_971 : f32 = x_26.x_Lut2D_Params.y;
  let x_974 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_969 * x_971) + x_974);
  let x_982 : vec4<f32> = u_xlat1;
  let x_984 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_982.x, x_982.z));
  let x_985 : vec3<f32> = vec3<f32>(x_984.x, x_984.y, x_984.z);
  let x_986 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_989 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_989;
  let x_991 : vec2<f32> = u_xlat22;
  let x_992 : vec4<f32> = u_xlat1;
  let x_994 : vec2<f32> = (x_991 + vec2<f32>(x_992.x, x_992.z));
  let x_995 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_995.w);
  let x_1000 : vec4<f32> = u_xlat1;
  let x_1002 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1000.x, x_1000.y));
  let x_1003 : vec3<f32> = vec3<f32>(x_1002.x, x_1002.y, x_1002.z);
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1007 : f32 = u_xlat0.x;
  let x_1009 : f32 = x_26.x_Lut2D_Params.z;
  let x_1012 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1007 * x_1009) + -(x_1012));
  let x_1016 : vec4<f32> = u_xlat3;
  let x_1019 : vec4<f32> = u_xlat1;
  let x_1021 : vec3<f32> = (-(vec3<f32>(x_1016.x, x_1016.y, x_1016.z)) + vec3<f32>(x_1019.x, x_1019.y, x_1019.z));
  let x_1022 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat0;
  let x_1026 : vec4<f32> = u_xlat1;
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1031 : vec3<f32> = ((vec3<f32>(x_1024.x, x_1024.x, x_1024.x) * vec3<f32>(x_1026.x, x_1026.y, x_1026.z)) + vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1032 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1031.x, x_1031.y, x_1031.z, x_1032.w);
  let x_1034 : vec2<f32> = vs_TEXCOORD0;
  let x_1036 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1040 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1042 : vec2<f32> = ((x_1034 * vec2<f32>(x_1036.x, x_1036.y)) + vec2<f32>(x_1040.z, x_1040.w));
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
  let x_1050 : vec4<f32> = u_xlat1;
  let x_1052 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1050.x, x_1050.y));
  u_xlat1.x = x_1052.w;
  let x_1056 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1056 * 2.0f) + -1.0f);
  let x_1062 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1062 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1068 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1068, 0.0f, 1.0f);
  let x_1072 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1072 * 2.0f) + -1.0f);
  let x_1077 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1077)) + 1.0f);
  let x_1083 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1083);
  let x_1087 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1087) + 1.0f);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1092 * x_1094);
  let x_1097 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1097.x, x_1097.y, x_1097.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1102 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1102.x, x_1102.y, x_1102.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1108 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1108);
  let x_1110 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1110 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1114 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1114);
  let x_1116 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1116 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1128 : vec4<f32> = u_xlat0;
  let x_1131 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1128.x, x_1128.y, x_1128.z, x_1128.x));
  u_xlatb0 = vec3<bool>(x_1131.x, x_1131.y, x_1131.z);
  let x_1134 : bool = u_xlatb0.x;
  if (x_1134) {
    let x_1139 : f32 = u_xlat11.x;
    x_1135 = x_1139;
  } else {
    let x_1142 : f32 = u_xlat2.x;
    x_1135 = x_1142;
  }
  let x_1143 : f32 = x_1135;
  u_xlat0.x = x_1143;
  let x_1146 : bool = u_xlatb0.y;
  if (x_1146) {
    let x_1151 : f32 = u_xlat11.y;
    x_1147 = x_1151;
  } else {
    let x_1154 : f32 = u_xlat2.y;
    x_1147 = x_1154;
  }
  let x_1155 : f32 = x_1147;
  u_xlat0.y = x_1155;
  let x_1158 : bool = u_xlatb0.z;
  if (x_1158) {
    let x_1163 : f32 = u_xlat11.z;
    x_1159 = x_1163;
  } else {
    let x_1166 : f32 = u_xlat2.z;
    x_1159 = x_1166;
  }
  let x_1167 : f32 = x_1159;
  u_xlat0.z = x_1167;
  let x_1169 : vec4<f32> = u_xlat1;
  let x_1174 : vec4<f32> = u_xlat0;
  let x_1176 : vec3<f32> = ((vec3<f32>(x_1169.x, x_1169.x, x_1169.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1174.x, x_1174.y, x_1174.z));
  let x_1177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1183 : vec3<f32> = (vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1184 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1183.x, x_1183.y, x_1183.z, x_1184.w);
  let x_1186 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1191 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1191 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1195 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1195), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1198 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1198);
  let x_1200 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1200 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1204 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1204);
  let x_1208 : vec4<f32> = u_xlat0;
  let x_1210 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1208.x));
  u_xlatb0 = vec3<bool>(x_1210.x, x_1210.y, x_1210.z);
  let x_1215 : bool = u_xlatb0.x;
  if (x_1215) {
    let x_1220 : f32 = u_xlat1.x;
    x_1216 = x_1220;
  } else {
    let x_1223 : f32 = u_xlat2.x;
    x_1216 = x_1223;
  }
  let x_1224 : f32 = x_1216;
  SV_Target0.x = x_1224;
  let x_1228 : bool = u_xlatb0.y;
  if (x_1228) {
    let x_1233 : f32 = u_xlat1.y;
    x_1229 = x_1233;
  } else {
    let x_1236 : f32 = u_xlat2.y;
    x_1229 = x_1236;
  }
  let x_1237 : f32 = x_1229;
  SV_Target0.y = x_1237;
  let x_1240 : bool = u_xlatb0.z;
  if (x_1240) {
    let x_1245 : f32 = u_xlat1.z;
    x_1241 = x_1245;
  } else {
    let x_1248 : f32 = u_xlat2.z;
    x_1241 = x_1248;
  }
  let x_1249 : f32 = x_1241;
  SV_Target0.z = x_1249;
  let x_1252 : f32 = u_xlat0.w;
  SV_Target0.w = x_1252;
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

