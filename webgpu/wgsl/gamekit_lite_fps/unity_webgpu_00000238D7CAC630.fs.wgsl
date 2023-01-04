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

@group(0) @binding(8) var sampler_AutoExposureTex : sampler;

var<private> u_xlat10 : vec3<f32>;

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

@group(0) @binding(7) var sampler_MainTex : sampler;

@group(0) @binding(4) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(9) var sampler_ChromaticAberration_SpectralLut : sampler;

var<private> u_xlatb30 : bool;

@group(0) @binding(5) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(10) var sampler_Vignette_Mask : sampler;

var<private> u_xlat11 : f32;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_DitheringTex : sampler;

var<private> u_xlatb2 : vec3<bool>;

var<private> u_xlatb0 : vec3<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati6 : i32;

var<private> u_xlatb16 : bool;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_525 : f32;
  var x_756 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_904 : f32;
  var x_916 : f32;
  var x_928 : f32;
  var x_990 : f32;
  var x_1002 : f32;
  var x_1014 : f32;
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
  let x_274 : vec2<f32> = ((x_269 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_275 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_278 : vec3<f32> = u_xlat10;
  let x_280 : vec3<f32> = u_xlat10;
  u_xlat30 = dot(vec2<f32>(x_278.x, x_278.y), vec2<f32>(x_280.x, x_280.y));
  let x_283 : f32 = u_xlat30;
  let x_285 : vec3<f32> = u_xlat10;
  let x_287 : vec2<f32> = (vec2<f32>(x_283, x_283) * vec2<f32>(x_285.x, x_285.y));
  let x_288 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_287.x, x_287.y, x_288.z);
  let x_290 : vec3<f32> = u_xlat10;
  let x_294 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_296 : f32 = x_26.x_ChromaticAberration_Amount;
  let x_297 : vec2<f32> = vec2<f32>(x_294, x_296);
  let x_301 : vec2<f32> = (vec2<f32>(x_290.x, x_290.y) * vec2<f32>(x_297.x, x_297.y));
  let x_302 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_301.x, x_301.y, x_302.z);
  let x_304 : vec3<f32> = u_xlat10;
  let x_309 : vec4<f32> = x_26.x_MainTex_TexelSize;
  let x_311 : vec2<f32> = (-(vec2<f32>(x_304.x, x_304.y)) * vec2<f32>(x_309.z, x_309.w));
  let x_312 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_311.x, x_311.y, x_312.z, x_312.w);
  let x_314 : vec4<f32> = u_xlat2;
  let x_316 : vec2<f32> = (vec2<f32>(x_314.x, x_314.y) * vec2<f32>(0.5f, 0.5f));
  let x_317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_316.x, x_316.y, x_317.z, x_317.w);
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec4<f32> = u_xlat2;
  u_xlat30 = dot(vec2<f32>(x_319.x, x_319.y), vec2<f32>(x_321.x, x_321.y));
  let x_324 : f32 = u_xlat30;
  u_xlat30 = sqrt(x_324);
  let x_328 : f32 = u_xlat30;
  u_xlati30 = i32(x_328);
  let x_330 : i32 = u_xlati30;
  u_xlati30 = max(x_330, 3i);
  let x_332 : i32 = u_xlati30;
  u_xlati30 = min(x_332, 16i);
  let x_335 : i32 = u_xlati30;
  u_xlat1.x = f32(x_335);
  let x_338 : vec3<f32> = u_xlat10;
  let x_341 : vec3<f32> = u_xlat1;
  let x_343 : vec2<f32> = (-(vec2<f32>(x_338.x, x_338.y)) / vec2<f32>(x_341.x, x_341.x));
  let x_344 : vec3<f32> = u_xlat10;
  u_xlat10 = vec3<f32>(x_343.x, x_343.y, x_344.z);
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
  let x_359 : vec2<f32> = vs_TEXCOORD0;
  u_xlat22 = x_359;
  u_xlati_loop_1 = 0i;
  loop {
    let x_368 : i32 = u_xlati_loop_1;
    let x_369 : i32 = u_xlati30;
    if ((x_368 < x_369)) {
    } else {
      break;
    }
    let x_372 : i32 = u_xlati_loop_1;
    u_xlat16.x = f32(x_372);
    let x_376 : f32 = u_xlat16.x;
    u_xlat16.x = (x_376 + 0.5f);
    let x_380 : f32 = u_xlat16.x;
    let x_382 : f32 = u_xlat1.x;
    u_xlat2.x = (x_380 / x_382);
    let x_385 : vec2<f32> = u_xlat22;
    u_xlat16 = (x_385 + vec2<f32>(-0.5f, -0.5f));
    let x_388 : vec2<f32> = u_xlat16;
    let x_390 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_393 : vec2<f32> = ((x_388 * vec2<f32>(x_390.z, x_390.z)) + vec2<f32>(0.5f, 0.5f));
    let x_394 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
    let x_396 : vec2<f32> = u_xlat16;
    let x_398 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_402 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = ((x_396 * vec2<f32>(x_398.z, x_398.z)) + -(vec2<f32>(x_402.x, x_402.y)));
    let x_406 : vec2<f32> = u_xlat16;
    let x_408 : vec4<f32> = x_26.x_Distortion_CenterScale;
    u_xlat16 = (x_406 * vec2<f32>(x_408.z, x_408.w));
    let x_412 : vec2<f32> = u_xlat16;
    let x_413 : vec2<f32> = u_xlat16;
    u_xlat36 = dot(x_412, x_413);
    let x_415 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_415);
    let x_417 : bool = u_xlatb11;
    if (x_417) {
      let x_421 : f32 = u_xlat36;
      let x_424 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat27 = (vec2<f32>(x_421, x_421) * vec2<f32>(x_424.x, x_424.y));
      let x_429 : f32 = u_xlat27.x;
      u_xlat8 = sin(x_429);
      let x_433 : f32 = u_xlat27.x;
      u_xlat9 = cos(x_433);
      let x_435 : f32 = u_xlat8;
      let x_436 : f32 = u_xlat9;
      u_xlat27.x = (x_435 / x_436);
      let x_441 : f32 = u_xlat27.y;
      u_xlat37 = (1.0f / x_441);
      let x_444 : f32 = u_xlat27.x;
      let x_445 : f32 = u_xlat37;
      u_xlat27.x = ((x_444 * x_445) + -1.0f);
      let x_449 : vec2<f32> = u_xlat16;
      let x_450 : vec2<f32> = u_xlat27;
      let x_453 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_449 * vec2<f32>(x_450.x, x_450.x)) + vec2<f32>(x_453.x, x_453.y));
    } else {
      let x_457 : f32 = u_xlat36;
      u_xlat8 = (1.0f / x_457);
      let x_459 : f32 = u_xlat8;
      let x_461 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat8 = (x_459 * x_461);
      let x_463 : f32 = u_xlat36;
      let x_465 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_463 * x_465);
      let x_468 : f32 = u_xlat36;
      u_xlat18 = min(abs(x_468), 1.0f);
      let x_472 : f32 = u_xlat36;
      u_xlat28 = max(abs(x_472), 1.0f);
      let x_475 : f32 = u_xlat28;
      u_xlat28 = (1.0f / x_475);
      let x_477 : f32 = u_xlat28;
      let x_478 : f32 = u_xlat18;
      u_xlat18 = (x_477 * x_478);
      let x_480 : f32 = u_xlat18;
      let x_481 : f32 = u_xlat18;
      u_xlat28 = (x_480 * x_481);
      let x_484 : f32 = u_xlat28;
      u_xlat38 = ((x_484 * 0.0208351f) + -0.085133001f);
      let x_487 : f32 = u_xlat28;
      let x_488 : f32 = u_xlat38;
      u_xlat38 = ((x_487 * x_488) + 0.180141002f);
      let x_491 : f32 = u_xlat28;
      let x_492 : f32 = u_xlat38;
      u_xlat38 = ((x_491 * x_492) + -0.330299497f);
      let x_495 : f32 = u_xlat28;
      let x_496 : f32 = u_xlat38;
      u_xlat28 = ((x_495 * x_496) + 0.999866009f);
      let x_499 : f32 = u_xlat28;
      let x_500 : f32 = u_xlat18;
      u_xlat38 = (x_499 * x_500);
      let x_503 : f32 = u_xlat36;
      u_xlatb9 = (1.0f < abs(x_503));
      let x_506 : f32 = u_xlat38;
      u_xlat38 = ((x_506 * -2.0f) + 1.570796371f);
      let x_509 : bool = u_xlatb9;
      let x_510 : f32 = u_xlat38;
      u_xlat38 = select(0.0f, x_510, x_509);
      let x_512 : f32 = u_xlat18;
      let x_513 : f32 = u_xlat28;
      let x_515 : f32 = u_xlat38;
      u_xlat18 = ((x_512 * x_513) + x_515);
      let x_517 : f32 = u_xlat36;
      u_xlat36 = min(x_517, 1.0f);
      let x_520 : f32 = u_xlat36;
      let x_521 : f32 = u_xlat36;
      u_xlatb36 = (x_520 < -(x_521));
      let x_524 : bool = u_xlatb36;
      if (x_524) {
        let x_528 : f32 = u_xlat18;
        x_525 = -(x_528);
      } else {
        let x_531 : f32 = u_xlat18;
        x_525 = x_531;
      }
      let x_532 : f32 = x_525;
      u_xlat36 = x_532;
      let x_533 : f32 = u_xlat8;
      let x_534 : f32 = u_xlat36;
      u_xlat36 = ((x_533 * x_534) + -1.0f);
      let x_537 : vec2<f32> = u_xlat16;
      let x_538 : f32 = u_xlat36;
      let x_541 : vec4<f32> = u_xlat7;
      u_xlat27 = ((x_537 * vec2<f32>(x_538, x_538)) + vec2<f32>(x_541.x, x_541.y));
    }
    let x_544 : vec2<f32> = u_xlat27;
    u_xlat27 = x_544;
    let x_545 : vec2<f32> = u_xlat27;
    u_xlat27 = clamp(x_545, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_549 : vec2<f32> = u_xlat27;
    let x_552 : f32 = x_26.x_RenderViewportScaleFactor;
    u_xlat16 = (x_549 * vec2<f32>(x_552, x_552));
    let x_560 : vec2<f32> = u_xlat16;
    let x_561 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, x_560, 0.0f);
    u_xlat7 = x_561;
    let x_567 : vec4<f32> = u_xlat2;
    let x_569 : vec4<f32> = textureSampleLevel(x_ChromaticAberration_SpectralLut, sampler_ChromaticAberration_SpectralLut, vec2<f32>(x_567.x, x_567.y), 0.0f);
    let x_570 : vec3<f32> = vec3<f32>(x_569.x, x_569.y, x_569.z);
    let x_571 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_570.x, x_570.y, x_570.z, x_571.w);
    let x_573 : vec4<f32> = u_xlat7;
    let x_574 : vec4<f32> = u_xlat3;
    let x_576 : vec4<f32> = u_xlat4;
    u_xlat4 = ((x_573 * x_574) + x_576);
    let x_578 : vec4<f32> = u_xlat3;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat5 = (x_578 + x_579);
    let x_581 : vec3<f32> = u_xlat10;
    let x_583 : vec2<f32> = u_xlat22;
    u_xlat22 = (vec2<f32>(x_581.x, x_581.y) + x_583);

    continuing {
      let x_585 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_585 + 1i);
    }
  }
  let x_587 : vec4<f32> = u_xlat4;
  let x_588 : vec4<f32> = u_xlat5;
  u_xlat2 = (x_587 / x_588);
  let x_590 : vec3<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat0 = (vec3<f32>(x_590.x, x_590.x, x_590.x) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_598 : f32 = x_26.x_Vignette_Mode;
  u_xlatb30 = (x_598 < 0.5f);
  let x_600 : bool = u_xlatb30;
  if (x_600) {
    let x_603 : vec2<f32> = u_xlat21;
    let x_607 : vec2<f32> = x_26.x_Vignette_Center;
    let x_609 : vec2<f32> = (x_603 + -(x_607));
    let x_610 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_609.x, x_609.y, x_610.z);
    let x_612 : vec3<f32> = u_xlat1;
    let x_617 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_619 : vec2<f32> = (abs(vec2<f32>(x_612.y, x_612.x)) * vec2<f32>(x_617.x, x_617.x));
    let x_620 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_620.x, x_619.x, x_619.y, x_620.w);
    let x_623 : f32 = x_26.x_ScreenParams.x;
    let x_625 : f32 = x_26.x_ScreenParams.y;
    u_xlat30 = (x_623 / x_625);
    let x_627 : f32 = u_xlat30;
    u_xlat30 = (x_627 + -1.0f);
    let x_630 : f32 = x_26.x_Vignette_Settings.w;
    let x_631 : f32 = u_xlat30;
    u_xlat30 = ((x_630 * x_631) + 1.0f);
    let x_634 : f32 = u_xlat30;
    let x_636 : f32 = u_xlat2.z;
    u_xlat2.x = (x_634 * x_636);
    let x_639 : vec4<f32> = u_xlat2;
    let x_640 : vec2<f32> = vec2<f32>(x_639.x, x_639.y);
    let x_641 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
    let x_643 : vec4<f32> = u_xlat2;
    let x_647 : vec2<f32> = clamp(vec2<f32>(x_643.x, x_643.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_648 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_647.x, x_647.y, x_648.z, x_648.w);
    let x_650 : vec4<f32> = u_xlat2;
    let x_652 : vec2<f32> = log2(vec2<f32>(x_650.x, x_650.y));
    let x_653 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_652.x, x_652.y, x_653.z);
    let x_655 : vec3<f32> = u_xlat1;
    let x_658 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_660 : vec2<f32> = (vec2<f32>(x_655.x, x_655.y) * vec2<f32>(x_658.z, x_658.z));
    let x_661 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_660.x, x_660.y, x_661.z);
    let x_663 : vec3<f32> = u_xlat1;
    let x_665 : vec2<f32> = exp2(vec2<f32>(x_663.x, x_663.y));
    let x_666 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_665.x, x_665.y, x_666.z);
    let x_668 : vec3<f32> = u_xlat1;
    let x_670 : vec3<f32> = u_xlat1;
    u_xlat30 = dot(vec2<f32>(x_668.x, x_668.y), vec2<f32>(x_670.x, x_670.y));
    let x_673 : f32 = u_xlat30;
    u_xlat30 = (-(x_673) + 1.0f);
    let x_676 : f32 = u_xlat30;
    u_xlat30 = max(x_676, 0.0f);
    let x_678 : f32 = u_xlat30;
    u_xlat30 = log2(x_678);
    let x_680 : f32 = u_xlat30;
    let x_682 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat30 = (x_680 * x_682);
    let x_684 : f32 = u_xlat30;
    u_xlat30 = exp2(x_684);
    let x_689 : vec3<f32> = x_26.x_Vignette_Color;
    let x_692 : vec3<f32> = (-(x_689) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_693 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_692.x, x_692.y, x_692.z, x_693.w);
    let x_695 : f32 = u_xlat30;
    let x_697 : vec4<f32> = u_xlat2;
    let x_701 : vec3<f32> = x_26.x_Vignette_Color;
    let x_702 : vec3<f32> = ((vec3<f32>(x_695, x_695, x_695) * vec3<f32>(x_697.x, x_697.y, x_697.z)) + x_701);
    let x_703 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_702.x, x_702.y, x_702.z, x_703.w);
    let x_705 : vec3<f32> = u_xlat0;
    let x_706 : vec4<f32> = u_xlat2;
    let x_708 : vec3<f32> = (x_705 * vec3<f32>(x_706.x, x_706.y, x_706.z));
    let x_709 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_708.x, x_708.y, x_708.z, x_709.w);
    let x_712 : f32 = u_xlat2.w;
    u_xlat1.x = (x_712 + -1.0f);
    let x_715 : f32 = u_xlat30;
    let x_717 : f32 = u_xlat1.x;
    u_xlat3.w = ((x_715 * x_717) + 1.0f);
  } else {
    let x_727 : vec2<f32> = u_xlat21;
    let x_728 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_727);
    u_xlat30 = x_728.w;
    let x_730 : f32 = u_xlat30;
    u_xlat1.x = (x_730 * 0.077399381f);
    let x_735 : f32 = u_xlat30;
    u_xlat11 = (x_735 + 0.055f);
    let x_738 : f32 = u_xlat11;
    u_xlat11 = (x_738 * 0.947867334f);
    let x_741 : f32 = u_xlat11;
    u_xlat11 = max(abs(x_741), 1.1920929e-07f);
    let x_745 : f32 = u_xlat11;
    u_xlat11 = log2(x_745);
    let x_747 : f32 = u_xlat11;
    u_xlat11 = (x_747 * 2.400000095f);
    let x_750 : f32 = u_xlat11;
    u_xlat11 = exp2(x_750);
    let x_753 : f32 = u_xlat30;
    u_xlatb30 = (0.040449999f >= x_753);
    let x_755 : bool = u_xlatb30;
    if (x_755) {
      let x_760 : f32 = u_xlat1.x;
      x_756 = x_760;
    } else {
      let x_762 : f32 = u_xlat11;
      x_756 = x_762;
    }
    let x_763 : f32 = x_756;
    u_xlat30 = x_763;
    let x_765 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = (-(x_765) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_768 : f32 = u_xlat30;
    let x_770 : vec3<f32> = u_xlat1;
    let x_773 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat1 = ((vec3<f32>(x_768, x_768, x_768) * x_770) + x_773);
    let x_775 : vec3<f32> = u_xlat0;
    let x_776 : vec3<f32> = u_xlat1;
    let x_778 : vec3<f32> = u_xlat0;
    u_xlat1 = ((x_775 * x_776) + -(x_778));
    let x_783 : f32 = x_26.x_Vignette_Opacity;
    let x_785 : vec3<f32> = u_xlat1;
    let x_787 : vec3<f32> = u_xlat0;
    let x_788 : vec3<f32> = ((vec3<f32>(x_783, x_783, x_783) * x_785) + x_787);
    let x_789 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_788.x, x_788.y, x_788.z, x_789.w);
    let x_792 : f32 = u_xlat2.w;
    u_xlat0.x = (x_792 + -1.0f);
    let x_795 : f32 = u_xlat30;
    let x_797 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_795 * x_797) + 1.0f);
  }
  let x_801 : vec2<f32> = vs_TEXCOORD0;
  let x_804 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_808 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_810 : vec2<f32> = ((x_801 * vec2<f32>(x_804.x, x_804.y)) + vec2<f32>(x_808.z, x_808.w));
  let x_811 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_810.x, x_810.y, x_811.z);
  let x_818 : vec3<f32> = u_xlat0;
  let x_820 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_818.x, x_818.y));
  u_xlat0.x = x_820.w;
  let x_824 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_824 * 2.0f) + -1.0f);
  let x_829 : f32 = u_xlat0.x;
  u_xlat10.x = ((x_829 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_835 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_835, 0.0f, 1.0f);
  let x_839 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_839 * 2.0f) + -1.0f);
  let x_844 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_844)) + 1.0f);
  let x_850 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_850);
  let x_854 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_854) + 1.0f);
  let x_859 : f32 = u_xlat0.x;
  let x_861 : f32 = u_xlat10.x;
  u_xlat0.x = (x_859 * x_861);
  let x_864 : vec4<f32> = u_xlat2;
  u_xlat10 = (vec3<f32>(x_864.x, x_864.y, x_864.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_869 : vec4<f32> = u_xlat2;
  u_xlat1 = max(abs(vec3<f32>(x_869.x, x_869.y, x_869.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_874 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_874);
  let x_876 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_876 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_880 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_880);
  let x_882 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_882 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_894 : vec4<f32> = u_xlat2;
  let x_897 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_894.x, x_894.y, x_894.z, x_894.x));
  u_xlatb2 = vec3<bool>(x_897.x, x_897.y, x_897.z);
  let x_901 : vec3<f32> = u_xlat10;
  hlslcc_movcTemp = x_901;
  let x_903 : bool = u_xlatb2.x;
  if (x_903) {
    let x_908 : f32 = u_xlat10.x;
    x_904 = x_908;
  } else {
    let x_911 : f32 = u_xlat1.x;
    x_904 = x_911;
  }
  let x_912 : f32 = x_904;
  hlslcc_movcTemp.x = x_912;
  let x_915 : bool = u_xlatb2.y;
  if (x_915) {
    let x_920 : f32 = u_xlat10.y;
    x_916 = x_920;
  } else {
    let x_923 : f32 = u_xlat1.y;
    x_916 = x_923;
  }
  let x_924 : f32 = x_916;
  hlslcc_movcTemp.y = x_924;
  let x_927 : bool = u_xlatb2.z;
  if (x_927) {
    let x_932 : f32 = u_xlat10.z;
    x_928 = x_932;
  } else {
    let x_935 : f32 = u_xlat1.z;
    x_928 = x_935;
  }
  let x_936 : f32 = x_928;
  hlslcc_movcTemp.z = x_936;
  let x_938 : vec3<f32> = hlslcc_movcTemp;
  u_xlat10 = x_938;
  let x_939 : vec3<f32> = u_xlat0;
  let x_944 : vec3<f32> = u_xlat10;
  u_xlat0 = ((vec3<f32>(x_939.x, x_939.x, x_939.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_944);
  let x_946 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_946 * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_949 : vec3<f32> = u_xlat0;
  let x_951 : vec3<f32> = (x_949 + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_952 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_951.x, x_951.y, x_951.z, x_952.w);
  let x_954 : vec4<f32> = u_xlat2;
  let x_957 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_958 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_960 : vec4<f32> = u_xlat2;
  let x_963 : vec3<f32> = max(abs(vec3<f32>(x_960.x, x_960.y, x_960.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : vec4<f32> = u_xlat2;
  let x_968 : vec3<f32> = log2(vec3<f32>(x_966.x, x_966.y, x_966.z));
  let x_969 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_968.x, x_968.y, x_968.z, x_969.w);
  let x_971 : vec4<f32> = u_xlat2;
  let x_974 : vec3<f32> = (vec3<f32>(x_971.x, x_971.y, x_971.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_975 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : vec4<f32> = u_xlat2;
  let x_979 : vec3<f32> = exp2(vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_984 : vec3<f32> = u_xlat0;
  let x_986 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_984.x, x_984.y, x_984.z, x_984.x));
  u_xlatb0 = vec3<bool>(x_986.x, x_986.y, x_986.z);
  let x_989 : bool = u_xlatb0.x;
  if (x_989) {
    let x_994 : f32 = u_xlat1.x;
    x_990 = x_994;
  } else {
    let x_997 : f32 = u_xlat2.x;
    x_990 = x_997;
  }
  let x_998 : f32 = x_990;
  u_xlat3.x = x_998;
  let x_1001 : bool = u_xlatb0.y;
  if (x_1001) {
    let x_1006 : f32 = u_xlat1.y;
    x_1002 = x_1006;
  } else {
    let x_1009 : f32 = u_xlat2.y;
    x_1002 = x_1009;
  }
  let x_1010 : f32 = x_1002;
  u_xlat3.y = x_1010;
  let x_1013 : bool = u_xlatb0.z;
  if (x_1013) {
    let x_1018 : f32 = u_xlat1.z;
    x_1014 = x_1018;
  } else {
    let x_1021 : f32 = u_xlat2.z;
    x_1014 = x_1021;
  }
  let x_1022 : f32 = x_1014;
  u_xlat3.z = x_1022;
  let x_1026 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1026;
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

