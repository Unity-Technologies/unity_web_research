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

@group(0) @binding(3) var x_AutoExposureTex : texture_2d<f32>;

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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_230 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_989 : f32;
  var x_1001 : f32;
  var x_1013 : f32;
  var x_1087 : f32;
  var x_1100 : f32;
  var x_1112 : f32;
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
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_327) / vec2<f32>(x_329.x, x_329.x));
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
  let x_345 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_345;
  u_xlati_loop_1 = 0i;
  loop {
    let x_354 : i32 = u_xlati_loop_1;
    let x_355 : i32 = u_xlati30;
    if ((x_354 < x_355)) {
    } else {
      break;
    }
    let x_358 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_358);
    let x_362 : f32 = u_xlat16.x;
    u_xlat16.x = (x_362 + 0.5f);
    let x_366 : f32 = u_xlat16.x;
    let x_368 : f32 = u_xlat1.x;
    u_xlat2.x = (x_366 / x_368);
    let x_371 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_371 + vec2<f32>(-0.5f, -0.5f));
    let x_374 : vec2<f32> = u_xlat16;
    let x_376 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_379 : vec2<f32> = ((x_374 * vec2<f32>(x_376.z, x_376.z)) + vec2<f32>(0.5f, 0.5f));
    let x_380 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_379.x, x_379.y, x_380.z, x_380.w);
    let x_382 : vec2<f32> = u_xlat16;
    let x_384 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_388 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_382 * vec2<f32>(x_384.z, x_384.z)) + -(vec2<f32>(x_388.x, x_388.y)));
    let x_392 : vec2<f32> = u_xlat16;
    let x_394 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_392 * vec2<f32>(x_394.z, x_394.w));
    let x_398 : vec2<f32> = u_xlat16;
    let x_399 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_398, x_399);
    let x_401 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_401);
    let x_403 : bool = u_xlatb11;
    if (x_403) {
      let x_407 : f32 = u_xlat36;
      let x_410 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_407, x_407) * vec2<f32>(x_410.x, x_410.y));
      let x_415 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_415);
      let x_419 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_419);
      let x_421 : f32 = u_xlat8;
      let x_422 : f32 = u_xlat9;
      u_xlat27.x = (x_421 / x_422);
      let x_427 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_427);
      let x_430 : f32 = u_xlat27.x;
      let x_431 : f32 = u_xlat37;
      u_xlat27.x = ((x_430 * x_431) + -1.0f);
      let x_435 : vec2<f32> = u_xlat16;
      let x_436 : vec2<f32> = u_xlat27;
      let x_439 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_435 * vec2<f32>(x_436.x, x_436.x)) + vec2<f32>(x_439.x, x_439.y));
    } else {
      let x_443 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_443);
      let x_445 : f32 = u_xlat8;
      let x_447 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_445 * x_447);
      let x_449 : f32 = u_xlat36;
      let x_451 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_449 * x_451);
      let x_454 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_454), 1.0f);
      let x_458 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_458), 1.0f);
      let x_461 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_461);
      let x_463 : f32 = u_xlat28;
      let x_464 : f32 = u_xlat18;
      u_xlat18 = (x_463 * x_464);
      let x_466 : f32 = u_xlat18;
      let x_467 : f32 = u_xlat18;
      u_xlat28 = (x_466 * x_467);
      let x_470 : f32 = u_xlat28;
      u_xlat38 = ((x_470 * 0.0208351f) + -0.085133001f);
      let x_473 : f32 = u_xlat28;
      let x_474 : f32 = u_xlat38;
      u_xlat38 = ((x_473 * x_474) + 0.180141002f);
      let x_477 : f32 = u_xlat28;
      let x_478 : f32 = u_xlat38;
      u_xlat38 = ((x_477 * x_478) + -0.330299497f);
      let x_481 : f32 = u_xlat28;
      let x_482 : f32 = u_xlat38;
      u_xlat28 = ((x_481 * x_482) + 0.999866009f);
      let x_485 : f32 = u_xlat28;
      let x_486 : f32 = u_xlat18;
      u_xlat38 = (x_485 * x_486);
      let x_489 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_489));
      let x_492 : f32 = u_xlat38;
      u_xlat38 = ((x_492 * -2.0f) + 1.570796371f);
      let x_495 : bool = u_xlatb9;
      let x_496 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_496, x_495);
      let x_498 : f32 = u_xlat18;
      let x_499 : f32 = u_xlat28;
      let x_501 : f32 = u_xlat38;
      u_xlat18 = ((x_498 * x_499) + x_501);
      let x_503 : f32 = u_xlat36;
      u_xlat36 = min(x_503, 1.0f);
      let x_506 : f32 = u_xlat36;
      let x_507 : f32 = u_xlat36;
      u_xlatb36 = (x_506 < -(x_507));
      let x_510 : bool = u_xlatb36;
      if (x_510) {
        let x_514 : f32 = u_xlat18;
        x_511 = -(x_514);
      } else {
        let x_517 : f32 = u_xlat18;
        x_511 = x_517;
      }
      let x_518 : f32 = x_511;
      u_xlat36 = x_518;
      let x_519 : f32 = u_xlat8;
      let x_520 : f32 = u_xlat36;
      u_xlat36 = ((x_519 * x_520) + -1.0f);
      let x_523 : vec2<f32> = u_xlat16;
      let x_524 : f32 = u_xlat36;
      let x_527 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_523 * vec2<f32>(x_524, x_524)) + vec2<f32>(x_527.x, x_527.y));
    }
    let x_530 : vec2<f32> = u_xlat27;
    u_xlat27 = x_530;
    let x_531 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_531, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_535 : vec2<f32> = u_xlat27;
    let x_537 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_535 * vec2<f32>(x_537, x_537));
    let x_545 : vec2<f32> = u_xlat16;
    let x_546 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_545, 0.0f);
    u_xlat7 = x_546;
    let x_552 : vec4<f32> = u_xlat2;
    let x_554 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_552.x, x_552.y), 0.0f);
    let x_555 : vec3<f32> = vec3<f32>(x_554.x, x_554.y, x_554.z);
    let x_556 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_555.x, x_555.y, x_555.z, x_556.w);
    let x_558 : vec4<f32> = u_xlat7;
    let x_559 : vec4<f32> = u_xlat3;
    let x_561 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_558 * x_559) + x_561);
    let x_563 : vec4<f32> = u_xlat3;
    let x_564 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_563 + x_564);
    let x_566 : vec2<f32> = u_xlat10;
    let x_567 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_566 + x_567);

    continuing {
      let x_569 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_569 + 1i);
    }
  }
  let x_571 : vec4<f32> = u_xlat4;
  let x_572 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_571 / x_572);
  let x_574 : vec4<f32> = u_xlat0;
  let x_576 : vec4<f32> = u_xlat2;
  let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.x, x_574.x) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_578.y, x_578.z, x_579.w);
  let x_583 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_587 : vec4<f32> = u_xlat0;
  let x_593 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_596 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_587.x, x_587.y, x_587.w, x_587.y)) * vec4<f32>(x_593.x, x_593.x, x_593.x, x_593.x)) + vec4<f32>(x_596.x, x_596.y, x_596.x, x_596.y));
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
  let x_625 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_622 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_625);
  let x_627 : vec4<f32> = u_xlat0;
  let x_631 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_634 : vec2<f32> = u_xlat21;
  let x_635 : vec2<f32> = ((-(vec2<f32>(x_627.z, x_627.y)) * vec2<f32>(x_631.x, x_631.x)) + x_634);
  let x_636 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
  let x_638 : vec4<f32> = u_xlat1;
  let x_642 : vec2<f32> = clamp(vec2<f32>(x_638.x, x_638.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_643 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
  let x_645 : vec4<f32> = u_xlat1;
  let x_648 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_650 : vec2<f32> = (vec2<f32>(x_645.x, x_645.y) * vec2<f32>(x_648, x_648));
  let x_651 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
  let x_656 : vec4<f32> = u_xlat1;
  let x_658 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_656.x, x_656.y));
  u_xlat4 = x_658;
  let x_659 : vec4<f32> = u_xlat3;
  let x_660 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_659 + x_660);
  let x_662 : vec4<f32> = u_xlat0;
  let x_665 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_668 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_662.z, x_662.w, x_662.x, x_662.w) * vec4<f32>(x_665.x, x_665.x, x_665.x, x_665.x)) + vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y));
  let x_671 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_671, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_675 : vec4<f32> = u_xlat4;
  let x_677 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_675 * vec4<f32>(x_677, x_677, x_677, x_677));
  let x_683 : vec4<f32> = u_xlat4;
  let x_685 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_683.x, x_683.y));
  u_xlat5 = x_685;
  let x_686 : vec4<f32> = u_xlat5;
  let x_688 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_686 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_688);
  let x_690 : vec2<f32> = u_xlat21;
  let x_691 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_690.x, x_690.y, x_691.z, x_691.w);
  let x_693 : vec4<f32> = u_xlat1;
  let x_697 : vec2<f32> = clamp(vec2<f32>(x_693.x, x_693.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_697.x, x_697.y, x_698.z, x_698.w);
  let x_700 : vec4<f32> = u_xlat1;
  let x_703 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_705 : vec2<f32> = (vec2<f32>(x_700.x, x_700.y) * vec2<f32>(x_703, x_703));
  let x_706 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_705.x, x_705.y, x_706.z, x_706.w);
  let x_711 : vec4<f32> = u_xlat1;
  let x_713 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_711.x, x_711.y));
  u_xlat5 = x_713;
  let x_714 : vec4<f32> = u_xlat5;
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_714 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_718);
  let x_723 : vec4<f32> = u_xlat4;
  let x_725 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_723.z, x_723.w));
  u_xlat4 = x_725;
  let x_726 : vec4<f32> = u_xlat4;
  let x_728 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_726 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_728);
  let x_730 : vec4<f32> = u_xlat0;
  let x_733 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_736 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_730.z, x_730.y, x_730.w, x_730.y) * vec4<f32>(x_733.x, x_733.x, x_733.x, x_733.x)) + vec4<f32>(x_736.x, x_736.y, x_736.x, x_736.y));
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_739, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_743 * vec4<f32>(x_745, x_745, x_745, x_745));
  let x_751 : vec4<f32> = u_xlat4;
  let x_753 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_751.x, x_751.y));
  u_xlat5 = x_753;
  let x_754 : vec4<f32> = u_xlat3;
  let x_755 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_754 + x_755);
  let x_760 : vec4<f32> = u_xlat4;
  let x_762 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_760.z, x_760.w));
  u_xlat4 = x_762;
  let x_763 : vec4<f32> = u_xlat4;
  let x_765 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_763 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_765);
  let x_767 : vec4<f32> = u_xlat0;
  let x_770 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_773 : vec2<f32> = u_xlat21;
  let x_774 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_770.x, x_770.x)) + x_773);
  let x_775 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat0;
  let x_781 : vec2<f32> = clamp(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_782 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_784 : vec4<f32> = u_xlat0;
  let x_787 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_789 : vec2<f32> = (vec2<f32>(x_784.x, x_784.y) * vec2<f32>(x_787, x_787));
  let x_790 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
  let x_795 : vec4<f32> = u_xlat0;
  let x_797 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_795.x, x_795.y));
  u_xlat0 = x_797;
  let x_798 : vec4<f32> = u_xlat0;
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_798 + x_799);
  let x_801 : vec4<f32> = u_xlat0;
  let x_803 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_801 * vec4<f32>(x_803.y, x_803.y, x_803.y, x_803.y));
  let x_806 : vec2<f32> = u_xlat21;
  let x_809 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_813 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_815 : vec2<f32> = ((x_806 * vec2<f32>(x_809.x, x_809.y)) + vec2<f32>(x_813.z, x_813.w));
  let x_816 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_815.x, x_815.y, x_816.z, x_816.w);
  let x_823 : vec4<f32> = u_xlat1;
  let x_825 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_823.x, x_823.y));
  let x_826 : vec3<f32> = vec3<f32>(x_825.x, x_825.y, x_825.z);
  let x_827 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_826.x, x_826.y, x_826.z, x_827.w);
  let x_829 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = (vec3<f32>(x_829.x, x_829.y, x_829.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_834 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat1;
  let x_839 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_841 : vec3<f32> = (vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(x_839.z, x_839.z, x_839.z));
  let x_842 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_844 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_847 : vec4<f32> = u_xlat0;
  let x_851 : vec3<f32> = x_26.x_Bloom_Color;
  let x_852 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * x_851);
  let x_853 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_852.z, x_853.w);
  let x_856 : f32 = u_xlat0.w;
  u_xlat4.w = (x_856 * 0.0625f);
  let x_859 : vec4<f32> = u_xlat2;
  let x_860 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_859 + x_860);
  let x_862 : vec4<f32> = u_xlat3;
  let x_864 : vec4<f32> = u_xlat1;
  let x_866 : vec3<f32> = (vec3<f32>(x_862.x, x_862.y, x_862.z) * vec3<f32>(x_864.x, x_864.y, x_864.z));
  let x_867 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
  u_xlat1.w = 0.0f;
  let x_870 : vec4<f32> = u_xlat0;
  let x_871 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_870 + x_871);
  let x_873 : vec2<f32> = vs_TEXCOORD0;
  let x_875 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_879 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_881 : vec2<f32> = ((x_873 * vec2<f32>(x_875.x, x_875.y)) + vec2<f32>(x_879.z, x_879.w));
  let x_882 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_881.x, x_881.y, x_882.z, x_882.w);
  let x_889 : vec4<f32> = u_xlat1;
  let x_891 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_889.x, x_889.y));
  u_xlat1.x = x_891.w;
  let x_895 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_895 * 2.0f) + -1.0f);
  let x_902 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_902 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_908 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_908, 0.0f, 1.0f);
  let x_912 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_912 * 2.0f) + -1.0f);
  let x_917 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_917)) + 1.0f);
  let x_923 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_923);
  let x_927 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_927) + 1.0f);
  let x_932 : f32 = u_xlat1.x;
  let x_934 : f32 = u_xlat11.x;
  u_xlat1.x = (x_932 * x_934);
  let x_937 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_937.x, x_937.y, x_937.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_942 : vec4<f32> = u_xlat0;
  let x_947 : vec3<f32> = max(abs(vec3<f32>(x_942.x, x_942.y, x_942.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_948 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_947.x, x_947.y, x_947.z, x_948.w);
  let x_950 : vec4<f32> = u_xlat2;
  let x_952 : vec3<f32> = log2(vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat2;
  let x_959 : vec3<f32> = (vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_960 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_959.x, x_959.y, x_959.z, x_960.w);
  let x_962 : vec4<f32> = u_xlat2;
  let x_964 : vec3<f32> = exp2(vec3<f32>(x_962.x, x_962.y, x_962.z));
  let x_965 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : vec4<f32> = u_xlat2;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967.x, x_967.y, x_967.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_975 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_982 : vec4<f32> = u_xlat0;
  let x_985 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_982.x, x_982.y, x_982.z, x_982.x));
  u_xlatb0 = vec3<bool>(x_985.x, x_985.y, x_985.z);
  let x_988 : bool = u_xlatb0.x;
  if (x_988) {
    let x_993 : f32 = u_xlat11.x;
    x_989 = x_993;
  } else {
    let x_996 : f32 = u_xlat2.x;
    x_989 = x_996;
  }
  let x_997 : f32 = x_989;
  u_xlat0.x = x_997;
  let x_1000 : bool = u_xlatb0.y;
  if (x_1000) {
    let x_1005 : f32 = u_xlat11.y;
    x_1001 = x_1005;
  } else {
    let x_1008 : f32 = u_xlat2.y;
    x_1001 = x_1008;
  }
  let x_1009 : f32 = x_1001;
  u_xlat0.y = x_1009;
  let x_1012 : bool = u_xlatb0.z;
  if (x_1012) {
    let x_1017 : f32 = u_xlat11.z;
    x_1013 = x_1017;
  } else {
    let x_1020 : f32 = u_xlat2.z;
    x_1013 = x_1020;
  }
  let x_1021 : f32 = x_1013;
  u_xlat0.z = x_1021;
  let x_1023 : vec4<f32> = u_xlat1;
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : vec3<f32> = ((vec3<f32>(x_1023.x, x_1023.x, x_1023.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1028.x, x_1028.y, x_1028.z));
  let x_1031 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1031.w);
  let x_1033 : vec4<f32> = u_xlat0;
  let x_1037 : vec3<f32> = (vec3<f32>(x_1033.x, x_1033.y, x_1033.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1038 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec4<f32> = u_xlat0;
  let x_1044 : vec3<f32> = (vec3<f32>(x_1040.x, x_1040.y, x_1040.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1045 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1044.x, x_1044.y, x_1044.z, x_1045.w);
  let x_1047 : vec4<f32> = u_xlat2;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1047.x, x_1047.y, x_1047.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1052 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec4<f32> = u_xlat2;
  let x_1057 : vec3<f32> = max(abs(vec3<f32>(x_1054.x, x_1054.y, x_1054.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1058 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat2;
  let x_1062 : vec3<f32> = log2(vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1069 : vec3<f32> = (vec3<f32>(x_1065.x, x_1065.y, x_1065.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1070 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1069.x, x_1069.y, x_1069.z, x_1070.w);
  let x_1072 : vec4<f32> = u_xlat2;
  let x_1074 : vec3<f32> = exp2(vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1079 : vec4<f32> = u_xlat0;
  let x_1081 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1079.x));
  u_xlatb0 = vec3<bool>(x_1081.x, x_1081.y, x_1081.z);
  let x_1086 : bool = u_xlatb0.x;
  if (x_1086) {
    let x_1091 : f32 = u_xlat1.x;
    x_1087 = x_1091;
  } else {
    let x_1094 : f32 = u_xlat2.x;
    x_1087 = x_1094;
  }
  let x_1095 : f32 = x_1087;
  SV_Target0.x = x_1095;
  let x_1099 : bool = u_xlatb0.y;
  if (x_1099) {
    let x_1104 : f32 = u_xlat1.y;
    x_1100 = x_1104;
  } else {
    let x_1107 : f32 = u_xlat2.y;
    x_1100 = x_1107;
  }
  let x_1108 : f32 = x_1100;
  SV_Target0.y = x_1108;
  let x_1111 : bool = u_xlatb0.z;
  if (x_1111) {
    let x_1116 : f32 = u_xlat1.z;
    x_1112 = x_1116;
  } else {
    let x_1119 : f32 = u_xlat2.z;
    x_1112 = x_1119;
  }
  let x_1120 : f32 = x_1112;
  SV_Target0.z = x_1120;
  let x_1123 : f32 = u_xlat0.w;
  SV_Target0.w = x_1123;
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

