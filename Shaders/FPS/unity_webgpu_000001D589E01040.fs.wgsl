struct PGlobals {
  x_ScreenParams : vec4<f32>,
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
  x_LumaInAlpha : f32,
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

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_1065 : f32;
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
  let x_834 : vec3<f32> = (vec3<f32>(x_830.x, x_830.y, x_830.z) * vec3<f32>(0.0625f, 0.0625f, 0.0625f));
  let x_835 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_834.x, x_834.y, x_834.z, x_835.w);
  let x_837 : vec4<f32> = u_xlat3;
  let x_840 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_842 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_840.z, x_840.z, x_840.z));
  let x_843 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_842.x, x_842.y, x_842.z, x_843.w);
  let x_845 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_845 * vec4<f32>(0.0625f, 0.0625f, 0.0625f, 1.0f));
  let x_848 : vec4<f32> = u_xlat0;
  let x_852 : vec3<f32> = x_26.x_Bloom_Color;
  let x_853 : vec3<f32> = (vec3<f32>(x_848.x, x_848.y, x_848.z) * x_852);
  let x_854 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_857 : f32 = u_xlat0.w;
  u_xlat5.w = (x_857 * 0.0625f);
  let x_860 : vec4<f32> = u_xlat2;
  let x_861 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_860 + x_861);
  let x_863 : vec4<f32> = u_xlat4;
  let x_865 : vec4<f32> = u_xlat3;
  let x_867 : vec3<f32> = (vec3<f32>(x_863.x, x_863.y, x_863.z) * vec3<f32>(x_865.x, x_865.y, x_865.z));
  let x_868 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
  u_xlat2.w = 0.0f;
  let x_871 : vec4<f32> = u_xlat0;
  let x_872 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_871 + x_872);
  let x_876 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_876 < 0.5f);
  let x_878 : bool = u_xlatb1;
  if (x_878) {
    let x_881 : vec2<f32> = u_xlat21;
    let x_885 : vec2<f32> = x_26.x_Vignette_Center;
    let x_887 : vec2<f32> = (x_881 + -(x_885));
    let x_888 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_887.x, x_887.y, x_888.z);
    let x_890 : vec3<f32> = u_xlat1;
    let x_895 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_897 : vec2<f32> = (abs(vec2<f32>(x_890.y, x_890.x)) * vec2<f32>(x_895.x, x_895.x));
    let x_898 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_898.x, x_897.x, x_897.y, x_898.w);
    let x_901 : f32 = x_26.x_ScreenParams.x;
    let x_903 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_901 / x_903);
    let x_907 : f32 = u_xlat1.x;
    u_xlat1.x = (x_907 + -1.0f);
    let x_911 : f32 = x_26.x_Vignette_Settings.w;
    let x_913 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_911 * x_913) + 1.0f);
    let x_918 : f32 = u_xlat1.x;
    let x_920 : f32 = u_xlat2.z;
    u_xlat2.x = (x_918 * x_920);
    let x_923 : vec4<f32> = u_xlat2;
    let x_924 : vec2<f32> = vec2<f32>(x_923.x, x_923.y);
    let x_925 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_924.x, x_924.y, x_925.z, x_925.w);
    let x_927 : vec4<f32> = u_xlat2;
    let x_931 : vec2<f32> = clamp(vec2<f32>(x_927.x, x_927.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_932 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_931.x, x_931.y, x_932.z, x_932.w);
    let x_934 : vec4<f32> = u_xlat2;
    let x_936 : vec2<f32> = log2(vec2<f32>(x_934.x, x_934.y));
    let x_937 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_936.x, x_936.y, x_937.z);
    let x_939 : vec3<f32> = u_xlat1;
    let x_942 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_944 : vec2<f32> = (vec2<f32>(x_939.x, x_939.y) * vec2<f32>(x_942.z, x_942.z));
    let x_945 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_944.x, x_944.y, x_945.z);
    let x_947 : vec3<f32> = u_xlat1;
    let x_949 : vec2<f32> = exp2(vec2<f32>(x_947.x, x_947.y));
    let x_950 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_949.x, x_949.y, x_950.z);
    let x_952 : vec3<f32> = u_xlat1;
    let x_954 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_952.x, x_952.y), vec2<f32>(x_954.x, x_954.y));
    let x_959 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_959) + 1.0f);
    let x_964 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_964, 0.0f);
    let x_968 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_968);
    let x_972 : f32 = u_xlat1.x;
    let x_974 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_972 * x_974);
    let x_978 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_978);
    let x_983 : vec3<f32> = x_26.x_Vignette_Color;
    let x_986 : vec3<f32> = (-(x_983) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_987 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
    let x_989 : vec3<f32> = u_xlat1;
    let x_991 : vec4<f32> = u_xlat2;
    let x_995 : vec3<f32> = x_26.x_Vignette_Color;
    let x_996 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.x, x_989.x) * vec3<f32>(x_991.x, x_991.y, x_991.z)) + x_995);
    let x_997 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
    let x_999 : vec4<f32> = u_xlat0;
    let x_1001 : vec4<f32> = u_xlat2;
    let x_1003 : vec3<f32> = (vec3<f32>(x_999.x, x_999.y, x_999.z) * vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
    let x_1004 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
    let x_1008 : f32 = u_xlat0.w;
    u_xlat11.x = (x_1008 + -1.0f);
    let x_1012 : f32 = u_xlat1.x;
    let x_1014 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_1012 * x_1014) + 1.0f);
  } else {
    let x_1024 : vec2<f32> = u_xlat21;
    let x_1025 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_1024);
    u_xlat1.x = x_1025.w;
    let x_1029 : f32 = u_xlat1.x;
    u_xlat1.z = (x_1029 + 0.055f);
    let x_1033 : vec3<f32> = u_xlat1;
    let x_1038 : vec2<f32> = (vec2<f32>(x_1033.x, x_1033.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_1039 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_1038.x, x_1038.y, x_1039.z);
    let x_1042 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_1042), 1.1920929e-07f);
    let x_1048 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_1048);
    let x_1052 : f32 = u_xlat21.x;
    u_xlat21.x = (x_1052 * 2.400000095f);
    let x_1057 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_1057);
    let x_1062 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_1062);
    let x_1064 : bool = u_xlatb1;
    if (x_1064) {
      let x_1069 : f32 = u_xlat11.x;
      x_1065 = x_1069;
    } else {
      let x_1072 : f32 = u_xlat21.x;
      x_1065 = x_1072;
    }
    let x_1073 : f32 = x_1065;
    u_xlat1.x = x_1073;
    let x_1076 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_1076) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1079 : vec3<f32> = u_xlat1;
    let x_1081 : vec3<f32> = u_xlat11;
    let x_1084 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_1079.x, x_1079.x, x_1079.x) * x_1081) + x_1084);
    let x_1086 : vec4<f32> = u_xlat0;
    let x_1088 : vec3<f32> = u_xlat11;
    let x_1090 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1086.x, x_1086.y, x_1086.z) * x_1088) + -(vec3<f32>(x_1090.x, x_1090.y, x_1090.z)));
    let x_1096 : f32 = x_26.x_Vignette_Opacity;
    let x_1098 : vec3<f32> = u_xlat11;
    let x_1100 : vec4<f32> = u_xlat0;
    let x_1102 : vec3<f32> = ((vec3<f32>(x_1096, x_1096, x_1096) * x_1098) + vec3<f32>(x_1100.x, x_1100.y, x_1100.z));
    let x_1103 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_1102.x, x_1102.y, x_1102.z, x_1103.w);
    let x_1106 : f32 = u_xlat0.w;
    u_xlat0.x = (x_1106 + -1.0f);
    let x_1110 : f32 = u_xlat1.x;
    let x_1112 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_1110 * x_1112) + 1.0f);
  }
  let x_1117 : vec2<f32> = vs_TEXCOORD1;
  let x_1119 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1123 : vec4<f32> = x_26.x_Grain_Params2;
  let x_1125 : vec2<f32> = ((x_1117 * vec2<f32>(x_1119.x, x_1119.y)) + vec2<f32>(x_1123.z, x_1123.w));
  let x_1126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1125.x, x_1125.y, x_1126.z, x_1126.w);
  let x_1133 : vec4<f32> = u_xlat0;
  let x_1135 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_1133.x, x_1133.y));
  let x_1136 : vec3<f32> = vec3<f32>(x_1135.x, x_1135.y, x_1135.z);
  let x_1137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_1139.x, x_1139.y, x_1139.z);
  let x_1141 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1141, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1145 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_1145, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_1151 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_1151);
  let x_1155 : f32 = x_26.x_Grain_Params1.x;
  let x_1156 : f32 = u_xlat30;
  u_xlat30 = ((x_1155 * -(x_1156)) + 1.0f);
  let x_1160 : vec4<f32> = u_xlat0;
  let x_1162 : vec4<f32> = u_xlat2;
  let x_1164 : vec3<f32> = (vec3<f32>(x_1160.x, x_1160.y, x_1160.z) * vec3<f32>(x_1162.x, x_1162.y, x_1162.z));
  let x_1165 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1164.x, x_1164.y, x_1164.z, x_1165.w);
  let x_1167 : vec4<f32> = u_xlat0;
  let x_1170 : f32 = x_26.x_Grain_Params1.y;
  let x_1172 : f32 = x_26.x_Grain_Params1.y;
  let x_1174 : f32 = x_26.x_Grain_Params1.y;
  let x_1176 : vec3<f32> = (vec3<f32>(x_1167.x, x_1167.y, x_1167.z) * vec3<f32>(x_1170, x_1172, x_1174));
  let x_1177 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1176.x, x_1176.y, x_1176.z, x_1177.w);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1181 : f32 = u_xlat30;
  let x_1184 : vec4<f32> = u_xlat2;
  let x_1186 : vec3<f32> = ((vec3<f32>(x_1179.x, x_1179.y, x_1179.z) * vec3<f32>(x_1181, x_1181, x_1181)) + vec3<f32>(x_1184.x, x_1184.y, x_1184.z));
  let x_1187 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1187.w);
  let x_1192 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_1192);
  let x_1194 : bool = u_xlatb0;
  if (x_1194) {
    let x_1197 : vec4<f32> = u_xlat3;
    let x_1198 : vec3<f32> = vec3<f32>(x_1197.x, x_1197.y, x_1197.z);
    let x_1199 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1201 : vec4<f32> = u_xlat0;
    let x_1205 : vec3<f32> = clamp(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1206 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1205.x, x_1205.y, x_1205.z, x_1206.w);
    let x_1208 : vec4<f32> = u_xlat0;
    u_xlat3.w = dot(vec3<f32>(x_1208.x, x_1208.y, x_1208.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1214 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1214;
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

