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

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(11) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(0) @binding(6) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_GrainTex : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTex : sampler;

var<private> u_xlatb0 : vec3<bool>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_511 : f32;
  var x_744 : f32;
  var x_952 : f32;
  var x_964 : f32;
  var x_976 : f32;
  var x_1036 : f32;
  var x_1048 : f32;
  var x_1060 : f32;
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
    let x_702 : f32 = u_xlat30;
    let x_704 : f32 = u_xlat1.x;
    SV_Target0.w = ((x_702 * x_704) + 1.0f);
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
    let x_763 : vec3<f32> = u_xlat0;
    let x_764 : vec3<f32> = u_xlat1;
    let x_766 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_763 * x_764) + -(x_766));
    let x_771 : f32 = x_26.x_Vignette_Opacity;
    let x_773 : vec3<f32> = u_xlat1;
    let x_775 : vec3<f32> = u_xlat0;
    let x_776 : vec3<f32> = ((vec3<f32>(x_771, x_771, x_771) * x_773) + x_775);
    let x_777 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
    let x_780 : f32 = u_xlat2.w;
    u_xlat0.x = (x_780 + -1.0f);
    let x_783 : f32 = u_xlat30;
    let x_785 : f32 = u_xlat0.x;
    SV_Target0.w = ((x_783 * x_785) + 1.0f);
  }
  let x_790 : vec2<f32> = vs_TEXCOORD1;
  let x_793 : vec4<f32> = x_26.x_Grain_Params2;
  let x_797 : vec4<f32> = x_26.x_Grain_Params2;
  let x_799 : vec2<f32> = ((x_790 * vec2<f32>(x_793.x, x_793.y)) + vec2<f32>(x_797.z, x_797.w));
  let x_800 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_799.x, x_799.y, x_800.z);
  let x_807 : vec3<f32> = u_xlat0;
  let x_809 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_807.x, x_807.y));
  u_xlat0 = vec3<f32>(x_809.x, x_809.y, x_809.z);
  let x_811 : vec4<f32> = u_xlat2;
  u_xlat1 = vec3<f32>(x_811.x, x_811.y, x_811.z);
  let x_813 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_813, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_817 : vec3<f32> = u_xlat1;
  u_xlat30 = dot(x_817, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_823 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_823);
  let x_827 : f32 = x_26.x_Grain_Params1.x;
  let x_828 : f32 = u_xlat30;
  u_xlat30 = ((x_827 * -(x_828)) + 1.0f);
  let x_832 : vec3<f32> = u_xlat0;
  let x_833 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_832 * vec3<f32>(x_833.x, x_833.y, x_833.z));
  let x_836 : vec3<f32> = u_xlat0;
  let x_838 : f32 = x_26.x_Grain_Params1.y;
  let x_840 : f32 = x_26.x_Grain_Params1.y;
  let x_842 : f32 = x_26.x_Grain_Params1.y;
  u_xlat0 = (x_836 * vec3<f32>(x_838, x_840, x_842));
  let x_845 : vec3<f32> = u_xlat0;
  let x_846 : f32 = u_xlat30;
  let x_849 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_845 * vec3<f32>(x_846, x_846, x_846)) + vec3<f32>(x_849.x, x_849.y, x_849.z));
  let x_852 : vec2<f32> = vs_TEXCOORD0;
  let x_855 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_859 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_861 : vec2<f32> = ((x_852 * vec2<f32>(x_855.x, x_855.y)) + vec2<f32>(x_859.z, x_859.w));
  let x_862 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_861.x, x_861.y, x_862.z);
  let x_869 : vec3<f32> = u_xlat1;
  let x_871 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_869.x, x_869.y));
  u_xlat30 = x_871.w;
  let x_873 : f32 = u_xlat30;
  u_xlat30 = ((x_873 * 2.0f) + -1.0f);
  let x_876 : f32 = u_xlat30;
  u_xlat1.x = ((x_876 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_882 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_882, 0.0f, 1.0f);
  let x_886 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_886 * 2.0f) + -1.0f);
  let x_890 : f32 = u_xlat30;
  u_xlat30 = (-(abs(x_890)) + 1.0f);
  let x_894 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_894);
  let x_896 : f32 = u_xlat30;
  u_xlat30 = (-(x_896) + 1.0f);
  let x_899 : f32 = u_xlat30;
  let x_901 : f32 = u_xlat1.x;
  u_xlat30 = (x_899 * x_901);
  let x_903 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_903 * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_907 : vec3<f32> = u_xlat0;
  let x_910 : vec3<f32> = max(abs(x_907), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_911 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_910.x, x_910.y, x_910.z, x_911.w);
  let x_913 : vec4<f32> = u_xlat2;
  let x_915 : vec3<f32> = log2(vec3<f32>(x_913.x, x_913.y, x_913.z));
  let x_916 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_915.x, x_915.y, x_915.z, x_916.w);
  let x_918 : vec4<f32> = u_xlat2;
  let x_922 : vec3<f32> = (vec3<f32>(x_918.x, x_918.y, x_918.z) * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_922.x, x_922.y, x_922.z, x_923.w);
  let x_925 : vec4<f32> = u_xlat2;
  let x_927 : vec3<f32> = exp2(vec3<f32>(x_925.x, x_925.y, x_925.z));
  let x_928 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_927.x, x_927.y, x_927.z, x_928.w);
  let x_930 : vec4<f32> = u_xlat2;
  let x_937 : vec3<f32> = ((vec3<f32>(x_930.x, x_930.y, x_930.z) * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_938 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_945 : vec3<f32> = u_xlat0;
  let x_948 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_945.x, x_945.y, x_945.z, x_945.x));
  u_xlatb0 = vec3<bool>(x_948.x, x_948.y, x_948.z);
  let x_951 : bool = u_xlatb0.x;
  if (x_951) {
    let x_956 : f32 = u_xlat1.x;
    x_952 = x_956;
  } else {
    let x_959 : f32 = u_xlat2.x;
    x_952 = x_959;
  }
  let x_960 : f32 = x_952;
  u_xlat0.x = x_960;
  let x_963 : bool = u_xlatb0.y;
  if (x_963) {
    let x_968 : f32 = u_xlat1.y;
    x_964 = x_968;
  } else {
    let x_971 : f32 = u_xlat2.y;
    x_964 = x_971;
  }
  let x_972 : f32 = x_964;
  u_xlat0.y = x_972;
  let x_975 : bool = u_xlatb0.z;
  if (x_975) {
    let x_980 : f32 = u_xlat1.z;
    x_976 = x_980;
  } else {
    let x_983 : f32 = u_xlat2.z;
    x_976 = x_983;
  }
  let x_984 : f32 = x_976;
  u_xlat0.z = x_984;
  let x_986 : f32 = u_xlat30;
  let x_991 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_986, x_986, x_986) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_991);
  let x_993 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_993 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_996 : vec3<f32> = u_xlat0;
  let x_998 : vec3<f32> = (x_996 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_999 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
  let x_1001 : vec4<f32> = u_xlat2;
  let x_1004 : vec3<f32> = (vec3<f32>(x_1001.x, x_1001.y, x_1001.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1005 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1004.x, x_1004.y, x_1004.z, x_1005.w);
  let x_1007 : vec4<f32> = u_xlat2;
  let x_1010 : vec3<f32> = max(abs(vec3<f32>(x_1007.x, x_1007.y, x_1007.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1011 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1010.x, x_1010.y, x_1010.z, x_1011.w);
  let x_1013 : vec4<f32> = u_xlat2;
  let x_1015 : vec3<f32> = log2(vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
  let x_1018 : vec4<f32> = u_xlat2;
  let x_1021 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1022 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1022.w);
  let x_1024 : vec4<f32> = u_xlat2;
  let x_1026 : vec3<f32> = exp2(vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1027 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1026.x, x_1026.y, x_1026.z, x_1027.w);
  let x_1030 : vec3<f32> = u_xlat0;
  let x_1032 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1030.x, x_1030.y, x_1030.z, x_1030.x));
  u_xlatb0 = vec3<bool>(x_1032.x, x_1032.y, x_1032.z);
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
  let x_1047 : bool = u_xlatb0.y;
  if (x_1047) {
    let x_1052 : f32 = u_xlat1.y;
    x_1048 = x_1052;
  } else {
    let x_1055 : f32 = u_xlat2.y;
    x_1048 = x_1055;
  }
  let x_1056 : f32 = x_1048;
  SV_Target0.y = x_1056;
  let x_1059 : bool = u_xlatb0.z;
  if (x_1059) {
    let x_1064 : f32 = u_xlat1.z;
    x_1060 = x_1064;
  } else {
    let x_1067 : f32 = u_xlat2.z;
    x_1060 = x_1067;
  }
  let x_1068 : f32 = x_1060;
  SV_Target0.z = x_1068;
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

