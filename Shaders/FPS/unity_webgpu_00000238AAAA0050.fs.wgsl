struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_MainTex_TexelSize : vec4<f32>,
  x_ChromaticAberration_Amount : f32,
  @size(12)
  padding_1 : u32,
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

var<private> u_xlat0 : vec3<f32>;

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

@group(0) @binding(7) var sampler_AutoExposureTex : sampler;

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

@group(0) @binding(6) var sampler_MainTex : sampler;

@group(0) @binding(3) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(8) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(4) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(9) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(5) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_GrainTex : sampler;

var<private> u_xlatb0 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_741 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_16 : vec2<f32> = (x_13 + vec2<f32>(-0.5f, -0.5f));
  let x_17 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_16.x, x_16.y, x_17.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_31 : vec4<f32> = x_26.x_Distortion_Amount;
  u_xlat20 = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(x_31.z, x_31.z)) + vec2<f32>(0.5f, 0.5f));
  let x_37 : vec3<f32> = u_xlat0;
  let x_40 : vec4<f32> = x_26.x_Distortion_Amount;
  let x_45 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_48 : vec2<f32> = ((vec2<f32>(x_37.x, x_37.y) * vec2<f32>(x_40.z, x_40.z)) + -(vec2<f32>(x_45.x, x_45.y)));
  let x_49 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_48.x, x_48.y, x_49.z);
  let x_51 : vec3<f32> = u_xlat0;
  let x_54 : vec4<f32> = x_26.x_Distortion_CenterScale;
  let x_56 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(x_54.z, x_54.w));
  let x_57 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_56.x, x_56.y, x_57.z);
  let x_60 : vec3<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_60.x, x_60.y), vec2<f32>(x_62.x, x_62.y));
  let x_70 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_70);
  let x_80 : f32 = x_26.x_Distortion_Amount.w;
  u_xlatb11 = (0.0f < x_80);
  let x_82 : bool = u_xlatb11;
  if (x_82) {
    let x_86 : vec3<f32> = u_xlat1;
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
    let x_122 : vec3<f32> = u_xlat0;
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
    let x_247 : vec3<f32> = u_xlat0;
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
  let x_575 : vec3<f32> = u_xlat0;
  let x_577 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_575.x, x_575.x, x_575.x) * vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_583 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_583 < 0.5f);
  let x_585 : bool = u_xlatb30;
  if (x_585) {
    let x_588 : vec2<f32> = u_xlat21;
    let x_592 : vec2<f32> = x_26.x_Vignette_Center;
    let x_594 : vec2<f32> = (x_588 + -(x_592));
    let x_595 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_594.x, x_594.y, x_595.z);
    let x_597 : vec3<f32> = u_xlat1;
    let x_602 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_604 : vec2<f32> = (abs(vec2<f32>(x_597.y, x_597.x)) * vec2<f32>(x_602.x, x_602.x));
    let x_605 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_605.x, x_604.x, x_604.y, x_605.w);
    let x_608 : f32 = x_26.x_ScreenParams.x;
    let x_610 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_608 / x_610);
    let x_612 : f32 = u_xlat30;
    u_xlat30 = (x_612 + -1.0f);
    let x_615 : f32 = x_26.x_Vignette_Settings.w;
    let x_616 : f32 = u_xlat30;
    u_xlat30 = ((x_615 * x_616) + 1.0f);
    let x_619 : f32 = u_xlat30;
    let x_621 : f32 = u_xlat2.z;
    u_xlat2.x = (x_619 * x_621);
    let x_624 : vec4<f32> = u_xlat2;
    let x_625 : vec2<f32> = vec2<f32>(x_624.x, x_624.y);
    let x_626 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
    let x_628 : vec4<f32> = u_xlat2;
    let x_632 : vec2<f32> = clamp(vec2<f32>(x_628.x, x_628.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_633 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
    let x_635 : vec4<f32> = u_xlat2;
    let x_637 : vec2<f32> = log2(vec2<f32>(x_635.x, x_635.y));
    let x_638 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_637.x, x_637.y, x_638.z);
    let x_640 : vec3<f32> = u_xlat1;
    let x_643 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_645 : vec2<f32> = (vec2<f32>(x_640.x, x_640.y) * vec2<f32>(x_643.z, x_643.z));
    let x_646 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_645.x, x_645.y, x_646.z);
    let x_648 : vec3<f32> = u_xlat1;
    let x_650 : vec2<f32> = exp2(vec2<f32>(x_648.x, x_648.y));
    let x_651 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_650.x, x_650.y, x_651.z);
    let x_653 : vec3<f32> = u_xlat1;
    let x_655 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_653.x, x_653.y), vec2<f32>(x_655.x, x_655.y));
    let x_658 : f32 = u_xlat30;
    u_xlat30 = (-(x_658) + 1.0f);
    let x_661 : f32 = u_xlat30;
    u_xlat30 = max(x_661, 0.0f);
    let x_663 : f32 = u_xlat30;
    u_xlat30 = log2(x_663);
    let x_665 : f32 = u_xlat30;
    let x_667 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_665 * x_667);
    let x_669 : f32 = u_xlat30;
    u_xlat30 = exp2(x_669);
    let x_674 : vec3<f32> = x_26.x_Vignette_Color;
    let x_677 : vec3<f32> = (-(x_674) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_678 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    let x_680 : f32 = u_xlat30;
    let x_682 : vec4<f32> = u_xlat2;
    let x_686 : vec3<f32> = x_26.x_Vignette_Color;
    let x_687 : vec3<f32> = ((vec3<f32>(x_680, x_680, x_680) * vec3<f32>(x_682.x, x_682.y, x_682.z)) + x_686);
    let x_688 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_687.x, x_687.y, x_687.z, x_688.w);
    let x_690 : vec3<f32> = u_xlat0;
    let x_691 : vec4<f32> = u_xlat2;
    let x_693 : vec3<f32> = (x_690 * vec3<f32>(x_691.x, x_691.y, x_691.z));
    let x_694 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
    let x_697 : f32 = u_xlat2.w;
    u_xlat1.x = (x_697 + -1.0f);
    let x_700 : f32 = u_xlat30;
    let x_702 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_700 * x_702) + 1.0f);
  } else {
    let x_712 : vec2<f32> = u_xlat21;
    let x_713 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_712);
    u_xlat30 = x_713.w;
    let x_715 : f32 = u_xlat30;
    u_xlat1.x = (x_715 * 0.077399381f);
    let x_720 : f32 = u_xlat30;
    u_xlat11 = (x_720 + 0.055f);
    let x_723 : f32 = u_xlat11;
    u_xlat11 = (x_723 * 0.947867334f);
    let x_726 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_726), 1.1920929e-07f);
    let x_730 : f32 = u_xlat11;
    u_xlat11 = log2(x_730);
    let x_732 : f32 = u_xlat11;
    u_xlat11 = (x_732 * 2.400000095f);
    let x_735 : f32 = u_xlat11;
    u_xlat11 = exp2(x_735);
    let x_738 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_738);
    let x_740 : bool = u_xlatb30;
    if (x_740) {
      let x_745 : f32 = u_xlat1.x;
      x_741 = x_745;
    } else {
      let x_747 : f32 = u_xlat11;
      x_741 = x_747;
    }
    let x_748 : f32 = x_741;
    u_xlat30 = x_748;
    let x_750 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_750) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_753 : f32 = u_xlat30;
    let x_755 : vec3<f32> = u_xlat1;
    let x_758 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_753, x_753, x_753) * x_755) + x_758);
    let x_760 : vec3<f32> = u_xlat0;
    let x_761 : vec3<f32> = u_xlat1;
    let x_763 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_760 * x_761) + -(x_763));
    let x_768 : f32 = x_26.x_Vignette_Opacity;
    let x_770 : vec3<f32> = u_xlat1;
    let x_772 : vec3<f32> = u_xlat0;
    let x_773 : vec3<f32> = ((vec3<f32>(x_768, x_768, x_768) * x_770) + x_772);
    let x_774 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
    let x_777 : f32 = u_xlat2.w;
    u_xlat0.x = (x_777 + -1.0f);
    let x_780 : f32 = u_xlat30;
    let x_782 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_780 * x_782) + 1.0f);
  }
  let x_787 : vec2<f32> = vs_TEXCOORD1;
  let x_790 : vec4<f32> = x_26.x_Grain_Params2;
  let x_794 : vec4<f32> = x_26.x_Grain_Params2;
  let x_796 : vec2<f32> = ((x_787 * vec2<f32>(x_790.x, x_790.y)) + vec2<f32>(x_794.z, x_794.w));
  let x_797 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_796.x, x_796.y, x_797.z);
  let x_804 : vec3<f32> = u_xlat0;
  let x_806 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_804.x, x_804.y));
  u_xlat0 = vec3<f32>(x_806.x, x_806.y, x_806.z);
  let x_808 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_808.x, x_808.y, x_808.z);
  let x_810 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_810, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_814 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_814, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_820 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_820);
  let x_824 : f32 = x_26.x_Grain_Params1.x;
  let x_825 : f32 = u_xlat30;
  u_xlat30 = ((x_824 * -(x_825)) + 1.0f);
  let x_829 : vec3<f32> = u_xlat0;
  let x_830 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_829 * vec3<f32>(x_830.x, x_830.y, x_830.z));
  let x_833 : vec3<f32> = u_xlat0;
  let x_835 : f32 = x_26.x_Grain_Params1.y;
  let x_837 : f32 = x_26.x_Grain_Params1.y;
  let x_839 : f32 = x_26.x_Grain_Params1.y;
  u_xlat0 = (x_833 * vec3<f32>(x_835, x_837, x_839));
  let x_842 : vec3<f32> = u_xlat0;
  let x_843 : f32 = u_xlat30;
  let x_846 : vec4<f32> = u_xlat2;
  let x_848 : vec3<f32> = ((x_842 * vec3<f32>(x_843, x_843, x_843)) + vec3<f32>(x_846.x, x_846.y, x_846.z));
  let x_849 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_848.x, x_848.y, x_848.z, x_849.w);
  let x_854 : f32 = x_26.x_LumaInAlpha;
  u_xlatb0 = (0.5f < x_854);
  let x_856 : bool = u_xlatb0;
  if (x_856) {
    let x_859 : vec4<f32> = u_xlat3;
    u_xlat0 = vec3<f32>(x_859.x, x_859.y, x_859.z);
    let x_861 : vec3<f32> = u_xlat0;
    u_xlat0 = clamp(x_861, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_865 : vec3<f32> = u_xlat0;
    u_xlat3.w = dot(x_865, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_870 : vec4<f32> = u_xlat3;
  SV_Target0 = x_870;
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

