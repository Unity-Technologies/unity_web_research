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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : bool;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb9 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

@group(0) @binding(6) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(13) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_230 : f32;
  var u_xlati_loop_1 : i32;
  var x_510 : f32;
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
    let x_94 : f32 = u_xlat21.x;
    u_xlat2.x = sin(x_94);
    let x_99 : f32 = u_xlat21.x;
    u_xlat3.x = cos(x_99);
    let x_103 : f32 = u_xlat2.x;
    let x_105 : f32 = u_xlat3.x;
    u_xlat21.x = (x_103 / x_105);
    let x_112 : f32 = u_xlat21.y;
    u_xlat31 = (1.0f / x_112);
    let x_115 : f32 = u_xlat21.x;
    let x_116 : f32 = u_xlat31;
    u_xlat21.x = ((x_115 * x_116) + -1.0f);
    let x_121 : vec4<f32> = u_xlat0;
    let x_123 : vec2<f32> = u_xlat21;
    let x_126 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_121.x, x_121.y) * vec2<f32>(x_123.x, x_123.x)) + x_126);
  } else {
    let x_130 : f32 = u_xlat1.x;
    u_xlat2.x = (1.0f / x_130);
    let x_134 : f32 = u_xlat2.x;
    let x_136 : f32 = x_26.x_Distortion_Amount.x;
    u_xlat2.x = (x_134 * x_136);
    let x_140 : f32 = u_xlat1.x;
    let x_142 : f32 = x_26.x_Distortion_Amount.y;
    u_xlat1.x = (x_140 * x_142);
    let x_147 : f32 = u_xlat1.x;
    u_xlat12 = min(abs(x_147), 1.0f);
    let x_152 : f32 = u_xlat1.x;
    u_xlat22.x = max(abs(x_152), 1.0f);
    let x_157 : f32 = u_xlat22.x;
    u_xlat22.x = (1.0f / x_157);
    let x_161 : f32 = u_xlat22.x;
    let x_162 : f32 = u_xlat12;
    u_xlat12 = (x_161 * x_162);
    let x_164 : f32 = u_xlat12;
    let x_165 : f32 = u_xlat12;
    u_xlat22.x = (x_164 * x_165);
    let x_170 : f32 = u_xlat22.x;
    u_xlat32 = ((x_170 * 0.0208351f) + -0.085133001f);
    let x_176 : f32 = u_xlat22.x;
    let x_177 : f32 = u_xlat32;
    u_xlat32 = ((x_176 * x_177) + 0.180141002f);
    let x_182 : f32 = u_xlat22.x;
    let x_183 : f32 = u_xlat32;
    u_xlat32 = ((x_182 * x_183) + -0.330299497f);
    let x_188 : f32 = u_xlat22.x;
    let x_189 : f32 = u_xlat32;
    u_xlat22.x = ((x_188 * x_189) + 0.999866009f);
    let x_195 : f32 = u_xlat22.x;
    let x_196 : f32 = u_xlat12;
    u_xlat32 = (x_195 * x_196);
    let x_200 : f32 = u_xlat1.x;
    u_xlatb3 = (1.0f < abs(x_200));
    let x_203 : f32 = u_xlat32;
    u_xlat32 = ((x_203 * -2.0f) + 1.570796371f);
    let x_208 : bool = u_xlatb3;
    let x_209 : f32 = u_xlat32;
    u_xlat32 = select(0.0f, x_209, x_208);
    let x_211 : f32 = u_xlat12;
    let x_213 : f32 = u_xlat22.x;
    let x_215 : f32 = u_xlat32;
    u_xlat12 = ((x_211 * x_213) + x_215);
    let x_218 : f32 = u_xlat1.x;
    u_xlat1.x = min(x_218, 1.0f);
    let x_223 : f32 = u_xlat1.x;
    let x_225 : f32 = u_xlat1.x;
    u_xlatb1 = (x_223 < -(x_225));
    let x_228 : bool = u_xlatb1;
    if (x_228) {
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
  let x_328 : vec4<f32> = u_xlat1;
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
    let x_353 : i32 = u_xlati_loop_1;
    let x_354 : i32 = u_xlati30;
    if ((x_353 < x_354)) {
    } else {
      break;
    }
    let x_357 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_357);
    let x_361 : f32 = u_xlat16.x;
    u_xlat16.x = (x_361 + 0.5f);
    let x_365 : f32 = u_xlat16.x;
    let x_367 : f32 = u_xlat1.x;
    u_xlat2.x = (x_365 / x_367);
    let x_370 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_370 + vec2<f32>(-0.5f, -0.5f));
    let x_373 : vec2<f32> = u_xlat16;
    let x_375 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_378 : vec2<f32> = ((x_373 * vec2<f32>(x_375.z, x_375.z)) + vec2<f32>(0.5f, 0.5f));
    let x_379 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_381 : vec2<f32> = u_xlat16;
    let x_383 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_387 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_381 * vec2<f32>(x_383.z, x_383.z)) + -(vec2<f32>(x_387.x, x_387.y)));
    let x_391 : vec2<f32> = u_xlat16;
    let x_393 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_391 * vec2<f32>(x_393.z, x_393.w));
    let x_397 : vec2<f32> = u_xlat16;
    let x_398 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_397, x_398);
    let x_400 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_400);
    let x_402 : bool = u_xlatb11;
    if (x_402) {
      let x_406 : f32 = u_xlat36;
      let x_409 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_406, x_406) * vec2<f32>(x_409.x, x_409.y));
      let x_414 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_414);
      let x_418 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_418);
      let x_420 : f32 = u_xlat8;
      let x_421 : f32 = u_xlat9;
      u_xlat27.x = (x_420 / x_421);
      let x_426 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_426);
      let x_429 : f32 = u_xlat27.x;
      let x_430 : f32 = u_xlat37;
      u_xlat27.x = ((x_429 * x_430) + -1.0f);
      let x_434 : vec2<f32> = u_xlat16;
      let x_435 : vec2<f32> = u_xlat27;
      let x_438 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_434 * vec2<f32>(x_435.x, x_435.x)) + vec2<f32>(x_438.x, x_438.y));
    } else {
      let x_442 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_442);
      let x_444 : f32 = u_xlat8;
      let x_446 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_444 * x_446);
      let x_448 : f32 = u_xlat36;
      let x_450 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_448 * x_450);
      let x_453 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_453), 1.0f);
      let x_457 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_457), 1.0f);
      let x_460 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_460);
      let x_462 : f32 = u_xlat28;
      let x_463 : f32 = u_xlat18;
      u_xlat18 = (x_462 * x_463);
      let x_465 : f32 = u_xlat18;
      let x_466 : f32 = u_xlat18;
      u_xlat28 = (x_465 * x_466);
      let x_469 : f32 = u_xlat28;
      u_xlat38 = ((x_469 * 0.0208351f) + -0.085133001f);
      let x_472 : f32 = u_xlat28;
      let x_473 : f32 = u_xlat38;
      u_xlat38 = ((x_472 * x_473) + 0.180141002f);
      let x_476 : f32 = u_xlat28;
      let x_477 : f32 = u_xlat38;
      u_xlat38 = ((x_476 * x_477) + -0.330299497f);
      let x_480 : f32 = u_xlat28;
      let x_481 : f32 = u_xlat38;
      u_xlat28 = ((x_480 * x_481) + 0.999866009f);
      let x_484 : f32 = u_xlat28;
      let x_485 : f32 = u_xlat18;
      u_xlat38 = (x_484 * x_485);
      let x_488 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_488));
      let x_491 : f32 = u_xlat38;
      u_xlat38 = ((x_491 * -2.0f) + 1.570796371f);
      let x_494 : bool = u_xlatb9;
      let x_495 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_495, x_494);
      let x_497 : f32 = u_xlat18;
      let x_498 : f32 = u_xlat28;
      let x_500 : f32 = u_xlat38;
      u_xlat18 = ((x_497 * x_498) + x_500);
      let x_502 : f32 = u_xlat36;
      u_xlat36 = min(x_502, 1.0f);
      let x_505 : f32 = u_xlat36;
      let x_506 : f32 = u_xlat36;
      u_xlatb36 = (x_505 < -(x_506));
      let x_509 : bool = u_xlatb36;
      if (x_509) {
        let x_513 : f32 = u_xlat18;
        x_510 = -(x_513);
      } else {
        let x_516 : f32 = u_xlat18;
        x_510 = x_516;
      }
      let x_517 : f32 = x_510;
      u_xlat36 = x_517;
      let x_518 : f32 = u_xlat8;
      let x_519 : f32 = u_xlat36;
      u_xlat36 = ((x_518 * x_519) + -1.0f);
      let x_522 : vec2<f32> = u_xlat16;
      let x_523 : f32 = u_xlat36;
      let x_526 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_522 * vec2<f32>(x_523, x_523)) + vec2<f32>(x_526.x, x_526.y));
    }
    let x_529 : vec2<f32> = u_xlat27;
    u_xlat27 = x_529;
    let x_530 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_530, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_534 : vec2<f32> = u_xlat27;
    let x_536 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_534 * vec2<f32>(x_536, x_536));
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
  let x_593 : vec4<f32> = u_xlat1;
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
  let x_627 : vec4<f32> = u_xlat1;
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
  let x_676 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_675.x, x_675.y, x_676.z, x_676.w);
  let x_683 : vec4<f32> = u_xlat1;
  let x_685 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_683.x, x_683.y));
  let x_686 : vec3<f32> = vec3<f32>(x_685.x, x_685.y, x_685.z);
  let x_687 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_686.x, x_686.y, x_686.z, x_687.w);
  let x_689 : vec4<f32> = u_xlat0;
  let x_693 : vec3<f32> = (vec3<f32>(x_689.x, x_689.y, x_689.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_694 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
  let x_696 : vec4<f32> = u_xlat1;
  let x_699 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_701 : vec3<f32> = (vec3<f32>(x_696.x, x_696.y, x_696.z) * vec3<f32>(x_699.z, x_699.z, x_699.z));
  let x_702 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
  let x_704 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_704 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_707 : vec4<f32> = u_xlat0;
  let x_711 : vec3<f32> = x_26.x_Bloom_Color;
  let x_712 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) * x_711);
  let x_713 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_716 : f32 = u_xlat0.w;
  u_xlat4.w = (x_716 * 0.25f);
  let x_719 : vec4<f32> = u_xlat2;
  let x_720 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_719 + x_720);
  let x_722 : vec4<f32> = u_xlat3;
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) * vec3<f32>(x_724.x, x_724.y, x_724.z));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  u_xlat1.w = 0.0f;
  let x_730 : vec4<f32> = u_xlat0;
  let x_731 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_730 + x_731);
  let x_734 : vec2<f32> = vs_TEXCOORD1;
  let x_737 : vec4<f32> = x_26.x_Grain_Params2;
  let x_741 : vec4<f32> = x_26.x_Grain_Params2;
  let x_743 : vec2<f32> = ((x_734 * vec2<f32>(x_737.x, x_737.y)) + vec2<f32>(x_741.z, x_741.w));
  let x_744 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_743.x, x_743.y, x_744.z, x_744.w);
  let x_751 : vec4<f32> = u_xlat1;
  let x_753 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_751.x, x_751.y));
  let x_754 : vec3<f32> = vec3<f32>(x_753.x, x_753.y, x_753.z);
  let x_755 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec4<f32> = u_xlat0;
  let x_758 : vec3<f32> = vec3<f32>(x_757.x, x_757.y, x_757.z);
  let x_759 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat2;
  let x_765 : vec3<f32> = clamp(vec3<f32>(x_761.x, x_761.y, x_761.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_766 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_775 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_775);
  let x_779 : f32 = x_26.x_Grain_Params1.x;
  let x_780 : f32 = u_xlat31;
  u_xlat31 = ((x_779 * -(x_780)) + 1.0f);
  let x_784 : vec4<f32> = u_xlat0;
  let x_786 : vec4<f32> = u_xlat1;
  let x_788 : vec3<f32> = (vec3<f32>(x_784.x, x_784.y, x_784.z) * vec3<f32>(x_786.x, x_786.y, x_786.z));
  let x_789 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
  let x_791 : vec4<f32> = u_xlat1;
  let x_794 : f32 = x_26.x_Grain_Params1.y;
  let x_796 : f32 = x_26.x_Grain_Params1.y;
  let x_798 : f32 = x_26.x_Grain_Params1.y;
  let x_800 : vec3<f32> = (vec3<f32>(x_791.x, x_791.y, x_791.z) * vec3<f32>(x_794, x_796, x_798));
  let x_801 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_800.x, x_800.y, x_800.z, x_801.w);
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : f32 = u_xlat31;
  let x_808 : vec4<f32> = u_xlat0;
  let x_810 : vec3<f32> = ((vec3<f32>(x_803.x, x_803.y, x_803.z) * vec3<f32>(x_805, x_805, x_805)) + vec3<f32>(x_808.x, x_808.y, x_808.z));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_810.z, x_811.w);
  let x_813 : vec4<f32> = u_xlat0;
  let x_817 : f32 = x_26.x_PostExposure;
  let x_819 : f32 = x_26.x_PostExposure;
  let x_821 : f32 = x_26.x_PostExposure;
  let x_823 : f32 = x_26.x_PostExposure;
  let x_824 : vec4<f32> = vec4<f32>(x_817, x_819, x_821, x_823);
  u_xlat0 = (vec4<f32>(x_813.w, x_813.x, x_813.y, x_813.z) * vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.w));
  let x_831 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = ((vec3<f32>(x_831.y, x_831.z, x_831.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_839 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat1;
  let x_843 : vec3<f32> = log2(vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat1;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_854 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat1;
  let x_860 : vec3<f32> = clamp(vec3<f32>(x_856.x, x_856.y, x_856.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat1;
  let x_868 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_870 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_868.y, x_868.y, x_868.y));
  let x_871 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_874 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_874 * 0.5f);
  let x_876 : vec4<f32> = u_xlat1;
  let x_879 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_882 : f32 = u_xlat31;
  let x_884 : vec3<f32> = ((vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_879.x, x_879.x, x_879.x)) + vec3<f32>(x_882, x_882, x_882));
  let x_885 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_884.x, x_884.y, x_884.z, x_885.w);
  let x_895 : vec4<f32> = u_xlat1;
  let x_897 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_895.x, x_895.y, x_895.z));
  let x_898 : vec3<f32> = vec3<f32>(x_897.x, x_897.y, x_897.z);
  let x_899 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_898.x, x_898.y, x_898.z);
  let x_903 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_903);
  let x_905 : bool = u_xlatb1;
  if (x_905) {
    let x_908 : vec4<f32> = u_xlat0;
    let x_909 : vec3<f32> = vec3<f32>(x_908.y, x_908.z, x_908.w);
    let x_910 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
    let x_912 : vec4<f32> = u_xlat1;
    let x_916 : vec3<f32> = clamp(vec3<f32>(x_912.x, x_912.y, x_912.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_917 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_916.x, x_916.y, x_916.z, x_917.w);
    let x_919 : vec4<f32> = u_xlat1;
    u_xlat0.x = dot(vec3<f32>(x_919.x, x_919.y, x_919.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_925 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_925.y, x_925.z, x_925.w, x_925.x);
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

