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
  @size(4)
  padding_2 : u32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Grain_Params2 : vec4<f32>,
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

@group(0) @binding(11) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(14) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_Bloom_DirtTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(7) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(15) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

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
  var x_1018 : f32;
  var x_1030 : f32;
  var x_1042 : f32;
  var x_1116 : f32;
  var x_1129 : f32;
  var x_1141 : f32;
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
  let x_735 : vec2<f32> = vs_TEXCOORD1;
  let x_738 : vec4<f32> = x_26.x_Grain_Params2;
  let x_742 : vec4<f32> = x_26.x_Grain_Params2;
  let x_744 : vec2<f32> = ((x_735 * vec2<f32>(x_738.x, x_738.y)) + vec2<f32>(x_742.z, x_742.w));
  let x_745 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_744.x, x_744.y, x_745.z, x_745.w);
  let x_752 : vec4<f32> = u_xlat1;
  let x_754 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_752.x, x_752.y));
  let x_755 : vec3<f32> = vec3<f32>(x_754.x, x_754.y, x_754.z);
  let x_756 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec4<f32> = u_xlat0;
  let x_759 : vec3<f32> = vec3<f32>(x_758.x, x_758.y, x_758.z);
  let x_760 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat2;
  let x_766 : vec3<f32> = clamp(vec3<f32>(x_762.x, x_762.y, x_762.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_767 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_769 : vec4<f32> = u_xlat2;
  u_xlat31 = dot(vec3<f32>(x_769.x, x_769.y, x_769.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_776 : f32 = u_xlat31;
  u_xlat31 = sqrt(x_776);
  let x_780 : f32 = x_26.x_Grain_Params1.x;
  let x_781 : f32 = u_xlat31;
  u_xlat31 = ((x_780 * -(x_781)) + 1.0f);
  let x_785 : vec4<f32> = u_xlat0;
  let x_787 : vec4<f32> = u_xlat1;
  let x_789 : vec3<f32> = (vec3<f32>(x_785.x, x_785.y, x_785.z) * vec3<f32>(x_787.x, x_787.y, x_787.z));
  let x_790 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_789.x, x_789.y, x_789.z, x_790.w);
  let x_792 : vec4<f32> = u_xlat1;
  let x_795 : f32 = x_26.x_Grain_Params1.y;
  let x_797 : f32 = x_26.x_Grain_Params1.y;
  let x_799 : f32 = x_26.x_Grain_Params1.y;
  let x_801 : vec3<f32> = (vec3<f32>(x_792.x, x_792.y, x_792.z) * vec3<f32>(x_795, x_797, x_799));
  let x_802 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_804 : vec4<f32> = u_xlat1;
  let x_806 : f32 = u_xlat31;
  let x_809 : vec4<f32> = u_xlat0;
  let x_811 : vec3<f32> = ((vec3<f32>(x_804.x, x_804.y, x_804.z) * vec3<f32>(x_806, x_806, x_806)) + vec3<f32>(x_809.x, x_809.y, x_809.z));
  let x_812 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_811.x, x_811.y, x_811.z, x_812.w);
  let x_814 : vec4<f32> = u_xlat0;
  let x_817 : f32 = x_26.x_PostExposure;
  let x_819 : f32 = x_26.x_PostExposure;
  let x_821 : f32 = x_26.x_PostExposure;
  let x_823 : f32 = x_26.x_PostExposure;
  let x_824 : vec4<f32> = vec4<f32>(x_817, x_819, x_821, x_823);
  u_xlat0 = (x_814 * vec4<f32>(x_824.x, x_824.y, x_824.z, x_824.w));
  let x_831 : vec4<f32> = u_xlat0;
  let x_838 : vec3<f32> = ((vec3<f32>(x_831.x, x_831.y, x_831.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_839 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_838.x, x_838.y, x_838.z, x_839.w);
  let x_841 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = log2(vec3<f32>(x_841.x, x_841.y, x_841.z));
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  let x_853 : vec3<f32> = ((vec3<f32>(x_846.x, x_846.y, x_846.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_860 : vec3<f32> = clamp(vec3<f32>(x_856.x, x_856.y, x_856.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_861 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
  let x_863 : vec4<f32> = u_xlat0;
  let x_868 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_870 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_868.y, x_868.y, x_868.y));
  let x_871 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_874 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_874 * 0.5f);
  let x_877 : vec4<f32> = u_xlat0;
  let x_880 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_883 : vec4<f32> = u_xlat1;
  let x_885 : vec3<f32> = ((vec3<f32>(x_877.x, x_877.y, x_877.z) * vec3<f32>(x_880.x, x_880.x, x_880.x)) + vec3<f32>(x_883.x, x_883.x, x_883.x));
  let x_886 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_896 : vec4<f32> = u_xlat0;
  let x_898 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_896.x, x_896.y, x_896.z));
  let x_899 : vec3<f32> = vec3<f32>(x_898.x, x_898.y, x_898.z);
  let x_900 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_899.x, x_899.y, x_899.z, x_900.w);
  let x_902 : vec2<f32> = vs_TEXCOORD0;
  let x_904 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_908 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_910 : vec2<f32> = ((x_902 * vec2<f32>(x_904.x, x_904.y)) + vec2<f32>(x_908.z, x_908.w));
  let x_911 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_910.x, x_910.y, x_911.z, x_911.w);
  let x_918 : vec4<f32> = u_xlat1;
  let x_920 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_918.x, x_918.y));
  u_xlat1.x = x_920.w;
  let x_924 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_924 * 2.0f) + -1.0f);
  let x_931 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_931 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_937 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_937, 0.0f, 1.0f);
  let x_941 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_941 * 2.0f) + -1.0f);
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_946)) + 1.0f);
  let x_952 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_952);
  let x_956 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_956) + 1.0f);
  let x_961 : f32 = u_xlat1.x;
  let x_963 : f32 = u_xlat11.x;
  u_xlat1.x = (x_961 * x_963);
  let x_966 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_966.x, x_966.y, x_966.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_971 : vec4<f32> = u_xlat0;
  let x_976 : vec3<f32> = max(abs(vec3<f32>(x_971.x, x_971.y, x_971.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_977 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  let x_979 : vec4<f32> = u_xlat2;
  let x_981 : vec3<f32> = log2(vec3<f32>(x_979.x, x_979.y, x_979.z));
  let x_982 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
  let x_984 : vec4<f32> = u_xlat2;
  let x_988 : vec3<f32> = (vec3<f32>(x_984.x, x_984.y, x_984.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_989 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
  let x_991 : vec4<f32> = u_xlat2;
  let x_993 : vec3<f32> = exp2(vec3<f32>(x_991.x, x_991.y, x_991.z));
  let x_994 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat2;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1004 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1011 : vec4<f32> = u_xlat0;
  let x_1014 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1011.x, x_1011.y, x_1011.z, x_1011.x));
  u_xlatb0 = vec3<bool>(x_1014.x, x_1014.y, x_1014.z);
  let x_1017 : bool = u_xlatb0.x;
  if (x_1017) {
    let x_1022 : f32 = u_xlat11.x;
    x_1018 = x_1022;
  } else {
    let x_1025 : f32 = u_xlat2.x;
    x_1018 = x_1025;
  }
  let x_1026 : f32 = x_1018;
  u_xlat0.x = x_1026;
  let x_1029 : bool = u_xlatb0.y;
  if (x_1029) {
    let x_1034 : f32 = u_xlat11.y;
    x_1030 = x_1034;
  } else {
    let x_1037 : f32 = u_xlat2.y;
    x_1030 = x_1037;
  }
  let x_1038 : f32 = x_1030;
  u_xlat0.y = x_1038;
  let x_1041 : bool = u_xlatb0.z;
  if (x_1041) {
    let x_1046 : f32 = u_xlat11.z;
    x_1042 = x_1046;
  } else {
    let x_1049 : f32 = u_xlat2.z;
    x_1042 = x_1049;
  }
  let x_1050 : f32 = x_1042;
  u_xlat0.z = x_1050;
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1057 : vec4<f32> = u_xlat0;
  let x_1059 : vec3<f32> = ((vec3<f32>(x_1052.x, x_1052.x, x_1052.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1057.x, x_1057.y, x_1057.z));
  let x_1060 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
  let x_1062 : vec4<f32> = u_xlat0;
  let x_1066 : vec3<f32> = (vec3<f32>(x_1062.x, x_1062.y, x_1062.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1067 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1066.x, x_1066.y, x_1066.z, x_1067.w);
  let x_1069 : vec4<f32> = u_xlat0;
  let x_1073 : vec3<f32> = (vec3<f32>(x_1069.x, x_1069.y, x_1069.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1074 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat2;
  let x_1080 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1081 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1081.w);
  let x_1083 : vec4<f32> = u_xlat2;
  let x_1086 : vec3<f32> = max(abs(vec3<f32>(x_1083.x, x_1083.y, x_1083.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1087 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1087.w);
  let x_1089 : vec4<f32> = u_xlat2;
  let x_1091 : vec3<f32> = log2(vec3<f32>(x_1089.x, x_1089.y, x_1089.z));
  let x_1092 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1092.w);
  let x_1094 : vec4<f32> = u_xlat2;
  let x_1098 : vec3<f32> = (vec3<f32>(x_1094.x, x_1094.y, x_1094.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1099 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1098.x, x_1098.y, x_1098.z, x_1099.w);
  let x_1101 : vec4<f32> = u_xlat2;
  let x_1103 : vec3<f32> = exp2(vec3<f32>(x_1101.x, x_1101.y, x_1101.z));
  let x_1104 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1103.x, x_1103.y, x_1103.z, x_1104.w);
  let x_1108 : vec4<f32> = u_xlat0;
  let x_1110 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1108.x));
  u_xlatb0 = vec3<bool>(x_1110.x, x_1110.y, x_1110.z);
  let x_1115 : bool = u_xlatb0.x;
  if (x_1115) {
    let x_1120 : f32 = u_xlat1.x;
    x_1116 = x_1120;
  } else {
    let x_1123 : f32 = u_xlat2.x;
    x_1116 = x_1123;
  }
  let x_1124 : f32 = x_1116;
  SV_Target0.x = x_1124;
  let x_1128 : bool = u_xlatb0.y;
  if (x_1128) {
    let x_1133 : f32 = u_xlat1.y;
    x_1129 = x_1133;
  } else {
    let x_1136 : f32 = u_xlat2.y;
    x_1129 = x_1136;
  }
  let x_1137 : f32 = x_1129;
  SV_Target0.y = x_1137;
  let x_1140 : bool = u_xlatb0.z;
  if (x_1140) {
    let x_1145 : f32 = u_xlat1.z;
    x_1141 = x_1145;
  } else {
    let x_1148 : f32 = u_xlat2.z;
    x_1141 = x_1148;
  }
  let x_1149 : f32 = x_1141;
  SV_Target0.z = x_1149;
  let x_1152 : f32 = u_xlat0.w;
  SV_Target0.w = x_1152;
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

