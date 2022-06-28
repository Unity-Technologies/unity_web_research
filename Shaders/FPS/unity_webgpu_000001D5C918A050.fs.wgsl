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
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat31 : f32;

var<private> u_xlat12 : f32;

var<private> u_xlat22 : vec2<f32>;

var<private> u_xlat32 : f32;

var<private> u_xlatb3 : bool;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat30 : f32;

var<private> u_xlati30 : i32;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat36 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat27 : vec2<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlatb29 : bool;

var<private> u_xlatb36 : bool;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlatb4 : vec3<bool>;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(12) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_235 : f32;
  var u_xlati_loop_1 : i32;
  var x_526 : f32;
  var hlslcc_movcTemp : vec4<f32>;
  var x_952 : f32;
  var x_964 : f32;
  var x_976 : f32;
  var x_1123 : f32;
  var x_1135 : f32;
  var x_1147 : f32;
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
    let x_226 : f32 = u_xlat1.x;
    let x_228 : f32 = u_xlat1.x;
    u_xlatb1.x = (x_226 < -(x_228));
    let x_233 : bool = u_xlatb1.x;
    if (x_233) {
      let x_238 : f32 = u_xlat12;
      x_235 = -(x_238);
    } else {
      let x_241 : f32 = u_xlat12;
      x_235 = x_241;
    }
    let x_242 : f32 = x_235;
    u_xlat1.x = x_242;
    let x_245 : f32 = u_xlat2.x;
    let x_247 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_245 * x_247) + -1.0f);
    let x_251 : vec4<f32> = u_xlat0;
    let x_253 : vec4<f32> = u_xlat1;
    let x_256 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_251.x, x_251.y) * vec2<f32>(x_253.x, x_253.x)) + x_256);
  }
  let x_268 : vec2<f32> = vs_TEXCOORD0;
  let x_269 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_268);
  u_xlat0.x = x_269.x;
  let x_273 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_273 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_280 : vec2<f32> = u_xlat10;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_280, x_281);
  let x_283 : f32 = u_xlat30;
  let x_285 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_283, x_283) * x_285);
  let x_287 : vec2<f32> = u_xlat10;
  let x_290 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_292 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_293 : vec2<f32> = vec2<f32>(x_290, x_292);
  u_xlat10 = (x_287 * vec2<f32>(x_293.x, x_293.y));
  let x_298 : vec2<f32> = u_xlat10;
  let x_302 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_304 : vec2<f32> = (-(x_298) * vec2<f32>(x_302.z, x_302.w));
  let x_305 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_304.x, x_304.y, x_305.z);
  let x_307 : vec3<f32> = u_xlat2;
  let x_309 : vec2<f32> = (vec2<f32>(x_307.x, x_307.y) * vec2<f32>(0.5f, 0.5f));
  let x_310 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_309.x, x_309.y, x_310.z);
  let x_312 : vec3<f32> = u_xlat2;
  let x_314 : vec3<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_312.x, x_312.y), vec2<f32>(x_314.x, x_314.y));
  let x_317 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_317);
  let x_321 : f32 = u_xlat30;
  u_xlati30 = i32(x_321);
  let x_323 : i32 = u_xlati30;
  u_xlati30 = max(x_323, 3i);
  let x_325 : i32 = u_xlati30;
  u_xlati30 = min(x_325, 16i);
  let x_328 : i32 = u_xlati30;
  u_xlat1.x = f32(x_328);
  let x_331 : vec2<f32> = u_xlat10;
  let x_333 : vec4<f32> = u_xlat1;
  u_xlat10 = (-(x_331) / vec2<f32>(x_333.x, x_333.x));
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
  let x_351 : vec2<f32> = vs_TEXCOORD0;
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_351.x, x_351.y, x_352.z, x_352.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_362 : i32 = u_xlati_loop_1;
    let x_363 : i32 = u_xlati30;
    if ((x_362 < x_363)) {
    } else {
      break;
    }
    let x_366 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_366);
    let x_368 : f32 = u_xlat36;
    u_xlat36 = (x_368 + 0.5f);
    let x_370 : f32 = u_xlat36;
    let x_372 : f32 = u_xlat1.x;
    u_xlat2.x = (x_370 / x_372);
    let x_376 : vec4<f32> = u_xlat6;
    let x_378 : vec2<f32> = (vec2<f32>(x_376.x, x_376.y) + vec2<f32>(-0.5f, -0.5f));
    let x_379 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_378.x, x_378.y, x_379.z, x_379.w);
    let x_382 : vec4<f32> = u_xlat7;
    let x_385 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_382.x, x_382.y) * vec2<f32>(x_385.z, x_385.z)) + vec2<f32>(0.5f, 0.5f));
    let x_389 : vec4<f32> = u_xlat7;
    let x_392 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_396 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_399 : vec2<f32> = ((vec2<f32>(x_389.x, x_389.y) * vec2<f32>(x_392.z, x_392.z)) + -(vec2<f32>(x_396.x, x_396.y)));
    let x_400 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
    let x_402 : vec4<f32> = u_xlat7;
    let x_405 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_407 : vec2<f32> = (vec2<f32>(x_402.x, x_402.y) * vec2<f32>(x_405.z, x_405.w));
    let x_408 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
    let x_410 : vec4<f32> = u_xlat7;
    let x_412 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_410.x, x_410.y), vec2<f32>(x_412.x, x_412.y));
    let x_415 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_415);
    let x_417 : bool = u_xlatb11;
    if (x_417) {
      let x_421 : f32 = u_xlat36;
      let x_424 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_421, x_421) * vec2<f32>(x_424.x, x_424.y));
      let x_429 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_429);
      let x_432 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_432);
      let x_436 : f32 = u_xlat8.x;
      let x_437 : f32 = u_xlat9;
      u_xlat8.x = (x_436 / x_437);
      let x_442 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_442);
      let x_445 : f32 = u_xlat8.x;
      let x_446 : f32 = u_xlat18;
      u_xlat8.x = ((x_445 * x_446) + -1.0f);
      let x_450 : vec4<f32> = u_xlat7;
      let x_452 : vec2<f32> = u_xlat8;
      let x_455 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_450.x, x_450.y) * vec2<f32>(x_452.x, x_452.x)) + x_455);
    } else {
      let x_459 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_459);
      let x_461 : f32 = u_xlat28;
      let x_463 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_461 * x_463);
      let x_465 : f32 = u_xlat36;
      let x_467 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_465 * x_467);
      let x_470 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_470), 1.0f);
      let x_473 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_473), 1.0f);
      let x_476 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_476);
      let x_478 : f32 = u_xlat38;
      let x_479 : f32 = u_xlat9;
      u_xlat38 = (x_478 * x_479);
      let x_481 : f32 = u_xlat38;
      let x_482 : f32 = u_xlat38;
      u_xlat9 = (x_481 * x_482);
      let x_485 : f32 = u_xlat9;
      u_xlat19 = ((x_485 * 0.0208351f) + -0.085133001f);
      let x_488 : f32 = u_xlat9;
      let x_489 : f32 = u_xlat19;
      u_xlat19 = ((x_488 * x_489) + 0.180141002f);
      let x_492 : f32 = u_xlat9;
      let x_493 : f32 = u_xlat19;
      u_xlat19 = ((x_492 * x_493) + -0.330299497f);
      let x_496 : f32 = u_xlat9;
      let x_497 : f32 = u_xlat19;
      u_xlat9 = ((x_496 * x_497) + 0.999866009f);
      let x_500 : f32 = u_xlat38;
      let x_501 : f32 = u_xlat9;
      u_xlat19 = (x_500 * x_501);
      let x_504 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_504));
      let x_507 : f32 = u_xlat19;
      u_xlat19 = ((x_507 * -2.0f) + 1.570796371f);
      let x_510 : bool = u_xlatb29;
      let x_511 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_511, x_510);
      let x_513 : f32 = u_xlat38;
      let x_514 : f32 = u_xlat9;
      let x_516 : f32 = u_xlat19;
      u_xlat38 = ((x_513 * x_514) + x_516);
      let x_518 : f32 = u_xlat36;
      u_xlat36 = min(x_518, 1.0f);
      let x_521 : f32 = u_xlat36;
      let x_522 : f32 = u_xlat36;
      u_xlatb36 = (x_521 < -(x_522));
      let x_525 : bool = u_xlatb36;
      if (x_525) {
        let x_529 : f32 = u_xlat38;
        x_526 = -(x_529);
      } else {
        let x_532 : f32 = u_xlat38;
        x_526 = x_532;
      }
      let x_533 : f32 = x_526;
      u_xlat36 = x_533;
      let x_534 : f32 = u_xlat28;
      let x_535 : f32 = u_xlat36;
      u_xlat36 = ((x_534 * x_535) + -1.0f);
      let x_538 : vec4<f32> = u_xlat7;
      let x_540 : f32 = u_xlat36;
      let x_543 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_538.x, x_538.y) * vec2<f32>(x_540, x_540)) + x_543);
    }
    let x_545 : vec2<f32> = u_xlat8;
    u_xlat8 = x_545;
    let x_546 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_546, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_550 : vec2<f32> = u_xlat8;
    let x_552 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_554 : vec2<f32> = (x_550 * vec2<f32>(x_552, x_552));
    let x_555 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
    let x_562 : vec4<f32> = u_xlat7;
    let x_564 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_562.x, x_562.y), 0.0f);
    u_xlat7 = x_564;
    let x_570 : vec3<f32> = u_xlat2;
    let x_572 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_570.x, x_570.y), 0.0f);
    let x_573 : vec3<f32> = vec3<f32>(x_572.x, x_572.y, x_572.z);
    let x_574 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat7;
    let x_577 : vec4<f32> = u_xlat3;
    let x_579 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_576 * x_577) + x_579);
    let x_581 : vec4<f32> = u_xlat3;
    let x_582 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_581 + x_582);
    let x_584 : vec2<f32> = u_xlat10;
    let x_585 : vec4<f32> = u_xlat6;
    let x_587 : vec2<f32> = (x_584 + vec2<f32>(x_585.x, x_585.y));
    let x_588 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);

    continuing {
      let x_590 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_590 + 1i);
    }
  }
  let x_592 : vec4<f32> = u_xlat4;
  let x_593 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_592 / x_593);
  let x_595 : vec4<f32> = u_xlat0;
  let x_597 : vec4<f32> = u_xlat3;
  let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.x, x_595.x) * vec3<f32>(x_597.x, x_597.y, x_597.z));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
  let x_604 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_604.x, x_604.y, x_604.x, x_604.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_608 : vec4<f32> = u_xlat0;
  let x_614 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_617 : vec2<f32> = u_xlat21;
  u_xlat4 = ((-(vec4<f32>(x_608.x, x_608.y, x_608.w, x_608.y)) * vec4<f32>(x_614.x, x_614.x, x_614.x, x_614.x)) + vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y));
  let x_620 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_620, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_624 : vec4<f32> = u_xlat4;
  let x_626 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_624 * vec4<f32>(x_626, x_626, x_626, x_626));
  let x_634 : vec4<f32> = u_xlat4;
  let x_636 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_634.x, x_634.y));
  u_xlat5 = x_636;
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_640.z, x_640.w));
  u_xlat4 = x_642;
  let x_643 : vec4<f32> = u_xlat4;
  let x_646 : vec4<f32> = u_xlat5;
  u_xlat4 = ((x_643 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_646);
  let x_648 : vec4<f32> = u_xlat0;
  let x_652 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_655 : vec2<f32> = u_xlat21;
  let x_656 : vec2<f32> = ((-(vec2<f32>(x_648.z, x_648.y)) * vec2<f32>(x_652.x, x_652.x)) + x_655);
  let x_657 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
  let x_659 : vec4<f32> = u_xlat1;
  let x_663 : vec2<f32> = clamp(vec2<f32>(x_659.x, x_659.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_664 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_663.x, x_663.y, x_664.z, x_664.w);
  let x_666 : vec4<f32> = u_xlat1;
  let x_669 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_671 : vec2<f32> = (vec2<f32>(x_666.x, x_666.y) * vec2<f32>(x_669, x_669));
  let x_672 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
  let x_677 : vec4<f32> = u_xlat1;
  let x_679 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_677.x, x_677.y));
  u_xlat5 = x_679;
  let x_680 : vec4<f32> = u_xlat4;
  let x_681 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_680 + x_681);
  let x_683 : vec4<f32> = u_xlat0;
  let x_686 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_689 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.w) * vec4<f32>(x_686.x, x_686.x, x_686.x, x_686.x)) + vec4<f32>(x_689.x, x_689.y, x_689.x, x_689.y));
  let x_692 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_692, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_696 : vec4<f32> = u_xlat5;
  let x_698 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_696 * vec4<f32>(x_698, x_698, x_698, x_698));
  let x_704 : vec4<f32> = u_xlat5;
  let x_706 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_704.x, x_704.y));
  u_xlat6 = x_706;
  let x_707 : vec4<f32> = u_xlat6;
  let x_709 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_707 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_709);
  let x_711 : vec2<f32> = u_xlat21;
  let x_712 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_711.x, x_711.y, x_712.z, x_712.w);
  let x_714 : vec4<f32> = u_xlat1;
  let x_718 : vec2<f32> = clamp(vec2<f32>(x_714.x, x_714.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_719 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_718.x, x_718.y, x_719.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat1;
  let x_724 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_726 : vec2<f32> = (vec2<f32>(x_721.x, x_721.y) * vec2<f32>(x_724, x_724));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
  let x_732 : vec4<f32> = u_xlat1;
  let x_734 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_732.x, x_732.y));
  u_xlat6 = x_734;
  let x_735 : vec4<f32> = u_xlat6;
  let x_739 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_735 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_739);
  let x_744 : vec4<f32> = u_xlat5;
  let x_746 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_744.z, x_744.w));
  u_xlat5 = x_746;
  let x_747 : vec4<f32> = u_xlat5;
  let x_749 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_747 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_749);
  let x_751 : vec4<f32> = u_xlat0;
  let x_754 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_757 : vec2<f32> = u_xlat21;
  u_xlat5 = ((vec4<f32>(x_751.z, x_751.y, x_751.w, x_751.y) * vec4<f32>(x_754.x, x_754.x, x_754.x, x_754.x)) + vec4<f32>(x_757.x, x_757.y, x_757.x, x_757.y));
  let x_760 : vec4<f32> = u_xlat5;
  u_xlat5 = clamp(x_760, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_764 : vec4<f32> = u_xlat5;
  let x_766 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat5 = (x_764 * vec4<f32>(x_766, x_766, x_766, x_766));
  let x_772 : vec4<f32> = u_xlat5;
  let x_774 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_772.x, x_772.y));
  u_xlat6 = x_774;
  let x_775 : vec4<f32> = u_xlat4;
  let x_776 : vec4<f32> = u_xlat6;
  u_xlat4 = (x_775 + x_776);
  let x_781 : vec4<f32> = u_xlat5;
  let x_783 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_781.z, x_781.w));
  u_xlat5 = x_783;
  let x_784 : vec4<f32> = u_xlat5;
  let x_786 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_784 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_786);
  let x_788 : vec4<f32> = u_xlat0;
  let x_791 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_794 : vec2<f32> = u_xlat21;
  let x_795 : vec2<f32> = ((vec2<f32>(x_788.x, x_788.y) * vec2<f32>(x_791.x, x_791.x)) + x_794);
  let x_796 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_795.x, x_795.y, x_796.z, x_796.w);
  let x_798 : vec4<f32> = u_xlat0;
  let x_802 : vec2<f32> = clamp(vec2<f32>(x_798.x, x_798.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
  let x_805 : vec4<f32> = u_xlat0;
  let x_808 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_810 : vec2<f32> = (vec2<f32>(x_805.x, x_805.y) * vec2<f32>(x_808, x_808));
  let x_811 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_810.x, x_810.y, x_811.z, x_811.w);
  let x_816 : vec4<f32> = u_xlat0;
  let x_818 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_816.x, x_816.y));
  u_xlat0 = x_818;
  let x_819 : vec4<f32> = u_xlat0;
  let x_820 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_819 + x_820);
  let x_822 : vec4<f32> = u_xlat0;
  let x_824 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_822 * vec4<f32>(x_824.y, x_824.y, x_824.y, x_824.y));
  let x_827 : vec2<f32> = u_xlat21;
  let x_830 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_834 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_836 : vec2<f32> = ((x_827 * vec2<f32>(x_830.x, x_830.y)) + vec2<f32>(x_834.z, x_834.w));
  let x_837 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_836.x, x_836.y, x_837.z, x_837.w);
  let x_844 : vec4<f32> = u_xlat1;
  let x_846 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_844.x, x_844.y));
  let x_847 : vec3<f32> = vec3<f32>(x_846.x, x_846.y, x_846.z);
  let x_848 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_847.x, x_847.y, x_847.z, x_848.w);
  let x_850 : vec4<f32> = u_xlat0;
  let x_854 : vec3<f32> = (vec3<f32>(x_850.x, x_850.y, x_850.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_855 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_854.x, x_854.y, x_854.z, x_855.w);
  let x_857 : vec4<f32> = u_xlat1;
  let x_860 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_862 : vec3<f32> = (vec3<f32>(x_857.x, x_857.y, x_857.z) * vec3<f32>(x_860.z, x_860.z, x_860.z));
  let x_863 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
  let x_865 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_865 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_868 : vec4<f32> = u_xlat0;
  let x_872 : vec3<f32> = x_26.x_Bloom_Color;
  let x_873 : vec3<f32> = (vec3<f32>(x_868.x, x_868.y, x_868.z) * x_872);
  let x_874 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
  let x_877 : f32 = u_xlat0.w;
  u_xlat5.w = (x_877 * 0.0625f);
  let x_880 : vec4<f32> = u_xlat3;
  let x_881 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_880 + x_881);
  let x_883 : vec4<f32> = u_xlat4;
  let x_885 : vec4<f32> = u_xlat1;
  let x_887 : vec3<f32> = (vec3<f32>(x_883.x, x_883.y, x_883.z) * vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_887.x, x_887.y, x_887.z, x_888.w);
  u_xlat1.w = 0.0f;
  let x_891 : vec4<f32> = u_xlat0;
  let x_892 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_891 + x_892);
  let x_894 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_894, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_898 : vec4<f32> = u_xlat0;
  let x_902 : vec3<f32> = (vec3<f32>(x_898.z, x_898.x, x_898.y) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_903 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat0;
  let x_909 : vec3<f32> = max(vec3<f32>(x_905.z, x_905.x, x_905.y), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_910 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_909.x, x_909.y, x_909.z, x_910.w);
  let x_912 : vec4<f32> = u_xlat3;
  let x_914 : vec3<f32> = log2(vec3<f32>(x_912.x, x_912.y, x_912.z));
  let x_915 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_914.x, x_914.y, x_914.z, x_915.w);
  let x_917 : vec4<f32> = u_xlat3;
  let x_921 : vec3<f32> = (vec3<f32>(x_917.x, x_917.y, x_917.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_922 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_921.x, x_921.y, x_921.z, x_922.w);
  let x_924 : vec4<f32> = u_xlat3;
  let x_926 : vec3<f32> = exp2(vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_927 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_926.x, x_926.y, x_926.z, x_927.w);
  let x_929 : vec4<f32> = u_xlat3;
  let x_936 : vec3<f32> = ((vec3<f32>(x_929.x, x_929.y, x_929.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_937 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_936.x, x_936.y, x_936.z, x_937.w);
  let x_942 : vec4<f32> = u_xlat0;
  let x_945 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_942.z, x_942.x, x_942.y, x_942.z));
  u_xlatb4 = vec3<bool>(x_945.x, x_945.y, x_945.z);
  let x_949 : vec4<f32> = u_xlat1;
  hlslcc_movcTemp = x_949;
  let x_951 : bool = u_xlatb4.x;
  if (x_951) {
    let x_956 : f32 = u_xlat1.x;
    x_952 = x_956;
  } else {
    let x_959 : f32 = u_xlat3.x;
    x_952 = x_959;
  }
  let x_960 : f32 = x_952;
  hlslcc_movcTemp.x = x_960;
  let x_963 : bool = u_xlatb4.y;
  if (x_963) {
    let x_968 : f32 = u_xlat1.y;
    x_964 = x_968;
  } else {
    let x_971 : f32 = u_xlat3.y;
    x_964 = x_971;
  }
  let x_972 : f32 = x_964;
  hlslcc_movcTemp.y = x_972;
  let x_975 : bool = u_xlatb4.z;
  if (x_975) {
    let x_980 : f32 = u_xlat1.z;
    x_976 = x_980;
  } else {
    let x_983 : f32 = u_xlat3.z;
    x_976 = x_983;
  }
  let x_984 : f32 = x_976;
  hlslcc_movcTemp.z = x_984;
  let x_986 : vec4<f32> = hlslcc_movcTemp;
  u_xlat1 = x_986;
  let x_988 : vec4<f32> = u_xlat1;
  let x_992 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_992.z, x_992.z, x_992.z));
  let x_996 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_996);
  let x_1000 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1002 : vec2<f32> = (vec2<f32>(x_1000.x, x_1000.y) * vec2<f32>(0.5f, 0.5f));
  let x_1003 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1002.x, x_1002.y, x_1003.z);
  let x_1005 : vec3<f32> = u_xlat11;
  let x_1008 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1011 : vec3<f32> = u_xlat2;
  let x_1013 : vec2<f32> = ((vec2<f32>(x_1005.y, x_1005.z) * vec2<f32>(x_1008.x, x_1008.y)) + vec2<f32>(x_1011.x, x_1011.y));
  let x_1014 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1014.x, x_1013.x, x_1013.y, x_1014.w);
  let x_1017 : f32 = u_xlat11.x;
  let x_1019 : f32 = x_26.x_Lut2D_Params.y;
  let x_1022 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_1017 * x_1019) + x_1022);
  let x_1030 : vec4<f32> = u_xlat3;
  let x_1032 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1030.x, x_1030.z));
  let x_1033 : vec3<f32> = vec3<f32>(x_1032.x, x_1032.y, x_1032.z);
  let x_1034 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1033.x, x_1033.y, x_1033.z, x_1034.w);
  let x_1037 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1037;
  let x_1039 : vec2<f32> = u_xlat22;
  let x_1040 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_1039 + vec2<f32>(x_1040.x, x_1040.z));
  let x_1046 : vec2<f32> = u_xlat21;
  let x_1047 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1046);
  u_xlat2 = vec3<f32>(x_1047.x, x_1047.y, x_1047.z);
  let x_1050 : f32 = u_xlat1.x;
  let x_1052 : f32 = x_26.x_Lut2D_Params.z;
  let x_1055 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1050 * x_1052) + -(x_1055));
  let x_1059 : vec4<f32> = u_xlat4;
  let x_1062 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1059.x, x_1059.y, x_1059.z)) + x_1062);
  let x_1064 : vec4<f32> = u_xlat1;
  let x_1066 : vec3<f32> = u_xlat11;
  let x_1068 : vec4<f32> = u_xlat4;
  let x_1070 : vec3<f32> = ((vec3<f32>(x_1064.x, x_1064.x, x_1064.x) * x_1066) + vec3<f32>(x_1068.x, x_1068.y, x_1068.z));
  let x_1071 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1071.w);
  let x_1073 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_1073.x, x_1073.y, x_1073.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1078 : vec4<f32> = u_xlat1;
  let x_1082 : vec3<f32> = (vec3<f32>(x_1078.x, x_1078.y, x_1078.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1083 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
  let x_1085 : vec4<f32> = u_xlat3;
  let x_1089 : vec3<f32> = (vec3<f32>(x_1085.x, x_1085.y, x_1085.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1090 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
  let x_1092 : vec4<f32> = u_xlat3;
  let x_1095 : vec3<f32> = max(abs(vec3<f32>(x_1092.x, x_1092.y, x_1092.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1096 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1095.x, x_1095.y, x_1095.z, x_1096.w);
  let x_1098 : vec4<f32> = u_xlat3;
  let x_1100 : vec3<f32> = log2(vec3<f32>(x_1098.x, x_1098.y, x_1098.z));
  let x_1101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1100.x, x_1100.y, x_1100.z, x_1101.w);
  let x_1103 : vec4<f32> = u_xlat3;
  let x_1107 : vec3<f32> = (vec3<f32>(x_1103.x, x_1103.y, x_1103.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1107.x, x_1107.y, x_1107.z, x_1108.w);
  let x_1110 : vec4<f32> = u_xlat3;
  let x_1112 : vec3<f32> = exp2(vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1117 : vec4<f32> = u_xlat1;
  let x_1119 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1117.x, x_1117.y, x_1117.z, x_1117.x));
  u_xlatb1 = vec3<bool>(x_1119.x, x_1119.y, x_1119.z);
  let x_1122 : bool = u_xlatb1.x;
  if (x_1122) {
    let x_1127 : f32 = u_xlat2.x;
    x_1123 = x_1127;
  } else {
    let x_1130 : f32 = u_xlat3.x;
    x_1123 = x_1130;
  }
  let x_1131 : f32 = x_1123;
  u_xlat0.x = x_1131;
  let x_1134 : bool = u_xlatb1.y;
  if (x_1134) {
    let x_1139 : f32 = u_xlat2.y;
    x_1135 = x_1139;
  } else {
    let x_1142 : f32 = u_xlat3.y;
    x_1135 = x_1142;
  }
  let x_1143 : f32 = x_1135;
  u_xlat0.y = x_1143;
  let x_1146 : bool = u_xlatb1.z;
  if (x_1146) {
    let x_1151 : f32 = u_xlat2.z;
    x_1147 = x_1151;
  } else {
    let x_1154 : f32 = u_xlat3.z;
    x_1147 = x_1154;
  }
  let x_1155 : f32 = x_1147;
  u_xlat0.z = x_1155;
  let x_1159 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1.x = (0.5f < x_1159);
  let x_1163 : bool = u_xlatb1.x;
  if (x_1163) {
    let x_1166 : vec4<f32> = u_xlat0;
    let x_1167 : vec3<f32> = vec3<f32>(x_1166.x, x_1166.y, x_1166.z);
    let x_1168 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1168.w);
    let x_1170 : vec4<f32> = u_xlat1;
    let x_1174 : vec3<f32> = clamp(vec3<f32>(x_1170.x, x_1170.y, x_1170.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1175 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
    let x_1177 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_1177.x, x_1177.y, x_1177.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1187 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1187;
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

