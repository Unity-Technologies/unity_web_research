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
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
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

@group(0) @binding(10) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(14) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var x_938 : f32;
  var x_950 : f32;
  var x_962 : f32;
  var x_1036 : f32;
  var x_1049 : f32;
  var x_1061 : f32;
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
  u_xlat0 = (vec4<f32>(x_583.x, x_583.y, x_583.x, x_583.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_589 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_589 * 0.5f);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat1;
  let x_597 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_592.x, x_592.y, x_592.z, x_592.y) * vec4<f32>(x_594.x, x_594.x, x_594.x, x_594.x)) + vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_600, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_604 * vec4<f32>(x_606, x_606, x_606, x_606));
  let x_614 : vec4<f32> = u_xlat3;
  let x_616 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_614.x, x_614.y));
  u_xlat4 = x_616;
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_620.z, x_620.w));
  u_xlat3 = x_622;
  let x_623 : vec4<f32> = u_xlat3;
  let x_624 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_623 + x_624);
  let x_626 : vec4<f32> = u_xlat0;
  let x_628 : vec4<f32> = u_xlat1;
  let x_631 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_626.x, x_626.w, x_626.z, x_626.w) * vec4<f32>(x_628.x, x_628.x, x_628.x, x_628.x)) + vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y));
  let x_634 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_634, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_638 : vec4<f32> = u_xlat0;
  let x_640 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_638 * vec4<f32>(x_640, x_640, x_640, x_640));
  let x_646 : vec4<f32> = u_xlat0;
  let x_648 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_646.x, x_646.y));
  u_xlat4 = x_648;
  let x_649 : vec4<f32> = u_xlat3;
  let x_650 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_649 + x_650);
  let x_655 : vec4<f32> = u_xlat0;
  let x_657 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_655.z, x_655.w));
  u_xlat0 = x_657;
  let x_658 : vec4<f32> = u_xlat0;
  let x_659 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_658 + x_659);
  let x_661 : vec4<f32> = u_xlat0;
  let x_664 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_661 * vec4<f32>(x_664.y, x_664.y, x_664.y, x_664.y));
  let x_667 : vec2<f32> = u_xlat21;
  let x_670 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_674 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_676 : vec2<f32> = ((x_667 * vec2<f32>(x_670.x, x_670.y)) + vec2<f32>(x_674.z, x_674.w));
  let x_677 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_676.x, x_676.y, x_677.z, x_677.w);
  let x_684 : vec4<f32> = u_xlat1;
  let x_686 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_684.x, x_684.y));
  let x_687 : vec3<f32> = vec3<f32>(x_686.x, x_686.y, x_686.z);
  let x_688 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
  let x_690 : vec4<f32> = u_xlat0;
  let x_694 : vec3<f32> = (vec3<f32>(x_690.x, x_690.y, x_690.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_695 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
  let x_697 : vec4<f32> = u_xlat1;
  let x_700 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_702 : vec3<f32> = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_700.z, x_700.z, x_700.z));
  let x_703 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
  let x_705 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_705 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_708 : vec4<f32> = u_xlat0;
  let x_712 : vec3<f32> = x_26.x_Bloom_Color;
  let x_713 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * x_712);
  let x_714 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
  let x_717 : f32 = u_xlat0.w;
  u_xlat4.w = (x_717 * 0.25f);
  let x_720 : vec4<f32> = u_xlat2;
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_720 + x_721);
  let x_723 : vec4<f32> = u_xlat3;
  let x_725 : vec4<f32> = u_xlat1;
  let x_727 : vec3<f32> = (vec3<f32>(x_723.x, x_723.y, x_723.z) * vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_727.x, x_727.y, x_727.z, x_728.w);
  u_xlat1.w = 0.0f;
  let x_731 : vec4<f32> = u_xlat0;
  let x_732 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_731 + x_732);
  let x_734 : vec4<f32> = u_xlat0;
  let x_737 : f32 = x_26.x_PostExposure;
  let x_739 : f32 = x_26.x_PostExposure;
  let x_741 : f32 = x_26.x_PostExposure;
  let x_743 : f32 = x_26.x_PostExposure;
  let x_744 : vec4<f32> = vec4<f32>(x_737, x_739, x_741, x_743);
  u_xlat0 = (x_734 * vec4<f32>(x_744.x, x_744.y, x_744.z, x_744.w));
  let x_751 : vec4<f32> = u_xlat0;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_759 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat0;
  let x_763 : vec3<f32> = log2(vec3<f32>(x_761.x, x_761.y, x_761.z));
  let x_764 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
  let x_766 : vec4<f32> = u_xlat0;
  let x_773 : vec3<f32> = ((vec3<f32>(x_766.x, x_766.y, x_766.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_774 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec4<f32> = u_xlat0;
  let x_780 : vec3<f32> = clamp(vec3<f32>(x_776.x, x_776.y, x_776.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_781 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_780.x, x_780.y, x_780.z, x_781.w);
  let x_783 : vec4<f32> = u_xlat0;
  let x_788 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_790 : vec3<f32> = (vec3<f32>(x_783.x, x_783.y, x_783.z) * vec3<f32>(x_788.y, x_788.y, x_788.y));
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_790.z, x_791.w);
  let x_794 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_794 * 0.5f);
  let x_797 : vec4<f32> = u_xlat0;
  let x_800 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_803 : vec4<f32> = u_xlat1;
  let x_805 : vec3<f32> = ((vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_800.x, x_800.x, x_800.x)) + vec3<f32>(x_803.x, x_803.x, x_803.x));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_816.x, x_816.y, x_816.z));
  let x_819 : vec3<f32> = vec3<f32>(x_818.x, x_818.y, x_818.z);
  let x_820 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_819.x, x_819.y, x_819.z, x_820.w);
  let x_822 : vec2<f32> = vs_TEXCOORD0;
  let x_824 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_828 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_830 : vec2<f32> = ((x_822 * vec2<f32>(x_824.x, x_824.y)) + vec2<f32>(x_828.z, x_828.w));
  let x_831 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_830.x, x_830.y, x_831.z, x_831.w);
  let x_838 : vec4<f32> = u_xlat1;
  let x_840 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_838.x, x_838.y));
  u_xlat1.x = x_840.w;
  let x_844 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_844 * 2.0f) + -1.0f);
  let x_851 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_851 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_857 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_857, 0.0f, 1.0f);
  let x_861 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_861 * 2.0f) + -1.0f);
  let x_866 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_866)) + 1.0f);
  let x_872 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_872);
  let x_876 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_876) + 1.0f);
  let x_881 : f32 = u_xlat1.x;
  let x_883 : f32 = u_xlat11.x;
  u_xlat1.x = (x_881 * x_883);
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_886.x, x_886.y, x_886.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_891 : vec4<f32> = u_xlat0;
  let x_896 : vec3<f32> = max(abs(vec3<f32>(x_891.x, x_891.y, x_891.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_897 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
  let x_899 : vec4<f32> = u_xlat2;
  let x_901 : vec3<f32> = log2(vec3<f32>(x_899.x, x_899.y, x_899.z));
  let x_902 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_901.x, x_901.y, x_901.z, x_902.w);
  let x_904 : vec4<f32> = u_xlat2;
  let x_908 : vec3<f32> = (vec3<f32>(x_904.x, x_904.y, x_904.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_909 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_908.x, x_908.y, x_908.z, x_909.w);
  let x_911 : vec4<f32> = u_xlat2;
  let x_913 : vec3<f32> = exp2(vec3<f32>(x_911.x, x_911.y, x_911.z));
  let x_914 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_913.x, x_913.y, x_913.z, x_914.w);
  let x_916 : vec4<f32> = u_xlat2;
  let x_923 : vec3<f32> = ((vec3<f32>(x_916.x, x_916.y, x_916.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_924 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
  let x_931 : vec4<f32> = u_xlat0;
  let x_934 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_931.x, x_931.y, x_931.z, x_931.x));
  u_xlatb0 = vec3<bool>(x_934.x, x_934.y, x_934.z);
  let x_937 : bool = u_xlatb0.x;
  if (x_937) {
    let x_942 : f32 = u_xlat11.x;
    x_938 = x_942;
  } else {
    let x_945 : f32 = u_xlat2.x;
    x_938 = x_945;
  }
  let x_946 : f32 = x_938;
  u_xlat0.x = x_946;
  let x_949 : bool = u_xlatb0.y;
  if (x_949) {
    let x_954 : f32 = u_xlat11.y;
    x_950 = x_954;
  } else {
    let x_957 : f32 = u_xlat2.y;
    x_950 = x_957;
  }
  let x_958 : f32 = x_950;
  u_xlat0.y = x_958;
  let x_961 : bool = u_xlatb0.z;
  if (x_961) {
    let x_966 : f32 = u_xlat11.z;
    x_962 = x_966;
  } else {
    let x_969 : f32 = u_xlat2.z;
    x_962 = x_969;
  }
  let x_970 : f32 = x_962;
  u_xlat0.z = x_970;
  let x_972 : vec4<f32> = u_xlat1;
  let x_977 : vec4<f32> = u_xlat0;
  let x_979 : vec3<f32> = ((vec3<f32>(x_972.x, x_972.x, x_972.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat0;
  let x_986 : vec3<f32> = (vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_987 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat0;
  let x_993 : vec3<f32> = (vec3<f32>(x_989.x, x_989.y, x_989.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat2;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1001 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat2;
  let x_1006 : vec3<f32> = max(abs(vec3<f32>(x_1003.x, x_1003.y, x_1003.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1007 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1006.x, x_1006.y, x_1006.z, x_1007.w);
  let x_1009 : vec4<f32> = u_xlat2;
  let x_1011 : vec3<f32> = log2(vec3<f32>(x_1009.x, x_1009.y, x_1009.z));
  let x_1012 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1012.w);
  let x_1014 : vec4<f32> = u_xlat2;
  let x_1018 : vec3<f32> = (vec3<f32>(x_1014.x, x_1014.y, x_1014.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1019 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1018.x, x_1018.y, x_1018.z, x_1019.w);
  let x_1021 : vec4<f32> = u_xlat2;
  let x_1023 : vec3<f32> = exp2(vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1023.x, x_1023.y, x_1023.z, x_1024.w);
  let x_1028 : vec4<f32> = u_xlat0;
  let x_1030 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.x));
  u_xlatb0 = vec3<bool>(x_1030.x, x_1030.y, x_1030.z);
  let x_1035 : bool = u_xlatb0.x;
  if (x_1035) {
    let x_1040 : f32 = u_xlat1.x;
    x_1036 = x_1040;
  } else {
    let x_1043 : f32 = u_xlat2.x;
    x_1036 = x_1043;
  }
  let x_1044 : f32 = x_1036;
  SV_Target0.x = x_1044;
  let x_1048 : bool = u_xlatb0.y;
  if (x_1048) {
    let x_1053 : f32 = u_xlat1.y;
    x_1049 = x_1053;
  } else {
    let x_1056 : f32 = u_xlat2.y;
    x_1049 = x_1056;
  }
  let x_1057 : f32 = x_1049;
  SV_Target0.y = x_1057;
  let x_1060 : bool = u_xlatb0.z;
  if (x_1060) {
    let x_1065 : f32 = u_xlat1.z;
    x_1061 = x_1065;
  } else {
    let x_1068 : f32 = u_xlat2.z;
    x_1061 = x_1068;
  }
  let x_1069 : f32 = x_1061;
  SV_Target0.z = x_1069;
  let x_1072 : f32 = u_xlat0.w;
  SV_Target0.w = x_1072;
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

