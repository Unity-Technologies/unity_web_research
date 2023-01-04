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

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

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

var<private> u_xlat11 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(15) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(8) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(16) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_1060 : f32;
  var x_1286 : f32;
  var x_1298 : f32;
  var x_1310 : f32;
  var x_1375 : f32;
  var x_1387 : f32;
  var x_1399 : f32;
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
      let x_234 : f32 = u_xlat12;
      x_231 = -(x_234);
    } else {
      let x_237 : f32 = u_xlat12;
      x_231 = x_237;
    }
    let x_238 : f32 = x_231;
    u_xlat1.x = x_238;
    let x_241 : f32 = u_xlat2.x;
    let x_243 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_241 * x_243) + -1.0f);
    let x_247 : vec4<f32> = u_xlat0;
    let x_249 : vec3<f32> = u_xlat1;
    let x_252 : vec2<f32> = u_xlat20;
    u_xlat21 = ((vec2<f32>(x_247.x, x_247.y) * vec2<f32>(x_249.x, x_249.x)) + x_252);
  }
  let x_264 : vec2<f32> = vs_TEXCOORD0;
  let x_265 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_264);
  u_xlat0.x = x_265.x;
  let x_269 : vec2<f32> = vs_TEXCOORD0;
  u_xlat10 = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_276 : vec2<f32> = u_xlat10;
  let x_277 : vec2<f32> = u_xlat10;
  u_xlat30 = dot(x_276, x_277);
  let x_279 : f32 = u_xlat30;
  let x_281 : vec2<f32> = u_xlat10;
  u_xlat10 = (vec2<f32>(x_279, x_279) * x_281);
  let x_283 : vec2<f32> = u_xlat10;
  let x_286 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_288 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_289 : vec2<f32> = vec2<f32>(x_286, x_288);
  u_xlat10 = (x_283 * vec2<f32>(x_289.x, x_289.y));
  let x_294 : vec2<f32> = u_xlat10;
  let x_298 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_300 : vec2<f32> = (-(x_294) * vec2<f32>(x_298.z, x_298.w));
  let x_301 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_300.x, x_300.y, x_301.z, x_301.w);
  let x_303 : vec4<f32> = u_xlat2;
  let x_305 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
  let x_306 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_308 : vec4<f32> = u_xlat2;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_308.x, x_308.y), vec2<f32>(x_310.x, x_310.y));
  let x_313 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_313);
  let x_317 : f32 = u_xlat30;
  u_xlati30 = i32(x_317);
  let x_319 : i32 = u_xlati30;
  u_xlati30 = max(x_319, 3i);
  let x_321 : i32 = u_xlati30;
  u_xlati30 = min(x_321, 16i);
  let x_324 : i32 = u_xlati30;
  u_xlat1.x = f32(x_324);
  let x_327 : vec2<f32> = u_xlat10;
  let x_329 : vec3<f32> = u_xlat1;
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
    let x_538 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_535 * vec2<f32>(x_538, x_538));
    let x_546 : vec2<f32> = u_xlat16;
    let x_547 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_546, 0.0f);
    u_xlat7 = x_547;
    let x_553 : vec4<f32> = u_xlat2;
    let x_555 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_553.x, x_553.y), 0.0f);
    let x_556 : vec3<f32> = vec3<f32>(x_555.x, x_555.y, x_555.z);
    let x_557 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_560 : vec4<f32> = u_xlat3;
    let x_562 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_559 * x_560) + x_562);
    let x_564 : vec4<f32> = u_xlat3;
    let x_565 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_564 + x_565);
    let x_567 : vec2<f32> = u_xlat10;
    let x_568 : vec2<f32> = u_xlat22;
    u_xlat22 = (x_567 + x_568);

    continuing {
      let x_570 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_570 + 1i);
    }
  }
  let x_572 : vec4<f32> = u_xlat4;
  let x_573 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_572 / x_573);
  let x_575 : vec4<f32> = u_xlat0;
  let x_577 : vec4<f32> = u_xlat2;
  let x_579 : vec3<f32> = (vec3<f32>(x_575.x, x_575.x, x_575.x) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_584 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y) * vec4<f32>(1.0f, 1.0f, -1.0f, 0.0f));
  let x_588 : vec4<f32> = u_xlat0;
  let x_594 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_597 : vec2<f32> = u_xlat21;
  u_xlat3 = ((-(vec4<f32>(x_588.x, x_588.y, x_588.w, x_588.y)) * vec4<f32>(x_594.x, x_594.x, x_594.x, x_594.x)) + vec4<f32>(x_597.x, x_597.y, x_597.x, x_597.y));
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
  let x_626 : vec4<f32> = u_xlat4;
  u_xlat3 = ((x_623 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_626);
  let x_628 : vec4<f32> = u_xlat0;
  let x_632 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_635 : vec2<f32> = u_xlat21;
  let x_636 : vec2<f32> = ((-(vec2<f32>(x_628.z, x_628.y)) * vec2<f32>(x_632.x, x_632.x)) + x_635);
  let x_637 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_636.x, x_636.y, x_637.z);
  let x_639 : vec3<f32> = u_xlat1;
  let x_643 : vec2<f32> = clamp(vec2<f32>(x_639.x, x_639.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_644 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_643.x, x_643.y, x_644.z);
  let x_646 : vec3<f32> = u_xlat1;
  let x_649 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_651 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) * vec2<f32>(x_649, x_649));
  let x_652 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_651.x, x_651.y, x_652.z);
  let x_657 : vec3<f32> = u_xlat1;
  let x_659 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_657.x, x_657.y));
  u_xlat4 = x_659;
  let x_660 : vec4<f32> = u_xlat3;
  let x_661 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_660 + x_661);
  let x_663 : vec4<f32> = u_xlat0;
  let x_666 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_669 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_663.z, x_663.w, x_663.x, x_663.w) * vec4<f32>(x_666.x, x_666.x, x_666.x, x_666.x)) + vec4<f32>(x_669.x, x_669.y, x_669.x, x_669.y));
  let x_672 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_672, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_676 : vec4<f32> = u_xlat4;
  let x_678 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_676 * vec4<f32>(x_678, x_678, x_678, x_678));
  let x_684 : vec4<f32> = u_xlat4;
  let x_686 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_684.x, x_684.y));
  u_xlat5 = x_686;
  let x_687 : vec4<f32> = u_xlat5;
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_687 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_689);
  let x_691 : vec2<f32> = u_xlat21;
  let x_692 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_691.x, x_691.y, x_692.z);
  let x_694 : vec3<f32> = u_xlat1;
  let x_698 : vec2<f32> = clamp(vec2<f32>(x_694.x, x_694.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_699 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_698.x, x_698.y, x_699.z);
  let x_701 : vec3<f32> = u_xlat1;
  let x_704 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_706 : vec2<f32> = (vec2<f32>(x_701.x, x_701.y) * vec2<f32>(x_704, x_704));
  let x_707 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_706.x, x_706.y, x_707.z);
  let x_712 : vec3<f32> = u_xlat1;
  let x_714 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_712.x, x_712.y));
  u_xlat5 = x_714;
  let x_715 : vec4<f32> = u_xlat5;
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_715 * vec4<f32>(4.0f, 4.0f, 4.0f, 4.0f)) + x_719);
  let x_724 : vec4<f32> = u_xlat4;
  let x_726 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_724.z, x_724.w));
  u_xlat4 = x_726;
  let x_727 : vec4<f32> = u_xlat4;
  let x_729 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_727 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_729);
  let x_731 : vec4<f32> = u_xlat0;
  let x_734 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_737 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_731.z, x_731.y, x_731.w, x_731.y) * vec4<f32>(x_734.x, x_734.x, x_734.x, x_734.x)) + vec4<f32>(x_737.x, x_737.y, x_737.x, x_737.y));
  let x_740 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_740, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_744 : vec4<f32> = u_xlat4;
  let x_746 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_744 * vec4<f32>(x_746, x_746, x_746, x_746));
  let x_752 : vec4<f32> = u_xlat4;
  let x_754 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_752.x, x_752.y));
  u_xlat5 = x_754;
  let x_755 : vec4<f32> = u_xlat3;
  let x_756 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_755 + x_756);
  let x_761 : vec4<f32> = u_xlat4;
  let x_763 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_761.z, x_761.w));
  u_xlat4 = x_763;
  let x_764 : vec4<f32> = u_xlat4;
  let x_766 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_764 * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + x_766);
  let x_768 : vec4<f32> = u_xlat0;
  let x_771 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_774 : vec2<f32> = u_xlat21;
  let x_775 : vec2<f32> = ((vec2<f32>(x_768.x, x_768.y) * vec2<f32>(x_771.x, x_771.x)) + x_774);
  let x_776 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_775.x, x_775.y, x_776.z, x_776.w);
  let x_778 : vec4<f32> = u_xlat0;
  let x_782 : vec2<f32> = clamp(vec2<f32>(x_778.x, x_778.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_783 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_782.x, x_782.y, x_783.z, x_783.w);
  let x_785 : vec4<f32> = u_xlat0;
  let x_788 : f32 = x_26.x_RenderViewportScaleFactor;
  let x_790 : vec2<f32> = (vec2<f32>(x_785.x, x_785.y) * vec2<f32>(x_788, x_788));
  let x_791 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_796.x, x_796.y));
  u_xlat0 = x_798;
  let x_799 : vec4<f32> = u_xlat0;
  let x_800 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_799 + x_800);
  let x_802 : vec4<f32> = u_xlat0;
  let x_804 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_802 * vec4<f32>(x_804.y, x_804.y, x_804.y, x_804.y));
  let x_807 : vec2<f32> = u_xlat21;
  let x_810 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_814 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_816 : vec2<f32> = ((x_807 * vec2<f32>(x_810.x, x_810.y)) + vec2<f32>(x_814.z, x_814.w));
  let x_817 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_816.x, x_816.y, x_817.z);
  let x_824 : vec3<f32> = u_xlat1;
  let x_826 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_824.x, x_824.y));
  let x_827 : vec3<f32> = vec3<f32>(x_826.x, x_826.y, x_826.z);
  let x_828 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_827.x, x_827.y, x_827.z, x_828.w);
  let x_830 : vec4<f32> = u_xlat0;
  u_xlat4 = (x_830 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 0.0625f));
  let x_834 : vec4<f32> = u_xlat3;
  let x_837 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_839 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) * vec3<f32>(x_837.z, x_837.z, x_837.z));
  let x_840 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  u_xlat3.w = 0.0f;
  let x_843 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_843 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = x_26.x_Bloom_Color;
  let x_851 : vec3<f32> = (vec3<f32>(x_846.x, x_846.y, x_846.z) * x_850);
  let x_852 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_855 : f32 = u_xlat0.w;
  u_xlat5.w = (x_855 * 0.0625f);
  let x_858 : vec4<f32> = u_xlat2;
  let x_859 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_858 + x_859);
  let x_861 : vec4<f32> = u_xlat3;
  let x_862 : vec4<f32> = u_xlat4;
  let x_864 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_861 * x_862) + x_864);
  let x_868 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_868 < 0.5f);
  let x_870 : bool = u_xlatb1;
  if (x_870) {
    let x_873 : vec2<f32> = u_xlat21;
    let x_877 : vec2<f32> = x_26.x_Vignette_Center;
    let x_879 : vec2<f32> = (x_873 + -(x_877));
    let x_880 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_879.x, x_879.y, x_880.z);
    let x_882 : vec3<f32> = u_xlat1;
    let x_887 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_889 : vec2<f32> = (abs(vec2<f32>(x_882.y, x_882.x)) * vec2<f32>(x_887.x, x_887.x));
    let x_890 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_890.x, x_889.x, x_889.y, x_890.w);
    let x_893 : f32 = x_26.x_ScreenParams.x;
    let x_895 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_893 / x_895);
    let x_899 : f32 = u_xlat1.x;
    u_xlat1.x = (x_899 + -1.0f);
    let x_903 : f32 = x_26.x_Vignette_Settings.w;
    let x_905 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_903 * x_905) + 1.0f);
    let x_910 : f32 = u_xlat1.x;
    let x_912 : f32 = u_xlat2.z;
    u_xlat2.x = (x_910 * x_912);
    let x_915 : vec4<f32> = u_xlat2;
    let x_916 : vec2<f32> = vec2<f32>(x_915.x, x_915.y);
    let x_917 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
    let x_919 : vec4<f32> = u_xlat2;
    let x_923 : vec2<f32> = clamp(vec2<f32>(x_919.x, x_919.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_924 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_923.x, x_923.y, x_924.z, x_924.w);
    let x_926 : vec4<f32> = u_xlat2;
    let x_928 : vec2<f32> = log2(vec2<f32>(x_926.x, x_926.y));
    let x_929 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_928.x, x_928.y, x_929.z);
    let x_931 : vec3<f32> = u_xlat1;
    let x_934 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_936 : vec2<f32> = (vec2<f32>(x_931.x, x_931.y) * vec2<f32>(x_934.z, x_934.z));
    let x_937 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_936.x, x_936.y, x_937.z);
    let x_939 : vec3<f32> = u_xlat1;
    let x_941 : vec2<f32> = exp2(vec2<f32>(x_939.x, x_939.y));
    let x_942 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_941.x, x_941.y, x_942.z);
    let x_944 : vec3<f32> = u_xlat1;
    let x_946 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_944.x, x_944.y), vec2<f32>(x_946.x, x_946.y));
    let x_951 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_951) + 1.0f);
    let x_956 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_956, 0.0f);
    let x_960 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_960);
    let x_964 : f32 = u_xlat1.x;
    let x_966 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_964 * x_966);
    let x_970 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_970);
    let x_975 : vec3<f32> = x_26.x_Vignette_Color;
    let x_978 : vec3<f32> = (-(x_975) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_979 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_981 : vec3<f32> = u_xlat1;
    let x_983 : vec4<f32> = u_xlat2;
    let x_987 : vec3<f32> = x_26.x_Vignette_Color;
    let x_988 : vec3<f32> = ((vec3<f32>(x_981.x, x_981.x, x_981.x) * vec3<f32>(x_983.x, x_983.y, x_983.z)) + x_987);
    let x_989 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_988.x, x_988.y, x_988.z, x_989.w);
    let x_991 : vec4<f32> = u_xlat0;
    let x_993 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = (vec3<f32>(x_991.x, x_991.y, x_991.z) * vec3<f32>(x_993.x, x_993.y, x_993.z));
    let x_996 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_995.x, x_995.y, x_995.z, x_996.w);
    let x_1000 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1000 + -1.0f);
    let x_1006 : f32 = u_xlat1.x;
    let x_1008 : f32 = u_xlat11.x;
    SV_Target0.w = ((x_1006 * x_1008) + 1.0f);
  } else {
    let x_1019 : vec2<f32> = u_xlat21;
    let x_1020 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1019);
    u_xlat1.x = x_1020.w;
    let x_1024 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1024 + 0.055f);
    let x_1028 : vec3<f32> = u_xlat1;
    let x_1033 : vec2<f32> = (vec2<f32>(x_1028.x, x_1028.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1034 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1033.x, x_1033.y, x_1034.z);
    let x_1037 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1037), 1.1920929e-07f);
    let x_1043 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1043);
    let x_1047 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1047 * 2.400000095f);
    let x_1052 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1052);
    let x_1057 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1057);
    let x_1059 : bool = u_xlatb1;
    if (x_1059) {
      let x_1064 : f32 = u_xlat11.x;
      x_1060 = x_1064;
    } else {
      let x_1067 : f32 = u_xlat21.x;
      x_1060 = x_1067;
    }
    let x_1068 : f32 = x_1060;
    u_xlat1.x = x_1068;
    let x_1071 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1071) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1074 : vec3<f32> = u_xlat1;
    let x_1076 : vec3<f32> = u_xlat11;
    let x_1079 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1074.x, x_1074.x, x_1074.x) * x_1076) + x_1079);
    let x_1081 : vec4<f32> = u_xlat0;
    let x_1083 : vec3<f32> = u_xlat11;
    let x_1085 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1081.x, x_1081.y, x_1081.z) * x_1083) + -(vec3<f32>(x_1085.x, x_1085.y, x_1085.z)));
    let x_1091 : f32 = x_26.x_Vignette_Opacity;
    let x_1093 : vec3<f32> = u_xlat11;
    let x_1095 : vec4<f32> = u_xlat0;
    let x_1097 : vec3<f32> = ((vec3<f32>(x_1091, x_1091, x_1091) * x_1093) + vec3<f32>(x_1095.x, x_1095.y, x_1095.z));
    let x_1098 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1097.x, x_1097.y, x_1097.z, x_1098.w);
    let x_1101 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1101 + -1.0f);
    let x_1105 : f32 = u_xlat1.x;
    let x_1107 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_1105 * x_1107) + 1.0f);
  }
  let x_1112 : vec2<f32> = vs_TEXCOORD1;
  let x_1115 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1119 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1121 : vec2<f32> = ((x_1112 * vec2<f32>(x_1115.x, x_1115.y)) + vec2<f32>(x_1119.z, x_1119.w));
  let x_1122 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1121.x, x_1121.y, x_1122.z, x_1122.w);
  let x_1129 : vec4<f32> = u_xlat0;
  let x_1131 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1129.x, x_1129.y));
  let x_1132 : vec3<f32> = vec3<f32>(x_1131.x, x_1131.y, x_1131.z);
  let x_1133 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1132.x, x_1132.y, x_1132.z, x_1133.w);
  let x_1135 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1135.x, x_1135.y, x_1135.z);
  let x_1137 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1137, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1141 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1141, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1147 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1147);
  let x_1150 : f32 = x_26.x_Grain_Params1.x;
  let x_1151 : f32 = u_xlat30;
  u_xlat30 = ((x_1150 * -(x_1151)) + 1.0f);
  let x_1155 : vec4<f32> = u_xlat0;
  let x_1157 : vec4<f32> = u_xlat2;
  let x_1159 : vec3<f32> = (vec3<f32>(x_1155.x, x_1155.y, x_1155.z) * vec3<f32>(x_1157.x, x_1157.y, x_1157.z));
  let x_1160 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1159.x, x_1159.y, x_1159.z, x_1160.w);
  let x_1162 : vec4<f32> = u_xlat0;
  let x_1165 : f32 = x_26.x_Grain_Params1.y;
  let x_1167 : f32 = x_26.x_Grain_Params1.y;
  let x_1169 : f32 = x_26.x_Grain_Params1.y;
  let x_1171 : vec3<f32> = (vec3<f32>(x_1162.x, x_1162.y, x_1162.z) * vec3<f32>(x_1165, x_1167, x_1169));
  let x_1172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1172.w);
  let x_1174 : vec4<f32> = u_xlat0;
  let x_1176 : f32 = u_xlat30;
  let x_1179 : vec4<f32> = u_xlat2;
  let x_1181 : vec3<f32> = ((vec3<f32>(x_1174.x, x_1174.y, x_1174.z) * vec3<f32>(x_1176, x_1176, x_1176)) + vec3<f32>(x_1179.x, x_1179.y, x_1179.z));
  let x_1182 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1182.w);
  let x_1184 : vec2<f32> = vs_TEXCOORD0;
  let x_1187 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1191 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1193 : vec2<f32> = ((x_1184 * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1191.z, x_1191.w));
  let x_1194 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_1193.x, x_1193.y, x_1194.z);
  let x_1201 : vec3<f32> = u_xlat1;
  let x_1203 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1201.x, x_1201.y));
  u_xlat30 = x_1203.w;
  let x_1205 : f32 = u_xlat30;
  u_xlat30 = ((x_1205 * 2.0f) + -1.0f);
  let x_1208 : f32 = u_xlat30;
  u_xlat1.x = ((x_1208 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1214 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1214, 0.0f, 1.0f);
  let x_1218 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1218 * 2.0f) + -1.0f);
  let x_1222 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_1222)) + 1.0f);
  let x_1226 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1226);
  let x_1228 : f32 = u_xlat30;
  u_xlat30 = (-(x_1228) + 1.0f);
  let x_1231 : f32 = u_xlat30;
  let x_1233 : f32 = u_xlat1.x;
  u_xlat30 = (x_1231 * x_1233);
  let x_1235 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1240 : vec4<f32> = u_xlat0;
  let x_1244 : vec3<f32> = max(abs(vec3<f32>(x_1240.x, x_1240.y, x_1240.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1245 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1244.x, x_1244.y, x_1244.z, x_1245.w);
  let x_1247 : vec4<f32> = u_xlat2;
  let x_1249 : vec3<f32> = log2(vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec4<f32> = u_xlat2;
  let x_1256 : vec3<f32> = (vec3<f32>(x_1252.x, x_1252.y, x_1252.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1257 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1256.x, x_1256.y, x_1256.z, x_1257.w);
  let x_1259 : vec4<f32> = u_xlat2;
  let x_1261 : vec3<f32> = exp2(vec3<f32>(x_1259.x, x_1259.y, x_1259.z));
  let x_1262 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1261.x, x_1261.y, x_1261.z, x_1262.w);
  let x_1264 : vec4<f32> = u_xlat2;
  let x_1271 : vec3<f32> = ((vec3<f32>(x_1264.x, x_1264.y, x_1264.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1272 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1271.x, x_1271.y, x_1271.z, x_1272.w);
  let x_1279 : vec4<f32> = u_xlat0;
  let x_1282 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1279.x, x_1279.y, x_1279.z, x_1279.x));
  u_xlatb0 = vec3<bool>(x_1282.x, x_1282.y, x_1282.z);
  let x_1285 : bool = u_xlatb0.x;
  if (x_1285) {
    let x_1290 : f32 = u_xlat1.x;
    x_1286 = x_1290;
  } else {
    let x_1293 : f32 = u_xlat2.x;
    x_1286 = x_1293;
  }
  let x_1294 : f32 = x_1286;
  u_xlat0.x = x_1294;
  let x_1297 : bool = u_xlatb0.y;
  if (x_1297) {
    let x_1302 : f32 = u_xlat1.y;
    x_1298 = x_1302;
  } else {
    let x_1305 : f32 = u_xlat2.y;
    x_1298 = x_1305;
  }
  let x_1306 : f32 = x_1298;
  u_xlat0.y = x_1306;
  let x_1309 : bool = u_xlatb0.z;
  if (x_1309) {
    let x_1314 : f32 = u_xlat1.z;
    x_1310 = x_1314;
  } else {
    let x_1317 : f32 = u_xlat2.z;
    x_1310 = x_1317;
  }
  let x_1318 : f32 = x_1310;
  u_xlat0.z = x_1318;
  let x_1320 : f32 = u_xlat30;
  let x_1325 : vec4<f32> = u_xlat0;
  let x_1327 : vec3<f32> = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1327.x, x_1327.y, x_1327.z, x_1328.w);
  let x_1330 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1330.x, x_1330.y, x_1330.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1334 : vec4<f32> = u_xlat0;
  let x_1337 : vec3<f32> = (vec3<f32>(x_1334.x, x_1334.y, x_1334.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1338.w);
  let x_1340 : vec4<f32> = u_xlat2;
  let x_1343 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1343.x, x_1343.y, x_1343.z, x_1344.w);
  let x_1346 : vec4<f32> = u_xlat2;
  let x_1349 : vec3<f32> = max(abs(vec3<f32>(x_1346.x, x_1346.y, x_1346.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1349.x, x_1349.y, x_1349.z, x_1350.w);
  let x_1352 : vec4<f32> = u_xlat2;
  let x_1354 : vec3<f32> = log2(vec3<f32>(x_1352.x, x_1352.y, x_1352.z));
  let x_1355 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1354.x, x_1354.y, x_1354.z, x_1355.w);
  let x_1357 : vec4<f32> = u_xlat2;
  let x_1360 : vec3<f32> = (vec3<f32>(x_1357.x, x_1357.y, x_1357.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1361 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  let x_1363 : vec4<f32> = u_xlat2;
  let x_1365 : vec3<f32> = exp2(vec3<f32>(x_1363.x, x_1363.y, x_1363.z));
  let x_1366 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1365.x, x_1365.y, x_1365.z, x_1366.w);
  let x_1369 : vec4<f32> = u_xlat0;
  let x_1371 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.x));
  u_xlatb0 = vec3<bool>(x_1371.x, x_1371.y, x_1371.z);
  let x_1374 : bool = u_xlatb0.x;
  if (x_1374) {
    let x_1379 : f32 = u_xlat1.x;
    x_1375 = x_1379;
  } else {
    let x_1382 : f32 = u_xlat2.x;
    x_1375 = x_1382;
  }
  let x_1383 : f32 = x_1375;
  SV_Target0.x = x_1383;
  let x_1386 : bool = u_xlatb0.y;
  if (x_1386) {
    let x_1391 : f32 = u_xlat1.y;
    x_1387 = x_1391;
  } else {
    let x_1394 : f32 = u_xlat2.y;
    x_1387 = x_1394;
  }
  let x_1395 : f32 = x_1387;
  SV_Target0.y = x_1395;
  let x_1398 : bool = u_xlatb0.z;
  if (x_1398) {
    let x_1403 : f32 = u_xlat1.z;
    x_1399 = x_1403;
  } else {
    let x_1406 : f32 = u_xlat2.z;
    x_1399 = x_1406;
  }
  let x_1407 : f32 = x_1399;
  SV_Target0.z = x_1407;
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

