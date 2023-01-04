struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_Distortion_Amount : vec4<f32>,
  x_Distortion_CenterScale : vec4<f32>,
  x_Dithering_Coords : vec4<f32>,
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

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(10) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(12) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(11) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_755 : f32;
  var x_1005 : f32;
  var x_1017 : f32;
  var x_1029 : f32;
  var x_1096 : f32;
  var x_1109 : f32;
  var x_1121 : f32;
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
    let x_697 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
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
    u_xlat11.x = (x_723 + 0.055f);
    let x_728 : f32 = u_xlat11.x;
    u_xlat11.x = (x_728 * 0.947867334f);
    let x_733 : f32 = u_xlat11.x;
    u_xlat11.x = max(abs(x_733), 1.1920929e-07f);
    let x_739 : f32 = u_xlat11.x;
    u_xlat11.x = log2(x_739);
    let x_743 : f32 = u_xlat11.x;
    u_xlat11.x = (x_743 * 2.400000095f);
    let x_748 : f32 = u_xlat11.x;
    u_xlat11.x = exp2(x_748);
    let x_752 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_752);
    let x_754 : bool = u_xlatb30;
    if (x_754) {
      let x_759 : f32 = u_xlat1.x;
      x_755 = x_759;
    } else {
      let x_762 : f32 = u_xlat11.x;
      x_755 = x_762;
    }
    let x_763 : f32 = x_755;
    u_xlat30 = x_763;
    let x_765 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_765) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_768 : f32 = u_xlat30;
    let x_770 : vec3<f32> = u_xlat1;
    let x_773 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_768, x_768, x_768) * x_770) + x_773);
    let x_775 : vec4<f32> = u_xlat0;
    let x_777 : vec3<f32> = u_xlat1;
    let x_779 : vec4<f32> = u_xlat0;
    u_xlat1 = ((vec3<f32>(x_775.x, x_775.y, x_775.z) * x_777) + -(vec3<f32>(x_779.x, x_779.y, x_779.z)));
    let x_785 : f32 = x_26.x_Vignette_Opacity;
    let x_787 : vec3<f32> = u_xlat1;
    let x_789 : vec4<f32> = u_xlat0;
    let x_791 : vec3<f32> = ((vec3<f32>(x_785, x_785, x_785) * x_787) + vec3<f32>(x_789.x, x_789.y, x_789.z));
    let x_792 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
    let x_795 : f32 = u_xlat2.w;
    u_xlat0.x = (x_795 + -1.0f);
    let x_798 : f32 = u_xlat30;
    let x_800 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_798 * x_800) + 1.0f);
  }
  let x_804 : vec4<f32> = u_xlat3;
  let x_807 : f32 = x_26.x_PostExposure;
  let x_809 : f32 = x_26.x_PostExposure;
  let x_811 : f32 = x_26.x_PostExposure;
  let x_813 : f32 = x_26.x_PostExposure;
  let x_814 : vec4<f32> = vec4<f32>(x_807, x_809, x_811, x_813);
  u_xlat0 = (x_804 * vec4<f32>(x_814.x, x_814.y, x_814.z, x_814.w));
  let x_821 : vec4<f32> = u_xlat0;
  let x_828 : vec3<f32> = ((vec3<f32>(x_821.x, x_821.y, x_821.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_829 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_828.x, x_828.y, x_828.z, x_829.w);
  let x_831 : vec4<f32> = u_xlat0;
  let x_833 : vec3<f32> = log2(vec3<f32>(x_831.x, x_831.y, x_831.z));
  let x_834 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_833.x, x_833.y, x_833.z, x_834.w);
  let x_836 : vec4<f32> = u_xlat0;
  let x_843 : vec3<f32> = ((vec3<f32>(x_836.x, x_836.y, x_836.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_844 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_843.x, x_843.y, x_843.z, x_844.w);
  let x_846 : vec4<f32> = u_xlat0;
  let x_850 : vec3<f32> = clamp(vec3<f32>(x_846.x, x_846.y, x_846.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_851 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
  let x_853 : vec4<f32> = u_xlat0;
  let x_857 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_859 : vec3<f32> = (vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_857.y, x_857.y, x_857.y));
  let x_860 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_863 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_863 * 0.5f);
  let x_866 : vec4<f32> = u_xlat0;
  let x_869 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_872 : vec3<f32> = u_xlat1;
  let x_874 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.y, x_866.z) * vec3<f32>(x_869.x, x_869.x, x_869.x)) + vec3<f32>(x_872.x, x_872.x, x_872.x));
  let x_875 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_874.x, x_874.y, x_874.z, x_875.w);
  let x_885 : vec4<f32> = u_xlat0;
  let x_887 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_885.x, x_885.y, x_885.z));
  let x_888 : vec3<f32> = vec3<f32>(x_887.x, x_887.y, x_887.z);
  let x_889 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_888.x, x_888.y, x_888.z, x_889.w);
  let x_891 : vec2<f32> = vs_TEXCOORD0;
  let x_894 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_898 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_900 : vec2<f32> = ((x_891 * vec2<f32>(x_894.x, x_894.y)) + vec2<f32>(x_898.z, x_898.w));
  let x_901 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_900.x, x_900.y, x_901.z);
  let x_908 : vec3<f32> = u_xlat1;
  let x_910 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_908.x, x_908.y));
  u_xlat1.x = x_910.w;
  let x_914 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_914 * 2.0f) + -1.0f);
  let x_919 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_919 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_925 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_925, 0.0f, 1.0f);
  let x_929 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_929 * 2.0f) + -1.0f);
  let x_934 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_934)) + 1.0f);
  let x_940 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_940);
  let x_944 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_944) + 1.0f);
  let x_949 : f32 = u_xlat1.x;
  let x_951 : f32 = u_xlat11.x;
  u_xlat1.x = (x_949 * x_951);
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_959 : vec4<f32> = u_xlat0;
  let x_963 : vec3<f32> = max(abs(vec3<f32>(x_959.x, x_959.y, x_959.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_968 : vec3<f32> = log2(vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat2;
  let x_975 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_976 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec4<f32> = u_xlat2;
  let x_980 : vec3<f32> = exp2(vec3<f32>(x_978.x, x_978.y, x_978.z));
  let x_981 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_980.x, x_980.y, x_980.z, x_981.w);
  let x_983 : vec4<f32> = u_xlat2;
  let x_990 : vec3<f32> = ((vec3<f32>(x_983.x, x_983.y, x_983.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_991 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_998 : vec4<f32> = u_xlat0;
  let x_1001 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_998.x, x_998.y, x_998.z, x_998.x));
  u_xlatb0 = vec3<bool>(x_1001.x, x_1001.y, x_1001.z);
  let x_1004 : bool = u_xlatb0.x;
  if (x_1004) {
    let x_1009 : f32 = u_xlat11.x;
    x_1005 = x_1009;
  } else {
    let x_1012 : f32 = u_xlat2.x;
    x_1005 = x_1012;
  }
  let x_1013 : f32 = x_1005;
  u_xlat0.x = x_1013;
  let x_1016 : bool = u_xlatb0.y;
  if (x_1016) {
    let x_1021 : f32 = u_xlat11.y;
    x_1017 = x_1021;
  } else {
    let x_1024 : f32 = u_xlat2.y;
    x_1017 = x_1024;
  }
  let x_1025 : f32 = x_1017;
  u_xlat0.y = x_1025;
  let x_1028 : bool = u_xlatb0.z;
  if (x_1028) {
    let x_1033 : f32 = u_xlat11.z;
    x_1029 = x_1033;
  } else {
    let x_1036 : f32 = u_xlat2.z;
    x_1029 = x_1036;
  }
  let x_1037 : f32 = x_1029;
  u_xlat0.z = x_1037;
  let x_1039 : vec3<f32> = u_xlat1;
  let x_1044 : vec4<f32> = u_xlat0;
  let x_1046 : vec3<f32> = ((vec3<f32>(x_1039.x, x_1039.x, x_1039.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1046.x, x_1046.y, x_1046.z, x_1047.w);
  let x_1049 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1049.x, x_1049.y, x_1049.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1053 : vec4<f32> = u_xlat0;
  let x_1056 : vec3<f32> = (vec3<f32>(x_1053.x, x_1053.y, x_1053.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1057 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1056.x, x_1056.y, x_1056.z, x_1057.w);
  let x_1059 : vec4<f32> = u_xlat2;
  let x_1062 : vec3<f32> = (vec3<f32>(x_1059.x, x_1059.y, x_1059.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1063 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
  let x_1065 : vec4<f32> = u_xlat2;
  let x_1068 : vec3<f32> = max(abs(vec3<f32>(x_1065.x, x_1065.y, x_1065.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1069 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec4<f32> = u_xlat2;
  let x_1073 : vec3<f32> = log2(vec3<f32>(x_1071.x, x_1071.y, x_1071.z));
  let x_1074 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1073.x, x_1073.y, x_1073.z, x_1074.w);
  let x_1076 : vec4<f32> = u_xlat2;
  let x_1079 : vec3<f32> = (vec3<f32>(x_1076.x, x_1076.y, x_1076.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1080 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1079.x, x_1079.y, x_1079.z, x_1080.w);
  let x_1082 : vec4<f32> = u_xlat2;
  let x_1084 : vec3<f32> = exp2(vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1090 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.x));
  u_xlatb0 = vec3<bool>(x_1090.x, x_1090.y, x_1090.z);
  let x_1095 : bool = u_xlatb0.x;
  if (x_1095) {
    let x_1100 : f32 = u_xlat1.x;
    x_1096 = x_1100;
  } else {
    let x_1103 : f32 = u_xlat2.x;
    x_1096 = x_1103;
  }
  let x_1104 : f32 = x_1096;
  SV_Target0.x = x_1104;
  let x_1108 : bool = u_xlatb0.y;
  if (x_1108) {
    let x_1113 : f32 = u_xlat1.y;
    x_1109 = x_1113;
  } else {
    let x_1116 : f32 = u_xlat2.y;
    x_1109 = x_1116;
  }
  let x_1117 : f32 = x_1109;
  SV_Target0.y = x_1117;
  let x_1120 : bool = u_xlatb0.z;
  if (x_1120) {
    let x_1125 : f32 = u_xlat1.z;
    x_1121 = x_1125;
  } else {
    let x_1128 : f32 = u_xlat2.z;
    x_1121 = x_1128;
  }
  let x_1129 : f32 = x_1121;
  SV_Target0.z = x_1129;
  let x_1132 : f32 = u_xlat0.w;
  SV_Target0.w = x_1132;
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

