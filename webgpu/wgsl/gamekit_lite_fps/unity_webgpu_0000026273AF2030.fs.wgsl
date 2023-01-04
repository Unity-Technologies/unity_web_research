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

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(0) @binding(6) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(13) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(4) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_BloomTex : sampler;

@group(0) @binding(5) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(1) var x_DitheringTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_DitheringTex : sampler;

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
  var x_941 : f32;
  var hlslcc_movcTemp : vec3<f32>;
  var x_1095 : f32;
  var x_1107 : f32;
  var x_1119 : f32;
  var x_1185 : f32;
  var x_1197 : f32;
  var x_1209 : f32;
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
  let x_590 : vec4<f32> = u_xlat0;
  let x_592 : vec4<f32> = u_xlat2;
  let x_594 : vec3<f32> = (vec3<f32>(x_590.x, x_590.x, x_590.x) * vec3<f32>(x_592.x, x_592.y, x_592.z));
  let x_595 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_599 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_605 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_605 * 0.5f);
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = u_xlat1;
  let x_613 : vec2<f32> = u_xlat21;
  u_xlat3 = ((vec4<f32>(x_608.x, x_608.y, x_608.z, x_608.y) * vec4<f32>(x_610.x, x_610.x, x_610.x, x_610.x)) + vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y));
  let x_616 : vec4<f32> = u_xlat3;
  u_xlat3 = clamp(x_616, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_620 : vec4<f32> = u_xlat3;
  let x_622 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat3 = (x_620 * vec4<f32>(x_622, x_622, x_622, x_622));
  let x_630 : vec4<f32> = u_xlat3;
  let x_632 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_630.x, x_630.y));
  u_xlat4 = x_632;
  let x_636 : vec4<f32> = u_xlat3;
  let x_638 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_636.z, x_636.w));
  u_xlat3 = x_638;
  let x_639 : vec4<f32> = u_xlat3;
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_639 + x_640);
  let x_642 : vec4<f32> = u_xlat0;
  let x_644 : vec3<f32> = u_xlat1;
  let x_647 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_642.x, x_642.w, x_642.z, x_642.w) * vec4<f32>(x_644.x, x_644.x, x_644.x, x_644.x)) + vec4<f32>(x_647.x, x_647.y, x_647.x, x_647.y));
  let x_650 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_650, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_654 : vec4<f32> = u_xlat0;
  let x_656 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_654 * vec4<f32>(x_656, x_656, x_656, x_656));
  let x_662 : vec4<f32> = u_xlat0;
  let x_664 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_662.x, x_662.y));
  u_xlat4 = x_664;
  let x_665 : vec4<f32> = u_xlat3;
  let x_666 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_665 + x_666);
  let x_671 : vec4<f32> = u_xlat0;
  let x_673 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_671.z, x_671.w));
  u_xlat0 = x_673;
  let x_674 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_674 + x_675);
  let x_677 : vec4<f32> = u_xlat0;
  let x_680 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_677 * vec4<f32>(x_680.y, x_680.y, x_680.y, x_680.y));
  let x_683 : vec2<f32> = u_xlat21;
  let x_686 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_690 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_692 : vec2<f32> = ((x_683 * vec2<f32>(x_686.x, x_686.y)) + vec2<f32>(x_690.z, x_690.w));
  let x_693 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_692.x, x_692.y, x_693.z);
  let x_700 : vec3<f32> = u_xlat1;
  let x_702 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_700.x, x_700.y));
  let x_703 : vec3<f32> = vec3<f32>(x_702.x, x_702.y, x_702.z);
  let x_704 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  let x_706 : vec4<f32> = u_xlat0;
  let x_710 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_711 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
  let x_713 : vec4<f32> = u_xlat3;
  let x_716 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_718 : vec3<f32> = (vec3<f32>(x_713.x, x_713.y, x_713.z) * vec3<f32>(x_716.z, x_716.z, x_716.z));
  let x_719 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_718.x, x_718.y, x_718.z, x_719.w);
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_721 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_724 : vec4<f32> = u_xlat0;
  let x_728 : vec3<f32> = x_26.x_Bloom_Color;
  let x_729 : vec3<f32> = (vec3<f32>(x_724.x, x_724.y, x_724.z) * x_728);
  let x_730 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  let x_733 : f32 = u_xlat0.w;
  u_xlat5.w = (x_733 * 0.25f);
  let x_736 : vec4<f32> = u_xlat2;
  let x_737 : vec4<f32> = u_xlat5;
  u_xlat0 = (x_736 + x_737);
  let x_739 : vec4<f32> = u_xlat4;
  let x_741 : vec4<f32> = u_xlat3;
  let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.y, x_739.z) * vec3<f32>(x_741.x, x_741.y, x_741.z));
  let x_744 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
  u_xlat2.w = 0.0f;
  let x_747 : vec4<f32> = u_xlat0;
  let x_748 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_747 + x_748);
  let x_752 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_752 < 0.5f);
  let x_754 : bool = u_xlatb1;
  if (x_754) {
    let x_757 : vec2<f32> = u_xlat21;
    let x_761 : vec2<f32> = x_26.x_Vignette_Center;
    let x_763 : vec2<f32> = (x_757 + -(x_761));
    let x_764 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_763.x, x_763.y, x_764.z);
    let x_766 : vec3<f32> = u_xlat1;
    let x_771 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_773 : vec2<f32> = (abs(vec2<f32>(x_766.y, x_766.x)) * vec2<f32>(x_771.x, x_771.x));
    let x_774 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_774.x, x_773.x, x_773.y, x_774.w);
    let x_777 : f32 = x_26.x_ScreenParams.x;
    let x_779 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_777 / x_779);
    let x_783 : f32 = u_xlat1.x;
    u_xlat1.x = (x_783 + -1.0f);
    let x_787 : f32 = x_26.x_Vignette_Settings.w;
    let x_789 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_787 * x_789) + 1.0f);
    let x_794 : f32 = u_xlat1.x;
    let x_796 : f32 = u_xlat2.z;
    u_xlat2.x = (x_794 * x_796);
    let x_799 : vec4<f32> = u_xlat2;
    let x_800 : vec2<f32> = vec2<f32>(x_799.x, x_799.y);
    let x_801 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_800.x, x_800.y, x_801.z, x_801.w);
    let x_803 : vec4<f32> = u_xlat2;
    let x_807 : vec2<f32> = clamp(vec2<f32>(x_803.x, x_803.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_808 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_807.x, x_807.y, x_808.z, x_808.w);
    let x_810 : vec4<f32> = u_xlat2;
    let x_812 : vec2<f32> = log2(vec2<f32>(x_810.x, x_810.y));
    let x_813 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_812.x, x_812.y, x_813.z);
    let x_815 : vec3<f32> = u_xlat1;
    let x_818 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_820 : vec2<f32> = (vec2<f32>(x_815.x, x_815.y) * vec2<f32>(x_818.z, x_818.z));
    let x_821 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_820.x, x_820.y, x_821.z);
    let x_823 : vec3<f32> = u_xlat1;
    let x_825 : vec2<f32> = exp2(vec2<f32>(x_823.x, x_823.y));
    let x_826 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_825.x, x_825.y, x_826.z);
    let x_828 : vec3<f32> = u_xlat1;
    let x_830 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_828.x, x_828.y), vec2<f32>(x_830.x, x_830.y));
    let x_835 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_835) + 1.0f);
    let x_840 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_840, 0.0f);
    let x_844 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_844);
    let x_848 : f32 = u_xlat1.x;
    let x_850 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_848 * x_850);
    let x_854 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_854);
    let x_859 : vec3<f32> = x_26.x_Vignette_Color;
    let x_862 : vec3<f32> = (-(x_859) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_863 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_862.x, x_862.y, x_862.z, x_863.w);
    let x_865 : vec3<f32> = u_xlat1;
    let x_867 : vec4<f32> = u_xlat2;
    let x_871 : vec3<f32> = x_26.x_Vignette_Color;
    let x_872 : vec3<f32> = ((vec3<f32>(x_865.x, x_865.x, x_865.x) * vec3<f32>(x_867.x, x_867.y, x_867.z)) + x_871);
    let x_873 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_872.x, x_872.y, x_872.z, x_873.w);
    let x_875 : vec4<f32> = u_xlat0;
    let x_877 : vec4<f32> = u_xlat2;
    let x_879 : vec3<f32> = (vec3<f32>(x_875.x, x_875.y, x_875.z) * vec3<f32>(x_877.x, x_877.y, x_877.z));
    let x_880 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_879.x, x_879.y, x_879.z, x_880.w);
    let x_884 : f32 = u_xlat0.w;
    u_xlat11.x = (x_884 + -1.0f);
    let x_888 : f32 = u_xlat1.x;
    let x_890 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_888 * x_890) + 1.0f);
  } else {
    let x_900 : vec2<f32> = u_xlat21;
    let x_901 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_900);
    u_xlat1.x = x_901.w;
    let x_905 : f32 = u_xlat1.x;
    u_xlat1.z = (x_905 + 0.055f);
    let x_909 : vec3<f32> = u_xlat1;
    let x_914 : vec2<f32> = (vec2<f32>(x_909.x, x_909.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_915 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_914.x, x_914.y, x_915.z);
    let x_918 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_918), 1.1920929e-07f);
    let x_924 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_924);
    let x_928 : f32 = u_xlat21.x;
    u_xlat21.x = (x_928 * 2.400000095f);
    let x_933 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_933);
    let x_938 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_938);
    let x_940 : bool = u_xlatb1;
    if (x_940) {
      let x_945 : f32 = u_xlat11.x;
      x_941 = x_945;
    } else {
      let x_948 : f32 = u_xlat21.x;
      x_941 = x_948;
    }
    let x_949 : f32 = x_941;
    u_xlat1.x = x_949;
    let x_952 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_952) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_955 : vec3<f32> = u_xlat1;
    let x_957 : vec3<f32> = u_xlat11;
    let x_960 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_955.x, x_955.x, x_955.x) * x_957) + x_960);
    let x_962 : vec4<f32> = u_xlat0;
    let x_964 : vec3<f32> = u_xlat11;
    let x_966 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_962.x, x_962.y, x_962.z) * x_964) + -(vec3<f32>(x_966.x, x_966.y, x_966.z)));
    let x_972 : f32 = x_26.x_Vignette_Opacity;
    let x_974 : vec3<f32> = u_xlat11;
    let x_976 : vec4<f32> = u_xlat0;
    let x_978 : vec3<f32> = ((vec3<f32>(x_972, x_972, x_972) * x_974) + vec3<f32>(x_976.x, x_976.y, x_976.z));
    let x_979 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_978.x, x_978.y, x_978.z, x_979.w);
    let x_982 : f32 = u_xlat0.w;
    u_xlat0.x = (x_982 + -1.0f);
    let x_986 : f32 = u_xlat1.x;
    let x_988 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_986 * x_988) + 1.0f);
  }
  let x_992 : vec2<f32> = vs_TEXCOORD0;
  let x_995 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_999 : vec4<f32> = x_26.x_Dithering_Coords;
  let x_1001 : vec2<f32> = ((x_992 * vec2<f32>(x_995.x, x_995.y)) + vec2<f32>(x_999.z, x_999.w));
  let x_1002 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1001.x, x_1001.y, x_1002.z, x_1002.w);
  let x_1009 : vec4<f32> = u_xlat0;
  let x_1011 : vec4<f32> = textureSample(x_DitheringTex, sampler_DitheringTex, vec2<f32>(x_1009.x, x_1009.y));
  u_xlat0.x = x_1011.w;
  let x_1015 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1015 * 2.0f) + -1.0f);
  let x_1020 : f32 = u_xlat0.x;
  u_xlat10.x = ((x_1020 * 340282346638528859811704183484516925440.0f) + 0.5f);
  let x_1026 : f32 = u_xlat10.x;
  u_xlat10.x = clamp(x_1026, 0.0f, 1.0f);
  let x_1030 : f32 = u_xlat10.x;
  u_xlat10.x = ((x_1030 * 2.0f) + -1.0f);
  let x_1035 : f32 = u_xlat0.x;
  u_xlat0.x = (-(abs(x_1035)) + 1.0f);
  let x_1041 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_1041);
  let x_1045 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1045) + 1.0f);
  let x_1050 : f32 = u_xlat0.x;
  let x_1052 : f32 = u_xlat10.x;
  u_xlat0.x = (x_1050 * x_1052);
  let x_1055 : vec4<f32> = u_xlat2;
  u_xlat10 = (vec3<f32>(x_1055.x, x_1055.y, x_1055.z) * vec3<f32>(12.920000076f, 12.920000076f, 12.920000076f));
  let x_1060 : vec4<f32> = u_xlat2;
  u_xlat1 = max(abs(vec3<f32>(x_1060.x, x_1060.y, x_1060.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1065 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1065);
  let x_1067 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1067 * vec3<f32>(0.416666657f, 0.416666657f, 0.416666657f));
  let x_1071 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_1071);
  let x_1073 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1073 * vec3<f32>(1.054999948f, 1.054999948f, 1.054999948f)) + vec3<f32>(-0.055f, -0.055f, -0.055f));
  let x_1085 : vec4<f32> = u_xlat2;
  let x_1088 : vec4<bool> = (vec4<f32>(0.0031308f, 0.0031308f, 0.0031308f, 0.0f) >= vec4<f32>(x_1085.x, x_1085.y, x_1085.z, x_1085.x));
  u_xlatb2 = vec3<bool>(x_1088.x, x_1088.y, x_1088.z);
  let x_1092 : vec3<f32> = u_xlat10;
  hlslcc_movcTemp = x_1092;
  let x_1094 : bool = u_xlatb2.x;
  if (x_1094) {
    let x_1099 : f32 = u_xlat10.x;
    x_1095 = x_1099;
  } else {
    let x_1102 : f32 = u_xlat1.x;
    x_1095 = x_1102;
  }
  let x_1103 : f32 = x_1095;
  hlslcc_movcTemp.x = x_1103;
  let x_1106 : bool = u_xlatb2.y;
  if (x_1106) {
    let x_1111 : f32 = u_xlat10.y;
    x_1107 = x_1111;
  } else {
    let x_1114 : f32 = u_xlat1.y;
    x_1107 = x_1114;
  }
  let x_1115 : f32 = x_1107;
  hlslcc_movcTemp.y = x_1115;
  let x_1118 : bool = u_xlatb2.z;
  if (x_1118) {
    let x_1123 : f32 = u_xlat10.z;
    x_1119 = x_1123;
  } else {
    let x_1126 : f32 = u_xlat1.z;
    x_1119 = x_1126;
  }
  let x_1127 : f32 = x_1119;
  hlslcc_movcTemp.z = x_1127;
  let x_1129 : vec3<f32> = hlslcc_movcTemp;
  u_xlat10 = x_1129;
  let x_1130 : vec4<f32> = u_xlat0;
  let x_1135 : vec3<f32> = u_xlat10;
  let x_1136 : vec3<f32> = ((vec3<f32>(x_1130.x, x_1130.x, x_1130.x) * vec3<f32>(0.003921569f, 0.003921569f, 0.003921569f)) + x_1135);
  let x_1137 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1136.x, x_1136.y, x_1136.z, x_1137.w);
  let x_1139 : vec4<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_1139.x, x_1139.y, x_1139.z) * vec3<f32>(0.077399381f, 0.077399381f, 0.077399381f));
  let x_1143 : vec4<f32> = u_xlat0;
  let x_1146 : vec3<f32> = (vec3<f32>(x_1143.x, x_1143.y, x_1143.z) + vec3<f32>(0.055f, 0.055f, 0.055f));
  let x_1147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1146.x, x_1146.y, x_1146.z, x_1147.w);
  let x_1149 : vec4<f32> = u_xlat2;
  let x_1152 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(0.947867334f, 0.947867334f, 0.947867334f));
  let x_1153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1152.x, x_1152.y, x_1152.z, x_1153.w);
  let x_1155 : vec4<f32> = u_xlat2;
  let x_1158 : vec3<f32> = max(abs(vec3<f32>(x_1155.x, x_1155.y, x_1155.z)), vec3<f32>(1.1920929e-07f, 1.1920929e-07f, 1.1920929e-07f));
  let x_1159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1158.x, x_1158.y, x_1158.z, x_1159.w);
  let x_1161 : vec4<f32> = u_xlat2;
  let x_1163 : vec3<f32> = log2(vec3<f32>(x_1161.x, x_1161.y, x_1161.z));
  let x_1164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1163.x, x_1163.y, x_1163.z, x_1164.w);
  let x_1166 : vec4<f32> = u_xlat2;
  let x_1169 : vec3<f32> = (vec3<f32>(x_1166.x, x_1166.y, x_1166.z) * vec3<f32>(2.400000095f, 2.400000095f, 2.400000095f));
  let x_1170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1169.x, x_1169.y, x_1169.z, x_1170.w);
  let x_1172 : vec4<f32> = u_xlat2;
  let x_1174 : vec3<f32> = exp2(vec3<f32>(x_1172.x, x_1172.y, x_1172.z));
  let x_1175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1174.x, x_1174.y, x_1174.z, x_1175.w);
  let x_1179 : vec4<f32> = u_xlat0;
  let x_1181 : vec4<bool> = (vec4<f32>(0.040449999f, 0.040449999f, 0.040449999f, 0.0f) >= vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.x));
  u_xlatb0 = vec3<bool>(x_1181.x, x_1181.y, x_1181.z);
  let x_1184 : bool = u_xlatb0.x;
  if (x_1184) {
    let x_1189 : f32 = u_xlat1.x;
    x_1185 = x_1189;
  } else {
    let x_1192 : f32 = u_xlat2.x;
    x_1185 = x_1192;
  }
  let x_1193 : f32 = x_1185;
  u_xlat3.x = x_1193;
  let x_1196 : bool = u_xlatb0.y;
  if (x_1196) {
    let x_1201 : f32 = u_xlat1.y;
    x_1197 = x_1201;
  } else {
    let x_1204 : f32 = u_xlat2.y;
    x_1197 = x_1204;
  }
  let x_1205 : f32 = x_1197;
  u_xlat3.y = x_1205;
  let x_1208 : bool = u_xlatb0.z;
  if (x_1208) {
    let x_1213 : f32 = u_xlat1.z;
    x_1209 = x_1213;
  } else {
    let x_1216 : f32 = u_xlat2.z;
    x_1209 = x_1216;
  }
  let x_1217 : f32 = x_1209;
  u_xlat3.z = x_1217;
  let x_1221 : vec4<f32> = u_xlat3;
  SV_Target0 = x_1221;
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

