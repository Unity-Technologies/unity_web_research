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
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Vignette_Color : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_Vignette_Center : vec2<f32>,
  @size(8)
  padding_3 : u32,
  x_Vignette_Settings : vec4<f32>,
  x_Vignette_Opacity : f32,
  x_Vignette_Mode : f32,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat20 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlatb11 : bool;

var<private> u_xlat21 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

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

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(5) var x_ChromaticAberration_SpectralLut : texture_2d<f32>;

@group(0) @binding(12) var sampler_ChromaticAberration_SpectralLut : sampler;

@group(0) @binding(3) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_BloomTex : sampler;

@group(0) @binding(4) var x_Bloom_DirtTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_Bloom_DirtTex : sampler;

var<private> u_xlat11 : vec3<f32>;

@group(0) @binding(7) var x_Vignette_Mask : texture_2d<f32>;

@group(0) @binding(14) var sampler_Vignette_Mask : sampler;

@group(0) @binding(6) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(13) var sampler_Lut2D : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati26 : i32;

fn main_1() {
  var x_231 : f32;
  var u_xlati_loop_1 : i32;
  var x_522 : f32;
  var x_942 : f32;
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
  let x_301 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_300.x, x_300.y, x_301.z);
  let x_303 : vec3<f32> = u_xlat2;
  let x_305 : vec2<f32> = (vec2<f32>(x_303.x, x_303.y) * vec2<f32>(0.5f, 0.5f));
  let x_306 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_305.x, x_305.y, x_306.z);
  let x_308 : vec3<f32> = u_xlat2;
  let x_310 : vec3<f32> = u_xlat2;
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
  let x_347 : vec2<f32> = vs_TEXCOORD0;
  let x_348 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_347.x, x_347.y, x_348.z, x_348.w);
  u_xlati_loop_1 = 0i;
  loop {
    let x_358 : i32 = u_xlati_loop_1;
    let x_359 : i32 = u_xlati30;
    if ((x_358 < x_359)) {
    } else {
      break;
    }
    let x_362 : i32 = u_xlati_loop_1;
    u_xlat36 = f32(x_362);
    let x_364 : f32 = u_xlat36;
    u_xlat36 = (x_364 + 0.5f);
    let x_366 : f32 = u_xlat36;
    let x_368 : f32 = u_xlat1.x;
    u_xlat2.x = (x_366 / x_368);
    let x_372 : vec4<f32> = u_xlat6;
    let x_374 : vec2<f32> = (vec2<f32>(x_372.x, x_372.y) + vec2<f32>(-0.5f, -0.5f));
    let x_375 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
    let x_378 : vec4<f32> = u_xlat7;
    let x_381 : vec4<f32> = x_26.x_Distortion_Amount;
    u_xlat27 = ((vec2<f32>(x_378.x, x_378.y) * vec2<f32>(x_381.z, x_381.z)) + vec2<f32>(0.5f, 0.5f));
    let x_385 : vec4<f32> = u_xlat7;
    let x_388 : vec4<f32> = x_26.x_Distortion_Amount;
    let x_392 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_395 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(x_388.z, x_388.z)) + -(vec2<f32>(x_392.x, x_392.y)));
    let x_396 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_395.x, x_395.y, x_396.z, x_396.w);
    let x_398 : vec4<f32> = u_xlat7;
    let x_401 : vec4<f32> = x_26.x_Distortion_CenterScale;
    let x_403 : vec2<f32> = (vec2<f32>(x_398.x, x_398.y) * vec2<f32>(x_401.z, x_401.w));
    let x_404 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_403.x, x_403.y, x_404.z, x_404.w);
    let x_406 : vec4<f32> = u_xlat7;
    let x_408 : vec4<f32> = u_xlat7;
    u_xlat36 = dot(vec2<f32>(x_406.x, x_406.y), vec2<f32>(x_408.x, x_408.y));
    let x_411 : f32 = u_xlat36;
    u_xlat36 = sqrt(x_411);
    let x_413 : bool = u_xlatb11;
    if (x_413) {
      let x_417 : f32 = u_xlat36;
      let x_420 : vec4<f32> = x_26.x_Distortion_Amount;
      u_xlat8 = (vec2<f32>(x_417, x_417) * vec2<f32>(x_420.x, x_420.y));
      let x_425 : f32 = u_xlat8.x;
      u_xlat9 = cos(x_425);
      let x_428 : f32 = u_xlat8.x;
      u_xlat8.x = sin(x_428);
      let x_432 : f32 = u_xlat8.x;
      let x_433 : f32 = u_xlat9;
      u_xlat8.x = (x_432 / x_433);
      let x_438 : f32 = u_xlat8.y;
      u_xlat18 = (1.0f / x_438);
      let x_441 : f32 = u_xlat8.x;
      let x_442 : f32 = u_xlat18;
      u_xlat8.x = ((x_441 * x_442) + -1.0f);
      let x_446 : vec4<f32> = u_xlat7;
      let x_448 : vec2<f32> = u_xlat8;
      let x_451 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_446.x, x_446.y) * vec2<f32>(x_448.x, x_448.x)) + x_451);
    } else {
      let x_455 : f32 = u_xlat36;
      u_xlat28 = (1.0f / x_455);
      let x_457 : f32 = u_xlat28;
      let x_459 : f32 = x_26.x_Distortion_Amount.x;
      u_xlat28 = (x_457 * x_459);
      let x_461 : f32 = u_xlat36;
      let x_463 : f32 = x_26.x_Distortion_Amount.y;
      u_xlat36 = (x_461 * x_463);
      let x_466 : f32 = u_xlat36;
      u_xlat38 = min(abs(x_466), 1.0f);
      let x_469 : f32 = u_xlat36;
      u_xlat9 = max(abs(x_469), 1.0f);
      let x_472 : f32 = u_xlat9;
      u_xlat9 = (1.0f / x_472);
      let x_474 : f32 = u_xlat38;
      let x_475 : f32 = u_xlat9;
      u_xlat38 = (x_474 * x_475);
      let x_477 : f32 = u_xlat38;
      let x_478 : f32 = u_xlat38;
      u_xlat9 = (x_477 * x_478);
      let x_481 : f32 = u_xlat9;
      u_xlat19 = ((x_481 * 0.0208351f) + -0.085133001f);
      let x_484 : f32 = u_xlat9;
      let x_485 : f32 = u_xlat19;
      u_xlat19 = ((x_484 * x_485) + 0.180141002f);
      let x_488 : f32 = u_xlat9;
      let x_489 : f32 = u_xlat19;
      u_xlat19 = ((x_488 * x_489) + -0.330299497f);
      let x_492 : f32 = u_xlat9;
      let x_493 : f32 = u_xlat19;
      u_xlat9 = ((x_492 * x_493) + 0.999866009f);
      let x_496 : f32 = u_xlat38;
      let x_497 : f32 = u_xlat9;
      u_xlat19 = (x_496 * x_497);
      let x_500 : f32 = u_xlat36;
      u_xlatb29 = (1.0f < abs(x_500));
      let x_503 : f32 = u_xlat19;
      u_xlat19 = ((x_503 * -2.0f) + 1.570796371f);
      let x_506 : bool = u_xlatb29;
      let x_507 : f32 = u_xlat19;
      u_xlat19 = select(0.0f, x_507, x_506);
      let x_509 : f32 = u_xlat38;
      let x_510 : f32 = u_xlat9;
      let x_512 : f32 = u_xlat19;
      u_xlat38 = ((x_509 * x_510) + x_512);
      let x_514 : f32 = u_xlat36;
      u_xlat36 = min(x_514, 1.0f);
      let x_517 : f32 = u_xlat36;
      let x_518 : f32 = u_xlat36;
      u_xlatb36 = (x_517 < -(x_518));
      let x_521 : bool = u_xlatb36;
      if (x_521) {
        let x_525 : f32 = u_xlat38;
        x_522 = -(x_525);
      } else {
        let x_528 : f32 = u_xlat38;
        x_522 = x_528;
      }
      let x_529 : f32 = x_522;
      u_xlat36 = x_529;
      let x_530 : f32 = u_xlat28;
      let x_531 : f32 = u_xlat36;
      u_xlat36 = ((x_530 * x_531) + -1.0f);
      let x_534 : vec4<f32> = u_xlat7;
      let x_536 : f32 = u_xlat36;
      let x_539 : vec2<f32> = u_xlat27;
      u_xlat8 = ((vec2<f32>(x_534.x, x_534.y) * vec2<f32>(x_536, x_536)) + x_539);
    }
    let x_541 : vec2<f32> = u_xlat8;
    u_xlat8 = x_541;
    let x_542 : vec2<f32> = u_xlat8;
    u_xlat8 = clamp(x_542, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_546 : vec2<f32> = u_xlat8;
    let x_549 : f32 = x_26.x_RenderViewportScaleFactor;
    let x_551 : vec2<f32> = (x_546 * vec2<f32>(x_549, x_549));
    let x_552 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_551.x, x_551.y, x_552.z, x_552.w);
    let x_559 : vec4<f32> = u_xlat7;
    let x_561 : vec4<f32> = textureSampleLevel(x_MainTex, sampler_MainTex, vec2<f32>(x_559.x, x_559.y), 0.0f);
    u_xlat7 = x_561;
    let x_567 : vec3<f32> = u_xlat2;
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
    let x_581 : vec2<f32> = u_xlat10;
    let x_582 : vec4<f32> = u_xlat6;
    let x_584 : vec2<f32> = (x_581 + vec2<f32>(x_582.x, x_582.y));
    let x_585 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);

    continuing {
      let x_587 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_587 + 1i);
    }
  }
  let x_589 : vec4<f32> = u_xlat4;
  let x_590 : vec4<f32> = u_xlat5;
  u_xlat3 = (x_589 / x_590);
  let x_592 : vec4<f32> = u_xlat0;
  let x_594 : vec4<f32> = u_xlat3;
  let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.x, x_592.x) * vec3<f32>(x_594.x, x_594.y, x_594.z));
  let x_597 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_601 : vec4<f32> = x_26.x_BloomTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_601.x, x_601.y, x_601.x, x_601.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_607 : f32 = x_26.x_Bloom_Settings.x;
  u_xlat1.x = (x_607 * 0.5f);
  let x_610 : vec4<f32> = u_xlat0;
  let x_612 : vec3<f32> = u_xlat1;
  let x_615 : vec2<f32> = u_xlat21;
  u_xlat4 = ((vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.y) * vec4<f32>(x_612.x, x_612.x, x_612.x, x_612.x)) + vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y));
  let x_618 : vec4<f32> = u_xlat4;
  u_xlat4 = clamp(x_618, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_622 : vec4<f32> = u_xlat4;
  let x_624 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat4 = (x_622 * vec4<f32>(x_624, x_624, x_624, x_624));
  let x_632 : vec4<f32> = u_xlat4;
  let x_634 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_632.x, x_632.y));
  u_xlat5 = x_634;
  let x_638 : vec4<f32> = u_xlat4;
  let x_640 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_638.z, x_638.w));
  u_xlat4 = x_640;
  let x_641 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_641 + x_642);
  let x_644 : vec4<f32> = u_xlat0;
  let x_646 : vec3<f32> = u_xlat1;
  let x_649 : vec2<f32> = u_xlat21;
  u_xlat0 = ((vec4<f32>(x_644.x, x_644.w, x_644.z, x_644.w) * vec4<f32>(x_646.x, x_646.x, x_646.x, x_646.x)) + vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_652, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_656 : vec4<f32> = u_xlat0;
  let x_658 : f32 = x_26.x_RenderViewportScaleFactor;
  u_xlat0 = (x_656 * vec4<f32>(x_658, x_658, x_658, x_658));
  let x_664 : vec4<f32> = u_xlat0;
  let x_666 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_664.x, x_664.y));
  u_xlat5 = x_666;
  let x_667 : vec4<f32> = u_xlat4;
  let x_668 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_667 + x_668);
  let x_673 : vec4<f32> = u_xlat0;
  let x_675 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, vec2<f32>(x_673.z, x_673.w));
  u_xlat0 = x_675;
  let x_676 : vec4<f32> = u_xlat0;
  let x_677 : vec4<f32> = u_xlat4;
  u_xlat0 = (x_676 + x_677);
  let x_679 : vec4<f32> = u_xlat0;
  let x_682 : vec3<f32> = x_26.x_Bloom_Settings;
  u_xlat0 = (x_679 * vec4<f32>(x_682.y, x_682.y, x_682.y, x_682.y));
  let x_685 : vec2<f32> = u_xlat21;
  let x_688 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_692 : vec4<f32> = x_26.x_Bloom_DirtTileOffset;
  let x_694 : vec2<f32> = ((x_685 * vec2<f32>(x_688.x, x_688.y)) + vec2<f32>(x_692.z, x_692.w));
  let x_695 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_694.x, x_694.y, x_695.z);
  let x_702 : vec3<f32> = u_xlat1;
  let x_704 : vec4<f32> = textureSample(x_Bloom_DirtTex, sampler_Bloom_DirtTex, vec2<f32>(x_702.x, x_702.y));
  let x_705 : vec3<f32> = vec3<f32>(x_704.x, x_704.y, x_704.z);
  let x_706 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
  let x_708 : vec4<f32> = u_xlat0;
  let x_712 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(0.25f, 0.25f, 0.25f));
  let x_713 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
  let x_715 : vec4<f32> = u_xlat4;
  let x_718 : vec3<f32> = x_26.x_Bloom_Settings;
  let x_720 : vec3<f32> = (vec3<f32>(x_715.x, x_715.y, x_715.z) * vec3<f32>(x_718.z, x_718.z, x_718.z));
  let x_721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  u_xlat0 = (x_723 * vec4<f32>(0.25f, 0.25f, 0.25f, 1.0f));
  let x_726 : vec4<f32> = u_xlat0;
  let x_730 : vec3<f32> = x_26.x_Bloom_Color;
  let x_731 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * x_730);
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_735 : f32 = u_xlat0.w;
  u_xlat6.w = (x_735 * 0.25f);
  let x_738 : vec4<f32> = u_xlat3;
  let x_739 : vec4<f32> = u_xlat6;
  u_xlat0 = (x_738 + x_739);
  let x_741 : vec4<f32> = u_xlat5;
  let x_743 : vec4<f32> = u_xlat4;
  let x_745 : vec3<f32> = (vec3<f32>(x_741.x, x_741.y, x_741.z) * vec3<f32>(x_743.x, x_743.y, x_743.z));
  let x_746 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_745.x, x_745.y, x_745.z, x_746.w);
  u_xlat3.w = 0.0f;
  let x_749 : vec4<f32> = u_xlat0;
  let x_750 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_749 + x_750);
  let x_753 : f32 = x_26.x_Vignette_Mode;
  u_xlatb1 = (x_753 < 0.5f);
  let x_755 : bool = u_xlatb1;
  if (x_755) {
    let x_758 : vec2<f32> = u_xlat21;
    let x_762 : vec2<f32> = x_26.x_Vignette_Center;
    let x_764 : vec2<f32> = (x_758 + -(x_762));
    let x_765 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_764.x, x_764.y, x_765.z);
    let x_767 : vec3<f32> = u_xlat1;
    let x_772 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_774 : vec2<f32> = (abs(vec2<f32>(x_767.y, x_767.x)) * vec2<f32>(x_772.x, x_772.x));
    let x_775 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_775.x, x_774.x, x_774.y, x_775.w);
    let x_778 : f32 = x_26.x_ScreenParams.x;
    let x_780 : f32 = x_26.x_ScreenParams.y;
    u_xlat1.x = (x_778 / x_780);
    let x_784 : f32 = u_xlat1.x;
    u_xlat1.x = (x_784 + -1.0f);
    let x_788 : f32 = x_26.x_Vignette_Settings.w;
    let x_790 : f32 = u_xlat1.x;
    u_xlat1.x = ((x_788 * x_790) + 1.0f);
    let x_795 : f32 = u_xlat1.x;
    let x_797 : f32 = u_xlat3.z;
    u_xlat3.x = (x_795 * x_797);
    let x_800 : vec4<f32> = u_xlat3;
    let x_801 : vec2<f32> = vec2<f32>(x_800.x, x_800.y);
    let x_802 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
    let x_804 : vec4<f32> = u_xlat3;
    let x_808 : vec2<f32> = clamp(vec2<f32>(x_804.x, x_804.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
    let x_809 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_808.x, x_808.y, x_809.z, x_809.w);
    let x_811 : vec4<f32> = u_xlat3;
    let x_813 : vec2<f32> = log2(vec2<f32>(x_811.x, x_811.y));
    let x_814 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_813.x, x_813.y, x_814.z);
    let x_816 : vec3<f32> = u_xlat1;
    let x_819 : vec4<f32> = x_26.x_Vignette_Settings;
    let x_821 : vec2<f32> = (vec2<f32>(x_816.x, x_816.y) * vec2<f32>(x_819.z, x_819.z));
    let x_822 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_821.x, x_821.y, x_822.z);
    let x_824 : vec3<f32> = u_xlat1;
    let x_826 : vec2<f32> = exp2(vec2<f32>(x_824.x, x_824.y));
    let x_827 : vec3<f32> = u_xlat1;
    u_xlat1 = vec3<f32>(x_826.x, x_826.y, x_827.z);
    let x_829 : vec3<f32> = u_xlat1;
    let x_831 : vec3<f32> = u_xlat1;
    u_xlat1.x = dot(vec2<f32>(x_829.x, x_829.y), vec2<f32>(x_831.x, x_831.y));
    let x_836 : f32 = u_xlat1.x;
    u_xlat1.x = (-(x_836) + 1.0f);
    let x_841 : f32 = u_xlat1.x;
    u_xlat1.x = max(x_841, 0.0f);
    let x_845 : f32 = u_xlat1.x;
    u_xlat1.x = log2(x_845);
    let x_849 : f32 = u_xlat1.x;
    let x_851 : f32 = x_26.x_Vignette_Settings.y;
    u_xlat1.x = (x_849 * x_851);
    let x_855 : f32 = u_xlat1.x;
    u_xlat1.x = exp2(x_855);
    let x_860 : vec3<f32> = x_26.x_Vignette_Color;
    let x_863 : vec3<f32> = (-(x_860) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_864 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
    let x_866 : vec3<f32> = u_xlat1;
    let x_868 : vec4<f32> = u_xlat3;
    let x_872 : vec3<f32> = x_26.x_Vignette_Color;
    let x_873 : vec3<f32> = ((vec3<f32>(x_866.x, x_866.x, x_866.x) * vec3<f32>(x_868.x, x_868.y, x_868.z)) + x_872);
    let x_874 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_873.x, x_873.y, x_873.z, x_874.w);
    let x_876 : vec4<f32> = u_xlat0;
    let x_878 : vec4<f32> = u_xlat3;
    let x_880 : vec3<f32> = (vec3<f32>(x_876.x, x_876.y, x_876.z) * vec3<f32>(x_878.x, x_878.y, x_878.z));
    let x_881 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_880.x, x_880.y, x_880.z, x_881.w);
    let x_885 : f32 = u_xlat0.w;
    u_xlat11.x = (x_885 + -1.0f);
    let x_889 : f32 = u_xlat1.x;
    let x_891 : f32 = u_xlat11.x;
    u_xlat3.w = ((x_889 * x_891) + 1.0f);
  } else {
    let x_901 : vec2<f32> = u_xlat21;
    let x_902 : vec4<f32> = textureSample(x_Vignette_Mask, sampler_Vignette_Mask, x_901);
    u_xlat1.x = x_902.w;
    let x_906 : f32 = u_xlat1.x;
    u_xlat1.z = (x_906 + 0.055f);
    let x_910 : vec3<f32> = u_xlat1;
    let x_915 : vec2<f32> = (vec2<f32>(x_910.x, x_910.z) * vec2<f32>(0.077399381f, 0.947867334f));
    let x_916 : vec3<f32> = u_xlat11;
    u_xlat11 = vec3<f32>(x_915.x, x_915.y, x_916.z);
    let x_919 : f32 = u_xlat11.y;
    u_xlat21.x = max(abs(x_919), 1.1920929e-07f);
    let x_925 : f32 = u_xlat21.x;
    u_xlat21.x = log2(x_925);
    let x_929 : f32 = u_xlat21.x;
    u_xlat21.x = (x_929 * 2.400000095f);
    let x_934 : f32 = u_xlat21.x;
    u_xlat21.x = exp2(x_934);
    let x_939 : f32 = u_xlat1.x;
    u_xlatb1 = (0.040449999f >= x_939);
    let x_941 : bool = u_xlatb1;
    if (x_941) {
      let x_946 : f32 = u_xlat11.x;
      x_942 = x_946;
    } else {
      let x_949 : f32 = u_xlat21.x;
      x_942 = x_949;
    }
    let x_950 : f32 = x_942;
    u_xlat1.x = x_950;
    let x_953 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = (-(x_953) + vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_956 : vec3<f32> = u_xlat1;
    let x_958 : vec3<f32> = u_xlat11;
    let x_961 : vec3<f32> = x_26.x_Vignette_Color;
    u_xlat11 = ((vec3<f32>(x_956.x, x_956.x, x_956.x) * x_958) + x_961);
    let x_963 : vec4<f32> = u_xlat0;
    let x_965 : vec3<f32> = u_xlat11;
    let x_967 : vec4<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_963.x, x_963.y, x_963.z) * x_965) + -(vec3<f32>(x_967.x, x_967.y, x_967.z)));
    let x_973 : f32 = x_26.x_Vignette_Opacity;
    let x_975 : vec3<f32> = u_xlat11;
    let x_977 : vec4<f32> = u_xlat0;
    let x_979 : vec3<f32> = ((vec3<f32>(x_973, x_973, x_973) * x_975) + vec3<f32>(x_977.x, x_977.y, x_977.z));
    let x_980 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
    let x_983 : f32 = u_xlat0.w;
    u_xlat0.x = (x_983 + -1.0f);
    let x_987 : f32 = u_xlat1.x;
    let x_989 : f32 = u_xlat0.x;
    u_xlat3.w = ((x_987 * x_989) + 1.0f);
  }
  let x_993 : vec4<f32> = u_xlat3;
  let x_996 : f32 = x_26.x_PostExposure;
  let x_998 : f32 = x_26.x_PostExposure;
  let x_1000 : f32 = x_26.x_PostExposure;
  let x_1002 : f32 = x_26.x_PostExposure;
  let x_1003 : vec4<f32> = vec4<f32>(x_996, x_998, x_1000, x_1002);
  u_xlat0 = (x_993 * vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1003.w));
  let x_1010 : vec4<f32> = u_xlat0;
  u_xlat1 = ((vec3<f32>(x_1010.z, x_1010.x, x_1010.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_1018 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(x_1018);
  let x_1020 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1020 * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_1027 : vec3<f32> = u_xlat1;
  u_xlat1 = clamp(x_1027, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1031 : vec3<f32> = u_xlat1;
  let x_1034 : vec3<f32> = x_26.x_Lut2D_Params;
  u_xlat11 = (x_1031 * vec3<f32>(x_1034.z, x_1034.z, x_1034.z));
  let x_1038 : f32 = u_xlat11.x;
  u_xlat11.x = floor(x_1038);
  let x_1042 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1044 : vec2<f32> = (vec2<f32>(x_1042.x, x_1042.y) * vec2<f32>(0.5f, 0.5f));
  let x_1045 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_1044.x, x_1044.y, x_1045.z);
  let x_1047 : vec3<f32> = u_xlat11;
  let x_1050 : vec3<f32> = x_26.x_Lut2D_Params;
  let x_1053 : vec3<f32> = u_xlat2;
  let x_1055 : vec2<f32> = ((vec2<f32>(x_1047.y, x_1047.z) * vec2<f32>(x_1050.x, x_1050.y)) + vec2<f32>(x_1053.x, x_1053.y));
  let x_1056 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1056.x, x_1055.x, x_1055.y, x_1056.w);
  let x_1059 : f32 = u_xlat11.x;
  let x_1061 : f32 = x_26.x_Lut2D_Params.y;
  let x_1064 : f32 = u_xlat3.y;
  u_xlat3.x = ((x_1059 * x_1061) + x_1064);
  let x_1072 : vec4<f32> = u_xlat3;
  let x_1074 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_1072.x, x_1072.z));
  let x_1075 : vec3<f32> = vec3<f32>(x_1074.x, x_1074.y, x_1074.z);
  let x_1076 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1079 : f32 = x_26.x_Lut2D_Params.y;
  u_xlat22.x = x_1079;
  let x_1081 : vec2<f32> = u_xlat22;
  let x_1082 : vec4<f32> = u_xlat3;
  u_xlat21 = (x_1081 + vec2<f32>(x_1082.x, x_1082.z));
  let x_1088 : vec2<f32> = u_xlat21;
  let x_1089 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_1088);
  u_xlat2 = vec3<f32>(x_1089.x, x_1089.y, x_1089.z);
  let x_1092 : f32 = u_xlat1.x;
  let x_1094 : f32 = x_26.x_Lut2D_Params.z;
  let x_1097 : f32 = u_xlat11.x;
  u_xlat1.x = ((x_1092 * x_1094) + -(x_1097));
  let x_1101 : vec4<f32> = u_xlat4;
  let x_1104 : vec3<f32> = u_xlat2;
  u_xlat11 = (-(vec3<f32>(x_1101.x, x_1101.y, x_1101.z)) + x_1104);
  let x_1106 : vec3<f32> = u_xlat1;
  let x_1108 : vec3<f32> = u_xlat11;
  let x_1110 : vec4<f32> = u_xlat4;
  let x_1112 : vec3<f32> = ((vec3<f32>(x_1106.x, x_1106.x, x_1106.x) * x_1108) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  let x_1117 : f32 = x_26.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_1117);
  let x_1119 : bool = u_xlatb1;
  if (x_1119) {
    let x_1122 : vec4<f32> = u_xlat0;
    u_xlat1 = vec3<f32>(x_1122.x, x_1122.y, x_1122.z);
    let x_1124 : vec3<f32> = u_xlat1;
    u_xlat1 = clamp(x_1124, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_1128 : vec3<f32> = u_xlat1;
    u_xlat0.w = dot(x_1128, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_1137 : vec4<f32> = u_xlat0;
  SV_Target0 = x_1137;
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

