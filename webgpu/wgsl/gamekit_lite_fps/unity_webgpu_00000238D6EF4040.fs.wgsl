struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(4)
  padding_1 : u32,
  x_Lut3D_Params : vec2<f32>,
  x_PostExposure : f32,
  @size(12)
  padding_2 : u32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_3 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_4 : u32,
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

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(4) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(10) var sampler_Lut3D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_744 : f32;
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
  let x_580 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
  let x_585 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_585 < 0.5f);
  let x_587 : bool = u_xlatb30;
  if (x_587) {
    let x_590 : vec2<f32> = u_xlat21;
    let x_594 : vec2<f32> = x_26.x_Vignette_Center;
    let x_596 : vec2<f32> = (x_590 + -(x_594));
    let x_597 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_596.x, x_596.y, x_597.z);
    let x_599 : vec3<f32> = u_xlat1;
    let x_604 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_606 : vec2<f32> = (abs(vec2<f32>(x_599.y, x_599.x)) * vec2<f32>(x_604.x, x_604.x));
    let x_607 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_607.x, x_606.x, x_606.y, x_607.w);
    let x_610 : f32 = x_26.x_ScreenParams.x;
    let x_612 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_610 / x_612);
    let x_614 : f32 = u_xlat30;
    u_xlat30 = (x_614 + -1.0f);
    let x_617 : f32 = x_26.x_Vignette_Settings.w;
    let x_618 : f32 = u_xlat30;
    u_xlat30 = ((x_617 * x_618) + 1.0f);
    let x_621 : f32 = u_xlat30;
    let x_623 : f32 = u_xlat2.z;
    u_xlat2.x = (x_621 * x_623);
    let x_626 : vec4<f32> = u_xlat2;
    let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
    let x_628 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_627.x, x_627.y, x_628.z, x_628.w);
    let x_630 : vec4<f32> = u_xlat2;
    let x_634 : vec2<f32> = clamp(vec2<f32>(x_630.x, x_630.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_635 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
    let x_637 : vec4<f32> = u_xlat2;
    let x_639 : vec2<f32> = log2(vec2<f32>(x_637.x, x_637.y));
    let x_640 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_639.x, x_639.y, x_640.z);
    let x_642 : vec3<f32> = u_xlat1;
    let x_645 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_647 : vec2<f32> = (vec2<f32>(x_642.x, x_642.y) * vec2<f32>(x_645.z, x_645.z));
    let x_648 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_647.x, x_647.y, x_648.z);
    let x_650 : vec3<f32> = u_xlat1;
    let x_652 : vec2<f32> = exp2(vec2<f32>(x_650.x, x_650.y));
    let x_653 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_652.x, x_652.y, x_653.z);
    let x_655 : vec3<f32> = u_xlat1;
    let x_657 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_655.x, x_655.y), vec2<f32>(x_657.x, x_657.y));
    let x_660 : f32 = u_xlat30;
    u_xlat30 = (-(x_660) + 1.0f);
    let x_663 : f32 = u_xlat30;
    u_xlat30 = max(x_663, 0.0f);
    let x_665 : f32 = u_xlat30;
    u_xlat30 = log2(x_665);
    let x_667 : f32 = u_xlat30;
    let x_669 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_667 * x_669);
    let x_671 : f32 = u_xlat30;
    u_xlat30 = exp2(x_671);
    let x_676 : vec3<f32> = x_26.x_Vignette_Color;
    let x_679 : vec3<f32> = (-(x_676) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_680 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_679.x, x_679.y, x_679.z, x_680.w);
    let x_682 : f32 = u_xlat30;
    let x_684 : vec4<f32> = u_xlat2;
    let x_688 : vec3<f32> = x_26.x_Vignette_Color;
    let x_689 : vec3<f32> = ((vec3<f32>(x_682, x_682, x_682) * vec3<f32>(x_684.x, x_684.y, x_684.z)) + x_688);
    let x_690 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_689.x, x_689.y, x_689.z, x_690.w);
    let x_692 : vec4<f32> = u_xlat0;
    let x_694 : vec4<f32> = u_xlat2;
    let x_696 : vec3<f32> = (vec3<f32>(x_692.x, x_692.y, x_692.z) * vec3<f32>(x_694.x, x_694.y, x_694.z));
    let x_697 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
    let x_700 : f32 = u_xlat2.w;
    u_xlat1.x = (x_700 + -1.0f);
    let x_703 : f32 = u_xlat30;
    let x_705 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_703 * x_705) + 1.0f);
  } else {
    let x_715 : vec2<f32> = u_xlat21;
    let x_716 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_715);
    u_xlat30 = x_716.w;
    let x_718 : f32 = u_xlat30;
    u_xlat1.x = (x_718 * 0.077399381f);
    let x_723 : f32 = u_xlat30;
    u_xlat11 = (x_723 + 0.055f);
    let x_726 : f32 = u_xlat11;
    u_xlat11 = (x_726 * 0.947867334f);
    let x_729 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_729), 1.1920929e-07f);
    let x_733 : f32 = u_xlat11;
    u_xlat11 = log2(x_733);
    let x_735 : f32 = u_xlat11;
    u_xlat11 = (x_735 * 2.400000095f);
    let x_738 : f32 = u_xlat11;
    u_xlat11 = exp2(x_738);
    let x_741 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_741);
    let x_743 : bool = u_xlatb30;
    if (x_743) {
      let x_748 : f32 = u_xlat1.x;
      x_744 = x_748;
    } else {
      let x_750 : f32 = u_xlat11;
      x_744 = x_750;
    }
    let x_751 : f32 = x_744;
    u_xlat30 = x_751;
    let x_753 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_753) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_756 : f32 = u_xlat30;
    let x_758 : vec3<f32> = u_xlat1;
    let x_761 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_756, x_756, x_756) * x_758) + x_761);
    let x_763 : vec4<f32> = u_xlat0;
    let x_765 : vec3<f32> = u_xlat1;
    let x_767 : vec4<f32> = u_xlat0;
    u_xlat1 = ((vec3<f32>(x_763.x, x_763.y, x_763.z) * x_765) + -(vec3<f32>(x_767.x, x_767.y, x_767.z)));
    let x_773 : f32 = x_26.x_Vignette_Opacity;
    let x_775 : vec3<f32> = u_xlat1;
    let x_777 : vec4<f32> = u_xlat0;
    let x_779 : vec3<f32> = ((vec3<f32>(x_773, x_773, x_773) * x_775) + vec3<f32>(x_777.x, x_777.y, x_777.z));
    let x_780 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
    let x_783 : f32 = u_xlat2.w;
    u_xlat0.x = (x_783 + -1.0f);
    let x_786 : f32 = u_xlat30;
    let x_788 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_786 * x_788) + 1.0f);
  }
  let x_793 : vec2<f32> = vs_TEXCOORD1;
  let x_796 : vec4<f32> = x_26.x_Grain_Params2;
  let x_800 : vec4<f32> = x_26.x_Grain_Params2;
  let x_802 : vec2<f32> = ((x_793 * vec2<f32>(x_796.x, x_796.y)) + vec2<f32>(x_800.z, x_800.w));
  let x_803 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_802.x, x_802.y, x_803.z, x_803.w);
  let x_810 : vec4<f32> = u_xlat0;
  let x_812 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_810.x, x_810.y));
  let x_813 : vec3<f32> = vec3<f32>(x_812.x, x_812.y, x_812.z);
  let x_814 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_813.x, x_813.y, x_813.z, x_814.w);
  let x_816 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_816.x, x_816.y, x_816.z);
  let x_818 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_818, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_822 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_822, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_828 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_828);
  let x_832 : f32 = x_26.x_Grain_Params1.x;
  let x_833 : f32 = u_xlat30;
  u_xlat30 = ((x_832 * -(x_833)) + 1.0f);
  let x_837 : vec4<f32> = u_xlat0;
  let x_839 : vec4<f32> = u_xlat2;
  let x_841 : vec3<f32> = (vec3<f32>(x_837.x, x_837.y, x_837.z) * vec3<f32>(x_839.x, x_839.y, x_839.z));
  let x_842 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_841.x, x_841.y, x_841.z, x_842.w);
  let x_844 : vec4<f32> = u_xlat0;
  let x_847 : f32 = x_26.x_Grain_Params1.y;
  let x_849 : f32 = x_26.x_Grain_Params1.y;
  let x_851 : f32 = x_26.x_Grain_Params1.y;
  let x_853 : vec3<f32> = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_847, x_849, x_851));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_858 : f32 = u_xlat30;
  let x_861 : vec4<f32> = u_xlat2;
  let x_863 : vec3<f32> = ((vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_858, x_858, x_858)) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_866 : vec4<f32> = u_xlat3;
  let x_870 : f32 = x_26.x_PostExposure;
  let x_872 : f32 = x_26.x_PostExposure;
  let x_874 : f32 = x_26.x_PostExposure;
  let x_876 : f32 = x_26.x_PostExposure;
  let x_877 : vec4<f32> = vec4<f32>(x_870, x_872, x_874, x_876);
  u_xlat0 = (vec4<f32>(x_866.w, x_866.x, x_866.y, x_866.z) * vec4<f32>(x_877.x, x_877.y, x_877.z, x_877.w));
  let x_884 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_884.y, x_884.z, x_884.w) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_892 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_892);
  let x_894 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_894 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_901 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_901, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_905 : vec3<f32> = u_xlat1;
  let x_908 : vec2<f32> = x_26.x_Lut3D_Params;
  u_xlat1 = (x_905 * vec3<f32>(x_908.y, x_908.y, x_908.y));
  let x_912 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat31 = (x_912 * 0.5f);
  let x_914 : vec3<f32> = u_xlat1;
  let x_916 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_919 : f32 = u_xlat31;
  u_xlat1 = ((x_914 * vec3<f32>(x_916.x, x_916.x, x_916.x)) + vec3<f32>(x_919, x_919, x_919));
  let x_930 : vec3<f32> = u_xlat1;
  let x_931 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, x_930);
  let x_932 : vec3<f32> = vec3<f32>(x_931.x, x_931.y, x_931.z);
  let x_933 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_933.x, x_932.x, x_932.y, x_932.z);
  let x_937 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_937);
  let x_939 : bool = u_xlatb1;
  if (x_939) {
    let x_942 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_942.y, x_942.z, x_942.w);
    let x_944 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_944, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_948 : vec3<f32> = u_xlat1;
    u_xlat0.x = dot(x_948, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_953 : vec4<f32> = u_xlat0;
  SV_Target0 = vec4<f32>(x_953.y, x_953.z, x_953.w, x_953.x);
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

