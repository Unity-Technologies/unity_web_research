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

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(11) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(6) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(13) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(7) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(14) var sampler_GrainTex : sampler;

@group(0) @binding(5) var x_Lut3D : texture_3d<f32>;

@group(0) @binding(12) var sampler_Lut3D : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var x_1079 : f32;
  var x_1091 : f32;
  var x_1103 : f32;
  var x_1170 : f32;
  var x_1183 : f32;
  var x_1195 : f32;
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
    let x_792 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_791.x, x_791.y, x_791.z, x_792.w);
    let x_795 : f32 = u_xlat2.w;
    u_xlat0.x = (x_795 + -1.0f);
    let x_798 : f32 = u_xlat30;
    let x_800 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_798 * x_800) + 1.0f);
  }
  let x_805 : vec2<f32> = vs_TEXCOORD1;
  let x_808 : vec4<f32> = x_26.x_Grain_Params2;
  let x_812 : vec4<f32> = x_26.x_Grain_Params2;
  let x_814 : vec2<f32> = ((x_805 * vec2<f32>(x_808.x, x_808.y)) + vec2<f32>(x_812.z, x_812.w));
  let x_815 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_814.x, x_814.y, x_815.z, x_815.w);
  let x_822 : vec4<f32> = u_xlat0;
  let x_824 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_822.x, x_822.y));
  let x_825 : vec3<f32> = vec3<f32>(x_824.x, x_824.y, x_824.z);
  let x_826 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_825.x, x_825.y, x_825.z, x_826.w);
  let x_828 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_828.x, x_828.y, x_828.z);
  let x_830 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_830, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_834 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_834, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_840 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_840);
  let x_844 : f32 = x_26.x_Grain_Params1.x;
  let x_845 : f32 = u_xlat30;
  u_xlat30 = ((x_844 * -(x_845)) + 1.0f);
  let x_849 : vec4<f32> = u_xlat0;
  let x_851 : vec4<f32> = u_xlat2;
  let x_853 : vec3<f32> = (vec3<f32>(x_849.x, x_849.y, x_849.z) * vec3<f32>(x_851.x, x_851.y, x_851.z));
  let x_854 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_853.x, x_853.y, x_853.z, x_854.w);
  let x_856 : vec4<f32> = u_xlat0;
  let x_859 : f32 = x_26.x_Grain_Params1.y;
  let x_861 : f32 = x_26.x_Grain_Params1.y;
  let x_863 : f32 = x_26.x_Grain_Params1.y;
  let x_865 : vec3<f32> = (vec3<f32>(x_856.x, x_856.y, x_856.z) * vec3<f32>(x_859, x_861, x_863));
  let x_866 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_865.x, x_865.y, x_865.z, x_866.w);
  let x_868 : vec4<f32> = u_xlat0;
  let x_870 : f32 = u_xlat30;
  let x_873 : vec4<f32> = u_xlat2;
  let x_875 : vec3<f32> = ((vec3<f32>(x_868.x, x_868.y, x_868.z) * vec3<f32>(x_870, x_870, x_870)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
  let x_876 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
  let x_878 : vec4<f32> = u_xlat3;
  let x_881 : f32 = x_26.x_PostExposure;
  let x_883 : f32 = x_26.x_PostExposure;
  let x_885 : f32 = x_26.x_PostExposure;
  let x_887 : f32 = x_26.x_PostExposure;
  let x_888 : vec4<f32> = vec4<f32>(x_881, x_883, x_885, x_887);
  u_xlat0 = (x_878 * vec4<f32>(x_888.x, x_888.y, x_888.z, x_888.w));
  let x_895 : vec4<f32> = u_xlat0;
  let x_902 : vec3<f32> = ((vec3<f32>(x_895.x, x_895.y, x_895.z) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_903 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_902.x, x_902.y, x_902.z, x_903.w);
  let x_905 : vec4<f32> = u_xlat0;
  let x_907 : vec3<f32> = log2(vec3<f32>(x_905.x, x_905.y, x_905.z));
  let x_908 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
  let x_910 : vec4<f32> = u_xlat0;
  let x_917 : vec3<f32> = ((vec3<f32>(x_910.x, x_910.y, x_910.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_918 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  let x_920 : vec4<f32> = u_xlat0;
  let x_924 : vec3<f32> = clamp(vec3<f32>(x_920.x, x_920.y, x_920.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_925 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
  let x_927 : vec4<f32> = u_xlat0;
  let x_931 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_933 : vec3<f32> = (vec3<f32>(x_927.x, x_927.y, x_927.z) * vec3<f32>(x_931.y, x_931.y, x_931.y));
  let x_934 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_933.x, x_933.y, x_933.z, x_934.w);
  let x_937 : f32 = x_26.x_Lut3D_Params.x;
  u_xlat1.x = (x_937 * 0.5f);
  let x_940 : vec4<f32> = u_xlat0;
  let x_943 : vec2<f32> = x_26.x_Lut3D_Params;
  let x_946 : vec3<f32> = u_xlat1;
  let x_948 : vec3<f32> = ((vec3<f32>(x_940.x, x_940.y, x_940.z) * vec3<f32>(x_943.x, x_943.x, x_943.x)) + vec3<f32>(x_946.x, x_946.x, x_946.x));
  let x_949 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_959 : vec4<f32> = u_xlat0;
  let x_961 : vec4<f32> = textureSample(x_Lut3D, sampler_Lut3D, vec3<f32>(x_959.x, x_959.y, x_959.z));
  let x_962 : vec3<f32> = vec3<f32>(x_961.x, x_961.y, x_961.z);
  let x_963 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
  let x_965 : vec2<f32> = vs_TEXCOORD0;
  let x_968 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_972 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_974 : vec2<f32> = ((x_965 * vec2<f32>(x_968.x, x_968.y)) + vec2<f32>(x_972.z, x_972.w));
  let x_975 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_974.x, x_974.y, x_975.z);
  let x_982 : vec3<f32> = u_xlat1;
  let x_984 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_982.x, x_982.y));
  u_xlat1.x = x_984.w;
  let x_988 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_988 * 2.0f) + -1.0f);
  let x_993 : f32 = u_xlat1.x;
  u_xlat11.x = ((x_993 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_999 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_999, 0.0f, 1.0f);
  let x_1003 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_1003 * 2.0f) + -1.0f);
  let x_1008 : f32 = u_xlat1.x;
  u_xlat1.x = (-(abs(x_1008)) + 1.0f);
  let x_1014 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_1014);
  let x_1018 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_1018) + 1.0f);
  let x_1023 : f32 = u_xlat1.x;
  let x_1025 : f32 = u_xlat11.x;
  u_xlat1.x = (x_1023 * x_1025);
  let x_1028 : vec4<f32> = u_xlat0;
  u_xlat11 = (vec3<f32>(x_1028.x, x_1028.y, x_1028.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1033 : vec4<f32> = u_xlat0;
  let x_1037 : vec3<f32> = max(abs(vec3<f32>(x_1033.x, x_1033.y, x_1033.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1038 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1037.x, x_1037.y, x_1037.z, x_1038.w);
  let x_1040 : vec4<f32> = u_xlat2;
  let x_1042 : vec3<f32> = log2(vec3<f32>(x_1040.x, x_1040.y, x_1040.z));
  let x_1043 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1042.x, x_1042.y, x_1042.z, x_1043.w);
  let x_1045 : vec4<f32> = u_xlat2;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045.x, x_1045.y, x_1045.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1050 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1054 : vec3<f32> = exp2(vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
  let x_1057 : vec4<f32> = u_xlat2;
  let x_1064 : vec3<f32> = ((vec3<f32>(x_1057.x, x_1057.y, x_1057.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1065 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
  let x_1072 : vec4<f32> = u_xlat0;
  let x_1075 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1072.x, x_1072.y, x_1072.z, x_1072.x));
  u_xlatb0 = vec3<bool>(x_1075.x, x_1075.y, x_1075.z);
  let x_1078 : bool = u_xlatb0.x;
  if (x_1078) {
    let x_1083 : f32 = u_xlat11.x;
    x_1079 = x_1083;
  } else {
    let x_1086 : f32 = u_xlat2.x;
    x_1079 = x_1086;
  }
  let x_1087 : f32 = x_1079;
  u_xlat0.x = x_1087;
  let x_1090 : bool = u_xlatb0.y;
  if (x_1090) {
    let x_1095 : f32 = u_xlat11.y;
    x_1091 = x_1095;
  } else {
    let x_1098 : f32 = u_xlat2.y;
    x_1091 = x_1098;
  }
  let x_1099 : f32 = x_1091;
  u_xlat0.y = x_1099;
  let x_1102 : bool = u_xlatb0.z;
  if (x_1102) {
    let x_1107 : f32 = u_xlat11.z;
    x_1103 = x_1107;
  } else {
    let x_1110 : f32 = u_xlat2.z;
    x_1103 = x_1110;
  }
  let x_1111 : f32 = x_1103;
  u_xlat0.z = x_1111;
  let x_1113 : vec3<f32> = u_xlat1;
  let x_1118 : vec4<f32> = u_xlat0;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1113.x, x_1113.x, x_1113.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  let x_1123 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1123.x, x_1123.y, x_1123.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1127 : vec4<f32> = u_xlat0;
  let x_1130 : vec3<f32> = (vec3<f32>(x_1127.x, x_1127.y, x_1127.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1131 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1130.x, x_1130.y, x_1130.z, x_1131.w);
  let x_1133 : vec4<f32> = u_xlat2;
  let x_1136 : vec3<f32> = (vec3<f32>(x_1133.x, x_1133.y, x_1133.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1137 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat2;
  let x_1142 : vec3<f32> = max(abs(vec3<f32>(x_1139.x, x_1139.y, x_1139.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1143 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1145 : vec4<f32> = u_xlat2;
  let x_1147 : vec3<f32> = log2(vec3<f32>(x_1145.x, x_1145.y, x_1145.z));
  let x_1148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1147.x, x_1147.y, x_1147.z, x_1148.w);
  let x_1150 : vec4<f32> = u_xlat2;
  let x_1153 : vec3<f32> = (vec3<f32>(x_1150.x, x_1150.y, x_1150.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1154 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1156 : vec4<f32> = u_xlat2;
  let x_1158 : vec3<f32> = exp2(vec3<f32>(x_1156.x, x_1156.y, x_1156.z));
  let x_1159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1162 : vec4<f32> = u_xlat0;
  let x_1164 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1162.x, x_1162.y, x_1162.z, x_1162.x));
  u_xlatb0 = vec3<bool>(x_1164.x, x_1164.y, x_1164.z);
  let x_1169 : bool = u_xlatb0.x;
  if (x_1169) {
    let x_1174 : f32 = u_xlat1.x;
    x_1170 = x_1174;
  } else {
    let x_1177 : f32 = u_xlat2.x;
    x_1170 = x_1177;
  }
  let x_1178 : f32 = x_1170;
  SV_Target0.x = x_1178;
  let x_1182 : bool = u_xlatb0.y;
  if (x_1182) {
    let x_1187 : f32 = u_xlat1.y;
    x_1183 = x_1187;
  } else {
    let x_1190 : f32 = u_xlat2.y;
    x_1183 = x_1190;
  }
  let x_1191 : f32 = x_1183;
  SV_Target0.y = x_1191;
  let x_1194 : bool = u_xlatb0.z;
  if (x_1194) {
    let x_1199 : f32 = u_xlat1.z;
    x_1195 = x_1199;
  } else {
    let x_1202 : f32 = u_xlat2.z;
    x_1195 = x_1202;
  }
  let x_1203 : f32 = x_1195;
  SV_Target0.z = x_1203;
  let x_1206 : f32 = u_xlat0.w;
  SV_Target0.w = x_1206;
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

