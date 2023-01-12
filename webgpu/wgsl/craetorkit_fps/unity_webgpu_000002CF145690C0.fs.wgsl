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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(15) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(14) var sampler_Lut2D : sampler;

@group(0) @binding(0) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var u_xlatb0 : vec3<bool>;
  var x_1033 : f32;
  var x_1045 : f32;
  var x_1057 : f32;
  var x_1198 : f32;
  var x_1210 : f32;
  var x_1222 : f32;
  var u_xlat11 : vec3<f32>;
  var x_1317 : f32;
  var x_1329 : f32;
  var x_1341 : f32;
  var x_1388 : f32;
  var x_1401 : f32;
  var x_1413 : f32;
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
  let x_890 : vec2<f32> = vs_TEXCOORD1;
  let x_893 : vec4<f32> = x_26.x_Grain_Params2;
  let x_897 : vec4<f32> = x_26.x_Grain_Params2;
  let x_899 : vec2<f32> = ((x_890 * vec2<f32>(x_893.x, x_893.y)) + vec2<f32>(x_897.z, x_897.w));
  let x_900 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_899.x, x_899.y, x_900.z, x_900.w);
  let x_907 : vec4<f32> = u_xlat1;
  let x_909 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_907.x, x_907.y));
  let x_910 : vec3<f32> = vec3<f32>(x_909.x, x_909.y, x_909.z);
  let x_911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat0;
  let x_914 : vec3<f32> = vec3<f32>(x_913.x, x_913.y, x_913.z);
  let x_915 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat3;
  let x_921 : vec3<f32> = clamp(vec3<f32>(x_917.x, x_917.y, x_917.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_922 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : vec4<f32> = u_xlat3;
  u_xlat31 = dot(vec3<f32>(x_924.x, x_924.y, x_924.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_931 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_931);
  let x_935 : f32 = x_26.x_Grain_Params1.x;
  let x_936 : f32 = u_xlat31;
  u_xlat31 = ((x_935 * -(x_936)) + 1.0f);
  let x_940 : vec4<f32> = u_xlat0;
  let x_942 : vec4<f32> = u_xlat1;
  let x_944 : vec3<f32> = (vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_942.x, x_942.y, x_942.z));
  let x_945 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_944.x, x_944.y, x_944.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat1;
  let x_950 : f32 = x_26.x_Grain_Params1.y;
  let x_952 : f32 = x_26.x_Grain_Params1.y;
  let x_954 : f32 = x_26.x_Grain_Params1.y;
  let x_956 : vec3<f32> = (vec3<f32>(x_947.x, x_947.y, x_947.z) * vec3<f32>(x_950, x_952, x_954));
  let x_957 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_956.x, x_956.y, x_956.z, x_957.w);
  let x_959 : vec4<f32> = u_xlat1;
  let x_961 : f32 = u_xlat31;
  let x_964 : vec4<f32> = u_xlat0;
  let x_966 : vec3<f32> = ((vec3<f32>(x_959.x, x_959.y, x_959.z) * vec3<f32>(x_961, x_961, x_961)) + vec3<f32>(x_964.x, x_964.y, x_964.z));
  let x_967 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_966.x, x_966.y, x_966.z, x_967.w);
  let x_969 : vec4<f32> = u_xlat0;
  let x_973 : vec3<f32> = clamp(vec3<f32>(x_969.x, x_969.y, x_969.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_974 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_977 : f32 = u_xlat0.w;
  u_xlat30 = x_977;
  let x_978 : f32 = u_xlat30;
  u_xlat30 = clamp(x_978, 0.0f, 1.0f);
  let x_980 : vec4<f32> = u_xlat0;
  let x_984 : vec3<f32> = (vec3<f32>(x_980.z, x_980.x, x_980.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_985 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_984.x, x_984.y, x_984.z, x_985.w);
  let x_987 : vec4<f32> = u_xlat0;
  let x_991 : vec3<f32> = max(vec3<f32>(x_987.z, x_987.x, x_987.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_992 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_991.x, x_991.y, x_991.z, x_992.w);
  let x_994 : vec4<f32> = u_xlat3;
  let x_996 : vec3<f32> = log2(vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat3;
  let x_1003 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1004 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : vec4<f32> = u_xlat3;
  let x_1008 : vec3<f32> = exp2(vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat3;
  let x_1018 : vec3<f32> = ((vec3<f32>(x_1011.x, x_1011.y, x_1011.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1019 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1026 : vec4<f32> = u_xlat0;
  let x_1029 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1026.z, x_1026.x, x_1026.y, x_1026.z));
  u_xlatb0 = vec3<bool>(x_1029.x, x_1029.y, x_1029.z);
  let x_1032 : bool = u_xlatb0.x;
  if (x_1032) {
    let x_1037 : f32 = u_xlat1.x;
    x_1033 = x_1037;
  } else {
    let x_1040 : f32 = u_xlat3.x;
    x_1033 = x_1040;
  }
  let x_1041 : f32 = x_1033;
  u_xlat0.x = x_1041;
  let x_1044 : bool = u_xlatb0.y;
  if (x_1044) {
    let x_1049 : f32 = u_xlat1.y;
    x_1045 = x_1049;
  } else {
    let x_1052 : f32 = u_xlat3.y;
    x_1045 = x_1052;
  }
  let x_1053 : f32 = x_1045;
  u_xlat0.y = x_1053;
  let x_1056 : bool = u_xlatb0.z;
  if (x_1056) {
    let x_1061 : f32 = u_xlat1.z;
    x_1057 = x_1061;
  } else {
    let x_1064 : f32 = u_xlat3.z;
    x_1057 = x_1064;
  }
  let x_1065 : f32 = x_1057;
  u_xlat0.z = x_1065;
  let x_1067 : vec4<f32> = u_xlat0;
  let x_1071 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * vec3<f32>(x_1071.z, x_1071.z, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1077 : f32 = u_xlat1.x;
  u_xlat10.x = floor(x_1077);
  let x_1081 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1083 : vec2<f32> = (vec2<f32>(x_1081.x, x_1081.y) * vec2<f32>(0.5f, 0.5f));
  let x_1084 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1083.x, x_1084.y, x_1084.z, x_1083.y);
  let x_1086 : vec4<f32> = u_xlat1;
  let x_1089 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1092 : vec4<f32> = u_xlat1;
  let x_1094 : vec2<f32> = ((vec2<f32>(x_1086.y, x_1086.z) * vec2<f32>(x_1089.x, x_1089.y)) + vec2<f32>(x_1092.x, x_1092.w));
  let x_1095 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1095.x, x_1094.x, x_1094.y, x_1095.w);
  let x_1098 : f32 = u_xlat10.x;
  let x_1100 : f32 = x_26.x_Lut2D_Params.y;
  let x_1103 : f32 = u_xlat1.y;
  u_xlat1.x = ((x_1098 * x_1100) + x_1103);
  let x_1111 : vec4<f32> = u_xlat1;
  let x_1113 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1111.x, x_1111.z));
  let x_1114 : vec3<f32> = vec3<f32>(x_1113.x, x_1113.y, x_1113.z);
  let x_1115 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1114.x, x_1114.y, x_1114.z, x_1115.w);
  let x_1118 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1118;
  let x_1120 : vec2<f32> = u_xlat22;
  let x_1121 : vec4<f32> = u_xlat1;
  let x_1123 : vec2<f32> = (x_1120 + vec2<f32>(x_1121.x, x_1121.z));
  let x_1124 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1123.x, x_1123.y, x_1124.z, x_1124.w);
  let x_1129 : vec4<f32> = u_xlat1;
  let x_1131 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1129.x, x_1129.y));
  let x_1132 : vec3<f32> = vec3<f32>(x_1131.x, x_1131.y, x_1131.z);
  let x_1133 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1136 : f32 = u_xlat0.x;
  let x_1138 : f32 = x_26.x_Lut2D_Params.z;
  let x_1141 : f32 = u_xlat10.x;
  u_xlat0.x = ((x_1136 * x_1138) + -(x_1141));
  let x_1145 : vec4<f32> = u_xlat3;
  let x_1148 : vec4<f32> = u_xlat1;
  let x_1150 : vec3<f32> = (-(vec3<f32>(x_1145.x, x_1145.y, x_1145.z)) + vec3<f32>(x_1148.x, x_1148.y, x_1148.z));
  let x_1151 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1151.w);
  let x_1153 : vec4<f32> = u_xlat0;
  let x_1155 : vec4<f32> = u_xlat1;
  let x_1158 : vec4<f32> = u_xlat3;
  let x_1160 : vec3<f32> = ((vec3<f32>(x_1153.x, x_1153.x, x_1153.x) * vec3<f32>(x_1155.x, x_1155.y, x_1155.z)) + vec3<f32>(x_1158.x, x_1158.y, x_1158.z));
  let x_1161 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1160.x, x_1160.y, x_1160.z, x_1161.w);
  let x_1163 : vec4<f32> = u_xlat0;
  let x_1167 : vec3<f32> = (vec3<f32>(x_1163.x, x_1163.y, x_1163.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
  let x_1170 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1170.x, x_1170.y, x_1170.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1175 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1175 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1179 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1179), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1182 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1182);
  let x_1184 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1184 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1188 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1188);
  let x_1192 : vec4<f32> = u_xlat0;
  let x_1194 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1192.x, x_1192.y, x_1192.z, x_1192.x));
  u_xlatb0 = vec3<bool>(x_1194.x, x_1194.y, x_1194.z);
  let x_1197 : bool = u_xlatb0.x;
  if (x_1197) {
    let x_1202 : f32 = u_xlat1.x;
    x_1198 = x_1202;
  } else {
    let x_1205 : f32 = u_xlat2.x;
    x_1198 = x_1205;
  }
  let x_1206 : f32 = x_1198;
  u_xlat0.x = x_1206;
  let x_1209 : bool = u_xlatb0.y;
  if (x_1209) {
    let x_1214 : f32 = u_xlat1.y;
    x_1210 = x_1214;
  } else {
    let x_1217 : f32 = u_xlat2.y;
    x_1210 = x_1217;
  }
  let x_1218 : f32 = x_1210;
  u_xlat0.y = x_1218;
  let x_1221 : bool = u_xlatb0.z;
  if (x_1221) {
    let x_1226 : f32 = u_xlat1.z;
    x_1222 = x_1226;
  } else {
    let x_1229 : f32 = u_xlat2.z;
    x_1222 = x_1229;
  }
  let x_1230 : f32 = x_1222;
  u_xlat0.z = x_1230;
  let x_1232 : vec2<f32> = vs_TEXCOORD0;
  let x_1234 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1238 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1240 : vec2<f32> = ((x_1232 * vec2<f32>(x_1234.x, x_1234.y)) + vec2<f32>(x_1238.z, x_1238.w));
  let x_1241 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1241.w);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1248.x, x_1248.y));
  u_xlat1.x = x_1250.w;
  let x_1254 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1254 * 2.0f) + -1.0f);
  let x_1260 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_1260 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1266 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_1266, 0.0f, 1.0f);
  let x_1270 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1270 * 2.0f) + -1.0f);
  let x_1275 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1275)) + 1.0f);
  let x_1281 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1281);
  let x_1285 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1285) + 1.0f);
  let x_1290 : f32 = u_xlat1.x;
  let x_1292 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1290 * x_1292);
  let x_1295 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1295.x, x_1295.y, x_1295.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1298 : vec4<f32> = u_xlat0;
  u_xlat2 = max(abs(vec3<f32>(x_1298.x, x_1298.y, x_1298.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1302 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1302);
  let x_1304 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1304 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1306 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1306);
  let x_1308 : vec3<f32> = u_xlat2;
  u_xlat2 = ((x_1308 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1311 : vec4<f32> = u_xlat0;
  let x_1313 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1311.x));
  u_xlatb0 = vec3<bool>(x_1313.x, x_1313.y, x_1313.z);
  let x_1316 : bool = u_xlatb0.x;
  if (x_1316) {
    let x_1321 : f32 = u_xlat11.x;
    x_1317 = x_1321;
  } else {
    let x_1324 : f32 = u_xlat2.x;
    x_1317 = x_1324;
  }
  let x_1325 : f32 = x_1317;
  u_xlat0.x = x_1325;
  let x_1328 : bool = u_xlatb0.y;
  if (x_1328) {
    let x_1333 : f32 = u_xlat11.y;
    x_1329 = x_1333;
  } else {
    let x_1336 : f32 = u_xlat2.y;
    x_1329 = x_1336;
  }
  let x_1337 : f32 = x_1329;
  u_xlat0.y = x_1337;
  let x_1340 : bool = u_xlatb0.z;
  if (x_1340) {
    let x_1345 : f32 = u_xlat11.z;
    x_1341 = x_1345;
  } else {
    let x_1348 : f32 = u_xlat2.z;
    x_1341 = x_1348;
  }
  let x_1349 : f32 = x_1341;
  u_xlat0.z = x_1349;
  let x_1351 : vec4<f32> = u_xlat1;
  let x_1356 : vec4<f32> = u_xlat0;
  let x_1358 : vec3<f32> = ((vec3<f32>(x_1351.x, x_1351.x, x_1351.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1356.x, x_1356.y, x_1356.z));
  let x_1359 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  let x_1361 : vec4<f32> = u_xlat0;
  let x_1363 : vec3<f32> = (vec3<f32>(x_1361.x, x_1361.y, x_1361.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1364 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1363.x, x_1363.y, x_1363.z, x_1364.w);
  let x_1366 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec3<f32>(x_1366.x, x_1366.y, x_1366.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1369 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1369 * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1371 : vec3<f32> = u_xlat2;
  u_xlat2 = max(abs(x_1371), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1374 : vec3<f32> = u_xlat2;
  u_xlat2 = log2(x_1374);
  let x_1376 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1376 * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1378 : vec3<f32> = u_xlat2;
  u_xlat2 = exp2(x_1378);
  let x_1380 : vec4<f32> = u_xlat0;
  let x_1382 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1380.x));
  u_xlatb0 = vec3<bool>(x_1382.x, x_1382.y, x_1382.z);
  let x_1387 : bool = u_xlatb0.x;
  if (x_1387) {
    let x_1392 : f32 = u_xlat1.x;
    x_1388 = x_1392;
  } else {
    let x_1395 : f32 = u_xlat2.x;
    x_1388 = x_1395;
  }
  let x_1396 : f32 = x_1388;
  SV_Target0.x = x_1396;
  let x_1400 : bool = u_xlatb0.y;
  if (x_1400) {
    let x_1405 : f32 = u_xlat1.y;
    x_1401 = x_1405;
  } else {
    let x_1408 : f32 = u_xlat2.y;
    x_1401 = x_1408;
  }
  let x_1409 : f32 = x_1401;
  SV_Target0.y = x_1409;
  let x_1412 : bool = u_xlatb0.z;
  if (x_1412) {
    let x_1417 : f32 = u_xlat1.z;
    x_1413 = x_1417;
  } else {
    let x_1420 : f32 = u_xlat2.z;
    x_1413 = x_1420;
  }
  let x_1421 : f32 = x_1413;
  SV_Target0.z = x_1421;
  let x_1423 : f32 = u_xlat30;
  SV_Target0.w = x_1423;
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

